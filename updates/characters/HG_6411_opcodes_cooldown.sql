CREATE TABLE `opcodes_cooldown`(
`opcode` VARCHAR(20) NOT NULL COMMENT 'Opcode name',
`cooldown` INT(4) UNSIGNED DEFAULT '1000' COMMENT 'Opcode cooldown',
PRIMARY KEY (`opcode`)
);

INSERT INTO `opcodes_cooldown` VALUES
("CMSG_WHOIS", 1000),
("CMSG_INSPECT", 1000);