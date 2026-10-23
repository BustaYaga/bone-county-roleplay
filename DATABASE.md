# Empty database setup

`database.schema.sql` defines the 24 tables referenced by SQL queries in
`gamemodes/`, including `gamemodes/Plugins/`. It contains no rows: no accounts,
credentials, factions, houses, vehicles, logs, or other seed data. Defaults in
column definitions apply only when the server later creates records.

Create a fresh database, then import the schema using your own local database
credentials (the commands prompt for a password):

```sh
mysql -u YOUR_DATABASE_USER -p -e 'CREATE DATABASE bcrp CHARACTER SET latin1;'
mysql -u YOUR_DATABASE_USER -p bcrp < database.schema.sql
```

Use `mariadb` in place of `mysql` if that is your installed client. The schema
does not choose a database, drop existing tables, or clear existing records;
import it into a new, empty database. Existing table names cause an error.
Configure `gamemodes/database.local.inc` to use the same database before building.
Create administrator accounts and world configuration locally as needed; an
empty schema is not a populated playable server.

The schema was reconciled against source SELECT/INSERT/UPDATE/DELETE queries,
cache readers and numbered field loops, using the legacy schema as a reference
for column types and sizes. Unreferenced web/UCP-only tables were omitted.
Key corrections include primary keys, generated IDs for server-created records,
`criminals.type` (default 1, matching the MDC filters), and defaults for fields
omitted by partial inserts. Houses, businesses, factions and interiors retain
explicit application-assigned IDs. All tables use InnoDB and the legacy latin1
encoding. A legacy `DFAULT` typo and incompatible column collations were removed.
Optional text fields allow NULL for compatibility with older MySQL versions.

Run the offline validation with:

```sh
python3 tools/check_schema.py
```

It checks that the SQL contains only table definitions, creates empty tables in
an in-memory SQLite adaptation, checks numbered column ranges, prepares 292
source SQL statements and exercises representative partial inserts. Dynamic
whole-column placeholders in faction saving and the generic PData helper are
reviewed separately; this is not a full Pawn parser or an integration test.

A live MySQL/MariaDB import was not run: no client/server executable was present,
and Docker socket access was denied. The offline check does not validate MySQL
engine limits or runtime behavior. Existing source-query issues also remain:
for example, the legacy MDC query in `Build.pwn` lacks a comma between `DriveLic`
and `GunLic`, which can alias the field rather than select both. Schema creation
does not repair application queries.

## Optional development account

After importing the empty schema, import `database.test-account.sql` to create
`Test_Admin` with password `BCRP-Test-Only-2026!` and admin level **1337**
(developer access). This separate seed uses the gamemode's salted SHA-256 format
and does not overwrite an existing account. The schema itself remains empty.
Remove the account or change its password through `/ucp` before public access.
See [DEPLOYMENT.md](DEPLOYMENT.md) for phpMyAdmin import and startup instructions.
