UPDATE `gameobject_template` SET `flags` = '32' WHERE `entry` = '184383';
UPDATE `gameobject_template` SET `ScriptName` = 'go_ethereum_transponder_zeta' WHERE `entry` = '184383';
UPDATE `creature_template` SET `unit_flags` = '4' WHERE entry = '20482';
UPDATE `creature_template` SET `flags_extra` = '2' WHERE entry = '20482';
DELETE FROM `creature` WHERE `guid`= '72505';
UPDATE `quest_template` SET `SrcSpell`  = '35679' WHERE entry = '10406';
UPDATE `creature_template` SET `ScriptName` = 'npc_protectorate_demolitionist' WHERE `entry` = '20802';
DELETE FROM `creature` WHERE `guid`= '72473';

DELETE FROM script_waypoint WHERE entry=20802;
INSERT INTO script_waypoint VALUES
(20802, 0, 4017.864, 2325.038, 114.029, 3000, 'SAY_INTRO'),
(20802, 1, 4006.373, 2324.593, 111.455, 0, ''),
(20802, 2, 3998.391, 2326.364, 113.164, 0, ''),
(20802, 3, 3982.309, 2330.261, 113.846, 7000, 'SAY_STAGING_GROUNDS'),
(20802, 4, 3950.646, 2329.249, 113.924, 0, 'SAY_TOXIC_HORROR'),
(20802, 5, 3939.229, 2330.994, 112.197, 0, ''),
(20802, 6, 3927.858, 2333.644, 111.330, 0, ''),
(20802, 7, 3917.851, 2337.696, 113.493, 0, ''),
(20802, 8, 3907.743, 2343.336, 114.062, 0, ''),
(20802, 9, 3878.760, 2378.611, 114.037, 8000, 'SAY_SALHADAAR'),
(20802, 10, 3863.153, 2355.876, 114.987, 0, ''),
(20802, 11, 3861.241, 2344.893, 115.201, 0, ''),
(20802, 12, 3872.463, 2323.114, 114.671, 0, 'escort paused - SAY_DISRUPTOR'),
(20802, 13, 3863.740, 2349.790, 115.382, 10000, 'SAY_FINISH_2');

INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(-1900206,'Let\'s do this... Just keep me covered and I\'ll deliver the package.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'demolitionist SAY_INTRO'),
(-1900207,'I\'m under attack! I repeat, I am under attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'demolitionist SAY_ATTACK_1'),
(-1900208,'I need to find a new line of work.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'demolitionist SAY_ATTACK_2'),
(-1900209,'By the second sun of K\'aresh, look at this place! I can only imagine what Salhadaar is planning. Come on, let\'s keep going.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'demolitionist SAY_STAGING_GROUNDS'),
(-1900210,'With this much void waste and run off, a toxic void horror can\'t be too far behind.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'demolitionist SAY_TOXIC_HORROR'),
(-1900211,'Look there, fleshling! Salhadaar\'s conduits! He\'s keeping well fed...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'demolitionist SAY_SALHADAAR'),
(-1900212,'Alright, keep me protected while I plant this disruptor. This shouldn\'t take very long...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'demolitionist SAY_DISRUPTOR'),
(-1900213,'Protect the conduit! Stop the intruders!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'nexus stalkers SAY_PROTECT'),
(-1900214,'Done! Back up! Back up!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'demolitionist SAY_FINISH_1'),
(-1900215,'Looks like my work here is done. Report to the holo-image of Ameer over at the transporter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'demolitionist SAY_FINISH_2');



