-- http://letswow.ru/wowhead/?quest=795 http://www.wowhead.com/object=2933 For this quest in gameobject player need to collect 3 stones from other gameobjects. 
-- Remove extra loot from npc and extra gameobjects.
delete from creature_loot_template where item in (4843,4844,4845);
delete from gameobject where id in (2858,2848,2842);
INSERT INTO `gameobject` VALUES ('10643', '2842', '0', '1', '-6434.21', '-4157.25', '286.794', '-3.14159', '-0.021814', '0.008724', '0.999724', '0.00019', '2', '100', '1');
INSERT INTO `gameobject` VALUES ('10644', '2848', '0', '1', '-6999.61', '-3878.1', '285.264', '1.56207', '0', '0', '0.704015', '0.710185', '7200', '100', '1');
INSERT INTO `gameobject` VALUES ('10830', '2858', '0', '1', '-6955.58', '-4102.33', '285.789', '-1.57079', '0', '0', '-0.707106', '0.707108', '7200', '100', '1');
