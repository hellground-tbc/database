ALTER TABLE `mail_items`
DROP PRIMARY KEY,
ADD PRIMARY KEY (`item_guid`),
ADD INDEX `idx_mail_id` (`mail_id`) USING BTREE ;