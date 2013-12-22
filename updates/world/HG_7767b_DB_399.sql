-- fix races for Winter's Presents seasonal quests
UPDATE `quest_template` SET `requiredraces`='1101' WHERE `entry`='8827';
UPDATE `quest_template` SET `requiredraces`='690' WHERE `entry`='8828';
