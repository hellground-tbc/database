-- Quest http://www.wowhead.com/quest=10724
-- Little increase chance(was 5%) for key for saving wyvern http://www.wowhead.com/item=31755
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='8' WHERE (`entry`='19996') AND (`item`='31755');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='8' WHERE (`entry`='19997') AND (`item`='31755');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='1' WHERE (`entry`='20756') AND (`item`='31755');


