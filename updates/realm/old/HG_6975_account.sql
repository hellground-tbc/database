ALTER TABLE `account`
DROP COLUMN `vote`,
DROP COLUMN `operatingSystem`,
ADD COLUMN `os`  varchar(3) NOT NULL DEFAULT '' AFTER `locale`;

