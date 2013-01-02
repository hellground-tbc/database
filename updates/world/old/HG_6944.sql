UPDATE `creature` SET `id` = '21035' WHERE `guid` = '69964';
UPDATE `creature_template` SET `faction_A` = '14' WHERE entry = '21035';
UPDATE `creature_template` SET `faction_H` = '14' WHERE entry = '21035';
UPDATE `creature_template` SET `unit_flags` = '838' WHERE entry = '19554';
UPDATE `creature_template` SET `unit_flags` = '33555268' WHERE entry = '21035';
UPDATE `creature_template` SET `flags_extra` = '2' WHERE entry = '21035';
UPDATE `creature_template` SET `flags_extra` = '0' WHERE entry = '19554';
UPDATE `creature_template` SET `unit_flags` = '131076' WHERE entry = '21780';
UPDATE `creature_template` SET `flags_extra` = '2' WHERE entry = '21780';
UPDATE `creature_template` SET `ScriptName` = 'npc_saeed' WHERE `entry` = '20985';
UPDATE `creature_template` SET `ScriptName` = 'npc_dimensius' WHERE `entry` = '19554';

DELETE FROM `script_waypoint` WHERE `entry`=20985;
INSERT INTO `script_waypoint` VALUES
   (20985,0,4264.84,2102.50,140.55,1000, ''),
   (20985,1,4257.52,2106.03,143.08,0, ''),
   (20985,2,4241.25,2119.54,145.35,0, ''),
   (20985,3,4223.52,2123.36,152.05,0, ''),
   (20985,4,4208.74,2116.33,155.66,0, ''),
   (20985,5,4204.35,2112.98,160.01,0, ''),
   (20985,6,4189.46,2096.65,158.62,0, ''),
   (20985,7,4174.62,2069.87,164.67,0, ''),
   (20985,8,4174.92,2058.70,169.02,0, ''),
   (20985,9,4185.24,2038.99,178.52,0, ''),
   (20985,10,4186.51,2016.82,188.34,0, ''),
   (20985,11,4173.10,1994.48,203.89,0, ''),
   (20985,12,4155.25,1980.56,213.15,0, ''),
   (20985,13,4134.03,1970.26,220.28,0, ''),
   (20985,14,4124.99,1975.05,221.76,0, ''),
   (20985,15,4106.25,2007.29,230.07,0, ''),
   (20985,16,4094.64,2026.97,236.08,0, ''),
   (20985,17,4058.63,2060.00,250.25,0, ''),
   (20985,18,4034.50,2074.43,254.34,0, ''),
   (20985,19,4015.44,2092.70,254.21,0, ''),
   (20985,20,4003.86,2095.77,254.21,0, ''),
   (20985,21,3995.38,2091.96,254.32,0, ''),
   (20985,22,3988.58,2082.10,256.40,0, ''),
   (20985,23,3956.09,2033.69,257.81,0, ''),
   (20985,24,3949.54,2023.48,256.71,25000, ''),
   (20985,25,3944.30,2017.73,255.70,0, '');

INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(-1900216,'You heard the fleshling! MOVE OUT!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAEED_1'),
(-1900217,'Tell me when you are ready, $n. We will attack on your command.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAEED_2'),
(-1900218,'It\'s now or never, soldiers! Let\'s do this! For K\'aresh! For the Protectorate!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAEED_3'),
(-1900219,'Time only has meaning to mortals, insect. Dimensius is infinite!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'DIMENSIUS_1'),
(-1900220,'I hunger! Feed me the power of this forge, my children!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'DIMENSIUS_2'),
(-1900221,'The time for your destruction has finally come. Dimensius!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAEED_4'),
(-1900222,'We are victorious! Dimensius is no more! Report back to the Professor, hero.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAEED_5');
