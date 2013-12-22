-- quests links http://wowhead.com/?quest=1920  http://wowhead.com/?quest=1960 (they are similar)

-- add npc for quests http://wowhead.com/?npc=6492
delete from creature where id=6492;
INSERT INTO `creature` VALUES ('1526', '6492', '0', '1', '0', '0', '1405.68', '373.236', '-66.0107', '5.07053', '100', '0', '0', '440', '0', '0', '0');
INSERT INTO `creature` VALUES ('1551', '6492', '0', '1', '0', '0', '1398.28', '365.739', '-66.0408', '0.85294', '100', '0', '0', '440', '0', '0', '0');
INSERT INTO `creature` VALUES ('1671', '6492', '0', '1', '0', '0', '1410.38', '364.259', '-66.021', '2.61223', '100', '0', '0', '440', '0', '0', '0');
INSERT INTO `creature` VALUES ('1686', '6492', '0', '1', '0', '0', '-9085.31', '836.703', '108.422', '6.01135', '100', '0', '0', '440', '0', '0', '0');
INSERT INTO `creature` VALUES ('1692', '6492', '0', '1', '0', '0', '-9077.2', '822.683', '108.419', '1.38928', '100', '0', '0', '420', '0', '0', '0');
INSERT INTO `creature` VALUES ('1749', '6492', '0', '1', '0', '0', '-9078.62', '834.534', '108.42', '0.786095', '100', '0', '0', '440', '0', '0','0');

-- removing loot from npc
delete from creature_loot_template where entry=6492;

-- move quest's gameobject from underground to correct point http://letswow.ru/wowhead/?object=300013
UPDATE `gameobject` SET `position_x`='-9072.36', `position_y`='833.67', `position_z`='108.418' WHERE (`guid`='99871') and (`id`='300013');