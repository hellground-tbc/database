UPDATE `creature_template` SET `ScriptName` = 'npc_deranged_helboar' WHERE `entry` = '16863';
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = '16863';

DELETE FROM `gameobject` WHERE `guid` = '983566';
DELETE FROM `gameobject` WHERE `guid` = '983573';
DELETE FROM `gameobject` WHERE `guid` = '983516';
DELETE FROM `gameobject` WHERE `guid` = '983513';
DELETE FROM `gameobject` WHERE `guid` = '983587';
