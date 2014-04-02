-- Instance/Arcatraz: Handle Arcatraz Sentinel from C++
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'arcatraz_sentinel' WHERE `entry` = 20869;
DELETE FROM `creature_ai_scripts` WHERE `entryOrGUID` = 20869;
