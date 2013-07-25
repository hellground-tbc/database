DELETE FROM `spell_script_target` WHERE `entry` IN (38629);
INSERT INTO `spell_script_target` VALUES
(38629,1,22367),
(38629,1,22356),
(38629,1,22368);
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE entry IN (22367,22356,22368);
INSERT INTO `creature_ai_scripts` VALUES (2236701, 22367, 8, 0, 100, 1, 38629, -1, 0, 0, 33, 22367, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Moonshine Keg Credit');
INSERT INTO `creature_ai_scripts` VALUES (2235601, 22356, 8, 0, 100, 1, 38629, -1, 0, 0, 33, 22356, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spot Grog Keg Credit');
INSERT INTO `creature_ai_scripts` VALUES (2236801, 22368, 8, 0, 100, 1, 38629, -1, 0, 0, 33, 22368, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fermented Beer Keg Credit');
DELETE FROM `scripted_spell_id` WHERE `id` = 38544;
INSERT INTO `scripted_spell_id` VALUES
(38544, 'coax_marmot');
UPDATE `creature_template` SET `spell1` = 38605 WHERE `entry` = 22189;
UPDATE `creature_template` SET `spell2` = 38629 WHERE `entry` = 22189;
UPDATE `creature_template` SET `spell3` = 0 WHERE `entry` = 22189;
UPDATE `gameobject_template` SET `ScriptName` = '' WHERE `entry` IN (185214,185206,185213);
