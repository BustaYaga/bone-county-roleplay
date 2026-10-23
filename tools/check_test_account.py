#!/usr/bin/env python3
"""Validate the public development seed against the schema and login hash."""
import hashlib
import re
import sqlite3
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
# Adapt only the accounts table for an offline insert check.
schema = (ROOT / 'database.schema.sql').read_text()
body = re.search(r'CREATE TABLE `accounts` \((.*?)\) ENGINE=', schema, re.S)[1]
columns = re.findall(r'^  `(\w+)` (.*?)(?:,)?$', body, re.M)
portable = []
for name, definition in columns:
    definition = definition.rstrip(',')
    definition = re.sub(r' CHARACTER SET \w+| COLLATE \w+', '', definition)
    if name == 'ID':
        definition = 'INTEGER PRIMARY KEY AUTOINCREMENT'
    portable.append(f'`{name}` {definition}')
db = sqlite3.connect(':memory:')
db.execute('CREATE TABLE accounts (' + ','.join(portable) + ')')
source = (ROOT / 'gamemodes/Compile.pwn').read_text()
salt = re.search(r'#define HASH_KEY "([^"]+)"', source)[1]
# Published SHA256_PassHash reference vector verifies ordering and casing.
assert hashlib.sha256(b'test78sdjs86d2h').hexdigest().upper() == (
    'CD16A1C8BF5792B48142FF6B67C9CB5B1BDC7260D8D11AFBA6BCDE0933A3C0AF')
seed = (ROOT / 'database.test-account.sql').read_text()
db.executescript(seed)
row = db.execute("SELECT Pass, Admin, Tut, Health, HouseKey, BizzKey, Member "
                 "FROM accounts WHERE Name='Test_Admin'").fetchone()
expected = hashlib.sha256(('BCRP-Test-Only-2026!' + salt).encode()).hexdigest().upper()
assert row == (expected, 1337, 0, 99.0, 0, 0, 0), row
# A repeated import must preserve an operator's changed password.
db.execute("UPDATE accounts SET Pass='changed-locally' WHERE Name='Test_Admin'")
db.executescript(seed)
assert db.execute("SELECT Pass FROM accounts WHERE Name='Test_Admin'").fetchall() == [('changed-locally',)]
print('PASS: test-account fields, SHA256 password/salt format, non-overwriting seed import.')
