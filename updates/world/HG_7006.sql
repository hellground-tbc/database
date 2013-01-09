UPDATE `creature_template` SET `MovementType` = '0' WHERE `entry` = '21025';
UPDATE `creature` SET `MovementType` = '0' WHERE `guid` = '73835';
UPDATE `creature` SET `position_x` = '2809.86' WHERE `guid` = '73835';
UPDATE `creature` SET `position_y` = '5250.39' WHERE `guid` = '73835';
UPDATE `creature` SET `position_z` = '273.46' WHERE `guid` = '73835';
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` = '21025';
UPDATE `creature_template` SET `ScriptName` = 'npc_razaan_event' WHERE `entry` = '21025';
UPDATE `creature_template` SET `ScriptName` = 'npc_razaani_raider' WHERE `entry` = '20601';
DELETE FROM `creature` WHERE `id`= '21057';
DELETE FROM `creature` WHERE `id`= '20845';

INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
 (-1900225,'Who dares to interrupt my operations?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'YELL_RAZAAN');
