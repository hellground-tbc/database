update creature_template set ScriptName="",AIName="EventAI" where entry=10399;
delete from creature_addon where guid=53267;
delete from creature where guid=53267;
insert into creature_ai_scripts value (1039900,10399,6,0,100,0,0,0,0,0,34,7,1,0,0,0,0,0,0,0,0,0,"Thuzadin Acolyte - call instance on death");