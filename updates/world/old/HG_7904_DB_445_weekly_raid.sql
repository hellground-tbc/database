ALTER TABLE `game_event` ADD COLUMN `flags` TINYINT NOT NULL DEFAULT '0'  AFTER `world_event` ;
UPDATE `game_event` SET `flags` = 1 WHERE `entry` IN (138,139,140,141,142,143,144);
