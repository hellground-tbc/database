-- Zul'Farrak fixes by Firehex http://www.wowwiki.com/Zul'Farrak


-- NPC casts 

-- Sandfury Shadowcaster http://www.wowhead.com/npc=5648#abilities 
delete from creature_ai_scripts where id=564864;
INSERT INTO `creature_ai_scripts` VALUES ('564864', '5648', '4', '0', '100', '0', '0', '0', '0', '0', '11', '18396', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Shadowcaster casts Dismounting Blast');

-- Sandfury Witch Doctor http://www.wowhead.com/npc=5650#comments 
delete from creature_ai_scripts where EntryOrGUID=5650 and event_type=14;
INSERT  INTO `creature_ai_scripts` VALUES ('565054', '5650', '14', '0', '100', '1', '2000', '40', '6000', '10000', '11', '17843', '6', '9', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Witch Doctorr casts Flash Heal on ally');

-- Sandfury Soul Eater http://www.wowhead.com/npc=7247#comments Now he should cast heal on others.
UPDATE `creature_ai_scripts` SET `action1_param3`='4' WHERE (`id`='724702');

-- Theka the Martyr http://www.wowhead.com/npc=7272#abilities 
delete from creature_ai_scripts where EntryOrGUID=7272;
INSERT  INTO `creature_ai_scripts` VALUES ('727251', '7272', '0', '0', '100', '1', '3000', '5000', '15000', '20000', '11', '8600', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Theka the Martyr casts Fevered Plague');
INSERT  INTO `creature_ai_scripts` VALUES ('727252', '7272', '2', '0', '100', '0', '20', '0', '0', '0', '11', '11089', '0', '3', '39', '50', '0', '0', '0', '0', '0', '0', 'Theka the Martyr casts Theka Transform and ask help ');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '7272';

-- Antu'sul   http://www.wowhead.com/npc=8127#abilities 
delete from creature_ai_scripts where EntryOrGUID=8127;
INSERT INTO `creature_ai_scripts` VALUES ('812751', '8127', '4', '0', '100', '0', '0', '0', '0', '0', '1', '-8127', '0', '0', '12', '8138', '1', '30000', '12', '8138', '1', '30000', 'Antusul say phrase and summon 2 pets on aggro');
INSERT INTO `creature_ai_scripts` VALUES ('812752', '8127', '4', '0', '100', '0', '0', '0', '0', '0', '12', '8138', '4', '30000', '12', '8138', '4', '30000', '0', '0', '0', '0', 'Antusul summon another 2 pets on aggro');
INSERT INTO `creature_ai_scripts` VALUES ('812753', '8127', '2', '0', '100', '0', '75', '0', '0', '0', '12', '8156', '0', '30000', '1', '-8128', '0', '0', '0', '0', '0', '0', 'Antusul cast Antusul Minion at 75% hp and phrase');
INSERT INTO `creature_ai_scripts` VALUES ('812754', '8127', '2', '0', '100', '0', '25', '0', '0', '0', '12', '8156', '0', '30000', '1', '-8129', '0', '0', '0', '0', '0', '0', 'Antusul cast Antusul Minion at 25% hp and phrase');
INSERT INTO `creature_ai_scripts` VALUES ('812755', '8127', '0', '0', '100', '1', '2500', '4500', '7000', '13500', '11', '15501', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Antusul casts Earth Shock');
INSERT INTO `creature_ai_scripts` VALUES ('812756', '8127', '2', '0', '100', '1', '20', '0', '30000', '40000', '11', '11895', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Antusul casts Healing Wave of Antusul at 20% hp');
INSERT INTO `creature_ai_scripts` VALUES ('812757', '8127', '14', '0', '100', '1', '1500', '40', '14000', '19000', '11', '959', '6', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Antusul casts Healing Wave ');
INSERT INTO `creature_ai_scripts` VALUES ('812758', '8127', '0', '0', '100', '1', '5000', '9000', '11000', '15000', '11', '421', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Antusul casts Chain Lightning');
INSERT INTO `creature_ai_scripts` VALUES ('812759', '8127', '0', '0', '100', '1', '14000', '17000', '22000', '25000', '11', '32062', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Antusul casts Fire Nova Totem ');
INSERT INTO `creature_ai_scripts` VALUES ('812760', '8127', '0', '0', '100', '1', '2000', '5000', '10000', '13000', '11', '8376', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Antusul casts Earthgrab Totem');
INSERT INTO `creature_ai_scripts` VALUES ('812761', '8127', '0', '0', '100', '1', '8000', '11000', '16000', '19000', '11', '11899', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Antusul casts Healing Ward');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '8127';
-- phrases
delete from creature_ai_texts WHERE `comment` LIKE '%Antusul%';
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-8127', 'Lunch has arrived my beautiful children. Tear them to pieces!', '1', 'Antusul aggro');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-8128', 'Rise and defend your master!', '1', 'Antusul 75% hp');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-8129', 'The children of Sul will protect their master. Rise once more Sul ithuz!', '1', 'Antusul 25% hp');

-- Witch Doctor Zum'rah  http://www.wowhead.com/npc=7271  Now he should say phrase on aggro and change faction normally.
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE (`entry`='7271');
UPDATE `creature_ai_scripts` SET `event_param1`='1', `action1_param1`='37' WHERE (`id`='727101');
UPDATE `creature_ai_scripts` SET `event_type`='4' WHERE (`id`='727102');
delete from creature where id=7271;
INSERT INTO `creature` VALUES ('854', '7271', '209', '1', '0', '119', '1911.19', '1013.97', '11.5156', '3.11411', '360000', '0', '0', '10745', '6348', '0', '0');

-- Witch Doctor's Chest http://www.wowhead.com/object=141596#contains
 delete from gameobject_loot_template where entry=141596;
 UPDATE `gameobject_template` SET `data1`='141596' WHERE (`entry`='141596');
 Insert into gameobject_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`) values 
 ('141596', '4599 ', '46', '0', '1'),
 ('141596', '1645 ', '22', '0', '1'),
 ('141596', '4338 ', '17', '0', '1'),
 ('141596', '4306 ', '13', '0', '1'),
 ('141596', '3928 ', '13', '0', '1'),
 ('141596', '8151 ', '9', '0', '1'),
 ('141596', '6149 ', '1.8', '0', '1'),
 ('141596', '9242 ', '0.5', '0', '1'),
 ('141596', '9243 ', '0.01', '0', '1'),
 ('141596', '4026 ', '0.01', '0', '1'),
 ('141596', '4025 ', '0.01', '0', '1'),
 ('141596', '4021 ', '0.01', '0', '1'),
 ('141596', '4022 ', '0.01', '0', '1'),
 ('141596', '4023 ', '0.01', '0', '1'),
 ('141596', '4019 ', '0.01', '0', '1'),
 ('141596', '4024 ', '0.01', '0', '1'),
 ('141596', '4017 ', '0.01', '0', '1'),
 ('141596', '4020 ', '0.01', '0', '1'),
 ('141596', '4018 ', '0.01', '0', '1'),
 ('141596', '3989 ', '0.01', '0', '1'),
 ('141596', '3937 ', '0.01', '0', '1'),
 ('141596', '3938 ', '0.01', '0', '1'),
 ('141596', '3939 ', '0.01', '0', '1'),
 ('141596', '3940 ', '0.01', '0', '1'),
 ('141596', '3941 ', '0.01', '0', '1'),
 ('141596', '3942 ', '0.01', '0', '1'),
 ('141596', '8751 ', '0.01', '0', '1'),
 ('141596', '3963 ', '0.01', '0', '1'),
 ('141596', '3965 ', '0.01', '0', '1'),
 ('141596', '3936 ', '0.01', '0', '1'),
 ('141596', '8749 ', '0.01', '0', '1'),
 ('141596', '4000 ', '0.01', '0', '1'),
 ('141596', '4005 ', '0.01', '0', '1'),
 ('141596', '3964 ', '0.01', '0', '1'),
 ('141596', '3961 ', '0.01', '0', '1'),
 ('141596', '3962 ', '0.01', '0', '1'),
 ('141596', '8750 ', '0.01', '0', '1'),
 ('141596', '3966 ', '0.01', '0', '1'),
 ('141596', '3968 ', '0.01', '0', '1'),
 ('141596', '4007 ', '0.01', '0', '1'),
 ('141596', '4003 ', '0.01', '0', '1'),
 ('141596', '3986 ', '0.01', '0', '1'),
 ('141596', '4001 ', '0.01', '0', '1');
 UPDATE `gameobject_loot_template` SET `maxcount`='8' WHERE (`entry`='141596') AND (`item`='4306');
 UPDATE `gameobject_loot_template` SET `maxcount`='8' WHERE (`entry`='141596') AND (`item`='4338');

-- Zul'Farrak Zombie  http://www.wowhead.com/npc=7286#comments
-- Zul'Farrak Dead Hero http://www.wowhead.com/npc=7276#comments 
delete from gameobject_scripts where id in (select guid from gameobject where id in ('128308','128403'));
insert into gameobject_scripts (id,delay,command,datalong,datalong2,x,y,z,o)
select guid,'3','10','7276','30000',position_x,position_y ,position_z,orientation from gameobject where id=128308;
insert into gameobject_scripts (id,delay,command,datalong,datalong2,x,y,z,o)
select guid,'3','10','7286','30000',position_x,position_y,position_z ,orientation from gameobject where id=128403;

-- Sandfury Executioner http://www.wowwiki.com/Sandfury_Executioner http://www.wowhead.com/npc=7274 
delete from creature_ai_scripts where EntryOrGUID=7274;
INSERT INTO `creature_ai_scripts` VALUES ('727451', '7274', '0', '0', '100', '1', '3000', '5000', '5000', '15000', '11', '15496', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Executioner casts  Cleave');
INSERT INTO `creature_ai_scripts` VALUES ('727452', '7274', '0', '0', '100', '1', '15000', '20000', '20000', '25000', '11', '7160', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Executioner casts Execute');
INSERT INTO `creature_ai_scripts` VALUES ('727453', '7274', '4', '0', '100', '0', '0', '0', '0', '0', '1', '-7274', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Executioner aggro phrase');
INSERT INTO `creature_ai_scripts` VALUES ('727454', '7274', '5', '0', '100', '0', '0', '0', '0', '0', '1', '-7275', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Executioner kill phrase');
delete from creature_ai_texts WHERE `comment` LIKE '%Sandfury Executioner%';
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-7274', 'Let the executions begin.', '1', 'Sandfury Executioner aggro');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-7275', 'Justice is done.', 'Sandfury Executioner kill');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '7274';

-- Shadowpriest Sezz'ziz http://www.wowhead.com/npc=7275#encounter 
delete from creature_ai_scripts where EntryOrGUID=7275 and event_type<>6;
INSERT INTO `creature_ai_scripts` VALUES ('727551', '7275', '0', '0', '100', '1', '500', '1000', '3000', '3500', '11', '15537', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', 'Shadowpriest Sezz ziz casts Shadow Bolt');
INSERT INTO `creature_ai_scripts` VALUES ('727552', '7275', '9', '0', '100', '1', '0', '8', '25000', '35000', '11', '13704', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowpriest Sezz ziz casts Psychic Scream');
INSERT INTO `creature_ai_scripts` VALUES ('727553', '7275', '2', '0', '100', '1', '50', '0', '6000', '10000', '11', '12039', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowpriest Sezz ziz casts Heal');
INSERT INTO `creature_ai_scripts` VALUES ('727554', '7275', '14', '0', '100', '1', '750', '40', '10000', '15000', '11', '8362', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowpriest Sezz ziz casts Renew on ally');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '7275';

-- Nekrum Gutchewer  http://www.wowhead.com/npc=7796#comments
delete from creature_ai_scripts where EntryOrGUID=7796 and event_type<>6;
INSERT INTO `creature_ai_scripts` VALUES ('779651', '7796', '0', '0', '100', '1', '2000', '5000', '20000', '30000', '11', '8600', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Nekrum Gutchewer casts Fevered Plague');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '7296';

-- Pyramid event problems: Npcs don't assist player and don't assist Sergeant Bly. Door will open after 5 minute - that is awful.So at least I open this door for the last boss.
UPDATE `gameobject` SET `state`='0' WHERE (`id`='146084');

-- Sandfury Guardian  http://www.wowhead.com/npc=7268#abilities
delete from creature_ai_scripts where id=726852;
INSERT INTO `creature_ai_scripts` VALUES ('726852', '7268', '0', '0', '100', '1', '2000', '5000', '10000', '20000', '11', '744', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Guardian casts Poison');

-- Chief Ukorz Sandscalp http://www.wowhead.com/npc=7267#comments 
delete from creature_ai_scripts where EntryOrGUID=7267;
INSERT INTO `creature_ai_scripts` VALUES ('726751', '7267', '4', '0', '100', '0', '0', '0', '0', '0', '1', '-7267', '0', '0', '11', '7366', '0', '0', '0', '0', '0', '0', 'Ukorz Sandscalp aggro phrase and Berserker Stance');
INSERT INTO `creature_ai_scripts` VALUES ('726752', '7267', '0', '0', '100', '1', '4000', '5000', '8000', '15000', '11', '15496', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Ukorz Sandscalp casts Cleave');
INSERT INTO `creature_ai_scripts` VALUES ('726753', '7267', '0', '0', '100', '1', '6000', '10000', '10000', '20000', '11', '11837', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Ukorz Sandscalp casts Wide Slash');
INSERT INTO `creature_ai_scripts` VALUES ('726754', '7267', '2', '0', '100', '0', '50', '0', '0', '0', '1', '-7268', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Ukorz Sandscalp say phrase at 50% hp');
INSERT INTO `creature_ai_scripts` VALUES ('726755', '7267', '2', '0', '100', '0', '25', '0', '0', '0', '11', '34409', '0', '2', '1', '-7269', '0', '0', '0', '0', '0', '0', 'Ukorz Sandscalp casts Enrage and say phrase at 25% hp');
delete from creature_ai_texts WHERE `comment` LIKE '%Ukorz Sandscalp%';
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-7267', 'This desert be mine!', '1', 'Ukorz Sandscalp aggro');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-7268', 'The Sandfury reign supreme!', '1', 'Ukorz Sandscalp 50% hp');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-7269', 'Feel the fury of the sands!', '1', 'Ukorz Sandscalp 25% hp');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '7267';

-- Ruuzlu http://www.wowhead.com/npc=7797#comments
delete from creature_ai_scripts where EntryOrGUID=7797;
INSERT INTO `creature_ai_scripts` VALUES ('779751', '7797', '0', '0', '100', '1', '2000', '6000', '10000', '15000', '11', '15496', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Ruuzlu casts Cleave');
INSERT INTO `creature_ai_scripts` VALUES ('779752', '7797', '0', '0', '100', '1', '10000', '20000', '15000', '30000', '11', '38959', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Ruuzlu casts Execute');
INSERT INTO `creature_ai_scripts` VALUES ('779753', '7797', '1', '0', '100', '1', '1000', '1000', '240000', '240000', '11', '7366', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Ruuzlu casts Berserker Stance');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '7797';

-- Hydromancer Velratha http://www.wowhead.com/npc=7795#comments
delete from creature_ai_scripts where EntryOrGUID=7795;
INSERT INTO `creature_ai_scripts` VALUES ('779551', '7795', '0', '0', '100', '1', '500', '1000', '2600', '3000', '11', '38669', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Hydromancer Velratha casts Water Bolt');
INSERT INTO `creature_ai_scripts` VALUES ('779552', '7795', '14', '0', '100', '1', '600', '40', '6000', '10000', '11', '12491', '6', '9', '0', '0', '0', '0', '0', '0', '0', '0', 'Hydromancer Velratha casts Healing Wave on ally');
INSERT  INTO `creature_ai_scripts` VALUES ('779553', '7795', '0', '0', '100', '1', '5000', '15000', '15000', '20000', '11', '11086', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Hydromancer Velratha casts Ward of Zum rah');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '7795';

-- Gahz'rilla http://www.wowhead.com/npc=7273#abilities 
delete from creature_ai_scripts where EntryOrGUID=7273;
INSERT INTO `creature_ai_scripts` VALUES ('727351', '7273', '0', '0', '100', '1', '8000', '10000', '20000', '30000', '11', '11836', '5', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Gahz rilla casts Freeze Solid');
INSERT INTO `creature_ai_scripts` VALUES ('727352', '7273', '0', '0', '100', '1', '3000', '5000', '8000', '10000', '11', '11131', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Gahz rilla casts Icicle');
INSERT INTO `creature_ai_scripts` VALUES ('727353', '7273', '0', '0', '100', '1', '10000', '20000', '20000', '25000', '11', '11902', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Gahz rilla casts Gahz rilla Slam');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '7273';

-- Rare bosses

-- Dustwraith http://www.wowhead.com/npc=10081 
delete from creature_ai_scripts where EntryOrGUID=10081;
INSERT INTO `creature_ai_scripts` VALUES ('1008151', '10081', '0', '0', '100', '1', '2000', '5000', '6000', '10000', '11', '11293', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Dustwraith casts Sinister Strike');
INSERT INTO `creature_ai_scripts` VALUES ('1008152', '10081', '0', '0', '100', '1', '5500', '10000', '11000', '15000', '11', '12251', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Dustwraith casts Virulent Poison');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '10081';
UPDATE `creature_template` SET `faction_A`='37', `faction_H`='37',`unit_flags`='0' WHERE (`entry`='10081');
delete from creature where id=10081;
INSERT INTO `creature` VALUES ('1754', '10081', '209', '1', '0', '0', '1915.34', '1226.61', '9.26382', '3.55814', '180000', '2', '0', '5600', '0', '0', '1');

-- Zerillis http://www.wowhead.com/npc=10082#comments 
delete from creature_ai_scripts where EntryOrGUID=10082;
INSERT INTO `creature_ai_scripts` VALUES ('1008251', '10082', '9', '0', '100', '1', '5', '30', '1000', '1500', '11', '6660', '1', '0', '21', '0', '0', '0', '0', '0', '0', '0', 'Zerillis casts Shoot 5-30 range');
INSERT INTO `creature_ai_scripts` VALUES ('1008252', '10082', '9', '0', '100', '1', '0', '30', '9000', '12000', '11', '12551', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'Zerillis casts Frost Shot 30 range');
INSERT INTO `creature_ai_scripts` VALUES ('1008253', '10082', '4', '0', '100', '0', '0', '0', '0', '0', '11', '6533', '1', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'Zerillis casts Net');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '10082';
delete from creature where id=10082;
INSERT INTO `creature` VALUES ('1806', '10082', '209', '1', '0', '923', '1690.35', '915.923', '10.8375', '4.20216', '180000', '2', '0', '5544', '0', '0', '1');

-- Sandarr Dunereaver http://www.wowhead.com/npc=10080#abilities  
delete from creature_ai_scripts where EntryOrGUID=10080;
INSERT INTO `creature_ai_scripts` VALUES ('1008051', '10080', '0', '0', '100', '1', '2000', '5000', '5000', '8000', '11', '14516', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandarr Dunereaver casts Strike');
INSERT INTO `creature_ai_scripts` VALUES ('1008052', '10080', '0', '0', '100', '1', '2000', '4000', '20000', '30000', '11', '13730', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandarr Dunereaver casts Demoralizing Shout');
INSERT INTO `creature_ai_scripts` VALUES ('1008053', '10080', '13', '0', '100', '1', '7500', '12000', '0', '0', '11', '15615', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandarr Dunereaver casts Pummel when enemy casts');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '10080';
UPDATE `creature_template` SET `faction_A`='37', `faction_H`='37',`unit_flags`='0' WHERE (`entry`='10080');
delete from creature where id=10080;
INSERT INTO `creature` VALUES ('1820', '10080', '209', '1', '0', '0', '1544.14', '1024.85', '9.03831', '5.74547', '300000', '2', '0', '5544', '0', '0', '1');

-- Rare items drop 
-- Shriveled Heart http://letswow.ru/wowhead/?item=9243 Farmer Ray is not correct source.
DELETE FROM `creature_loot_template` WHERE (`entry`='232') AND (`item`='9243');
/*
-- Troll Protector http://www.wowhead.com/item=2040#comments 
-- Brainlash http://www.wowhead.com/item=6440#dropped-by
-- Spellshock Leggings http://www.wowhead.com/item=9484#comments
-- Runed Ring http://www.wowhead.com/item=862#comments 
-- Gutwrencher http://www.wowhead.com/item=5616#comments 
-- Bloodletter Scalpel http://www.wowhead.com/item=9511 
-- Blackmetal Cape http://www.wowhead.com/item=9512#comments
-- Eyegouger http://www.wowhead.com/item=9480#comments
-- Witch Doctor's Cane http://www.wowhead.com/item=9482#comments
-- Flaming Incinerator http://www.wowhead.com/item=9483#dropped-by
*/
-- Creating new reference
delete from reference_loot_template where entry=11111;
Insert into reference_loot_template (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount)
values (11111,'2040','0','1','1','1'),
(11111,'6440','0','1','1','1'),
(11111,'9484','0','1','1','1'),
(11111,'862','0','1','1','1'),
(11111,'5616','0','1','1','1'),
(11111,'9511','0','1','1','1'),
(11111,'9512','0','1','1','1'),
(11111,'9480','0','1','1','1'),
(11111,'9482','0','1','1','1'),
(11111,'9483','0','1','1','1');

-- delete old loot data and add to all dungeon npc.
delete from creature_loot_template where item in(2040,6440,9484,862,5616,9511,9512,9480,9482,9483);
delete from creature_loot_template  where mincountOrRef='-11111';
insert into creature_loot_template (entry,ChanceOrQuestChance,groupid,mincountOrRef)
select entry,'0.1','1','-11111' from creature_template
where entry in(select distinct id from creature where map=209); 
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='100' WHERE (`entry`='10080') AND (`item`='0');