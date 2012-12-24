-- as patchnotes 2.4 says rings from MH rep should be available after doing MH attu quest
update quest_template set PrevQuestId = 10445 where entry in (10462, 10460, 10461, 10463);


-- below clean code for RealmData database

-- delete from character_inventory 
-- where item_template in (29294, 29295, 29296, 29298, 29299, 29300, 29302, 29303, 29304, 29306, 29307, 29308, 29301, 29297, 29309, 29305)
--        and not exists (select 1 from character_queststatus where character_inventory.guid = character_queststatus.guid and quest = 10445 and rewarded = 1);

-- create table tempnoobtable
-- (
--     guid int(11) unsigned not null,
--     primary key(guid)
-- );

-- insert into tempnoobtable 
--     select distinct guid from character_queststatus
--     where quest in (10460, 10467, 10471, 10475, 10462, 10466, 10470, 10474, 10463, 10464, 10468, 10472, 10461, 10465, 10469, 10473, 11106, 11104, 11103, 11105)
--         and not exists (select 1 from character_queststatus as cq where cq.guid = character_queststatus.guid and cq.quest = 10445 and cq.rewarded = 1);

-- delete from character_queststatus 
-- where quest in (10460, 10467, 10471, 10475, 10462, 10466, 10470, 10474, 10463, 10464, 10468, 10472, 10461, 10465, 10469, 10473, 11106, 11104, 11103, 11105) 
--     and exists (select 1 from tempnoobtable where tempnoobtable.guid = character_queststatus.guid);

-- drop table tempnoobtable;

