-- Priestess of Torment & Painbringer should be rootable
UPDATE creature_template SET mechanic_immune_mask = 12716051 WHERE entry = 25509;
UPDATE creature_template SET mechanic_immune_mask = 12714003 WHERE entry = 25591;

-- M'uru trash melee dmg
UPDATE creature_template SET minhealth = 10500, maxhealth = 15000, mindmg = 1500, maxdmg = 2500 WHERE entry = 25851;
UPDATE creature_template SET mindmg = 11500, maxdmg = 16000 WHERE entry = 25599;
UPDATE creature_template SET mindmg = 6900, maxdmg = 9700 WHERE entry = 25593;
UPDATE creature_template SET mindmg = 7500, maxdmg = 10000 WHERE entry = 25595;
UPDATE creature_template SET mindmg = 6500, maxdmg = 13000 WHERE entry = 25592;
UPDATE creature_template SET mindmg = 2000, maxdmg = 3500 WHERE entry = 25948;
UPDATE creature_template SET mindmg = 7500, maxdmg = 13000 WHERE entry = 25591;
UPDATE creature_template SET mindmg = 5500, maxdmg = 9700 WHERE entry = 25509;

UPDATE creature_template SET ScriptName = "mob_shadowsword_guardian" WHERE entry = 25508;

-- M'uru fight melee dmg & resistances
UPDATE creature_template SET mindmg = 8000, maxdmg = 10500 WHERE entry = 25798;
UPDATE creature_template SET mindmg = 9000, maxdmg = 12000 WHERE entry = 25799;
UPDATE creature_template SET mindmg = 19000, maxdmg = 24000, dmgschool = 0 WHERE entry = 25772;
UPDATE creature_template SET mindmg = 2500, maxdmg = 3500 WHERE entry = 25824;
UPDATE creature_template SET mindmg = 8000, maxdmg = 12000 WHERE entry = 25840;
UPDATE creature_template SET resistance1 = 150, resistance2 = 150, resistance3 = 150, resistance4 = 150, resistance5 = 150, resistance6 = 0 WHERE entry = 25741;

DELETE FROM spell_target_position WHERE id IN (46037, 46038, 46039, 46040);
INSERT INTO spell_target_position VALUES
(46037, 580, 1890.3, 567.7, 71.3, 0),
(46038, 580, 1894.8, 563.8, 71.3, 0),
(46039, 580, 1741.0, 709.5, 71.2, 0),
(46040, 580, 1737.3, 710.5, 71.2, 0);