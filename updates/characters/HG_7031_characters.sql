ALTER TABLE `characters`   
  ADD COLUMN `title` BIGINT(30) UNSIGNED NULL  COMMENT 'Character\'s title' AFTER `level`;

UPDATE `characters` SET `title`= (CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 925), ' ', -1) AS UNSIGNED) | CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 926), ' ', -1) AS UNSIGNED) << 32);