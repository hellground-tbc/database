-- http://www.wowwiki.com/Razorfen_Downs

-- Outside the instance

-- Death's Head Cultist  http://www.wowhead.com/npc=7872 Now he will cast Death & Decay more often.
UPDATE `creature_ai_scripts` SET `action1_param3`='1' WHERE (`id`='787209');

-- Inside

-- Withered Spearhide http://www.wowhead.com/npc=7332#comments
delete from creature_ai_scripts where entryOrGuid=7332 and action1_param1=12246;
INSERT INTO `creature_ai_scripts` VALUES ('733262', '7332', '1', '0', '100', '0', '500', '500', '0', '0', '11', '12246', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Withered Spearhide casts Infected Spine');

-- Withered Warrior http://www.wowhead.com/npc=7327#comments 
UPDATE `creature_ai_scripts` SET `event_chance`='100' WHERE (`id`='732701');
-- this will remove syndicate rep reward
delete from creature_onkill_reputation where creature_id=7327;

-- Withered Quilguard http://www.wowhead.com/npc=7329#abilities 
delete from creature_ai_scripts where entryOrGuid=7329 and event_type=1; 
INSERT INTO `creature_ai_scripts` VALUES ('732952', '7329', '1', '0', '100', '0', '500', '500', '0', '0', '11', '11441', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Withered Quilguard casts Withered Touch');

-- Plaguemaw the Rotting http://www.wowhead.com/npc=7356#abilities 
delete from creature_ai_scripts where entryOrGuid=7356; 
INSERT INTO `creature_ai_scripts` VALUES ('735651', '7356', '0', '0', '100', '1', '2000', '5000', '10000', '20000', '11', '12946', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Plaguemaw the Rotting casts Putrid Stench');
INSERT INTO `creature_ai_scripts` VALUES ('735652', '7356', '0', '0', '100', '0', '500', '500', '0', '0', '11', '11441', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Plaguemaw the Rotting casts Withered Touch');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '7356';

-- Tuten'kash  http://letswow.ru/wowhead/?npc=7355#abilities   
delete from creature_ai_scripts where entryOrGuid=7355; 
INSERT INTO `creature_ai_scripts` VALUES ('735551', '7355', '0', '0', '100', '1', '1000', '5000', '30000', '60000', '11', '12255', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tuten\'kash casts Curse of Tuten\'kash');
INSERT INTO `creature_ai_scripts` VALUES ('735552', '7355', '0', '0', '100', '1', '500', '1000', '18000', '25000', '11', '12252', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Tuten\'kash casts Web Spray');
INSERT INTO `creature_ai_scripts` VALUES ('735553', '7355', '0', '0', '100', '1', '4000', '8000', '7500', '12000', '11', '3391', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Tuten\'kash casts Trash ');
INSERT INTO `creature_ai_scripts` VALUES ('735554', '7355', '1', '0', '100', '0', '1000', '1000', '0', '0', '11', '16428', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Tuten\'kash casts Virulent Poison Proc');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '7355';
UPDATE `creature_template` SET `ScriptName`='' WHERE (`entry`='7355');

-- Lady Falther'ess http://www.wowwiki.com/Lady_Falther'ess  http://www.wowhead.com/npc=14686#comments  http://wow.joystiq.com/2008/10/27/scourge-invasion-lady-faltheress/ info about casts
delete from creature_ai_scripts where entryOrGuid=14686;
INSERT INTO `creature_ai_scripts` VALUES ('1468651', '14686', '1', '0', '100', '0', '500', '500', '0', '0', '11', '33234', '0', '34', '0', '0', '0', '0', '0', '0', '0', '0', 'Lady Falther\'ess human form');
INSERT INTO `creature_ai_scripts` VALUES ('1468652', '14686', '10', '0', '100', '0', '1', '10', '0', '0', '1', '-14686', '0', '0', '28', '0', '33234', '0', '2', '14', '0', '0', 'Lady Falther\'ess remove human form on sight');
INSERT INTO `creature_ai_scripts` VALUES ('1468653', '14686', '4', '0', '100', '0', '0', '0', '0', '0', '28', '0', '33234', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lady_Falther\'ess remove human form on aggro');
INSERT INTO `creature_ai_scripts` VALUES ('1468654', '14686', '0', '0', '100', '1', '5000', '10000', '6000', '10000', '11', '22743', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lady Falther\'ess casts Ribbon of Souls');
INSERT INTO `creature_ai_scripts` VALUES ('1468655', '14686', '0', '0', '100', '1', '8000', '12000', '10000', '15000', '11', '16838', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Lady Falther\'ess casts Banshee Shriek');
INSERT INTO `creature_ai_scripts` VALUES ('1468656', '14686', '0', '0', '100', '1', '1000', '2000', '12000', '20000', '11', '17105', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Lady Falther\'ess casts Banshee Curse');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '14686';
delete from creature_ai_texts where entry='-14686';
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-14686', 'Thank you for becoming my next victim!', 'Lady Falther\'ess aggro');
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35',`dmgschool`='5' WHERE (`entry`='14686');
delete from creature where id=14686;
INSERT INTO `creature` VALUES ('1495', '14686', '129', '1', '0', '0', '2584.27', '695.139', '56.4564', '1.89551', '300', '0', '0', '8744', '4568', '0', '0');

-- Mordresh Fire Eye  http://www.wowwiki.com/Mordresh_Fire_Eye  http://www.wowhead.com/npc=7357 Now all skeletons will attack with boss and phrases will be out of combat.
UPDATE `creature_ai_scripts` SET `action2_type`='39', `action2_param1`='40', `comment`='Modresh Fire Eye - Yell on Aggro and ask help around' WHERE (`id`='735702');
UPDATE `creature_ai_scripts` SET `event_type`='1',`event_param3`='60000', `event_param4`='120000', `comment`='Modresh Fire Eye - Random NonCombat Yell' WHERE (`id`='735711');

-- Thorn Eater Ghoul http://www.wowhead.com/npc=7348#abilities 
delete from creature_ai_scripts where entryOrGuid=7348 and event_type=1; 
INSERT INTO `creature_ai_scripts` VALUES ('734852', '7348', '1', '0', '100', '0', '500', '500', '0', '0', '11', '16800', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Thorn Eater Ghoul casts Ghoul Rot');

-- Frozen Soul http://www.wowhead.com/npc=7352#abilities 
delete from creature_ai_scripts where entryOrGuid=7352 and action1_param1=12531;
INSERT INTO `creature_ai_scripts` VALUES ('735252', '7352', '0', '0', '100', '1', '3000', '10000', '8000', '15000', '11', '12531', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Frozen Soul casts Chilling Touch');

-- Skeletal Frostweaver http://www.wowhead.com/npc=7341#abilities 
delete from creature_ai_scripts where entryOrGuid=7341 and action1_param1=8364;
INSERT INTO `creature_ai_scripts` VALUES ('734160', '7341', '0', '0', '100', '1', '10000', '15000', '15000', '20000', '11', '8364', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Skeletal Frostweaver casts Blizzard');

-- Skeletal Summoner http://www.wowhead.com/npc=7342#comments Kick,pummel don't break cast bar.
UPDATE `creature_template` SET `mechanic_immune_mask`='41943056' WHERE (`entry`='7342');

-- Boneflayer Ghoul http://www.wowhead.com/npc=7347#abilities
delete from creature_ai_scripts where entryOrGuid=7347 and event_type=1; 
INSERT INTO `creature_ai_scripts` VALUES ('734752', '7347', '1', '0', '100', '0', '500', '500', '0', '0', '11', '16800', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Boneflayer Ghoul casts Ghoul Rot');

-- Glutton http://www.wowhead.com/npc=8567#comments  убрать в фразах энраги лишние строчки
delete from creature_ai_texts where entry='-8567';
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-8567', 'Me smell stench of the living!', '1', 'Glutton aggro');
UPDATE `creature_ai_texts` SET `content_default`=' is getting VERY hungry!' WHERE (`entry`='-540');
UPDATE `creature_ai_texts` SET `content_default`=' is getting hungry!' WHERE (`entry`='-539');
delete from creature_ai_scripts where entryOrGuid=8567 and event_type=4; 
INSERT INTO `creature_ai_scripts` VALUES ('856754', '8567', '4', '0', '100', '0', '0', '0', '0', '0', '1', '-8567', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Glutton aggro phrase');

-- Freezing Spirit http://www.wowhead.com/npc=7353#abilities 
delete from creature_ai_scripts where entryOrGuid=7353 and action1_param1=12531;
INSERT INTO `creature_ai_scripts` VALUES ('735352', '7353', '0', '0', '100', '1', '3000', '10000', '8000', '15000', '11', '12531', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Freezing Spirit casts Chilling Touch');

-- Ragglesnout http://www.wowhead.com/npc=7354#comments
UPDATE `creature_ai_scripts` SET `event_type`='2', `event_param1`='40', `event_param2`='0', `action1_param2`='0', `action1_param3`='1', `comment`='Ragglesnout - Cast Heal' WHERE (`id`='735411');