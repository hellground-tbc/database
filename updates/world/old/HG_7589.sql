DELETE FROM `creature_loot_template` WHERE `entry` = 20653;
INSERT INTO `creature_loot_template` VALUES
(20653, 27775, 0, 1, 1, 1, 0, 0, 0),
(20653, 27897, 0, 1, 1, 1, 0, 0, 0),
(20653, 27898, 0, 1, 1, 1, 0, 0, 0),
(20653, 27900, 0, 1, 1, 1, 0, 0, 0),
(20653, 27901, 0, 1, 1, 1, 0, 0, 0),
(20653, 28558, 50, 0, 1, 2, 0, 0, 0),
(20653, 29434, 100, 0, 1, 1, 0, 0, 0),
(20653, 30559, 7, 2, 1, 1, 0, 0, 0),
(20653, 30560, 7, 2, 1, 1, 0, 0, 0),
(20653, 30563, 7, 2, 1, 1, 0, 0, 0),
(20653, 30827, -100, 0, 1, 1, 0, 0, 0);

UPDATE `creature_template` SET `lootid` = '20653' WHERE `entry` = '20653';
UPDATE `creature_template` SET `pickpocketloot` = '18732' WHERE `entry` = '20653';
UPDATE `creature_template` SET `mechanic_immune_mask` = '1073725439' WHERE `entry` = '20657';
