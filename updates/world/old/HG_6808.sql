DELETE FROM `event_scripts` WHERE `id` = '11424';
INSERT INTO `event_scripts` VALUES (11424, 1, 9, 6781, 60, 0, 0, 0, 0, 0);
INSERT INTO `event_scripts` VALUES (11424, 5, 10, 18152, 60000, 0, 1176.53, 8130.83, 20.13, 1.86);
UPDATE `creature_template` SET `ScriptName` = 'npc_baby_murloc' WHERE entry = '18152';
UPDATE `quest_template` SET `EndText`  = 'Release Murlocs at Daggerfen Village' WHERE entry = '9816';
