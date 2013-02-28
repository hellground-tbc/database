DELETE FROM `event_scripts` WHERE `id` = '14536';
INSERT INTO `event_scripts` VALUES (14536, 4, 10, 21514, 3000000, 0, 3650.40, 7166.05, 142.14, 2.24);
DELETE FROM `event_scripts` WHERE `id` IN ('14400');
INSERT INTO `event_scripts` VALUES (14400, 0, 10, 10204, 60000, 0, 3605.5, 7186.44, 141.12, 5.36);
INSERT INTO `event_scripts` VALUES (14400, 2, 10, 21514, 3000000, 0, 3650.40, 7166.05, 142.14, 2.24);
UPDATE `creature_template` SET `faction_H` = '35' WHERE entry = '10204';
UPDATE `creature_template` SET `ScriptName` = 'npc_gargrom' WHERE `entry` = '21514';
DELETE FROM `gameobject_template` WHERE `entry`= '185232';
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`castBarCaption`,`faction`,`flags`,`size`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,
`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`ScriptName`) VALUES
(185232,8,0,'TEMP Gorgrom''s Corpse','',35,0,1,1450,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE `quest_template` SET `ReqSpellCast1` = '0' WHERE `entry` IN (10723,10802);
