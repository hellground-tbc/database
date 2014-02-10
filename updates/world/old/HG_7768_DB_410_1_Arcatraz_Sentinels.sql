-- http://www.wowhead.com/npc=20869  http://www.wowwiki.com/Arcatraz_Sentinel 
-- disable c++ script arcatraz_sentinel
UPDATE `creature_template` SET `ScriptName`='' WHERE (`entry`='20869');

-- Difference between c++ script and my changes
/*
Added: Different Explode spells for both difficulty, ability to reduce threat, taunt immune, quest http://www.wowhead.com/quest=11389 is now completable(with this script he wasn't)
Minuses: Need to add 2 extra npc to creature template,because can't change back visual appearance of npc on aggro with EventAI, also can't set health of npc on aggro - only change maximum
*/

-- Spells
/*
http://letswow.ru/wowhead/?spell=36716 
http://letswow.ru/wowhead/?spell=38828 
http://letswow.ru/wowhead/?spell=36719 
http://letswow.ru/wowhead/?spell=38830 
*/

-- Casts (Health percent for Explode is 12,but not 5 as mentioned in Wiki, because I changed their max health)
UPDATE `creature_template` SET `ScriptName`='' WHERE (`entry`='20869');
delete from creature_ai_scripts where EntryOrGuid=20869;
INSERT INTO `creature_ai_scripts` VALUES ('2086951', '20869', '1', '0', '100', '2', '500', '500', '0', '0', '11', '36716', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcatraz Sentinel casts Energy Discharge normal');
INSERT INTO `creature_ai_scripts` VALUES ('2086952', '20869', '1', '0', '100', '4', '500', '500', '0', '0', '11', '38828', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcatraz Sentinel casts Energy Discharge heroic');
INSERT INTO `creature_ai_scripts` VALUES ('2086953', '20869', '2', '0', '100', '2', '12', '0', '0', '0', '11', '36719', '0', '2', '18', '2', '0', '0', '0', '0', '0', '0', 'Arcatraz Sentinel casts Explode normal');
INSERT INTO `creature_ai_scripts` VALUES ('2086954', '20869', '2', '0', '100', '4', '12', '0', '0', '0', '11', '38830', '0', '2', '18', '2', '0', '0', '0', '0', '0', '0', 'Arcatraz Sentinel casts Explode heroic');
INSERT INTO `creature_ai_scripts` VALUES ('2086955', '20869', '0', '0', '100', '7', '5000', '10000', '10000', '15000', '14', '-100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcatraz Sentinel Threat wipe for whole group ');
INSERT INTO `creature_ai_scripts` VALUES ('2086956', '20869', '4', '0', '100', '2', '0', '0', '0', '0', '36', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'morph normal');
INSERT INTO `creature_ai_scripts` VALUES ('2086957', '20869', '4', '0', '100', '4', '0', '0', '0', '0', '36', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'morph heroic');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '20869';

-- This will make creature appear dead. 
UPDATE `creature_template` SET `dynamicflags`='32' WHERE entry in(20869,21586);

--  Creating 2 copy of npc for normal and heroic version, health is 40% of basic normal/heroic version, added killcredit for quest mentioned above ,added flags_extra='4259841' for Taunt immune - taken from Gurtog without bind to instance.
INSERT INTO `creature_template` VALUES ('4', '0', '20869 ', '19971', '0', '19971', '0', 'Arcatraz Sentinel', '', '', '70', '70', '46100', '46100', '0', '0', '6792', '1', '14', '14', '0', '1.71', '1', '1', '651', '1331', '0', '10401', '1435', '1684', '1024', '0', '0', '0', '0', '0', '0', '398.087', '549.877', '100', '9', '0', '20869', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', '4791', '6261', 'EventAI', '1', '3', '0', '1', '0', '0', '4259840', '');
INSERT INTO `creature_template` VALUES ('5', '0','20869 ' , '19971', '0', '19971', '0', 'Arcatraz Sentinel', '', '', '70', '70', '64900', '64900', '0', '0', '6792', '1', '14', '14', '0', '1.71', '1', '1', '651', '1331', '0', '10401', '1435', '1684', '1024', '0', '0', '0', '0', '0', '0', '398.087', '549.877', '100', '9', '0', '20869', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', '4791', '6261', 'EventAI', '1', '3', '0', '1', '0', '0', '4259840', '');
-- Delete extra sixth npc - only 5 should be in dungeon
delete from creature where id=20869 and guid>100000;