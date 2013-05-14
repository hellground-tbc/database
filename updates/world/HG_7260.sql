UPDATE `creature_template` SET `ScriptName` = 'npc_remulos' WHERE `entry` = 11832;
UPDATE `creature_template` SET `ScriptName` = 'npc_eranikus' WHERE `entry` = 15491;
UPDATE `gameobject_template` SET `ScriptName` = 'go_crystalline_tear' WHERE `entry` = 180633;
UPDATE `creature_template` SET `ScriptName` = 'mob_qiraj_war_spawn' WHERE `entry` in (15424, 15423, 15422, 15414);
UPDATE `creature_template` SET `ScriptName` = 'npc_anachronos_quest_trigger' WHERE `entry` = 15454;
UPDATE `creature_template` SET `ScriptName` = 'npc_anachronos_the_ancient' WHERE `entry` = 15381;
INSERT INTO script_texts VALUES (-1000653,'glances at her compatriots.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,2,'MERITHRA_EMOTE_1');
INSERT INTO script_texts VALUES (-1000652,'Succumb to the endless dream, little ones. Let it consume you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,53,'MERITHRA_YELL_1');
INSERT INTO script_texts VALUES (-1000651,'We will push them back, Anachronos. This I vow. Uphold the end of this task. Let not your hands falter as you seal our fates behind the barrier.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'MERITHRA_SAY_2');
INSERT INTO script_texts VALUES (-1000650,'There is a way...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'MERITHRA_SAY_1');
INSERT INTO script_texts VALUES (-1000649,'nods knowingly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,255,'ARYGOS_EMOTE_1');
INSERT INTO script_texts VALUES (-1000648,'Let them feel the wrath of the Blue Flight! May Malygos protect me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,53,'ARYGOS_YELL_1');
INSERT INTO script_texts VALUES (-1000647,'This distraction will give you and the young druid time enough to seal the gate. Do not falter. Now, let us see how they deal with chaotic magic.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ARYGOS_SAY_1');
INSERT INTO script_texts VALUES (-1000646,'Alexstrasza grant me the resolve to drive our enemies back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,53,'CAELESTRASZ_YELL_1');
INSERT INTO script_texts VALUES (-1000645,'Do not forget the sacrifices made on this day, night elf. We have all suffered immensely at the hands of these beasts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'CAELESTRASZ_SAY_2');
INSERT INTO script_texts VALUES (-1000644,'Aye, Fandral, remember these words: Let not your grief guide your faith. These thoughts you hold... dark places you go, night elf. Absolution cannot be had through misguided vengeance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'CAELESTRASZ_SAY_1');
INSERT INTO script_texts VALUES (-1000642,'falls to one knee - exhausted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,16,'FANDRAL_EMOTE_1');
INSERT INTO script_texts VALUES (-1000643,'hurls the Scepter of the Shifting Sands into the barrier, shattering it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'FANDRAL_EMOTE_2');
INSERT INTO script_texts VALUES (-1000640,'I want nothing to do with Silithus, the Qiraji and least of all, any damned dragons!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'FANDRAL_SAY_5');
INSERT INTO script_texts VALUES (-1000641,'My son\'s soul will find no comfort in this hollow victory, dragon. I will have him back.Thought it takes a millennia, I WILL have my son back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,254,'FANDRAL_SAY_6');
INSERT INTO script_texts VALUES (-1000639,'After the savagery that my people have witnessed and felt, you expect me to accept another burden, dragon? Surely you are mad.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'FANDRAL_SAY_4');
INSERT INTO script_texts VALUES (-1000638,'Ancient ones guide my hand... Wake from your slumber! WAKE AND SEAL THIS CURSED PLACE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'FANDRAL_SAY_3');
INSERT INTO script_texts VALUES (-1000637,'It is done dragon. Lead the way...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'FANDRAL_SAY_2');
INSERT INTO script_texts VALUES (-1000635,'kneels down to pick up the fragments of the shattered scepter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,87,'ANACHRONOS_EMOTE_3');
INSERT INTO script_texts VALUES (-1000636,'My forces cannot overcome the Qiraji defenses. We will not be able to get close enough to place your precious barrier, dragon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'FANDRAL_SAY_1');
INSERT INTO script_texts VALUES (-1000634,'shakes his head in dissapointment.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,255,'ANACHRONOS_EMOTE_2');
INSERT INTO script_texts VALUES (-1000633,'hands the Scepter of the Shifting Sands to Fandral Staghelm.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,1,'ANACHRONOS_EMOTE_1');
INSERT INTO script_texts VALUES (-1000632,'And now you know all that there is to know, mortal...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_10');
INSERT INTO script_texts VALUES (-1000631,'Lord Staghelm, where are you going? You would shatter our bond for the sake of pride?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_9');
INSERT INTO script_texts VALUES (-1000630,'Before I leave this place, I make one final offreing to you, Lord Staghelm. Should a time arise in which you must gain entry to this accursed fortress, use the Scepter of the Shifting Sands on the sacred gong. The magic holding the barrier together will dissipate and the horrors of Ahn\'Qiraj will be unleashed upon the world once more.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_8');
INSERT INTO script_texts VALUES (-1000629,'There is but one duty that remains...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_7');
INSERT INTO script_texts VALUES (-1000628,'It... It is over, Lord Staghelm. We are victorious. Albeit the cost for this victory was great.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_6');
INSERT INTO script_texts VALUES (-1000627,'FINISH THE SPELL STAGHELM! I CANNOT HOLD THE GLYPHS OF WARDING IN PLACE MUCH LONGER! CALL FORTH THE ROOTS!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,53,'ANACHRONOS_SAY_5');
INSERT INTO script_texts VALUES (-1000626,'The sands of time will halt, but only for a moment! I will now conjure the barrier.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_4');
INSERT INTO script_texts VALUES (-1000625,'Stay close...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_3');
INSERT INTO script_texts VALUES (-1000624,'NOW, STAGHELM! WE GO NOW! Prepare your magic!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,81,'ANACHRONOS_SAY_2');
INSERT INTO script_texts VALUES (-1000623,'We must act quickly or all shall be lost!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'ANACHRONOS_SAY_1');
INSERT INTO script_texts VALUES (-1000708,'Let us leave Nightaven, hero. Seek me aut at the grove.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REMULOS_SAY_10');
INSERT INTO script_texts VALUES (-1000707,'It will be done, Eranikus. Be well, ancient one.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REMULOS_SAY_9');
INSERT INTO script_texts VALUES (-1000706,'And heroes... I hold that which you seek. May it once more see the evil dissolved. Remulos, see to it that our champion receives the shard of the Green Flight.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ERANIKUS_SAY_4');
INSERT INTO script_texts VALUES (-1000705,'My lady, I am unworthy of your prayer. Truly, you are an angel of light. Please, assist me in returning to the barrow den so that I may return to the Dream. I like Malfurion, also have a love awaiting me... I must return to her... to protect her...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ERANIKUS_SAY_3');
INSERT INTO script_texts VALUES (-1000703,'For so long, I was lost... The Nightmare\'s corruption had consumed me... And now, you... all of you.. you have saved me. Released me from its grasp.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ERANIKUS_SAY_1');
INSERT INTO script_texts VALUES (-1000704,' But... Malfurion, Cenarius, Ysera... They still fight. They need me. I must return to the Dream at once.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'ERANIKUS_SAY_2');
INSERT INTO script_texts VALUES (-1000701,'falls to one knee.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'TYRANDE_EMOTE_KNEE');
INSERT INTO script_texts VALUES (-1000702,'Praise be to Elune... Eranikus is redeemed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'TYRANDE_YELL_4');
INSERT INTO script_texts VALUES (-1000700,'is wholly consumed by the Light of Elune. Tranquility sets in over the Moonglade.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,6,0,0,'ERANIKUS_ZONE_YELL_CONSUMED');
INSERT INTO script_texts VALUES (-1000699,'I... I feel... I feel the touch of Elune upon my being once more... She smiles upon me... Yes... I...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'ERANIKUS_YELL_10');
INSERT INTO script_texts VALUES (-1000698,'WHY? Why did this happen to... to me? Where were you Tyrande? Where were you when I fell from the grace of Elune?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'ERANIKUS_YELL_9');
INSERT INTO script_texts VALUES (-1000697,'IT BURNS! THE PAIN.. SEARING...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'ERANIKUS_YELL_8');
INSERT INTO script_texts VALUES (-1000695,'You will be forgiven, Eranikus. Elune will always love you. Break free of the bonds that command you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'TYRANDE_YELL_3');
INSERT INTO script_texts VALUES (-1000696,'The grasp of the Old Gods is unmoving. He is consumed by their dark thoughts... I... I... I cannot... cannot channel much longer... Elune aide me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'TYRANDE_SAY_2');
INSERT INTO script_texts VALUES (-1000693,'Tend to the injuries of the wounded, sisters!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'TYRANDE_SAY_1');
INSERT INTO script_texts VALUES (-1000694,'Seek absolution, Eranikus. All will be forgiven...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'TYRANDE_YELL_2');
INSERT INTO script_texts VALUES (-1000692,'Elune, hear my prayers. Grant us serenity! Watch over our fallen...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'TYRANDE_YELL_1');
INSERT INTO script_texts VALUES (-1000690,'Defeated my minions? Then face me, mortals!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'ERANIKUS_YELL_6');
INSERT INTO script_texts VALUES (-1000691,'Remulos, look how easy they fall before me? You can stop this, fool. Turn the druid over to me and it will all be over...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'ERANIKUS_YELL_7');
INSERT INTO script_texts VALUES (-1000689,'Where is your savior? How long can you hold out against my attacks?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'ERANIKUS_YELL_5');
INSERT INTO script_texts VALUES (-1000688,'We will battle these fiends, together! Nighthaven\'s Defenders are also among us. They will fight to the death if asked. Now, quickly, we must drive these aberations back to the Nightmare. Destroy them all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REMULOS_SAY_8');
INSERT INTO script_texts VALUES (-1000687,'Rise, servants of the Nightmare! Rise and destroy this world! Let there be no survivors...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'ERANIKUS_YELL_4');
INSERT INTO script_texts VALUES (-1000686,'Please, champion, protect our people.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REMULOS_SAY_7');
INSERT INTO script_texts VALUES (-1000684,'roars furiously.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'ERANIKUS_EMOTE_ROAR');
INSERT INTO script_texts VALUES (-1000685,'Hurry, $N! We must find protective cover!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REMULOS_SAY_6');
INSERT INTO script_texts VALUES (-1000683,'My redemption? You are bold, little one. My redemption comes by the will of my god.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'ERANIKUS_YELL_3');
INSERT INTO script_texts VALUES (-1000682,'Who is the predictable one, beast? Surely you did not think that we would summon you on top of Malfurion? Your redemption comes, Eranikus. You will be cleansed of this madness - this corruption.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'REMULOS_YELL_2');
INSERT INTO script_texts VALUES (-1000679,'Fiend! Face the might of Cenarius!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'REMULOS_YELL_1');
INSERT INTO script_texts VALUES (-1000680,'lets loose a sinister laugh.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'ERANIKUS_EMOTE_LAUGHT');
INSERT INTO script_texts VALUES (-1000681,'You are certanly not your father, insect. Should it interest me, I would crush you with but a swipe of my claws. Turn Shan\'do Stormrage over to me and your pitiful life will be spared along with the lives of your people.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'ERANIKUS_YELL_2');
INSERT INTO script_texts VALUES (-1000678,'Pitful predictable mortals... You know not what you have done! The master\'s will fulfilled. The Moonglade shall be destroyed and Malfurion along with it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'ERANIKUS_YELL_1');
INSERT INTO script_texts VALUES (-1000677,'Eranikus, Tyrant of the Dream, has entered our world.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,6,0,0,'ERANIKUS_ZONE_YELL_ENTER');
INSERT INTO script_texts VALUES (-1000676,'Defend Nightaven, hero...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REMULOS_SAY_5');
INSERT INTO script_texts VALUES (-1000675,'He will stop at nothing to get to Malfurion\'s physical manifistation. That must not happen... We must keep the beast occupied long enough for Tyrande to arrive.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REMULOS_SAY_4');
INSERT INTO script_texts VALUES (-1000673,'To Nighthaven! Keep your army close, champion.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REMULOS_SAY_2');
INSERT INTO script_texts VALUES (-1000674,'The rift will be opened there, above the Lake Elun\'ara. Prepare yourself, $N. Eranikus\'s entry into our world will be wrought with chaos and strife.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REMULOS_SAY_3');
INSERT INTO script_texts VALUES (-1000672,'We will locate the origin of the Nightmare through the fragments you collected, $N. From there, we will pull Eranikus through a rift in the Dream. Steel yourself, $C. We are inviting the embodiment of the Nightmare into our world.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REMULOS_SAY_1');
DELETE FROM `script_waypoint` WHERE `entry`=11832;
INSERT INTO `script_waypoint` VALUES
   (11832,0,7828.03,-2247.84,463.347,0,''),
   (11832,1,7824.16,-2282.21,458.924,0,''),
   (11832,2,7815.41,-2305.91,455.933,0,''),
   (11832,3,7835.07,-2310.35,456.364,0,''),
   (11832,4,7870.14,-2311.42,464.112,0,''),
   (11832,5,7911.79,-2308.67,468.235,0,''),
   (11832,6,7935.56,-2316.32,474.396,0,''),
   (11832,7,7948.92,-2335.11,481.027,0,''),
   (11832,8,7957.35,-2373.82,486.443,0,''),
   (11832,9,7968.63,-2473.07,486.651,0,''),
   (11832,10,7963.92,-2493.03,487.779,0,''),
   (11832,11,7972.05,-2518.08,487.722,0,''),
   (11832,12,7973.89,-2531.82,491.558,0,''),
   (11832,13,7976.55,-2551.91,490.082,0,''),
   (11832,14,7948.81,-2567.44,489.466,0,''),
   (11832,15,7947.63,-2582.91,490.071,0,''),
   (11832,16,7951.58,-2595.98,489.875,0,''),
   (11832,17,7948.39,-2611.54,492.354,0,''),
   (11832,18,7927.11,-2628.41,492.464,0,''),
   (11832,19,7949.15,-2611.47,492.391,0,''),
   (11832,20,7951.54,-2590.61,490.081,0,''),
   (11832,21,7938.92,-2578.58,488.584,0,''),
   (11832,22,7905.56,-2566.25,488.383,0,''),
   (11832,23,7836.15,-2571.16,489.288,0,''),
   (11832,24,7890.68,-2566.41,487.253,0,''),
   (11832,25,7894.27,-2576.92,487.443,0,'');
UPDATE creature_template SET speed = 3 WHERE entry = 11832;
UPDATE creature_template SET minhealth = 119770 WHERE entry = 11832;
UPDATE creature_template SET maxhealth = 119770 WHERE entry = 11832;
UPDATE creature_template SET minmana = 115815 WHERE entry = 11832;
UPDATE creature_template SET maxmana = 115815 WHERE entry = 11832;
UPDATE creature_template SET faction_a = 14 WHERE entry = 15629;
UPDATE creature_template SET faction_h = 14 WHERE entry = 15629;
