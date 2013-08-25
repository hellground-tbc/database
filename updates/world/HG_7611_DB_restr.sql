ALTER TABLE `command`
  CHANGE security permission_mask BIGINT UNSIGNED NOT NULL DEFAULT 1;

UPDATE `command`
SET `permission_mask` = `permission_mask` | 0x000001
WHERE `permission_mask` = 0;

UPDATE `command`
SET `permission_mask` = `permission_mask` | 0x000101
WHERE `permission_mask` = 1;

--    lvl 2
UPDATE `command`
SET `permission_mask` = `permission_mask` | 0x000301
WHERE `permission_mask` = 2;

--    lvl 3
UPDATE `command`
SET `permission_mask` = `permission_mask` | 0x000B03
WHERE `permission_mask` = 3;

--    lvl 4
UPDATE `command`
SET `permission_mask` = `permission_mask` | 0x001B03
WHERE `permission_mask` = 4;

--    lvl 5->
UPDATE `command`
SET `permission_mask` = `permission_mask` | 0x003B03
WHERE `permission_mask` > 4;