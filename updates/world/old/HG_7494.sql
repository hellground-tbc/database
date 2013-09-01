UPDATE `creature_template` SET `ScriptName` = 'npc_tracker' WHERE `entry` = 17853;
DELETE FROM creature WHERE id = 17853;
DELETE FROM creature WHERE id = 17926;
INSERT INTO `creature` VALUES
(86574, 17926, 530, 1, 0, 0, -1755.10, -11062.25, 76.9759, 4.37208, 300, 0, 0, 213, 408, 0, 0);
INSERT INTO `script_texts` VALUES
 (-1900255,'We\'ve got you now. Matis the Cruel!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_TRACK'),
 (-1900256,'Return to Kuros. I will bring him to Blood Watch.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_TRACK1');
