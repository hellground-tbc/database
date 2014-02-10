-- Karazhan: Fix reputation reward for quest The Master's Terrace
UPDATE `quest_template` SET `RewRepFaction1` = 967, `RewRepValue1` = 250 WHERE `entry` = 9645;
