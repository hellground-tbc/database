UPDATE `creature_template` SET `mechanic_immune_mask` = '1073725439' WHERE `entry` = '20657';
DELETE FROM `creature_template_addon` WHERE `entry` IN (18797,20662);
UPDATE `creature` SET `MovementType` = '0' WHERE `id` IN (18797,20662);
DELETE FROM `creature_addon` WHERE (guid >= 67109 AND guid <= 67132);
DELETE FROM `creature_addon` WHERE `guid` IN (67144,67149);
UPDATE `creature_template` SET `ScriptName` = 'npc_tortured_skeleton' WHERE `entry` = '18797';
INSERT INTO `creature` VALUES
(98246, 21159, 555, 3, 0, 0, -174.6778, -77.0473, 19.8231, 5.72468, 7200, 0, 0, 8, 0, 0, 0),
(98247, 21159, 555, 3, 0, 0, -138.2408, -77.9173, 19.8231, 5.72468, 7200, 0, 0, 8, 0, 0, 0);
DELETE FROM `creature` WHERE `guid` = 67089;
DELETE FROM `creature_linked_respawn` WHERE `guid` = 67089;
INSERT INTO `creature` VALUES
(67089, 21159, 555, 3, 0, 0, -157.0993, -57.9957, 19.8231, 5.72468, 7200, 0, 0, 8, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE `entry` = 18794;
DELETE FROM `creature_ai_scripts` WHERE `id` IN (1879401,1879402,1879404);
INSERT INTO `creature_ai_scripts` VALUES
(1879401,18794,1,0,100,6,0,0,0,0,21,0,0,0,30,1,3,5,11,32958,0,0,'Cabal Ritualist - Prevent Combat Movement and Random Phase Select on Spawn'),
(1879402,18794,4,61,100,2,0,0,0,0,11,15497,1,0,28,0,32958,0,0,0,0,0,'Cabal Ritualist (Normal) - Cast Frostbolt on Aggro (Phase 1)'),
(1879404,18794,4,61,100,4,0,0,0,0,11,12675,1,0,23,1,0,0,28,0,32958,0,'Cabal Ritualist (Heroic) - Cast Frostbolt on Aggro (Phase 1)');
INSERT INTO `waypoint_data` VALUES
(66835, 1, -69.5257 , -65.9980 , -1.1294 , 0, 0, 0, 100, 0),
(66835, 2, -70.1723 , -12.5802 , -1.1272 , 0, 0, 0, 100, 0);
DELETE FROM `creature_addon` WHERE `guid` = 66835;
INSERT INTO `creature_addon` VALUES
(66835, 66835, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = '66835';
UPDATE `creature` SET `position_x` = '-55.8877' WHERE `guid` = '66901';
UPDATE `creature` SET `position_y` = '-80.5580' WHERE `guid` = '66901';
UPDATE `creature` SET `position_x` = '-57.9286' WHERE `guid` = '66902';
UPDATE `creature` SET `position_y` = '-80.6261' WHERE `guid` = '66902';
INSERT INTO `waypoint_data` VALUES
(67086, 1, -170.6063 , -70.1084 , 8.0688 , 0, 0, 0, 100, 0),
(67086, 2, -168.8986 , -9.6860 , 8.0722 , 0, 0, 0, 100, 0),
(67086, 3, -145.8010 , -10.0124 , 8.0722 , 0, 0, 0, 100, 0),
(67086, 4, -145.2782 , -70.44002 , 8.0696 , 0, 0, 0, 100, 0),
(67087, 1, -135.5187 , -17.9185 , 8.0722 , 0, 0, 0, 100, 0),
(67087, 2, -136.8615 , -65.4050 , 8.0722 , 0, 0, 0, 100, 0);
DELETE FROM `creature_addon` WHERE `guid` IN (67086,67087);
INSERT INTO `creature_addon` VALUES
(67086, 67086, 0, 0, 0, 0, 0, 0, ''),
(67087, 67087, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` IN (67086,67087);
INSERT INTO `waypoint_data` VALUES
(67254, 1, -240.6476 , -56.9531 , 8.0729 , 0, 0, 0, 100, 0),
(67254, 2, -241.1107 , -21.0447 , 8.0729 , 0, 0, 0, 100, 0),
(67254, 3, -274.9096 , -25.0149 , 8.0729 , 0, 0, 0, 100, 0),
(67254, 4, -275.6351 , -53.4096 , 8.0729 , 0, 0, 0, 100, 0),
(67255, 1, -285.5883 , -77.7378 , 8.0729 , 0, 0, 0, 100, 0),
(67255, 2, -281.0653 , -65.9080 , 8.0729 , 0, 0, 0, 100, 0),
(67255, 3, -245.1137 , -78.1796 , 8.0729 , 0, 0, 0, 100, 0),
(67255, 4, -250.6535 , -92.1376 , 8.0729 , 0, 0, 0, 100, 0),
(67253, 1, -276.1371 , -9.7912 , 8.0729 , 0, 0, 0, 100, 0),
(67253, 2, -281.8301 , 0.7992 , 8.0729 , 0, 0, 0, 100, 0),
(67253, 3, -254.3026 , 12.9266 , 8.0729 , 0, 0, 0, 100, 0),
(67253, 4, -248.8353 , -0.2193 , 8.0729 , 0, 0, 0, 100, 0);
DELETE FROM `creature_addon` WHERE `guid` IN (67254,67255,67253);
INSERT INTO `creature_addon` VALUES
(67254, 67254, 0, 0, 0, 0, 0, 0, ''),
(67255, 67255, 0, 0, 0, 0, 0, 0, ''),
(67253, 67253, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` IN (67254,67255,67253);
UPDATE `creature` SET `id` = '18848' WHERE `guid` = 67088;
