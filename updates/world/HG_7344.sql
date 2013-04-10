UPDATE `creature_template` SET `InhabitType`='4' WHERE (`entry`='14941');
UPDATE `creature_template` SET `type`='11', `spell1`='24311', `AIName`='TotemAI', `ScriptName`='' WHERE (`entry`='14987');
UPDATE `creature_template` SET `AIName`='TotemAI', `ScriptName`='' WHERE (`entry`='15112');

INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('24311', '1', '11380');