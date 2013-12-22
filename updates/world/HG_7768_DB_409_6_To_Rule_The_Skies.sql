-- http://www.wowhead.com/quest=11078 Dragons casts mentioned there.

-- Dragon phrases
delete from creature_ai_texts where entry in('-23061','-23062','-23063','-23064','-23065','-23066');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-23061', 'I believe that I shall feast upon both night elf and ogre flesh tonight.', '1', 'Blade edge dragons');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-23062', 'Little human, you will now come to appreciate my wrath!', '1', 'Blade edge dragons');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-23063', 'The Skyguard shall pay for your temerity, $N!', '1', 'Blade edge dragons');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-23064', 'You have dared to defile my perch and must now be cleansed in fire!', '1', 'Blade edge dragons');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-23065', 'Get away from my clutch!!!', '1', 'Blade edge dragons');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-23066', 'What is this?! $N and her friends come to play?', '1', 'Blade edge dragons');

-- Casts for each dragon
-- Rivendark http://www.wowhead.com/npc=23061#comments
delete from creature_ai_scripts where entryOrGUID=23061;
INSERT INTO `creature_ai_scripts` VALUES ('2306151', '23061', '0', '0', '100', '1', '3000', '4000', '10000', '15000', '11', '40505', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rivendark casts Cleave');
INSERT INTO `creature_ai_scripts` VALUES ('2306152', '23061', '0', '0', '100', '1', '10000', '12000', '30000', '35000', '11', '36922', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Rivendark casts Bellowing Roar');
INSERT INTO `creature_ai_scripts` VALUES ('2306153', '23061', '0', '0', '100', '1', '5000', '6000', '15000', '25000', '11', '9573', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Rivendark casts Flame Breath');
INSERT INTO `creature_ai_scripts` VALUES ('2306154', '23061', '9', '0', '100', '1', '0', '30', '5000', '9000', '11', '15847', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Rivendark casts Tail Sweep');
INSERT INTO `creature_ai_scripts` VALUES ('2306155', '23061', '0', '0', '100', '1', '5000', '15000', '20000', '24000', '11', '41988', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rivendark casts Corruption');
INSERT INTO `creature_ai_scripts` VALUES ('2306156', '23061', '4', '0', '100', '0', '0', '0', '0', '0', '1', '-23061', '-23062', '-23064', '0', '0', '0', '0', '0', '0', '0', '0', 'Rivendark phrases');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '23061';

-- Insidion http://www.wowhead.com/npc=23281 
delete from creature_ai_scripts where entryOrGUID=23281;
INSERT INTO `creature_ai_scripts` VALUES ('2328151', '23281', '0', '0', '100', '1', '3000', '4000', '10000', '15000', '11', '40505', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Insidion casts Cleave');
INSERT INTO `creature_ai_scripts` VALUES ('2328152', '23281', '0', '0', '100', '1', '10000', '12000', '30000', '35000', '11', '36922', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Insidion casts Bellowing Roar');
INSERT INTO `creature_ai_scripts` VALUES ('2328153', '23281', '0', '0', '100', '1', '5000', '6000', '15000', '25000', '11', '9573', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Insidioncasts Flame Breath');
INSERT INTO `creature_ai_scripts` VALUES ('2328154', '23281', '9', '0', '100', '1', '0', '30', '5000', '9000', '11', '15847', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Insidion casts Tail Sweep');
INSERT INTO `creature_ai_scripts` VALUES ('2328155', '23281', '0', '0', '100', '1', '8500', '9000', '4000', '7000', '11', '40719', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Insidion casts Flame Buffet');
INSERT INTO `creature_ai_scripts` VALUES ('2328156', '23281', '4', '0', '100', '0', '0', '0', '0', '0', '1', '-23066', '-23064', '-23062', '0', '0', '0', '0', '0', '0', '0', '0', 'Insidion phrases');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '23281';

-- Obsidia http://www.wowhead.com/npc=23282#comments  
delete from creature_ai_scripts where entryOrGUID=23282;
INSERT INTO `creature_ai_scripts` VALUES ('2328251', '23282', '0', '0', '100', '1', '3000', '4000', '10000', '15000', '11', '40505', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Obsidia casts Cleave');
INSERT INTO `creature_ai_scripts` VALUES ('2328252', '23282', '0', '0', '100', '1', '10000', '12000', '30000', '35000', '11', '36922', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Obsidia casts Bellowing Roar');
INSERT INTO `creature_ai_scripts` VALUES ('2328253', '23282', '0', '0', '100', '1', '5000', '6000', '15000', '25000', '11', '9573', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Obsidia ncasts Flame Breath');
INSERT INTO `creature_ai_scripts` VALUES ('2328254', '23282', '9', '0', '100', '1', '0', '30', '5000', '9000', '11', '15847', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Obsidia casts Tail Sweep');
INSERT INTO `creature_ai_scripts` VALUES ('2328255', '23282', '0', '0', '100', '1', '13500', '15000', '25000', '30000', '11', '40717', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Obsidia casts Hellfire');
INSERT INTO `creature_ai_scripts` VALUES ('2328256', '23282', '4', '0', '100', '0', '0', '0', '0', '0', '1', '-23065', '-23063', '-23066', '0', '0', '0', '0', '0', '0', '0', '0', 'Obsidia phrases');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '23282
';
-- Furywing http://www.wowhead.com/npc=23261 
delete from creature_ai_scripts where entryOrGUID=23261;
INSERT INTO `creature_ai_scripts` VALUES ('2326151', '23261', '0', '0', '100', '1', '3000', '4000', '10000', '15000', '11', '40505', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Furywing casts Cleave');
INSERT INTO `creature_ai_scripts` VALUES ('2326152', '23261', '0', '0', '100', '1', '10000', '12000', '30000', '35000', '11', '36922', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Furywing casts Bellowing Roar');
INSERT INTO `creature_ai_scripts` VALUES ('2326153', '23261', '0', '0', '100', '1', '5000', '6000', '15000', '25000', '11', '9573', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Furywing ncasts Flame Breath');
INSERT INTO `creature_ai_scripts` VALUES ('2326154', '23261', '9', '0', '100', '1', '0', '30', '5000', '9000', '11', '15847', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Furywing casts Tail Sweep');
INSERT INTO `creature_ai_scripts` VALUES ('2326155', '23261', '0', '0', '100', '1', '13500', '15000', '25000', '30000', '11', '41572', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Furywing casts Wing Buffet');
INSERT INTO `creature_ai_scripts` VALUES ('2326156', '23261', '4', '0', '100', '0', '0', '0', '0', '0', '1', '-23064', '-23062', '-23066', '0', '0', '0', '0', '0', '0', '0', '0', 'Furywing phrases');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '23261';