-- FS#261
update gameobject_template set `type`='1',`data3`='0' where entry='179544';
insert into gameobject_scripts values ('179544',0,7,7481,0,0,0,0,0,0),
('179544',0,7,7482,0,0,0,0,0,0);
-- FS#302
update gameobject_template set `type`='1',`data2`='0',`data3`='0' where entry='142715';
insert into gameobject_scripts value ('142715',0,7,2936,0,0,0,0,0,0);
-- FS#151
update creature_template set lootid=10813,mingold=1462,maxgold=1915 where entry=10812;