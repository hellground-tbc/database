-- Remove redundant referenced recipe loot
DELETE FROM `creature_loot_template` WHERE `mincountOrRef` = -50031 LIMIT 10;
DELETE FROM `reference_loot_template` WHERE `entry` = 50031;

-- Bump recipe group chance to 10%, so there is 1% per single recipe to appear
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `mincountOrRef` = -34011 LIMIT 10;
