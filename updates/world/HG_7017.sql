DELETE FROM `spell_script_target` WHERE `entry` = 38738;
INSERT INTO `spell_script_target` VALUES
( 38738,1,20736);
DELETE FROM `creature` WHERE `id`= '19963';
UPDATE `creature_template` SET `ScriptName` = 'npc_anger_camp' WHERE `entry` = '22422';
UPDATE `gameobject_template` SET `ScriptName` = 'go_obeliks' WHERE `entry` IN (185195, 185196, 185193, 185197, 185198);
UPDATE `gameobject_template` SET `data6` = '181' WHERE `entry` IN (185195, 185196, 185193, 185197, 185198);

