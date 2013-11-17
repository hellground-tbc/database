/*
SQLyog Trial v11.25 (64 bit)
MySQL - 10.0.4-MariaDB : Database - realmd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `account_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pass_hash` char(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `registration_ip` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  `expansion_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `account_state_id` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `locale_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `failed_logins` int(10) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  `last_local_ip` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `opcodes_disabled` int(10) unsigned NOT NULL DEFAULT '0',
  `account_flags` int(10) unsigned NOT NULL DEFAULT '0',
  `client_os_version_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `username` (`username`),
  KEY `FK_account_state_id` (`account_state_id`),
  KEY `FK_client_os_version_id` (`client_os_version_id`),
  KEY `FK_expansion_id` (`expansion_id`),
  CONSTRAINT `FK_account_state_id` FOREIGN KEY (`account_state_id`) REFERENCES `account_state` (`account_state_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_client_os_version_id` FOREIGN KEY (`client_os_version_id`) REFERENCES `client_os_version` (`client_os_version_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_expansion_id` FOREIGN KEY (`expansion_id`) REFERENCES `expansion` (`expansion_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `account_login` */

DROP TABLE IF EXISTS `account_login`;

CREATE TABLE `account_login` (
  `account_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Id',
  `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `local_ip` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`account_id`,`login_date`),
  CONSTRAINT `FK_account_login_account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `account_login_old` */

DROP TABLE IF EXISTS `account_login_old`;

CREATE TABLE `account_login_old` (
  `id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Id',
  `logindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(30) NOT NULL,
  `local_ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id`,`logindate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `account_permissions` */

DROP TABLE IF EXISTS `account_permissions`;

CREATE TABLE `account_permissions` (
  `account_id` int(10) unsigned NOT NULL,
  `realm_id` int(10) unsigned NOT NULL,
  `permission_mask` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`account_id`,`realm_id`),
  KEY `FK_account_permissions_realm_id` (`realm_id`),
  CONSTRAINT `FK_account_permissions_account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_account_permissions_realm_id` FOREIGN KEY (`realm_id`) REFERENCES `realms` (`realm_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `account_punishment` */

DROP TABLE IF EXISTS `account_punishment`;

CREATE TABLE `account_punishment` (
  `account_id` int(10) unsigned NOT NULL,
  `punishment_type_id` tinyint(3) unsigned NOT NULL,
  `punishment_date` int(11) NOT NULL,
  `expiration_date` int(11) NOT NULL,
  `punished_by` varchar(45) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`account_id`,`punishment_type_id`,`punishment_date`),
  KEY `FK_punishment_type_id` (`punishment_type_id`),
  CONSTRAINT `FK_punishment_type_id` FOREIGN KEY (`punishment_type_id`) REFERENCES `punishment_type` (`punishment_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_account_punishment_account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `account_session` */

DROP TABLE IF EXISTS `account_session`;

CREATE TABLE `account_session` (
  `account_id` int(10) unsigned NOT NULL,
  `session_key` varchar(80) NOT NULL DEFAULT '',
  `v` varchar(80) NOT NULL DEFAULT '',
  `s` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`account_id`),
  CONSTRAINT `FK_account_session_account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `account_state` */

DROP TABLE IF EXISTS `account_state`;

CREATE TABLE `account_state` (
  `account_state_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`account_state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Table structure for table `account_support` */

DROP TABLE IF EXISTS `account_support`;

CREATE TABLE `account_support` (
  `account_id` int(10) unsigned NOT NULL,
  `support_points` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`),
  CONSTRAINT `FK_account_support_account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `client_os_version` */

DROP TABLE IF EXISTS `client_os_version`;

CREATE TABLE `client_os_version` (
  `client_os_version_id` tinyint(3) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`client_os_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `email_banned` */

DROP TABLE IF EXISTS `email_banned`;

