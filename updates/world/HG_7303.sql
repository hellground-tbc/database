UPDATE `creature` SET `spawntimesecs` = '25' WHERE `id` IN (23448);
DELETE FROM `spell_script_target` WHERE `entry` IN (39635,39849);
INSERT INTO `spell_script_target` VALUES
(39849,1,23448),
(39635,1,22917);
DELETE FROM `scripted_spell_id` WHERE `id` = 39635;
