ALTER TABLE creature_template
	ADD COLUMN xp_modifier FLOAT NOT NULL DEFAULT 1.0 AFTER armor;

-- 0 exp modifier for NPC with CREATURE_FLAG_EXTRA_NO_XP_AT_KILL flag and add to 'fishes' in netherstorm
UPDATE creature_template SET xp_modifier = 0.0 WHERE entry = 19731;
UPDATE creature_template SET xp_modifier = 0.0 WHERE flags_extra & 0x00000040;
-- 1/4 exp modifier for imps in HP and 'fishes' in zangramarsh
UPDATE creature_template SET xp_modifier = 0.25 WHERE entry IN (18978, 19136, 18212) ;