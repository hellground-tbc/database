UPDATE `creature_template` SET `ScriptName`='npc_east_hovel' WHERE `entry`='20815';
UPDATE `creature_template` SET `ScriptName`='npc_stable' WHERE `entry`='20814';
UPDATE `creature_template` SET `ScriptName`='npc_west_hovel' WHERE `entry`='20816';
UPDATE `creature_template` SET `ScriptName`='npc_barracks' WHERE `entry`='20813';
DELETE FROM `gameobject` WHERE (guid >= 32137 AND guid <= 32139);