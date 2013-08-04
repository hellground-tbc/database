update creature_template set ScriptName = "npc_vindicator_moorba" where entry = 25632;
delete from spell_target_position where id in (46881, 46883, 46884);
insert into spell_target_position values
(46881, 580, 1704.35, 927.90, 53.1, 4.80),
(46883, 580, 1816.11, 625.72, 33.4, 1.22),
(46884, 580, 1861.25, 494.40, 82.9, 0.95);