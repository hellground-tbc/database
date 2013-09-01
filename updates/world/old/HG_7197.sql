-- Alythes & Sacrolash are immune to spell haste reduction and taunt
UPDATE creature_template SET flags_extra = 4259841 WHERE entry IN (25165, 25166);