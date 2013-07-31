-- cleanup for creature_addon (missing PK and doublicate entrys in conflict)
-- convert aura field from blob to text
-- NOTE: later we should convert text to varchar whould perform better (if needed)
DROP TABLE IF EXISTS _temp_creature_addon;
RENAME TABLE creature_addon TO _temp_creature_addon;

CREATE TABLE `creature_addon` (
  `guid` DOUBLE DEFAULT NULL,
  `path_id` DOUBLE DEFAULT NULL,
  `mount` INT(11) DEFAULT NULL,
  `bytes0` DOUBLE DEFAULT NULL,
  `bytes1` DOUBLE DEFAULT NULL,
  `bytes2` DOUBLE DEFAULT NULL,
  `emote` DOUBLE DEFAULT NULL,
  `moveflags` DOUBLE DEFAULT NULL,
  `auras` TEXT DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

-- replace into causeconflicts with guid 91 and guid 12549 (multiple entrys) pls check those npc guids.
-- 91 has different emotes (0,233), 12549 has different path guid (551778,2086)
-- this uses the last entry as valid
REPLACE INTO creature_addon
SELECT * FROM _temp_creature_addon;

DROP TABLE _temp_creature_addon;



-- cleanup for creature_template (missing PK, doublicate entrys in conflict and some NULL entrys)
DROP TABLE IF EXISTS _temp_creature_template;
RENAME TABLE creature_template TO _temp_creature_template;

CREATE TABLE `creature_template` (
  `entry` INT(11) DEFAULT NULL,
  `heroic_entry` INT(11) DEFAULT NULL,
  `KillCredit` INT(11) DEFAULT NULL,
  `modelid_A` INT(11) DEFAULT NULL,
  `modelid_A2` INT(11) DEFAULT NULL,
  `modelid_H` INT(11) DEFAULT NULL,
  `modelid_H2` INT(11) DEFAULT NULL,
  `name` VARCHAR(300) CHARACTER SET latin1 DEFAULT NULL,
  `subname` VARCHAR(300) CHARACTER SET latin1 DEFAULT NULL,
  `IconName` VARCHAR(300) CHARACTER SET latin1 DEFAULT NULL,
  `minlevel` TINYINT(3) DEFAULT NULL,
  `maxlevel` TINYINT(3) DEFAULT NULL,
  `minhealth` DOUBLE DEFAULT NULL,
  `maxhealth` DOUBLE DEFAULT NULL,
  `minmana` DOUBLE DEFAULT NULL,
  `maxmana` DOUBLE DEFAULT NULL,
  `armor` INT(11) DEFAULT NULL,
  `faction_A` INT(11) DEFAULT NULL,
  `faction_H` INT(11) DEFAULT NULL,
  `npcflag` DOUBLE DEFAULT NULL,
  `speed` FLOAT DEFAULT NULL,
  `scale` FLOAT DEFAULT NULL,
  `rank` TINYINT(3) DEFAULT NULL,
  `mindmg` FLOAT DEFAULT NULL,
  `maxdmg` FLOAT DEFAULT NULL,
  `dmgschool` TINYINT(4) DEFAULT NULL,
  `attackpower` DOUBLE DEFAULT NULL,
  `baseattacktime` DOUBLE DEFAULT NULL,
  `rangeattacktime` DOUBLE DEFAULT NULL,
  `unit_flags` DOUBLE DEFAULT NULL,
  `dynamicflags` DOUBLE DEFAULT NULL,
  `family` TINYINT(4) DEFAULT NULL,
  `trainer_type` TINYINT(4) DEFAULT NULL,
  `trainer_spell` INT(11) DEFAULT NULL,
  `class` TINYINT(3) DEFAULT NULL,
  `race` TINYINT(3) DEFAULT NULL,
  `minrangedmg` FLOAT DEFAULT NULL,
  `maxrangedmg` FLOAT DEFAULT NULL,
  `rangedattackpower` INT(11) DEFAULT NULL,
  `type` TINYINT(3) DEFAULT NULL,
  `type_flags` DOUBLE DEFAULT NULL,
  `lootid` INT(11) DEFAULT NULL,
  `pickpocketloot` INT(11) DEFAULT NULL,
  `skinloot` INT(11) DEFAULT NULL,
  `resistance1` INT(11) DEFAULT NULL,
  `resistance2` INT(11) DEFAULT NULL,
  `resistance3` INT(11) DEFAULT NULL,
  `resistance4` INT(11) DEFAULT NULL,
  `resistance5` INT(11) DEFAULT NULL,
  `resistance6` INT(11) DEFAULT NULL,
  `spell1` INT(11) DEFAULT NULL,
  `spell2` INT(11) DEFAULT NULL,
  `spell3` INT(11) DEFAULT NULL,
  `spell4` INT(11) DEFAULT NULL,
  `spell5` INT(11) DEFAULT NULL,
  `PetSpellDataId` INT(11) DEFAULT NULL,
  `mingold` INT(11) DEFAULT NULL,
  `maxgold` INT(11) DEFAULT NULL,
  `AIName` VARCHAR(192) CHARACTER SET latin1 DEFAULT NULL,
  `MovementType` TINYINT(3) DEFAULT NULL,
  `InhabitType` TINYINT(3) DEFAULT NULL,
  `RacialLeader` TINYINT(3) DEFAULT NULL,
  `RegenHealth` TINYINT(3) DEFAULT NULL,
  `equipment_id` INT(11) DEFAULT NULL,
  `mechanic_immune_mask` DOUBLE DEFAULT NULL,
  `flags_extra` DOUBLE DEFAULT NULL,
  `ScriptName` VARCHAR(192) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

-- there are some null entrys, delete them
DELETE FROM _temp_creature_template WHERE entry = NULL;

-- 29089 in conflict but only null vs 0, need NO recheck
-- this uses the last entry as valid
REPLACE INTO creature_template
SELECT * FROM _temp_creature_template;

DROP TABLE _temp_creature_template;



-- cleanup for spell_enchant_proc_data (missing PK, doublicate entrys in conflict)
DROP TABLE IF EXISTS _temp_spell_enchant_proc_data;
RENAME TABLE spell_enchant_proc_data TO _temp_spell_enchant_proc_data;

CREATE TABLE `spell_enchant_proc_data` (
  `entry` INT(10) UNSIGNED NOT NULL,
  `customChance` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `PPMChance` FLOAT UNSIGNED NOT NULL DEFAULT '0',
  `procFlags` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `procEx` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Spell enchant proc data';

-- all doublicates identic, need NO recheck
REPLACE INTO spell_enchant_proc_data
SELECT * FROM _temp_spell_enchant_proc_data;

DROP TABLE _temp_spell_enchant_proc_data;



-- cleanup for playercreateinfo_action (missing PK)
DROP TABLE IF EXISTS _temp_playercreateinfo_action;
RENAME TABLE playercreateinfo_action TO _temp_playercreateinfo_action;

CREATE TABLE `playercreateinfo_action` (
  `race` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `class` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `button` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `action` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `type` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `misc` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`race`,`class`,`button`),
  KEY `playercreateinfo_race_class_index` (`race`,`class`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

-- NO doublicates, need NO recheck
REPLACE INTO playercreateinfo_action
SELECT * FROM _temp_playercreateinfo_action;

DROP TABLE _temp_playercreateinfo_action;



-- cleanup for spell_linked_spell (missing PK, doublicate entrys in conflict)
DROP TABLE IF EXISTS _temp_spell_linked_spell;
RENAME TABLE spell_linked_spell TO _temp_spell_linked_spell;

CREATE TABLE `spell_linked_spell` (
  `spell_trigger` INT(10) NOT NULL,
  `spell_effect` INT(10) NOT NULL DEFAULT '0',
  `type` SMALLINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `comment` TEXT NOT NULL,
  PRIMARY KEY (`spell_trigger`,`spell_effect`,`type`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

-- all doublicates identic, need NO recheck
REPLACE INTO spell_linked_spell
SELECT * FROM _temp_spell_linked_spell;

DROP TABLE _temp_spell_linked_spell;



-- cleanup for waypoint_data (missing PK, doublicate entrys in conflict)
DROP TABLE IF EXISTS _temp_waypoint_data;
RENAME TABLE waypoint_data TO _temp_waypoint_data;

CREATE TABLE `waypoint_data` (
  `id` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Creature GUID',
  `point` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `position_x` FLOAT NOT NULL DEFAULT '0',
  `position_y` FLOAT NOT NULL DEFAULT '0',
  `position_z` FLOAT NOT NULL DEFAULT '0',
  `delay` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `move_type` TINYINT(1) NOT NULL DEFAULT '0',
  `action` INT(11) NOT NULL DEFAULT '0',
  `action_chance` SMALLINT(3) NOT NULL DEFAULT '100',
  `wpguid` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`point`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

-- probably all doublicates identic, are to much to check
REPLACE INTO waypoint_data
SELECT * FROM _temp_waypoint_data;

DROP TABLE _temp_waypoint_data;



-- cleanup for game_event_npc_gossip (missing PK, doublicate entrys in conflict)
DROP TABLE IF EXISTS _temp_game_event_npc_gossip;
RENAME TABLE game_event_npc_gossip TO _temp_game_event_npc_gossip;

CREATE TABLE `game_event_npc_gossip` (
  `guid` INT(10) UNSIGNED NOT NULL,
  `event_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `textid` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`event_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

-- NO doublicates, need NO recheck
REPLACE INTO game_event_npc_gossip
SELECT * FROM _temp_game_event_npc_gossip;

DROP TABLE _temp_game_event_npc_gossip;
