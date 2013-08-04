-- ----------------------------
-- Quest: http://www.wowhead.com/quest=11035
-- Mobs: http://www.wowhead.com/npc=23188#comments
-- Bug: If you kill mob with command .damage without entering battle, then he can respawn without mount, and this also reproduced on normal death. At least this happened with orcs on floating island.
-- ----------------------------

update creature_template SET MovementType=2,InhabitType=5,flags_extra=0 where entry=23188;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE (`entry`='23188') AND (`item`='32509');

DELETE FROM creature WHERE id= 23188;
INSERT INTO `creature` VALUES ('1115', '23188', '530', '1', '0', '0', '-4747.99', '125.614', '81.667', '2.48735', '15', '0', '0', '7266', '3155', '0', '2');
INSERT INTO `creature` VALUES ('1117', '23188', '530', '1', '0', '0', '-4728.72', '130.222', '82.5424', '2.93268', '15', '0', '0', '7266', '3155', '0', '2');
INSERT INTO `creature` VALUES ('1119', '23188', '530', '1', '0', '0', '-4900.63', '38.7464', '46.131', '3.79422', '15', '0', '0', '7266', '3155', '0', '2');

delete from creature_addon where guid in (1115, 1117, 1119);
INSERT INTO `creature_addon` VALUES ('1115', '23188', '20344', null, null, null, null, null, null);
INSERT INTO `creature_addon` VALUES ('1117', '231880', '20344', null, null, null, null, null, null);
INSERT INTO `creature_addon` VALUES ('1119', '231881', '20344', null, null, null, null, null, null); 

delete from waypoint_data where id=23188;
INSERT INTO `waypoint_data` VALUES ('23188', '1', '-4758.18', '99.2182', '77.8147', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('23188', '2', '-4768.11', '106.909', '85.4741', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('23188', '3', '-4787.03', '102.405', '79.8097', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('23188', '4', '-4825.42', '134.35', '92.6547', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('23188', '5', '-4787.6', '126.882', '82.8134', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('23188', '6', '-4748.58', '130.443', '80.8952', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('23188', '7', '-4744.15', '96.9811', '80.0271', '0', '0', '0', '100', '0');

delete from waypoint_data where id=231880;
INSERT INTO `waypoint_data` VALUES ('231880', '1', '-4749.32', '124.757', '81.4557', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('231880', '2', '-4773.45', '128.527', '82.0785', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('231880', '3', '-4790.76', '164.645', '79.8162', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('231880', '4', '-4766.48', '194.762', '92.7602', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('231880', '5', '-4765.11', '174.631', '79.6707', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('231880', '6', '-4739.59', '165.762', '80.7732', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('231880', '7', '-4719.95', '146.755', '80.6298', '0', '0', '0', '100', '0');

delete from waypoint_data where id=231881;
INSERT INTO `waypoint_data` VALUES ('231881', '1', '-4910.39', '24.784', '45.6251', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('231881', '2', '-4908.72', '14.5204', '49.7838', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('231881', '3', '-4933.19', '18.4345', '61.188', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('231881', '4', '-4925.39', '28.897', '61.4266', '5000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('231881', '5', '-4926.76', '40.9156', '61.7952', '5000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('231881', '6', '-4940.65', '35.1112', '62.5104', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('231881', '7', '-4927.7', '52.774', '52.0402', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('231881', '8', '-4906.66', '48.8411', '47.5055', '0', '0', '0', '100', '0');

Delete from creature_ai_scripts where entryOrGUID=23188;
INSERT INTO `creature_ai_scripts` VALUES ('2318851', '23188', '4', '0', '100', '0', '0', '0', '0', '0', '11', '38861', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'cast aimed shot');
INSERT INTO `creature_ai_scripts` VALUES ('2318852', '23188', '0', '0', '80', '1', '6000', '8000', '9000', '9500', '11', '19503', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'cast shatter shot');
INSERT INTO `creature_ai_scripts` VALUES ('2318853', '23188', '0', '0', '50', '1', '5000', '10000', '6000', '10000', '11', '38859', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'cast serpent sting');
INSERT INTO `creature_ai_scripts` VALUES ('2318854', '23188', '9', '0', '100', '1', '10', '50', '500', '1000', '11', '38858', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'cast shoot');
