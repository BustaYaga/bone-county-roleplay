# Bone County Roleplay — v0.3.0

Bone County Roleplay is a SA-MP roleplay gamemode featuring character progression, civilian life, businesses, factions, emergency services, and criminal roleplay.

## Gameplay Systems

- **Properties System** — Own, buy, sell, and rent houses; manage access, storage, garages, backdoors, and shared furnishing rights.
- **Business System** — Player-owned businesses with stock, inventories, sales, money storage, and configurable entrances and interiors.
- **Furniture System** — Furnish homes, businesses, and supported vehicles with movable objects, custom materials, and shared editing permissions.
- **Corpse System** — Bodies remain available for roleplay, examination, and transportation in vehicle trunks.
- **Dynamic Items System** — Give, drop, pick up, use, and store items across player inventories, properties, and vehicles, with support for quantities and custom item names.
- **UI Phone System** — A menu-based cellphone interface for calls, contacts, text messages, answering calls, speaker mode, and hanging up.
- **Payphone System** — Placeable public phones with individual names and calling functionality.
- **Character and Account System** — Persistent character information, registration applications, staff review, statistics, and an in-game user control panel.
- **Roleplay Chat System** — Local speech, whispers, shouting, actions, descriptions, private messages, and OOC communication.
- **Animations and Appearance System** — Roleplay animations, character descriptions, clothing, wearable accessories, and backpacks.
- **Vehicle Ownership System** — Buy and sell vehicles, share keys, manage spawns, and control locks, engines, lights, windows, and storage.
- **Vehicle Maintenance System** — Fuel, mileage, repairs, refueling, towing, and impounding.
- **Vehicle Customization System** — Paintjobs, wheels, attached furniture, and neon lighting.
- **Vehicle Interiors System** — Enterable interiors for selected campers, emergency vehicles, aircraft, and boats.
- **Economy and Banking System** — Cash payments, bank balances, wire transfers, paychecks, and property safes.
- **Jobs System** — Mechanic, garbage collection, street sweeping, food delivery, taxi driving, trucking, farming, and factory work, with job vehicles and route-based activities.
- **Taxi System** — Adjustable fares, taxi meters, and passenger payments.
- **Faction System** — Membership, leadership, ranks, permissions, duty, faction communication, bonuses, vehicles, and shipments.
- **Police System** — Arrests, handcuffs, detaining, searches, tickets, licenses, roadblocks, spike strips, and police equipment.
- **Police Computer System** — Citizen, vehicle plate, phone number, and weapon serial searches, alongside criminal records, charges, and tickets.
- **Investigation System** — Wanted notices, police alerts, scanners, phone tracing, and wiretapping tools.
- **Medical System** — Wounds, injuries, treatment, revival, stretchers, hospital handling, and addiction treatment.
- **Fire System** — Fire creation and removal, supported by emergency-service commands and equipment.
- **Weapons System** — Ammunition, reloading, holsters, silencers, weapon storage, and weapon serials.
- **Crafting and Materials System** — Collect and transport materials, store supplies, and craft items.
- **Drugs System** — Drug items, weed cultivation, drug effects, and faction shipments.
- **Vehicle Theft System** — Hotwiring, vehicle locks, alarms, and theft-related activities.
- **Dynamic Gates System** — Placeable gates with passwords, member access, faction/rank restrictions, and opening and closing sounds.
- **Mapping System** — In-game object placement and editing, material changes, and persistent world mapping.
- **Radio and Music System** — Vehicle radios, portable music, placed radios, and faction-controlled broadcasts.
- **News and Advertising System** — Player advertisements, staff approval, newspapers, and news broadcasts.
- **Fishing System** — Catch and sell fish.
- **Basketball System** — Court play, ball handling, shooting, and scoring.
- **Marriage System** — Proposals, marriage, and divorce.
- **NPC and Actor System** — World characters, bus drivers, and train routes.
- **Staff and Support System** — Administrator, helper, registrar, and mapper roles, with reports, assistance requests, application reviews, spectating, and moderation tools.

## Requirements

- Grand Theft Auto: San Andreas with a compatible SA-MP client.
- A compatible SA-MP server for the script's 0.3.7/DL setup.
- A Pawn compiler, such as the supplied Pawno compiler.
- A MySQL/MariaDB database using the supplied [database schema](database.schema.sql).
- The includes and plugins listed below. Bundled server/plugin binaries are 32-bit and require compatible system libraries.

### Libraries / Includes

The gamemode uses the following includes. Use the supplied **`pawno/include/`** folder; the separate root `include/` folder does not contain every required library.

| Library / Include | Used for |
| --- | --- |
| `a_samp` and standard Pawn includes | Core SA-MP functionality |
| `a_mysql` | Database access; supplied include identifies MySQL R39-2 |
| `fixes` | SA-MP scripting fixes |
| `crashdetect` | Runtime error diagnostics |
| `filesystem` (DOF2) | File and configuration handling |
| `foreach` and bundled YSI includes | Player and game-world collections |
| `sscanf2` | Command input handling; supplied include identifies version 2.8.2 |
| `streamer` | World objects, pickups, checkpoints, and labels |
| `zcmd` | Player and staff commands |
| `GPDID` | Dialog handling and validation |
| `cidr` | IP address utilities |
| `compat` | SA-MP compatibility support |
| `mSelection` | Visual model-selection menus |
| `discord-connector` | Optional Discord integration; disabled by default |

### Server Plugins

| Plugin | Requirement |
| --- | --- |
| `mysql` | Required for persistent accounts and world data; use a version compatible with the supplied R39-2 include |
| `streamer` | Required for streamed world content |
| `sscanf` | Required for command input handling |
| `samp-compat` | Included in the configured compatibility setup |
| `crashdetect` | Included in the default setup for error reporting |
| `discord-connector` | Optional; the gamemode's Discord integration is disabled by default |

Windows uses `.dll` plugins; Linux uses `.so` plugins. The repository does not supply Linux builds of MySQL, sscanf, or CrashDetect. Plugin versions must match their includes, and any supporting libraries required by those builds must be installed.

FCNPC and several additional includes are bundled for other scripts, but are not required by the current main gamemode. The default configuration loads no additional filterscripts.

Deployment, phpMyAdmin import, and the optional test login are covered in [DEPLOYMENT.md](DEPLOYMENT.md).
