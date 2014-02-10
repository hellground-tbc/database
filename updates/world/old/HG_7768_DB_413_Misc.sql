-- http://letswow.ru/wowhead/?npc=23534#teaches-ability Problem was what this npc didn't teach you anything because in table wasn't mention player class.
UPDATE `creature_template` SET `class`='9' WHERE (`entry`='23534');

-- Brewfest npc must appear only when 26 event.
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES ('16777226', '26');
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES ('16777232', '26');


-- Darkspine Ore Chest http://www.wowhead.com/object=187264 for quest http://www.wowhead.com/quest=11536
-- Players reported what sometimes when you open chest without shift you can get nothing. This should fix that problem.
update gameobject set animprogress=100 where id=187264;
UPDATE `gameobject_template` SET `flags`='2' WHERE (`entry`='187264');



-- http://letswow.ru/wowhead/?npc=10882 Summoning from object is working,so don't need it.
DELETE FROM `creature` WHERE (`id`='10882');
-- http://letswow.ru/wowhead/?npc=40039#starts This is some kind of test npc from hellground, which should be deleted.
delete from creature where id=40039;
-- http://letswow.ru/wowhead/?npc=21877#abilities This npc will normal spawn after quest start.
delete from creature where id=21877;


-- Removing gossip from fly masters. Their must-have flag is 8192;
UPDATE `creature_template` SET `npcflag`='8194' WHERE npcflag=8195;  
UPDATE `creature_template` SET `npcflag`='8192' WHERE (npcflag='8193');  


-- Quest http://www.wowhead.com/quest=11129
-- Meat wasn't dropping http://letswow.ru/wowhead/?item=33009
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='15', `lootcondition`='9', `condition_value1`='11129' WHERE (`entry`='2956') AND (`item`='33009');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='15', `lootcondition`='9', `condition_value1`='11129' WHERE (`entry`='2957') AND (`item`='33009');


-- http://letswow.ru/wowhead/?spell=42755 This effect from Goblin Gumbeaux doesn't proc with buff http://letswow.ru/wowhead/?spell=42760, so now players can use it by self every 15 seconds.
UPDATE `item_template` SET `spellid_1`='42755', `spellcharges_1`='20',`spellcooldown_1`='15000' WHERE (`entry`='33218');


-- http://www.wowhead.com/npc=17680#comments and our http://letswow.ru/wowhead/?npc=17680
delete from creature_loot_template where entry=17680;


-- http://www.wowhead.com/quest=7509/the-forging-of-quelserrar
-- Instead of getting with quest http://www.wowhead.com/item=18489 player will get http://letswow.ru/wowhead/?item=18488
UPDATE `quest_template` SET `SrcItemId`='18488' WHERE (`entry`='7509');

-- http://letswow.ru/wowhead/?quest=2681 
-- Reduce respawn time of each quest npc. Before it was 7 min 30 seconds.
update creature set spawntimesecs= 120 where id in(7668,7669,7670,7671);


-- http://www.wowwiki.com/Sever In my SFK update forgot to add enrage for Sever at low hp
delete from creature_ai_scripts where entryOrGUID=14682;
INSERT INTO `creature_ai_scripts` VALUES ('1468251', '14682', '0', '0', '100', '1', '3000', '5000', '15000', '20000', '11', '17745', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sever  casts  Diseased Spit');
INSERT INTO `creature_ai_scripts` VALUES ('1468252', '14682', '0', '0', '100', '1', '12000', '15000', '25000', '30000', '11', '16508', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sever  casts Intimidating Roar');
INSERT INTO `creature_ai_scripts` VALUES ('1468253', '14682', '2', '0', '100', '0', '40', '0', '0', '0', '11', '8269', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Sever casts Enrage');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '14682';


-- Merciless Gladiator's Felweave Raiment   http://letswow.ru/wowhead/?item=31982 Error are gloves and shoulders for warlock chest.
 
-- Chestguard of the Vanquished Hero 
UPDATE `npc_vendor` SET `ExtendedCost`='1357' WHERE (`entry`='26091') AND (`item`='31982');
-- Chestguard of the Forgotten Conqueror     
UPDATE `npc_vendor` SET `ExtendedCost`='1491' WHERE (`entry`='26092') AND (`item`='31982');

-- http://www.wowhead.com/item=5079#dropped-by  In Silvermoon DB 1,4 % chance, WoWwiki - no info.
DELETE FROM `reference_loot_template` WHERE (`entry`='24037') AND (`item`='5079');
delete from creature_loot_template where item=5079;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('690', '5079', '0.5');