UPDATE `creature_template` SET `ScriptName` = 'npc_captive_child' WHERE entry = '22314';
UPDATE `gameobject_template` SET `ScriptName`='go_veil_skith_cage' WHERE `entry` IN (185202,185203,185204,185205);
UPDATE `gameobject_template` SET `data2`='296608' WHERE `entry` IN (185202,185203,185204,185205);
UPDATE `quest_template` SET `ReqCreatureOrGOId1`  = '22314' WHERE entry = '10852';

INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(-1900174,'Yay! We\'re free!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_CHILD1'),
(-1900175,'Woot!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_CHILD2'),
(-1900176,'I think those weird bird guys were going to eat us. Gross!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_CHILD3'),
(-1900177,'Yay! We love you! You saved us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_CHILD4'),
(-1900178,'Gross!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_CHILD5');
