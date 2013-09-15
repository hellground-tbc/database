-- http://www.wowhead.com/quest=10873
-- block movement and attack of Netherweb Victim
UPDATE `creature_template` SET `unit_flags`='131076' WHERE (`entry`='22355');
-- delete old scripts
delete from creature_ai_scripts where entryOrGUID =22459;
delete from creature_ai_scripts where entryOrGUID =22355;
-- aggro of quest mob
INSERT INTO `creature_ai_scripts` VALUES ('2245952', '22459', '11', '0', '100', '0', '0', '0', '0', '0', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'reduce threat to zero');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '22459';
-- quest complete
INSERT INTO `creature_ai_scripts` VALUES ('2245951', '22459', '10', '0', '100', '0', '1', '1500', '0', '0', '33', '22459', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'complete on visial contact with player');
-- disabling old script
UPDATE `creature_template` SET `ScriptName`='' WHERE (`entry`='22355');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '22355';
-- spawn mobs
INSERT INTO `creature_ai_scripts` VALUES ('2235551', '22355', '6', '0', '50', '0', '0', '0', '0', '0', '12', '22459', '0', '15000', '0', '0', '0', '0', '0', '0', '0', '0', 'spawn freed sha tar warrior');
INSERT INTO `creature_ai_scripts` VALUES ('2235552', '22355', '6', '0', '35', '0', '0', '0', '0', '0', '12', '18470', '0', '10000', '0', '0', '0', '0', '0', '0', '0', '0', 'spawn bonelasher');
INSERT INTO `creature_ai_scripts` VALUES ('2235553', '22355', '6', '0', '40', '0', '0', '0', '0', '0', '12', '16805', '0', '10000', '0', '0', '0', '0', '0', '0', '0', '0', 'spawn broken skeleton');
INSERT INTO `creature_ai_scripts` VALUES ('2235554', '22355', '6', '0', '45', '0', '0', '0', '0', '0', '12', '21242', '0', '10000', '0', '0', '0', '0', '0', '0', '0', '0', 'spawn Auchenai Death-Speaker');
