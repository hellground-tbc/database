INSERT INTO `account_state` (`account_state_id`, `name`) VALUES
(1, 'Active'),
(2, 'IP locked'),
(3, 'Frozen');

INSERT INTO `client_os_version` VALUES
(0, 'Unknown'),
(1, 'Microsoft Windows'),
(2, 'Apple Macintosh OSX'),
(3, 'Custom WoW Chat Client');

INSERT INTO `expansion` VALUES
(0, 'World of Warcraft'),
(1, 'World of Warcraft: The Burning Crusade'),
(2, 'World of Warcraft: Wrath of the Lich King'),
(3, 'World of Warcraft: Cataclysm');

INSERT INTO `punishment_type` VALUES
(1, 'Account mute'),
(2, 'Account ban');

INSERT INTO `locale` VALUES
(0, 'enUS'),
(1, 'koKR'),
(2, 'frFR'),
(3, 'deDE'),
(4, 'zhCN'),
(5, 'zhTW'),
(6, 'esES'),
(7, 'esMX'),
(8, 'ruRU');
