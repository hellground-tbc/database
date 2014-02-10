-- Quest http://wowhead.com/?quest=8620
-- List of all books http://www.wowhead.com/spell=25719

-- Chapter 1 http://www.wowhead.com/item=21103
 UPDATE `creature_loot_template` SET `lootcondition`='9', `condition_value1`='8620' WHERE (`entry`='15552') AND (`item`='21103');
-- Chapter 2 http://www.wowhead.com/item=21104
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10', `lootcondition`='9', `condition_value1`='8620' WHERE (`entry`='8717') AND (`item`='21104');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='6', `lootcondition`='9', `condition_value1`='8620' WHERE (`entry`='8716') AND (`item`='21104');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='4', `lootcondition`='9', `condition_value1`='8620' WHERE (`entry`='12396') AND (`item`='21104');
-- Chapter 3 http://www.wowhead.com/item=21105#dropped-by  Basic drop rate is lower then 0,5.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='7', `lootcondition`='9', `condition_value1`='8620' WHERE (`entry`='7461') AND (`item`='21105');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='7', `lootcondition`='9', `condition_value1`='8620' WHERE (`entry`='7463') AND (`item`='21105');
-- Chapter 6 Onyxia drop  http://www.wowhead.com/item=21108
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='100', `lootcondition`='9', `condition_value1`='8620' WHERE (`entry`='10184') AND (`item`='21108');
-- Chapter 8 Ragnaros drop add http://www.wowhead.com/item=21110#comments In comments said it is  100% drop for people with quest.
delete from creature_loot_template where item=21110;
INSERT INTO `creature_loot_template` (`entry`, `item`, `lootcondition`, `condition_value1`) VALUES ('11502', '21110', '9', '8620');