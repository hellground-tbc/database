-- Quest  http://www.wowhead.com/quest=6481/earthen-arise
-- After using http://www.wowhead.com/item=16603 on gameobject npc must appear.I fixed that.
delete from creature where id=11920;
UPDATE `gameobject_template` SET `type`='24' WHERE (`entry`='178145');
delete from gameobject_scripts where id=47691;
INSERT INTO `gameobject_scripts` VALUES ('47691', '2', '10', '11920', '30000', '0', '-1.37', '432.801', '103.597', '4.37');
-- Changing type to Humanoid (on letswow it is spider  http://letswow.ru/wowhead/?npc=11920 )
UPDATE `creature_template` SET `type`='7' WHERE (`entry`='11920');
UPDATE `creature_template` SET `family`='0' WHERE (`entry`='11920');
-- Casts 
delete from creature_ai_scripts where entryOrGUID=11920;
INSERT INTO `creature_ai_scripts` VALUES ('1192051', '11920', '0', '0', '100', '1', '5000', '10000', '10000', '15000', '11', '8646', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Goggeroc casts  Snap Kick');
INSERT INTO `creature_ai_scripts` VALUES ('1192052', '11920', '0', '0', '100', '1', '10000', '12000', '7500', '11000', '11', '10966', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Goggeroc casts  Uppercut');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '11920';
