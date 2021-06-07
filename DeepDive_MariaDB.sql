/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `Boss`;
CREATE TABLE `Boss` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `str` int(1) NOT NULL DEFAULT 1,
    `hp` int(3) NOT NULL DEFAULT 100,
    `standingImageLink` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `iconImageLink` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `createAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
    `updateAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `Character`;
CREATE TABLE `Character` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `dex` int(1) NOT NULL DEFAULT 1,
    `hp` int(2) NOT NULL DEFAULT 10,
    `sp` int(2) NOT NULL DEFAULT 10,
    `standingImageLink` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `iconImageLink` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
    `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `Skill`;
CREATE TABLE `Skill` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `type` boolean NOT NULL,
    `class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `range` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `cost` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `turn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `target` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `additionalEffect` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `castingRange` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `effectRange` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
    `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `Boss_Skills`;
CREATE TABLE `Boss_Skills` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `bossId` int(11) DEFAULT NULL,
    `skillId` int(11) DEFAULT NULL,
    `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
    `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
    PRIMARY KEY (`id`),
    FOREIGN KEY (`bossId`) REFERENCES `Boss` (`id`),
    FOREIGN KEY (`skillId`) REFERENCES `Skill` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `Character_Skills`;
CREATE TABLE `Character_Skills` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `characterId` int(11) DEFAULT NULL,
    `skillId` int(11) DEFAULT NULL,
    `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
    `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
    PRIMARY KEY (`id`),
    FOREIGN KEY (`characterId`) REFERENCES `Character` (`id`),
    FOREIGN KEY (`skillId`) REFERENCES `Skill` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;