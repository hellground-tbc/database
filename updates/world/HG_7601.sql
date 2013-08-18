-- slave pens
INSERT INTO `creature_formations` VALUES
(52370, 52370, 0, 0, 0),
(52370, 52389, 4, 0, 0),
(52370, 52396, 4, 0, 0),
(52370, 79382, 4, 0, 2);
INSERT INTO `creature_formations` VALUES
(52398, 52398, 0, 0, 0),
(52398, 52383, 4, 0, 0),
(52398, 52384, 4, 0, 0),
(52398, 52385, 4, 0, 0),
(52398, 79359, 4, 0, 2);
INSERT INTO `creature_formations` VALUES
(52366, 52366, 0, 0, 0),
(52366, 52397, 4, 0, 0),
(52366, 52373, 4, 0, 0),
(52366, 57017, 4, 0, 2);
INSERT INTO `creature_formations` VALUES
(52394, 52394, 0, 0, 0),
(52394, 52393, 4, 0, 0),
(52394, 52371, 4, 0, 0),
(52394, 61959, 4, 0, 2);
INSERT INTO `creature_formations` VALUES
(52374, 52374, 0, 0, 0),
(52374, 52375, 4, 0, 0),
(52374, 52365, 4, 0, 0),
(52374, 52381, 4, 0, 0),
(52374, 52382, 4, 0, 0),
(52374, 57018, 4, 0, 2);
DELETE FROM `creature_template` WHERE `entry` = 31000;
DELETE FROM `creature` WHERE `guid` = 100001;
INSERT INTO `creature_formations` VALUES
(72370, 72370, 0, 0, 2),
(72370, 79416, 4, 90, 2),
(72370, 79426, 4, 270, 2);
INSERT INTO `creature_formations` VALUES
(86371, 86371, 0, 0, 2),
(86371, 57878, 4, 90, 2),
(86371, 76520, 4, 270, 2);
DELETE FROM `creature_addon` WHERE `guid` IN (79419,79412,79418);
DELETE FROM `waypoint_data` WHERE `id` IN (1586,1590,1589);
INSERT INTO `creature_formations` VALUES
(79414, 79414, 0, 0, 2),
(79414, 79419, 4, 90, 2),
(79414, 79418, 4, 180, 2),
(79414, 79412, 4, 270, 2);
UPDATE `creature` SET `MovementType` = '0' WHERE `guid` IN (79419,79412,79418);

-- steamvault
UPDATE `creature_template` SET AIName = '', ScriptName = 'npc_coilfang_slavemaster' WHERE `entry` = 17805;
INSERT INTO `creature_formations` VALUES
(12593, 12593, 0, 0, 0),
(12593, 12592, 4, 0, 0),
(12593, 12635, 4, 0, 0),
(12593, 12630, 4, 0, 0),
(12593, 12633, 4, 0, 0),
(12593, 12629, 4, 0, 0),
(12593, 12591, 4, 0, 2);
INSERT INTO `creature_formations` VALUES
(12634, 12634, 0, 0, 0),
(12634, 12584, 4, 0, 0),
(12634, 12585, 4, 0, 0),
(12634, 12586, 4, 0, 0),
(12634, 12608, 4, 0, 0),
(12634, 12609, 4, 0, 0),
(12634, 12610, 4, 0, 0),
(12634, 12612, 4, 0, 0),
(12634, 12587, 4, 0, 2);
INSERT INTO `creature_formations` VALUES
(12589, 12589, 0, 0, 0),
(12589, 12588, 4, 0, 2),
(12589, 12590, 4, 0, 2);

-- mgt more correct mobs immunity
UPDATE `creature_template` SET `mechanic_immune_mask` = '75506506' WHERE `entry` IN (24683,25568,24684,25565,24686,25572,24688,25577,24689,25575,24690,25576);
UPDATE `creature_template` SET `mechanic_immune_mask` = '75506507' WHERE `entry` IN (24687,25570);
