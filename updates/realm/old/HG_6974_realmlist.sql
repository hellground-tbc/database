ALTER TABLE `realmlist`
DROP COLUMN `dbinfo`,
DROP COLUMN `ra_address`,
DROP COLUMN `ra_port`,
DROP COLUMN `ra_user`,
DROP COLUMN `ra_pass`,
CHANGE COLUMN `realmbuilds` `gamebuild`  int(11) UNSIGNED NOT NULL DEFAULT 8606 AFTER `population`,
DROP INDEX `name` ,
ADD UNIQUE INDEX `idx_name` (`name`) USING BTREE ;