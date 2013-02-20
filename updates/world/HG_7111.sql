#DELETE FROM `game_event` WHERE `entry`= '137';
INSERT INTO `game_event` VALUES (137, '2013-02-17 00:00:00', '2020-12-31 00:00:00', 120, 35, 'Assault on Bash''ir Landing!', 0);
INSERT INTO `game_event_creature` VALUES (78336, 137);
UPDATE `creature_template` SET `flags_extra` = '130' WHERE entry = '23395';
DELETE FROM `creature` WHERE `guid`= '78336';
INSERT INTO `creature` VALUES('78336',23395,530,1,0,0,4023.64,5897.74,267.87,5.112,300,0,0,25,0,0,0);
UPDATE `creature_template` SET `ScriptName` = 'npc_bashir_landing' WHERE `entry` = '23395';
UPDATE `gameobject` SET `position_x` = '4019.76' WHERE `id` = '185921';
UPDATE `gameobject` SET `position_y` = '5894.79' WHERE `id` = '185921';
UPDATE `gameobject` SET `position_z` = '267.872' WHERE `id` = '185921';
UPDATE `creature_template` SET `modelid_A` = '21499' WHERE `entry` = '23243';
UPDATE `creature_template` SET `modelid_H` = '21499' WHERE `entry` = '23243';
UPDATE `creature_template` SET `modelid_A` = '21500' WHERE `entry` = '23244';
UPDATE `creature_template` SET `modelid_H` = '21500' WHERE `entry` = '23244';
UPDATE `creature_template` SET `modelid_A` = '21501' WHERE `entry` = '23245';
UPDATE `creature_template` SET `modelid_H` = '21501' WHERE `entry` = '23245';
UPDATE `creature_template` SET `unit_flags` = '4' WHERE `entry` = '23250';
UPDATE `creature_template` SET `faction_A` = '91' WHERE `entry` IN (20860,23249,23247,23368,23390,23414,23333,23332,23250);
UPDATE `creature_template` SET `faction_H` = '91' WHERE `entry` IN (20860,23249,23247,23368,23390,23414,23333,23332,23250);
UPDATE `creature_template` SET `flags_extra` = '0' WHERE `entry` IN (20860,23249,23247,23368,23390,23414,23333,23332,23250);
UPDATE `creature_template` SET `minhealth` = '6986' WHERE entry = 23246;
UPDATE `creature_template` SET `maxhealth` = '6986' WHERE entry = 23246;
UPDATE `creature_template` SET `faction_A` = '16' WHERE `entry` = 23246;
UPDATE `creature_template` SET `faction_H` = '16' WHERE `entry` = 23246;
UPDATE `creature_template` SET `mindmg` = '50' WHERE entry = 23246;
UPDATE `creature_template` SET `maxdmg` = '103' WHERE entry = 23246;
UPDATE `creature_template` SET `attackpower` = '1602' WHERE entry = 23246;
UPDATE `creature_template` SET `baseattacktime` = '0' WHERE entry = 23246;
UPDATE `creature_template` SET `minlevel` = '70' WHERE entry = 23246;
UPDATE `creature_template` SET `maxlevel` = '70' WHERE entry = 23246;
UPDATE `creature_template` SET `armor` = '6792' WHERE entry = 23246;
UPDATE `creature_template` SET `flags_extra` = '0' WHERE `entry` = 23246;
UPDATE `creature_template` SET `minhealth` = '54790' WHERE entry = 23241;
UPDATE `creature_template` SET `maxhealth` = '54790' WHERE entry = 23241;
UPDATE `creature_template` SET `minhealth` = '20958' WHERE entry IN (23430,23242);
UPDATE `creature_template` SET `maxhealth` = '20958' WHERE entry IN (23430,23242);
UPDATE `creature_template` SET `minmana` = '3155' WHERE `entry` IN (23430,23242);
UPDATE `creature_template` SET `maxmana` = '3155' WHERE `entry` IN (23430,23242);
UPDATE `creature_template` SET `faction_A` = '1870' WHERE `entry` IN (23430,23242,23241);
UPDATE `creature_template` SET `faction_H` = '1870' WHERE `entry` IN (23430,23242,23241);
UPDATE `creature_template` SET `mindmg` = '91' WHERE entry IN (23430,23242,23241);
UPDATE `creature_template` SET `maxdmg` = '194' WHERE entry IN (23430,23242,23241);
UPDATE `creature_template` SET `mindmg` = '191' WHERE entry = 23241;
UPDATE `creature_template` SET `maxdmg` = '294' WHERE entry = 23241;
UPDATE `creature_template` SET `attackpower` = '2598' WHERE entry IN (23430,23242,23241);
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry IN (23430,23242,23241);
UPDATE `creature_template` SET `minlevel` = '70' WHERE entry IN (23430,23242,23241);
UPDATE `creature_template` SET `maxlevel` = '70' WHERE entry IN (23430,23242,23241);
UPDATE `creature_template` SET `armor` = '5714' WHERE entry IN (23430,23242,23241);
UPDATE `creature_template` SET `flags_extra` = '0' WHERE `entry` IN (23430,23242,23241);
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` = '23333';
UPDATE `creature_template` SET `unit_flags` = '33554432' WHERE `entry` = '23333';
UPDATE `creature_template` SET `minhealth` = '36900' WHERE entry = 23350;
UPDATE `creature_template` SET `maxhealth` = '36900' WHERE entry = 23350;
UPDATE `creature_template` SET `minmana` = '16545' WHERE `entry` = 23350;
UPDATE `creature_template` SET `maxmana` = '16545' WHERE `entry` = 23350;
UPDATE `creature_template` SET `faction_A` = '16' WHERE `entry` = 23350;
UPDATE `creature_template` SET `faction_H` = '16' WHERE `entry` = 23350;
UPDATE `creature_template` SET `mindmg` = '777' WHERE entry = 23350;
UPDATE `creature_template` SET `maxdmg` = '1589' WHERE entry = 23350;
UPDATE `creature_template` SET `attackpower` = '24843' WHERE entry = 23350;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 23350;
UPDATE `creature_template` SET `minlevel` = '72' WHERE entry = 23350;
UPDATE `creature_template` SET `maxlevel` = '72' WHERE entry = 23350;
UPDATE `creature_template` SET `armor` = '7387' WHERE entry = 23350;
UPDATE `creature_template` SET `rank` = '1' WHERE entry = 23350;
UPDATE `creature_template` SET `minhealth` = '28000' WHERE entry = 23250;
UPDATE `creature_template` SET `maxhealth` = '28000' WHERE entry = 23250;
UPDATE `creature_template` SET `minlevel` = '70' WHERE entry = 23250;
UPDATE `creature_template` SET `maxlevel` = '70' WHERE entry = 23250;
UPDATE `creature_template` SET `armor` = '6740' WHERE entry = 23250;
UPDATE `creature_template` SET `mindmg` = '330' WHERE entry = 23250;
UPDATE `creature_template` SET `maxdmg` = '377' WHERE entry = 23250;
UPDATE `creature_template` SET `attackpower` = '1530' WHERE entry = 23250;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 23250;
#14501
UPDATE `creature_template` SET `modelid_A` = '5187' WHERE `entry` = '23250';
UPDATE `creature_template` SET `modelid_H` = '5187' WHERE `entry` = '23250';
UPDATE `creature_template` SET `scale` = '4' WHERE `entry` = '23250';
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE entry = '23250';
INSERT INTO `creature_ai_scripts` VALUES (2325001, 23250, 0, 0, 100, 1, 0, 40, 2400, 3800, 11, 41302, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Disruptor Tower - Lightning');
INSERT INTO `creature_ai_scripts` VALUES (2325002, 23250, 0, 0, 100, 1, 2000, 5000, 7500, 9500, 11, 40799, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Disruptor Tower - Cast Disruptor Explosion');
DELETE FROM `creature_ai_scripts` WHERE `id` = '2311801';
INSERT INTO `creature_ai_scripts` VALUES (2311801,23118,11,0,100,1,0,0,0,0,11,40196,0,1,0,0,0,0,0,0,0,0,'Bombing Run Target Bunny - Mark on Spawn');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE entry = '23241';
INSERT INTO `creature_ai_scripts` VALUES (2324101, 23241, 0, 0, 100, 1, 20000, 20000, 40000, 40000, 11, 29942, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Aether-Tech - Infected Blood');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE entry = '23333';
INSERT INTO `creature_ai_scripts` VALUES (2333301, 23333, 0, 0, 100, 1, 2000, 5000, 7500, 9500, 11, 40937, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Grand Collector - Arcane Volley');
INSERT INTO `creature_ai_scripts` VALUES (2333302, 23333, 0, 0, 100, 1, 36000, 36000, 36000, 36000, 11, 40940, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Grand Collector - Mana Bomb');
INSERT INTO `creature_ai_scripts` VALUES (2333303, 23333, 0, 0, 100, 1, 42000, 42000, 60000, 60000, 11, 40951, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Grand Collector - Stasis Field');
INSERT INTO `creature_ai_scripts` VALUES (2333304, 23333, 2, 0, 100, 0, 40, 0, 0, 0, 11, 40944, 0, 1, 11, 40943, 0, 1, 0, 0, 0, 0, 'The Grand Collector - Mirror Image at 40% HP');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE entry = '23350';
INSERT INTO `creature_ai_scripts` VALUES (2335001, 23350, 0, 0, 100, 1, 2000, 5000, 7500, 9500, 11, 40937, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Grand Collector - Arcane Volley');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE entry = '23246';
INSERT INTO `creature_ai_scripts` VALUES (2324601, 23246, 0, 0, 100, 1, 2000, 5000, 7500, 9500, 11, 40976, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Slavering Slave - Slimy Spittle');
INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
 (-1900226,'A discovery! I need aid with these measurements... I\'ll send a signal to my colleague!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Skyguard Aether_YELL1'),
 (-1900227,'The disruptor towers over charged the crystalforge, and uncovered more secrets! Hold them! Hold them while we gather new data!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Skyguard Aether_YELL2'),
 (-1900228,'This forge can make unstable concoctions... to study them, I need Apexis Shards!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Aether-tech Assistant_YELL'),
 (-1900229,'I am growing amazing crystals from these waters. For catalysts, I must have more Apexis shards!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Aether-tech Adept_YELL'),
 (-1900230,'At last! The information we seek! Gather quickly, skyguard. We must soon return to headquarters with our findings!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Skyguard Aether_YELL3'),
 (-1900231,'Its properties are amazing! Provide me with Apexis crystals, and I\'ll form weapons and armor within crystal geodes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Aether-tech Master_YELL'),
 (-1900232,'Our studies are complete! Well fought! Headquarters will pour over our gained measurements and, with luck, uncover the Bash\'ir\'s intentions. Now, to the skies!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Skyguard Aether_YELL4');
INSERT INTO `item_loot_template` VALUES
(32624, 31576, 100, 0, 1, 1, 0, 0, 0),
(32626, 31568, 100, 0, 1, 1, 0, 0, 0),
(32628, 31560, 100, 0, 1, 1, 0, 0, 0),
(32629, 31552, 100, 0, 1, 1, 0, 0, 0),
(32625, 31583, 100, 0, 1, 1, 0, 0, 0),
(32627, 31575, 100, 0, 1, 1, 0, 0, 0),
(32631, 31567, 100, 0, 1, 1, 0, 0, 0),
(32630, 31559, 100, 0, 1, 1, 0, 0, 0);
