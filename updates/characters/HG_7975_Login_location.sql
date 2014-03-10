ALTER TABLE `account_login` ADD COLUMN `LocId` INT(10) UNSIGNED NOT NULL DEFAULT '0'  AFTER `local_ip` ;

