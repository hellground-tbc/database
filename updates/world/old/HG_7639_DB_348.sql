-- Ragefire chasm fixes by Firehex

-- Molten Elemental http://www.wowhead.com/npc=11321#comments
delete from creature_ai_scripts where entryOrGUID=11321;
INSERT INTO `creature_ai_scripts` VALUES ('1132151', '11321', '4', '0', '100', '0', '0', '0', '0', '0', '11', '134', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Elemental - casting fire shield on aggro');
INSERT INTO `creature_ai_scripts` VALUES ('1132152', '11321', '0', '0', '100', '1', '60000', '62000', '64000', '65000', '11', '134', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Elemental - recasting fire shield after 60 sec');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '11321';
-- Make nature immune.Don't know how to do this with table,so I just increased nature resistance,so every nature spell should be fully resisted now.
UPDATE `creature_template` SET `resistance3`='5000' WHERE (`entry`='11321');

-- http://www.wowwiki.com/Quest:The_Power_to_Destroy...
-- Both books are random drops from the Searing Blade Cultists or Searing Blade Warlocks  - Server had 100 % chance,it is not random,so I reduce chances a bit(not so much as in wowhead).
-- Spells of Shadow http://www.wowhead.com/item=14395
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry`='11324') AND (`item`='14395');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-26' WHERE (`entry`='11322') AND (`item`='14395');
-- Incantations from the Nether http://www.wowhead.com/item=14396#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry`='11322') AND (`item`='14396');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry`='11324') AND (`item`='14396');