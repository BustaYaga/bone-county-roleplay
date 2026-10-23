# Bone County Roleplay v0.3.0 — Deployment

This source release retains the version declared in the gamemode. Download the
release's **Source code (zip)** or **Source code (tar.gz)** and extract it.
Compiled `.amx` files are deliberately excluded: build locally after configuring
your database connection.

## Requirements and downloads

- GTA: San Andreas and a compatible SA-MP client.
- SA-MP 0.3.7-R2 or 0.3.DL server compatible with your selected plugins.
- MySQL/MariaDB, plus phpMyAdmin for the import steps below.
- Pawn compiler/Pawno; the Windows compiler is supplied in `pawno/`.
- 32-bit runtime support for the supplied server and native plugins.

Download the appropriate Windows or Linux plugin assets from these projects:

| Plugin | Download | Notes |
| --- | --- | --- |
| MySQL | [R39-2 release](https://github.com/pBlueG/SA-MP-MySQL/releases/tag/R39-2) | Matches the supplied R39-2 API. R40/R41 are not drop-in replacements. |
| Streamer | [Releases](https://github.com/samp-incognito/samp-streamer-plugin/releases) | Use a binary/include pair compatible with this legacy gamemode. |
| sscanf | [Releases](https://github.com/Y-Less/sscanf/releases) | Supplied include identifies 2.8.2; do not mix incompatible includes and binaries. |
| CrashDetect | [Releases](https://github.com/AmyrAhmady/samp-plugin-crashdetect/releases) | Runtime diagnostics; successor fork to the unavailable Zeex repository. |
| samp-compat | [Releases](https://github.com/AGraber/samp-compat/releases) | Compatibility bridge for supported 0.3.7-R2/0.3.DL server/client combinations. |
| Discord Connector | [Releases](https://github.com/maddinat0r/samp-discord-connector/releases) | Optional; Discord is disabled in the gamemode by default. |

The release pages are download sources, not a claim that every newest version
has been tested with this script. Preserve compatible plugin/include pairs.
Place `.dll` or `.so` files in `plugins/`, and install any supporting libraries
required by that plugin's release instructions. Linux MySQL, sscanf, and
CrashDetect binaries are not bundled here.

Use `pawno/include/` for these libraries: `a_samp` and standard Pawn includes,
`a_mysql`, `fixes`, `crashdetect`, `filesystem` (DOF2), `foreach`/YSI, `sscanf2`,
`streamer`, `zcmd`, `GPDID`, `cidr`, `compat`, and `mSelection`.
`discord-connector` is needed only when enabling the Discord integration.
On Linux, match `<Foreach>` and `<zcmd>` to the supplied `foreach.inc` and
`ZCMD.inc` filename casing. The root `include/` directory is not a complete
replacement for `pawno/include/`.

## Import SQL with phpMyAdmin

1. Sign in to phpMyAdmin on your database host.
2. Create a **new, empty** database named `bcrp`, using `latin1` encoding
   (for example, the `latin1_swedish_ci` collation).
3. Select `bcrp` in the sidebar, open **Import**, choose
   `database.schema.sql`, select SQL format, and run the import. Check that all
   **24 tables** were created without errors.
4. To enable the test login, stay in that database and import
   `database.test-account.sql`. This adds one account, not a populated game world.
5. Create a dedicated database user with privileges on `bcrp`. Use that user's
   credentials in the gamemode configuration, not the public test login below.

The schema should be imported once into an empty database. The account seed can
be imported again without resetting an existing `Test_Admin`. Do not import
old player-data dumps. Factions, properties, and other world records still need
configuration. See [DATABASE.md](DATABASE.md) for schema details.

## Configure and compile

1. Copy `server.cfg.example` to `server.cfg` and
   `gamemodes/database.example.inc` to `gamemodes/database.local.inc`.
   Preserve existing local settings if these files already exist.
2. Set `MYSQL_HOST`, `MYSQL_USER`, `MYSQL_DB`, and `MYSQL_PASS` in
   `database.local.inc` to the database details from phpMyAdmin.
3. Set your own `rcon_password`, `hostname`, and `port` in `server.cfg`.
   Keep `gamemode0 Compile`. The example port is **48752**.
4. With Discord disabled, use this plugin line on Windows:

   ```text
   plugins crashdetect streamer sscanf mysql samp-compat
   ```

   On Linux, after obtaining the missing plugins:

   ```text
   plugins crashdetect.so streamer.so sscanf.so mysql.so samp-compat.so
   ```

5. On Windows, open `gamemodes/Compile.pwn` in `pawno/pawno.exe` and compile it.
   Confirm that `gamemodes/Compile.amx` is generated successfully. On Linux,
   supply a compatible Pawn compiler or a Windows compiler environment, use
   `pawno/include/`, and produce the same output path.
6. Compile the NPC sources `busroute.pwn`, `busroute2.pwn`, `train_lv.pwn`, and
   `npcidle.pwn` from `npcmodes/` into AMX files in that directory. Preserve
   their recordings. No extra filterscripts are enabled by default.
7. Review the website, map, and mode settings in `Compile.pwn`; the gamemode
   overrides some server labels on startup. Recompile after source changes.

Keep the complete `scriptfiles/` tree present and writable. Keep generated AMX,
local database credentials, and server logs out of commits and release uploads.

## Start and log in

1. Run `samp-server.exe` on Windows or `./samp03svr` on Linux from the extracted
   server directory.
2. Check `server_log.txt` for successful plugin and database loading. Resolve
   missing libraries, unknown natives, or SQL errors before connecting.
3. In the SA-MP client, set your nickname to **`Test_Admin`** and connect to
   `127.0.0.1:48752` for a local server, or your server's address and configured
   port. Remote access requires the server's UDP port to be reachable.
4. Enter **`BCRP-Test-Only-2026!`** in the login dialog.
5. Use `/adminhelp`, `/acp`, and `/ucp` to inspect staff tools and account settings.

The test account has **admin level 1337**, the highest explicit developer
permission threshold, plus helper/registrar level 2. Founder is level 11;
`/makeadmin` itself only assigns levels through 10. Some rank displays do not
label or list the developer level.

This is an intentionally public development login. Before opening the server
to players, change its password through `/ucp` or delete the test account after
creating your own staff account. Do not leave a publicly known developer login
active on a public server.

The seed stores an uppercase SHA-256 hash of the test password followed by the
current `HASH_KEY`, matching `SHA256_PassHash` in the login code. See the
[hash function documentation](https://open.mp/docs/scripting/functions/SHA256_PassHash).
If you change that key, regenerate the seed hash or create a new account using
the changed gamemode.

## Validation scope

The schema and test-account insert are checked offline, including the password
hash and repeated seed import. No live MySQL/MariaDB import, full Pawn build,
or in-game login was performed for this release. The source archive is not a
preconfigured, fully populated server. Existing historical repository concerns
are documented in [RELEASE_SECURITY.md](RELEASE_SECURITY.md).
