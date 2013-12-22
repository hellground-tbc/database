-- http://letswow.ru/wowhead/?quest=9689 
UPDATE `gameobject_template` SET `type`='24' WHERE (`entry`='181988');
delete from creature where id=17592;
delete from gameobject_scripts where id=42119;
INSERT INTO `gameobject_scripts` VALUES ('42119', '3', '10', '17592', '25000', '0', '-1216.72', '-12455.6', '95.07', '5.8');
-- His casts
delete from creature_ai_scripts where entryOrGUID=17592;
INSERT INTO `creature_ai_scripts` VALUES ('1759251', '17592', '0', '0', '100', '1', '9000', '10000', '15000', '20000', '11', '14100', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Razormaw casts Terrifying Roar');
INSERT INTO `creature_ai_scripts` VALUES ('1759252', '17592', '0', '0', '100', '1', '4000', '5000', '20000', '25000', '11', '8873', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Razormaw casts Flame Breath');
INSERT INTO `creature_ai_scripts` VALUES ('1759253', '17592', '0', '0', '100', '1', '2000', '3000', '12000', '16000', '11', '31279', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Razormaw casts Swipe');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '17592';