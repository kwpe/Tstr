-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.0.45-community-nt - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4743
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for clio
CREATE DATABASE IF NOT EXISTS `clio` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `clio`;


-- Dumping structure for table clio.alternatives
CREATE TABLE IF NOT EXISTS `alternatives` (
  `id` int(11) NOT NULL auto_increment,
  `question_id` int(11) default '0',
  `value` text,
  `status` varchar(1) default '0',
  KEY `Index 1` (`id`),
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table clio.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL auto_increment,
  `description` varchar(200) default '0',
  `status` varchar(1) default '0',
  `parent` int(11) default NULL,
  KEY `Index 1` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table clio.questions
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL auto_increment,
  `content` text,
  `test_id` int(11) default NULL,
  `questionType` varchar(50) default '0',
  `status` varchar(1) default '0',
  `level` int(11) default '0',
  KEY `Index 1` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table clio.tests
CREATE TABLE IF NOT EXISTS `tests` (
  `id` int(11) NOT NULL auto_increment,
  `displayNumber` int(11) NOT NULL,
  `name` varchar(125) NOT NULL,
  `content` text NOT NULL,
  `displayType` varchar(125) NOT NULL,
  `status` varchar(5) NOT NULL,
  `category_id` int(11) NOT NULL,
  KEY `PK_Index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
