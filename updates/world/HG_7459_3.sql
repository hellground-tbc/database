-- Fixing drop rate of scepter blue shard  http://www.wowhead.com/item=21137/blue-scepter-shard
--
-- Trinity has decided that this is a bug and it fixed in WotLK
-- https://github.com/TrinityCore/TrinityCore/issues/5002
--
-- No changes since version 1,9
-- http://www.wowwiki.com/Blue_Scepter_Shard  

UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE (`entry`='15571') AND (`item`='21137'); 