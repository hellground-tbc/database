-- Alythes & Sacrolash are immune to spell haste reduction
UPDATE creature_template SET flags_extra = 4194305 WHERE entry IN (25165, 25166);