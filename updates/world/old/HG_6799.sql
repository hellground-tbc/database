UPDATE item_template SET displayid = 12644 WHERE entry = 34548;
UPDATE item_template SET displayid = 48692 WHERE entry = 35237;
UPDATE item_template SET BuyCount = 1 WHERE entry = 99999;
UPDATE creature SET spawndist = 0 WHERE guid = 44079;
UPDATE creature SET curhealth = 20000 WHERE guid = 341016;
UPDATE creature SET curhealth = 125460 WHERE guid in (85566,667008);

UPDATE creature_template_addon SET auras = NULL WHERE auras = 0 OR auras = '';
UPDATE creature_addon SET auras = NULL WHERE auras = 0 OR auras = '';

UPDATE gameobject SET rotation2 = -0.995 WHERE guid = 13487;
UPDATE quest_template SET ReqSourceRef1 = 0 WHERE entry IN (10637,10688,11129,11515); -- to check
UPDATE quest_template SET SrcItemCount = 1 WHERE entry IN (66690,66691);
UPDATE quest_template SET ReqCreatureOrGOCount2 = 0 WHERE entry IN (10255);
DELETE FROM spell_target_position WHERE id = 49466;

delete from creature_ai_texts where entry in (-997,-996,-995,-994,-993,-575,-574,-573,-572,-571,-570,-548,-544,-447,-446,-445,-444,-443,-442,-441,-440,-439,-418,-417,-403,-402,-401,-380,-379,-378,-333,-306,-305,-304,-227,-226,-225,-224,-223,-222,-221,-220,-219,-218,-217,-199,-155,-141,-139,-138,-137,-136,-135,-134,-133,-132,-131,-130,-129,-128,-127,-126,-125,-122,-121,-120,-119,-118,-117,-112,-110,-98,-97,-96,-95,-94,-93,-86,-85,-84,-83,-82,-81,-55,-54,-50,-21,-20,-19,-18,-17);
DELETE FROM creature_ai_summons WHERE id IN (22,23);
DELETE FROM db_script_string WHERE entry IN (2000000017,2000000018);

DELETE FROM creature_loot_template WHERE entry IN (2992,8179,12261,20047,20889,21217,21542,21545,22844,22845,22846,22847,22848,22849,22962,23374,24683,24685,24687,24688,24690,24697,25165,25166,25315,25363,25367,25368,25369,25370,25371,25372,25483,25484,25486,25506,25509,25591,25592,25597,25599,25840,25867,28132);
DELETE FROM creature_questrelation WHERE quest = 20001 AND id = 62;
DELETE FROM creature_questrelation WHERE quest = 1250 AND id = 4962;
DELETE FROM creature_loot_template WHERE entry = 10440 AND item IN (35028,50029);
DELETE FROM gameobject_loot_template WHERE entry = 175207;
DELETE FROM item_loot_template WHERE entry IN (66660,66661);
DELETE FROM reference_loot_template WHERE entry IN (34058,34085,34095,34096);

UPDATE quest_template SET ReqCreatureOrGOId4 = 0 WHERE entry = 66664;
UPDATE quest_template SET ReqItemId1 = 0 WHERE entry = 66627;
update creature_template set lootid = 0 where lootid in (21753,21960,66060,66606);
delete from creature_ai_scripts where id in (2406401,2417904);
