-- http://www.wowhead.com/npc=15552  http://www.wowwiki.com/Doctor_Weavil
-- Placing him on bed - before he was lying under it.
UPDATE `creature` SET `position_x`='-2633.31', `position_y`='-5061.95', `position_z`='34.538' WHERE (`guid`='18614');
-- Casts
delete from creature_ai_scripts where entryOrGUID=15552;
INSERT INTO `creature_ai_scripts` VALUES ('1555251', '15552', '0', '0', '100', '1', '15000', '15000', '121000', '121000', '11', '25772', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Doctor Weavil casts Mental Domination');
INSERT INTO `creature_ai_scripts` VALUES ('1555252', '15552', '0', '0', '100', '1', '20000', '25000', '25000', '30000', '11', '25774', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Doctor Weavil casts Mind Shatter');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '15552';
