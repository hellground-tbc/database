INSERT INTO game_event_npc_gossip VALUES (93947, 50, 12400), (93947, 51, 12401), (93947, 52, 12402);
INSERT INTO reference_loot_template VALUES (34091, 35213, 0, 1, 1, 1, 0, 165, 0), (34091, 35214, 0, 1, 1, 1, 0, 165, 0), (34091, 35209, 0, 1, 1, 1, 0, 164, 0);
UPDATE `creature_template` SET `lootid` = 25165 WHERE `entry` = 25165;
DELETE FROM `creature_loot_template` WHERE (`entry`=25165);
INSERT INTO `creature_loot_template` VALUES 
(25165, 34544, -100, 3, 1, 1, 0, 0, 0),
(25165, 29434, 100, 0, 2, 2, 0, 0, 0),
(25165, 34085, 100, 1, -34085, 2, 0, 0, 0),
(25165, 34664, 100, 0, 4, 4, 0, 0, 0),
(25165, 50032, 100, 2, -50032, 1, 0, 0, 0);
UPDATE `creature_template` SET `lootid` = 25166 WHERE `entry` = 25166;
DELETE FROM `creature_loot_template` WHERE (`entry`=25166);
INSERT INTO `creature_loot_template` VALUES 
(25166, 34544, -100, 3, 1, 1, 0, 0, 0),
(25166, 29434, 100, 0, 2, 2, 0, 0, 0),
(25166, 34085, 100, 1, -34085, 2, 0, 0, 0),
(25166, 34664, 100, 0, 4, 4, 0, 0, 0),
(25166, 50032, 100, 2, -50032, 1, 0, 0, 0);
DELETE FROM reference_loot_template WHERE entry = 34085;
INSERT INTO `reference_loot_template` VALUES ('34085', '34189', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34190', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34192', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34193', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34194', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34195', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34196', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34197', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34198', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34199', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34202', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34203', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34204', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34205', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34206', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34208', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34209', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '34210', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '35290', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '35291', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34085', '35292', '0', '1', '1', '1', '0', '0', '0');
DELETE FROM reference_loot_template WHERE entry = 50032;
INSERT INTO `reference_loot_template` VALUES ('50032', '34848', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('50032', '34851', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('50032', '34852', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('50032', '34853', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('50032', '34854', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('50032', '34855', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('50032', '34856', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('50032', '34857', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('50032', '34858', '0', '1', '1', '1', '0', '0', '0');


UPDATE `creature_template` SET `lootid` = 25840 WHERE `entry` = 25840;
DELETE FROM `creature_loot_template` WHERE (`entry`=25840);
INSERT INTO `creature_loot_template` VALUES 
(25840, 34544, -100, 2, 1, 1, 0, 0, 0),
(25840, 29434, 100, 0, 2, 2, 0, 0, 0),
(25840, 34095, 100, 1, -34095, 3, 0, 0, 0),
(25840, 34664, 40, 0, 1, 1, 0, 0, 0);
DELETE FROM reference_loot_template WHERE entry = 34095;
INSERT INTO `reference_loot_template` VALUES ('34095', '34211', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34212', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34213', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34214', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34215', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34216', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34228', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34229', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34230', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34231', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34232', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34233', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34234', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34240', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34427', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34428', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34429', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '34430', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '35282', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '35283', '0', '1', '1', '1', '0', '0', '0');
INSERT INTO `reference_loot_template` VALUES ('34095', '35284', '0', '1', '1', '1', '0', '0', '0');