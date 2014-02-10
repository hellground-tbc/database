-- Elder's Moonstone summoned NPC aura fix
INSERT INTO `creature_template_addon` VALUES (15631, 0, 0, 2048, 0, 4097, 0, 0, '25824 0');
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 15631;
