delete from event_scripts where id=2609 and command=10;
update instance_template set `script`='instance_zul_farrak' where map=209;
insert into event_scripts values (2609,0,20,1,1,0,0,0,0,0);
insert into creature_ai_scripts values
(778903,7789,6,0,100,0,0,0,0,0,34,1,4,0,0,0,0,0,0,0,0,0,'set instance data on death'),
(887613,8876,6,0,100,0,0,0,0,0,34,1,4,0,0,0,0,0,0,0,0,0,'set instance data on death'),
(887702,8877,6,0,100,0,0,0,0,0,34,1,4,0,0,0,0,0,0,0,0,0,'set instance data on death'),
(778701,7787,6,0,100,0,0,0,0,0,34,1,4,0,0,0,0,0,0,0,0,0,'set instance data on death'),
(778801,7788,6,0,100,0,0,0,0,0,34,1,4,0,0,0,0,0,0,0,0,0,'set instance data on death'),
(727501,7275,6,0,100,0,0,0,0,0,34,1,4,0,0,0,0,0,0,0,0,0,'set instance data on death'),
(779601,7796,6,0,100,0,0,0,0,0,34,1,4,0,0,0,0,0,0,0,0,0,'set instance data on death');
update creature_template set AIName = 'EventAI' where entry in (7787,7788,7275,7796);
update creature_template set unit_flags = 0 where entry = 7604;
insert into spell_script_target values (11195,0,146084);