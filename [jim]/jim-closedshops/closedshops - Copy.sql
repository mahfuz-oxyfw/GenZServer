CREATE TABLE IF NOT EXISTS `closedshops` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `stash` varchar(255) DEFAULT NULL,
    `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`stash`),
    KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;