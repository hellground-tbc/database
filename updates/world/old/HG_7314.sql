DELETE FROM `creature_ai_scripts` WHERE `id` IN (204401,204402,204403,204404,204405);
INSERT INTO `creature_ai_scripts` VALUES
(204401, 2044, 4, 0, 100, 0, 0, 0, 0, 0, 1, -449, -450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Forlorn Spirit - Random Say on aggro'),
(204402, 2044, 0, 0, 100, 1, 2000, 2000, 2000, 2000, 11, 3105, 1, 32, 0, 0, 0, 0, 0, 0, 0, 0, 'Forlorn Spirit - Cast Curse of Stalvan'),
(204403, 2044, 8, 0, 100, 1, 0, 127, 45000, 45000, 11, 118, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Forlorn Spirit - Cast Polymorph on Spell Hit'),
(204404, 2044, 11, 0, 100, 0, 0, 0, 0, 0, 2, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Forlorn Spirit - set faction hostile on Spawn'),
(204405, 2044, 7, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Forlorn Spirit - Despawn on Evade');
UPDATE `quest_template` SET `CompleteScript` = 67 WHERE `entry` = 67;
INSERT INTO `quest_end_scripts` VALUES
(67, 4, 10, 2044, 300000, 0, -10958.31, 1563.010, 45.6178, 2.9741);
UPDATE `gameobject_template` SET `data6` = 265 WHERE `entry` = 1560;
INSERT INTO `event_scripts` VALUES
(265, 3, 10, 2044, 300000, 0, -9461.72, -2.457, 63.8205, 1.6571);
UPDATE `quest_template` SET `CompleteScript` = 72 WHERE `entry` = 72;
INSERT INTO `quest_end_scripts` VALUES
(72, 4, 10, 2044, 300000, 0, -8832.20, 985.599, 98.7002, 4.5751);
