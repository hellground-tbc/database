DELETE FROM `spell_proc_event` WHERE `entry` = '15600';
UPDATE creature_template SET faction_A = 31, faction_H = 31 WHERE entry IN (66700, 66701, 66702, 66703);