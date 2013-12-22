-- RFK fixes by Firehex  http://www.wowwiki.com/Razorfen_Kraul  http://www.wowwiki.com/Razorfen_Kraul?direction=next&oldid=1385972

-- Quests( not blizzlike fixes)

-- Willix the Importerhttp://wowhead.com/?quest=1144 The problem is what after escorting npc to entrance of dungeon you can't complete quest with him - you need to reset dungeon and return to starting escort point. So I just made clone npc and made quest complete for him.
UPDATE `creature_involvedrelation` SET `id`='2' WHERE (`id`='4508') AND (`quest`='1144');
delete from creature_template where entry=2;
INSERT INTO `creature_template` VALUES ('2', '0', null, '7155', '0', '7155', '0', 'Willix', '', '', '27', '27', '2200', '2200', '0', '0', '0', '1', '69', '69', '2', '1.15', '1', '1', '43', '89', '0', '1374', '2000', '0', '64', '0', '0', '0', '0', '0', '0', '34.452', '47.3715', '100', '7', '4096', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', '0', '0', '', '0', '3', '0', '1', '0', '0', '0', '');
delete from creature where id=2;
INSERT INTO `creature` VALUES ('1259', '2', '1', '1', '0', '0', '-4463.44', '-1667.26', '81.9113', '4.11548', '300', '0', '0', '2200', '0', '0', '0');

-- Blueleaf Tubers http://www.wowhead.com/quest=1221/blueleaf-tubers I deleted item from npc loot and added quest objects. Quest pet should create this objects,but spell doesn't work.
delete from creature_loot_template where item=5876;
delete from gameobject where id=20920;
INSERT INTO `gameobject` VALUES ('52', '20920', '47', '1', '2076.14', '1568.47', '81.4645', '2.61777', '0', '0', '0.965896', '0.258928', '60', '0', '1');
INSERT INTO `gameobject` VALUES ('64', '20920', '47', '1', '2085.43', '1561.65', '81.2662', '5.96749', '0', '0', '0.157195', '-0.987568', '60', '0', '1');
INSERT INTO `gameobject` VALUES ('88', '20920', '47', '1', '2089.86', '1551.23', '81.3361', '4.74227', '0', '0', '0.696463', '-0.717593', '60', '0', '1');
INSERT INTO `gameobject` VALUES ('96', '20920', '47', '1', '2066.31', '1601.76', '62.5841', '1.25118', '0', '0', '0.585575', '0.810618', '60', '0', '1');
INSERT INTO `gameobject` VALUES ('127', '20920', '47', '1', '2057.74', '1617.97', '62.9089', '1.80096', '0', '0', '0.783624', '0.621235', '60', '0', '1');
INSERT INTO `gameobject` VALUES ('128', '20920', '47', '1', '2066.53', '1634.08', '64.1565', '5.05094', '0', '0', '0.577877', '-0.816124', '60', '0', '1');

-- Casting scripts for most npc inside dungeon(some of them already has casts,so I didn't touch them)

-- Razorfen_Handler  http://www.wowhead.com/npc=4530#abilities 
-- delete all Tamed Battleboar - must be summoned only by cast
delete from creature where id=4535;
--  removing loot from summoned creature http://www.wowhead.com/npc=4535
delete from creature_loot_template where entry=4535;
delete from creature_ai_scripts where EntryOrGUID=4530;
INSERT INTO `creature_ai_scripts` VALUES ('453051', '4530', '9', '0', '100', '1', '5', '30', '1000', '2000', '11', '6660', '1', '0', '21', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Handler casts Shoot when 5-30 range');
INSERT INTO `creature_ai_scripts` VALUES ('453052', '4530', '1', '0', '100', '0', '1000', '2000', '0', '0', '11', '8274', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Handler casts Summon Tamed Battleboar');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4530';

-- Razorfen Quilguard  http://www.wowhead.com/npc=4436#abilities добавить боевую стойку если не будет работать клап
delete from creature_ai_scripts where EntryOrGUID=4436;
INSERT INTO `creature_ai_scripts` VALUES ('443651', '4436', '1', '0', '100', '0', '1000', '1000', '0', '0', '11', '7165', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Quilguard casts Battle Stance');
INSERT INTO `creature_ai_scripts` VALUES ('443652', '4436', '4', '0', '100', '0', '0', '0', '0', '0', '11', '8258', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Quilguard casts Devotion Aura');
INSERT INTO `creature_ai_scripts` VALUES ('443653', '4436', '0', '0', '100', '1', '3000', '4000', '8000', '12000', '11', '15548', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Quilguard casts Thunderclap');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4436';

-- Razorfen Geomancer http://www.wowhead.com/npc=4520#abilities  возможно удалить его петов с карты
-- delete all Earth Rumblers - must be summoned only by cast
delete from creature where id=4528;
delete from creature_ai_scripts where EntryOrGUID=4520;
INSERT INTO `creature_ai_scripts` VALUES ('452051', '4520', '1', '0', '100', '0', '2000', '3000', '0', '0', '11', '8270', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Geomancer casts Summon Earth Rumbler');
INSERT INTO `creature_ai_scripts` VALUES ('452052', '4520', '0', '0', '100', '1', '500', '1000', '3000', '3500', '11', '20824', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Geomancer casts Lightning Bolt');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4520';

-- Raging Agamar http://www.wowhead.com/npc=4514#comments 
delete from creature_ai_scripts where EntryOrGUID=4514;
INSERT INTO `creature_ai_scripts` VALUES ('451451', '4514', '2', '0', '100', '0', '50', '0', '0', '0', '11', '8269', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Raging Agamar casts Frenzy at 50% hp');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4514';

-- Agamar http://www.wowhead.com/npc=4511#abilities
delete from creature_ai_scripts where EntryOrGUID=4511;
INSERT INTO `creature_ai_scripts` VALUES ('451151', '4511', '4', '0', '100', '0', '0', '0', '0', '0', '11', '6268', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Agamar casts Rushing Charge on aggro');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4511';

-- Blood of Agamaggan http://www.wowwiki.com/Blood_of_Agamaggan 
delete from creature_ai_scripts where EntryOrGUID=4541;
INSERT INTO `creature_ai_scripts` VALUES ('454151', '4541', '0', '0', '100', '1', '4000', '5000', '20000', '25000', '11', '8282', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Blood of Agamaggan casts Curse of Blood');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4541';

-- Rotting Agamar http://www.wowhead.com/npc=4512#comments 
delete from creature_ai_scripts where EntryOrGUID=4512;
INSERT INTO `creature_ai_scripts` VALUES ('451251', '4512', '0', '0', '100', '1', '4000', '5000', '15000', '25000', '11', '8267', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Rotting Agamar casts Cursed Blood');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4512';

-- Razorfen Warden http://www.wowhead.com/npc=4437#abilities 
delete from creature_ai_scripts where EntryOrGUID=4437;
INSERT INTO `creature_ai_scripts` VALUES ('443751', '4437', '0', '0', '100', '1', '1000', '2000', '15000', '25000', '11', '6533', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Warden casts Net');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4437';

-- Razorfen Defender http://www.wowhead.com/npc=4442#abilities 
delete from creature_ai_scripts where EntryOrGUID=4442;
INSERT INTO `creature_ai_scripts` VALUES ('444251', '4442', '4', '0', '100', '1', '0', '0', '0', '0', '11', '3248', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Defender casts Improved Blocking on aggro');
INSERT INTO `creature_ai_scripts` VALUES ('444252', '4442', '13', '0', '100', '1', '10000', '15000', '0', '0', '11', '11972', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Defender casts Shield Bash on cast');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4442';

-- Razorfen Groundshaker http://www.wowhead.com/npc=4523#abilities
delete from creature_ai_scripts where EntryOrGUID=4523;
INSERT INTO `creature_ai_scripts` VALUES ('452351', '4523', '0', '0', '100', '1', '2000', '3000', '7000', '10000', '11', '13281', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Groundshaker casts Earth Shock');
INSERT INTO `creature_ai_scripts` VALUES ('452352', '4523', '0', '0', '100', '1', '5000', '10000', '15000', '20000', '11', '6524', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Groundshaker casts Ground Tremor');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4523';

-- Razorfen Beastmaster http://www.wowhead.com/npc=4532#abilities 
-- delete all Tamed Hyena - must be summoned only by cast
delete from creature where id=4534;
delete from creature_ai_scripts where EntryOrGUID=4532;
INSERT INTO `creature_ai_scripts` VALUES ('453251', '4532', '1', '0', '100', '0', '1000', '2000', '0', '0', '11', '8276', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Beastmaster casts Summon Tamed Hyena');
INSERT INTO `creature_ai_scripts` VALUES ('453252', '4532', '9', '0', '100', '1', '0', '30', '20000', '25000', '11', '8275', '4', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Beastmaster casts Poisoned Shot 5-30 range');
INSERT INTO `creature_ai_scripts` VALUES ('453253', '4532', '9', '0', '100', '1', '5', '30', '1000', '2000', '11', '6660', '1', '0', '21', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Beastmaster casts Shoot when 5-30 range');

-- Razorfen Dustweaver http://www.wowhead.com/npc=4522#abilities 
-- delete all Wind Howler - must be summoned only by cast
delete from creature where id=4526;
delete from creature_ai_scripts where EntryOrGUID=4522;
INSERT INTO `creature_ai_scripts` VALUES ('452251', '4522', '1', '0', '100', '0', '1000', '2000', '0', '0', '11', '8271', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Dustweaver casts Summon Wind Howler');
INSERT INTO `creature_ai_scripts` VALUES ('452252', '4522', '0', '0', '100', '1', '6000', '8000', '12000', '15000', '11', '6728', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Dustweaver casts Enveloping Winds');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4522';

-- Razorfen Beast Trainer http://www.wowhead.com/npc=4531  
delete from creature_ai_scripts where EntryOrGUID=4531;
INSERT INTO `creature_ai_scripts` VALUES ('453151', '4531', '1', '0', '100', '0', '1000', '2000', '0', '0', '11', '8274', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Beast Trainer casts Summon Tamed Battleboar');
INSERT INTO `creature_ai_scripts` VALUES ('453152', '4531', '9', '0', '100', '1', '0', '30', '12000', '15000', '11', '6984', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Beast Trainer casts Frost Shot 30 range');
INSERT INTO `creature_ai_scripts` VALUES ('453153', '4531', '9', '0', '100', '1', '5', '30', '1000', '2000', '11', '6660', '1', '0', '21', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Beast Trainer casts Shoot when 5-30 range');

-- Razorfen Totemic http://www.wowhead.com/npc=4440#abilities  Puts down Healing Ward V and Earthgrab Totems.
delete from creature_ai_scripts where EntryOrGUID=4440;
delete from creature_ai_scripts where id=606602;
INSERT INTO `creature_ai_scripts` VALUES ('444051', '4440', '0', '0', '100', '1', '1000', '2000', '15000', '20000', '11', '8376', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Totemic casts Earthgrab Totem');
INSERT INTO `creature_ai_scripts` VALUES ('606602', '6066', '0', '0', '100', '3', '1000', '1000', '4800', '5200', '11', '8377', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Earthgrab Totem for npc Cast Earthgrab');
INSERT INTO `creature_ai_scripts` VALUES ('444052', '4440', '2', '0', '100', '1', '65', '0', '25000', '30000', '11', '4971', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Totemic casts Healing Ward at 65% hp');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4440';

-- Quilguard Champion http://www.wowhead.com/npc=4623#abilities
delete from creature_ai_scripts where EntryOrGUID=4623;
INSERT INTO `creature_ai_scripts` VALUES ('462351', '4623', '11', '0', '100', '0', '0', '0', '0', '0', '11', '7164', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Quilguard Champion casts Defensive Stance on spawn'); 
INSERT INTO `creature_ai_scripts` VALUES ('462352', '4623', '4', '0', '100', '0', '0', '0', '0', '0', '11', '8258', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Quilguard Champion casts Devotion Aura on aggro');
INSERT INTO `creature_ai_scripts` VALUES ('462353', '4623', '0', '0', '100', '1', '5000', '7000', '6000', '10000', '11', '15572', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Quilguard Champion casts Sunder Armor');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4623';

-- Razorfen Earthbreaker http://www.wowhead.com/npc=4525#abilities
delete from creature_ai_scripts where EntryOrGUID=4525;
INSERT INTO `creature_ai_scripts` VALUES ('452551', '4525', '0', '0', '100', '1', '2000', '4000', '8000', '10000', '11', '15501', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Earthbreaker casts Earth Shock');
INSERT INTO `creature_ai_scripts` VALUES ('452552', '4525', '0', '0', '100', '1', '5000', '7000', '10000', '15000', '11', '8272', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Earthbreaker casts Mind Tremor');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4525'; 

-- Razorfen Stalker http://www.wowhead.com/npc=6035#abilities 
delete from creature_ai_scripts where EntryOrGUID=6035;
INSERT INTO `creature_ai_scripts` VALUES ('603551', '6035', '1', '0', '100', '0', '500', '500', '0', '0', '11', '22766', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Stalker casts Sneak');
INSERT INTO `creature_ai_scripts` VALUES ('603552', '6035', '0', '0', '100', '1', '1000', '2000', '7000', '10000', '11', '7159', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Stalker casts Backstab');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '6035';

-- Ward Guardian http://www.wowhead.com/npc=4427#abilities 
delete from creature_ai_scripts where EntryOrGUID=4427;
INSERT INTO `creature_ai_scripts` VALUES ('442751', '4427', '14', '0', '100', '1', '600', '40', '5000', '6000', '11', '959', '6', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Ward Guardian casts Healing Wave on ally');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4427';


-- Bosses 

-- Aggem Thorncurse http://www.wowwiki.com/Aggem_Thorncurse 
delete from creature_ai_scripts where EntryOrGUID=4424;
INSERT INTO `creature_ai_scripts` VALUES ('442451', '4424', '0', '0', '100', '0', '1000', '7000', '0', '0', '11', '8286', '0', '34', '0', '0', '0', '0', '0', '0', '0', '0', 'Aggem Thorncurse casts Summon Boar Spirit');
INSERT INTO `creature_ai_scripts` VALUES ('442452', '4424', '17', '0', '100', '0', '6021', '0', '0', '0', '11', '6192', '0', '34', '0', '0', '0', '0', '0', '0', '0', '0', 'Aggem Thorncurse casts Battle Shout when boar spawn');
INSERT INTO `creature_ai_scripts` VALUES ('442453', '4424', '0', '0', '100', '1', '5000', '5000', '10000', '12000', '11', '14900', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', 'Aggem Thorncurse casts Chain Heal');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4424';
-- removing loot from summoned creature http://www.wowhead.com/npc=6021
delete from creature_loot_template where entry=6021;

-- Death Speaker Jargba http://www.wowwiki.com/Death_Speaker_Jargba проверить каст майнд контроля 
delete from creature_ai_scripts where EntryOrGUID=4428;
INSERT INTO `creature_ai_scripts` VALUES ('442851', '4428', '0', '0', '100', '1', '1000', '2000', '4000', '7000', '11', '20825', '1', '9', '0', '0', '0', '0', '0', '0', '0', '0', 'Death Speaker Jargba casts Shadow Bolt');
INSERT INTO `creature_ai_scripts` VALUES ('442852', '4428', '0', '0', '100', '1', '10000', '12000', '25000', '30000', '11', '7645', '5', '9', '0', '0', '0', '0', '0', '0', '0', '0', 'Death Speaker Jargba casts Dominate Mind');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4428';

-- Overlord Ramtusk http://www.wowwiki.com/Overlord_Ramtusk
delete from creature_ai_scripts where EntryOrGUID=4420;
INSERT INTO `creature_ai_scripts` VALUES ('442051', '4420', '1', '0', '100', '0', '1000', '1000', '0', '0', '11', '7165', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Overlord Ramtusk casts Battle Stance');
INSERT INTO `creature_ai_scripts` VALUES ('442052', '4420', '4', '0', '100', '0', '0', '0', '0', '0', '1', '-4420', '0', '0', '11', '6192', '0', '2', '0', '0', '0', '0', 'Overlord Ramtusk casts Battle Shout, phrase on aggro ');
INSERT INTO `creature_ai_scripts` VALUES ('442053', '4420', '0', '0', '100', '1', '5000', '6000', '10000', '15000', '11', '15548', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Overlord Ramtusk casts Thunderclap');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4420';
delete from creature_ai_texts WHERE entry='-4420';
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-4420', 'For Victory! For Agamaggan!', 'Overlord Ramtusk');

-- Razorfen Spearhide http://www.wowhead.com/npc=4438#abilities It is Overlord Ramtusk guard.
delete from creature_ai_scripts where EntryOrGUID=4438;
INSERT INTO `creature_ai_scripts` VALUES ('443851', '4438', '4', '0', '100', '0', '0', '0', '0', '0', '11', '8148', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Spearhide casts Thorns Aura on aggro');
INSERT INTO `creature_ai_scripts` VALUES ('443852', '4438', '0', '0', '100', '1', '5000', '10000', '10000', '15000', '11', '8259', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorfen Spearhide casts Whirling Barrage');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4438';

-- Agathelos_the_Raging http://www.wowwiki.com/Agathelos_the_Raging 
delete from creature_ai_scripts where EntryOrGUID=4422;
INSERT INTO `creature_ai_scripts` VALUES ('442251', '4422', '4', '0', '100', '0', '0', '0', '0', '0', '11', '6268', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Agathelos the Raging casts Rushing Charge on aggro');
INSERT INTO `creature_ai_scripts` VALUES ('442252', '4422', '2', '0', '100', '0', '60', '0', '0', '0', '11', '8269', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Agathelos the Raging casts Frenzy at 60% hp');
INSERT INTO `creature_ai_scripts` VALUES ('442253', '4422', '0', '0', '100', '1', '10000', '10000', '15000', '20000', '11', '8555', '1', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'Agathelos the Raging casts Left for Dead');
INSERT INTO `creature_ai_scripts` VALUES ('442254', '4422', '0', '0', '100', '1', '10000', '15000', '13000', '22000', '11', '8285', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Agathelos the Raging casts Rampage');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4422';

-- Charlga_Razorflank  http://www.wowhead.com/npc=4421#comments  СДЕЛАТЬ ИМУНКИ ЕСЛИ ИХ НЕТУ
delete from creature_ai_scripts where EntryOrGUID=4421;
INSERT INTO `creature_ai_scripts` VALUES ('442151', '4421', '3', '0', '100', '0', '15', '0', '1000', '10000', '11', '8358', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Charlga Razorflank casts Mana Spike at 15% mana');
INSERT INTO `creature_ai_scripts` VALUES ('442152', '4421', '4', '0', '100', '0', '0', '0', '0', '0', '1', '-4421', '-4422', '0', '21', '0', '0', '0', '0', '0', '0', '0', 'Charlga Razorflank block movement and phrases ');
INSERT INTO `creature_ai_scripts` VALUES ('442153', '4421', '2', '0', '100', '0', '50', '0', '0', '0', '1', '-4423', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', 'Charlga Razorflank phrase at 50% hp');
INSERT INTO `creature_ai_scripts` VALUES ('442154', '4421', '0', '0', '100', '1', '13000', '15000', '17000', '20000', '11', '6077', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Charlga Razorflank casts Renew');
INSERT INTO `creature_ai_scripts` VALUES ('442155', '4421', '0', '0', '100', '1', '1000', '1500', '3000', '4000', '11', '8292', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Charlga Razorflank casts Chain Bolt');
INSERT INTO `creature_ai_scripts` VALUES ('442156', '4421', '0', '0', '100', '1', '13000', '13000', '18000', '18000', '11', '8361', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Charlga Razorflank casts Purity');
INSERT INTO `creature_ai_scripts` VALUES ('442157', '4421', '0', '0', '100', '1', '13100', '13100', '18100', '18100', '11', '8292', '1', '9', '0', '0', '0', '0', '0', '0', '0', '0', 'Charlga Razorflank casts Chain Bolt after Purity');
INSERT INTO `creature_ai_scripts` VALUES ('442158', '4421', '6', '0', '100', '0', '0', '0', '0', '0', '1', '-4424', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Charlga Razorflank death phrase');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4421';
-- Phrases
delete from creature_ai_texts WHERE entry in ('-4421','-4422','-4423','-4424');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-4421', 'Troublesome whelps. I\'ll teach you to interfere!', 'Charlga Razorflank aggro');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-4422', 'You outsiders will pay for encroaching on our land!', 'Charlga Razorflank aggro 2');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-4423', 'Bah! My power rules here!', 'Charlga Razorflank 50% hp');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-4424', 'Our new allies will avenge us!', 'Charlga Razorflank death');
-- Immunity. This should me immune to stun,silence and make high shadow resistance
UPDATE `creature_template` SET `resistance5`='5000', `mechanic_immune_mask`='2304' WHERE (`entry`='4421');

-- Roogug http://www.wowhead.com/npc=6168
delete from creature_ai_scripts where EntryOrGUID=6168;
INSERT INTO `creature_ai_scripts` VALUES ('616851', '6168', '1', '0', '100', '0', '1000', '1500', '0', '0', '11', '8270', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Roogug casts Summon Earth Rumbler');
INSERT INTO `creature_ai_scripts` VALUES ('616852', '6168', '0', '0', '100', '1', '1000', '1000', '3000', '3500', '11', '9532', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Roogug casts Lightning Bolt');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '6168';

-- Earthcaller Halmgar http://www.wowhead.com/npc=4842#abilities   He should be added in pool system.
delete from creature where id=4842;
INSERT INTO `creature` VALUES ('224316', '4842', '47', '1', '0', '0', '2114.91', '1698.88', '80.4379', '6.02646', '30000', '0', '0', '2415', '732', '0', '0'); 
UPDATE `creature_template` SET `faction_A`='152', `faction_H`='152' WHERE (`entry`='4842');
delete from creature_ai_scripts where EntryOrGUID=4842;
INSERT INTO `creature_ai_scripts` VALUES ('484251', '4842', '1', '0', '100', '0', '1000', '1500', '0', '0', '11', '8270', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Earthcaller Halmgar casts Summon Earth Rumbler');
INSERT INTO `creature_ai_scripts` VALUES ('484252', '4842', '0', '0', '100', '1', '1500', '2000', '3500', '5000', '11', '20824', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Earthcaller Halmgar casts Lightning Bolt');
INSERT INTO `creature_ai_scripts` VALUES ('484253', '4842', '0', '0', '100', '0', '1000', '1000', '0', '0', '11', '2484', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Earthcaller Halmgar casts Earthbind Totem');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4842';

