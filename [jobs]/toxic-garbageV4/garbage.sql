-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.20-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- tablo yapısı dökülüyor toxicv4.toxic_garbage
CREATE TABLE IF NOT EXISTS `toxic_garbage` (
  `citizenid` varchar(255) DEFAULT NULL,
  `currentXP` int(11) DEFAULT NULL,
  `Tasks` longtext DEFAULT NULL,
  `EarnedMoney` int(11) DEFAULT 0,
  `DrawedMoney` int(11) DEFAULT 0,
  `TaskResetTime` int(11) DEFAULT 0,
  `MoneyResetTime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- toxicv4.toxic_garbage: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `toxic_garbage` DISABLE KEYS */;
INSERT INTO `toxic_garbage` (`citizenid`, `currentXP`, `Tasks`, `EarnedMoney`, `DrawedMoney`, `TaskResetTime`, `MoneyResetTime`) VALUES
  ('ZXO46732', 1200, '{"3":{"Collected":false,"Reward":{"Price":358,"Exp":3563},"id":3,"requiredCount":5, "TaskDescription":"As you complete each task, the bar advances one level.","hasCount":2,"TaskName":"4. 5 Job Complete"},"2":{"Collected":false,"Reward":{"Price":358,"Exp":3563},"id":2,"requiredCount":5,"TaskDescription":" The quest progresses with each valuable item you find.","hasCount":5,"TaskName":"3. Find"},"1":{"Collected":true,"Reward":{"Price":200,"Exp":700},"id":1,"requiredCount":2,"TaskDescription":" You will receive rewards for completing two tasks.","hasCount":2,"TaskName":"Your Second Job Complete"},"0":{"Collected":true,"Reward":{"Price":2500,"Exp":500},"id":0,"requiredCount":1,"TaskDescription":" You will receive a reward when you complete your first task.","hasCount":1,"TaskName":"1. Complete"},"5":{"Collected":false,"Reward":{"Price":358,"Exp":3563},"id":5,"requiredCount":5,"TaskDescription":" As you complete each task, the bar advances one level.","hasCount":2,"TaskName":"#6 5 Task Finish"},"4":{"Collected":false,"Reward":{"Price":358,"Exp":3563},"id":4,"requiredCount":1,"TaskDescription":" You will receive a reward when you find the first valuable item.","hasCount":1,"TaskName":"5. Find Your First Rare"}}', 0, 4800, 1732326466, 1732325591);
/*!40000 ALTER TABLE `toxic_garbage` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
