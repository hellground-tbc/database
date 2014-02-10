-- http://www.wowhead.com/quest=10723 and http://www.wowhead.com/quest=10802 There are 2 quests with same name and objective.
-- Quest item. Oregon and HG DB has 100 % chance, so I didn't change it. 
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100', `lootcondition`='0', `condition_value1`='0' WHERE (`entry`='21046') AND (`item`='31754');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100', `lootcondition`='0', `condition_value1`='0' WHERE (`entry`='21047') AND (`item`='31754');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100', `lootcondition`='0', `condition_value1`='0' WHERE (`entry`='21048') AND (`item`='31754');

-- Update for first quest - now totems will drop too.
UPDATE `quest_template` SET `ReqSourceId1`='31754', `ReqSourceCount1`='5', `ReqSourceRef1`='1' WHERE (`entry`='10723');