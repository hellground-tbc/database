-- Make Motes more rare after patch 2.1:
-- http://www.wowhead.com/item=22577#comments:id=87332

-- Add Mote of Shadow for Pandemonius
-- http://www.wowhead.com/npc=18341#drops
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(18341, 22577, 10, 0, 2, 4, 0, 0, 0),
(20267, 22577, 25, 0, 2, 4, 0, 0, 0);

-- Remove Mote of Shadow from all mobs not in list
-- http://www.wowhead.com/item=22577#dropped-by
DELETE FROM `creature_loot_template` WHERE `item` = 22577 AND `entry` NOT IN (19554, 19307, 20875, 20873, 17981, 18683, 20870, 21626, 18870, 18869, 20554, 19527, 17014, 16975, 16974, 18341, 20267);

-- Remove loot for Fel Spirit completely, as it can be spawned non-stop
-- http://www.wowhead.com/npc=22454
DELETE FROM `creature_loot_template` WHERE `entry` = 22454;

-- For now leave Fel Ragers as they are.
-- The loot template will be altered, if they are deleted completely from game.

-- Remove Mote of Mana from mobs in Zangarmarsh:
-- http://www.wowhead.com/npc=20090#comments:id=29438:reply=16514
DELETE FROM `creature_loot_template` WHERE `item` = 22576 AND `entry` IN (18750, 20290, 20196, 20090);
