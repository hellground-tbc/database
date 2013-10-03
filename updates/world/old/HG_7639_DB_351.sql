-- Blackfathom deeps bugs fixes by Firehex

-- Blackfathom Oracle http://www.wowhead.com/npc=4803  
-- casting scripts
delete from creature_ai_scripts  where entryOrGUID=4803;
INSERT INTO `creature_ai_scripts` VALUES ('480351', '4803', '2', '0', '100', '1', '50', '0', '10000', '14000', '11', '11986', '0', '11', '0', '0', '0', '0', '0', '0', '0', '0', 'Blackfathom Oracle casts healing wave on herself at 50% hp');
INSERT INTO `creature_ai_scripts` VALUES ('480352', '4803', '0', '0', '100', '1', '3000', '5000', '15000', '20000', '11', '8363', '4', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Blackfathom Oracle casts Parasite on random target');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4803';

-- http://www.wowwiki.com/Blindlight_Murloc 
-- now he will cast Sunder Armor normally
UPDATE `creature_ai_scripts` SET `action1_param3`='2' WHERE (`id`='481802');

-- http://www.wowwiki.com/Twilight_Aquamancer 
-- this will make him cast frost bolt more often
UPDATE `creature_ai_scripts` SET `event_param3`='5000', `event_param4`='6000' WHERE (`id`='481104');

-- http://www.wowwiki.com/Twilight_Loreseeker 
-- This script works only for casting on friendly targets
UPDATE `creature_ai_scripts` SET `event_type`='14', `event_flags`='0', `event_param1`='700', `event_param2`='30', `event_param3`='0', `event_param4`='0', `action1_param2`='6', `action1_param3`='3' WHERE (`id`='481202');

-- http://www.wowwiki.com/Twilight_Elementalist , http://www.wowwiki.com/Twilight_Shadowmage    
-- updating for this mobs and some others their drop rate of item http://www.wowhead.com/item=2034#dropped-by 
delete from reference_loot_template where item=2034 and entry=24064;
delete from creature_loot_template where item=2034;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('4812', '2034', '2');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('4813', '2034', '2');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('4814', '2034', '2');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('4810', '2034', '2');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('4809', '2034', '2');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('4811', '2034', '2');

-- Old_Serrakis http://www.wowhead.com/npc=4830#encounter
delete from creature_ai_scripts  where entryOrGUID=4830;
INSERT INTO `creature_ai_scripts` VALUES ('483051', '4830', '2', '0', '100', '0', '30', '0', '0', '0', '11', '8434', '0', '34', '0', '0', '0', '0', '0', '0', '0', '0', 'Old Serrakis casts Leech Pulse at 30% hp');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4830';

-- http://www.wowwiki.com/Twilight_Lord_Kelris 
-- this will make him cast sleep on random targets
UPDATE `creature_ai_scripts` SET `action1_param2`='4' WHERE (`id`='483203');
-- Correcting phrase a bit.He should say this when he kills player,but I left it for his death as it was.
UPDATE `creature_ai_texts` SET `content_default`='Dust to dust.' WHERE (`entry`='-568');

-- Near Lord Kelris you should activate 4 candles and door will open. With each activation mobs will appear( for example, http://www.wowwiki.com/Murkshallow_Softshell ). 
-- Problem is what this totally doesn't work. So I just make door open forever until someone will make normal c++ script.
UPDATE `gameobject` SET `state`='0' WHERE (`id`='21117');

-- Aku mai http://www.wowhead.com/npc=4829  
-- Recast his enrage often
UPDATE `creature_ai_scripts` SET `event_param3`='6000', `event_param4`='8000' WHERE (`id`='482902');

