update creature_ai_scripts set action3_type=41 where id in (2090503,2090603,2090803,2090903,2091003,2091103);
update areatrigger_teleport set `name`='The Mechanar (exit)' where id=4461; -- wrong descriptions
update areatrigger_teleport set `name`='The Arcatraz (exit)' where id=4455;
replace into areatrigger_teleport values
('4612', 'The Botanica (2nd Exit)', '0', '530', '3413.65', '1483.32', '182.838', '2.54432'),
('4614', 'The Mechanar (2nd Exit)', '0', '530', '2862.41', '1546.09', '252.161', '0.805457');
update creature_template set faction_A=16 , faction_H=16 where entry=21101;
update creature_template_addon set auras='36120 0' where entry=21101;
