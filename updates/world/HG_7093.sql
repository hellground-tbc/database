DELETE FROM `spell_script_target` WHERE `entry` = 38173;
INSERT INTO `spell_script_target` VALUES
(38173,1,22116);
UPDATE `creature` SET `orientation` = '4.5183' WHERE `guid` = '77648';
UPDATE `quest_template` SET `ReqSpellCast1`  = '0' WHERE entry = '10714';
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE entry = '22116';
INSERT INTO `creature_ai_scripts` VALUES (2211601, 22116, 8, 0, 100, 1, 38173, -1, 0, 0, 33, 22383, 6, 0, 12, 22460, 0, 30000, 0, 0, 0, 0, 'Whisped Sying Bunny Quest Credit');
INSERT IGNORE INTO `creature` VALUES
('',22116,530,1,0,0,3092.74,5842.04,-0.495,0.158,300,0,0,300,0,0,0),
('',22116,530,1,0,0,3196.34,5693.46,1.008,1.186,300,0,0,300,0,0,0),
('',22116,530,1,0,0,3280.92,5708.41,-4.017,2.054,300,0,0,300,0,0,0);
UPDATE `gameobject_template` SET `ScriptName` = 'go_beer_keg' WHERE `entry` IN (185214,185206,185213);
-- proper place for npc 23334
DELETE FROM `creature` WHERE `guid`= '86834';
DELETE FROM `creature` WHERE `id`= '23334';
INSERT INTO `creature` VALUES('86834',23334,530,1,0,0,2502.65,7360.94,380.350,5.112,300,0,0,6300,0,0,0);
