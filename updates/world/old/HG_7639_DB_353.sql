-- increasing drop chance,because players sometimes report killing mob many times and still get nothing...
-- http://www.wowhead.com/item=27943
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE (`entry`='19174') AND (`item`='27943');

-- someone made mistake and made for him 567 max damage...too much for 30 lvl mob. I took data from silvermoon db
-- http://www.wowhead.com/npc=3414
UPDATE `creature_template` SET `mindmg`='38', `maxdmg`='57' WHERE (`entry`='3414');

-- http://www.wowwiki.com/Quest:Unfinished_Gordok_Business
INSERT INTO `gameobject` VALUES ('21', '179545', '429', '1', '139.06', '625.019', '-27.9376', '3.26036', '0', '0', '0.998237', '-0.0593471', '25', '0', '1');