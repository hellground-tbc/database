-- http://www.wowwiki.com/Bloodsail_Mage  
-- This npc sometimes just stop casting fireballs with no reason,so I just made new scripts.
delete from creature_ai_scripts where entryOrGUID=1562;
INSERT INTO `creature_ai_scripts` VALUES ('156251', '1562', '4', '0', '100', '0', '0', '0', '0', '0', '11', '2601', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodsail Mage casts Fire Shield III on aggro');
INSERT INTO `creature_ai_scripts` VALUES ('156252', '1562', '0', '0', '100', '1', '30000', '30000', '30000', '30000', '11', '2601', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodsail Mage recasts Fire Shield III every 30 seconds');
INSERT INTO `creature_ai_scripts` VALUES ('156253', '1562', '0', '0', '100', '1', '1000', '1500', '3000', '3250', '11', '20823', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodsail Mage casts Fireball');
INSERT INTO `creature_ai_scripts` VALUES ('156254', '1562', '2', '0', '100', '0', '15', '0', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', '0', '0', '0', '0', 'Bloodsail Mage run from battle on low hp');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '1562';