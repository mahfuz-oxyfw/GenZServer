CREATE TABLE IF NOT EXISTS `jakrino_vehicle_rental` (
  `citizenid` varchar(50) NOT NULL,
  `vehicles` longtext DEFAULT NULL,
  `favorites` longtext NOT NULL DEFAULT '{}',
  PRIMARY KEY (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;