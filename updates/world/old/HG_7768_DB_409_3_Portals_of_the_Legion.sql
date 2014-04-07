--  http://www.wowhead.com/quest=5581
--  Some idiot made different entry for all portals... So need to change type for each of them.
delete from gameobject_scripts where datalong='11937' and command=10;
-- 1
UPDATE `gameobject_template` SET `type`='24' WHERE (`entry`='177243');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('30899', '2', '10', '11937', '30000', '-1944.78', '1844.42', '65.9396', '1.55334');
-- 2
UPDATE `gameobject_template` SET `type`='24' WHERE (`entry`='177365');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('32567', '2', '10', '11937', '30000', '-1922.37', '1808.77', '66.7608', '-2.42601');                            
-- 3
UPDATE `gameobject_template` SET `type`='24' WHERE (`entry`='177366');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('32568', '2', '10', '11937', '30000', '-1985.62', '1944.33', '62.1731', '-0.174533');  
-- 4
UPDATE `gameobject_template` SET `type`='24' WHERE (`entry`='177367');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('32570', '2', '10', '11937', '30000', '-2002.06', '1866.33', '52.4633', '-3.08923');  
-- 5
UPDATE `gameobject_template` SET `type`='24' WHERE (`entry`='177368');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('32571', '2', '10', '11937', '30000', '-2067.9', '1844.89', '60.4518', '2.87979'); 
-- 6
UPDATE `gameobject_template` SET `type`='24' WHERE (`entry`='177369');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('32572', '2', '10', '11937', '30000', '-1928.12', '1757.31', '74.2315', '0.174533');  
-- 7
UPDATE `gameobject_template` SET `type`='24' WHERE (`entry`='177397');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('32661', '2', '10', '11937', '30000', '-1703.56', '1747.92', '60.5614', '-2.05949');  
-- 8
UPDATE `gameobject_template` SET `type`='24' WHERE (`entry`='177398');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('32663', '2', '10', '11937', '30000', '-1669.83', '1956.22', '61.4355', '-0.226893');  
-- 9 
UPDATE `gameobject_template` SET `type`='24' WHERE (`entry`='177399');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('32664', '2', '10', '11937', '30000', '-1774.85', '1975.78', '61.1707', '0.122173');  
-- 10
UPDATE `gameobject_template` SET `type`='24' WHERE (`entry`='177400');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('32668', '2', '10', '11937', '30000', '-1865.29', '1990.25', '62.8822', '-1.64061');  