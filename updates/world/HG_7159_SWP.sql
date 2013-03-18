-- weapon for Sacrolash
insert into creature_equip_template values (3000, 36080, 36080, 0, 33492738, 33492738, 0, 781, 781, 0);
update creature_template set equipment_id = 3000 where entry = 25165;

-- protector immune na roota
UPDATE creature_template SET mechanic_immune_mask = 536894801 WHERE entry = 25507;
-- trash spawntime
update creature set spawntimesecs = 10800 where id in (25848, 25373, 25486, 25483, 25506, 25484, 25837);
-- vanquisher
UPDATE creature_template SET mechanic_immune_mask = 2052 where entry = 25486;
-- lifeshaper
UPDATE creature_template SET mechanic_immune_mask = 33556738 where entry = 25506;
-- manafiend
UPDATE creature_template SET mechanic_immune_mask = 2050 where entry = 25483;
-- assassin
UPDATE creature_template SET mechanic_immune_mask = 67604 where entry = 25484;
-- soulbinder, commander
UPDATE creature_template SET mechanic_immune_mask = 33622358 where entry in (25373, 25837);
-- deathbringer
UPDATE creature_template SET mechanic_immune_mask = 33622272 where entry = 25485;