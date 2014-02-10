ALTER TABLE `account`
	ADD COLUMN `token_key` VARCHAR(100) NULL DEFAULT '' AFTER `pass_hash`;