UPDATE `instance_template` SET `script`='instance_ramparts' WHERE `map`= 543;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 17536;
UPDATE `creature` SET `id` = 17269 WHERE `guid` IN (99977,99978);
