UPDATE `quest_template` SET `ReqSpellCast1`  = '30077' WHERE entry = '9472';
UPDATE `creature_template` SET `ScriptName` = 'npc_viera' WHERE `entry` = '17226';
UPDATE `gameobject` SET `position_x` = '-722.4406' WHERE `guid` = '99910';
UPDATE `gameobject` SET `position_y` = '4169.0483' WHERE `guid` = '99910';
UPDATE `gameobject` SET `position_z` = '50.5110' WHERE `guid` = '99910';
UPDATE `gameobject` SET `orientation` = '2.62837' WHERE `guid` = '99910';
UPDATE `gameobject` SET `rotation2` = '0.967255' WHERE `guid` = '99910';
UPDATE `gameobject` SET `rotation3` = '0.253806' WHERE `guid` = '99910';

DELETE FROM `script_waypoint` WHERE `entry`=17226;
INSERT INTO `script_waypoint` VALUES
   (17226,0,-655.547058,4143.314941,64.377,0, ''),
   (17226,1,-658.307129,4147.493164,64.173,0, ''),
   (17226,2,-659.748535,4147.736816,64.156,0, ''),
   (17226,3,-677.019104,4146.295898,64.312,0, ''),
   (17226,4,-682.159973,4149.140137,63.751,0, ''),
   (17226,5,-688.771118,4166.197754,58.815,0, ''),
   (17226,6,-696.384521,4179.052246,57.718,0, ''),
   (17226,7,-703.522888,4181.953125,57.396,0, ''),
   (17226,8,-712.611572,4183.827637,53.768,0, ''),
   (17226,9,-722.440674,4169.048340,50.511,0, ''),
   (17226,10,-736.057312,4102.391602,45.474,0, '');

INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
 (-1900172,'I can\'t wait to try this wine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_VIERA1'),
 (-1900173,'What ... is happening... to me? Get this cat away from me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_VIERA2');
