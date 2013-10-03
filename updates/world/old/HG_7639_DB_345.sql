-- http://www.wowwiki.com/Quest:Melding_of_Influences
-- http://www.wowhead.com/npc=6557 
-- cast for quest complete
INSERT INTO `creature_ai_scripts` VALUES ('655751', '6557', '8', '0', '100', '0', '16031', '-1', '0', '0', '36', '9621', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'primal ooze -morph in quest mob');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '6557';
-- cast clone
INSERT INTO `creature_ai_scripts` VALUES ('655752', '6557', '2', '0', '100', '0', '15', '0', '0', '0', '11', '14146', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Primal ooze - making clone ');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '6557';
-- despawn of summoned little monste,which we don't need for quest
INSERT INTO `creature_ai_scripts` VALUES ('1029051', '10290', '10', '0', '100', '0', '1', '200', '0', '0', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'self destruction');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '10290';

 