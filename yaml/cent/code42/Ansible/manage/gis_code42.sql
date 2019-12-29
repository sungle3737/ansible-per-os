-- --------------------------------------------------------
-- Host:                         stryxfarm01.iptime.org
-- Server version:               5.5.64-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for gis_code42
CREATE DATABASE IF NOT EXISTS `gis_code42` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gis_code42`;

-- Dumping structure for table gis_code42.blur
CREATE TABLE IF NOT EXISTS `blur` (
  `keynumber` bigint(20) NOT NULL AUTO_INCREMENT,
  `pvrid` char(13) NOT NULL,
  `type` int(11) DEFAULT '0',
  `x1` int(11) DEFAULT '0',
  `y1` int(11) DEFAULT '0',
  `x2` int(11) DEFAULT '0',
  `y2` int(11) DEFAULT '0',
  `size` int(11) DEFAULT '0',
  `enable` int(11) DEFAULT '1',
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`keynumber`) USING BTREE,
  KEY `blur_01` (`pvrid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.blur: 0 rows
DELETE FROM `blur`;
/*!40000 ALTER TABLE `blur` DISABLE KEYS */;
/*!40000 ALTER TABLE `blur` ENABLE KEYS */;

-- Dumping structure for table gis_code42.gnss
CREATE TABLE IF NOT EXISTS `gnss` (
  `pvrid` char(13) NOT NULL,
  `utcdate` char(6) DEFAULT NULL,
  `utctime` char(10) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `latitudeindicator` char(1) DEFAULT 'N',
  `longitude` double DEFAULT NULL,
  `longitudeindicator` char(1) DEFAULT 'E',
  `satellite` int(11) DEFAULT NULL,
  `hdop` double DEFAULT NULL,
  `altitude` double DEFAULT NULL,
  `altitudeunits` char(1) DEFAULT 'M',
  `geoidseperation` double DEFAULT NULL,
  `seperationunits` char(1) DEFAULT 'M',
  `speed` double DEFAULT NULL,
  `course` double DEFAULT NULL,
  `magnetic` double DEFAULT NULL,
  `magneticindicator` char(1) DEFAULT 'E',
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`pvrid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.gnss: 0 rows
DELETE FROM `gnss`;
/*!40000 ALTER TABLE `gnss` DISABLE KEYS */;
/*!40000 ALTER TABLE `gnss` ENABLE KEYS */;

-- Dumping structure for table gis_code42.job
CREATE TABLE IF NOT EXISTS `job` (
  `keynumber` bigint(20) NOT NULL AUTO_INCREMENT,
  `pvrid` char(13) NOT NULL,
  `state` int(11) DEFAULT '0',
  `priority` int(11) DEFAULT '50',
  `process` int(11) NOT NULL,
  `param1` char(255) DEFAULT NULL,
  `param2` char(255) DEFAULT NULL,
  `param3` char(255) DEFAULT NULL,
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`keynumber`) USING BTREE,
  KEY `job_01` (`pvrid`) USING BTREE,
  KEY `job_02` (`state`) USING BTREE,
  KEY `job_03` (`priority`) USING BTREE,
  KEY `job_04` (`process`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2203 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- Dumping data for table gis_code42.job: 0 rows
DELETE FROM `job`;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
/*!40000 ALTER TABLE `job` ENABLE KEYS */;

-- Dumping structure for table gis_code42.job_100
CREATE TABLE IF NOT EXISTS `job_100` (
  `keynumber` bigint(20) NOT NULL,
  `pvrid` char(13) NOT NULL,
  `state` int(11) DEFAULT '0',
  `priority` int(11) DEFAULT '50',
  `process` int(11) NOT NULL,
  `param1` char(255) DEFAULT NULL,
  `param2` char(255) DEFAULT NULL,
  `param3` char(255) DEFAULT NULL,
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`keynumber`),
  KEY `job_100_01` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.job_100: 0 rows
DELETE FROM `job_100`;
/*!40000 ALTER TABLE `job_100` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_100` ENABLE KEYS */;

-- Dumping structure for table gis_code42.job_200
CREATE TABLE IF NOT EXISTS `job_200` (
  `keynumber` bigint(20) NOT NULL,
  `pvrid` char(13) NOT NULL,
  `state` int(11) DEFAULT '0',
  `priority` int(11) DEFAULT '50',
  `process` int(11) NOT NULL,
  `param1` char(255) DEFAULT NULL,
  `param2` char(255) DEFAULT NULL,
  `param3` char(255) DEFAULT NULL,
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`keynumber`),
  KEY `job_200_01` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.job_200: 0 rows
DELETE FROM `job_200`;
/*!40000 ALTER TABLE `job_200` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_200` ENABLE KEYS */;

-- Dumping structure for table gis_code42.job_300
CREATE TABLE IF NOT EXISTS `job_300` (
  `keynumber` bigint(20) NOT NULL,
  `pvrid` char(13) NOT NULL,
  `state` int(11) DEFAULT '0',
  `priority` int(11) DEFAULT '50',
  `process` int(11) NOT NULL,
  `param1` char(255) DEFAULT NULL,
  `param2` char(255) DEFAULT NULL,
  `param3` char(255) DEFAULT NULL,
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`keynumber`),
  KEY `job_300_01` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.job_300: 0 rows
DELETE FROM `job_300`;
/*!40000 ALTER TABLE `job_300` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_300` ENABLE KEYS */;

-- Dumping structure for table gis_code42.job_400
CREATE TABLE IF NOT EXISTS `job_400` (
  `keynumber` bigint(20) NOT NULL,
  `pvrid` char(13) NOT NULL,
  `state` int(11) DEFAULT '0',
  `priority` int(11) DEFAULT '50',
  `process` int(11) NOT NULL,
  `param1` char(255) DEFAULT NULL,
  `param2` char(255) DEFAULT NULL,
  `param3` char(255) DEFAULT NULL,
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`keynumber`),
  KEY `job_400_01` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.job_400: 0 rows
DELETE FROM `job_400`;
/*!40000 ALTER TABLE `job_400` DISABLE KEYS */;
INSERT INTO `job_400` (`keynumber`, `pvrid`, `state`, `priority`, `process`, `param1`, `param2`, `param3`, `insertdatetimeus`, `updatedatetimeus`) VALUES
	(7, '0000000000007', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.139821'),
	(8, '0000000000008', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.141538'),
	(9, '0000000000009', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.141623'),
	(10, '0000000000010', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.141666'),
	(11, '0000000000011', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.141709'),
	(12, '0000000000012', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.141752'),
	(13, '0000000000013', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.141786'),
	(14, '0000000000014', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.141820'),
	(15, '0000000000015', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.141853'),
	(16, '0000000000016', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.141887'),
	(17, '0000000000017', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.141921'),
	(18, '0000000000018', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.141955'),
	(19, '0000000000019', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.141989'),
	(20, '0000000000020', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.142023'),
	(21, '0000000000021', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.142056'),
	(22, '0000000000022', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.142090'),
	(23, '0000000000023', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.142124'),
	(24, '0000000000024', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.142158'),
	(25, '0000000000025', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.142192'),
	(26, '0000000000026', 10, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, '2019.12.27 21:06:15.142232'),
	(27, '0000000000027', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(28, '0000000000028', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(29, '0000000000029', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(30, '0000000000030', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(31, '0000000000031', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(32, '0000000000032', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(33, '0000000000033', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(34, '0000000000034', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(35, '0000000000035', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(36, '0000000000036', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(37, '0000000000037', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(38, '0000000000038', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(39, '0000000000039', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(40, '0000000000040', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(41, '0000000000041', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(42, '0000000000042', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(43, '0000000000043', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(44, '0000000000044', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(45, '0000000000045', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(46, '0000000000046', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(47, '0000000000047', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(48, '0000000000048', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(49, '0000000000049', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(50, '0000000000050', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(51, '0000000000051', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(52, '0000000000052', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(53, '0000000000053', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(54, '0000000000054', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(55, '0000000000055', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(56, '0000000000056', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(57, '0000000000057', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(58, '0000000000058', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(59, '0000000000059', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(60, '0000000000060', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(61, '0000000000061', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(62, '0000000000062', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(63, '0000000000063', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(64, '0000000000064', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(65, '0000000000065', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(66, '0000000000066', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(67, '0000000000067', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(68, '0000000000068', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(69, '0000000000069', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(70, '0000000000070', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(71, '0000000000071', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(72, '0000000000072', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(73, '0000000000073', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(74, '0000000000074', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(75, '0000000000075', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(76, '0000000000076', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(77, '0000000000077', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(78, '0000000000078', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(79, '0000000000079', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(80, '0000000000080', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(81, '0000000000081', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(82, '0000000000082', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(83, '0000000000083', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(84, '0000000000084', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(85, '0000000000085', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(86, '0000000000086', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(87, '0000000000087', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(88, '0000000000088', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(89, '0000000000089', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(90, '0000000000090', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(91, '0000000000091', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(92, '0000000000092', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(93, '0000000000093', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(94, '0000000000094', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(95, '0000000000095', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(96, '0000000000096', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(97, '0000000000097', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(98, '0000000000098', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(99, '0000000000099', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(100, '0000000000100', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(101, '0000000000101', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(102, '0000000000102', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(103, '0000000000103', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(104, '0000000000104', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(105, '0000000000105', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(106, '0000000000106', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(107, '0000000000107', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(108, '0000000000108', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(109, '0000000000109', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(110, '0000000000110', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(111, '0000000000111', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(112, '0000000000112', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(113, '0000000000113', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(114, '0000000000114', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(115, '0000000000115', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(116, '0000000000116', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(117, '0000000000117', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(118, '0000000000118', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(119, '0000000000119', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(120, '0000000000120', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(121, '0000000000121', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(122, '0000000000122', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(123, '0000000000123', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(124, '0000000000124', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(125, '0000000000125', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(126, '0000000000126', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(127, '0000000000127', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(128, '0000000000128', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(129, '0000000000129', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(130, '0000000000130', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(131, '0000000000131', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(132, '0000000000132', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(133, '0000000000133', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(134, '0000000000134', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(135, '0000000000135', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(136, '0000000000136', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(137, '0000000000137', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(138, '0000000000138', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(139, '0000000000139', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(140, '0000000000140', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(141, '0000000000141', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(142, '0000000000142', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(143, '0000000000143', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(144, '0000000000144', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(145, '0000000000145', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(146, '0000000000146', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(147, '0000000000147', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(148, '0000000000148', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(149, '0000000000149', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(150, '0000000000150', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(151, '0000000000151', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(152, '0000000000152', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(153, '0000000000153', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(154, '0000000000154', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(155, '0000000000155', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(156, '0000000000156', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(157, '0000000000157', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(158, '0000000000158', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(159, '0000000000159', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(160, '0000000000160', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(161, '0000000000161', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(162, '0000000000162', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(163, '0000000000163', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(164, '0000000000164', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(165, '0000000000165', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(166, '0000000000166', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(167, '0000000000167', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(168, '0000000000168', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(169, '0000000000169', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(170, '0000000000170', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(171, '0000000000171', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(172, '0000000000172', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(173, '0000000000173', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(174, '0000000000174', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(175, '0000000000175', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(176, '0000000000176', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(177, '0000000000177', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(178, '0000000000178', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(179, '0000000000179', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(180, '0000000000180', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(181, '0000000000181', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(182, '0000000000182', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(183, '0000000000183', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(184, '0000000000184', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(185, '0000000000185', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(186, '0000000000186', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(187, '0000000000187', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(188, '0000000000188', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(189, '0000000000189', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(190, '0000000000190', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(191, '0000000000191', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(192, '0000000000192', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(193, '0000000000193', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(194, '0000000000194', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(195, '0000000000195', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(196, '0000000000196', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(197, '0000000000197', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(198, '0000000000198', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(199, '0000000000199', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(200, '0000000000200', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(201, '0000000000201', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(202, '0000000000202', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(203, '0000000000203', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(204, '0000000000204', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(205, '0000000000205', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(206, '0000000000206', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(207, '0000000000207', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(208, '0000000000208', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(209, '0000000000209', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(210, '0000000000210', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(211, '0000000000211', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(212, '0000000000212', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(213, '0000000000213', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(214, '0000000000214', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(215, '0000000000215', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(216, '0000000000216', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(217, '0000000000217', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(218, '0000000000218', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(219, '0000000000219', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(220, '0000000000220', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(221, '0000000000221', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(222, '0000000000222', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(223, '0000000000223', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(224, '0000000000224', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(225, '0000000000225', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(226, '0000000000226', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(227, '0000000000227', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(228, '0000000000228', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(229, '0000000000229', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(230, '0000000000230', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(231, '0000000000231', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(232, '0000000000232', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(233, '0000000000233', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(234, '0000000000234', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(235, '0000000000235', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(236, '0000000000236', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(237, '0000000000237', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(238, '0000000000238', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(239, '0000000000239', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(240, '0000000000240', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(241, '0000000000241', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(242, '0000000000242', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(243, '0000000000243', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(244, '0000000000244', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(245, '0000000000245', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(246, '0000000000246', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(247, '0000000000247', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(248, '0000000000248', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(249, '0000000000249', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(250, '0000000000250', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(251, '0000000000251', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(252, '0000000000252', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(253, '0000000000253', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(254, '0000000000254', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(255, '0000000000255', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(256, '0000000000256', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(257, '0000000000257', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(258, '0000000000258', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(259, '0000000000259', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(260, '0000000000260', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(261, '0000000000261', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(262, '0000000000262', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(263, '0000000000263', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(264, '0000000000264', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(265, '0000000000265', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(266, '0000000000266', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(267, '0000000000267', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(268, '0000000000268', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(269, '0000000000269', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(270, '0000000000270', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(271, '0000000000271', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(272, '0000000000272', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(273, '0000000000273', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(274, '0000000000274', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(275, '0000000000275', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(276, '0000000000276', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(277, '0000000000277', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(278, '0000000000278', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(279, '0000000000279', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(280, '0000000000280', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(281, '0000000000281', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(282, '0000000000282', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(283, '0000000000283', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(284, '0000000000284', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(285, '0000000000285', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(286, '0000000000286', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(287, '0000000000287', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(288, '0000000000288', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(289, '0000000000289', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(290, '0000000000290', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(291, '0000000000291', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(292, '0000000000292', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(293, '0000000000293', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(294, '0000000000294', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(295, '0000000000295', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(296, '0000000000296', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(297, '0000000000297', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(298, '0000000000298', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(299, '0000000000299', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(300, '0000000000300', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(301, '0000000000301', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(302, '0000000000302', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(303, '0000000000303', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(304, '0000000000304', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(305, '0000000000305', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(306, '0000000000306', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(307, '0000000000307', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(308, '0000000000308', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(309, '0000000000309', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(310, '0000000000310', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(311, '0000000000311', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(312, '0000000000312', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(313, '0000000000313', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(314, '0000000000314', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(315, '0000000000315', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(316, '0000000000316', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(317, '0000000000317', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(318, '0000000000318', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(319, '0000000000319', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(320, '0000000000320', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(321, '0000000000321', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(322, '0000000000322', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(323, '0000000000323', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(324, '0000000000324', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(325, '0000000000325', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(326, '0000000000326', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(327, '0000000000327', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(328, '0000000000328', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(329, '0000000000329', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(330, '0000000000330', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(331, '0000000000331', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(332, '0000000000332', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(333, '0000000000333', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(334, '0000000000334', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(335, '0000000000335', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(336, '0000000000336', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(337, '0000000000337', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(338, '0000000000338', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(339, '0000000000339', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(340, '0000000000340', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(341, '0000000000341', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(342, '0000000000342', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(343, '0000000000343', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(344, '0000000000344', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(345, '0000000000345', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(346, '0000000000346', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(347, '0000000000347', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(348, '0000000000348', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(349, '0000000000349', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(350, '0000000000350', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(351, '0000000000351', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(352, '0000000000352', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(353, '0000000000353', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(354, '0000000000354', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(355, '0000000000355', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(356, '0000000000356', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(357, '0000000000357', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(358, '0000000000358', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(359, '0000000000359', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(360, '0000000000360', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(361, '0000000000361', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(362, '0000000000362', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(363, '0000000000363', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(364, '0000000000364', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(365, '0000000000365', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(366, '0000000000366', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(367, '0000000000367', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(368, '0000000000368', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(369, '0000000000369', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(370, '0000000000370', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(371, '0000000000371', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(372, '0000000000372', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(373, '0000000000373', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(374, '0000000000374', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(375, '0000000000375', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(376, '0000000000376', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(377, '0000000000377', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(378, '0000000000378', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(379, '0000000000379', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(380, '0000000000380', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(381, '0000000000381', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(382, '0000000000382', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(383, '0000000000383', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(384, '0000000000384', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(385, '0000000000385', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(386, '0000000000386', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(387, '0000000000387', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(388, '0000000000388', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(389, '0000000000389', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(390, '0000000000390', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(391, '0000000000391', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(392, '0000000000392', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(393, '0000000000393', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(394, '0000000000394', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(395, '0000000000395', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(396, '0000000000396', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(397, '0000000000397', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(398, '0000000000398', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(399, '0000000000399', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(400, '0000000000400', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(401, '0000000000401', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(402, '0000000000402', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(403, '0000000000403', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(404, '0000000000404', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(405, '0000000000405', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL),
	(406, '0000000000406', 0, 50, 400, '/mnt/nas/smms_output/DeLab/0_smms_morning/191118_02_01/20191118_104902', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `job_400` ENABLE KEYS */;

-- Dumping structure for table gis_code42.job_500
CREATE TABLE IF NOT EXISTS `job_500` (
  `keynumber` bigint(20) NOT NULL,
  `pvrid` char(13) NOT NULL,
  `state` int(11) DEFAULT '0',
  `priority` int(11) DEFAULT '50',
  `process` int(11) NOT NULL,
  `param1` char(255) DEFAULT NULL,
  `param2` char(255) DEFAULT NULL,
  `param3` char(255) DEFAULT NULL,
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`keynumber`),
  KEY `job_500_01` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.job_500: 0 rows
DELETE FROM `job_500`;
/*!40000 ALTER TABLE `job_500` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_500` ENABLE KEYS */;

-- Dumping structure for table gis_code42.job_600
CREATE TABLE IF NOT EXISTS `job_600` (
  `keynumber` bigint(20) NOT NULL,
  `pvrid` char(13) NOT NULL,
  `state` int(11) DEFAULT '0',
  `priority` int(11) DEFAULT '50',
  `process` int(11) NOT NULL,
  `param1` char(255) DEFAULT NULL,
  `param2` char(255) DEFAULT NULL,
  `param3` char(255) DEFAULT NULL,
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`keynumber`),
  KEY `job_600_01` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.job_600: 0 rows
DELETE FROM `job_600`;
/*!40000 ALTER TABLE `job_600` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_600` ENABLE KEYS */;

-- Dumping structure for table gis_code42.log
CREATE TABLE IF NOT EXISTS `log` (
  `keynumber` bigint(20) NOT NULL AUTO_INCREMENT,
  `pvrid` char(13) DEFAULT '',
  `workerid` char(64) DEFAULT '',
  `job` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `content` text,
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`keynumber`) USING BTREE,
  KEY `log_01` (`pvrid`) USING BTREE,
  KEY `log_02` (`workerid`) USING BTREE,
  KEY `log_03` (`job`) USING BTREE,
  KEY `log_04` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.log: 0 rows
DELETE FROM `log`;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` (`keynumber`, `pvrid`, `workerid`, `job`, `status`, `content`, `insertdatetimeus`, `updatedatetimeus`) VALUES
	(1, '0000000000001', 'stryx', 400, 30, '검수(완료)', '2019.12.27 20:56:35.485576', NULL),
	(2, '0000000000002', 'stryx', 400, 30, '검수(완료)', '2019.12.27 20:56:37.278873', NULL),
	(3, '0000000000003', 'stryx', 400, 30, '검수(완료)', '2019.12.27 20:56:40.380344', NULL),
	(4, '0000000000004', 'stryx', 400, 30, '검수(완료)', '2019.12.27 20:56:42.111448', NULL),
	(5, '0000000000005', 'stryx', 400, 30, '검수(완료)', '2019.12.27 20:56:43.777315', NULL),
	(6, '0000000000006', 'stryx', 400, 30, '검수(완료)', '2019.12.27 20:56:45.086542', NULL),
	(7, '0000000000007', 'stryx', 400, 32, '검수(이미지생성재작업)', '2019.12.27 20:57:56.348231', NULL),
	(8, '0000000000008', 'stryx', 400, 32, '검수(이미지생성재작업)', '2019.12.27 20:57:56.476314', NULL),
	(9, '0000000000009', 'stryx', 400, 32, '검수(이미지생성재작업)', '2019.12.27 20:57:56.652407', NULL),
	(10, '0000000000010', 'stryx', 400, 32, '검수(이미지생성재작업)', '2019.12.27 20:57:56.824805', NULL),
	(11, '0000000000011', 'stryx', 400, 32, '검수(이미지생성재작업)', '2019.12.27 20:57:56.983732', NULL),
	(12, '0000000000007', 'stryx', 400, 20, '검수(블러링오류)', '2019.12.27 20:58:08.619666', NULL),
	(13, '0000000000008', 'stryx', 400, 20, '검수(블러링오류)', '2019.12.27 20:58:09.494711', NULL),
	(14, '0000000000009', 'stryx', 400, 20, '검수(블러링오류)', '2019.12.27 20:58:10.443766', NULL),
	(15, '0000000000010', 'stryx', 400, 20, '검수(블러링오류)', '2019.12.27 20:58:11.294616', NULL),
	(16, '0000000000011', 'stryx', 400, 20, '검수(블러링오류)', '2019.12.27 20:58:12.237827', NULL);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;

-- Dumping structure for table gis_code42.poi
CREATE TABLE IF NOT EXISTS `poi` (
  `keynumber` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` char(100) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `altitude` double DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `sido` char(20) DEFAULT NULL,
  `sigungu` char(20) DEFAULT NULL,
  `eupmyeon` char(20) DEFAULT NULL,
  `ri` char(20) DEFAULT NULL,
  `bldg` char(42) DEFAULT NULL,
  `bunji` char(17) DEFAULT NULL,
  `street` char(80) DEFAULT NULL,
  `bldgnumber` char(5) DEFAULT NULL,
  `bldgnumbersub` char(5) DEFAULT NULL,
  `comment` text,
  `geodata` point DEFAULT NULL,
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`keynumber`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.poi: 0 rows
DELETE FROM `poi`;
/*!40000 ALTER TABLE `poi` DISABLE KEYS */;
/*!40000 ALTER TABLE `poi` ENABLE KEYS */;

-- Dumping structure for table gis_code42.pvr
CREATE TABLE IF NOT EXISTS `pvr` (
  `pvrid` char(13) NOT NULL,
  `title` char(100) DEFAULT NULL,
  `hidden` int(11) DEFAULT '0',
  `latitude` double DEFAULT '37',
  `longitude` double DEFAULT '126',
  `camera_altitude` int(11) DEFAULT '250',
  `land_altitude` int(11) DEFAULT '0',
  `north` double DEFAULT '0',
  `geodata` geometry NOT NULL,
  `sourcepath` char(255) DEFAULT NULL,
  `shootdatetimeus` char(26) DEFAULT NULL,
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  `seq` char(5) NOT NULL,
  PRIMARY KEY (`pvrid`) USING BTREE,
  KEY `pvr_01` (`hidden`) USING BTREE,
  KEY `pvr_02` (`latitude`) USING BTREE,
  KEY `pvr_03` (`longitude`) USING BTREE,
  SPATIAL KEY `pvr_04` (`geodata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.pvr: 0 rows
DELETE FROM `pvr`;
/*!40000 ALTER TABLE `pvr` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvr` ENABLE KEYS */;

-- Dumping structure for table gis_code42.pvraddress
CREATE TABLE IF NOT EXISTS `pvraddress` (
  `pvrid` char(13) NOT NULL,
  `sido` char(20) DEFAULT NULL,
  `sigungu` char(20) DEFAULT NULL,
  `eupmyeon` char(20) DEFAULT NULL,
  `ri` char(20) DEFAULT NULL,
  `street` char(80) DEFAULT NULL,
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`pvrid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.pvraddress: 0 rows
DELETE FROM `pvraddress`;
/*!40000 ALTER TABLE `pvraddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvraddress` ENABLE KEYS */;

-- Dumping structure for table gis_code42.pvrid2naverid
CREATE TABLE IF NOT EXISTS `pvrid2naverid` (
  `pvrid` char(13) NOT NULL,
  `naverid` char(11) NOT NULL,
  `copyed` int(11) DEFAULT '0',
  `uploaded` int(11) DEFAULT '0',
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`pvrid`) USING BTREE,
  UNIQUE KEY `pvrid2naverid_01` (`naverid`) USING BTREE,
  KEY `pvrid2naverid_02` (`copyed`) USING BTREE,
  KEY `pvrid2naverid_03` (`uploaded`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.pvrid2naverid: 0 rows
DELETE FROM `pvrid2naverid`;
/*!40000 ALTER TABLE `pvrid2naverid` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvrid2naverid` ENABLE KEYS */;

-- Dumping structure for table gis_code42.relation
CREATE TABLE IF NOT EXISTS `relation` (
  `keynumber` bigint(20) NOT NULL AUTO_INCREMENT,
  `pvrid` char(13) NOT NULL,
  `relationid` char(13) NOT NULL,
  `relationpan` double DEFAULT '0',
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`keynumber`) USING BTREE,
  KEY `relation_01` (`pvrid`) USING BTREE,
  KEY `relation_02` (`relationid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4379 DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.relation: 0 rows
DELETE FROM `relation`;
/*!40000 ALTER TABLE `relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `relation` ENABLE KEYS */;

-- Dumping structure for table gis_code42.report
CREATE TABLE IF NOT EXISTS `report` (
  `keynumber` bigint(20) NOT NULL AUTO_INCREMENT,
  `pvrid` char(13) DEFAULT '',
  `workerid` char(64) DEFAULT '',
  `job` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  `content` text,
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`keynumber`) USING BTREE,
  KEY `report_01` (`pvrid`) USING BTREE,
  KEY `report_02` (`workerid`) USING BTREE,
  KEY `report_03` (`job`) USING BTREE,
  KEY `report_04` (`status`),
  KEY `report_05` (`state`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.report: 0 rows
DELETE FROM `report`;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;

-- Dumping structure for table gis_code42.tag
CREATE TABLE IF NOT EXISTS `tag` (
  `keynumber` bigint(20) NOT NULL AUTO_INCREMENT,
  `pvrid` char(13) NOT NULL,
  `tagstring` char(50) NOT NULL,
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`keynumber`) USING BTREE,
  KEY `tag_01` (`pvrid`) USING BTREE,
  KEY `tag_02` (`tagstring`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.tag: 0 rows
DELETE FROM `tag`;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;

-- Dumping structure for table gis_code42.worker
CREATE TABLE IF NOT EXISTS `worker` (
  `workerid` char(64) NOT NULL,
  `password` char(64) NOT NULL,
  `uniquekey` char(64) DEFAULT NULL,
  `class` int(11) DEFAULT '0',
  `authority` int(11) DEFAULT '0',
  `permit` int(11) DEFAULT '0',
  `name` char(50) DEFAULT NULL,
  `phone` char(50) DEFAULT NULL,
  `mobile` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `ipaddress` char(40) DEFAULT NULL,
  `logindatetimeus` char(26) DEFAULT NULL,
  `logoutdatetimeus` char(26) DEFAULT NULL,
  `comment` text,
  `insertdatetimeus` char(26) DEFAULT NULL,
  `updatedatetimeus` char(26) DEFAULT NULL,
  `leavedatetimeus` char(26) DEFAULT NULL,
  PRIMARY KEY (`workerid`),
  UNIQUE KEY `worker_01` (`uniquekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table gis_code42.worker: 52 rows
DELETE FROM `worker`;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` (`workerid`, `password`, `uniquekey`, `class`, `authority`, `permit`, `name`, `phone`, `mobile`, `email`, `ipaddress`, `logindatetimeus`, `logoutdatetimeus`, `comment`, `insertdatetimeus`, `updatedatetimeus`, `leavedatetimeus`) VALUES
	('zzooooo', 'na4558', '5c91827f17549', 0, 11, 0, '박현주', '01020198835', '01020198835', 'zzooooo@naver.com', '10.0.0.1', '2019.12.17 09:04:22.503972', '', '', '2019.03.20 08:29:59.094825', '2019.03.27 08:50:31.837735', ''),
	('pong', '3433', '5c9182bc1052b', 0, 11, 0, '배지용', '0267435080', '01071405490', 'namu5080@naver.com', '10.0.0.211', '2019.05.24 16:46:43.033129', '', '', '2019.03.20 08:31:00.065685', '2019.04.01 09:53:51.501121', ''),
	('dawniss', 'tmddnjs0', '5c9182e6bf670', 0, 10, 10, '서승원', '01079999158', '01079999158', 'dawniss@naver.com', '10.0.0.209', '2019.04.26 16:58:11.009315', '', '', '2019.03.20 08:31:42.770842', '2019.05.01 15:01:20.072661', ''),
	('rain', '0000', '5c91845529877', 0, 20, 0, '문종배', '01090274942', '0000', 'rainsky87@naver.com', '10.0.0.1', '2019.12.24 03:50:27.317366', '', '', '2019.03.20 08:37:49.168912', '', ''),
	('6126', '6126', '5c918493cfeeb', 0, 10, 10, '한상혁', '', '01029399587', 'vernietiger6@gmail.com', '10.0.0.203', '2019.07.09 09:30:24.058682', '', '', '2019.03.20 08:38:51.851242', '2019.12.17 01:56:56.795093', ''),
	('youblur', '0070', '5c9184b2928cb', 0, 10, 10, '손유진', '01091291046', '01091291046', 'cochony@naver.com', '10.0.0.202', '2019.05.09 10:58:50.435255', '', '', '2019.03.20 08:39:22.588285', '2019.05.07 08:40:47.816576', ''),
	('choy', '0000', '5c99a422d9306', 0, 10, 10, '최진호', '01073021602', '01073021602', 'ambakz@naver.com', '10.0.50.3', '2019.04.05 09:43:04.142067', '', '', '2019.03.26 12:31:38.888845', '', ''),
	('kjs49620', '1111', '5c9c11b27771a', 0, 11, 0, '김준서', '010-7200-4991', '010-7200-4991', 'health150817@naver.com', '10.0.0.202', '2019.05.24 08:48:18.693259', '', '', '2019.03.28 08:43:38.488911', '2019.03.28 08:49:34.297542', ''),
	('chokm60', 'cho473801', '5ca2f878c6cd6', 0, 10, 10, '조경미', '010-3124-9138', '010-3124-9138', 'chokm60@naver.com', '175.114.150.181', '2019.04.29 12:18:37.881796', '', '', '2019.04.02 14:21:52.814000', '2019.05.01 14:57:50.259815', ''),
	('khj0920', 'ch0704', '5ca2cb2656cdc', 0, 10, 10, '김현주', '', '01071377547', 'arayj77@naver.com', '119.197.25.195', '2019.04.29 12:51:58.718765', '', '', '2019.04.02 11:08:30.355361', '2019.05.01 15:00:45.528381', ''),
	('jmy720', 'j94410978', '5ca2cb9cda6c7', 0, 10, 10, '정미영', '01065205139', '01065205139', 'm.y.jung2005@gmail.com', '221.154.105.237', '2019.04.29 11:00:10.081048', '', '', '2019.04.02 11:10:28.892900', '2019.05.01 14:58:01.244689', ''),
	('jt', '1221', '5ca6abb34aa7a', 0, 11, 0, '최진호', '01073021602', '01073021602', 'ambakz@naver.com', '10.0.0.202', '2019.05.24 14:10:35.587801', '', '', '2019.04.05 09:43:23.305556', '2019.04.19 09:41:45.327697', ''),
	('onefineday34', 'q8205130', '5ca6e0b9b44ea', 0, 10, 10, '김지량', '', '010-3515-9234', 'onefineday34@naver.com', '218.50.150.15', '2019.04.28 23:17:51.210733', '', '', '2019.04.05 13:29:37.736411', '2019.05.01 15:01:50.751731', ''),
	('mgmg86', 'aldlswnl86', '5ca6ead0a5e2f', 0, 10, 0, '정민지', '01032750422', '01032750422', 'mgmg86@naver.com', '211.63.196.175', '2019.05.14 14:52:55.794314', '', '', '2019.04.05 14:12:40.679089', '2019.05.08 10:32:56.339893', ''),
	('tjdgml0328', 'tkfkdgo12', '5ca6eb028df5c', 0, 10, 10, '이세미', '01040162051', '01040162051', 'tjdgml0328@naver.com', '39.116.43.188', '2019.04.29 22:30:12.939415', '', '', '2019.04.05 14:13:30.581047', '2019.05.01 14:58:23.767472', ''),
	('1234', '1234', '5ca409bb597a6', 0, 11, 0, '이지혜', '01059179761', '01059179761', 'thdktldk@gmail.com', '10.0.0.208', '2019.05.24 18:42:52.521034', '', '', '2019.04.03 09:47:47.366174', '2019.05.18 09:40:41.282174', ''),
	('gaonii', 'wook0621', '5cad4f6269350', 0, 10, 10, '정은지', '01085108259', '01085108259', 'gaonii@naver.com', '112.152.44.157', '2019.04.30 10:15:50.083586', '', '', '2019.04.10 10:35:22.430588', '2019.05.01 14:57:55.268891', ''),
	('rokchoy', 'yy0323', '5cad4f95df6b3', 0, 10, 10, '윤초록', '01045601226', '0104560126', 'rokchoy@naver.com', '1.220.170.132', '2019.06.24 15:51:30.489889', '', '', '2019.04.10 10:36:13.914874', '2019.05.01 14:58:35.013709', ''),
	('osa8690', '4053', '5cad5b8fbdc3b', 0, 10, 10, '오선아', '01071562983', '', 'osa8690@gmail.com', '39.117.233.189', '2019.05.11 01:23:25.965580', '', '', '2019.04.10 11:27:19.776701', '2019.05.01 14:58:59.014543', ''),
	('babyrams', 'rams8622Q!', '5cad5be0d0f3b', 0, 10, 10, '김보람', '01032203548', '01032203548', 'babynr86@naver.com', '118.34.175.2', '2019.04.28 22:58:04.310035', '', '', '2019.04.10 11:28:40.854883', '2019.05.01 14:59:51.711532', ''),
	('mn136', '977761', '5cad61e748114', 0, 10, 10, '김민우', '01049119731', '01049119731', 'mn136@naver.com', '61.255.140.184', '2019.04.29 15:12:29.236930', '', '', '2019.04.10 11:54:23.284706', '2019.05.01 15:00:04.399613', ''),
	('es032452', 'sj090403', '5cb02aad1f6d1', 0, 10, 10, '김은숙', '01053009044', '01053009044', 'es043@naver.com', '211.244.20.186', '2019.04.27 07:53:47.273204', '', '', '2019.04.12 14:35:33.128536', '2019.05.01 14:59:58.121063', ''),
	('ejk8519', 'k97182283', '5cb02b10b0b12', 0, 10, 10, '김은진', '01020553385', '01020553385', 'ejk8519@naver.com', '119.207.129.230', '2019.04.26 09:33:18.608161', '', '', '2019.04.12 14:37:12.722716', '2019.05.01 15:00:10.480385', ''),
	('playes98', 'ehdgus98', '5cb02b49ae0bc', 0, 10, 10, '신동현', '01096806248', '01096806248', 'donghyeonsheen@gmail.com', '182.218.58.59', '2019.04.13 17:30:43.869528', '', '', '2019.04.12 14:38:09.712590', '2019.05.08 10:33:17.013879', ''),
	('lysookjw', '@jyy10214587', '5cb02c53668f2', 0, 10, 10, '이나현', '01057773254', '01057773254', 'lysookjw@naver.com', '49.175.5.193', '2019.04.29 12:36:41.296257', '', '', '2019.04.12 14:42:35.419399', '2019.05.01 14:58:31.524362', ''),
	('keemee', 'kh0312', '5cb038f530f3c', 0, 10, 10, '김희정', '01062277476', '01062277476', 'silbercat@naver.com', '58.141.8.119', '2019.04.24 21:49:59.939712', '', '', '2019.04.12 15:36:29.199521', '2019.05.01 15:01:14.559573', ''),
	('dooly3', '8080', '5cb0479c2e2f1', 0, 10, 10, '강현주', '01087995775', '01087995775', 'eg8080@naver.com', '118.33.87.150', '2019.04.15 21:35:11.445571', '', '', '2019.04.12 16:39:00.188534', '2019.05.01 14:56:54.902084', ''),
	('sungwook', 'tjddnr', '5cb134016aa17', 0, 10, 10, '최성욱', '01092298817', '01092298817', 'sungwook.csw@gmail.com', '39.115.28.12', '2019.04.21 16:10:38.717792', '', '', '2019.04.13 09:27:37.436529', '2019.05.01 14:57:44.340887', ''),
	('duddh0314', 'yo950607', '5cb1340449582', 0, 10, 10, '박영오', '010-9346-6505', '010-9346-6505', 'duddh0314@naver.com', '10.0.50.3', '2019.04.14 15:42:07.861392', '', '', '2019.04.13 09:27:40.299412', '2019.05.01 15:02:37.097818', ''),
	('park90072000', 'ask003', '5cb1340999273', 0, 10, 0, '박민혁', '', '01076363378', 'park90072000_3333@yahoo.co.jp', '61.38.235.12', '2019.05.13 18:27:48.863699', '', '', '2019.04.13 09:27:45.627050', '2019.05.08 10:32:38.245183', ''),
	('workd102', 'governmt89!', '5cb1344202d10', 0, 10, 0, '김재강', '0314804808', '01092164808', 'workd480@naver.com', '61.101.174.157', '2019.06.15 22:52:39.729512', '', '', '2019.04.13 09:28:42.011279', '2019.05.08 10:32:51.652800', ''),
	('juli2335', '1', '5cb3efbd49ef4', 0, 10, 10, '노은정', '01062953623', '01062953623', 'nosmo@nate.com', '112.171.126.86', '2019.05.15 15:09:29.489841', '', '', '2019.04.15 11:13:09.302526', '2019.05.01 15:01:44.152169', ''),
	('candyclick', 'cpffnadl1845', '5cb3f0365822c', 0, 10, 10, '권새움', '01071144507', '01071144507', 'candyclick@naver.com', '218.145.179.219', '2019.04.28 23:40:11.403965', '', '', '2019.04.15 11:15:10.360790', '2019.05.01 14:57:04.358434', ''),
	('kkimda', 'ssom-3208', '5cb3f07818b30', 0, 10, 10, '김다솜', '01087082870', '01087082870', 'kkimda_@naver.com', '180.70.68.25', '2019.04.27 22:41:42.971789', '', '', '2019.04.15 11:16:16.100847', '2019.05.01 14:59:32.608216', ''),
	('manwon', 'vkfldba1020', '5cb3f0b5cf4b6', 0, 10, 0, '장유미', '01051563426', '01051563426', 'manwon1206@naver.com', '61.254.36.117', '2019.04.29 12:13:43.580233', '', '', '2019.04.15 11:17:17.848764', '2019.05.07 08:39:58.950996', ''),
	('qktl10', 'k940712', '5cb3f0eb5f25b', 0, 10, 10, '권용진', '01045491304', '01045491304', 'qktl10@naver,com', '121.129.243.65', '2019.04.29 09:37:18.077899', '', '', '2019.04.15 11:18:11.389321', '2019.05.01 14:57:11.381932', ''),
	('chaej0428', 'ckswl13saj', '5cc794d4b7118', 0, 11, 0, 'chaeunji', '01051109748', '01051109748', 'coool132@naver.com', '10.0.0.122', '2019.05.24 18:42:47.818817', '2019.05.24 18:47:05.186331', '', '2019.04.30 08:50:36.749802', '2019.05.07 08:42:36.713106', ''),
	('ohyeah', '2fjs4fka', '5cb7c12d2f326', 0, 11, 0, '오예빈', '01065347630', '01065347630', 'ybdrive001@gmail.com', '10.0.0.206', '2019.05.24 08:28:02.175795', '2019.05.24 18:47:05.675284', '', '2019.04.18 08:43:33.193021', '2019.05.07 08:42:22.778188', ''),
	('tjduddl11', 'tjxkssnla11', '5cb52631bf292', 0, 10, 10, '이서영', '010-2830-9464', '010-2830-9464', 'tjduddl11@naver,com', '125.128.146.167', '2019.04.29 10:40:13.610131', '', '', '2019.04.16 09:17:45.782567', '2019.05.01 14:58:28.726592', ''),
	('sj0529', 'sj001030', '5cb677a6d8550', 0, 10, 10, '지서진', '01098589899', '01098589899', 'sj001030@naver.com', '10.0.50.3', '2019.04.17 09:31:02.533282', '', '', '2019.04.17 09:17:34.885722', '2019.05.01 14:57:47.150067', ''),
	('dlsghzxzx4', '12dls21gh', '5cba768c1c8de', 0, 10, 10, '한인호', '023031102', '01083995517', 'gksdlsgh4@naver.com', '10.0.50.3', '2019.04.20 16:52:44.228007', '', '', '2019.04.20 10:01:56.116583', '2019.05.01 14:57:38.744100', ''),
	('aowlrql', '961024', '5cba76c57ff59', 0, 10, 10, '김동현', '010-2450-1041', '010-2450-1041', 'aowlrql@naver.com', '58.142.9.203', '2019.04.21 10:06:24.245431', '', '', '2019.04.20 10:02:53.523357', '2019.05.01 14:59:45.951864', ''),
	('wkdg522', 'jangjisu522', '5cba76c7dd44d', 0, 10, 10, '장지수', '', '01071946776', 'wkdg522@naver.com', '125.180.142.100', '2019.04.30 21:47:47.063328', '', '', '2019.04.20 10:02:55.905939', '2019.05.01 14:58:03.765092', ''),
	('815712', '0312', '5cba76cd1e0a5', 0, 10, 10, '이원영', '01085318157', '01085318157', '815712@naver.com', '116.34.108.14', '2019.05.04 22:20:24.802830', '', '', '2019.04.20 10:03:01.102855', '2019.05.01 14:58:18.190432', ''),
	('kkiimm', 'pytybrsm', '5cba771956899', 0, 10, 10, '김기연', '010-4665-4543', '010-4665-4543', 'iamkiyeon@gmail.com', '10.0.50.3', '2019.04.20 16:54:46.526470', '', '', '2019.04.20 10:04:17.354076', '2019.05.01 14:57:31.470397', ''),
	('plipynoya', 'jinsol1519#', '5cbd096c72fa7', 0, 10, 0, '김태형', '', '010-9904-6283', 'plipy1203@naver.com', '10.0.0.211', '2019.04.22 08:58:48.774241', '', '', '2019.04.22 08:53:08.470904', '2019.04.22 08:56:14.961300', ''),
	('plipy1203', '0000', '5cbd0b0e994df', 0, 11, 0, '김태형', '', '010-9904-6283', 'plipy1203@naver.com', '112.221.120.203', '2019.05.30 08:28:36.323323', '', '', '2019.04.22 09:00:06.627886', '2019.04.22 09:07:58.980988', ''),
	('dbswns7849', 'dbswns12', '5cbd0b42169be', 0, 11, 0, '이윤준', '', '01073717849', 'dbswns7849@naver.com', '10.0.0.202', '2019.05.09 20:19:24.445669', '', '', '2019.04.22 09:00:58.092532', '2019.04.22 09:08:13.386650', ''),
	('1118', '1118', '5cc7a1fb1ff7c', 0, 11, 0, '장상현', '', '01028291318', 'dkd132@naver.com', '10.0.0.207', '2019.05.24 18:45:49.176251', '', '', '2019.04.30 09:46:43.130891', '2019.05.07 08:43:08.707536', ''),
	('dkd132', '1118', '5cca329574560', 0, 11, 0, '장상현', '', '01028291318', 'dkd132@naver.com', '10.0.0.207', '', '', '', '2019.05.02 08:28:13.476461', '2019.05.07 08:42:48.011414', ''),
	('ktw', '12qw', '5ccd53cf507ca', 0, 20, 0, '김도원', '', '01012345678', 'who@home', '10.0.0.240', '2019.07.10 04:15:13.381233', '', '', '2019.05.04 17:26:47.329471', '', ''),
	('stryx', 'stryx', '12312451212', 20, 90, 0, NULL, NULL, NULL, NULL, '10.0.50.107', '2019.12.27 18:07:06.194860', '', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
