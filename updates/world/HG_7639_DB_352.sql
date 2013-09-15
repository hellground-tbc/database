--  Shadowfang Keep bugs fixes and returning some npc by Firehex
-- I've tried to post links and comments as much  as possible for better understanding what I have changed.


-- Arugal words at start of dungeon
-- i used old Arugal npc(26 lvl) for this. After speech he will disappear(despawn).
delete from creature where id=10000;
delete from creature_ai_texts where entry=-10000;
delete from creature_ai_scripts where entryOrGUID=10000;
INSERT INTO `creature` VALUES ('637', '10000', '33', '1', '0', '859', '-219.429', '2152.53', '81.0945', '5.19163', '120000', '0', '0', '2200', '2079', '0', '0');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`,`type`) VALUES ('-10000', 'I have changed my mind loyal servants, you do not need to bring the prisoner all the way to my study, I will deal with him here and now. Vincent! You and your pathetic ilk will find no more success in routing my sons and I than those beggardly remnants of the Kirin Tor. If you will not serve my Master with your sword and knowledge of his enemies...Your moldering remains will serve ME as a testament to what happens when one is foolish enough to trespass in my domain!','1');
INSERT INTO `creature_ai_scripts` VALUES ('1000051', '10000', '1', '0', '100', '0', '500', '1000', '0', '0', '1', '-10000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arugal monologue to Deathstalker Vincent');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '10000';
-- despawn after speech
INSERT INTO `creature_ai_scripts` VALUES ('1000052', '10000', '1', '0', '100', '0', '25000', '30000', '0', '0', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arugal despawn after monologue');
-- make Arugal not attackable and not aggro(seems only changing faction really helped to do this)
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE (`entry`='10000');
UPDATE `creature_template` SET `unit_flags`='33685766' WHERE (`entry`='10000');
UPDATE `creature_template` SET `flags_extra`='2' WHERE (`entry`='10000');
-- Making Vincent not attackable(he is dead body) If someone interested, his old unit_flag was 37376.
UPDATE `creature_template` SET `unit_flags`='2' WHERE (`entry`='4444');


-- Making npc in prison to attack opposite faction
-- they also should speak,but there are already used C++ scripts for opening door,so I didn't touch this
-- Undead stalker http://www.wowwiki.com/Deathstalker_Adamant
UPDATE `creature_template` SET `faction_A`='68', `faction_H`='68' WHERE (`entry`='3849');
-- Human mage http://www.wowwiki.com/Sorcerer_Ashcrombe
UPDATE `creature_template` SET `faction_A`='12', `faction_H`='12' WHERE (`entry`='3850');
UPDATE `creature_template` SET `unit_flags`='512' WHERE (`entry`='3850');
-- Landen Stilwell This is guy,who can turn in Worgen if you have horse paladin quest and spoke with him.I made script and now he will turn in if you come to him point blank(and quest doesn't matter) http://www.wowhead.com/npc=17822
-- this will make worgen npc (17823 - Crazed worgen) unfriendly for player 
UPDATE `creature_template` SET `faction_A`='24', `faction_H`='24' WHERE (`entry`='17823');
-- scpipt for becoming Worgen
delete from creature_ai_scripts where entryOrGUID=17822;
INSERT INTO `creature_ai_scripts` VALUES ('1782251', '17822', '10', '0', '100', '0', '1', '1', '0', '0', '11', '31310', '0', '0', '2', '24', '0', '0', '38', '0', '0', '0', 'Landen Stilwell Transform');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '17822';
-- attack after morph
INSERT INTO `creature_ai_scripts` VALUES ('1782252', '17822', '10', '0', '100', '1', '0', '20', '0', '0', '20', '1', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', 'Landen Stilwell attack');
UPDATE `creature_template` SET `flags_extra`='0' WHERE (`entry`='17822');
-- morph again if player run from battle( for example,vanish ) and try to run in front of him
INSERT INTO `creature_ai_scripts` VALUES ('1782253', '17822', '10', '0', '100', '1', '0', '10', '20000', '30000', '11', '31310', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Landen Stilwell second Transform ');


-- FIXING PROBLEM  WITH HAUNTED SPELL  http://www.wowhead.com/spell=7057 
-- When proc starts, spirits will spawn with no pause - they can spawn near you around 20-30 spirits in few seconds. This will kill any low level player.
-- This will remove this curse from creature...Only way which i can fix this spell is removing it or spell.dbc(increase pause between procs)
DELETE FROM `creature_ai_scripts` WHERE (`id`='387501');

--  Adding Sever and his casts http://www.wowwiki.com/Sever This is boss from vanilla wow,which was added for world event and then removed.It is up to you to add him or not.He drops 2 good blue for low levels. 
-- Spawn point is blizz-like. (checked screenshots http://www.wowhead.com/npc=14682/sever)
delete from creature where id=14682;
INSERT INTO `creature` VALUES ('649', '14682', '33', '1', '0', '0', '-229.287', '2304.82', '94.6769', '5.89729', '43200', '0', '0', '4689', '0', '0', '0');
-- This will make him attackable
UPDATE `creature_template` SET `faction_A`='24', `faction_H`='24' WHERE (`entry`='14682');
delete from creature_ai_scripts where entryOrGUID=14682;
INSERT INTO `creature_ai_scripts` VALUES ('1468251', '14682', '0', '0', '100', '1', '3000', '5000', '15000', '20000', '11', '17745', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sever  casts  Diseased Spit');
INSERT INTO `creature_ai_scripts` VALUES ('1468252', '14682', '0', '0', '100', '1', '12000', '15000', '25000', '30000', '11', '16508', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sever  casts Intimidating Roar');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '14682';


-- Odo the Blindwatcher http://www.wowwiki.com/Odo_the_Blindwatcher
-- Easy enough, but if you are really concerned about his enrage, he enrages based off his % health, not based off time. - wowhead comment
delete from creature_ai_scripts where entryOrGUID=4279;
INSERT INTO `creature_ai_scripts` VALUES ('427951', '4279', '2', '0', '100', '0', '85', '70', '0', '0', '11', '7481', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Odo the Blindwatcher firstHowling Rage');
INSERT INTO `creature_ai_scripts` VALUES ('427952', '4279', '2', '0', '100', '0', '50', '40', '0', '0', '11', '7483', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Odo the Blindwatcher second Howling Rage');
INSERT INTO `creature_ai_scripts` VALUES ('427953', '4279', '2', '0', '100', '0', '20', '0', '0', '0', '11', '7484', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Odo the Blindwatcher third Howling Rage');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4279';


-- His bats casts http://www.wowwiki.com/Blood_Seeker and http://www.wowwiki.com/Vile_Bat
UPDATE `creature` SET `spawndist`='1' WHERE (`guid`='16258');
delete from creature_ai_scripts where entryOrGUID=3868;
INSERT INTO `creature_ai_scripts` VALUES ('386851', '3868', '0', '0', '100', '1', '2000', '5000', '5000', '8000', '11', '7140', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blood Seeker casts Expose Weakness');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '3868';
delete from creature_ai_scripts where entryOrGUID=3866;
INSERT INTO `creature_ai_scripts` VALUES ('386651', '3866', '0', '0', '100', '1', '3000', '7000', '6000', '10000', '11', '27581', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Vile bat casts disarm');
INSERT INTO `creature_ai_scripts` VALUES ('386652', '3866', '0', '0', '100', '1', '5000', '10000', '10000', '15000', '11', '7145', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Vile bat casts Diving Sweep');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '3866';

-- Deathsworn Captain http://www.wowwiki.com/Deathsworn_Captain http://www.wowhead.com/npc=3872
-- Nobody really answered this very simple quesiton, but he spawns just after the fifth boss (Odo the Blindwatcher) on one of the ramparts of the castle, which is directly above the entrance to the instance. - wowhead comment
-- He should be added to pool system. I tried to use pool_creature and pool_template,but he spawned every time or never.Maybe problem with pool system for creatures.
delete from creature where id=3872;
INSERT INTO `creature` VALUES ('657', '3872', '33', '1', '0', '150', '-220.527', '2099.36', '97.39', '2.77494', '42000', '0', '0', '1563', '0', '0', '0');
-- Make him walking around
UPDATE `creature` SET `spawndist`='2', `MovementType`='1' WHERE (`guid`='657');
-- this make equal chances of dropping armor (http://www.wowhead.com/item=6642) and sword(http://www.wowhead.com/item=6641) from him. (40 and 60 were before)  
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='50' WHERE (`entry`='3872') AND (`item`='6642');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='50' WHERE (`entry`='3872') AND (`item`='6641');


-- Shadowfang Ragetooth http://www.wowwiki.com/Shadowfang_Ragetooth
delete from creature_ai_scripts where entryOrGUID=3859;
INSERT INTO `creature_ai_scripts` VALUES ('385951', '3859', '0', '0', '100', '1', '5', '10', '65000', '70000', '11', '7072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowfang Ragetooth casts Wild Rage');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '3859';


-- Add missing mobs http://www.wowhead.com/npc=3854#.
-- I took positions from silvermoon DB,because i've found nothing on wowhead and only 1 screenshoot.Checked later all 4 of them - positions are fine. Scripts already exist in DB.
-- Script for healing summoned pet (385402) doesn't work. Seems this is core problem. http://www.wowhead.com/spell=7106 I tried to change targets and events - no luck.
delete from creature where id=3854;
INSERT INTO `creature` VALUES ('122', '3854', '33', '1', '0', '0', '-228.95', '2173.95', '79.95', '4.46', '42000', '0', '0', '1452', '0', '0', '0');
INSERT INTO `creature` VALUES ('166', '3854', '33', '1', '0', '0', '-247.36', '2317.81', '97', '5.32', '42000', '0', '0', '1452', '0', '0', '0');
INSERT INTO `creature` VALUES ('181', '3854', '33', '1', '0', '0', '-179.43', '2174.28', '97.57', '4.08', '42000', '0', '0', '1452', '0', '0', '0');
INSERT INTO `creature` VALUES ('291', '3854', '33', '1', '0', '0', '-164.99', '2194.66', '151.45', '0.62', '42000', '0', '0', '1452', '0', '0', '0');


-- book of Ur spawn time (just make it easier,if more than 1 player needs this book);
UPDATE `gameobject` SET `spawntimesecs`='120' WHERE (`id`='36738');


-- Spawning voids after Fenrus the Devourer death http://www.wowhead.com/npc=4627#comments 4 voids must appear after Fenrus death,so i just make them to spawn on players or boss.
-- This will not delete other working scripts from Fenrus the Devourer 
delete from creature_ai_scripts where entryOrGUID=4274 and action1_type=12;
INSERT INTO `creature_ai_scripts` VALUES ('427455', '4274', '6', '0', '100', '0', '0', '0', '0', '0', '12', '4627', '0', '60000', '12', '4627', '4', '60000', '12', '4627', '6', '60000', 'Fenrus the Devourer spawns 3 Arugal Voidwalker');
INSERT INTO `creature_ai_scripts` VALUES ('427456', '4274', '6', '0', '100', '0', '0', '0', '0', '0', '12', '4627', '4', '60000', '0', '0', '0', '0', '0', '0', '0', '0', 'Fenrus the Devourer spawns forth Arugal Voidwalker');

-- Arugal Voidwalkers cast http://www.wowhead.com/spell=7154
delete from creature_ai_scripts where entryOrGUID=4627;
-- don't know why,but c++ scripts for them didn't work for me, so I just disable them
UPDATE `creature_template` SET `ScriptName`='' WHERE (`entry`='4627');
INSERT INTO `creature_ai_scripts` VALUES ('462751', '4627', '14', '0', '100', '1', '200', '20', '5000', '10000', '11', '7154', '6', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'Arugal Voidwalkers healing each other');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4627';


-- Wolf Master Nandos  http://www.wowwiki.com/Wolf_Master_Nandos
delete from creature_ai_scripts where entryOrGUID=3927 and action1_type=1;
delete from creature_ai_texts where entry=-3927;
-- phrase for start of the fight ( Officially he should say this when all 4 wolves in his room are dead,but I don't know how to do this with EventAI.)
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-3927', 'I can\'t believe it! You\'ve destroyed my pack... Now face my wrath!', 'Wolf master Nandos');
INSERT  INTO `creature_ai_scripts` VALUES ('392754', '3927', '4', '0', '100', '0', '0', '0', '0', '0', '1', '-3927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wolf Master Nandos agrro words');

-- bleak worg http://www.wowwiki.com/Bleak_Worg
delete from creature_ai_scripts where entryOrGUID=3861;
INSERT  INTO `creature_ai_scripts` VALUES ('386151', '3861', '0', '0', '100', '1', '6000', '12000', '60000', '70000', '11', '7127', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bleak Worg casts Wavering Will');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '3861';

-- Lupine Horror http://www.wowwiki.com/Lupine_Horror   http://letswow.ru/wowhead/?spell=7132(нужна проверка таймера)  
delete from creature_ai_scripts where entryOrGUID=3863;
INSERT  INTO `creature_ai_scripts` VALUES ('386351', '3863', '0', '0', '100', '1', '7000', '10000', '30000', '40000', '11', '7132', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lupine Horror casts Summon Lupine Delusions');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '3863';
-- No idea how to make Lupine delusions one-shotable,so I just reduced their hp.  http://www.wowwiki.com/Lupine_Delusion
UPDATE `creature_template` SET `minhealth`='50', `maxhealth`='50' WHERE (`entry`='5097');


-- Archmage Arugal  http://www.wowhead.com/npc=4275/archmage-arugal#comments  http://www.wowwiki.com/Archmage_Arugal_(tactics)
-- texts which I took from WowWiki
DELETE FROM `creature_ai_texts` WHERE (`entry`='-4276') or (`entry`='-4278') or (`entry`='-4275') or (`entry`='-4277');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-4275', 'Another falls!', 'Arugal - if player die');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-4276', 'You, too, shall serve! ', 'Arugal - starting fight');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-4277', 'Release your rage! ', '1', 'Arugal - polymorph player');
-- phrase below he should say after Fenrus death from balcony,but i decided just to change words in silvermoon script.
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-4278', 'Who dares interfere with the Sons of Arugal?', '1', 'Arugal - words while combat');
delete from creature_ai_scripts where entryOrGUID=4275;

--  Huge combat script.All scripts are taken from Silvermoon DB,so all credits go to them =) I changed only texts(because they all were wrong),their id and 1 cast.
--  He casts stun and polymorph only when he has low mana.I think it is because phases... I have never worked with them,so I decided to leave it.
INSERT INTO `creature_ai_scripts` VALUES ('427551', '4275', '0', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Prevent Combat Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES ('427552', '4275', '4', '0', '100', '2', '0', '0', '0', '0', '1', '-4276', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Yell on Aggro');
INSERT INTO `creature_ai_scripts` VALUES ('427553', '4275', '4', '0', '100', '2', '0', '0', '0', '0', '11', '7588', '1', '0', '23', '1', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Cast Void Bolt and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES ('427554', '4275', '9', '253', '100', '3', '0', '100', '2900', '4800', '11', '7588', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Cast Void Bolt (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES ('427555', '4275', '3', '253', '100', '3', '6', '0', '100', '100', '21', '1', '0', '0', '23', '1', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Start Combat Movement and Set Phase 2 when Mana is at 6% (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES ('427556', '4275', '9', '253', '100', '2', '35', '100', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Start Combat Movement at 35 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES ('427557', '4275', '9', '253', '100', '2', '15', '35', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Prevent Combat Movement at 15 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES ('427558', '4275', '0', '253', '100', '2', '22000', '26000', '0', '0', '11', '7587', '0', '1', '23', '2', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Shadow Port to Upper Ledge and Set Phase 3');
INSERT INTO `creature_ai_scripts` VALUES ('427559', '4275', '9', '251', '100', '2', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Start Combat Movement Below 5 Yards');
INSERT INTO `creature_ai_scripts` VALUES ('427560', '4275', '3', '251', '100', '3', '100', '12', '100', '100', '21', '0', '0', '0', '23', '-1', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Prevent Combat Movement and Set Phase 1 when Mana is above 12% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES ('427561', '4275', '0', '251', '100', '2', '22000', '26000', '0', '0', '11', '7587', '0', '1', '23', '1', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Shadow Port to Upper Ledge and Set Phase 3');
INSERT INTO `creature_ai_scripts` VALUES ('427562', '4275', '0', '247', '100', '3', '0', '0', '100', '100', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Prevent Combat Movement (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES ('427563', '4275', '9', '247', '100', '3', '0', '100', '2900', '4800', '11', '7588', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Cast Void Bolt (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES ('427564', '4275', '0', '247', '100', '2', '30000', '34000', '0', '0', '11', '7586', '0', '7', '23', '1', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Shadow Port to Spawn Ledge and Set Phase 4 (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES ('427565', '4275', '3', '247', '100', '3', '6', '0', '2000', '2000', '11', '7586', '0', '1', '23', '1', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Shadow Port to Spawn Ledge and Set Phase 4 when Mana is at 6% (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES ('427566', '4275', '3', '239', '100', '3', '100', '7', '100', '100', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Prevent Combat Movement when Mana above 6% (Phase 4)');
INSERT INTO `creature_ai_scripts` VALUES ('427567', '4275', '9', '239', '100', '3', '0', '100', '2900', '4800', '11', '7588', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Cast Void Bolt (Phase 4)');
INSERT INTO `creature_ai_scripts` VALUES ('427568', '4275', '3', '239', '100', '3', '6', '0', '100', '100', '21', '1', '0', '0', '23', '1', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Start Combat Movement and Set Phase 5 when Mana is at 6% (Phase 4)');
INSERT INTO `creature_ai_scripts` VALUES ('427569', '4275', '9', '239', '100', '2', '35', '120', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Start Combat Movement at 35 Yards (Phase 4)');
INSERT INTO `creature_ai_scripts` VALUES ('427570', '4275', '9', '239', '100', '2', '15', '34', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Prevent Combat Movement at 15 Yards (Phase 4)');
INSERT INTO `creature_ai_scripts` VALUES ('427571', '4275', '9', '239', '100', '2', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Start Combat Movement Below 5 Yards (Phase 4)');
INSERT INTO `creature_ai_scripts` VALUES ('427572', '4275', '0', '239', '100', '3', '48000', '55000', '16000', '26000', '11', '7587', '0', '1', '23', '-1', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Shadow Port to Upper Ledge and Set Phase 3 (Phase 4)');
INSERT INTO `creature_ai_scripts` VALUES ('427573', '4275', '0', '239', '100', '3', '48000', '55000', '14000', '24000', '11', '7136', '0', '1', '23', '2', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Shadow Port to Stairs and Set Phase 6 (Phase 4)');
INSERT INTO `creature_ai_scripts` VALUES ('427574', '4275', '9', '223', '100', '2', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Start Combat Movement Below 5 Yards');
INSERT INTO `creature_ai_scripts` VALUES ('427575', '4275', '0', '223', '100', '3', '48000', '55000', '16000', '26000', '11', '7587', '0', '1', '23', '-2', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Shadow Port to Upper Ledge and Set Phase 3 (Phase 5)');
INSERT INTO `creature_ai_scripts` VALUES ('427576', '4275', '0', '223', '100', '3', '48000', '55000', '14000', '24000', '11', '7136', '0', '1', '23', '1', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Shadow Port to Stairs and Set Phase 6 (Phase 5)');
INSERT INTO `creature_ai_scripts` VALUES ('427577', '4275', '3', '223', '100', '3', '100', '12', '100', '100', '21', '0', '0', '0', '23', '-1', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Prevent Combat Movement and Set Phase 4 when Mana is above 12% (Phase 5)');
INSERT INTO `creature_ai_scripts` VALUES ('427578', '4275', '3', '191', '100', '3', '100', '7', '100', '100', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Prevent Combat Movement when Mana above 6% (Phase 6)');
INSERT INTO `creature_ai_scripts` VALUES ('427579', '4275', '9', '191', '100', '3', '0', '100', '2900', '4800', '11', '7588', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Cast Void Bolt (Phase 6)');
INSERT INTO `creature_ai_scripts` VALUES ('427580', '4275', '3', '191', '100', '3', '6', '0', '100', '100', '21', '1', '0', '0', '23', '1', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Start Combat Movement and Set Phase 7 when Mana is at 6% (Phase 6)');
INSERT INTO `creature_ai_scripts` VALUES ('427581', '4275', '9', '191', '100', '2', '35', '120', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Start Combat Movement at 35 Yards (Phase 6)');
INSERT INTO `creature_ai_scripts` VALUES ('427582', '4275', '9', '191', '100', '2', '15', '34', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Prevent Combat Movement at 15 Yards (Phase 6)');
INSERT INTO `creature_ai_scripts` VALUES ('427583', '4275', '9', '191', '100', '2', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Start Combat Movement Below 5 Yards (Phase 6)');
INSERT INTO `creature_ai_scripts` VALUES ('427584', '4275', '0', '191', '100', '3', '48000', '55000', '16000', '26000', '11', '7587', '0', '1', '23', '-3', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Shadow Port to Upper Ledge and Set Phase 3 (Phase 6)');
INSERT INTO `creature_ai_scripts` VALUES ('427585', '4275', '0', '191', '100', '3', '48000', '55000', '14000', '24000', '11', '7586', '0', '1', '23', '-2', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Shadow Port to Spawn Ledge and Set Phase 4 (Phase 6)');
INSERT INTO `creature_ai_scripts` VALUES ('427586', '4275', '9', '127', '100', '2', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Start Combat Movement Below 5 Yards');
INSERT INTO `creature_ai_scripts` VALUES ('427587', '4275', '0', '127', '100', '3', '48000', '55000', '16000', '26000', '11', '7587', '0', '1', '23', '-4', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Shadow Port to Upper Ledge and Set Phase 3 (Phase 7)');
INSERT INTO `creature_ai_scripts` VALUES ('427588', '4275', '0', '127', '100', '3', '48000', '55000', '14000', '24000', '11', '7586', '0', '1', '23', '-3', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Shadow Port to Spawn Ledge and Set Phase 4 (Phase 7)');
INSERT INTO `creature_ai_scripts` VALUES ('427589', '4275', '3', '127', '100', '3', '100', '12', '100', '100', '21', '0', '0', '0', '23', '-1', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Prevent Combat Movement and Set Phase 1 when Mana is above 12% (Phase 7)');
INSERT INTO `creature_ai_scripts` VALUES ('427590', '4275', '0', '0', '100', '1', '20000', '30000', '20000', '31000', '11', '7621', '5', '4', '1', '-4277', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - casting his curse');
INSERT INTO `creature_ai_scripts` VALUES ('427591', '4275', '9', '0', '100', '3', '0', '5', '30200', '38500', '11', '7803', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Cast Thundershock');
INSERT INTO `creature_ai_scripts` VALUES ('427592', '4275', '0', '0', '100', '3', '32000', '46000', '34000', '68000', '1', '-4278', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Yell During Combat');
INSERT INTO `creature_ai_scripts` VALUES ('427593', '4275', '5', '0', '100', '2', '0', '0', '0', '0', '1', '-4275', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - Yell on Player Kill');
INSERT INTO `creature_ai_scripts` VALUES ('427594', '4275', '6', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - On Death set Phase to 0');
INSERT INTO `creature_ai_scripts` VALUES ('427595', '4275', '7', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Arugal - On Evade set Phase to 0');







