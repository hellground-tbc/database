UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = '17954';
UPDATE `creature_template` SET `unit_flags` = '33685510' WHERE `entry` = '17954';
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` = '17954';
UPDATE `creature_template` SET `mechanic_immune_mask` = '536854527' WHERE `entry` = '20630';
UPDATE `gameobject` SET `position_x` = '-95.5509' WHERE `id` = '183049';
UPDATE `gameobject` SET `position_y` = '-441.5410' WHERE `id` = '183049';
UPDATE `gameobject` SET `position_z` = '7.6195' WHERE `id` = '183049';
UPDATE `gameobject` SET `animprogress` = '100' WHERE `id` = '183049';
UPDATE `gameobject` SET `animprogress` = '100' WHERE `id` = '184320';
UPDATE `creature` SET `position_x` = '39.1179' WHERE `guid` = '12704';
UPDATE `creature` SET `position_y` = '-125.7067' WHERE `guid` = '12704';
UPDATE `creature` SET `position_x` = '42.2772' WHERE `guid` = '1741';
UPDATE `creature` SET `position_y` = '-303.6354' WHERE `guid` = '1741';
UPDATE `creature` SET `position_z` = '-9.2802' WHERE `guid` = '1741';
UPDATE `creature` SET `orientation` = '2.6389' WHERE `guid` = '1741';
UPDATE `creature` SET `position_x` = '42.774204' WHERE `guid` = '1742';
UPDATE `creature` SET `position_y` = '-301.5467' WHERE `guid` = '1742';
UPDATE `creature` SET `position_z` = '-9.3477' WHERE `guid` = '1742';
UPDATE `creature` SET `orientation` = '2.6389' WHERE `guid` = '1742';
UPDATE `creature` SET `position_x` = '42.7742' WHERE `guid` = '2080';
UPDATE `creature` SET `position_y` = '-306.9995' WHERE `guid` = '2080';
UPDATE `creature` SET `position_z` = '-8.7659' WHERE `guid` = '2080';
UPDATE `creature` SET `orientation` = '2.6389' WHERE `guid` = '2080';
UPDATE `creature` SET `MovementType` = '2' WHERE `id` IN (21695,21696,17802,17800);
UPDATE `creature_template` SET `speed` = '1.71' WHERE `entry` = '21696';
DELETE FROM `creature` WHERE `guid` IN (12615,12614,12705);
INSERT INTO `creature` VALUES
(12615, 17800, 545, 3, 0, 0, -99.159, -409.866, -7.62566, 1.51825, 7200, 0, 0, 20259, 0, 0, 0),
(12614, 17722, 545, 3, 0, 0, -87.5288, -471.939, 8.0284, 1.51825, 7200, 0, 0, 20259, 0, 0, 0),
(12705, 17803, 545, 3, 0, 0, 25.2177, -263.6969, -22.4006, 2.44346, 7200, 0, 0, 16208, 15775, 0, 0);
DELETE FROM `waypoint_data` WHERE `id` IN (12679,12700,12695,1268991,31799,1723991,12626);
INSERT INTO `waypoint_data` VALUES
(12679, 1, 7.8524 , -250.2162 , -23.0496 , 0, 0, 0, 100, 0),
(12679, 2 , 29.7598 , -220.8640 , -22.6071 , 0, 0, 0, 100, 0),
(12700, 1, 2.2379 , -179.9318 , -22.5954 , 0, 0, 0, 100, 0),
(12700, 2 , 29.4650 , -208.9794 , -22.5932 , 0, 0, 0, 100, 0),
(12695, 1, 39.7149 , -129.6986 , -22.6779 , 0, 0, 0, 100, 0),
(12695, 2 , 18.9726 , -161.9456 , -22.438 , 0, 0, 0, 100, 0),
(1268991, 1, 22.1516 , -255.8503 , -22.7195 , 0, 0, 0, 100, 0),
(1268991, 2 , 16.0674 , -277.4957 , -19.7232 , 0, 0, 0, 100, 0),
(31799, 1, 13.5420 , -115.2487 , -22.0705 , 0, 0, 0, 100, 0),
(31799, 2 , -32.8072 , -95.2656 , -21.5533 , 0, 0, 0, 100, 0),
(1723991, 1, -89.3914 , -252.3629 , -13.4979 , 0, 0, 0, 100, 0),
(1723991, 2 , -63.1098 , -218.9380 , -18.7463 , 0, 0, 0, 100, 0),
(12626, 1, -93.1374 , -380.2533 , -7.7673 , 0, 0, 0, 100, 0),
(12626, 2 , -91.1793 , -292.8460 , -7.7673 , 0, 0, 0, 100, 0);
DELETE FROM `creature_addon` WHERE `guid` IN (12695,12679,12700,12689,317,1723,12626);
INSERT INTO `creature_addon` VALUES
(12679, 12679, 0, 0, 0, 0, 0, 0, ''),
(12700, 12700, 0, 0, 0, 0, 0, 0, ''),
(12695, 12695, 0, 0, 0, 0, 0, 0, ''),
(317, 31799, 0, 0, 0, 0, 0, 0, ''),
(1723, 1723991, 0, 0, 0, 0, 0, 0, ''),
(12689, 1268991, 0, 0, 0, 0, 0, 0, ''),
(12626, 12626, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_formations` WHERE `leaderGUID` IN (12695,12679,12700,317,1723,12626);
INSERT INTO `creature_formations` VALUES
(12695, 12695, 0, 0, 2),
(12695, 12694, 4, 0, 2),
(12695, 12704, 4, 90, 2),
(12695, 12688, 4, 180, 2),
(12695, 12696, 4, 270, 2),
(12679, 12679, 0, 0, 2),
(12679, 12683, 4, 0, 2),
(12679, 12682, 4, 90, 2),
(12679, 12681, 4, 180, 2),
(12679, 12680, 4, 270, 2),
(12700, 12700, 0, 0, 2),
(12700, 12703, 4, 0, 2),
(12700, 12702, 4, 90, 2),
(12700, 12684, 4, 180, 2),
(12700, 12701, 4, 270, 2),
(317, 317, 0, 0, 2),
(317, 308, 4, 90, 2),
(1723, 1723, 0, 0, 2),
(1723, 1561, 4, 90, 2),
(12626, 12626, 0, 0, 2),
(12626, 12624, 4, 90, 2),
(12626, 12625, 4, 270, 2);
