UPDATE `creature_ai_scripts` SET `event_type`='4', `event_param1`='300', `event_param2`='300', `event_param3`='0', `event_param4`='0' WHERE (`id`='684602');

DELETE FROM `creature_ai_scripts` WHERE (`id` in ('1037401','1037402','1037403','1037404','1037601'));
INSERT INTO `creature_ai_scripts` (`id`, `entryOrGUID`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES 
('1037401', '10374', '6', '0', '100', '0', '0', '0', '0', '0', '11', '16103', '6', '18', '0', '0', '0', '0', '0', '0', '0', '0', 'Spire Spider - Summon Spire Spiderling'),
('1037601', '10376', '6', '0', '100', '0', '0', '0', '0', '0', '11', '16103', '6', '18', '0', '0', '0', '0', '0', '0', '0', '0', 'Crystal Fang - Summon Spire Spiderling');
UPDATE `creature_ai_scripts` SET `id`='1037402' WHERE (`id`='1037405');