USE `world`;
-- #169 kopiuje frakcje od entry=900
UPDATE `creature_template` SET `faction_A`='11',`faction_H`='11' WHERE `entry`='3096';
-- # 227 kopiuje frakcje od entry=17936
UPDATE `creature_template` SET `faction_A`='1719',`faction_H`='1719' WHERE `entry`='18036';
-- #234 repeatable
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE `entry`='9142';
-- #275 rozłączam chaina questów
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE (`entry`='10902' OR `entry`='10899' OR `entry`='10897');
-- #238 usuwam następniki z pre-questów które powinny być nieobowiązkowe
UPDATE `quest_template` SET `NextQuestId`='0' WHERE (`entry`='5066' OR `entry`='5090' OR `entry`='5091' OR `entry`='5093' OR `entry`='5094' OR `entry`='5095' OR `entry`='10373' OR `entry`='10374');
-- #293 wywalam item z wymagań na wejście do scholomance
UPDATE `access_requirement` SET `item`='0' WHERE `id`='289';
-- i jeszcze jedno, odkryte przypadkiem, npce mają niewiadomo skąd buffa spirit bond (i to pojedyncze sztuki)
UPDATE `creature_addon` SET `auras`=NULL WHERE `guid`='518'OR `guid`='69011' OR `guid`='72942' OR `guid`='73192' OR`guid`='77583' OR`guid`='77668';

-- #287 "tryfix" zgaduję że winne może być type=critter ( jedyny critter w grze z którego trzeba coś dropnąć)
UPDATE `creature_template` SET `type`='1' WHERE `entry`='23979';
-- powrót: UPDATE `creature_loot_template` SET `type`='8' WHERE `entry`='23979'

-- #136 analogicznie do alterac ram, dla którego symetrycznie frakcja 1274 z tą samą nazwą
UPDATE `creature_template` SET `faction_A`='1275',`faction_H`='1275' WHERE `entry`='10981' OR `entry`='22737';
-- #290
Update `script_texts` set `content_default`='That was fun, but I still await a true challenge!' where `entry`='-1580020';
-- gogrom the dragoncaller (quest item nie jest quest itemem)
update `creature_loot_template` set `ChanceOrQuestChance`='100',`lootcondition`='9',`condition_value1`='10723' where `item`='31754';
-- #298 dafuq?? quest wymaga samego siebie do rozpoczecia
update `quest_template` set `PrevQuestId`='0' where `entry`='9813';
-- #295 +5 inne questy; image of commander ameer - to sa dwa rozne npc maja byc w dwoch roznych miejscach i byc przydzielone do roznych questow
update `creature_template` set `minlevel`='70',`maxlevel`='70',`minhealth`='7000',`maxhealth`='7000',`armor`='20',`faction_A`='1795',`faction_H`='1795',`npcflag`='2',`unit_flags`='4',`equipment_id`='1600' where `entry`='22919';
UPDATE `creature_questrelation` set `id`='22919' where`quest`='10975'or `quest`='10976'or `quest`='10977'or `quest`='10981'or `quest`='10982';
UPDATE `creature_involvedrelation` set `id`='22919' where`quest`='10975'or `quest`='10976'or `quest`='10977'or `quest`='10981'or `quest`='10982' or `quest`='10974';
-- dwa npce stoja dokladnie na sobie, jeden jest niepotrzebny a drugi ma grzecznie sie nie ruszac
delete from `creature` where `guid`='72679';
update `creature_template` set `unit_flags`='33555204' where `entry`='20564';
-- #162 shadow sight causes remove prowl/stealth/invisibility 
insert into `spell_linked_spell` values
(34709, -5215, 1, ''),
(34709, -6783, 1, ''),
(34709, -9913, 1, ''),
(34709, -1784, 1, ''),
(34709, -1785, 1, ''),
(34709, -1786, 1, ''),
(34709, -1787, 1, ''),
(34709, -32612, 1, '');