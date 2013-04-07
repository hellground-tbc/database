-- Ironforge
update quest_template set Rewrepfaction2=47 , Rewrepvalue2=Rewrepvalue1 where entry in (317,320,170,179,183,311,312,313,314,315,384,412,234,282,287,319,414,417,420,433,291,413,419,310,318,400,415,1599,2160,2948,3364,3365,5541,6387,6388,6391,6392);
-- Stormwind
update quest_template set Rewrepfaction2=72 , Rewrepvalue2=Rewrepvalue1 where entry in (1075,1076,1078,2928);
-- donation of wool/runecloth with wrong faction
update quest_template set Rewrepfaction1=47 where entry in (7802,7803);