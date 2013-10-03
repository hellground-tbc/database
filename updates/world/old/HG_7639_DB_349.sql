-- The stockade fixes by Firehex
-- http://www.wowwiki.com/Stormwind_Stockade_(original)


-- Adding missing rare npc http://www.wowwiki.com/Bruegal_Ironknuckle
-- He should be added in pool system.
delete from creature where id=1720;
INSERT INTO `creature` VALUES ('573', '1720', '34', '1', '0', '0', '117.431', '79.6761', '-34.8562', '5.61405', '300', '0', '0', '2097', '0', '0', '0');
-- this will make drop rate of his 3 rare items equal and fair. Before bracers http://www.wowwiki.com/Jimmied_Handcuffs  chance (3228) was 60%. 
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='33' WHERE (`entry`='1720') AND (`item`='2942');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='33' WHERE (`entry`='1720') AND (`item`='2941');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='34' WHERE (`entry`='1720') AND (`item`='3228');


-- Modify combat scripts of npc

-- Defias prisoner http://www.wowwiki.com/Defias_Prisoner  1706
--  Casting kick will trigger when player cast something
delete from creature_ai_scripts where entryOrGUID=1706 and action1_param1=1766;
INSERT INTO `creature_ai_scripts` VALUES ('170651', '1706', '13', '0', '100', '1', '8000', '12000', '0', '0', '11', '1766', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Prisoner сasts Kick');

-- Defias inmate     http://www.wowwiki.com/Defias_Inmate 1708
-- Casting rend will work
UPDATE `creature_ai_scripts` SET `action1_param3`='2' WHERE (`id`='170802');

-- http://www.wowwiki.com/Targorr_the_Dread  http://letswow.ru/wowhead/?npc=1696
-- Casting trash will work...In combat log spell will cast on player but should work for npc(checked with combat log).
delete from creature_ai_scripts  where id=169602;
INSERT INTO `creature_ai_scripts` VALUES ('169652', '1696', '0', '0', '100', '1', '10000', '15000', '10000', '12000', '11', '3391', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Targorr the Dread casts Trash');


-- Kam Deepfury  http://www.wowwiki.com/Kam_Deepfury 
-- one of spell was wrong,so i changed it.Changed timer of casting shield slam. Also now he will run on 10% hp,not on 15% (Dwarf should be brave :D) 
delete from creature_ai_scripts where entryOrGUID=1666;
INSERT INTO `creature_ai_scripts` VALUES ('166651', '1666', '4', '0', '100', '0', '0', '0', '0', '0', '11', '7164', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Kam Deepfury casts defensive state on aggro');
INSERT INTO `creature_ai_scripts` VALUES ('166652', '1666', '0', '0', '100', '1', '5000', '10000', '8000', '12000', '11', '8242', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Kam Deepfury casts Shield Slam');
INSERT INTO `creature_ai_scripts` VALUES ('166653', '1666', '2', '0', '100', '0', '50', '0', '0', '0', '11', '31731', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Kam Deepfury casts Shield Wall on 50% hp');
INSERT INTO `creature_ai_scripts` VALUES ('166654', '1666', '2', '0', '100', '0', '10', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Kam Deepfury runs on 10% hp');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '1666';


-- http://www.wowwiki.com/Bazil_Thredd  http://letswow.ru/wowhead/?npc=1716
-- his phrase wasn't correct. I took them from WowWiki.
delete from creature_ai_texts where (`entry`='-1716') or (`entry`='-1717') or (`entry`='-1718');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-1716', 'Tell the warden this prison is ours now!', 'Bazil Thredd 1 phrase');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-1717', 'More of the warden errand boys!', 'Bazil Thredd 2 phrase');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-1718', 'Aah, fresh meat!', 'Bazil Thredd 3 phrase');
-- deleting old script where used action_type=text
delete from creature_ai_scripts where entryOrGUID=1716 and action1_type=1;
INSERT IGNORE INTO `creature_ai_scripts` VALUES ('171660', '1716', '4', '0', '100', '0', '0', '0', '0', '0', '1', '-1716', '-1717', '-1718', '0', '0', '0', '0', '0', '0', '0', '0', 'Bazil Thredd random phrases on aggro');