CREATE TABLE `email_banned` (
  `email` varchar(50) NOT NULL,
  `ban_date` int(11) NOT NULL,
  `banned_by` varchar(16) NOT NULL,
  `ban_reason` varchar(100) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `expansion` */

DROP TABLE IF EXISTS `expansion`;

CREATE TABLE `expansion` (
  `expansion_id` tinyint(3) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`expansion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ip_banned` */

DROP TABLE IF EXISTS `ip_banned`;

CREATE TABLE `ip_banned` (
  `ip` char(16) NOT NULL,
  `ban_date` int(11) NOT NULL,
  `unban_date` int(11) NOT NULL,
  `banned_by` varchar(16) NOT NULL,
  `ban_reason` varchar(100) NOT NULL,
  PRIMARY KEY (`ip`,`ban_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Banned IPs';

/*Table structure for table `locale` */

DROP TABLE IF EXISTS `locale`;

CREATE TABLE `locale` (
  `locale_id` tinyint(3) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`locale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `pattern_banned` */

DROP TABLE IF EXISTS `pattern_banned`;

CREATE TABLE `pattern_banned` (
  `pattern_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_pattern` varchar(255) NOT NULL,
  `local_ip_pattern` varchar(255) NOT NULL,
  `comment` char(100) NOT NULL,
  PRIMARY KEY (`pattern_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `punishment_type` */

DROP TABLE IF EXISTS `punishment_type`;

CREATE TABLE `punishment_type` (
  `punishment_type_id` tinyint(3) unsigned NOT NULL,
  `name` char(30) NOT NULL,
  PRIMARY KEY (`punishment_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `realm_characters` */

DROP TABLE IF EXISTS `realm_characters`;

CREATE TABLE `realm_characters` (
  `realm_id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `characters_count` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `FK_realm_characters_realm_id` (`realm_id`),
  KEY `FK_realm_characters_account_id` (`account_id`),
  CONSTRAINT `FK_realm_characters_realm_id` FOREIGN KEY (`realm_id`) REFERENCES `realms` (`realm_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_realm_characters_account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `realmcharacters_old` */

DROP TABLE IF EXISTS `realmcharacters_old`;

CREATE TABLE `realmcharacters_old` (
  `realmid` int(11) unsigned NOT NULL DEFAULT '0',
  `acctid` bigint(20) unsigned NOT NULL,
  `numchars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`realmid`,`acctid`),
  KEY `acctid` (`acctid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm Character Tracker';

/*Table structure for table `realms` */

DROP TABLE IF EXISTS `realms`;

CREATE TABLE `realms` (
  `realm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '127.0.0.1',
  `port` int(10) unsigned NOT NULL DEFAULT '8085',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '6' COMMENT 'Supported masks: 0x1 (invalid, not show in realm list), 0x2 (offline, set by core), 0x4 (show version and build), 0x20 (recommended), 0x40 (new players)',
  `timezone` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `required_permission_mask` bigint(20) unsigned NOT NULL DEFAULT '1',
  `population` float unsigned NOT NULL DEFAULT '0',
  `allowed_builds` varchar(64) NOT NULL DEFAULT '8606',
  PRIMARY KEY (`realm_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm System';

/*Table structure for table `unqueue_account` */

DROP TABLE IF EXISTS `unqueue_account`;

CREATE TABLE `unqueue_account` (
  `accid` int(11) unsigned NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` text,
  PRIMARY KEY (`accid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/* Trigger structure for table `account` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `account_creation` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `account_creation` AFTER INSERT ON `account` FOR EACH ROW BEGIN
    INSERT INTO `account_permissions` (`account_id`, `realm_id`)
        SELECT NEW.`account_id`, `realm_id` FROM realms;
    INSERT INTO `account_support` (`account_id`)
        VALUES (NEW.`account_id`);
    INSERT INTO `account_session` (`account_id`)
        VALUES (NEW.`account_id`);
    INSERT INTO `realm_characters` (`account_id`, `realm_id`)
        SELECT NEW.`account_id`, `realm_id` FROM realms;
END */$$


DELIMITER ;

/* Trigger structure for table `realms` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `realm_creation` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `realm_creation` AFTER INSERT ON `realms` FOR EACH ROW BEGIN
    INSERT INTO `account_permissions` (`account_id`, `realm_id`)
        SELECT `account_id`, NEW.`realm_id` FROM account;
    INSERT INTO `realm_characters` (`account_id`, `realm_id`)
        SELECT `account_id`, NEW.`realm_id` FROM account;
END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
