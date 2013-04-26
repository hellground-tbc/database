delete from creature_questrelation where quest=8578;
insert into gameobject_questrelation values (180642,8578);
update creature_template set baseattacktime=1200 where entry=15554;
update quest_template set rewrepfaction2=76,rewrepfaction3=911,rewrepfaction4=81,rewrepfaction5=68,rewrepvalue2=500,rewrepvalue3=500,rewrepvalue4=500,rewrepvalue5=500 where entry=1394;