update creature_template set unit_flags=4864 where entry in (16580,16582);
insert into command value ('npc fieldflags',1,'Syntax: .npc fieldflag #fieldflag
Set the field flags of creature template of the selected creature and selected creature to #fieldflag. flags will applied to all creatures of selected creature template after server restart or grid unload/load.');