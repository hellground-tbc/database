-- FS#164 rare mobs loot (bloodmyst,eversong,ghostlands,alterac,arathi,ashenvale,azshara)
delete from creature_loot_template where item in (6327,1678,6331,5257);
insert into creature_loot_template values
(22060,31256,0,2,1,1,0,0,0),(22060,31263,0,2,1,1,0,0,0),(22060,31264,0,2,1,1,0,0,0), -- Fenissa the assassin
(22062,31268,0,2,1,1,0,0,0),(22062,31269,0,2,1,1,0,0,0),(22062,31270,0,2,1,1,0,0,0), -- Dr. Whitherlimb
(2453,6327,14,2,1,1,0,0,0),(2453,1678,38,2,1,1,0,0,0),(2453,4810,48,2,1,1,0,0,0), -- Lo'grosh
(2452,6331,25,2,1,1,0,0,0),(2452,3011,75,2,1,1,0,0,0), -- Skhowl
(2609,5742,45,2,1,1,0,0,0),(2609,5743,35,2,1,1,0,0,0), -- Geomancer Flintdagger
(2603,5256,25,0,1,1,0,0,0),(2606,5257,11.1,2,1,1,0,0,0),(2606,2622,88.9,2,1,1,0,0,0), -- Kovork; Nimar the Slayer
(2600,5180,25,2,1,1,0,0,0),(2600,5180,75,2,1,1,0,0,0); -- Singer
delete from reference_loot_template where item in
(31256,31263,31264, -- Fenissa the assassin
31268,31269,31270, -- Dr. Whitherlimb
4810,3011,5256,2622,-- Lo'grosh ;Skhowl; Kovork; Nimar the Slayer
5180,5181); -- Singer
update creature_loot_template set ChanceOrQuestChance=0 where
(entry in (3773,3736,10641,10639) and item in (24064,24066,24068))
or (entry=3735 and item in (24060,24062,24064,24066,24068))
or (entry in (10640,10642) and item in (24048,24066,24068))
or (entry in (10559,10644) and item in (24060,24062,24064,24066))
or (entry=10643 and item in (24062,24063,24064,24066))
or (entry=10647 and item in (24048,24050,24051,24052,24053))
or (entry=3792 and item in (24048,24050,24051,24052))
or (entry=12037 and item in (24048,24050,24052))
or (entry in (6648,6651) and item in (24025,24027,24045))
or (entry=6650 and item in (24025,24027,24029,24045,24046))
or (entry=6649 and item in (24025,24027,24029,24026))
or (entry in (6649,6652) and item in (24025,24027,24029))
or (entry=6646 and item in (24025,24027,24029,24031))
or (entry=13896 and item in (24025,24027,24029,24028))
or (entry in (8660,6118) and item in (24025,24045,24043));