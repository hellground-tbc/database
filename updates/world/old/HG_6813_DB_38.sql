UPDATE `quest_template` SET `Method`  = '2' WHERE entry IN (10146,10129);
UPDATE `quest_template` SET `SpecialFlags`  = '0' WHERE entry IN (10146,10129);
UPDATE `quest_template` SET `SrcItemId`  = '28038' WHERE entry IN (10146,10129);
UPDATE `quest_template` SET `SrcItemCount`  = '1' WHERE entry IN (10146,10129);
UPDATE `quest_template` SET `ReqItemId3`  = '28038' WHERE entry IN (10146,10129);
UPDATE `quest_template` SET `ReqItemCount3`  = '1' WHERE entry IN (10146,10129);
UPDATE `quest_template` SET `ReqCreatureOrGOId1`  = '19291' WHERE entry IN (10146,10129);
UPDATE `quest_template` SET `ReqCreatureOrGOId2`  = '19292' WHERE entry IN (10146,10129);
UPDATE `quest_template` SET `ReqCreatureOrGOCount1`  = '1' WHERE entry IN (10146,10129);
UPDATE `quest_template` SET `ReqCreatureOrGOCount2`  = '1' WHERE entry IN (10146,10129);

DELETE FROM spell_script_target WHERE entry = '33655';
INSERT INTO spell_script_target VALUES (33655, 1, 19291),(33655, 1, 19292);

UPDATE `creature_ai_scripts` SET `event_flags`  = '1' WHERE id IN (1929101,1929201);

