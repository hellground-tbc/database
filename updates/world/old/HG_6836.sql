UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = '18240';
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE entry = '18240';
DELETE FROM `creature_ai_scripts` WHERE `id` IN (1824001,1824002);
INSERT INTO `creature_ai_scripts` VALUES ('1824001', '18240', '8', '0', '100', '1', '32146', '-1', '0', '0', '11', '19629', '0', '31', '18', '33554434', '0', '0', '23', '1', '0', '0', 'Sunspring Villager - Cast Burn Corpse Visual and Set UnSelectable/UnAttackable Flag and Set Phase 1');
INSERT INTO `creature_ai_scripts` VALUES ('1824002', '18240', '1', '1', '100', '1', '10000', '10000', '10000', '10000', '19', '33554434', '0', '0', '41', '0', '0', '0', '22', '0', '0', '0', 'Sunspring Villager - Remove UnSelectable and Unattackable Flags and Set Phase 0 and Despawn');
