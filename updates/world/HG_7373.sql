update quest_template set Objectives='Escort Belnistrasz to the Quilboar''s idol in Razorfen Downs.$B' where entry=3525;
replace into gameobject_involvedrelation values (152097,3525);
delete from creature_involvedrelation where quest=3525;
update creature_template set ScriptName='npc_belnistrasz' where entry=8516;
replace into script_waypoint values
(8516,0,2598.65,722.945,54.8526,0,''),
(8516,1,2567.72,751.676,54.4416,0,''),
(8516,2,2535.2,780.76,46.4936,0,''),
(8516,3,2522.09,796.953,44.6761,0,''),
(8516,4,2496.77,789.612,39.4669,0,''),
(8516,5,2487.94,807.683,43.062,0,''),
(8516,6,2491.86,834.281,44.9066,0,''),
(8516,7,2511.15,855.041,47.678,0,''),
(8516,8,2539.63,881.975,47.8587,0,''),
(8516,9,2548.4,901.158,47.4642,0,''),
(8516,10,2518.24,929.527,47.1707,0,''),
(8516,11,2541.07,975.854,50.4936,0,''),
(8516,12,2556.71,971.308,50.5967,0,''),
(8516,13,2574.41,949.942,52.8665,0,'');
replace into custom_texts values
(-2100025,'All right, stay close. These fiends will jump right out of the shadows at you if you let your guard down.','','','','','','','','',0,0,0,0,8165),
(-2100026,'Okay, here we go. It\'s going to take about five minutes to shut this thing down through the ritual. Once I start, keep the vermin off of me or it will be the end of us all!','','','','','','','','',0,0,0,0,8165),
(-2100027,'You\'ll rue the day you crossed me!','','','','','','','','',0,0,0,0,8165),
(-2100028,'Three minutes left - I can feel the energy starting to build! Keep up the solid defense!','','','','','','','','',0,1,0,0,8165),
(-2100029,'Just two minutes to go! We\'re half way there, but don\'t let your guard down!','','','','','','','','',0,1,0,0,8165),
(-2100030,'One more minute! Hold on now, the ritual is about to take hold!','','','','','','','','',0,1,0,0,8165),
(-2100031,'That\'s it - we made it! The ritual is set in motion, and idol fires are about to go out for good! You truly are the heroes I thought you would be!','','','','','','','','',0,1,0,0,8165),
(-2100032,'Incoming Plaguemaw the Rotting - Look sharp friends!','','','','','','','','',0,0,0,0,8165);