USE characters;

CREATE TABLE IF NOT EXISTS `creature_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawntime` bigint(20) NOT NULL DEFAULT '0',
  `instance` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `creature_respawn` SELECT * FROM `world`.`creature_respawn`;

CREATE TABLE IF NOT EXISTS `gameobject_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawntime` bigint(20) NOT NULL DEFAULT '0',
  `instance` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `gameobject_respawn` SELECT * FROM `world`.`gameobject_respawn`;

CREATE TABLE IF NOT EXISTS `guild_announce_cooldown` (
  `guild_id` int(10) unsigned NOT NULL,
  `cooldown_end` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `guild_announce_cooldown` SELECT * FROM `world`.`guildann_cooldown`;

CREATE TABLE IF NOT EXISTS `map_template`(
  `entry` INT(3) UNSIGNED NOT NULL COMMENT 'MapID',
  `visibility` FLOAT(3) UNSIGNED DEFAULT '533.0' COMMENT 'VisibilityRadius',
  `pathfinding` SMALLINT(1) UNSIGNED DEFAULT '6' COMMENT 'PathFinding Prioririty',
  `lineofsight` SMALLINT(1) UNSIGNED DEFAULT '6' COMMENT 'LineOfSight Prioririty',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `map_template` SELECT * FROM `world`.`map_specifics`;

CREATE TABLE IF NOT EXISTS `reserved_name` (
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player Reserved Names';

INSERT INTO `reserved_name` SELECT * FROM `world`.`reserved_name`;

CREATE TABLE IF NOT EXISTS `spell_disabled` (
  `entry` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell entry',
  `disable_mask` int(8) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Disabled Spell System';

INSERT INTO `spell_disabled` SELECT * FROM `world`.`spell_disabled`;

CREATE TABLE `uptime` (
  `starttime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `startstring` varchar(64) NOT NULL DEFAULT '',
  `uptime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `maxplayers` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`starttime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Uptime system';

INSERT INTO `uptime` SELECT * FROM `world`.`uptime`;

USE realmd;

CREATE TABLE `unqueue_account` (
  `accid` double unsigned NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` text,
  PRIMARY KEY (`accid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO unqueue_account SELECT * FROM `world`.`unqueue_account`;

USE world;

DROP TABLE IF EXISTS `creature_respawn`;
DROP TABLE IF EXISTS `gameobject_respawn`;
DROP TABLE IF EXISTS `guildann_cooldown`;
DROP TABLE IF EXISTS `map_specifics`;
DROP TABLE IF EXISTS `reserved_name`;
DROP TABLE IF EXISTS `spell_disabled`;
DROP TABLE IF EXISTS `unqueue_account`;
DROP TABLE IF EXISTS `uptime`;
