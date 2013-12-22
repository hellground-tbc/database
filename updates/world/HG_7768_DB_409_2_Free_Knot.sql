-- http://www.wowhead.com/quest=7429 Problem - it is only one quest which give 4 reputation rewards at once AND repeatable. So players can farm reputation with cartel very fast.
-- Another problem is 0.5 spillover rep rate. Each faction get 0.5 bonus for other faction. Result: 350(basic) +3*175(bonus from other 3 factions)=875 rep for 4 factions at once for quite easy farmable quest.
-- So,because it is only one repeatable quest which can give so huge boost,I decided to change only him - not spillover table.  140 +3*75=350 - that's what we should get officially,but no bonuses for other factions.
UPDATE `quest_template` SET `RewRepValue1`='140', `RewRepValue2`='140', `RewRepValue3`='140', `RewRepValue4`='140' WHERE (`entry`='7429');
UPDATE `quest_template` SET `QuestFlags`='0', `CompleteScript`='7429' WHERE entry in(5525,7429);
delete from quest_end_scripts  WHERE id in(5525,7429);
-- Script for phrase
INSERT INTO `quest_end_scripts` (`id`,`delay`,`command`, `dataint`) VALUES ('7429','0', '0', '2000000077');
delete from db_script_string where entry=2000000077;
INSERT INTO `db_script_string` (`entry`, `content_default`) VALUES ('2000000077', '$N,I\'ll make make sure all my friends in the Cartel know what you\'ve saved my life today.Here - I\'m going to need to be able to travel light,so please help yourself to my cache of tailoring and leatherworking supplies! Thanks again - see ya!');
-- This script make npc to run in textures, so players will need to reset dungeon to complete quest again.
INSERT INTO `quest_end_scripts` (`id`,`delay`,`command`,`datalong2`, `x`, `y`,`z`,`o`) VALUES ('7429','10','3','1', ' 1.98', '585.15','-4.50','0.73');  
-- Script will spawn reward box with recipes.
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES ('7429', '2', '9', '35831', '180');
UPDATE `gameobject` SET `position_x`='583.922', `position_y`='594.643', `position_z`='-4.754', `orientation`='0.527',`spawntimesecs`='-7200' WHERE (`id`='179501');
-- This will add chain ball. Sad,but there is no script for despawn.
delete from gameobject  where id=179511;
INSERT INTO `gameobject` VALUES ('799', '179511', '429', '1', '591.272', '599.75', '-4.75475', '4.16225', '0', '0', '0.872583', '-0.488466', '0', '0', '1');