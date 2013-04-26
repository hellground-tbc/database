DELETE FROM `gameobject` WHERE `id`=180665;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(11012444, 180665, 0, 1, -8340.12, 413.473, 124.49, 4.10013, 0, 0, 0.887333, -0.461128, 25, 0, 1);
DELETE FROM `gameobject` WHERE `id`=180666;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(45065, 180666, 0, 1, 1628.84, 133.938, -60.9673, -0.401426, 0, 0, 0.199368, -0.979925, 900, 100, 1);
DELETE FROM `gameobject` WHERE `id`=180667;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(11012470, 180667, 469, 1, -7526.41, -924.865, 458.823, 0.988389, 0, 0, 0.474322, 0.880351, 25, 0, 1);
UPDATE `gameobject_template` SET `ScriptName` = 'go_draconic_for_dummies' WHERE `entry` in (180665, 180666, 180667);