-- Weapons & HP for Nethermancer Sepethrea
insert into creature_equip_template values
(2042, 36442, 44544, 0, 218171138, 386007044, 0, 3, 3, 0);
update creature_template set equipment_id = 2042 where entry in (19221, 21536);
update creature_template set minhealth = 174650, maxhealth = 174650 where entry = 19221;
update creature_template set minhealth = 250920, maxhealth = 250920 where entry = 21536;
-- Raging Fires make fire dmg
update creature_template set dmgschool = 2 where entry in (20481, 21538);
update creature_template set minhealth = 164390, maxhealth = 164390, mindmg = 520, maxdmg = 800 where entry = 21538;
update creature_template set minhealth = 115269, maxhealth = 115269 where entry = 20481;