CREATE TABLE IF NOT EXISTS `gang_data` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) DEFAULT NULL,
  `rep` decimal(20,2) DEFAULT 0.00,
  `notifications` text DEFAULT '[]',
  `members` text DEFAULT NULL,
  `roles` text DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `colour` int(11) DEFAULT NULL,
  `font` int(11) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `markers` text DEFAULT '[]',
  `shopItems` text NOT NULL DEFAULT '[]',
  `missionTier` int(11) DEFAULT 1,
  `reduceTime` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

CREATE TABLE IF NOT EXISTS `gang_chats` (
  `id` int(11) NOT NULL,
  `chats` longtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  KEY `id` (`id`) USING BTREE,
  CONSTRAINT `gang_chats_ibfk_1` FOREIGN KEY (`id`) REFERENCES `gang_data` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


CREATE TABLE IF NOT EXISTS `gang_invites` (
  `id` int(11) NOT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invitedBy` text DEFAULT NULL,
  `rank` text DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `gang_invites_ibfk_1` FOREIGN KEY (`id`) REFERENCES `gang_data` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

CREATE TABLE IF NOT EXISTS `gang_logs` (
  `id` int(11) NOT NULL,
  `logs` longtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  KEY `id` (`id`) USING BTREE,
  CONSTRAINT `gang_logs_ibfk_1` FOREIGN KEY (`id`) REFERENCES `gang_data` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

CREATE TABLE IF NOT EXISTS `gang_members` (
  `id` int(11) NOT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `notifications` text DEFAULT '[]',
  `missionTimer` int(255) DEFAULT 0,
  `currentMission` text DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `gang_members_ibfk_1` FOREIGN KEY (`id`) REFERENCES `gang_data` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

CREATE TABLE IF NOT EXISTS `gang_sprays` (
  `sprayId` int(20) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `rotation` varchar(255) DEFAULT NULL,
  `gang_info` text DEFAULT NULL,
  PRIMARY KEY (`sprayId`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  CONSTRAINT `gang_sprays_ibfk_1` FOREIGN KEY (`id`) REFERENCES `gang_data` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

CREATE TABLE IF NOT EXISTS `gang_benches` (
	`id` INT(11) NOT NULL,
	`benchId` INT(11) NOT NULL AUTO_INCREMENT,
	`location` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`rotation` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`lastUsed` INT(11) NOT NULL DEFAULT '0',
	`userPlaced` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	PRIMARY KEY (`benchId`) USING BTREE,
	INDEX `id` (`id`) USING BTREE,
	CONSTRAINT `gang_benches_ibfk_1` FOREIGN KEY (`id`) REFERENCES `gang_data` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE
) COLLATE='utf8mb3_general_ci' ENGINE=InnoDB;