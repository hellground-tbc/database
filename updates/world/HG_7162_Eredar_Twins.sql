-- Dark Touched and Flame Touched effects handled in script
delete from spell_linked_spell where spell_effect in (-45348, 45348, -45347, 45347);

-- Sacrolash melee damage
update creature_template set mindmg = 8500, maxdmg = 11000 where entry = 25165;

-- Eredar Twins intro area trigger script
insert into areatrigger_scripts values (4937, "at_eredar_twins");