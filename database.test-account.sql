-- Optional PUBLIC development account. Import AFTER database.schema.sql.
-- Username: Test_Admin / Password: BCRP-Test-Only-2026!
-- Admin 1337 is the highest explicit developer permission threshold.
-- Hash matches SHA256_PassHash(password, HASH_KEY): uppercase SHA256(password + salt).
-- Remove this account or change its password before allowing public access.
-- Re-importing does not reset an existing account or password.
INSERT INTO `accounts`
(`Name`, `Pass`, `Admin`, `Reg`, `Helper`, `ForumName`, `Cash`, `Bank`,
 `Model`, `Interior`, `World`, `Tut`, `Age`, `Sex`, `PosX`, `PosY`, `PosZ`,
 `Health`, `Armour`, `MaskID`, `PhoneNum`, `WepSerial`, `OfflineReg`,
 `LastPrim`, `LastSec`, `LastMelee`, `SpawnLocation`, `HouseKey`, `BizzKey`, `Member`)
SELECT 'Test_Admin', '8FEB4C4F6A384B15F60620CCEC14B018FEDCD0F0100C43C4B59859059005E9F1', 1337, 2, 2, 'Test Admin', 5000, 5000,
 26, 0, 0, 0, 25, 1, 104.5100, 1168.9400, 18.6600,
 99.0, 0.0, 9000001, 9000002, 9000003, 0, -1, -1, -1, 0, 0, 0, 0
WHERE NOT EXISTS (SELECT 1 FROM `accounts` WHERE `Name` = 'Test_Admin');
