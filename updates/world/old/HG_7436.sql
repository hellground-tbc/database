UPDATE creature_template SET InhabitType = 4, scale = 3 WHERE entry = 25770;
UPDATE creature_template SET flags_extra = 128, ScriptName = "npc_void_summoner" WHERE entry = 25782;
DELETE FROM spell_target_position WHERE id IN (46037, 46038, 46039, 46040);
INSERT INTO spell_target_position VALUES
(46037, 580, 1890.3, 567.7, 71.3, 0),
(46038, 580, 1894.8, 563.8, 71.3, 0),
(46039, 580, 1728.3, 700.0, 71.2, 0),
(46040, 580, 1732.0, 698.5, 71.2, 0);

UPDATE creature_template SET speed = 1.5, ScriptName = "mob_shadowsword_fury_mage" WHERE entry = 25799;
UPDATE creature_template SET speed = 1.5, ScriptName = "mob_shadowsword_berserker" WHERE entry = 25798;
UPDATE creature_template SET ScriptName = "mob_void_spawn" WHERE entry = 25824;

DELETE FROM spell_script_target WHERE entry IN (46208, 46178);
INSERT INTO spell_script_target VALUES
(46208, 1, 25741),
(46178, 1, 25741);

DELETE FROM spell_linked_spell WHERE spell_trigger IN (46242, 46262);
UPDATE creature_template SET minhealth = 100000, maxhealth = 100000, minlevel = 73, maxlevel = 73, faction_A = 14, faction_H = 14 WHERE entry IN (25879, 25855);
UPDATE creature_template SET spell1 = 0, ScriptName = "npc_darkness" WHERE entry = 25879;