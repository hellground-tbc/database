INSERT INTO `script_texts` VALUES
 (-1554028,'I have been waiting for you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'pathaleon SAY_INTRO');
UPDATE `creature` SET `spawnMask` = '3' WHERE `guid` IN (4989305,4989311,4989307,4989309);
DELETE FROM `creature` WHERE `guid` IN (4986364,4986441,4986715,83245);
UPDATE `creature` SET `position_x` = '272.9507' WHERE `guid` = '83235';
UPDATE `creature` SET `position_y` = '-20.4320' WHERE `guid` = '83235';
UPDATE `creature` SET `position_z` = '26.3284' WHERE `guid` = '83235';
UPDATE `creature` SET `position_x` = '273.1383' WHERE `guid` = '83236';
UPDATE `creature` SET `position_y` = '-25.0753' WHERE `guid` = '83236';
UPDATE `creature` SET `position_z` = '26.3284' WHERE `guid` = '83236';
UPDATE `creature` SET `position_x` = '275.7291' WHERE `guid` = '4989305';
UPDATE `creature` SET `position_y` = '-17.1305' WHERE `guid` = '4989305';
UPDATE `creature` SET `position_z` = '26.3284' WHERE `guid` = '4989305';
UPDATE `creature` SET `orientation` = '6.2533' WHERE `guid` = '4989305';
UPDATE `creature` SET `position_x` = '276.1550' WHERE `guid` = '4989311';
UPDATE `creature` SET `position_y` = '-28.5496' WHERE `guid` = '4989311';
UPDATE `creature` SET `position_z` = '26.3284' WHERE `guid` = '4989311';
UPDATE `creature` SET `orientation` = '6.2533' WHERE `guid` = '4989311';
UPDATE `creature` SET `position_x` = '308.0035' WHERE `guid` = '4989307';
UPDATE `creature` SET `position_y` = '19.7578' WHERE `guid` = '4989307';
UPDATE `creature` SET `position_z` = '25.3861' WHERE `guid` = '4989307';
UPDATE `creature` SET `orientation` = '3.0402' WHERE `guid` = '4989307';
UPDATE `creature` SET `position_x` = '307.7444' WHERE `guid` = '83232';
UPDATE `creature` SET `position_y` = '15.6469' WHERE `guid` = '83232';
UPDATE `creature` SET `position_z` = '25.3861' WHERE `guid` = '83232';
UPDATE `creature` SET `orientation` = '3.0402' WHERE `guid` = '83232';
UPDATE `creature` SET `position_x` = '307.7115' WHERE `guid` = '4989309';
UPDATE `creature` SET `position_y` = '10.9902' WHERE `guid` = '4989309';
UPDATE `creature` SET `position_z` = '25.3861' WHERE `guid` = '4989309';
UPDATE `creature` SET `orientation` = '3.0402' WHERE `guid` = '4989309';
UPDATE `creature` SET `position_x` = '307.7765' WHERE `guid` = '83231';
UPDATE `creature` SET `position_y` = '6.1738' WHERE `guid` = '83231';
UPDATE `creature` SET `position_z` = '25.3861' WHERE `guid` = '83231';
UPDATE `creature` SET `orientation` = '3.0402' WHERE `guid` = '83231';
UPDATE `creature` SET `position_x` = '85.9520' WHERE `guid` = '83239';
UPDATE `creature` SET `position_y` = '21.5849' WHERE `guid` = '83239';
UPDATE `creature` SET `position_z` = '14.9230' WHERE `guid` = '83239';
UPDATE `creature` SET `orientation` = '0.9456' WHERE `guid` = '83239';
UPDATE `creature` SET `position_x` = '292.3065' WHERE `guid` = '83233';
UPDATE `creature` SET `position_y` = '8.6814' WHERE `guid` = '83233';
UPDATE `creature` SET `position_z` = '25.3862' WHERE `guid` = '83233';
UPDATE `creature` SET `orientation` = '1.8456' WHERE `guid` = '83233';
DELETE FROM `creature_addon` WHERE `guid` IN (83234,83233,83239);
DELETE FROM `waypoint_data` WHERE `id` IN (1695,1696,1697);
INSERT INTO `waypoint_data` VALUES
(1695, 1, 34.8585 , 60.2849 , 0.1630 , 0, 0, 0, 100, 0),
(1695, 2 , 30.4902 , 37.6731 , 0.0136 , 0, 0, 0, 100, 0),
(1696, 1, 120.9990 , 78.2199 , 14.9246 , 0, 0, 0, 100, 0),
(1696, 2 , 170.0630 , 75.6518 , 0.3163 , 0, 0, 0, 100, 0),
(1697, 1, 233.2439 , 52.3010 , 0.0272 , 0, 0, 0, 100, 0),
(1697, 2 , 154.5368 , 48.3780 , 0.0065 , 0, 0, 0, 100, 0);
DELETE FROM `creature_addon` WHERE `guid` IN (83189,83177,83173);
INSERT INTO `creature_addon` VALUES
(83189, 1695, 0, 0, 0, 0, 0, 0, ''),
(83177, 1696, 0, 0, 0, 0, 0, 0, ''),
(83173, 1697, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature` SET `MovementType` = '2' WHERE `id` = 19166;
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 83173;
UPDATE `creature` SET `MovementType` = '1' WHERE `guid` IN (83233,83234);
