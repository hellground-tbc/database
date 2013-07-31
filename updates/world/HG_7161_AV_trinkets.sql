-- bugs removal
update `quest_template` set `RequiredRaces`='690' where `entry` in (7165,7161);
update `quest_template` set `OfferRewardText`='This new insignia reflects your rank amongst the Frostwolf. Keep it on you at all times.$B$BAnd $C... Die with honor!' where `entry`='7163';
update `quest_template` set `PrevQuestId`='7163' where `entry`='7164';
update `quest_template` set `PrevQuestId`='7164' where `entry`='7165';
update `quest_template` set `RequiredMinRepFaction`='729',`SpecialFlags`='0',`RewRepFaction1`='729',`RewRepFaction2`='76' where `entry` in (7163, 7164, 7165, 7166, 7167);
update `quest_template` set `RequiredMinRepFaction`='730',`SpecialFlags`='0',`RewRepFaction1`='730',`RewRepFaction1`='47' where `entry` in (7168, 7169, 7170, 7171, 7172);
update `quest_template` set `RequiredMinRepValue`='3000',`RewRepValue1`='250',`RewRepValue2`='250' where `entry` in (7163,7168);
update `quest_template` set `RequiredMinRepValue`='9000',`RewRepValue1`='250',`RewRepValue2`='250' where `entry` in (7164,7169);
update `quest_template` set `RequiredMinRepValue`='21000',`RewRepValue1`='350',`RewRepValue2`='350' where `entry` in (7165,7170);
update `quest_template` set `RequiredMinRepValue`='42000',`RewRepValue1`='500',`RewRepValue2`='500' where `entry` in (7166,7171);
update `quest_template` set `RequiredMinRepValue`='42999',`RewRepValue1`='500',`RewRepValue2`='500' where `entry` in (7167,7172);
