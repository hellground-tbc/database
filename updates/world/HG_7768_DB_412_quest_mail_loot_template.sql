-- Fixing table quest_mail_loot_template.
-- Numbers for field RewMailTemplateId in table quest_template are taken from dbc. All entry in quest_mail_loot_template should be the same,not quest id.
-- delete query is needed,because ,if not delete this rows, then will be [Err] 1062 - Duplicate entry '103-11422' for key 'PRIMARY' Anyway next query will return them back.
Delete from quest_mail_loot_template where entry in(99,100,103,104);
UPDATE quest_mail_loot_template a 
JOIN quest_template b ON a.entry = b.entry 
SET a.entry = b.RewMailTemplateId WHERE  b.RewMailTemplateId<>0;

-- add recipe as reward for 1 of seasonal event quest http://www.wowwiki.com/Recipe:_Hot_Apple_Cider
INSERT INTO `quest_mail_loot_template` (`entry`, `item`) VALUES ('187', '34413');
UPDATE `quest_template` SET `RewMailTemplateId`='187', `RewMailDelaySecs`='30' WHERE (`entry`='6984');