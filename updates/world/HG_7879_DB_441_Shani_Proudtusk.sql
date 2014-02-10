-- Burning Steppes: Remove Sha'ni Proudtusk loot
UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` = 9136;
DELETE FROM `creature_loot_template` WHERE `entry` = 9136;
