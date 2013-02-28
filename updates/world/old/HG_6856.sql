UPDATE `creature_template` SET `ScriptName` = 'npc_drijya' WHERE `entry` = '20281';
UPDATE `creature_template` SET `MovementType` = '0' WHERE `entry` = '20281';
UPDATE `creature` SET `MovementType` = '0' WHERE `guid` = '72042';
UPDATE `creature_template` SET `faction_A` = '16' WHERE `entry` = '20399';
UPDATE `creature_template` SET `faction_H` = '16' WHERE `entry` = '20399';
UPDATE `creature_template` SET `faction_A` = '16' WHERE `entry` = '20402';
UPDATE `creature_template` SET `faction_H` = '16' WHERE `entry` = '20402';
UPDATE `creature_template` SET `faction_A` = '16' WHERE `entry` = '20403';
UPDATE `creature_template` SET `faction_H` = '16' WHERE `entry` = '20403';


DELETE FROM `script_waypoint` WHERE `entry`=20281;
INSERT INTO `script_waypoint` VALUES

   (20281,0,3096.416,2801.408,118.149,10000, ''),
   (20281,1,3096.516,2801.065,118.128,0, ''),
   (20281,2,3099.995,2796.665,118.118,0, ''),
   (20281,3,3098.759,2786.174,117.125,0, ''),
   (20281,4,3087.792,2754.602,115.441,0, ''),
   (20281,5,3080.718,2730.793,115.930,9000, ''),
   (20281,6,3060.235,2731.306,115.122,0, ''),
   (20281,7,3050.863,2727.388,114.054,0, ''),
   (20281,8,3052.113,2728.104,114.032,8000, ''),
   (20281,9,3055.008,2724.972,113.687,0, ''),
   (20281,10,3053.777,2718.427,113.684,0, ''),
   (20281,11,3028.622,2693.375,114.670,0, ''),
   (20281,12,3022.430,2695.297,113.406,0, ''),
   (20281,13,3024.591,2694.684,114.164,8000, ''),
   (20281,14,3025.463,2700.755,113.514,0, ''),
   (20281,15,3011.336,2716.782,113.691,0, ''),
   (20281,16,3010.882,2726.991,114.239,0, ''),
   (20281,17,3009.178,2729.083,114.324,0, ''),
   (20281,18,3011.358,2727.707,114.235,25000, ''),
   (20281,19,3012.583,2728.452,114.211,0, ''),
   (20281,20,3033.888,2736.437,114.369,0, ''),
   (20281,21,3071.492,2741.502,116.462,0, ''),
   (20281,22,3087.792,2754.602,115.441,0, ''),
   (20281,23,3094.505,2770.198,115.744,0, ''),
   (20281,24,3103.510,2784.362,116.857,0, ''),
   (20281,25,3099.995,2796.665,118.118,0, ''),
   (20281,26,3096.290,2801.027,118.096,0, '');



INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
 (-1900156,'Very well. Before we head down there, take a moment to prepare yourself.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'DRIJYA1'),
 (-1900157,'Let\'s proceed at a brisk pace.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'DRIJYA2'),
 (-1900158,'We\'ll start at that first energy pylon, straight ahead. Remember, try to keep them off of me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'DRIJYA3'),
 (-1900159,'Keep them off me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'DRIJYA4'),
 (-1900160,'I\'m done with this pylon. On to the next.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'DRIJYA5'),
 (-1900161,'Alright, pylon two down. Now for the heat manifold.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'DRIJYA6'),
 (-1900162,'That should do it. The teleporter should blow any second now !',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'DRIJYA7'),
 (-1900163,'Ok, let\'s get out of here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'DRIJYA8'),
 (-1900164,'Thank you, $n! I couldn\'t have done it without you. You\'ll let Gahruj know?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'DRIJYA9');

