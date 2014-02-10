update creature set spawntimesecs= 7200 where id=10408;
update gameobject_template set flags = 32 where entry in (175379,175381);
update creature_ai_scripts set action1_param2 = 1 where id=1046401;
