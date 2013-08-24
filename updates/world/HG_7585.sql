DELETE FROM `creature_ai_scripts` WHERE `id` = 2088605;
INSERT INTO `creature_ai_scripts` VALUES
(2088605, 20886, 0, 0, 100, 7, 25500, 25500, 35000, 35000, 12, 20978, 0, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrath-Scryer Soccothrates - Felfire Line Up')
UPDATE `creature_template` SET `ScriptName` = 'npc_felfire_wave' WHERE `entry` = '20978';
UPDATE `creature_template` SET `unit_flags` = '33554432' WHERE `entry` = '21625';
UPDATE `creature_template` SET `flags_extra` = '130' WHERE `entry` = '21625';
UPDATE `creature_ai_scripts` SET `event_chance` = '100' WHERE `id` = '2088505';
UPDATE `creature_ai_scripts` SET `event_chance` = '85' WHERE `id` = '2088506';
DELETE FROM `creature` WHERE `guid` = 15538220;
UPDATE `creature_ai_scripts` SET `event_flags` = '5' WHERE `id` = '2090004';
INSERT INTO `creature_ai_scripts` VALUES
(2089801, 20898, 4, 0, 100, 3, 0, 0, 0, 0, 11, 38855, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gargantuan Abyssal(Normal) - Cast Fire Shield on Aggro'),
(2089802, 20898, 4, 0, 100, 5, 0, 0, 0, 0, 11, 38901, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gargantuan Abyssal(Heroic) - Cast Fire Shield on Aggro'),
(2089803, 20898, 0, 0, 100, 3, 9000, 13000, 19000, 24000, 11, 36837, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Gargantuan Abyssal(Normal) - Cast Meteor'),
(2089804, 20898, 0, 0, 100, 5, 9000, 13000, 19000, 24000, 11, 38903, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Gargantuan Abyssal(Heroic) - Cast Meteor');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '20898';
INSERT INTO `creature_ai_scripts` VALUES
(2090204, 20902, 0, 0, 100, 3, 9000, 13000, 19000, 24000, 11, 36829, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sargeron Hellcaller(Normal) - Cast Hell Rain'),
(2090205, 20902, 0, 0, 100, 5, 9000, 13000, 19000, 24000, 11, 38917, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sargeron Hellcaller(Heroic) - Cast Hell Rain');
UPDATE `creature_ai_scripts` SET `event_flags` = '3' WHERE `id` = '2090504';
UPDATE `creature_ai_scripts` SET `event_flags` = '5' WHERE `id` = '2090505';
UPDATE `creature_ai_scripts` SET `event_flags` = '5' WHERE `id` = '2090505';
UPDATE `creature_ai_scripts` SET `action1_param2` = '1' WHERE `id` = 2090504;
INSERT INTO `creature_ai_scripts` VALUES
(2090905, 20909, 0, 0, 100, 3, 4500, 4500, 12000, 15000, 11, 36987, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sulfuron Magma-Thrower(Normal) - Cast Shadow Bolt'),
(2090906, 20909, 0, 0, 100, 5, 2000, 2000, 10000, 16000, 11, 39026, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sulfuron Magma-Thrower(Heroic) - Cast Shadow Bolt'),
(2090907, 20909, 0, 0, 100, 3, 9000, 13000, 19000, 24000, 11, 19717, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sulfuron Magma-Thrower(Normal) - Cast Rain of Fire'),
(2090908, 20909, 0, 0, 100, 5, 9000, 13000, 19000, 24000, 11, 39024, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sulfuron Magma-Thrower(Heroic) - Cast Rain of Fire');
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = '20886';
DELETE FROM `creature_ai_scripts` WHERE `id` = 2088601;
INSERT INTO `creature_ai_scripts` VALUES
(2088601, 20886, 4, 0, 100, 3, 0, 0, 0, 0, 11, 36051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrath-Scryer Soccothrates(Normal) - Fel Immolation on Aggro'),
(2088616, 20886, 4, 0, 100, 5, 0, 0, 0, 0, 11, 39007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrath-Scryer Soccothrates(Heroic) - Immolation on Aggro');
UPDATE `creature_ai_scripts` SET `action2_type` = '41' WHERE `id` IN (2090503,2090603,2090803,2090903,2091003,2091103);
UPDATE `creature_template` SET `unit_flags` = '0' WHERE `entry` IN (21466,21467,20912,21599,21600,21601,20977,21602);
UPDATE `creature_template` SET `minhealth` = '147600' WHERE `entry` IN (21466,21467,20912);
UPDATE `creature_template` SET `maxhealth` = '147600' WHERE `entry` IN (21466,21467,20912);
UPDATE `creature_template` SET `minhealth` = '195000' WHERE `entry` IN (21600,21601,21599);
UPDATE `creature_template` SET `maxhealth` = '195000' WHERE `entry` IN (21600,21601,21599);
UPDATE `creature_template` SET `minhealth` = '41000' WHERE `entry` = 21602;
UPDATE `creature_template` SET `maxhealth` = '41000' WHERE `entry` = 21602;
