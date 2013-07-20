UPDATE `creature_template` SET `ScriptName` = 'npc_trader_marid' WHERE `entry` = '20071';
DELETE FROM `script_waypoint` WHERE `entry`=20071;
INSERT INTO `script_waypoint` VALUES
   (20071,0,4285.49,2238.60,124.06,0, ''),
   (20071,1,4281.93,2263.11,124.58,0, ''),
   (20071,2,4275.60,2264.85,126.08,0, ''),
   (20071,3,4266.70,2258.66,128.85,0, ''),
   (20071,4,4258.08,2250.18,132.08,0, ''),
   (20071,5,4242.46,2250.25,139.14,0, ''),
   (20071,6,4229.95,2248.74,141.43,10000, '');

INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
 (-1900223,'Let us hold our discussion in a more … private place. Follow me. You didn’t really think I’d do business with you again, did you? Sometimes, the best way to return to profitability is to know when to cut your losses.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_MARID'),
 (-1900224,'If you hear this whipser, you\'re dying!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,'SAY_MARID');
