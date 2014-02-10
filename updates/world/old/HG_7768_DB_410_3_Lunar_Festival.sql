-- Lunar Festival fixes by Firehex

-- Fixing items(using wrong or not working spells)

-- Elune's Candle  http://www.wowhead.com/item=21713
UPDATE `item_template` SET `spellid_1`='26636' WHERE (`entry`='21713');
-- Elune Stone http://www.wowhead.com/item=21536
UPDATE `item_template` SET `spellid_1`='35259' WHERE (`entry`='21536');

-- Omen boss  http://www.wowwiki.com/Omen  http://www.wowhead.com/npc=15467 He needs to be killed for http://www.wowhead.com/quest=8868
delete from creature where id=15467;
INSERT INTO `creature` VALUES ('2468', '15467', '1', '1', '0', '0', '7550.8', '-2843.53', '452.854', '4.42688', '300', '2', '0', '500000', '0', '0', '1');
delete from game_event_creature where guid=705;
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES ('705', '7');
-- now he and his minions will be attackable
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='15467');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='15466');
-- casts
delete from creature_ai_scripts where entryOrGUID=15467;
INSERT INTO `creature_ai_scripts` VALUES ('1546751', '15467', '0', '0', '100', '1', '4000', '5000', '15000', '20000', '11', '26540', '4', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'Omen casts Starfall');
INSERT INTO `creature_ai_scripts` VALUES ('1546752', '15467', '0', '0', '100', '1', '6000', '7000', '8000', '15000', '11', '15284', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Omen casts Cleave');
INSERT INTO `creature_ai_scripts` VALUES ('1546753', '15467', '4', '0', '100', '0', '0', '0', '0', '0', '12', '15466', '4', '60000', '12', '15466', '4', '60000', '0', '0', '0', '0', 'Omen summons 2 Minion of Omen on aggro');
INSERT INTO `creature_ai_scripts` VALUES ('1546754', '15467', '6', '0', '100', '0', '0', '0', '0', '0', '26', '8868', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Omen quest complete');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '15467';

-- Players should get buff from http://letswow.ru/wowhead/?spell=26392 ,but seems object buffs only summoner. So players will receive buff on quest complete.
UPDATE `quest_template` SET `RewSpellCast`='26393' WHERE (`entry`='8868');