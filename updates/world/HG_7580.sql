UPDATE `creature` SET `position_x` = '173.1044' WHERE `guid` = '86466';
UPDATE `creature` SET `position_y` = '-76.8937' WHERE `guid` = '86466';
UPDATE `creature` SET `position_z` = '1.95804' WHERE `guid` = '86466';
UPDATE `creature` SET `orientation` = '5.1333' WHERE `guid` = '86466';
DELETE FROM `waypoint_data` WHERE `id` IN (12679);
INSERT INTO `waypoint_data` VALUES
(12679, 1, 7.8524 , -250.2162 , -23.0496 , 0, 0, 0, 100, 0),
(12679, 2 , 29.7598 , -220.8640 , -22.6071 , 0, 0, 0, 100, 0);
DELETE FROM `creature_addon` WHERE `guid` = 12679;
DELETE FROM `creature_addon` WHERE `path_id` = 12679;
INSERT INTO `creature_addon` VALUES
(12679, 12679, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 12679;
