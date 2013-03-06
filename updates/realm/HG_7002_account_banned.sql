ALTER TABLE `account_banned`
ADD COLUMN `realm`  int(11) UNSIGNED NOT NULL AFTER `id`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `realm`, `bandate`);
