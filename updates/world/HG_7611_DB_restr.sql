ALTER TABLE `command`
  CHANGE security permission_mask BIGINT UNSIGNED NOT NULL DEFAULT 1;

--    lvl 5->
UPDATE `command`
SET `permission_mask` = 0x002801
WHERE `permission_mask` > 4;

--    lvl 4
UPDATE `command`
SET `permission_mask` = 0x001801
WHERE `permission_mask` = 4;

--    lvl 3
UPDATE `command`
SET `permission_mask` = 0x000801
WHERE `permission_mask` = 3;

--    lvl 2
UPDATE `command`
SET `permission_mask` = 0x000201
WHERE `permission_mask` = 2;

UPDATE `command`
SET `permission_mask` = 0x000101
WHERE `permission_mask` = 1;

UPDATE `command`
SET `permission_mask` = 0x000001
WHERE `permission_mask` = 0;
