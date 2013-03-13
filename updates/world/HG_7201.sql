UPDATE `creature_template` SET `ScriptName` = 'npc_windwatcher' WHERE `entry` = '6176';
DELETE FROM quest_start_scripts WHERE id = 1713;
DELETE FROM script_waypoint WHERE entry = 6176;
INSERT INTO script_waypoint VALUES
(6176,0,253.05,-1459.09,52.09,0,''),
(6176,1,256.87,-1440.35,50.09,0,''),
(6176,2,273.74,-1433.18,50.29,0,''),
(6176,3,297.77,-1436.7,46.96,0,''),
(6176,4,329.59,-1442.08,40.31,0,''),
(6176,5,332.73,-1455.6,42.24,0,''),
(6176,6,323.83,-1468.92,42.24,15000,''),
(6176,7,332.73,-1455.6,42.24,0,''),
(6176,8,329.59,-1442.08,40.31,0,''),
(6176,9,297.77,-1436.7,46.96,0,''),
(6176,10,273.74,-1433.18,50.29,0,''),
(6176,11,256.87,-1440.35,50.09,0,''),
(6176,12,253.05,-1459.09,52.09,0,''),
(6176,13,250.84,-1470.58,55.4491,0,'');
INSERT INTO script_texts VALUES
(-1900233,'Follow me, $n. I will soon begin the summoning.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Windwatcher1'),
(-1900234,'%s begins a spell of summoning...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'Windwatcher2');
