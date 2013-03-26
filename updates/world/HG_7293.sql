UPDATE `gameobject_template` SET `ScriptName`='go_lesser_wind_stone' WHERE (name = 'lesser wind stone');
UPDATE `gameobject_template` SET `ScriptName`='go_wind_stone' WHERE (entry in (180461, 180534, 180554));
UPDATE `gameobject_template` SET `ScriptName`='go_greater_wind_stone' WHERE (entry in (180466, 180539, 180559));
UPDATE `item_template` SET `minMoneyLoot`='500000', `maxMoneyLoot`='1000000' WHERE (`entry`='20602');

delete from creature where id in (15211, 15209, 15307, 15212);