-- Scarlet Monastery bugs fixed by Firehex


-- Adding casts for npc outside

-- Scarlet Scout http://www.wowwiki.com/Scarlet_Scout  
delete from creature_ai_scripts where entryOrGUID=4281;
INSERT INTO `creature_ai_scripts` VALUES ('428151', '4281', '9', '0', '100', '1', '0', '30', '8000', '12000', '11', '6979', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Scout casts Fire Shot 30 range');
INSERT INTO `creature_ai_scripts` VALUES ('428152', '4281', '9', '0', '100', '1', '5', '30', '1000', '2000', '11', '6660', '1', '0', '21', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Scout casts Shoot when 5-30 range');
INSERT INTO `creature_ai_scripts` VALUES ('428253', '4281', '4', '0', '25', '0', '0', '0', '0', '0', '1', '-4280', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Scout phrase on aggro');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4281';

-- Scarlet_Magician http://www.wowwiki.com/Scarlet_Magician 
delete from creature_ai_scripts where entryOrGUID=4282;
INSERT INTO `creature_ai_scripts` VALUES ('428251', '4282', '0', '0', '100', '1', '1000', '1500', '3000', '4000', '11', '9053', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Magician casts fireball');
INSERT INTO `creature_ai_scripts` VALUES ('428252', '4282', '4', '0', '25', '0', '0', '0', '0', '0', '1', '-4280', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Magican phrase on aggro');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4282';

-- Scarlet Preserver  http://letswow.ru/wowhead/?npc=4280#abilities  http://www.wowhead.com/npc=4280/scarlet-preserver#comments
delete from creature_ai_scripts where entryOrGUID=4280;
INSERT INTO `creature_ai_scripts` VALUES ('428051', '4280', '0', '0', '100', '1', '3000', '6000', '8000', '15000', '11', '13953', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Preserver casts Holy Strike');
INSERT INTO `creature_ai_scripts` VALUES ('428052', '4280', '14', '0', '100', '1', '400', '40', '5000', '7000', '11', '13952', '6', '9', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Preserver casts Holy Light on ally');
delete from creature_ai_texts where entry=-4280;
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-4280', 'The Scarlet Crusade shall smite the wicked and drive evil from these lands!', 'Scarlet Preserver,Scout,Magican ');
INSERT INTO `creature_ai_scripts` VALUES ('428053', '4280', '4', '0', '25', '0', '0', '0', '0', '0', '1', '-4280', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet preserver phrase on aggro');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4280';

-- Scarlet Augur  http://www.wowhead.com/npc=4284/scarlet-augur 
delete from creature_ai_texts where entry in('-4281','-4282','-4283');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-4281', 'The Light condemns all who harbor evil. Now you will die!', 'Scarlet Augur ,Disciple ');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-4282', 'There is no escape for you. The Crusade shall destroy all who carry the Scourge taint.', 'Scarlet Augur ,Disciple ');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-4283', 'You carry the taint of the Scourge. Prepare to enter the Twisting Nether.', 'Scarlet Augur ,Disciple ');
delete from creature_ai_scripts where entryOrGUID=4284;
INSERT INTO `creature_ai_scripts` VALUES ('428451', '4284', '4', '0', '100', '0', '0', '0', '0', '0', '1', '-4281', '-4282', '-4283', '11', '1490', '1', '4', '0', '0', '0', '0', 'Scarlet Augur random phrases and cast Curse of the Elements');
INSERT INTO `creature_ai_scripts` VALUES ('428452', '4284', '0', '0', '100', '1', '1000', '1500', '3000', '4000', '11', '9613', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Augur casts Shadow Bolt');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4284';

--  Scarlet Disciple http://www.wowhead.com/npc=4285/scarlet-disciple 
delete from creature_ai_scripts where entryOrGUID=4285;
INSERT INTO `creature_ai_scripts` VALUES ('428551', '4285', '0', '0', '100', '1', '1000', '1500', '3500', '4000', '11', '9734', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Disciple casts Holy Smite');
INSERT INTO `creature_ai_scripts` VALUES ('428552', '4285', '14', '0', '100', '1', '450', '40', '8000', '15000', '11', '11642', '6', '9', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Disciple casts Heal on ally');
INSERT INTO `creature_ai_scripts` VALUES ('428553', '4285', '2', '0', '100', '1', '70', '0', '15000', '20000', '11', '11640', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Disciple casts Renew at 70 % hp');
INSERT INTO `creature_ai_scripts` VALUES ('428554', '4285', '4', '0', '25', '0', '0', '0', '0', '0', '1', '-4281', '-4282', '-4283', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Disciple  random phrases');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4285';
-- Blocking movement of some npc
UPDATE `creature` SET `MovementType`='0' WHERE guid IN (39894,39942,39943, 39888, 39912);


-- SCARLET ITEM SET 

-- http://www.wowhead.com/item=10333#comments  SilvermoonDB 1,5  % both npc, wowhead  1,8 and 1,7 %
delete from reference_loot_template where item=10333 and entry=24054;
delete from creature_loot_template where item=10333;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('4292', '10333', '1.6');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('4290', '10333', '1.6');

--  http://www.wowhead.com/?item=10331 silvermoonDB 1,3 %, wowhead 1,8 %
delete from reference_loot_template where item=10331 and entry=24056;
delete from creature_loot_template where item=10331;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('4301', '10331', '1.5');

-- http://www.wowhead.com/?item=10328 silvermoonDB 0,2 %, wowhead 0,3 % Little increase.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.3' WHERE (`entry`='4302') AND (`item`='10328');

-- http://www.wowhead.com/?item=10329 SilvermoonDB 1,3 and 1,4  % , wowhead  1,8 and 1,7 %
delete from reference_loot_template where item=10329 and entry=24054;
delete from creature_loot_template where item=10329 ;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('4298', '10329 ', '1.5');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('4295', '10329 ', '1.5');

-- http://www.wowhead.com/?item=10330 Checked - drops from 2 bosses just fine.

-- http://www.wowhead.com/?item=10332 silvermoon 0,01, wowhead - no info..I let it stay 0,02.


-- Graveyard

-- Scarlet Torturer http://www.wowhead.com/npc=4306/scarlet-torturer#abilities 
-- casting weaker version of immolate,but more often.
UPDATE `creature_ai_scripts` SET `event_param1`='5000', `event_param2`='10000', `event_param3`='25000', `event_param4`='30000', `action1_param1`='9275' WHERE (`id`='430602');

-- Interrogator Vishas http://www.wowwiki.com/Interrogator_Vishas  http://www.wowhead.com/npc=3983/interrogator-vishas  
-- disable old script (he shouldn't cast shield on himself)
UPDATE `creature_template` SET `ScriptName`='' WHERE (`entry`='3983');
-- scripts
delete from creature_ai_scripts where entryOrGUID=3983;
INSERT INTO `creature_ai_scripts` VALUES ('398351', '3983', '0', '0', '100', '1', '5000', '10000', '25000', '30000', '11', '9034', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Interrogator Vishas casts Immolate');
INSERT INTO `creature_ai_scripts` VALUES ('398352', '3983', '0', '0', '100', '1', '3000', '6000', '15000', '20000', '11', '14032', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Interrogator Vishas casts Shadow Word: Pain on random target');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '3983';
-- phrases
delete from creature_ai_texts where entry in('-3983','-3984','-3985','-3986');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `comment`) VALUES ('-3983', 'Tell me... tell me everything!', '5847', 'Interrogator Vishas aggro');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `comment`) VALUES ('-3984', 'Naughty secrets!', '5849', 'Interrogator Vishas 1 low hp');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `comment`) VALUES ('-3985', 'I will rip the secrets from your flesh!', '5850', 'Interrogator Vishas 2 low hp');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `comment`) VALUES ('-3986', 'Purged by pain!', '5848', 'Interrogator Vishas player death');
INSERT INTO `creature_ai_scripts` VALUES ('398353', '3983', '4', '0', '100', '1', '0', '0', '0', '0', '1', '-3983', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Interrogator Vishas aggro phrase');
INSERT INTO `creature_ai_scripts` VALUES ('398354', '3983', '2', '0', '100', '0', '75', '25', '0', '0', '1', '-3984', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Interrogator Vishas first low hp phrase');
INSERT INTO `creature_ai_scripts` VALUES ('398355', '3983', '2', '0', '100', '0', '25', '0', '0', '0', '1', '-3985', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Interrogator Vishas second  low hp phrase');
INSERT INTO `creature_ai_scripts` VALUES ('398356', '3983', '5', '0', '100', '0', '0', '0', '0', '0', '1', '-3986', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Interrogator Vishas killing player phrase');

-- Scarlet Scryer http://www.wowhead.com/npc=4293/scarlet-scryer#comments  http://www.wowwiki.com/Scarlet_Monastery_mobs  This npc doesn't exist,so I add them from SilvermoonDB.
delete from creature where id=4293;
INSERT INTO `creature` VALUES ('705', '4293', '189', '1', '0', '614', '1805.06', '1170.4', '6.82035', '4.7845', '6600', '4', '0', '2400', '1756', '0', '1');
INSERT INTO `creature` VALUES ('722', '4293', '189', '1', '0', '614', '1792.72', '1146.94', '7.49026', '4.82223', '6600', '4', '0', '2400', '1756', '0', '1');
INSERT INTO `creature` VALUES ('1432', '4293', '189', '1', '0', '614', '1782.2', '1118.66', '7.49028', '1.70885', '6600', '4', '0', '2400', '1756', '0', '1');
INSERT INTO `creature` VALUES ('1449', '4293', '189', '1', '0', '614', '1760.24', '1147.9', '7.49025', '3.50354', '6600', '4', '0', '2400', '1756', '0', '1');
INSERT INTO `creature` VALUES ('6945', '4293', '189', '1', '0', '614', '1784.42', '1145.56', '7.49026', '2.89783', '6600', '4', '0', '2400', '1756', '0', '1');
-- scripts for them
delete from creature_ai_scripts where entryOrGUID=4293;
INSERT INTO `creature_ai_scripts` VALUES ('429351', '4293', '0', '0', '100', '1', '500', '1000', '3000', '4000', '11', '9613', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Scryer casts Shadow Bolt');
INSERT INTO `creature_ai_scripts` VALUES ('429352', '4293', '0', '0', '100', '1', '5000', '8000', '18000', '20000', '11', '31292', '5', '9', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Scryer casts Sleep on random target,not tank');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4293';

-- Ironspire  http://www.wowwiki.com/Ironspine 
-- This make his curse castable.
UPDATE `creature_ai_scripts` SET `action1_param3`='2' WHERE (`id`='648901');

-- Haunting Phantasm  http://www.wowhead.com/npc=6427/haunting-phantasm 
delete from creature_ai_scripts where entryOrGUID=6427;
INSERT INTO `creature_ai_scripts` VALUES ('642751', '6427', '0', '0', '100', '1', '3000', '5000', '10000', '15000', '11', '8986', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Haunting Phantasm casts Summon Illusionary Phantasm');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '6427';
-- his summon  http://www.wowhead.com/npc=6493  No idea how to make him immune to AOE spells. So in previous script I just make them appear more often.
UPDATE `creature_template` SET `minhealth`='20', `maxhealth`='20' WHERE (`entry`='6493');

-- Fallen Champion http://www.wowhead.com/npc=6488#abilities
delete from creature_ai_scripts where entryOrGUID=6488;
INSERT INTO `creature_ai_scripts` VALUES ('648851', '6488', '0', '0', '100', '1', '3000', '4000', '4000', '8000', '11', '15496', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Fallen Champion casts Cleave');
INSERT INTO `creature_ai_scripts` VALUES ('648852', '6488', '12', '0', '100', '1', '20', '0', '5000', '10000', '11', '7160', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Fallen Champion casts Execute');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '6488';

-- Bloodmage Thalnos http://www.wowwiki.com/Bloodmage_Thalnos 
-- disable c++ script (casting wrong spell)
UPDATE `creature_template` SET `ScriptName`='' WHERE (`entry`='4543');
-- Scripts from SilvermoonDB. I changed parameters of some spells and timers.
delete from creature_ai_scripts where entryOrGUID=4543;
INSERT INTO `creature_ai_scripts` VALUES ('454301', '4543', '1', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', 'Bloodmage Thalnos - Prevent Combat Movement and Set Phase to 0 on Spawn');
INSERT INTO `creature_ai_scripts` VALUES ('454302', '4543', '4', '0', '100', '2', '0', '0', '0', '0', '1', '-1202', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodmage Thalnos - Yell on Aggro');
INSERT INTO `creature_ai_scripts` VALUES ('454303', '4543', '4', '0', '100', '2', '0', '0', '0', '0', '11', '9613', '1', '0', '23', '1', '0', '0', '0', '0', '0', '0', 'Bloodmage Thalnos - Cast Shadow Bolt and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES ('454304', '4543', '9', '5', '100', '3', '0', '40', '3600', '4800', '11', '9613', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodmage Thalnos - Cast Shadow Bolt (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES ('454305', '4543', '3', '5', '100', '2', '7', '0', '0', '0', '21', '1', '0', '0', '23', '1', '0', '0', '0', '0', '0', '0', 'Bloodmage Thalnos - Start Combat Movement and Set Phase 2 when Mana is at 7% (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES ('454306', '4543', '9', '5', '100', '2', '35', '80', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodmage Thalnos - Start Combat Movement at 35 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES ('454307', '4543', '9', '5', '100', '2', '5', '15', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodmage Thalnos - Prevent Combat Movement at 15 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES ('454308', '4543', '9', '5', '100', '2', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodmage Thalnos - Start Combat Movement Below 5 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES ('454309', '4543', '3', '3', '100', '3', '100', '15', '100', '100', '23', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodmage Thalnos - Set Phase 1 when Mana is above 15% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES ('454310', '4543', '0', '0', '100', '3', '8600', '9500', '14300', '23200', '11', '12470', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodmage Thalnos - Cast Fire Nova');
INSERT INTO `creature_ai_scripts` VALUES ('454311', '4543', '0', '0', '100', '3', '16100', '18500', '38200', '57700', '11', '8814', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodmage Thalnos - Cast Flame Spike');
INSERT INTO `creature_ai_scripts` VALUES ('454312', '4543', '0', '0', '100', '3', '9700', '11000', '8400', '12700', '11', '8053', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodmage Thalnos - Cast Flame Shock');
INSERT INTO `creature_ai_scripts` VALUES ('454313', '4543', '5', '0', '100', '3', '0', '0', '0', '0', '1', '-1204', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodmage Thalnos - Yell on Player Kill');
INSERT INTO `creature_ai_scripts` VALUES ('454314', '4543', '2', '0', '100', '2', '50', '0', '0', '0', '1', '-1203', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodmage Thalnos - Yell at 50% HP');
INSERT INTO `creature_ai_scripts` VALUES ('454315', '4543', '7', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodmage Thalnos - Set Phase to 0 on Evade');
-- adding phrases for this scripts
delete from creature_ai_texts where entry in('-1202','-1203','-1204');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `comment`) VALUES ('-1202', 'We hunger for vengeance.','5844', 'Bloodmage Thalnos aggro phrase');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `comment`) VALUES ('-1203', 'No rest for the angry dead.','5846', 'Bloodmage Thalnos low hp phrase ');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `comment`) VALUES ('-1204', 'More... More souls.','5845', 'Bloodmage Thalnos killing player phrase ');

-- Scorn http://www.wowhead.com/npc=14693/scorn  http://www.wowwiki.com/Scorn  This is boss from vanilla wow,which spawned during world event. He should appear in graveyard after Bloodmage Thalnos death,but I just make him spawn on Thalnos instead.
INSERT INTO `creature_ai_scripts` VALUES ('451366', '4543', '6', '0', '100', '0', '0', '0', '0', '0', '12', '14693', '0', '120000', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorn spawn after Bloodmage Thalnos death');
-- This will make him neutral to players,so they decide kill him or not.
UPDATE `creature_template` SET `faction_A`='32', `faction_H`='32' WHERE (`entry`='14693');
-- update his level for low level players
UPDATE `creature_template` SET `minlevel`='34', `maxlevel`='34' WHERE (`entry`='14693');
-- increasing hp from 881 - too low for boss.
UPDATE `creature_template` SET `minhealth`='8902', `maxhealth`='8902' WHERE (`entry`='14693');
-- blocking c++ scripts ( too long timers and mind flay doesn't work)
UPDATE `creature_template` SET `ScriptName`='' WHERE (`entry`='14693');
-- EventAI scripts 
delete from creature_ai_scripts where entryOrGUID=14693;
INSERT INTO `creature_ai_scripts` VALUES ('1469351', '14693', '0', '0', '100', '1', '15000', '20000', '20000', '23000', '11', '28873', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorn casting Lich Slap');
INSERT INTO `creature_ai_scripts` VALUES ('1469352', '14693', '0', '0', '100', '1', '11000', '12000', '8000', '10000', '11', '8398', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorn casting Frostbolt Volley');
INSERT INTO `creature_ai_scripts` VALUES ('1469353', '14693', '0', '0', '100', '1', '1000', '2000', '4000', '5000', '11', '17313', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorn casting Mind Fly');
INSERT INTO `creature_ai_scripts` VALUES ('1469354', '14693', '0', '0', '100', '1', '8000', '9000', '15000', '20000', '11', '15531', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorn casting Frost Nova');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '14693';


-- Library

-- Scarlet Gallant http://www.wowhead.com/npc=4287/scarlet-gallant
delete from creature_ai_scripts where entryOrGUID=4287;
INSERT INTO `creature_ai_scripts` VALUES ('428751', '4287', '0', '0', '100', '1', '3000', '4000', '15000', '20000', '11', '14517', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Gallant casts Crusader Strike');
INSERT INTO `creature_ai_scripts` VALUES ('428752', '4287', '0', '0', '100', '1', '9000', '10000', '22000', '28000', '11', '32416', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Gallant casts Hammer of Justice');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4287';

-- Scarlet Beastmaster http://www.wowwiki.com/Scarlet_Beastmaster  http://www.wowhead.com/npc=4288/scarlet-beastmaster
delete from creature_ai_scripts where entryOrGUID=4288;
INSERT INTO `creature_ai_scripts` VALUES ('428851', '4288', '9', '0', '100', '1', '5', '30', '8000', '12000', '11', '7896', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Beastmaster casts Exploding Shot when 5-30 range');
INSERT INTO `creature_ai_scripts` VALUES ('428852', '4288', '9', '0', '100', '1', '5', '30', '1000', '1000', '11', '6660', '1', '0', '21', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Beastmaster casts Shoot when 5-30 range');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4281';

-- Houndmaster Loksey  http://www.wowwiki.com/Houndmaster_Loksey  взять звуки при агро из скрипта с++
-- disable c++ script - wrong enrage time and he should not summon new pets.
UPDATE `creature_template` SET `ScriptName`='' WHERE (`entry`='3974');
-- Scripts
delete from creature_ai_scripts where entryOrGUID=3974;
INSERT INTO `creature_ai_scripts` VALUES ('397451', '3974', '2', '0', '100', '0', '25', '0', '0', '0', '11', '28747', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Houndmaster Loksey casts Enrage at 25 % hp');
delete from creature_ai_texts where entry='-3974';
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `comment`) VALUES ('-3974', 'Release the hounds!', '5841', '1', 'Houndmaster Loksey aggro');
INSERT INTO `creature_ai_scripts` VALUES ('397452', '3974', '4', '0', '100', '0', '0', '0', '0', '0', '1', '-3974', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Houndmaster Loksey aggro phrase');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '3974';

-- Scarlet Diviner http://www.wowhead.com/npc=4291 
-- this will delete only my script.
delete from creature_ai_scripts where entryOrGUID=4291 and event_type=13;
INSERT INTO `creature_ai_scripts` VALUES ('429162', '4291', '13', '0', '100', '1', '6000', '8000', '0', '0', '11', '11981', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Diviner casts mana burn if current target is casting');

-- http://www.wowwiki.com/Arcanist_Doan?oldid=2633477  I am not sure what he should cast fireball, but not arcane missiles. Other casts seems fine, so I didn't touch c++ script. If someone wish - change fireball to missiles.


-- Armory

-- Delete extra fire element from dungeon ,he can be summoned only http://www.wowhead.com/?npc=575
delete from creature where id=575;
-- Scarlet Conjuror http://www.wowhead.com/npc=4297  His summon spell has cool animation, so players will see it now.
UPDATE `creature_ai_scripts` SET `event_type`='4', `event_param1`='0', `event_param2`='0', `comment`='Scarlet Conjuror - Summon Fire Elemental on Aggro' WHERE (`id`='429702');
-- Oh,this summon spell can be cast only NOT in combat. This will fix this problem.
UPDATE `creature_ai_scripts` SET `action1_param3`='3' WHERE (`id`='429702');

-- Cathedral

-- Scarlet Sorcerer http://www.wowhead.com/npc=4294/scarlet-sorcerer#abilities 
delete from creature_ai_scripts where id=429463 and action1_param1=8364;
INSERT INTO `creature_ai_scripts` VALUES ('429463', '4294', '0', '0', '100', '1', '10000', '12000', '13500', '19500', '11', '8364', '4', '9', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Sorcererr casts Blizzard on random target');

-- Scarlet Champion http://www.wowhead.com/npc=4302 
-- now he will cast on enemy,not himself.
UPDATE `creature_ai_scripts` SET `action1_param2`='1' WHERE (`id`='430201');

-- High Inquisitor Whitemane http://www.wowwiki.com/Sally_Whitemane  Right now her resurrect spell is commented in c++ script (disabled). Don't know why. Hope someone will fix it soon.

-- High Inquisitor Fairbanks http://www.wowwiki.com/High_Inquisitor_Fairbanks http://www.wowhead.com/npc=4542#abilities His c++ script seems fine for me - didn't touch this.