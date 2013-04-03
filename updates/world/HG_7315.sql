DELETE FROM `event_scripts` WHERE (`id`='4884');
DELETE FROM `creature` WHERE id IN (`9816`, `10316`);

UPDATE `creature_template` SET `unit_flags`='768' WHERE (`entry`='10316');
UPDATE `creature_template` SET `minhealth`='74025', `maxhealth`='74025', `unit_flags`='33555200' WHERE (`entry`='9816');

INSERT INTO `creature_ai_scripts` (`id`, `entryOrGUID`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1031604', '10316', '1', '0', '100', '0', '0', '0', '0', '0', '11', '15281', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'OOC channeling');

INSERT INTO `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
('10316', '229', '1', '0', '174', '162.675', '-240.608', '91.546', '3.8651', '10800', '0', '0', '7402', '0', '0', '0'),
('10316', '229', '1', '0', '0', '162.522', '-259.024', '91.5351', '3.12918', '10800', '0', '0', '7402', '0', '0', '0'),
('10316', '229', '1', '0', '0', '144.386', '-240.536', '91.5381', '4.7204', '10800', '0', '0', '7402', '0', '0', '0'),
('10316', '229', '1', '0', '0', '126.21', '-240.492', '91.5378', '5.42333', '10800', '0', '0', '7402', '0', '0', '0'),
('10316', '229', '1', '0', '0', '126.501', '-258.768', '91.5528', '6.27942', '10800', '0', '0', '7402', '0', '0', '0'),
('10316', '229', '1', '0', '0', '126.212', '-276.931', '91.5535', '0.761993', '10800', '0', '0', '7402', '0', '0', '0'),
('10316', '229', '1', '0', '0', '162.71', '-277.227', '91.6119', '2.32572', '10800', '0', '0', '7402', '0', '0', '0'),
('9816', '229', '1', '0', '0', '144.331', '-258.271', '96.3233', '4.6937', '1000000', '0', '0', '24416', '0', '0', '0');

INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('175706', '229', '1', '144.296', '-281.088', '91.5484', '0.492876', '0', '0', '0.243951', '0.969788', '0', '0', '1');

INSERT INTO `custom_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-2100023', ' regains its power and breaks free of its bonds!', '3', '9816');
INSERT INTO `custom_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-2100024', 'Ha! Ha! Ha! Thank you for freeing me, fools. Now let me repay you by charring the flesh from your bones.', '1', '9816');