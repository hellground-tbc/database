-- World drop recipes fixed drop by Firehex
-- This will add loot reference with world recipes to more than 200 npc.You can add  much more,if you wish. This loot reference was not used by any npc. That is why players can't get some recipes from list below.
--  Just examples of recipes, which don't have drop resource  http://letswow.ru/wowhead/?item=29730 ,  http://letswow.ru/wowhead/?item=23621 , http://letswow.ru/wowhead/?item=33954
-- I use different item numbers ,because - NOTE: For reference entries this field has no meaning and not used by the core in any way. Yet because of the PRIMARY KEY on the entry + item combination, this field will nonetheless need to be a unique number for each reference entry so that no indexing conflicts arise.

-- Entry is random id of npc, which I took from links below.
delete from creature_loot_template  where mincountOrRef='-10006';
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`) Values
 ('19554', '1', '0.06', '1', '-10006'),
 ('25363', '2', '0.02', '1', '-10006'),
 ('22878', '3', '0.01', '1', '-10006'),
 ('22855', '4', '0.01', '1', '-10006'),
 ('17722', '5', '0.01', '1', '-10006'),
 ('18323', '6', '0.01', '1', '-10006'),
 ('17895', '7', '0.01', '1', '-10006'),
 ('24686', '8', '0.01', '1', '-10006'),
 ('19985', '9', '0.01', '1', '-10006'),
 ('25867', '10', '0.01', '1', '-10006'),
 ('25507', '11', '0.01', '1', '-10006'),
 ('22873', '12', '0.01', '1', '-10006'),
 ('17803', '13', '0.01', '1', '-10006'),
 ('16699', '14', '0.01', '1', '-10006'),
 ('17815', '15', '0.01', '1', '-10006'),
 ('18064', '16', '0.01', '1', '-10006'),
 ('18319', '17', '0.01', '1', '-10006'),
 ('24689', '18', '0.01', '1', '-10006'),
 ('15551', '19', '0.01', '1', '-10006'),
 ('22945', '20', '0.01', '1', '-10006'),
 ('16540', '21', '0.01', '1', '-10006'),
 ('23236', '22', '0.01', '1', '-10006'),
 ('16409', '23', '0.01', '1', '-10006'),
 ('17860', '24', '0.01', '1', '-10006'),
 ('21181', '25', '0.04', '1', '-10006'),
 ('20766', '26', '0.01', '1', '-10006'),
 ('19510', '27', '0.01', '1', '-10006'),
 ('17816', '28', '0.01', '1', '-10006'),
 ('23394', '29', '0.02', '1', '-10006'),
 ('22959', '30', '0.01', '1', '-10006'),
 ('18317', '31', '0.01', '1', '-10006'),
 ('18313', '32', '0.01', '1', '-10006'),
 ('16414', '33', '0.01', '1', '-10006'),
 ('18495', '34', '0.01', '1', '-10006'),
 ('18635', '35', '0.01', '1', '-10006'),
 ('17908', '36', '0.04', '1', '-10006'),
 ('21227', '37', '0.02', '1', '-10006'),
 ('20034', '38', '0.01', '1', '-10006'),
 ('23029', '39', '0.01', '1', '-10006'),
 ('22884', '40', '0.02', '1', '-10006'),
 ('25369', '41', '0.01', '1', '-10006'),
 ('22883', '42', '0.01', '1', '-10006'),
 ('21302', '43', '0.01', '1', '-10006'),
 ('21021', '44', '0.01', '1', '-10006'),
 ('17695', '45', '0.01', '1', '-10006'),
 ('17725', '46', '0.01', '1', '-10006'),
 ('18501', '47', '0.01', '1', '-10006'),
 ('18065', '48', '0.01', '1', '-10006'),
 ('17726', '49', '0.01', '1', '-10006'),
 ('18092', '50', '0.01', '1', '-10006'),
 ('16461', '51', '0.01', '1', '-10006'),
 ('19754', '52', '0.01', '1', '-10006'),
 ('16472', '53', '0.01', '1', '-10006'),
 ('22960', '54', '0.01', '1', '-10006'),
 ('19795', '55', '0.01', '1', '-10006'),
 ('19389', '56', '0.01', '1', '-10006'),
 ('23239', '57', '0.01', '1', '-10006'),
 ('17805', '58', '0.01', '1', '-10006'),
 ('20774', '59', '0.01', '1', '-10006'),
 ('21702', '60', '0.01', '1', '-10006'),
 ('21224', '61', '0.01', '1', '-10006'),
 ('22874', '62', '0.01', '1', '-10006'),
 ('18883', '63', '0.01', '1', '-10006'),
 ('18318', '64', '0.01', '1', '-10006'),
 ('18203', '65', '0.01', '1', '-10006'),
 ('16539', '66', '0.01', '1', '-10006'),
 ('24687', '67', '0.01', '1', '-10006'),
 ('20047', '68', '0.01', '1', '-10006'),
 ('16470', '69', '0.01', '1', '-10006'),
 ('20634', '70', '0.01', '1', '-10006'),
 ('16504', '71', '0.01', '1', '-10006'),
 ('20033', '72', '0.01', '1', '-10006'),
 ('20032', '73', '0.01', '1', '-10006'),
 ('23018', '74', '0.01', '1', '-10006'),
 ('16544', '75', '0.01', '1', '-10006'),
 ('23172', '76', '0.01', '1', '-10006'),
 ('22244', '77', '0.01', '1', '-10006'),
 ('18420', '78', '0.01', '1', '-10006'),
 ('23374', '79', '0.01', '1', '-10006'),
 ('23222', '80', '0.01', '1', '-10006'),
 ('23028', '81', '0.01', '1', '-10006'),
 ('21221', '82', '0.01', '1', '-10006'),
 ('20284', '83', '0.01', '1', '-10006'),
 ('21350', '84', '0.01', '1', '-10006'),
 ('20803', '85', '0.01', '1', '-10006'),
 ('18558', '86', '0.01', '1', '-10006'),
 ('22313', '87', '0.01', '1', '-10006'),
 ('19657', '88', '0.01', '1', '-10006'),
 ('21891', '89', '0.01', '1', '-10006'),
 ('17833', '90', '0.01', '1', '-10006'),
 ('18309', '91', '0.01', '1', '-10006'),
 ('24684', '92', '0.01', '1', '-10006'),
 ('18633', '93', '0.01', '1', '-10006'),
 ('18311', '94', '0.01', '1', '-10006'),
 ('19429', '95', '0.01', '1', '-10006'),
 ('17269', '96', '0.01', '1', '-10006'),
 ('17819', '97', '0.01', '1', '-10006'),
 ('17148', '98', '0.01', '1', '-10006'),
 ('17370', '99', '0.01', '1', '-10006'),
 ('16425', '100', '0.01', '1', '-10006'),
 ('18328', '101', '0.01', '1', '-10006'),
 ('15547', '102', '0.01', '1', '-10006'),
 ('24688', '103', '0.01', '1', '-10006'),
 ('18493', '104', '0.01', '1', '-10006'),
 ('20031', '105', '0.01', '1', '-10006'),
 ('20990', '106', '0.01', '1', '-10006'),
 ('18631', '107', '0.01', '1', '-10006'),
 ('18794', '108', '0.01', '1', '-10006'),
 ('17800', '109', '0.01', '1', '-10006'),
 ('17802', '110', '0.01', '1', '-10006'),
 ('18934', '111', '0.01', '1', '-10006'),
 ('18331', '112', '0.01', '1', '-10006'),
 ('17517', '113', '0.01', '1', '-10006'),
 ('16530', '114', '0.01', '1', '-10006'),
 ('20749', '115', '0.01', '1', '-10006'),
 ('18325', '116', '0.01', '1', '-10006'),
 ('24697', '117', '0.01', '1', '-10006'),
 ('20043', '118', '0.01', '1', '-10006'),
 ('18637', '119', '0.01', '1', '-10006'),
 ('18640', '120', '0.01', '1', '-10006'),
 ('18638', '121', '0.01', '1', '-10006'),
 ('22955', '122', '0.01', '1', '-10006'),
 ('17820', '123', '0.01', '1', '-10006'),
 ('18312', '124', '0.01', '1', '-10006'),
 ('24698', '125', '0.01', '1', '-10006'),
 ('17083', '126', '0.01', '1', '-10006'),
 ('17309', '127', '0.01', '1', '-10006'),
 ('18521', '128', '0.01', '1', '-10006'),
 ('18220', '129', '0.01', '1', '-10006'),
 ('18326', '130', '0.01', '1', '-10006'),
 ('21804', '131', '0.01', '1', '-10006'),
 ('16468', '132', '0.01', '1', '-10006'),
 ('22939', '133', '0.01', '1', '-10006'),
 ('18524', '134', '0.01', '1', '-10006'),
 ('18702', '135', '0.01', '1', '-10006'),
 ('22242', '136', '0.01', '1', '-10006'),
 ('20036', '137', '0.01', '1', '-10006'),
 ('21694', '138', '0.01', '1', '-10006'),
 ('23223', '139', '0.01', '1', '-10006'),
 ('21126', '140', '0.01', '1', '-10006'),
 ('22309', '141', '0.01', '1', '-10006'),
 ('20049', '142', '0.01', '1', '-10006'),
 ('20048', '143', '0.01', '1', '-10006'),
 ('22363', '144', '0.01', '1', '-10006'),
 ('18062', '145', '0.01', '1', '-10006'),
 ('18796', '146', '0.01', '1', '-10006'),
 ('19608', '147', '0.01', '1', '-10006'),
 ('18172', '148', '0.01', '1', '-10006'),
 ('18848', '149', '0.01', '1', '-10006'),
 ('22311', '150', '0.01', '1', '-10006'),
 ('16173', '151', '0.01', '1', '-10006'),
 ('17464', '152', '0.01', '1', '-10006'),
 ('16389', '153', '0.01', '1', '-10006'),
 ('16424', '154', '0.01', '1', '-10006'),
 ('20136', '155', '0.01', '1', '-10006'),
 ('18499', '156', '0.01', '1', '-10006'),
 ('21809', '157', '0.01', '1', '-10006'),
 ('17898', '158', '0.01', '1', '-10006'),
 ('24065', '159', '0.01', '1', '-10006'),
 ('16488', '160', '0.01', '1', '-10006'),
 ('21455', '161', '0.01', '1', '-10006'),
 ('22241', '162', '0.01', '1', '-10006'),
 ('19995', '163', '0.01', '1', '-10006'),
 ('19957', '164', '0.01', '1', '-10006'),
 ('21238', '165', '0.01', '1', '-10006'),
 ('18320', '166', '0.01', '1', '-10006'),
 ('19948', '167', '0.01', '1', '-10006'),
 ('20035', '168', '0.01', '1', '-10006'),
 ('19633', '169', '0.01', '1', '-10006'),
 ('18404', '170', '0.01', '1', '-10006'),
 ('23196', '171', '0.01', '1', '-10006'),
 ('23237', '172', '0.01', '1', '-10006'),
 ('22963', '173', '0.01', '1', '-10006'),
 ('21299', '174', '0.01', '1', '-10006'),
 ('21220', '175', '0.01', '1', '-10006'),
 ('22875', '176', '0.01', '1', '-10006'),
 ('20050', '177', '0.01', '1', '-10006'),
 ('17897', '178', '0.01', '1', '-10006'),
 ('12378', '179', '0.01', '1', '-10006'),
 ('24978', '180', '0.01', '1', '-10006'),
 ('21180', '181', '0.01', '1', '-10006'),
 ('21058', '182', '0.01', '1', '-10006'),
 ('16545', '183', '0.01', '1', '-10006'),
 ('22821', '184', '0.01', '1', '-10006'),
 ('20896', '185', '0.01', '1', '-10006'),
 ('18642', '186', '0.01', '1', '-10006'),
 ('16595', '187', '0.01', '1', '-10006'),
 ('16481', '188', '0.01', '1', '-10006'),
 ('21229', '189', '0.01', '1', '-10006'),
 ('22869', '190', '0.01', '1', '-10006'),
 ('23337', '191', '0.01', '1', '-10006'),
 ('19944', '192', '0.01', '1', '-10006'),
 ('21839', '193', '0.01', '1', '-10006'),
 ('19598', '194', '0.01', '1', '-10006'),
 ('20873', '195', '0.01', '1', '-10006'),
 ('23285', '196', '0.01', '1', '-10006'),
 ('22880', '197', '0.01', '1', '-10006'),
 ('20883', '198', '0.01', '1', '-10006'),
 ('20059', '199', '0.01', '1', '-10006'),
 ('22964', '200', '0.01', '1', '-10006'),
 ('20881', '201', '0.01', '1', '-10006'),
 ('20037', '202', '0.01', '1', '-10006'),
 ('21383', '203', '0.01', '1', '-10006'),
 ('17420', '204', '0.01', '1', '-10006'),
 ('22946', '205', '0.01', '1', '-10006');

  
-- SQL for checking for same entry
/*
select * from creature_loot_template where mincountOrRef='-10006' 
group by entry having count(*) > 1
 */
 
-- delete wrong item from reference (It's marked)
DELETE FROM `reference_loot_template` WHERE (`entry`='10006') AND (`item`='29279');

-- Items list of  10006 reference - names and links were made by myself
/*
16253  Formula: Enchant Chest - Greater Stats  http://www.wowhead.com/item=16253#comments 
22532  Formula: Enchant Bracer - Restore Mana Prime http://www.wowhead.com/item=22532
22540  Formula: Enchant Shield - Parry  http://www.wowhead.com/item=22540
22541  Formula: Enchant Shield - Resistance http://www.wowhead.com/item=22541
22542  Formula: Enchant Boots - Vitality   http://www.wowhead.com/item=22542
22548  Formula: Enchant Cloak - Major Resistance http://www.wowhead.com/item=22548
22553  Formula: Enchant Weapon - Potency  http://www.wowhead.com/item=22553#comments
22557  Formula: Enchant Weapon - Battlemaster  http://www.wowhead.com/item=22557
22558  Formula: Enchant Weapon - Spellsurge http://www.wowhead.com/item=22558
22903  Recipe: Insane Strength Potion   http://www.wowhead.com/item=22903
22912  Recipe: Heroic Potion  http://www.wowhead.com/item=22912
22913  Recipe: Haste Potion http://www.wowhead.com/item=22913
22919  Recipe: Elixir of Major Mageblood http://www.wowhead.com/item=22919
22926  Recipe: Elixir of Empowerment http://www.wowhead.com/item=22926
23620  Plans: Felfury Gauntlets  http://www.wowhead.com/item=23620
23621  Plans: Gauntlets of the Iron Tower http://www.wowhead.com/item=23621
23622  Plans: Steelgrip Gauntlets  http://www.wowhead.com/item=23622
23623  Plans: Storm Helm http://www.wowhead.com/item=23623
23625  Plans: Oathkeeper's Helm  http://www.wowhead.com/item=23625 
23626  Plans: Black Felsteel Bracers  http://www.wowhead.com/item=23626
23627  Plans: Bracers of the Green Fortress  http://www.wowhead.com/item=23627
23628  Plans: Blessed Bracers  http://www.wowhead.com/item=23628
23629  Plans: Felsteel Longblade  http://www.wowhead.com/item=23629
23630  Plans: Khorium Champion http://www.wowhead.com/item=23630
23631  Plans: Fel Edged Battleaxe http://www.wowhead.com/item=23631 
23632  Plans: Felsteel Reaper http://www.wowhead.com/item=23632 
23633  Plans: Runic Hammer http://www.wowhead.com/item=23633 
23634  Plans: Fel Hardened Maul http://www.wowhead.com/item=23634
23635  Plans: Eternium Runed Blade http://www.wowhead.com/item=23635
23636  Plans: Dirge http://www.wowhead.com/item=23636
23802  Schematic: Ornate Khorium Rifle http://www.wowhead.com/item=23802
23804  Schematic: Power Amplification Goggles http://www.wowhead.com/item=23804
23810  Schematic: Crashin' Thrashin' Robot http://www.wowhead.com/item=23810
23883  Schematic: Healing Potion Injector http://www.wowhead.com/item=23883
23884  Schematic: Mana Potion Injector  http://www.wowhead.com/item=23884
24164  Design: Delicate Eternium Ring http://www.wowhead.com/item=24164
24165  Design: Blazing Eternium Band http://www.wowhead.com/item=24165
24166  Design: Thick Felsteel Necklace  http://www.wowhead.com/item=24166
24167  Design: Living Ruby Pendant http://www.wowhead.com/item=24167
24168  Design: Braided Eternium Chain http://www.wowhead.com/item=24168 
24169  Design: Eye of the Night http://www.wowhead.com/item=24169
24171  Design: Chain of the Twilight Owl  http://www.wowhead.com/item=24171
24296  Pattern: Unyielding Bracers  http://www.wowhead.com/item=24296
24297  Pattern: Bracers of Havok  http://www.wowhead.com/item=24297
24298  Pattern: Blackstrike Bracers http://www.wowhead.com/item=24298
24299  Pattern: Cloak of the Black Void  http://www.wowhead.com/item=24299
24300  Pattern: Cloak of Eternity  http://www.wowhead.com/item=24300
24301  Pattern: White Remedy Cape  http://www.wowhead.com/item=24301
24302  Pattern: Unyielding Girdle http://www.wowhead.com/item=24302
24303  Pattern: Girdle of Ruination http://www.wowhead.com/item=24303
24305  Pattern: Resolute Cape  http://www.wowhead.com/item=24305
25887  Schematic: Purple Smoke Flare http://www.wowhead.com/item=25887
28270  Formula: Enchant Chest - Major Resilience http://www.wowhead.com/item=28270
28280  Formula: Enchant Boots - Boar's Speed http://www.wowhead.com/item=28280 
29279  Violet Signet of the Great Protector http://www.wowhead.com/item=29279  < NOT RECIPE !!!
29723  Pattern: Cobrascale Hood http://www.wowhead.com/item=29723
29724  Pattern: Cobrascale Gloves http://www.wowhead.com/item=29724
29725  Pattern: Windscale Hood http://www.wowhead.com/item=29725
29726  Pattern: Hood of Primal Life http://www.wowhead.com/item=29726
29727  Pattern: Gloves of the Living Touch http://www.wowhead.com/item=29727
29728  Pattern: Windslayer Wraps  http://www.wowhead.com/item=29728
29729  Pattern: Living Dragonscale Helm http://www.wowhead.com/item=29729
29730  Pattern: Earthen Netherscale Boots http://www.wowhead.com/item=29730
29731  Pattern: Windstrike Gloves http://www.wowhead.com/item=29731
29732  Pattern: Netherdrake Helm http://www.wowhead.com/item=29732
29733  Pattern: Netherdrake Gloves http://www.wowhead.com/item=29733
29734  Pattern: Thick Netherscale Breastplate http://www.wowhead.com/item=29734
31875  Design: Rigid Star of Elune http://www.wowhead.com/item=31875
31876  Design: Shifting Nightseye http://www.wowhead.com/item=31876
31877  Design: Glinting Nightseye http://www.wowhead.com/item=31877
33186  Plans: Adamantite Weapon Chain  http://www.wowhead.com/item=33186
33954  Plans: Hammer of Righteous Might http://www.wowhead.com/item=33954
*/
