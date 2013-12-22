-- set PvP flag for Anzu spirits to allow healing; core support already present
UPDATE `creature_template` SET `unit_flags` = 4096 WHERE `entry` IN (23134, 23135, 23136);
