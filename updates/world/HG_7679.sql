insert into game_event_creature values (216033,12); -- some forgotten hallow's end npc added in-game by GM
update quest_template set endText="Master Kariel Winthalus Found", Objectivetext1 = "", ReqCreatureOrGOId1 = 0, ReqCreatureOrGOCount1 = 0, SpecialFlags = 2 where entry=7481;
update gameobject_template set ScriptName="go_kariel_remains" , data1=0 where entry=179544;