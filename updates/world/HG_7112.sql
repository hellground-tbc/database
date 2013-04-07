UPDATE `creature_template` SET `flags_extra` = '130' WHERE `entry` IN (23322,23327);
UPDATE `creature_template` SET `ScriptName` = 'npc_banishing_crystal' WHERE `entry` = '23327';
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE entry IN (23322,22254,20557,22392,22291,22195,22204,19973,22298,22327);
INSERT INTO `creature_ai_scripts` VALUES (2332201,23322,11,0,100,1,0,0,0,0,11,40849,0,1,0,0,0,0,0,0,0,0,'Banishing Crystal Bunny 01 - Banishment Beam Periodic Aura on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (2225422, 22254, 6, 0, 100, 0, 0, 0, 0, 0, 11, 40828, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Banished - Cast Credit on Master on Death');
INSERT INTO `creature_ai_scripts` VALUES (2055722, 20557, 6, 0, 100, 0, 0, 0, 0, 0, 11, 40828, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Banished - Cast Credit on Master on Death');
INSERT INTO `creature_ai_scripts` VALUES (2239222, 22392, 6, 0, 100, 0, 0, 0, 0, 0, 11, 40828, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Banished - Cast Credit on Master on Death');
INSERT INTO `creature_ai_scripts` VALUES (2229122, 22291, 6, 0, 100, 0, 0, 0, 0, 0, 11, 40828, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Banished - Cast Credit on Master on Death');
INSERT INTO `creature_ai_scripts` VALUES (2219522, 22195, 6, 0, 100, 0, 0, 0, 0, 0, 11, 40828, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Banished - Cast Credit on Master on Death');
INSERT INTO `creature_ai_scripts` VALUES (2220422, 22204, 6, 0, 100, 0, 0, 0, 0, 0, 11, 40828, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Banished - Cast Credit on Master on Death');
INSERT INTO `creature_ai_scripts` VALUES (1997322, 19973, 6, 0, 100, 0, 0, 0, 0, 0, 11, 40828, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Banished - Cast Credit on Master on Death');
INSERT INTO `creature_ai_scripts` VALUES (2229822, 22298, 6, 0, 100, 0, 0, 0, 0, 0, 11, 40828, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Banished - Cast Credit on Master on Death');
INSERT INTO `creature_ai_scripts` VALUES (2232722, 22327, 6, 0, 100, 0, 0, 0, 0, 0, 11, 40828, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Banished - Cast Credit on Master on Death');
DELETE FROM `spell_script_target` WHERE `entry` IN (40828,40825,40830);
INSERT INTO `spell_script_target` VALUES
(40828,1,23327),
(40825,1,16842),
(40830,1,22254),
(40830,1,20557),
(40830,1,22392),
(40830,1,22291),
(40830,1,22195),
(40830,1,22204),
(40830,1,19973),
(40830,1,22298),
(40830,1,22327);
