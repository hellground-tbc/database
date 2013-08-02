replace into spell_script_target values (46219, 1, 25592);

UPDATE creature_template SET mechanic_immune_mask = 12716051, ScriptName = "mob_doomfire_destroyer" WHERE entry = 25592;
UPDATE creature_template SET mindmg = 1200, maxdmg = 2200, mechanic_immune_mask = 12716051, ScriptName = "mob_doomfire_shard" WHERE entry = 25948;
UPDATE creature_template SET minhealth = 230000, maxhealth = 230000, mechanic_immune_mask = 46270739, flags_extra = 4194304, ScriptName = "mob_oblivion_mage" WHERE entry = 25597;
UPDATE creature_template SET mechanic_immune_mask = 12714003 WHERE entry = 25851;
UPDATE creature_template SET mechanic_immune_mask = 12714067, ScriptName = "mob_painbringer" WHERE entry = 25591;
UPDATE creature_template SET mindmg = 4800, maxdmg = 8300, minhealth = 220000, maxhealth = 240000, mechanic_immune_mask = 12716115, ScriptName = "mob_priestess_of_torment" WHERE entry = 25509;
UPDATE creature_template SET mindmg = 5200, maxdmg = 9000, minhealth = 500000, maxhealth = 500000, mechanic_immune_mask = 46270739, ScriptName = "mob_chaos_gazer" WHERE entry = 25595;
UPDATE creature_template SET mindmg = 4700, maxdmg = 8200, minhealth = 450000, maxhealth = 450000, mechanic_immune_mask = 12716307, ScriptName = "mob_apocalypse_guard" WHERE entry = 25593;
UPDATE creature_template SET mindmg = 5700, maxdmg = 9000, minhealth = 560000, maxhealth = 575000, mechanic_immune_mask = 12716371, flags_extra = 65536, ScriptName = "mob_cataclysm_hound" WHERE entry = 25599;