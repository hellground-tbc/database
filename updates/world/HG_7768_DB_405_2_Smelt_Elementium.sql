-- Changing id of learning spell from this npc http://www.wowwiki.com/Master_Elemental_Shaper_Krixix He gave wrong cast to player.(22968)
UPDATE `npc_trainer` SET `spell`='22967' WHERE (`entry`='14401') AND (`spell`='22968');
