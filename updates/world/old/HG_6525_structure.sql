-- change engine to InnoDB
DROP TABLE IF EXISTS `_temp_scripted_event_id`;
CREATE TABLE `_temp_scripted_event_id` (
	`id` mediumint(8) NOT NULL,
	`ScriptName` char(64) NOT NULL,
	PRIMARY KEY  ( `id` )
) ENGINE = InnoDB CHARACTER SET = utf8 ROW_FORMAT = Compact COMMENT = 'Script library scripted events';

INSERT INTO `_temp_scripted_event_id` ( `id`, `ScriptName` )
SELECT `id`, `ScriptName` FROM `scripted_event_id`;

DROP TABLE `scripted_event_id`;
ALTER TABLE `_temp_scripted_event_id` RENAME `scripted_event_id`;


DROP TABLE IF EXISTS `_temp_scripted_spell_id`;
CREATE TABLE `_temp_scripted_spell_id` (
	`id` mediumint(8) NOT NULL,
	`ScriptName` char(64) NOT NULL,
	PRIMARY KEY  ( `id` )
) ENGINE = InnoDB CHARACTER SET = utf8 ROW_FORMAT = Compact COMMENT = 'Script library scripted spells';

INSERT INTO `_temp_scripted_spell_id` ( `id`, `ScriptName` )
SELECT `id`, `ScriptName` FROM `scripted_spell_id`;

DROP TABLE `scripted_spell_id`;
ALTER TABLE `_temp_scripted_spell_id` RENAME `scripted_spell_id`;
