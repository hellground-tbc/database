UPDATE `creature_template` SET `faction_A` = '35' WHERE entry = '29858';
UPDATE `creature_template` SET `faction_H` = '35' WHERE entry = '29858';
UPDATE `creature_template` SET `faction_A` = '14' WHERE entry = '21331';
UPDATE `creature_template` SET `faction_H` = '14' WHERE entry = '21331';
UPDATE `creature_template` SET `unit_flags` = '4' WHERE entry = '21331';

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE entry = '20774';
DELETE FROM `creature_ai_scripts` WHERE `id` IN (2077401,2077402,2077403);
INSERT INTO `creature_ai_scripts` VALUES ('2077401', '20774', '8', '0', '100', '1', '35772', '-1', '0', '0', '3', '20983', '0', '0', '11', '3019', '0', '0', '2', '14', '0', '0', 'Farahlon Lasher');
INSERT INTO `creature_ai_scripts` VALUES ('2077402', '20774', '4', '0', '100', '0', '0', '0', '0', '0', '11', '12747', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Farahlon Lasher');
INSERT INTO `creature_ai_scripts` VALUES ('2077403', '20774', '0', '0', '100', '1', '1800', '1800', '16300', '16300', '11', '36604', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Farahlon Lasher');


DELETE FROM `script_waypoint` WHERE `entry`=20415;
INSERT INTO `script_waypoint` VALUES
(20415, 0, 2488.77, 2184.89, 104.64, 0, ''),
(20415, 1, 2478.72, 2184.77, 98.58, 0, ''),
(20415, 2, 2473.52, 2184.71, 99.00, 0, ''),
(20415, 3, 2453.15, 2184.96, 97.09,4000, ''),
(20415, 4, 2424.18, 2184.15, 94.11, 0, ''),
(20415, 5, 2413.18, 2184.15, 93.42, 0, ''),
(20415, 6, 2402.02, 2183.90, 87.59, 0, ''),
(20415, 7, 2333.31, 2181.63, 90.03,4000, ''),
(20415, 8, 2308.73, 2184.34, 92.04, 0, ''),
(20415, 9, 2303.10, 2196.89, 94.94, 0, ''),
(20415, 10, 2304.58, 2272.23, 96.67, 0, ''),
(20415, 11, 2297.09, 2271.40, 95.16, 0, ''),
(20415, 12, 2297.68, 2266.79, 95.07,4000, ''),
(20415, 13, 2297.67, 2266.76, 95.07,4000, '');
