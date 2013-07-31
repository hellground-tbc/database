DELETE FROM `spell_script_target` WHERE `entry` = 40160;
INSERT INTO `spell_script_target` VALUES
(40160,1,23118);
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE entry = '23118';
UPDATE `creature_template` SET `flags_extra` = '128' WHERE `entry` = '23118';
INSERT INTO `creature_ai_scripts` VALUES (2311801, 23118, 8, 0, 100, 1, 40160, -1, 0, 0, 33, 23118, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bombing Run Target Bunny Quest Credit');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE entry = '22451';
DELETE FROM `creature_ai_scripts` WHERE `id` = '2245101';
INSERT INTO `creature_ai_scripts` VALUES (2245101,22451,9,0,100,1,0,40,4000,5000,11,36238,1,0,0,0,0,0,0,0,0,0,'Legion Fel Cannon - shoot');
UPDATE `creature_template` SET `unit_flags` = '4' WHERE `entry` = '22451';
UPDATE `creature_template` SET `InhabitType` = '5' WHERE `entry` = '22451';
INSERT IGNORE INTO `creature` VALUES
('',23118,530,1,0,0,2824.03,7045.84,370.60,3.735,300,0,0,25,0,0,0),
('',23118,530,1,0,0,2787.76,7036.61,371.46,3.735,300,0,0,25,0,0,0),
('',23118,530,1,0,0,2763.68,7024.05,371.00,3.735,300,0,0,25,0,0,0);
