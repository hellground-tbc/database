-- Gruul's Lair: No gold from adds
update `creature_template` set `mingold` = 0, `maxgold` = 0 where `entry` in (18832, 18834, 18835, 18836);
