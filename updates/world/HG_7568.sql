INSERT INTO `creature` VALUES
(98200, 17724, 546, 3, 0, 0, 77.4422, -71.6240, -2.7560, 2.79235, 7200, 0, 0, 16028, 0, 0, 0),
(98201, 17724, 546, 3, 0, 0, 76.2482, -72.6848, -2.75522, 2.79235, 7200, 0, 0, 16028, 0, 0, 0);
UPDATE `creature` SET `position_x` = '57.0726' WHERE `guid` = '57015';
UPDATE `creature` SET `position_y` = '-99.0881' WHERE `guid` = '57015';
UPDATE `creature` SET `position_z` = '-2.7477' WHERE `guid` = '57015';
UPDATE `creature` SET `position_x` = '43.8701' WHERE `guid` = '54216';
UPDATE `creature` SET `position_y` = '-106.1591' WHERE `guid` = '54216';
UPDATE `creature` SET `position_z` = '-3.2733' WHERE `guid` = '54216';
UPDATE `creature` SET `position_x` = '52.6445' WHERE `guid` = '54217';
UPDATE `creature` SET `position_y` = '-114.3649' WHERE `guid` = '54217';
UPDATE `creature` SET `position_z` = '-2.7394' WHERE `guid` = '54217';
DELETE FROM `creature_addon` WHERE `guid` = 54247;
UPDATE `creature` SET `MovementType` = '0' WHERE `guid` = '54247';
UPDATE `creature` SET `position_x` = '6.4262' WHERE `guid` = '54247';
UPDATE `creature` SET `position_y` = '-100.0580' WHERE `guid` = '54247';
UPDATE `creature` SET `position_z` = '-4.5325' WHERE `guid` = '54247';
UPDATE `creature` SET `position_x` = '-7.6625' WHERE `guid` = '54218';
UPDATE `creature` SET `position_y` = '-95.1664' WHERE `guid` = '54218';
UPDATE `creature` SET `position_z` = '-4.5325' WHERE `guid` = '54218';
UPDATE `creature` SET `position_x` = '-3.4101' WHERE `guid` = '57013';
UPDATE `creature` SET `position_y` = '-107.3753' WHERE `guid` = '57013';
UPDATE `creature` SET `position_z` = '-4.5325' WHERE `guid` = '57013';
INSERT INTO `creature` VALUES
(98202, 17725, 546, 3, 0, 0, 62.3828, -153.2861, -2.7427, 2.07105, 7200, 0, 0, 16028, 0, 0, 0);
UPDATE `creature` SET `position_x` = '56.7817' WHERE `guid` = '54214';
UPDATE `creature` SET `position_y` = '-158.8655' WHERE `guid` = '54214';
UPDATE `creature` SET `position_z` = '-2.7366' WHERE `guid` = '54214';
INSERT INTO `creature` VALUES
(98203, 17725, 546, 3, 0, 0, 0.9233, -175.5704, -4.5335, 2.07105, 7200, 0, 0, 16028, 0, 0, 0),
(98204, 17725, 546, 3, 0, 0, -16.9912, -200.3587, -4.5343, 5.21105, 7200, 0, 0, 16028, 0, 0, 0),
(98205, 17725, 546, 3, 0, 0, -13.9631, -238.8214, -4.5348, 2.21105, 7200, 0, 0, 16028, 0, 0, 0),
(98206, 17725, 546, 3, 0, 0, -60.1410, -258.5232, -4.5365, 6.18105, 7200, 0, 0, 16028, 0, 0, 0),
(98207, 17725, 546, 3, 0, 0, -59.9782, -247.1868, -4.5365, 6.18105, 7200, 0, 0, 16028, 0, 0, 0);
UPDATE `creature` SET `position_x` = '-1.6268' WHERE `guid` = '54215';
UPDATE `creature` SET `position_y` = '-183.52294' WHERE `guid` = '54215';
UPDATE `creature` SET `position_z` = '-4.5335' WHERE `guid` = '54215';
UPDATE `creature` SET `position_x` = '5.6590' WHERE `guid` = '54212';
UPDATE `creature` SET `position_y` = '-178.2241' WHERE `guid` = '54212';
UPDATE `creature` SET `position_z` = '-4.5335' WHERE `guid` = '54212';
DELETE FROM `creature` WHERE `guid` = 54246;
DELETE FROM `creature_addon` WHERE `guid` = 54246;
UPDATE `creature` SET `position_x` = '3.7078' WHERE `guid` = '54210';
UPDATE `creature` SET `position_y` = '-213.4209' WHERE `guid` = '54210';
UPDATE `creature` SET `position_z` = '-4.5332' WHERE `guid` = '54210';
UPDATE `creature` SET `orientation` = '0.8254' WHERE `guid` = '54210';
UPDATE `creature` SET `MovementType` = '1' WHERE `guid` = '54210';
DELETE FROM `creature_addon` WHERE `guid` = 54210;
INSERT INTO `creature` VALUES
(54246, 17734, 546, 3, 0, 0, -66.5785, -290.155, -4.5356, 2.07105, 7200, 0, 0, 45720, 0, 0, 0);
UPDATE `creature` SET `position_x` = '-96.1848' WHERE `guid` = '54389';
UPDATE `creature` SET `position_y` = '-229.0254' WHERE `guid` = '54389';
UPDATE `creature` SET `position_z` = '-4.4022' WHERE `guid` = '54389';
UPDATE `creature` SET `orientation` = '6.1590' WHERE `guid` = '54389';
UPDATE `creature` SET `MovementType` = '0' WHERE `guid` = '54389';
DELETE FROM `creature_addon` WHERE `guid` = 54389;
DELETE FROM `waypoint_data` WHERE `id` IN (1313);
INSERT INTO `waypoint_data` VALUES
(1313, 1, -64.6507 , -290.2734 , -4.5346 , 0, 0, 0, 100, 0),
(1313, 2 , -118.6799 , -307.1471 , -4.5912 , 0, 0, 0, 100, 0);
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 54246;
DELETE FROM `creature_addon` WHERE `guid` = 54246;
INSERT INTO `creature_addon` VALUES
(54246, 1313, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `waypoint_data` WHERE `id` IN (98200);
INSERT INTO `waypoint_data` VALUES
(98200, 1, 74.0433 , -68.8504 , -2.7532 , 0, 0, 0, 100, 0),
(98200, 2 , 29.3908 , -30.3243 , -2.7497 , 0, 0, 0, 100, 0);
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 98200;
DELETE FROM `creature_addon` WHERE `guid` = 98200;
INSERT INTO `creature_addon` VALUES
(98200, 98200, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature` VALUES
(98208, 17724, 546, 3, 0, 0, 60.6496, -178.2488, -3.7104, 2.79235, 7200, 0, 0, 16028, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` = 54211;
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 54211;
INSERT INTO `creature_addon` VALUES
(54211, 1315, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature` VALUES
(98209, 17724, 546, 3, 0, 0, -38.3256, -216.7935, -4.5360, 2.79235, 7200, 0, 0, 16028, 0, 0, 0),
(98210, 17724, 546, 3, 0, 0, -38.6523, -220.0774, -4.5360, 2.79235, 7200, 0, 0, 16028, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` = 98209;
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 98209;
INSERT INTO `creature_addon` VALUES
(98209, 1314, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature` VALUES
(98211, 17724, 546, 3, 0, 0, -106.2810, -316.5636, 30.7079, 2.79235, 7200, 0, 0, 16028, 0, 0, 0),
(98212, 17724, 546, 3, 0, 0, -110.7169, -315.0410, 30.7079, 2.79235, 7200, 0, 0, 16028, 0, 0, 0),
(98213, 17724, 546, 3, 0, 0, -113.6188, -312.7005, 30.7079, 2.79235, 7200, 0, 0, 16028, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` = 98211;
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 98211;
INSERT INTO `creature_addon` VALUES
(98211, 1316, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature` VALUES
(98214, 17734, 546, 3, 0, 0, -98.3138, -351.3158, 33.4186, 1.40105, 7200, 0, 0, 45720, 0, 0, 0),
(98215, 17734, 546, 3, 0, 0, -129.8933, -349.4720, 33.2629, 1.40105, 7200, 0, 0, 45720, 0, 0, 0);
DELETE FROM `creature_formations` WHERE `leaderGUID` IN (57015,54247);
INSERT INTO `creature_formations` VALUES
(57015, 57015, 0, 0, 2),
(57015, 54216, 4, 0, 2),
(57015, 54217, 4, 90, 2),
(54247, 54247, 0, 0, 2),
(54247, 54218, 4, 0, 2),
(54247, 57013, 4, 90, 2),
(98206, 98206, 0, 0, 2),
(98206, 98207, 4, 0, 2),
(98200, 98200, 0, 0, 2),
(98200, 98201, 4, 0, 2),
(54211, 54211, 0, 0, 2),
(54211, 98208, 4, 0, 2),
(98209, 98209, 0, 0, 2),
(98209, 98210, 4, 0, 2),
(98211, 98211, 0, 0, 2),
(98211, 98212, 4, 0, 2),
(98211, 98213, 4, 90, 2);
UPDATE `creature_template` SET `rangeattacktime` = '0' WHERE `entry` IN (17723,20164);
UPDATE `creature_template` SET `minrangedmg` = '0' WHERE `entry` IN (17723,20164);
UPDATE `creature_template` SET `maxrangedmg` = '0' WHERE `entry` IN (17723,20164);
UPDATE `creature_template` SET `rangedattackpower` = '0' WHERE `entry` IN (17723,20164);
UPDATE `creature` SET `id` = '17723' WHERE `guid` IN (98214,98215,54246,54389,54210,54394);
UPDATE `creature` SET `curhealth` = '36478' WHERE `guid` IN (98214,98215,54246,54389,54210,54394);
UPDATE `creature` SET `position_x` = '11.5828' WHERE `guid` = '54403';
UPDATE `creature` SET `position_y` = '-394.1276' WHERE `guid` = '54403';
UPDATE `creature` SET `position_z` = '27.2297' WHERE `guid` = '54403';
UPDATE `creature` SET `curhealth` = '36478' WHERE `guid` = '54403';
UPDATE `creature` SET `MovementType` = '1' WHERE `guid` = '54403';
DELETE FROM `creature_addon` WHERE `guid` = 54403;
UPDATE `creature` SET `id` = '17723' WHERE `guid` = '54403';
UPDATE `creature` SET `position_x` = '78.15817' WHERE `guid` = '54408';
UPDATE `creature` SET `position_y` = '-386.4216' WHERE `guid` = '54408';
UPDATE `creature` SET `position_z` = '33.3733' WHERE `guid` = '54408';
UPDATE `creature` SET `curhealth` = '36478' WHERE `guid` = '54408';
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = '54408';
DELETE FROM `creature_addon` WHERE `guid` = 54408;
UPDATE `creature` SET `id` = '17723' WHERE `guid` = '54408';
INSERT INTO `waypoint_data` VALUES
(54408, 1, 79.8685 , -385.4254 , 33.4331 , 0, 0, 0, 100, 0),
(54408, 2 , 96.8081 , -314.8767 , 32.7017 , 0, 0, 0, 100, 0);
DELETE FROM `creature_addon` WHERE `guid` = 54408;
INSERT INTO `creature_addon` VALUES
(54408, 54408, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `waypoint_data` VALUES
(54397, 1, -32.4420 , -342.5851 , 31.4647 , 0, 0, 0, 100, 0),
(54397, 2, -20.5062 , -377.8098 , 30.5695 , 0, 0, 0, 100, 0),
(54397, 3, 6.4116 , -386.0131 , 27.0924 , 0, 0, 0, 100, 0),
(54397, 4, 11.1437 , -348.2077 , 28.3205 , 0, 0, 0, 100, 0),
(54397, 5 , -12.4511 , -326.8242 , 30.8422 , 0, 0, 0, 100, 0);
DELETE FROM `creature_addon` WHERE `guid` = 54397;
INSERT INTO `creature_addon` VALUES
(54397, 54397, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_formations` WHERE `leaderGUID` = 54397;
INSERT INTO `creature_formations` VALUES
(54397, 54397, 0, 0, 2),
(54397, 54396, 4, 0, 2),
(54397, 54399, 4, 90, 2),
(54397, 54401, 4, 270, 2);
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 54397;
UPDATE `creature` SET `position_x` = '93.8651' WHERE `guid` = '54406';
UPDATE `creature` SET `position_y` = '-390.7832' WHERE `guid` = '54406';
UPDATE `creature` SET `position_z` = '34.5515' WHERE `guid` = '54406';
UPDATE `creature` SET `position_x` = '91.4648' WHERE `guid` = '54407';
UPDATE `creature` SET `position_y` = '-394.4782' WHERE `guid` = '54407';
UPDATE `creature` SET `position_z` = '34.4054' WHERE `guid` = '54407';
UPDATE `creature` SET `id` = '17726' WHERE `guid` IN (54406,54407);
UPDATE `creature` SET `curhealth` = '16574' WHERE `guid` IN (54406,54407);
DELETE FROM `waypoint_data` WHERE `id` IN (54406);
INSERT INTO `waypoint_data` VALUES
(54406, 1, 97.3624 , -395.5745 , 35.8772 , 0, 0, 0, 100, 0),
(54406, 2, 130.4318 , -411.6389 , 47.8859 , 0, 0, 0, 100, 0),
(54406, 3 , 165.2584 , -426.7659 , 48.1471 , 0, 0, 0, 100, 0),
(54406, 4, 130.4318 , -411.6389 , 47.8859 , 0, 0, 0, 100, 0);
DELETE FROM `creature_addon` WHERE `guid` = 54406;
INSERT INTO `creature_addon` VALUES
(54406, 54406, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 54406;
DELETE FROM `creature_formations` WHERE `leaderGUID` = 54406;
INSERT INTO `creature_formations` VALUES
(54406, 54406, 0, 0, 2),
(54406, 54407, 4, 90, 2);
UPDATE `creature` SET `position_x` = '160.6080' WHERE `guid` = '54410';
UPDATE `creature` SET `position_y` = '-441.3164' WHERE `guid` = '54410';
UPDATE `creature` SET `position_z` = '48.1518' WHERE `guid` = '54410';
UPDATE `creature` SET `position_x` = '165.0645' WHERE `guid` = '54412';
UPDATE `creature` SET `position_y` = '-439.3725' WHERE `guid` = '54412';
UPDATE `creature` SET `position_z` = '48.1962' WHERE `guid` = '54412';
UPDATE `creature` SET `orientation` = '1.8998' WHERE `guid` = '54412';
UPDATE `creature` SET `id` = '17729' WHERE `guid` IN (54410,54412);
UPDATE `creature` SET `curhealth` = '13259' WHERE `guid` IN (54410,54412);
UPDATE `creature` SET `id` = '17730' WHERE `guid` = 54411;
UPDATE `creature` SET `curhealth` = '13259' WHERE `guid` = 54411;
INSERT INTO `creature` VALUES
(98216, 17728, 546, 3, 0, 0, 176.5982, -414.9415, 48.1835, 2.55335, 7200, 0, 0, 16574, 0, 0, 0),
(98217, 17728, 546, 3, 0, 0, 181.7326, -411.8122, 48.2074, 2.55335, 7200, 0, 0, 16574, 0, 0, 0),
(98218, 17771, 546, 3, 0, 0, 177.9284, -412.2208, 48.1782, 2.55335, 7200, 0, 0, 13259, 0, 0, 0),
(98219, 17728, 546, 3, 0, 0, 183.9764, -386.3913, 48.0651, 5.48125, 7200, 0, 0, 16574, 0, 0, 0),
(98220, 17730, 546, 3, 0, 0, 180.1244, -389.4247, 48.0677, 5.48125, 7200, 0, 0, 13259, 0, 0, 0),
(98221, 17729, 546, 3, 0, 0, 183.9764, -389.0184, 48.0651, 5.48125, 7200, 0, 0, 13259, 0, 0, 0);
INSERT INTO `creature_formations` VALUES
(98216, 98216, 0, 0, 2),
(98216, 98217, 4, 0, 2),
(98216, 98218, 4, 0, 2),
(98219, 98219, 0, 0, 2),
(98219, 98220, 4, 0, 2),
(98219, 98221, 4, 0, 2);
UPDATE `creature` SET `id` = '17735' WHERE `guid` = 54424;
UPDATE `creature` SET `curhealth` = '16574' WHERE `guid` = 54424;
UPDATE `creature` SET `orientation` = '3.3929' WHERE `guid` = '54424';
UPDATE `creature` SET `id` = '17730' WHERE `guid` = 54701;
UPDATE `creature` SET `curhealth` = '13259' WHERE `guid` = 54701;
UPDATE `creature` SET `id` = '17729' WHERE `guid` = 54700;
UPDATE `creature` SET `curhealth` = '13259' WHERE `guid` = 54700;
UPDATE `creature` SET `id` = '17728' WHERE `guid` = 54637;
UPDATE `creature` SET `curhealth` = '16574' WHERE `guid` = 54637;
UPDATE `creature` SET `position_x` = '146.2530' WHERE `guid` = '54622';
UPDATE `creature` SET `position_y` = '-424.1402' WHERE `guid` = '54622';
UPDATE `creature` SET `position_z` = '48.5561' WHERE `guid` = '54622';
DELETE FROM `creature_addon` WHERE `guid` IN (54421,54420);
UPDATE `creature` SET `id` = '17735' WHERE `guid` = 54427;
UPDATE `creature` SET `curhealth` = '16574' WHERE `guid` = 54427;
UPDATE `creature` SET `id` = '17730' WHERE `guid` = 54703;
UPDATE `creature` SET `curhealth` = '13259' WHERE `guid` = 54703;
UPDATE `creature` SET `position_x` = '261.7871' WHERE `guid` = '54703';
UPDATE `creature` SET `position_y` = '-368.7804' WHERE `guid` = '54703';
UPDATE `creature` SET `position_z` = '72.1633' WHERE `guid` = '54703';
UPDATE `creature` SET `orientation` = '2.1637' WHERE `guid` = '54703';
UPDATE `creature` SET `id` = '17728' WHERE `guid` = 54799;
UPDATE `creature` SET `curhealth` = '16574' WHERE `guid` = 54799;
UPDATE `creature` SET `position_x` = '271.0172' WHERE `guid` = '54799';
UPDATE `creature` SET `position_y` = '-373.4819' WHERE `guid` = '54799';
UPDATE `creature` SET `position_z` = '72.1627' WHERE `guid` = '54799';
UPDATE `creature` SET `orientation` = '0.7358' WHERE `guid` = '54799';
UPDATE `creature` SET `position_x` = '260.5682' WHERE `guid` = '55068';
UPDATE `creature` SET `position_y` = '-382.3586' WHERE `guid` = '55068';
UPDATE `creature` SET `position_z` = '72.4078' WHERE `guid` = '55068';
UPDATE `creature` SET `orientation` = '2.5898' WHERE `guid` = '55068';
UPDATE `creature` SET `position_x` = '269.3613' WHERE `guid` = '54427';
UPDATE `creature` SET `position_y` = '-381.0022' WHERE `guid` = '54427';
UPDATE `creature` SET `position_z` = '72.1627' WHERE `guid` = '54427';
UPDATE `creature` SET `position_x` = '196.8493' WHERE `guid` = '55391';
UPDATE `creature` SET `position_y` = '-386.5888' WHERE `guid` = '55391';
UPDATE `creature` SET `position_z` = '72.3369' WHERE `guid` = '55391';
UPDATE `creature` SET `orientation` = '5.3469' WHERE `guid` = '55391';
UPDATE `creature` SET `position_x` = '200.6748' WHERE `guid` = '55102';
UPDATE `creature` SET `position_y` = '-386.6496' WHERE `guid` = '55102';
UPDATE `creature` SET `position_z` = '72.3766' WHERE `guid` = '55102';
UPDATE `creature` SET `orientation` = '5.3469' WHERE `guid` = '55102';
UPDATE `creature` SET `id` = '17730' WHERE `guid` = 55106;
UPDATE `creature` SET `curhealth` = '13259' WHERE `guid` = 55106;
UPDATE `creature` SET `position_x` = '202.1523' WHERE `guid` = '55106';
UPDATE `creature` SET `position_y` = '-383.0597' WHERE `guid` = '55106';
UPDATE `creature` SET `position_z` = '72.3371' WHERE `guid` = '55106';
UPDATE `creature` SET `orientation` = '5.3469' WHERE `guid` = '55106';
UPDATE `creature` SET `id` = '17726' WHERE `guid` IN (54421,54420);
UPDATE `creature` SET `curhealth` = '16574' WHERE `guid` IN (54421,54420);
DELETE FROM `creature_formations` WHERE `leaderGUID` = 54421;
INSERT INTO `creature_formations` VALUES
(54421, 54421, 0, 0, 2),
(54421, 54420, 4, 90, 2);
INSERT INTO `creature_addon` VALUES
(54421, 1319, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature` SET `id` = '17771' WHERE `guid` IN (55536,55552);
UPDATE `creature` SET `curhealth` = '13959' WHERE `guid` IN (55536,55552);
UPDATE `creature` SET `position_x` = '169.9549' WHERE `guid` = '55536';
UPDATE `creature` SET `position_y` = '-403.2648' WHERE `guid` = '55536';
UPDATE `creature` SET `position_z` = '72.2222' WHERE `guid` = '55536';
UPDATE `creature` SET `orientation` = '5.3469' WHERE `guid` = '55536';
UPDATE `creature` SET `position_x` = '173.0974' WHERE `guid` = '55552';
UPDATE `creature` SET `position_y` = '-401.7177' WHERE `guid` = '55552';
UPDATE `creature` SET `position_z` = '72.2490' WHERE `guid` = '55552';
UPDATE `creature` SET `orientation` = '5.3469' WHERE `guid` = '55552';
UPDATE `creature` SET `position_x` = '169.6715' WHERE `guid` = '55553';
UPDATE `creature` SET `position_y` = '-407.1439' WHERE `guid` = '55553';
UPDATE `creature` SET `position_z` = '72.2597' WHERE `guid` = '55553';
UPDATE `creature` SET `orientation` = '5.3469' WHERE `guid` = '55553';
INSERT INTO `creature` VALUES
(98222, 17735, 546, 3, 0, 0, 174.0250, -406.1046, 72.3118, 5.3469, 7200, 0, 0, 16574, 0, 0, 0);
UPDATE `creature` SET `id` = '17728' WHERE `guid` = 56109;
UPDATE `creature` SET `curhealth` = '16028' WHERE `guid` = 56109;
UPDATE `creature` SET `position_x` = '157.0020' WHERE `guid` = '56109';
UPDATE `creature` SET `position_y` = '-428.7756' WHERE `guid` = '56109';
UPDATE `creature` SET `position_z` = '72.2486' WHERE `guid` = '56109';
UPDATE `creature` SET `orientation` = '5.9569' WHERE `guid` = '56109';
UPDATE `creature` SET `position_x` = '158.1013' WHERE `guid` = '55903';
UPDATE `creature` SET `position_y` = '-432.8515' WHERE `guid` = '55903';
UPDATE `creature` SET `position_z` = '72.2903' WHERE `guid` = '55903';
UPDATE `creature` SET `orientation` = '5.9569' WHERE `guid` = '55903';
INSERT INTO `creature` VALUES
(98223, 17730, 546, 3, 0, 0, 160.0567, -425.8253, 72.2889, 5.9569, 7200, 0, 0, 13259, 0, 0, 0),
(98224, 17735, 546, 3, 0, 0, 161.6380, -430.0999, 72.3386, 5.9569, 7200, 0, 0, 16574, 0, 0, 0);
DELETE FROM `waypoint_data` WHERE `id` IN (1318);
INSERT INTO `waypoint_data` VALUES
(1318, 1, 215.3496 , -476.0303 , 80.7943 , 0, 0, 0, 100, 0),
(1318, 2, 167.4017 , -466.0753 , 75.5313 , 0, 0, 0, 100, 0),
(1318, 3, 159.4867 , -477.0574 , 74.7186 , 0, 0, 0, 100, 0),
(1318, 4, 177.9346 , -486.1280 , 66.8507 , 0, 0, 0, 100, 0),
(1318, 5, 217.9472 , -477.8979 , 50.4603 , 0, 0, 0, 100, 0),
(1318, 6, 233.8039 , -502.6383 , 49.1204 , 0, 0, 0, 100, 0),
(1318, 7, 218.3399 , -478.8461 , 50.3582 , 0, 0, 0, 100, 0),
(1318, 8, 178.5526 , -485.1077 , 66.5015 , 0, 0, 0, 100, 0),
(1318, 9, 160.3564 , -475.7444 , 74.6456 , 0, 0, 0, 100, 0),
(1318, 10, 163.6038 , -466.1097 , 75.4236 , 0, 0, 0, 100, 0),
(1318, 11, 214.6982 , -477.3055 , 80.6337 , 0, 0, 0, 100, 0),
(1318, 12 , 251.8868 , -463.0030 , 80.6337 , 0, 0, 0, 100, 0);
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 56111;
DELETE FROM `creature_addon` WHERE `guid` = 56111;
INSERT INTO `creature_addon` VALUES
(56111, 1318, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_addon` WHERE `guid` IN (56112,56142,56143);
INSERT INTO `creature_addon` VALUES
(56112, 1328, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_formations` VALUES
(56112, 56112, 0, 0, 2),
(56112, 56142, 4, 90, 2);
INSERT INTO `creature` VALUES
(98225, 19632, 546, 3, 0, 0, 330.5872, -380.2347, 43.1951, 5.9569, 7200, 0, 0, 16574, 0, 0, 0),
(98226, 17732, 546, 3, 0, 0, 332.6709, -383.2188, 43.6552, 5.9569, 7200, 0, 0, 16028, 0, 0, 0),
(98227, 17732, 546, 3, 0, 0, 326.7053, -379.6005, 44.2210, 5.9569, 7200, 0, 0, 16028, 0, 0, 0);
INSERT INTO `creature_addon` VALUES
(98225, 1330, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_formations` VALUES
(98225, 98225, 0, 0, 2),
(98225, 98226, 4, 90, 2),
(98225, 98227, 4, 270, 2);
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 98225;
INSERT INTO `creature` VALUES
(98228, 17731, 546, 3, 0, 0, 313.0513, -326.9037, 21.0108, 2.0569, 7200, 0, 0, 16574, 0, 0, 1),
(98229, 17731, 546, 3, 0, 0, 314.8321, -319.8923, 19.3862, 3.9469, 7200, 0, 0, 16574, 0, 0, 0),
(98230, 17731, 546, 3, 0, 0, 307.1833, -322.1210, 20.2522, 6.1609, 7200, 0, 0, 16574, 0, 0, 0),
(98231, 17731, 546, 3, 0, 0, 264.3655, -279.8678, 24.0480, 2.0569, 7200, 0, 0, 16574, 0, 0, 1),
(98232, 17731, 546, 3, 0, 0, 260.2204, -270.3457, 24.3892, 3.9469, 7200, 0, 0, 16574, 0, 0, 0),
(98233, 17731, 546, 3, 0, 0, 268.2573, -273.8547, 24.5008, 6.1609, 7200, 0, 0, 16574, 0, 0, 0);
INSERT INTO `creature` VALUES
(98234, 19632, 546, 3, 0, 0, 248.6993, -144.8060, 28.3781, 5.9569, 7200, 0, 0, 16574, 0, 0, 0),
(98235, 17732, 546, 3, 0, 0, 245.0336, -143.5707, 27.7904, 5.9569, 7200, 0, 0, 16028, 0, 0, 0),
(98236, 17732, 546, 3, 0, 0, 250.0919, -140.7548, 28.6391, 5.9569, 7200, 0, 0, 16028, 0, 0, 0);
DELETE FROM `waypoint_data` WHERE `id` IN (1329);
INSERT INTO `waypoint_data` VALUES
(1329, 1, 266.9953 , -202.9897 , 28.7592 , 0, 0, 0, 100, 0),
(1329, 2, 268.7766 , -256.8442 , 26.6499 , 0, 0, 0, 100, 0),
(1329, 3, 268.6747 , -203.6320 , 28.8667 , 0, 0, 0, 100, 0),
(1329, 4, 249.7444 , -147.0765 , 28.5912 , 0, 0, 0, 100, 0);
INSERT INTO `creature_formations` VALUES
(98234, 98234, 0, 0, 2),
(98234, 98235, 4, 90, 2),
(98234, 98236, 4, 270, 2);
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 98234;
INSERT INTO `creature_addon` VALUES
(98234, 1329, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature` WHERE `guid` IN (56144,56328);
UPDATE `creature` SET `id` = '17732' WHERE `guid` IN (56316,56164);
UPDATE `creature` SET `curhealth` = '16028' WHERE `guid` IN (56316,56164);
UPDATE `creature` SET `position_x` = '289.7157' WHERE `guid` = '56862';
UPDATE `creature` SET `position_y` = '-128.9907' WHERE `guid` = '56862';
UPDATE `creature` SET `position_z` = '29.7370' WHERE `guid` = '56862';
UPDATE `creature` SET `orientation` = '2.7339' WHERE `guid` = '56862';
UPDATE `creature` SET `position_x` = '286.4458' WHERE `guid` = '56551';
UPDATE `creature` SET `position_y` = '-120.6798' WHERE `guid` = '56551';
UPDATE `creature` SET `position_z` = '29.7620' WHERE `guid` = '56551';
DELETE FROM `creature_addon` WHERE `guid` = 56868;
DELETE FROM `waypoint_data` WHERE `id` IN (1361);
INSERT INTO `waypoint_data` VALUES
(1361, 1, 211.2663 , -127.6623 , 27.0171 , 0, 0, 0, 100, 0),
(1361, 2, 178.4234 , -131.6446 , 27.5930 , 0, 0, 0, 100, 0),
(1361, 3, 157.9223 , -165.2799 , 32.2843 , 0, 0, 0, 100, 0),
(1361, 4, 143.6557 , -182.1233 , 32.2848 , 0, 0, 0, 100, 0),
(1361, 5, 160.8134 , -161.1128 , 32.2848 , 0, 0, 0, 100, 0),
(1361, 6, 175.2084 , -133.7333 , 27.7722 , 0, 0, 0, 100, 0);
INSERT INTO `creature_addon` VALUES
(56868, 1361, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature` SET `position_x` = '218.8013' WHERE `guid` = '56143';
UPDATE `creature` SET `position_y` = '-25.4539' WHERE `guid` = '56143';
UPDATE `creature` SET `position_z` = '27.5625' WHERE `guid` = '56143';
DELETE FROM `waypoint_data` WHERE `id` IN (56143);
INSERT INTO `waypoint_data` VALUES
(56143, 1, 197.7691 , -49.9619 , 26.9159 , 0, 0, 0, 100, 0),
(56143, 2, 160.0162 , -74.3072 , 27.0512 , 0, 0, 0, 100, 0),
(56143, 3, 153.252 , -103.6617 , 25.7830 , 0, 0, 0, 100, 0),
(56143, 4, 168.2180 , -77.2114 , 26.8314 , 0, 0, 0, 100, 0),
(56143, 5, 199.3095 , -51.0025 , 26.8793 , 0, 0, 0, 100, 0),
(56143, 6, 217.9547 , -27.3771 , 27.5625 , 0, 0, 0, 100, 0);
INSERT INTO `creature_addon` VALUES
(56143, 56143, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature` SET `orientation` = '1.8393' WHERE `guid` = '54412';
UPDATE `waypoint_data` SET `move_type` = '1' WHERE `id` IN (98200,1315,1314,1316,54397);
UPDATE `creature_template` SET `unit_flags` = '33685510' WHERE `entry` = '20631';
