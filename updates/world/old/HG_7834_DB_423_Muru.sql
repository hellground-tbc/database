-- weapons for M'uru adds
insert into creature_equip_template values
(2238, 46863, 0, 0, 285280770, 0, 0, 529, 0, 0),
(2239, 46970, 46970, 0, 218171138, 218171138, 0, 3, 3, 0);

update creature_template set equipment_id = 2238 where entry = 25799;
update creature_template set equipment_id = 2239 where entry = 25798;