UPDATE `creature` SET `spawnMask` = '3' WHERE `guid` = 15538078;
UPDATE `creature` SET `id` = '20879' WHERE `guid` = 15535334;
UPDATE `creature` SET `position_x` = '300.5305' WHERE `guid` = '15538078';
UPDATE `creature` SET `position_y` = '125.4525' WHERE `guid` = '15538078';
UPDATE `creature` SET `position_z` = '22.2249' WHERE `guid` = '15538078';
UPDATE `creature` SET `orientation` = '1.8995' WHERE `guid` = '15538078';
UPDATE `creature` SET `position_x` = '306.6476' WHERE `guid` = '15535334';
UPDATE `creature` SET `position_y` = '150.3799' WHERE `guid` = '15535334';
UPDATE `creature` SET `position_z` = '24.8584' WHERE `guid` = '15535334';
UPDATE `creature` SET `orientation` = '3.8182' WHERE `guid` = '15535334';
UPDATE `creature` SET `position_x` = '284.0393' WHERE `guid` = '86053';
UPDATE `creature` SET `position_y` = '143.8294' WHERE `guid` = '86053';
UPDATE `creature` SET `position_z` = '22.2259' WHERE `guid` = '86053';
UPDATE `creature` SET `orientation` = '5.7636' WHERE `guid` = '86053';
DELETE FROM `creature_addon` WHERE `guid` = 86060;
UPDATE `creature` SET `MovementType` = '0' WHERE `guid` = 86060;
UPDATE `creature` SET `position_x` = '262.4232' WHERE `guid` = '86056';
UPDATE `creature` SET `position_y` = '-61.2264' WHERE `guid` = '86056';
UPDATE `creature` SET `position_z` = '22.3700' WHERE `guid` = '86056';
UPDATE `creature` SET `orientation` = '0.0530' WHERE `guid` = '86056';
UPDATE `creature` SET `position_x` = '255.4816' WHERE `guid` = '86058';
UPDATE `creature` SET `position_y` = '157.8884' WHERE `guid` = '86058';
UPDATE `creature` SET `position_z` = '22.2824' WHERE `guid` = '86058';
UPDATE `creature` SET `orientation` = '5.9992' WHERE `guid` = '86058';
UPDATE `creature` SET `position_x` = '254.8104' WHERE `guid` = '86060';
UPDATE `creature` SET `position_y` = '134.9801' WHERE `guid` = '86060';
UPDATE `creature` SET `position_z` = '22.3040' WHERE `guid` = '86060';
UPDATE `creature` SET `orientation` = '5.9992' WHERE `guid` = '86060';
UPDATE `creature` SET `position_x` = '337.4161' WHERE `guid` = '86062';
UPDATE `creature` SET `position_y` = '27.6897' WHERE `guid` = '86062';
UPDATE `creature` SET `position_z` = '48.3372' WHERE `guid` = '86062';
UPDATE `creature` SET `orientation` = '3.4765' WHERE `guid` = '86062';
UPDATE `creature` SET `position_x` = '397.2276' WHERE `guid` = '86061';
UPDATE `creature` SET `position_y` = '16.6389' WHERE `guid` = '86061';
UPDATE `creature` SET `position_z` = '48.2126' WHERE `guid` = '86061';
UPDATE `creature` SET `orientation` = '2.2984' WHERE `guid` = '86061';
UPDATE `creature` SET `id` = '20866' WHERE `guid` = 86064;
UPDATE `creature` SET `id` = '20867' WHERE `guid` = 86063;
UPDATE `creature` SET `position_x` = '235.2831' WHERE `guid` = '86064';
UPDATE `creature` SET `position_y` = '-129.6874' WHERE `guid` = '86064';
UPDATE `creature` SET `position_z` = '-10.1175' WHERE `guid` = '86064';
UPDATE `creature` SET `position_x` = '265.0986' WHERE `guid` = '86063';
UPDATE `creature` SET `position_y` = '-144.2201' WHERE `guid` = '86063';
UPDATE `creature` SET `position_z` = '-10.1158' WHERE `guid` = '86063';
UPDATE `creature` SET `MovementType` = '1' WHERE `guid` IN (86064,86063,79481);
UPDATE `creature` SET `spawnMask` = '3' WHERE `guid` = 15535334;
DELETE FROM `creature` WHERE `guid` = 15311176;
INSERT INTO `creature` VALUES
(79404, 20900, 552, 3, 0, 0, 437.8363, -156.9275, 43.0939, 1.40156, 7200, 0, 0, 64629, 0, 0, 0),
(79405, 20898, 552, 3, 0, 0, 445.6694, -47.2481, 48.2157, 1.40156, 7200, 0, 0, 64629, 0, 0, 0);
UPDATE `creature` SET `position_x` = '208.8265' WHERE `guid` = '79427';
UPDATE `creature` SET `position_y` = '-31.1031' WHERE `guid` = '79427';
UPDATE `creature` SET `position_z` = '-10.0771' WHERE `guid` = '79427';
UPDATE `creature` SET `position_x` = '205.7418' WHERE `guid` = '79454';
UPDATE `creature` SET `position_y` = '-29.6354' WHERE `guid` = '79454';
UPDATE `creature` SET `position_z` = '-10.0771' WHERE `guid` = '79454';
INSERT INTO `waypoint_data` VALUES
(79427, 1, 211.3084 , -21.2434 , -10.0741 , 0, 0, 0, 0, 0),
(79427, 2, 224.6482 , -11.4094 , -9.2622 , 0, 0, 0, 0, 0),
(79427, 3, 220.4255 , 5.6319 , -7.5622 , 0, 0, 0, 0, 0),
(79427, 4, 200.8331 , 21.3672 , -8.1080 , 0, 0, 0, 0, 0),
(79427, 5, 184.2947 , 18.0408 , -10.0196 , 0, 0, 0, 0, 0),
(79427, 6, 185.7679 , -1.2359 , -10.1021 , 0, 0, 0, 0, 0);
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 79427;
DELETE FROM `creature_addon` WHERE `guid` = 79427;
INSERT INTO `creature_addon` VALUES
(79427, 79427, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_formations` VALUES
(79427, 79427, 0, 0, 2),
(79427, 79454, 3, 0, 2),
(79427, 79458, 3, 90, 2),
(79427, 79456, 3, 180, 2),
(79427, 79457, 3, 270, 2);
INSERT INTO `waypoint_data` VALUES
(79444, 1, 176.4228 , -0.6765 , -10.1020 , 0, 0, 0, 0, 0),
(79444, 2, 202.1932 , -23.0866 , -10.1038 , 0, 0, 0, 0, 0),
(79444, 3, 210.1909 , -9.9811 , -10.1017 , 0, 0, 0, 0, 0),
(79444, 4, 189.7740 , 6.7351 , -10.1035 , 0, 0, 0, 0, 0),
(79452, 1, 202.1333 , -31.8137 , -10.1010 , 0, 0, 0, 100, 0),
(79452, 2, 202.6246 , -83.1843 , -10.1021 , 0, 0, 0, 100, 0);
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` IN (79444,79452);
DELETE FROM `creature_addon` WHERE `guid` IN (79444,79452);
INSERT INTO `creature_addon` VALUES
(79444, 79444, 0, 0, 0, 0, 0, 0, ''),
(79452, 79452, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_formations` VALUES
(79444, 79444, 0, 0, 2),
(79444, 79445, 3, 90, 2),
(79444, 79417, 3, 270, 2),
(79452, 79452, 0, 0, 2),
(79452, 79455, 3, 90, 2),
(79452, 79453, 3, 270, 2);
UPDATE `creature` SET `MovementType` = '0' WHERE `guid` IN (79455,79453);
INSERT INTO `waypoint_data` VALUES
(79480, 1, 217.8428 , -147.1381 , -10.1139 , 0, 0, 0, 0, 0),
(79480, 2, 255.6995 , -152.7382 , -10.1087 , 0, 0, 0, 0, 0),
(79480, 3, 254.2213 , -128.7160 , -10.1213 , 0, 0, 0, 0, 0),
(79480, 4, 216.3634 , -122.2648 , -10.1207 , 0, 0, 0, 0, 0);
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 79480;
DELETE FROM `creature_addon` WHERE `guid` = 79480;
INSERT INTO `creature_addon` VALUES
(79480, 79480, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_formations` VALUES
(79480, 79480, 0, 0, 2),
(79480, 79478, 3, 90, 2),
(79480, 79479, 3, 270, 2);
UPDATE `creature` SET `MovementType` = '0' WHERE `guid` IN (79478,79479);
UPDATE `waypoint_data` SET `move_type` = '1' WHERE `id` IN (79427,79444,79452,79480);
UPDATE `creature` SET `position_x` = '268.8123' WHERE `guid` = '79465';
UPDATE `creature` SET `position_y` = '-10.7432' WHERE `guid` = '79465';
UPDATE `creature` SET `position_z` = '22.4435' WHERE `guid` = '79465';
UPDATE `creature` SET `position_x` = '298.0522' WHERE `guid` = '79468';
UPDATE `creature` SET `position_y` = '50.99771' WHERE `guid` = '79468';
UPDATE `creature` SET `position_z` = '22.4411' WHERE `guid` = '79468';
DELETE FROM `waypoint_data` WHERE `id` IN (1813);
INSERT INTO `waypoint_data` VALUES
(1813, 1, 202.2393 , 133.8547 , 22.4138 , 0, 0, 0, 100, 0),
(1813, 2, 173.6199 , 135.6982 , 22.4417 , 0, 0, 0, 100, 0),
(1813, 3, 173.9731 , 141.880 , 22.4411 , 0, 0, 0, 100, 0),
(1813, 4, 173.6199 , 135.6982 , 22.4417 , 0, 0, 0, 100, 0),
(79534, 1, 201.9673 , 157.3712 , 22.4278 , 0, 0, 0, 0, 0),
(79534, 2, 174.9160 , 158.1410 , 22.4416 , 0, 0, 0, 0, 0),
(79534, 3, 174.4540 , 144.3873 , 22.4416 , 0, 0, 0, 0, 0),
(79534, 4, 174.1789 , 158.3650 , 22.4416 , 0, 0, 0, 0, 0);
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` IN (79532,79534);
DELETE FROM `creature_addon` WHERE `guid` IN (79532,79534);
INSERT INTO `creature_addon` VALUES
(79532, 1813, 0, 0, 0, 0, 0, 0, ''),
(79534, 79534, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `waypoint_data` VALUES
(79567, 1, 466.3581 , 18.4844 , 49.8669 , 0, 0, 0, 0, 0),
(79567, 2, 462.8558 , 4.8262 , 48.2345 , 0, 0, 0, 0, 0),
(79567, 3, 446.2803 , -1.6298 , 48.2146 , 0, 0, 0, 0, 0),
(79567, 4, 445.1231 , -27.8244 , 48.2141 , 0, 0, 0, 0, 0),
(79567, 5, 447.6240 , -1.6689 , 48.2168 , 0, 0, 0, 0, 0),
(79567, 6, 465.1225 , 5.8259 , 48.4431 , 0, 0, 0, 0, 0),
(79567, 7, 466.1466 , 22.0698 , 50.2255 , 0, 0, 0, 0, 0),
(79567, 8, 459.5694 , 38.4245 , 50.8398 , 0, 0, 0, 0, 0),
(79567, 9, 435.8240 , 44.6532 , 49.4244 , 0, 0, 0, 0, 0),
(79567, 10, 459.1505 , 37.7824 , 50.8464 , 0, 0, 0, 0, 0);
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 79567;
DELETE FROM `creature_addon` WHERE `guid` = 79567;
INSERT INTO `creature_addon` VALUES
(79567, 79567, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature_formations` VALUES
(79567, 79567, 0, 0, 2),
(79567, 79566, 4, 0, 2),
(79567, 79568, 4, 90, 2),
(79567, 79569, 4, 270, 2);
UPDATE `creature` SET `MovementType` = '0' WHERE `guid` IN (79566,79568,79569);
INSERT INTO `waypoint_data` VALUES
(79405, 1, 445.4351 , -58.0641 , 48.3650 , 0, 0, 0, 0, 0),
(79405, 2, 445.0788 , -77.8049 , 48.3954 , 0, 0, 0, 0, 0),
(79405, 3, 444.1664 , -88.1098 , 43.5894 , 0, 0, 0, 0, 0),
(79405, 4, 442.2123 , -128.9293 , 43.1001 , 0, 0, 0, 0, 0),
(79405, 5, 445.2176 , -88.6892 , 43.2438 , 0, 0, 0, 0, 0),
(79405, 6, 445.5495 , -78.1938 , 48.3954 , 0, 0, 0, 0, 0);
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` = 79405;
DELETE FROM `creature_addon` WHERE `guid` = 79405;
INSERT INTO `creature_addon` VALUES
(79405, 79405, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `creature` VALUES
(98240, 21395, 552, 3, 0, 0, 207.4602, -96.9556, -10.0825, 1.40156, 7200, 0, 0, 64629, 0, 0, 0),
(98241, 21395, 552, 3, 0, 0, 208.4786, -94.3537, -10.0690, 1.40156, 7200, 0, 0, 64629, 0, 0, 0),
(98242, 21395, 552, 3, 0, 0, 197.4916, -95.8991, -10.0693, 1.40156, 7200, 0, 0, 64629, 0, 0, 0),
(98243, 21395, 552, 3, 0, 0, 391.4823, 16.2109, 48.2126, 1.40156, 7200, 0, 0, 64629, 0, 0, 0),
(98244, 21395, 552, 3, 0, 0, 396.2532, 26.5883, 48.2126, 1.40156, 7200, 0, 0, 64629, 0, 0, 0),
(98245, 21395, 552, 3, 0, 0, 393.3269, 27.0895, 48.2126, 1.40156, 7200, 0, 0, 64629, 0, 0, 0);
