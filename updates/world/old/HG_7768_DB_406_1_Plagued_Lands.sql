-- http://www.wowhead.com/quest=2118/plagued-lands
-- deleting old scripts
DELETE FROM `creature_ai_scripts` WHERE (`entryOrGUID`='2164');
-- cast for npc
INSERT INTO `creature_ai_scripts` VALUES ('216451', '2164', '0', '0', '100', '0', '2000', '5000', '0', '0', '11', '3150', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rabid Thistle Bear - cast rabies 1 time');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '2164';
-- script for quest
INSERT INTO `creature_ai_scripts` VALUES ('216452', '2164', '6', '0', '100', '0', '0', '0', '0', '0', '33', '11836', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rabid Thistle Bear quest complete on kill');
-- remove spell cast requirement - casting spell doesn't help and you can't complete after killed bear
UPDATE `quest_template` SET `ReqSpellCast1`='0' WHERE (`entry`='2118');
-- How quest should work. Our gameobject doesn't work,so I used easier method.
/*
 Next, you don't need to do any damage to the bear at all. Once you see one, get close enough to the bear to aggro it. As it is running at you, use your trap. It puts a pinkish light on the ground. Make sure the bear goes into the light. Once it does, your qeust is complete, and the bear turns friendly; i.e. green.
 At this point, I'm not sure about anything else, but hearthing back to Auberdine (its a long walk back, or you were targeting the wrong bear; if you were close to Auberdine, you were not in the right area to find the right bear) is just fine. As stated, the quest is complete.
*/

