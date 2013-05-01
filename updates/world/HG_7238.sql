-- FS#427
update access_requirement set level_min=19 where id=6;
update access_requirement set level_min=17 where id=5;
update access_requirement set level_min=35 where id=20;
update access_requirement set level_min=50 where id in (15,22,25,26);
update access_requirement set level_min=51 where id=28;
update access_requirement set level_min=55 where id in (32,31,36,35,44,45,43,34,30);
update access_requirement set level_min=65 where id in (42,48,33);
update access_requirement set level_min=66 where id=16;
update access_requirement set level_min=68 where id in (27,39,40,41,49);
update access_requirement set level_min=69 where id=51;

-- FS#428
update creature_template set lootid=24917 where entry=24917;
replace into creature_loot_template values
(24917,22576,22.2,0,1,2,0,0,0),(24917,32569,33.3,0,1,1,0,0,0);

-- FS#420
update quest_template set RewRepFaction2=369,RewRepFaction3=470,RewRepFaction4=21,RewRepFaction5=577,RewRepValue2=500,RewRepValue3=250,RewRepValue4=250,RewRepValue5=250 where entry=9268;