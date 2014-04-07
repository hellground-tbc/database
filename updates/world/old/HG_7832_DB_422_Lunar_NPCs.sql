-- Missing Lunar Festival NPCs
INSERT INTO `creature` VALUES (NULL, 15607, 329, 1, 0, 0, 3708.25, -3453.13, 130.554, 5.86195, 300, 0, 0, 5000, 5751, 0, 0);
INSERT INTO `game_event_creature` VALUES (LAST_INSERT_ID(), 7);

INSERT INTO `creature` VALUES (NULL, 15561, 0, 1, 0, 0, 513.067, 1560, 129.904, 3.65405, 300, 0, 0, 3857, 5751, 0, 0);
INSERT INTO `game_event_creature` VALUES (LAST_INSERT_ID(), 7);

INSERT INTO `creature` VALUES (NULL, 15567, 0, 1, 0, 0, -7275.12, -795.942, 296.833, 5.63162, 300, 0, 0, 5300, 5751, 0, 0);
INSERT INTO `game_event_creature` VALUES (LAST_INSERT_ID(), 7);

-- Spotlight aura
INSERT INTO `creature_template_addon` VALUES
(15607, 0, 0, 2048, 0, 4097, 0, 0, '25824 0'),
(15561, 0, 0, 2048, 0, 4097, 0, 0, '25824 0'),
(15567, 0, 0, 2048, 0, 4097, 0, 0, '25824 0');
