# Release security review

The working tree was reviewed for local environment files, credential assignments,
private-key markers, common provider tokens, credential-bearing URLs, webhooks,
account data and logs. The byte-pattern scan covered 969 files (about 188 MB,
including binary files) and all 780 unique blobs reachable from the repository's
one existing commit. This is a heuristic review, not a guarantee that no secret
exists. Images were not OCR-scanned, archives were not unpacked, and compiled
code was not decompiled. No dedicated secret-scanner executable was available.

## Findings and changes

- No `.env` files or Python virtual environments were found. Ignore rules now
  cover these, local credentials, private-key files and backup archives.
- `server.cfg` contains an RCON credential. It is now ignored and untracked;
  `server.cfg.example` supplies a placeholder instead.
- `gamemodes/Compile.pwn` contained active and commented database settings.
  Active settings were preserved locally in ignored `database.local.inc`;
  source now includes that file. The commented settings were removed.
- SQL exports contain account records, password hashes, gate passwords and
  login/kick records. Even `empty_sql_2016.sql` contains rows. All original
  exports are now ignored and untracked. `database.schema.sql` contains only
  24 source-reconciled table definitions, with no INSERT statements. See
  `DATABASE.md` for the subsequent schema rebuild and validation.
- Server/plugin/game logs, ban data, saved gate credentials and selected runtime
  property state are ignored and untracked. All local originals are preserved.
- Compiled AMX scripts can embed database credentials; they are ignored and
  untracked. Rebuild locally after configuring credentials.
- A backup RAR and Windows thumbnail caches are ignored and untracked.
- README no longer advertises shared demo-account credentials.
- Token/URL/webhook byte patterns found no matches. A private-key BEGIN marker
  occurs in `libmysql.dll`, but no complete PEM key block was found; a marker
  alone is not evidence of a private key. Bundled binaries remain unverified.
- `LOG_PASSWORDS` is currently false. Keep it disabled: the optional logging
  implementation can record plaintext player passwords.

## Local setup

1. Copy `server.cfg.example` to `server.cfg` and set a strong RCON password.
2. Copy `gamemodes/database.example.inc` to `gamemodes/database.local.inc`,
   configure a dedicated database user and a unique password, then rebuild Pawn.
   Existing local settings were preserved by this cleanup.
3. Import `database.schema.sql` into a fresh database. This is a schema-only
   starting point, not a tested complete game-world seed. Configure required
   game data and your own administrator account locally.

## Before publishing

The existing commit still contains the original sensitive files and settings.
Removing files from the index does not remove them from history. Before the
cleanup push, GitHub was checked and the original commit was already present
on the public repository main branch. The cleanup removes sensitive files from
the current snapshot only; it does not purge that public history. A coordinated
history rewrite is still needed to remove historical copies. History was not
rewritten by this review.

Rotate the RCON credential and any real database or gate credentials present in
these files; remove or reset imported demo accounts. Do not distribute local SQL
exports, logs, AMX files or backups as release attachments. Review screenshots
for player information and obtain trusted runtime binaries separately if needed.

Verification: ignored files remaining in the index: zero. Both staged and
unstaged `git diff --check` passed. No Pawn compile or database import was run;
this review does not certify application security or runtime compatibility.
The subsequent schema work added offline validation in `tools/check_schema.py`;
see `DATABASE.md` for its scope.

## Public development seed added for v0.3.0

`database.test-account.sql` is an intentionally published, synthetic test account
requested for release setup. It is separate from the empty schema and historical
player exports. Its public password and admin level 1337 are documented in
[DEPLOYMENT.md](DEPLOYMENT.md). Import only for development; change its password
or remove the account before public access. This does not authorize publishing
private database exports or other credentials.
