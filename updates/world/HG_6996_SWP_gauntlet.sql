-- update imp trigger and change its localisation, remove not needed emote
update creature_template set modelid_A = 17188, modelid_H = 17188, minlevel = 70, maxlevel = 70, scale = 0.6, ScriptName = "npc_gauntlet_imp_trigger" where entry = 25848;
update creature set position_x = 1697.95, position_y = 501.711, position_z = 86.4437 where guid = 63716;
delete from script_texts where entry = -1811007;

-- modify gauntlet path
delete from waypoint_data where id = 2501;
insert into waypoint_data (id, point, position_x, position_y, position_z, move_type, action_chance) values
(2501, 1, 1685.0, 531.6, 85.3, 1, 100),
(2501, 2, 1672.5, 557.4, 85, 1, 100),
(2501, 3, 1605.9, 599.4, 85, 1, 100),
(2501, 4, 1602.9, 581.4, 85, 1, 100),
(2501, 5, 1623.3, 554.6, 67.7, 1, 100),
(2501, 6, 1655.8, 512.5, 50.6, 1, 100),
(2501, 7, 1628.7, 519.1, 50.6, 1, 100),
(2501, 8, 1564.1, 573.5, 50.6, 1, 100),
(2501, 9, 1561.8, 561.6, 50.6, 1, 100),
(2501, 10, 1580.6, 528.2, 32.3, 1, 100),
(2501, 11, 1595.3, 504.5, 32.7, 1, 100);

-- update assassin immunities
update creature_template set mechanic_immune_mask = 67588 where entry = 25484;

-- commander/soulbinder -> change weapon and add shield
delete from creature_equip_template where entry = 2303;
insert into creature_equip_template values
(2303, 48401, 48069, 0, 33490690, 33490436, 0, 781, 1038, 0);
update creature_template set equipment_id = 2303 where entry = 25837;
update creature_template set equipment_id = 2209 where entry =25373;
update creature set equipment_id = 2303 where id = 25837;
update creature set equipment_id = 2209 where id = 25373;

-- cleanup most of Eredar Twins trash formations
delete from creature_formations where memberGUID in (43741, 43772, 44175, 44239, 44079, 44175);
delete from creature_formations where leaderGUID in (43740, 44390, 44464, 44050, 44059, 43769);
insert into creature_formations values
(44079, 44079, 0, 0, 2),
(44079, 44239, 0, 0, 2),
(44018, 44018, 0, 0, 2),
(44018, 43770, 0, 0, 2),
(44018, 111624, 0, 0, 2),
(44018, 111437, 0, 0, 2),
(89032, 89032, 0, 0, 2),
(89032, 44458, 0, 0, 2),
(89032, 45516, 0, 0, 2),
(89032, 44059, 0, 0, 2),
(89032, 44024, 0, 0, 2),
(89032, 44421, 0, 0, 2),
(44021, 44021, 0, 0, 2),
(44021, 286016, 0, 0, 2),
(44061, 44061, 0, 0, 2),
(44061, 44050, 0, 0, 2);