-- Magtheridon's Lair: No gold from adds
UPDATE `creature_template` SET `mingold` = 0, `maxgold` = 0 WHERE `entry` = 17256;
