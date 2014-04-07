-- shadow lab
DELETE FROM `spell_script_target` WHERE `entry` IN (32958);
INSERT INTO `spell_script_target` VALUES (32958,1,21159);
UPDATE `creature_template` SET `unit_flags` = '4' WHERE `entry` = '21159';
UPDATE `creature_template` SET `flags_extra` = '130' WHERE `entry` = '21159';

-- arca
UPDATE `creature_template` SET `ScriptName` = 'arcatraz_sentinel' WHERE `entry` = '20869';
UPDATE `creature_template` SET `ScriptName` = 'warder_corpse' WHERE `entry` = '21304';
UPDATE `creature` SET `id` = '21304' WHERE `id` = '21395';
UPDATE `creature` SET `curhealth` = '16200' WHERE `id` = '21304';
UPDATE `creature_template` SET `minhealth` = '16200' WHERE `entry` = 21304;
UPDATE `creature_template` SET `maxhealth` = '16200' WHERE `entry` = 21304;
UPDATE `creature_template` SET `minhealth` = '22227' WHERE `entry` = 21623;
UPDATE `creature_template` SET `maxhealth` = '22227' WHERE `entry` = 21623;
DELETE FROM `creature_template_addon` WHERE `entry` IN (21304,21623);
DELETE FROM `creature` WHERE `id` = 21761;
DELETE FROM `creature_template_addon` WHERE `entry` = 21761;
DELETE FROM `creature_template_addon` WHERE `entry` = 20879;
INSERT INTO `creature_template_addon` VALUES
(20879, 0, 0, 512, 0, 4097, 0, 0, '36784 0');
INSERT INTO `creature_ai_scripts` VALUES
(2087901, 20879, 0, 0, 100, 7, 4500, 4500, 22000, 25000, 11, 36778, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Eredar Soul-Eater - Soul Steal'),
(2087902, 20879, 0, 0, 100, 3, 9000, 13000, 19000, 24000, 11, 36786, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Eredar Soul-Eater(Normal) - Soul Chill'),
(2087903, 20879, 0, 0, 100, 5, 9000, 13000, 19000, 24000, 11, 38843, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Eredar Soul-Eater(Heroic) - Soul Chill');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '20879';

-- underbog
UPDATE `creature_template` SET `modelid_A` = '18722' WHERE `entry` = '20175';
UPDATE `creature_template` SET `modelid_H` = '18722' WHERE `entry` = '20175';
