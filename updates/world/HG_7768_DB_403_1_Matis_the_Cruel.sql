-- Quest description http://www.wowhead.com/quest=9711

-- http://www.wowhead.com/npc=17664#comments http://www.wowwiki.com/Matis_the_Cruel  
delete from creature_ai_scripts where entryOrGUID=17664;
INSERT INTO `creature_ai_scripts` VALUES ('1766451', '17664', '2', '0', '100', '0', '20', '0', '0', '0', '15', '9711', '1', '0', '0', '0', '0', '0', '15', '9711', '2', '0', 'Matis The Cruel Capture');
INSERT INTO `creature_ai_scripts` VALUES ('1766452', '17664', '4', '0', '100', '0', '0', '0', '0', '0', '1', '-17664', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Matis The Cruel aggro phrase');
INSERT INTO `creature_ai_scripts` VALUES ('1764453', '17664', '2', '0', '100', '0', '15', '0', '0', '0', '41', '0', '0', '0', '1', '-17665', '0', '0', '0', '0', '0', '0', 'Matis The Cruel despawn on 20% hp');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '17664';

-- Matis phrases
delete from creature_ai_texts where entry in ('-17664','-17665');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES ('-17664', 'You will regret this, maggot.', 'Matis the Cruel aggro');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-17665', 'falls unconscious.', '2', 'Matis the Cruel capture');

-- Npc from flare http://www.wowhead.com/npc=17853#summoned-by

-- deleting all existing Trackers.
delete from creature where id=17853;
-- Changing faction to Exodar - now he will attack Matis.
UPDATE `creature_template` SET `faction_A`='1698', `faction_H`='1698' WHERE (`entry`='17853');
-- Cast for Tracker 
delete from creature_ai_scripts where entryOrGUID=17853;
INSERT INTO `creature_ai_scripts` VALUES ('1785351', '17853', '9', '0', '100', '1', '5', '30', '1000', '1000', '11', '6660', '1', '8', '21', '0', '0', '0', '40', '2', '0', '0', 'Tracker of the Hand casts shoot');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '17853';



--  When Matis is captured and the quest turned in, the following dialogue occurs  - someone should script this on c++ with some animation.



