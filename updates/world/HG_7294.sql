DELETE FROM `spell_script_target` WHERE `entry` = 30735;
INSERT INTO `spell_script_target` VALUES
(30735,1,17083);
UPDATE `creature_template` SET `unit_flags` = '131072' WHERE entry = 17471;
DELETE FROM `creature` WHERE `guid` IN (32794,59476,19858);
UPDATE `gameobject_template` SET `flags` = '4' WHERE `entry` IN (182539,182540);
UPDATE `gameobject` SET `spawnMask` = '3' WHERE `id` IN (182539,182540);
UPDATE `creature` SET `spawnMask` = '1' WHERE `guid` = 62921;
DELETE FROM `areatrigger_scripts` WHERE `entry`= 4524;
INSERT INTO `areatrigger_scripts` VALUES
(4524,'at_shattered_halls');
UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` = '17296';
UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` = '17290';
DELETE FROM `creature` WHERE `id` = 17301;
UPDATE `creature` SET `position_x` = '228.721' WHERE `guid` = 3666851;
UPDATE `creature` SET `position_y` = '-84.8559' WHERE `guid` = 3666851;
UPDATE `creature` SET `position_z` = '4.94013' WHERE `guid` = 3666851;
UPDATE `creature` SET `orientation` = '0.0086298' WHERE `guid` = 3666851;
UPDATE `creature` SET `position_x` = '191.392' WHERE `guid` = 86466;
UPDATE `creature` SET `position_y` = '-79.1137' WHERE `guid` = 86466;
UPDATE `creature` SET `position_z` = '2.67853' WHERE `guid` = 86466;
INSERT INTO script_texts VALUES
(-1540042,'Ours is the true Horde! The only Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10323,1,0,0,'kargath SAY_AGGRO1'),
(-1540043,'I\'ll carve the meat from your bones!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10324,1,0,0,'kargath SAY_AGGRO2'),
(-1540044,'I am called Bladefist for a reason, as you will see!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10325,1,0,0,'kargath SAY_AGGRO3'),
(-1540045,'For the real Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10326,1,0,0,'kargath SAY_SLAY1'),
(-1540046,'I am the only Warchief!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10327,1,0,0,'kargath SAY_SLAY2'),
(-1540047,'The true Horde... will.. prevail...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10328,1,0,0,'kargath SAY_DEATH');
UPDATE `creature` SET `spawntimesecs` = '25' WHERE `id` = '6492';
