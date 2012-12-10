UPDATE `quest_template` SET `ReqSpellCast1`  = '0' WHERE `entry` = '9931';
DELETE FROM `spell_script_target` WHERE `entry` IN (32314);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(32314, 2, 17138),
(32314, 2, 18064);
