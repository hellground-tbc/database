-- Void Sentinels are not tauntable, also some more immunities
UPDATE creature_template SET flags_extra = 65536, mechanic_immune_mask = 113385435 WHERE entry = 25772;

-- quest item for Archonisus, remove q item from ET
DELETE FROM creature_loot_template WHERE entry IN (25165, 25166) AND item = 34544;
INSERT INTO creature_loot_template VALUES (25840, 34544, -100, 2, 1, 1, 0, 0, 0);