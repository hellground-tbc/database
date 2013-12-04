Update hellground_string set content_default = 'You can now whisper to GM' where entry = 285;
Update hellground_string set content_default = 'You can no longer whisper to GM' where entry = 286;
Insert into hellground_string values 
('288', 'Whispering to GM activated for %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('289', 'Whispering to GM deactivated for %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
update command set `help`='Syntax: .whispers [name] on|off
Enable/disable accepting whispers by GM, if name provided enable/disable player ability to whisper with GM.' where `name`='whispers'