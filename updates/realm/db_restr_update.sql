-- Create not existing tables

CREATE  TABLE IF NOT EXISTS `account_state` (
  `account_state_id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(16) NOT NULL,
  PRIMARY KEY (`account_state_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

CREATE  TABLE IF NOT EXISTS `client_os_version` (
  `client_os_version_id` TINYINT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`client_os_version_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

CREATE  TABLE IF NOT EXISTS `expansion` (
  `expansion_id` TINYINT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`expansion_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

CREATE  TABLE IF NOT EXISTS `locale` (
  `locale_id` TINYINT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`locale_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

CREATE  TABLE IF NOT EXISTS `punishment_type` (
  `punishment_type_id` TINYINT UNSIGNED NOT NULL,
  `name` CHAR(30) NOT NULL,
  PRIMARY KEY (`punishment_type_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- Recreate account table
ALTER TABLE `account` RENAME `account_old`;

CREATE  TABLE IF NOT EXISTS `account` (
  `account_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(16) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `email` VARCHAR(50) NOT NULL DEFAULT '',
  `pass_hash` CHAR(40) NOT NULL DEFAULT '',
  `join_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `registration_ip` VARCHAR(16) NOT NULL DEFAULT '0.0.0.0',
  `expansion_id` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  `account_state_id` TINYINT UNSIGNED NOT NULL DEFAULT 1,
  `locale_id` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  `failed_logins` INT UNSIGNED NOT NULL DEFAULT 0,
  `last_ip` VARCHAR(16) NOT NULL DEFAULT '0.0.0.0',
  `last_local_ip` VARCHAR(16) NOT NULL DEFAULT '0.0.0.0',
  `last_login` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  `opcodes_disabled` INT UNSIGNED NOT NULL DEFAULT 0,
  `account_flags` INT UNSIGNED NOT NULL DEFAULT 0,
  `client_os_version_id` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`) ,
  UNIQUE INDEX `username` (`username` ASC),
  CONSTRAINT `account_state_id` FOREIGN KEY `account_state_id` (`account_state_id`)
    REFERENCES `account_state` (`account_state_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `client_os_version_id` FOREIGN KEY `client_os_version_id` (`client_os_version_id`)
    REFERENCES `client_os_version` (`client_os_version_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `expansion_id` FOREIGN KEY `expansion_id` (`expansion_id`)
    REFERENCES `expansion` (`expansion_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

-- Update account_login table
ALTER TABLE account_login DROP PRIMARY KEY;
ALTER TABLE account_login
  CHANGE `id` `account_id` INT UNSIGNED NOT NULL,
  CHANGE `logindate` `login_date` INT(11) NOT NULL,
  MODIFY `ip` VARCHAR(16) NOT NULL,
  MODIFY `local_ip` VARCHAR(16) NOT NULL,
  ADD PRIMARY KEY (`account_id`, `login_date`),
  ADD CONSTRAINT `FK_account_login_account_id` FOREIGN KEY `account_id` (`account_id`)
    REFERENCES `account` (`account_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  ENGINE = InnoDB;

-- Update ip_banned table
ALTER TABLE ip_banned DROP PRIMARY KEY;
ALTER TABLE ip_banned
  MODIFY `ip` CHAR(16) NOT NULL,
  CHANGE `bandate` `ban_date` INT(11) NOT NULL,
  CHANGE `unbandate` `unban_date` INT(11) NOT NULL,
  CHANGE `bannedby` `banned_by` VARCHAR(16) NOT NULL,
  CHANGE `banreason` `ban_reason` VARCHAR(100) NOT NULL,
  ADD PRIMARY KEY (`ip`, `ban_date`);

-- Update email_banned table
ALTER TABLE email_banned DROP PRIMARY KEY;
ALTER TABLE email_banned
  CHANGE `bandate` `ban_date` INT(11) NOT NULL,
  CHANGE `bannedby` `banned_by` VARCHAR(16) NOT NULL,
  CHANGE `banreason` `ban_reason` VARCHAR(100) NOT NULL,
  ADD PRIMARY KEY (`email`);

-- Recreate pattern_banned table
ALTER TABLE `pattern_banned` RENAME `pattern_banned_old`;

CREATE TABLE IF NOT EXISTS `pattern_banned` (
  `pattern_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_pattern` VARCHAR(255) NOT NULL ,
  `local_ip_pattern` VARCHAR(255) NOT NULL ,
  `comment` CHAR(100) NOT NULL ,
  PRIMARY KEY (`pattern_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- Update realmlist table
ALTER TABLE `realmlist` RENAME `realms`;

ALTER TABLE `realms` DROP KEY name;
ALTER TABLE `realms` DROP KEY idx_name;
ALTER TABLE `realms`
  CHANGE `id` `realm_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  MODIFY `name` VARCHAR(32) NOT NULL,
  CHANGE `address` `ip_address` VARCHAR(16) NOT NULL DEFAULT '127.0.0.1',
  MODIFY `port` INT UNSIGNED NOT NULL DEFAULT 8085,
  MODIFY `icon` TINYINT UNSIGNED NOT NULL DEFAULT 1,
  CHANGE `realmflags` `flags` TINYINT UNSIGNED NOT NULL DEFAULT 6 COMMENT 'Supported masks: 0x1 (invalid, not show in realm list), 0x2 (offline, set by core), 0x4 (show version and build), 0x20 (recommended), 0x40 (new players)',
  MODIFY `timezone` TINYINT UNSIGNED NOT NULL DEFAULT 1,
  DROP COLUMN `allowedSecurityLevel`,
  ADD COLUMN `required_permission_mask` BIGINT UNSIGNED NOT NULL DEFAULT 1 AFTER `timezone`,
  MODIFY `population` FLOAT UNSIGNED NOT NULL DEFAULT 0,
  CHANGE `gamebuild` `allowed_builds` VARCHAR(64) NOT NULL DEFAULT '8606',
  ADD UNIQUE INDEX `name` (`name`),
  ENGINE = InnoDB;

-- Update realmcharacters table
ALTER TABLE `realmcharacters` RENAME `realm_characters`;

ALTER TABLE `realm_characters` DROP KEY `acctid`;
ALTER TABLE `realm_characters` DROP KEY `idx_acctid`;
ALTER TABLE `realm_characters`
  CHANGE `realmid` `realm_id` INT UNSIGNED NOT NULL,
  CHANGE `acctid` `account_id` INT UNSIGNED NOT NULL,
  CHANGE `numchars` `characters_count` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  ADD CONSTRAINT `FK_realm_characters_realm_id` FOREIGN KEY `realm_id` (`realm_id`)
    REFERENCES `realms`(`realm_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_realm_characters_account_id` FOREIGN KEY `account_id` (`account_id`)
    REFERENCES `account`(`account_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  ENGINE = InnoDB;

-- Add new tables: account_permissions, account_punishment, account_support, account_session

CREATE  TABLE IF NOT EXISTS `account_permissions` (
  `account_id` INT UNSIGNED NOT NULL,
  `realm_id` INT UNSIGNED NOT NULL,
  `permission_mask` BIGINT UNSIGNED NOT NULL DEFAULT 1 ,
  PRIMARY KEY (`account_id`, `realm_id`),
  CONSTRAINT `FK_account_permissions_account_id` FOREIGN KEY `account_id` (`account_id`)
    REFERENCES `account` (`account_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `FK_account_permissions_realm_id` FOREIGN KEY `realm_id` (`realm_id` )
    REFERENCES `realms` (`realm_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

CREATE  TABLE IF NOT EXISTS `account_punishment` (
  `account_id` INT UNSIGNED NOT NULL ,
  `punishment_type_id` TINYINT UNSIGNED NOT NULL ,
  `punishment_date` INT(11) NOT NULL ,
  `expiration_date` INT(11) NOT NULL ,
  `punished_by` VARCHAR(45) NOT NULL ,
  `reason` VARCHAR(100) NOT NULL ,
  PRIMARY KEY (`account_id`, `punishment_type_id`, `punishment_date`) ,
  CONSTRAINT `FKpunishment_type_id` FOREIGN KEY `punishment_type_id` (`punishment_type_id`)
    REFERENCES `punishment_type` (`punishment_type_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `FK_account_punishment_account_id` FOREIGN KEY `account_id` (`account_id`)
    REFERENCES `account` (`account_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

CREATE  TABLE IF NOT EXISTS `account_support` (
  `account_id` INT UNSIGNED NOT NULL ,
  `support_points` INT UNSIGNED NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`account_id`) ,
  CONSTRAINT `FK_account_support_account_id` FOREIGN KEY `account_id` (`account_id`)
    REFERENCES `account` (`account_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

CREATE  TABLE IF NOT EXISTS `account_session` (
  `account_id` INT UNSIGNED NOT NULL ,
  `session_key` VARCHAR(80) NOT NULL DEFAULT '' ,
  `v` VARCHAR(80) NOT NULL DEFAULT '' ,
  `s` VARCHAR(80) NOT NULL DEFAULT '' ,
  PRIMARY KEY (`account_id`) ,
  CONSTRAINT `FK_account_session_account_id` FOREIGN KEY `account_id` (`account_id`)
    REFERENCES `account` (`account_id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- Create triggers
DROP TRIGGER IF EXISTS `account_creation`;
DROP TRIGGER IF EXISTS `realm_creation`;

DELIMITER //

CREATE TRIGGER `account_creation` AFTER INSERT ON `account` FOR EACH ROW
BEGIN
    INSERT INTO `account_permissions` (`account_id`, `realm_id`)
        SELECT NEW.`account_id`, `realm_id` FROM realms;
    INSERT INTO `account_support` (`account_id`)
        VALUES (NEW.`account_id`);
    INSERT INTO `account_session` (`account_id`)
        VALUES (NEW.`account_id`);
    INSERT INTO `realm_characters` (`account_id`, `realm_id`)
        SELECT NEW.`account_id`, `realm_id` FROM realms;
END

//

DELIMITER //

CREATE TRIGGER `realm_creation` AFTER INSERT ON `realms` FOR EACH ROW
BEGIN
    INSERT INTO `account_permissions` (`account_id`, `realm_id`)
        SELECT `account_id`, NEW.`realm_id` FROM account;
    INSERT INTO `realm_characters` (`account_id`, `realm_id`)
        SELECT `account_id`, NEW.`realm_id` FROM account;
END

//

DELIMITER ;

-- Fill new structure

-- Fill informations tables

INSERT INTO `account_state` (`account_state_id`, `name`) VALUES
(1, 'Active'),
(2, 'IP locked'),
(3, 'Frozen');

INSERT INTO `client_os_version` VALUES
(0, 'Unknown'),
(1, 'Microsoft Windows'),
(2, 'Apple Macintosh OSX');

INSERT INTO `expansion` VALUES
(0, 'World of Warcraft'),
(1, 'World of Warcraft: The Burning Crusade'),
(2, 'World of Warcraft: Wrath of the Lich King'),
(3, 'World of Warcraft: Cataclysm');

INSERT INTO `punishment_type` VALUES
(1, 'Account mute'),
(2, 'Account ban');

-- Copy old patterns to new table
INSERT INTO pattern_banned (`ip_pattern`, `local_ip_pattern`, `comment`)
    SELECT `ip_pattern`, `localip_pattern`, `comment` FROM pattern_banned_old;

-- clear realm_characters (insertion will be done by account trigger, update will be needed later)
DELETE FROM realm_characters;

-- Copy accounts to new table (this should also create default data in account_permissions, account_support and account_session tables)
INSERT INTO `account` (`account_id`, `username`, `email`, `pass_hash`, `join_date`, `expansion_id`,  `account_state_id`, `locale_id`, `failed_logins`, `last_ip`, `last_local_ip`, `last_login`, `online`, `opcodes_disabled`, `account_flags`)
    SELECT `id`, `username`, `email`, `sha_pass_hash`, `joindate`, `expansion`, `locked` + 1, `locale`, `failed_logins`, `last_ip`, `last_local_ip`, `last_login`, `online`, `opcodesDisabled`, `account_flags` FROM account_old;

UPDATE `account` SET `client_os_version_id` = `client_os_version_id` + 1;
UPDATE `account` SET `client_os_version_id` = 0 WHERE `client_os_version_id` > 2;

-- Copy bans

INSERT INTO `account_punishment`
    SELECT `id`, 2, `bandate`, `unbandate`, `bannedby`, `banreason` FROM `account_banned`;

-- Copy mutes
INSERT INTO `account_punishment`
    SELECT `id`, 1, `mutedate`, `unmutedate`, `mutedby`, `mutereason` FROM `account_mute`;

-- Deactivate inactive bans
UPDATE `account_punishment`
SET `expiration_date` = UNIX_TIMESTAMP()
WHERE `punishment_type_id` = 2 AND
    EXISTS (SELECT `id`
        FROM `account_banned`
        WHERE `id` = `account_punishment`.`account_id` AND
            `bandate` = `account_punishment`.`punishment_date` AND
            `active` = 0 AND `unbandate` > UNIX_TIMESTAMP());

-- Deactivate inactive mutes
UPDATE `account_punishment`
SET `expiration_date` = UNIX_TIMESTAMP()
WHERE `punishment_type_id` = 1 AND
    EXISTS (SELECT `id`
        FROM `account_mute`
        WHERE `id` = `account_punishment`.`account_id` AND
            `mutedate` = `account_punishment`.`punishment_date` AND
            `active` = 0 AND `unmutedate` > UNIX_TIMESTAMP());

-- Update basic permissions
--    lvl 0 - add player permissions to ALL
UPDATE `account_permissions`
SET `permission_mask` = `permission_mask` | 0x000001;

--    lvl 1
UPDATE `account_permissions`
SET `permission_mask` = `permission_mask` | 0x000101
WHERE EXISTS (SELECT 1
          FROM `account_access`
          WHERE `id` = `account_permissions`.`account_id` AND
              `RealmID` = `account_permissions`.`realm_id` AND
              `gmlevel` = 1);

--    lvl 2
UPDATE `account_permissions`
SET `permission_mask` = `permission_mask` | 0x000301
WHERE EXISTS (SELECT 1
          FROM `account_access`
          WHERE `id` = `account_permissions`.`account_id` AND
              `RealmID` = `account_permissions`.`realm_id` AND
              `gmlevel` = 2);

--    lvl 3
UPDATE `account_permissions`
SET `permission_mask` = `permission_mask` | 0x000B03
WHERE EXISTS (SELECT 1
          FROM `account_access`
          WHERE `id` = `account_permissions`.`account_id` AND
              `RealmID` = `account_permissions`.`realm_id` AND
              `gmlevel` = 3);

--    lvl 4
UPDATE `account_permissions`
SET `permission_mask` = `permission_mask` | 0x001B03
WHERE EXISTS (SELECT 1
          FROM `account_access`
          WHERE `id` = `account_permissions`.`account_id` AND
              `RealmID` = `account_permissions`.`realm_id` AND
              `gmlevel` = 4);

--    lvl 5
UPDATE `account_permissions`
SET `permission_mask` = `permission_mask` | 0x003B03
WHERE EXISTS (SELECT 1
          FROM `account_access`
          WHERE `id` = `account_permissions`.`account_id` AND
              `RealmID` = `account_permissions`.`realm_id` AND
              `gmlevel` > 4);

-- TO DO MANUALLY:
-- Update characters count  - you can use something similar:
-- UPDATE accounts.realm_characters SET characters_count = (SELECT COUNT(guid) FROM realmdata.characters WHERE accounts.realm_characters.account_id = realmdata.characters.account) WHERE realm_id = 1;

-- Cleanup
DROP TABLE IF EXISTS `account_old`;
DROP TABLE IF EXISTS `pattern_banned_old`;
DROP TABLE IF EXISTS `account_banned`;
DROP TABLE IF EXISTS `account_mute`;
DROP TABLE IF EXISTS `account_access`;
DROP TABLE IF EXISTS `account_extend`;
DROP TABLE IF EXISTS `account_groups`;
DROP TABLE IF EXISTS `account_keys`;
DROP TABLE IF EXISTS `blocked_ips`;
DROP TABLE IF EXISTS `ip2nation`;
DROP TABLE IF EXISTS `ip2nationCountries`;
DROP TABLE IF EXISTS `online`;