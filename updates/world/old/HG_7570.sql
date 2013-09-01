DELETE FROM `creature` WHERE `guid` IN (114032,114153,114170,114029,114010,113966,113952,113866,113791,113845);
UPDATE `creature_template` SET `ScriptName` = 'npc_blood_guard' WHERE `entry` = '17461';
UPDATE `creature` SET `position_x` = '516.7048' WHERE `guid` = '62871';
UPDATE `creature` SET `position_y` = '312.4942' WHERE `guid` = '62871';
UPDATE `creature` SET `position_z` = '1.9332' WHERE `guid` = '62871';
UPDATE `creature` SET `position_x` = '516.5928' WHERE `guid` = '62921';
UPDATE `creature` SET `position_y` = '316.1524' WHERE `guid` = '62921';
UPDATE `creature` SET `position_z` = '1.9332' WHERE `guid` = '62921';
UPDATE `creature` SET `position_x` = '516.5928' WHERE `guid` = '16777014';
UPDATE `creature` SET `position_y` = '316.1524' WHERE `guid` = '16777014';
UPDATE `creature` SET `position_z` = '1.9332' WHERE `guid` = '16777014';
UPDATE `creature` SET `position_x` = '516.4897' WHERE `guid` = '62872';
UPDATE `creature` SET `position_y` = '319.6697' WHERE `guid` = '62872';
UPDATE `creature` SET `position_z` = '1.9332' WHERE `guid` = '62872';
UPDATE `creature` SET `position_x` = '499.5154' WHERE `guid` = '117466';
UPDATE `creature` SET `position_y` = '322.1572' WHERE `guid` = '117466';
UPDATE `creature` SET `position_z` = '1.9444' WHERE `guid` = '117466';
UPDATE `creature` SET `position_x` = '499.6607' WHERE `guid` = '117436';
UPDATE `creature` SET `position_y` = '318.0814' WHERE `guid` = '117436';
UPDATE `creature` SET `position_z` = '1.9444' WHERE `guid` = '117436';
UPDATE `creature` SET `position_x` = '499.7186' WHERE `guid` = '117489';
UPDATE `creature` SET `position_y` = '314.5421' WHERE `guid` = '117489';
UPDATE `creature` SET `position_z` = '1.9444' WHERE `guid` = '117489';
UPDATE `creature` SET `position_x` = '499.8270' WHERE `guid` = '117515';
UPDATE `creature` SET `position_y` = '310.1293' WHERE `guid` = '117515';
UPDATE `creature` SET `position_z` = '1.9444' WHERE `guid` = '117515';
DELETE FROM `creature_formations` WHERE `leaderGUID` = 62871;
INSERT INTO `creature_formations` VALUES
(62871, 62871, 0, 0, 2),
(62871, 16777014, 4, 0, 2),
(62871, 62872, 4, 90, 2),
(62871, 62921, 0, 0, 2);
DELETE FROM `waypoint_data` WHERE `id` IN (187294);
INSERT INTO `waypoint_data` VALUES
(187294, 1, 55.0378 , 74.6893 , -13.2223 , 0, 0, 0, 100, 0),
(187294, 2 , 84.7109 , 76.6856 , -13.2223 , 0, 0, 0, 100, 0);
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 187294;
DELETE FROM `creature_addon` WHERE `guid` IN (187294,19314,57696,123402,134711,11612,19742);
INSERT INTO `creature_addon` VALUES
(187294, 187294, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_formations` WHERE `leaderGUID` IN (134711,19742);
INSERT INTO `creature_formations` VALUES
(134711, 134711, 0, 0, 2),
(134711, 136592, 4, 90, 2),
(134711, 136542, 4, 270, 2),
(19742, 19742, 0, 0, 2),
(19742, 19889, 4, 90, 2),
(19742, 19868, 4, 270, 2);
DELETE FROM `creature_addon` WHERE `guid` IN (133704,129835,130234,18311,19039,19000);
INSERT INTO `creature_addon` VALUES
(133704, 0, 0, 0, 0, 0, 389, 0, ''),
(129835, 0, 0, 0, 0, 0, 389, 0, ''),
(130234, 0, 0, 0, 0, 0, 389, 0, ''),
(18311, 0, 0, 0, 0, 0, 389, 0, ''),
(19039, 0, 0, 0, 0, 0, 389, 0, ''),
(19000, 0, 0, 0, 0, 0, 389, 0, '');
