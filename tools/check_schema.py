#!/usr/bin/env python3
"""Check empty schema structure and SQL field references without a live server.

SQLite is used only for portable statement/column checks, not MySQL compatibility.
Pawn format placeholders are replaced with representative values; dynamic columns
are checked separately. No project database or persistent database is modified.
"""
from pathlib import Path
import re
import sqlite3

ROOT = Path(__file__).resolve().parents[1]
sql = (ROOT / 'database.schema.sql').read_text()
statements = re.sub(r'--[^\n]*', '', sql)
assert not re.search(r'\b(?:INSERT|REPLACE|UPDATE|DELETE|DROP|TRUNCATE)\b', statements, re.I)
blocks = re.findall(r'CREATE TABLE `(\w+)` \((.*?)\) ENGINE=InnoDB DEFAULT CHARSET=latin1;', sql, re.S)
assert len(blocks) == 24
schema = {}
db = sqlite3.connect(':memory:')
for table, body in blocks:
    columns = dict(re.findall(r'^  `(\w+)` (.*?)(?:,)?$', body, re.M))
    schema[table] = {col.lower() for col in columns}
    assert len(schema[table]) == len(columns)
    assert 'PRIMARY KEY (`ID`)' in body
    portable = []
    for col, definition in columns.items():
        definition = definition.rstrip(',')
        definition = re.sub(r' CHARACTER SET \w+| COLLATE \w+', '', definition)
        if col == 'ID':
            definition = 'INTEGER PRIMARY KEY' + (' AUTOINCREMENT' if 'AUTO_INCREMENT' in definition else '')
        portable.append(f'`{col}` {definition}')
    db.execute(f'CREATE TABLE `{table}` (' + ','.join(portable) + ')')
    assert db.execute(f'SELECT COUNT(*) FROM `{table}`').fetchone()[0] == 0

# Ranges come from Compile.pwn constants and save/load loops.
for table, prefixes, indexes in [
    ('accounts', ['InvID', 'InvQ', 'InvE', 'InvS'], range(15)),
    ('houses', ['InvID', 'InvQ', 'InvE', 'InvS'], range(21)),
    ('business', ['InvID', 'InvQ', 'InvE', 'InvS'], range(21)),
    ('vehicles', ['InvID', 'InvQ', 'InvE', 'InvS'], range(9)),
    ('vehicles', ['GBID', 'GBQ', 'GBE', 'GBS'], range(5)),
    ('vehicles', ['Mod'], range(1, 12)),
    ('accounts', ['ContactName', 'ContactNumber', 'TicketR', 'TicketA'], range(1, 11)),
    ('factions', ['Rank', 'Bonus_Rank'], range(1, 25)),
    ('factions', ['Fact'], range(3)),
    ('adjust', ['wep'], range(22, 35)),
    *[(table, ['Layer'], range(13)) for table in ['housefurn', 'bizzfurn', 'mapfurn', 'vehiclefurn']],
]:
    for prefix in prefixes:
        for index in indexes:
            assert f'{prefix}{index}'.lower() in schema[table], (table, prefix, index)

checked = 0
skipped = set()
for path in (ROOT / 'gamemodes').rglob('*.pwn'):
    source = re.sub(r'\\\r?\n\s*', '', path.read_text(errors='replace'))
    for match in re.finditer(r'"((?:[^"\\]|\\.)*)"', source):
        query = match[1]
        if not re.match(r'(?:SELECT\b.*\bFROM\b|UPDATE\s+`?\w+`?\s+SET\b|INSERT INTO\b|DELETE FROM\b)', query):
            continue
        location = f'{path.relative_to(ROOT)}:{source.count(chr(10), 0, match.start()) + 1}'
        # Dynamic whole-column names: PData fields and faction Rank/Fact loops.
        if re.search(r'(?:SET|,)\s*`?%s`?\s*=', query):
            skipped.add(str(path.relative_to(ROOT)))
            continue
        query = query.replace('wep%d', 'wep22')
        query = re.sub(r'%[di]', '1', query)
        query = re.sub(r'%f', '1.0', query)
        query = re.sub(r'%[se]', 'sample', query)
        try:
            db.execute('EXPLAIN ' + query)
        except sqlite3.Error as exc:
            raise AssertionError(f'{location}: {exc}') from exc
        checked += 1

# Exercise actual partial-insert shapes and generated IDs in the portable model.
for table, fields in [('accounts', {'Name': 'schema_test', 'Pass': 'test_only'}),
                      ('adjust', {'name': 'schema_test'}),
                      ('factions', {'ID': 1, 'Name': 'schema_test'})]:
    cols = ','.join(f'`{c}`' for c in fields)
    db.execute(f'INSERT INTO `{table}` ({cols}) VALUES ({",".join("?" for _ in fields)})', tuple(fields.values()))
    assert db.execute(f'SELECT ID FROM `{table}`').fetchone()[0] == 1
# All test rows are in memory and discarded; the SQL artifact contains only DDL.
db.close()
print(f'PASS: {len(blocks)} empty tables, dynamic column ranges, {checked} source SQL statements, partial inserts.')
print('Whole-column format placeholders reviewed separately in: ' + ', '.join(sorted(skipped)))
print('This is not a MySQL/MariaDB import or a Pawn runtime test.')
