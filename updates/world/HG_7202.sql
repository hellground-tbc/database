update gameobject_template set flags=0 where entry in (4072,61936,61935);
update quest_template set EndText='',ObjectiveText1='Master Kariel Winthalus Found',ReqCreatureOrGOCount1=1, ReqCreatureOrGOId1=-179544, SpecialFlags=0 where entry=7481;
update gameobject_template set type=10, data0=93, data1=7481 where entry=179544;
update quest_template set EndText='',ObjectiveText1='Find the Spiders God\'s Name',ReqCreatureOrGOCount1=1, ReqCreatureOrGOId1=-142715, SpecialFlags=0 where entry=2936;
update gameobject_template set type=10, data0=93, data1=2936, data7=3077,data9=2 where entry=142715;
insert into page_text (entry,text,next_page) values (3077,'Eraka no Kimbul
God of Tigers, Lord of Beasts, King of Cats, the Prey\'s Doom

Ueetay no Mueh\'zala
God of Death, Father of Sleep, Son of Time, the Night\'s Friend.',3078),(3078,'Elortha no Shadra
God of Spiders, Mother of Venom, Silk Dancer, Death\'s Love.',0);