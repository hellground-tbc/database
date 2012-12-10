UPDATE creature c INNER JOIN creature_template ct ON c.id = ct.entry SET c.curhealth = ct.minhealth WHERE ct.RegenHealth = 1 AND c.curhealth < ct.minhealth;
UPDATE creature c INNER JOIN creature_template ct ON c.id = ct.entry SET c.curmana = ct.minmana WHERE c.curmana < ct.minmana;

DELETE ca.* FROM creature_addon ca LEFT JOIN creature c ON ca.guid = c.guid WHERE c.guid IS NULL;

-- Table `npc_gossip` have not existed creature (GUID: *) entry, ignore. 
DELETE ng.* FROM npc_gossip ng LEFT JOIN creature c ON ng.npc_guid = c.guid WHERE c.guid IS NULL;

-- Table `(game_event_)npc_vendor` have data for not existed creature template (Entry: *), ignore
DELETE nv.* FROM npc_vendor nv LEFT JOIN creature_template ct ON nv.entry = ct.entry WHERE ct.entry IS NULL;

-- Table `creature_formations` has an invalid record (leaderGUID: '*', memberGUID: '*')
DELETE cf.* FROM creature_formations cf LEFT JOIN creature c ON cf.leaderGUID = c.guid WHERE c.guid IS NULL;
DELETE cf.* FROM creature_formations cf LEFT JOIN creature c ON cf.memberGUID = c.guid WHERE c.guid IS NULL;

-- CreatureEventAI: Creature Entry * has EventAI script but it also has C++ script. EventAI script will be overriden.
UPDATE creature_template SET AIName = '' WHERE ScriptName<>'' AND AIName = 'EventAI';
DELETE FROM creature_ai_scripts WHERE entryOrGUID > 0 AND entryOrGUID IN(SELECT entry FROM creature_template WHERE AIName <> 'EventAI');

-- Table 'creature_loot_template' entry * isn't creature entry and not referenced from loot, and then useless.
DELETE clt.* FROM creature_loot_template clt LEFT JOIN creature_template ct ON clt.entry = ct.entry WHERE ct.entry IS NULL;