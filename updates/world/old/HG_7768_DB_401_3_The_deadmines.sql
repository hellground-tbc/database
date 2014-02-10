-- The Deadmines fixes by Firehex


-- Working with npcs, which outside dungeon

-- Marisa du Paige
-- walking boots   http://www.wowwiki.com/Walking_Boots  http://www.wowhead.com/item=4660  I have found drop chance about 71% in atlas loot and silvermoon DB, but in wowwiki 2% so let it be.
-- In this and other similar scripts I remove item from reference_loot_template,because it can drop from a lot of npc, but should drop only from one or two npc.
delete from reference_loot_template where item=4660 and entry=24078;
delete from creature_loot_template where item=4660;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('599', '4660', '2');
-- noble's robe   http://www.wowhead.com/item=3019#comments  I have found drop chance 22,4 % in atlas loot and silvermoon DB.
delete from reference_loot_template where item=3019 and entry=24078;
delete from creature_loot_template where item=3019;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('599', '3019', '22.4');

-- Brainwashed noble  http://www.wowwiki.com/Brainwashed_Noble  http://www.wowhead.com/npc=596  
-- Blocking movement(can stack in roof) 
UPDATE `creature` SET `MovementType`='0' WHERE (`guid`='89573');
-- Making casts
delete from creature_ai_scripts where entryOrGUID=596;
INSERT INTO `creature_ai_scripts` VALUES ('59651', '596', '0', '0', '100', '1', '1000', '3000', '5000', '6000', '11', '9053', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Brainwashed Noble casts Fireball');
INSERT INTO `creature_ai_scripts` VALUES ('59652', '596', '4', '0', '100', '0', '0', '0', '0', '0', '11', '12544', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Brainwashed Noble casts  Frost Armor on aggro');
INSERT INTO `creature_ai_scripts` VALUES ('59653', '596', '0', '0', '100', '1', '10000', '15000', '18000', '30000', '11', '39268', '1', '9', '0', '0', '0', '0', '0', '0', '0', '0', 'Brainwashed Noble casts Chains of Ice');
INSERT INTO `creature_ai_scripts` VALUES ('59654', '596', '0', '0', '100', '1', '22000', '28000', '20000', '25000', '11', '228', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Brainwashed Noble casts Polymorph: Chicken on random target');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '596';
-- his rare loot
-- http://www.wowhead.com/item=3902  23 % atlas and 22,5 % silvermoon DB
delete from reference_loot_template where item=3902 and entry=24078;
delete from creature_loot_template where item=3902;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('596', '3902', '23');
-- Girdle of Nobility http://www.wowwiki.com/Girdle_of_Nobility  http://www.wowhead.com/item=5967#comments 70,4% atlas  and 73% silver
delete from reference_loot_template where item=5967 and entry=24078;
delete from creature_loot_template where item=5967;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('596', '5967', '71');

-- Defias Digger drop http://www.wowhead.com/item=1926#dropped-by
delete from reference_loot_template where item=1926 and entry=24076;
delete from creature_loot_template where item=1926;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('824', '1926', '2');

-- Defias Henchman drop http://www.wowwiki.com/Defias_Henchman  http://www.wowhead.com/item=1927#comments
delete from reference_loot_template where item=1927 and entry=24076;
delete from creature_loot_template where item=1927;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('594', '1927', '3');

-- Defias Conjurer drop http://www.wowwiki.com/Defias_Conjurer http://www.wowhead.com/item=1933  
delete from reference_loot_template where item=1933 and entry=24076;
delete from creature_loot_template where item=1933;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('619', '1933', '5');

-- Defias Magician http://www.wowwiki.com/Defias_Magician  http://www.wowhead.com/item=1928#comments  
delete from reference_loot_template where item=1928 and entry=24077;
delete from creature_loot_template where item=1928;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1726', '1928', '4');

-- Defias Worker casting script http://www.wowwiki.com/Defias_Worker 
-- this will not delete his flee script
delete from creature_ai_scripts where action1_type=11 and entryOrGUID=1727;
INSERT INTO `creature_ai_scripts` VALUES ('172752', '1727', '0', '0', '100', '1', '3000', '6000', '17000', '22000', '11', '6016', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Worker casts Pierce Armor');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '1727';

-- Defias Watchman  http://www.wowwiki.com/Defias_Rapier    http://www.wowhead.com/item=1925#dropped-by
delete from reference_loot_template where item=1925 and entry=24077;
delete from creature_loot_template where item=1925;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1725', '1925', '8');

-- Undead_Dynamiter http://www.wowwiki.com/Petrified_Shinbone  http://www.wowhead.com/item=1958
delete from reference_loot_template where item=1958 and entry=24077;
delete from creature_loot_template where item=1958;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('625', '1958', '5');

-- Skeletal Miner http://www.wowwiki.com/Skeletal_Miner  http://www.wowhead.com/item=1959
delete from reference_loot_template where item=1959 and entry=24077;
delete from creature_loot_template where item=1959;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('623', '1959', '4');

-- Undead Excavator http://www.wowwiki.com/Undead_Excavator  http://www.wowhead.com/item=4676
delete from reference_loot_template where item=4676 and entry=24077;
delete from creature_loot_template where item=4676;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('624', '4676', '5');

-- Foreman Thistlenettle http://www.wowwiki.com/Foreman_Thistlenettle
-- Foreman Boots= http://www.wowhead.com/item=2168  
-- Foreman Gloves http://www.wowhead.com/item=2167
-- Foreman Leggings http://www.wowhead.com/item=2166
delete from reference_loot_template where item=2168 and entry=24060;
delete from reference_loot_template where item=2167 and entry=24060;
delete from reference_loot_template where item=2166 and entry=24060;
delete from creature_loot_template where item=2168 or item=2167 or item=2166;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('626', '2168', '2');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('626', '2166', '2');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('626', '2167', '2');

-- Working with npc inside The Deadmines


-- Npc, whick i have found stack in objects,walls or roof.
UPDATE `creature` SET `MovementType`='0' WHERE (`guid`='79131');
UPDATE `creature` SET `MovementType`='0' WHERE (`guid`='79240');
UPDATE `creature` SET `MovementType`='0' WHERE (`guid`='79286');
UPDATE `creature` SET `MovementType`='0' WHERE (`guid`='79329');

-- Defias Overseer http://www.wowwiki.com/Defias_Overseer http://www.wowhead.com/npc=634/defias-overseer  
-- Blackened Defias Gloves http://www.wowhead.com/item=10401#dropped-by
delete from reference_loot_template where item=10401 and entry=24078;
delete from creature_loot_template where item=10401;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('634', '10401', '2');
-- Blackened Defias Leggings http://www.wowhead.com/item=10400
delete from reference_loot_template where item=10400 and entry=24078;
delete from creature_loot_template where item=10400;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('634', '10400', '2');

-- Miner johnson http://www.wowwiki.com/Miner_Johnson  http://www.wowhead.com/npc=3586
-- He doesn't have any weapon in hand, so I make it visible
delete from creature_equip_template where entry=3586;
INSERT INTO `creature_equip_template` (`entry`, `equipmodel2`) VALUES ('3586', '14038');
UPDATE `creature_template` SET `equipment_id`='3586' WHERE (`entry`='3586');
-- more often cast of piercing armor (before pause was about 1 minute)
UPDATE `creature_ai_scripts` SET `event_param3`='30000', `event_param4`='35000' WHERE (`id`='358601');

-- Sneed http://www.wowwiki.com/Sneed
-- casting disarm more often
UPDATE `creature_ai_scripts` SET `event_param3`='20000', `event_param4`='25000' WHERE (`id`='64301');

-- Defias Strip Miner http://www.wowwiki.com/Blackened_Defias_Boots  http://www.wowhead.com/npc=4416/defias-strip-miner
delete from reference_loot_template where item=10402 and entry=24078;
delete from creature_loot_template where item=10402;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('4416', '10402', '2');

--  Defias Evoker and  Defias Wizard  http://www.wowwiki.com/Silk-Threaded_Trousers
delete from reference_loot_template where item=1929 and entry=24078;
delete from creature_loot_template where item=1929;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('4418', '1929', '3');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1729', '1929', '3');

-- Goblin Craftsman http://www.wowwiki.com/Goblin_Craftsman  http://www.wowhead.com/item=1944
delete from reference_loot_template where item=1944 and entry=24078;
delete from creature_loot_template where item=1944;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1731', '1944', '3');

-- Goblin Engineer http://www.wowwiki.com/Goblin_Screwdriver http://www.wowhead.com/item=1936#comments 
delete from reference_loot_template where item=1936 and entry=24078;
delete from creature_loot_template where item=1936;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('622', '1936', '8');

-- Gilnid http://www.wowwiki.com/Gilnid 
-- I added for him third phrase from wowwiki.
delete from creature_ai_texts where entry='-1763';
INSERT INTO `creature_ai_texts` (`entry`, `content_default`) VALUES ('-1763', 'The cannons must be finished soon.');
UPDATE `creature_ai_scripts` SET `action1_param3`='-1763' WHERE (`id`='176301');
-- This will make all 3 phrases yelling type. He is boss goblin and should be loud.
UPDATE `creature_ai_texts` SET `type`='1' WHERE (`entry`='-408');
UPDATE `creature_ai_texts` SET `type`='1' WHERE (`entry`='-409');
UPDATE `creature_ai_texts` SET `type`='1' WHERE (`entry`='-1763');

--  Goblin Shipbuilder http://www.wowwiki.com/Goblin_Mail_Leggings  http://www.wowhead.com/item=1943#comments
delete from reference_loot_template where item=1943 and entry=24078;
delete from creature_loot_template where item=1943;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('3947', '1943', '4');

-- Defias Pirate and Defias Squallshaper http://www.wowwiki.com/Blackwater_Cutlass  http://www.wowhead.com/item=1951 
delete from reference_loot_template where item=1951 and entry=24078;
delete from creature_loot_template where item=1951;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('657', '1951', '6');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1732', '1951', '5');

-- Defias Blackguard  http://www.wowwiki.com/Stonemason_Trousers
delete from reference_loot_template where item=1934 and entry=24060;
delete from creature_loot_template where item=1934;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('636', '1934', '5');

-- Mr. Smite http://www.wowwiki.com/Mr._Smite  http://www.wowhead.com/npc=646/mr-smite  http://www.youtube.com/watch?v=PY7frfcqvvw 
--  At 66% and 33% health, he uses the Tauren racial, War Stomp, except with a much longer duration. Each time he does, he changes his weapon from one sword, to two, to a giant mace. - wowhead comment
-- I can not make npc to go to gameobject and change his weapon with EventAI, so he is using hammer whole fight. It would be nice, if someone can script him with c++.
-- http://www.wowhead.com/spell=6436/smites-hammer I think this spell should be used on him on third part of fight when he get hammer.
UPDATE `creature_ai_scripts` SET `action3_type`='11', `action3_param1`='6436',`comment`='Mr Smite - Cast Smite Stomp and Say at 33% HP and smite hammer spell' WHERE (`id`='64606');

-- Edwin VanCleef http://www.wowwiki.com/Edwin_VanCleef_(tactics)
-- correcting 2 mistakes in phrase (before Fools! our cause it righteous! )
UPDATE `creature_ai_texts` SET `content_default`='Fools! Our cause is righteous!' WHERE (`entry`='-172');
-- changing time of his phrases
UPDATE `creature_ai_scripts` SET `event_param1`='50', `comment`='Edwin VanCleef - Yell and Sound at 50% HP' WHERE (`id`='63906');
UPDATE `creature_ai_scripts` SET `event_param1`='75', `comment`='Edwin VanCleef - Yell and Sound at 75% HP' WHERE (`id`='63904');
UPDATE `creature_ai_scripts` SET `event_type`='11', `comment`='Edwin VanCleef - Cast Dual Wield on Spawn' WHERE (`id`='63902');
-- deleting script Edwin VanCleef - Yell and Sound at Creature Death (he should say this phrase on 25%,so I updated other script)
DELETE FROM `creature_ai_scripts` WHERE (`id`='63909');
UPDATE `creature_ai_scripts` SET `action3_type`='1', `action3_param1`='-173',`comment`='Edwin VanCleef - Summons VanCleef Allies at 25% HP and Phrase' WHERE (`id`='63907');





