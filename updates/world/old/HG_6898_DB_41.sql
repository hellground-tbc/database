-- static bosses in 25 man raids
UPDATE creature_template 
SET mingold = 2500000, maxgold = 2500000 
WHERE rank = 3 AND EXISTS (SELECT 1
			FROM creature AS c
			WHERE c.id = creature_template.entry AND c.map IN (534, 544, 548, 550, 564, 565, 580));

-- spawned (hyjal + ROS)
UPDATE creature_template
SET mingold = 2500000, maxgold = 2500000
WHERE entry IN (23420, 17808, 17888, 17767, 17842);
