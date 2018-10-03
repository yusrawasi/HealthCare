-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2018 at 07:54 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `username` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `brandname`
--

CREATE TABLE `brandname` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brandname`
--

INSERT INTO `brandname` (`brandId`, `brandName`) VALUES
(1, 'MONEKAST'),
(2, 'FEFOL SPANSULE'),
(4, 'M PLUS'),
(5, 'PANADOL'),
(6, 'PANADOL EXTRA'),
(7, 'FLATULEX'),
(8, 'DISFLATYL'),
(9, 'MINICOL'),
(10, 'ACID OFF'),
(11, 'BUSCOCIN'),
(12, 'BUSCOPAN'),
(13, 'BUSCOPHARM'),
(14, 'BRUFEN'),
(15, 'GASTROCID'),
(16, 'GAVISCON'),
(17, 'CIDINE'),
(18, 'CINRIDE'),
(19, 'ROGASTRIL'),
(20, 'APTISANT'),
(21, 'ASTRID'),
(22, 'BIOPRIDE'),
(23, 'CAYNATON'),
(24, 'DYNETIC'),
(25, 'EMPTIN'),
(26, 'ETO-OD'),
(27, 'GANATON'),
(28, 'IPRIDE'),
(29, 'HYOSPAN'),
(30, 'LESKOPAN'),
(31, 'BUSCOPAN PLUS'),
(32, 'REGOPAN PLUS'),
(33, 'ANAPAZ'),
(34, 'DOSAPAZ'),
(35, 'PANPUROL'),
(36, 'BIOVERINE'),
(37, 'DESERVE'),
(38, 'DROSPA'),
(39, 'DROTA'),
(40, 'DROVERA'),
(41, 'NO-SPA'),
(42, 'STELABID'),
(43, 'ZAMID'),
(44, 'BIOSPA'),
(45, 'COLOFAC'),
(46, 'CABORIN'),
(47, 'COLOSPAS'),
(48, 'MEBEVER MR'),
(49, 'MEBRIN'),
(50, 'MEBGHOL'),
(51, 'MEBIPAS'),
(52, 'MEBSYL'),
(53, 'COLOPAS FIBRO'),
(54, 'OTOMIN'),
(55, 'SPASMOMEN'),
(56, 'ANAFORTAN PLUS'),
(57, 'FUROSINOL'),
(58, 'SPADIX'),
(59, 'NUBEROL'),
(60, 'NUBEROL PLUS'),
(61, 'HAMZIVIL');

-- --------------------------------------------------------

--
-- Table structure for table `dosageform`
--

CREATE TABLE `dosageform` (
  `formId` int(11) NOT NULL,
  `formName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosageform`
--

INSERT INTO `dosageform` (`formId`, `formName`) VALUES
(1, 'Tablets'),
(2, 'Drops'),
(3, 'Capsules'),
(5, 'Syrup'),
(6, 'Suspensions'),
(7, 'Injections'),
(8, 'Gel'),
(9, 'Liquid'),
(10, 'Tabs SR'),
(11, 'Capsules SR'),
(12, 'Tabs DS'),
(13, 'Sachet');

-- --------------------------------------------------------

--
-- Table structure for table `genericname`
--

CREATE TABLE `genericname` (
  `drugId` int(11) NOT NULL,
  `drugName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genericname`
--

INSERT INTO `genericname` (`drugId`, `drugName`) VALUES
(1, 'Montelukast'),
(2, 'Ferrous Sulphate'),
(3, 'Folic Acid'),
(4, 'Levocetirizine'),
(5, 'Paracetamol'),
(6, 'Caffeine'),
(7, 'Simethicone'),
(8, 'Silicon Dioxide'),
(9, 'Magaldrate'),
(10, 'Hyoscine (Butylbromide)'),
(11, 'Ibuprofen'),
(12, 'Sodium Bicarbonate'),
(13, 'Sodium Alginate'),
(14, 'Calcium Carbonate'),
(15, 'Magnesium Trisilicate'),
(16, 'Aluminium Hydroxide And Oxide'),
(17, 'Cinitapride'),
(18, 'Itopride (hcl)'),
(19, 'Dipyrone'),
(21, 'Hyoscyamine'),
(22, 'Pipethanate Ethobromide'),
(23, 'Drotaverine'),
(24, 'Isopropamide (i)'),
(25, 'Trifluoperazine (hcl)'),
(26, 'Mebeverine'),
(27, 'Psyllium Husk'),
(28, 'Otilonium Bromide'),
(29, 'Trimethylphloroglucinol'),
(30, 'Phloroglucinol'),
(31, 'Orphenadrine'),
(32, 'Chlorpheniramine (maleate)');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `itemId` int(11) NOT NULL,
  `medId` int(11) NOT NULL,
  `supplierId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`itemId`, `medId`, `supplierId`, `quantity`) VALUES
(7, 81, 1, 80),
(8, 7, 1, 22),
(9, 6, 1, 0),
(12, 83, 1, 12),
(13, 12, 1, 44),
(14, 20, 1, 31),
(19, 82, 1, 21),
(20, 19, 1, 11),
(22, 8, 5, 12),
(23, 12, 5, 11),
(24, 8, 1, 20),
(26, 82, 5, 5),
(27, 83, 5, 21),
(28, 77, 1, 21),
(29, 72, 6, 24),
(30, 42, 6, 6),
(31, 59, 6, 29),
(32, 22, 6, 26),
(33, 7, 6, 14),
(34, 31, 6, 3),
(35, 90, 6, 0),
(36, 47, 6, 29),
(37, 69, 6, 30),
(38, 44, 6, 30),
(39, 86, 6, 20),
(40, 21, 6, 18),
(41, 16, 6, 17),
(42, 57, 6, 20),
(43, 46, 6, 30),
(44, 52, 6, 6),
(45, 76, 6, 28),
(46, 41, 6, 7),
(47, 50, 6, 5),
(48, 63, 6, 25),
(49, 17, 6, 23),
(50, 67, 6, 15),
(51, 27, 6, 19),
(52, 6, 6, 0),
(53, 49, 6, 29),
(54, 12, 6, 22),
(55, 29, 6, 23),
(56, 36, 6, 1),
(57, 79, 6, 27),
(58, 75, 6, 20),
(59, 34, 6, 29),
(60, 83, 6, 27),
(61, 74, 6, 22),
(62, 54, 6, 29),
(63, 18, 6, 23),
(64, 61, 6, 26),
(65, 4, 6, 17),
(66, 70, 6, 12),
(67, 1, 6, 30),
(68, 33, 6, 20),
(69, 39, 6, 6),
(70, 23, 6, 26),
(71, 13, 6, 20),
(72, 87, 6, 12),
(73, 40, 6, 18),
(74, 64, 6, 19),
(75, 43, 6, 13),
(76, 65, 6, 27),
(77, 20, 6, 29),
(78, 68, 6, 30),
(79, 62, 6, 29),
(80, 32, 6, 12),
(81, 51, 6, 20),
(82, 66, 6, 9),
(83, 8, 6, 15),
(84, 48, 6, 23),
(85, 38, 6, 7),
(86, 3, 6, 20),
(87, 25, 6, 20),
(88, 89, 6, 10),
(89, 80, 6, 11),
(90, 78, 6, 10),
(91, 71, 6, 8),
(92, 82, 6, 20),
(93, 58, 6, 12),
(94, 56, 6, 23),
(95, 2, 6, 11),
(96, 19, 6, 16),
(97, 53, 6, 4),
(98, 28, 6, 1),
(99, 45, 6, 15),
(100, 88, 6, 21),
(101, 37, 6, 15),
(102, 26, 6, 24),
(103, 15, 6, 5),
(104, 55, 6, 2),
(105, 45, 7, 25),
(106, 16, 7, 26),
(107, 18, 7, 3),
(108, 6, 7, 26),
(109, 72, 7, 30),
(110, 37, 7, 7),
(111, 85, 7, 11),
(112, 68, 7, 19),
(113, 43, 7, 5),
(114, 86, 7, 18),
(115, 42, 7, 9),
(116, 64, 7, 6),
(117, 55, 7, 30),
(118, 38, 7, 1),
(119, 2, 7, 24),
(120, 14, 7, 12),
(121, 3, 7, 1),
(122, 29, 7, 7),
(123, 28, 7, 11),
(124, 74, 7, 1),
(125, 66, 7, 6),
(126, 23, 7, 4),
(127, 4, 7, 15),
(128, 83, 7, 17),
(129, 60, 7, 23),
(130, 34, 7, 18),
(131, 50, 7, 27),
(132, 80, 7, 14),
(133, 31, 7, 9),
(134, 35, 7, 11),
(135, 41, 7, 14),
(136, 84, 7, 6),
(137, 67, 7, 11),
(138, 87, 7, 27),
(139, 25, 7, 7),
(140, 82, 7, 8),
(141, 75, 7, 8),
(142, 62, 7, 29),
(143, 1, 7, 8),
(144, 63, 7, 15),
(145, 52, 7, 20),
(146, 44, 7, 10),
(147, 73, 7, 0),
(148, 88, 7, 3),
(149, 71, 7, 13),
(150, 61, 7, 5),
(151, 27, 7, 30),
(152, 59, 7, 23),
(153, 30, 7, 2),
(154, 69, 7, 28),
(155, 12, 7, 9),
(156, 39, 7, 26),
(157, 53, 7, 2),
(158, 57, 7, 13),
(159, 33, 7, 21),
(160, 8, 7, 29),
(161, 13, 7, 11),
(162, 32, 7, 5),
(163, 77, 7, 28),
(164, 89, 7, 23),
(165, 19, 7, 26),
(166, 15, 7, 12),
(167, 26, 7, 13),
(168, 36, 7, 29),
(169, 49, 7, 16),
(170, 7, 7, 4),
(171, 79, 7, 15),
(172, 40, 7, 21),
(173, 78, 7, 21),
(174, 20, 7, 18),
(175, 17, 7, 9),
(176, 47, 7, 28),
(177, 58, 7, 10),
(178, 54, 7, 18),
(179, 70, 7, 22),
(180, 65, 7, 0),
(181, 45, 8, 26),
(182, 83, 8, 24),
(183, 41, 8, 8),
(184, 90, 8, 26),
(185, 49, 8, 25),
(186, 65, 8, 11),
(187, 64, 8, 23),
(188, 79, 8, 12),
(189, 48, 8, 19),
(190, 27, 8, 29),
(191, 66, 8, 4),
(192, 32, 8, 25),
(193, 6, 8, 7),
(194, 47, 8, 12),
(195, 52, 8, 9),
(196, 57, 8, 14),
(197, 4, 8, 22),
(198, 20, 8, 12),
(199, 25, 8, 26),
(200, 33, 8, 28),
(201, 80, 8, 2),
(202, 54, 8, 6),
(203, 39, 8, 27),
(204, 8, 8, 15),
(205, 7, 8, 7),
(206, 3, 8, 26),
(207, 55, 8, 15),
(208, 44, 8, 9),
(209, 62, 8, 8),
(210, 68, 8, 20),
(211, 78, 8, 24),
(212, 58, 8, 9),
(213, 69, 8, 18),
(214, 26, 8, 30),
(215, 59, 8, 25),
(216, 37, 8, 6),
(217, 56, 8, 5),
(218, 30, 8, 14),
(219, 40, 8, 11),
(220, 46, 8, 4),
(221, 74, 8, 27),
(222, 14, 8, 1),
(223, 73, 8, 15),
(224, 77, 8, 20),
(225, 31, 8, 25),
(226, 34, 8, 21),
(227, 76, 8, 6),
(228, 19, 8, 12),
(229, 36, 8, 7),
(230, 38, 8, 13),
(231, 12, 8, 23),
(232, 71, 8, 10),
(233, 70, 8, 19),
(234, 1, 8, 13),
(235, 29, 8, 16),
(236, 82, 8, 3),
(237, 24, 8, 12),
(238, 28, 8, 24),
(239, 81, 8, 22),
(240, 84, 8, 12),
(241, 22, 8, 0),
(242, 63, 8, 12),
(243, 86, 8, 4),
(244, 16, 8, 5),
(245, 42, 8, 14),
(246, 60, 8, 13),
(247, 17, 8, 13),
(248, 89, 8, 9),
(249, 72, 8, 4),
(250, 50, 8, 26),
(251, 51, 8, 9),
(252, 85, 8, 0),
(253, 13, 8, 27),
(254, 67, 8, 9),
(255, 23, 8, 16),
(256, 18, 8, 11),
(257, 7, 1, 2),
(258, 19, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manId` int(11) NOT NULL,
  `manName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manId`, `manName`) VALUES
(1, 'NEO MEDIX'),
(2, 'GLAXOSMITHKLINE'),
(4, 'MAARK PHARMA'),
(5, 'ENGLISH PHARMACEUTICALS INDUSTRIES'),
(6, 'HAROON BROTHERS'),
(7, 'LIBRA PHARMACEUTICALS (PVT) LTD'),
(8, 'UNIPHARMA (PVT) LTD'),
(9, 'CARAWAY PHARMACEUTICALS'),
(10, 'MERCK PRIVATE LTD'),
(11, 'EPHARM LABORATORIES'),
(12, 'ABBOTT LABORATORIES (PAKISTAN) LTD'),
(13, 'SYNCHRO PHARMACEUTICALS'),
(14, 'RECKITT BENCKISER PAKISTAN LTD'),
(15, 'HIGHNOON LABORATORIES LTD'),
(16, 'GENIX PHARMA (PVT) LTD'),
(17, 'GENOME PHARMACEUTICALS (PVT) LTD'),
(18, 'APTCURE PRIVATE LIMITED'),
(19, 'ASTARL PVT LTD'),
(20, 'BIO LABS (PVT) LTD'),
(21, 'CAYLEX PHARMACEUTICALS (PVT) LTD'),
(22, 'FEROZSONS LABORATORIES LTD'),
(23, 'DYSON RESEARCH LABORATORIES'),
(24, 'MCOLSON RESEARCH LABORATORIES'),
(25, 'WILSHIRE LABORATORIES (PVT) LTD'),
(26, 'LAHORE CHEMICAL & PHARMACEUTICAL WORKS (PVT) LTD'),
(27, 'LAWRENCE PHARMA'),
(28, 'REGENT LABORATORIES LTD'),
(29, 'HILTON PHARMA (PVT) LTD'),
(30, 'DOSACO LABORATORIES'),
(31, 'SHAREX LABORATORIES (PVT) LTD'),
(32, 'BIOREX PHARMACEUTICALS'),
(33, 'SEMOS PHARMACEUTICALS (PVT) LTD'),
(34, 'FYNK PHARMACEUTICALS'),
(35, 'NENZA PHARMACEUTICALS (PVT) LTD'),
(36, 'SANOFI AVENTIS (PAKISTAN) LTD'),
(37, 'MUNAWAR PHARMA (PVT) LTD'),
(38, 'DON VALLEY PHARMACEUTICALS (PVT) LTD'),
(39, 'NABIQASIM INDUSTRIES (PVT) LTD'),
(40, 'GETZ PHARMA PAKISTAN (PVT) LTD'),
(41, 'PARAMOUNT PHARMACEUTICALS'),
(42, 'WARAFANA PHARMACEUTICALS'),
(43, 'NEUTRO PHARMA'),
(44, 'PHARMATEC PAKISTAN (PVT) LTD'),
(45, 'AGP (PVT) LTD'),
(46, 'CENTURY PHARMACEUTICALS (PVT) LTD'),
(47, 'TABROS PHARMA'),
(48, 'SEARLE PAKISTAN (PVT) LTD'),
(49, 'ELITE PHARMA');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `manId` int(11) NOT NULL,
  `formId` int(11) NOT NULL,
  `pack` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medId`, `brandId`, `manId`, `formId`, `pack`) VALUES
(1, 1, 1, 1, '14s'),
(2, 1, 1, 1, '14s'),
(3, 1, 1, 2, '28ml'),
(4, 2, 2, 3, '30s'),
(6, 4, 4, 1, '14s'),
(7, 4, 4, 5, '60ml'),
(8, 5, 2, 1, '200s'),
(12, 6, 2, 1, '100s'),
(13, 7, 5, 1, '100s'),
(14, 7, 5, 1, '20s'),
(15, 8, 6, 1, '10x10s'),
(16, 9, 7, 2, '30ml'),
(17, 9, 7, 6, '120ml'),
(18, 10, 8, 6, '120ml'),
(19, 11, 9, 7, '2mlx30'),
(20, 12, 10, 7, '1mlx30s'),
(21, 12, 10, 1, '10x10s'),
(22, 13, 11, 7, '30sx1ml'),
(23, 14, 12, 8, '30g'),
(24, 15, 13, 9, '120ml'),
(25, 16, 14, 9, '120ml'),
(26, 16, 14, 9, '200ml'),
(27, 16, 14, 1, '20s'),
(28, 17, 15, 5, '120ml'),
(29, 17, 15, 1, '10s'),
(30, 17, 15, 1, '50s'),
(31, 18, 16, 1, '50s'),
(32, 19, 17, 1, '1x5s'),
(33, 20, 18, 1, '10s'),
(34, 21, 19, 1, '10s'),
(35, 21, 19, 1, '10s'),
(36, 22, 20, 1, '1x10s'),
(37, 23, 21, 1, '3x10s'),
(38, 24, 22, 1, '10s'),
(39, 25, 23, 1, '10s'),
(40, 25, 23, 1, '10s'),
(41, 26, 24, 1, '10s'),
(42, 26, 24, 10, '10s'),
(43, 27, 12, 1, '10s'),
(44, 28, 25, 1, '3x10s'),
(45, 28, 25, 11, '14s'),
(46, 29, 26, 7, '5mlx30s'),
(47, 29, 26, 1, '10x10s'),
(48, 30, 27, 7, '5mlx30s'),
(49, 31, 10, 1, '10x10s'),
(50, 32, 28, 1, '100s'),
(51, 33, 29, 2, '10ml'),
(52, 33, 29, 12, '100s'),
(53, 34, 30, 2, '10ml'),
(54, 35, 31, 7, '10s'),
(55, 35, 31, 1, '100s'),
(56, 36, 32, 1, '2x10s'),
(57, 37, 33, 1, '20s'),
(58, 38, 34, 1, '20s'),
(59, 39, 35, 1, '2x10s'),
(60, 40, 11, 7, '2mlx25s'),
(61, 41, 36, 7, '25s'),
(62, 41, 36, 1, '20s'),
(63, 42, 2, 1, '100s'),
(64, 43, 37, 1, '100x10s'),
(65, 43, 37, 1, '10x10s'),
(66, 44, 32, 1, '30s'),
(67, 45, 15, 1, '30s'),
(68, 46, 38, 1, '30s'),
(69, 47, 39, 11, '10s'),
(70, 47, 39, 1, '30s'),
(71, 48, 40, 3, '10s'),
(72, 49, 41, 1, '10x10s'),
(73, 49, 41, 1, '3x10s'),
(74, 50, 42, 13, '10s'),
(75, 50, 42, 13, '30s'),
(76, 51, 29, 13, '10s'),
(77, 51, 29, 13, '30s'),
(78, 52, 43, 13, '10s'),
(79, 53, 39, 13, '30s'),
(80, 54, 17, 1, '2x10s'),
(81, 55, 44, 1, '20s'),
(82, 56, 45, 7, '6sx4ml'),
(83, 56, 45, 1, '3x10s'),
(84, 57, 46, 7, '10s'),
(85, 57, 46, 1, '2x10s'),
(86, 58, 47, 7, '4mlx6s'),
(87, 58, 47, 1, '3x10s'),
(88, 59, 48, 1, '100s'),
(89, 60, 48, 1, '10x10s'),
(90, 61, 49, 7, '1mlx100s');

-- --------------------------------------------------------

--
-- Table structure for table `medigeneric`
--

CREATE TABLE `medigeneric` (
  `medId` int(11) NOT NULL,
  `drugId` int(11) NOT NULL,
  `strength` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medigeneric`
--

INSERT INTO `medigeneric` (`medId`, `drugId`, `strength`) VALUES
(1, 1, '4mg'),
(2, 1, '5mg'),
(3, 1, '4mg'),
(4, 2, '150mg'),
(4, 3, '0.5mg'),
(6, 1, '10mg'),
(6, 4, '5mg'),
(7, 1, '4mg/5ml'),
(7, 4, '2mg/5ml'),
(8, 5, '500mg'),
(12, 5, '500mg'),
(12, 6, '65mg'),
(13, 7, '40mg'),
(13, 8, '2mg'),
(14, 7, '40mg'),
(14, 8, '2mg'),
(15, 7, '40mg'),
(15, 8, '2mg'),
(16, 7, '40mg/ml'),
(17, 7, '40mg/5ml'),
(18, 7, '20mg/5ml'),
(18, 9, '540mg/5ml'),
(19, 10, '20mg/ml'),
(20, 10, '4mg/ml'),
(21, 10, '10mg'),
(22, 10, '20mg/ml'),
(23, 11, '10%w/w'),
(24, 12, '267mg/10ml'),
(24, 13, '500mg/10ml'),
(25, 12, '267mg/10ml'),
(25, 13, '500mg/10ml'),
(25, 14, '160mg/10ml'),
(26, 12, '267mg/10ml'),
(26, 13, '500mg/10ml'),
(26, 14, '160mg/10ml'),
(27, 12, '170mg'),
(27, 13, '500mg'),
(27, 15, '25mg'),
(27, 16, '100mg'),
(28, 17, '1mg/5ml'),
(29, 17, '1mg'),
(30, 17, '1mg'),
(31, 17, '1mg'),
(32, 17, '1mg'),
(33, 18, '50mg'),
(34, 18, '50mg'),
(36, 18, '50mg'),
(37, 18, '50mg'),
(38, 18, '50mg'),
(39, 18, '50mg'),
(41, 18, '150mg'),
(42, 18, '50mg'),
(43, 18, '50mg'),
(44, 18, '50mg'),
(45, 18, '150mg'),
(46, 10, '4mg/ml'),
(46, 19, '200mg/ml'),
(47, 10, '10mg'),
(47, 19, '250mg'),
(48, 10, '4mg/ml'),
(48, 19, '50mg/ml'),
(49, 5, '500mg'),
(49, 10, '10mg'),
(50, 5, '500mg'),
(50, 10, '10mg'),
(51, 21, '125mcg/ml'),
(52, 21, '250mcg'),
(53, 21, '125mcg/ml'),
(54, 22, '10mg'),
(55, 22, '10mg'),
(56, 23, '40mg'),
(57, 23, '40mg'),
(58, 23, '40mg'),
(59, 23, '40mg'),
(60, 23, '40mg'),
(61, 23, '40mg/2ml'),
(62, 23, '40mg'),
(63, 24, '5mg'),
(63, 25, '1mg'),
(64, 24, '5mg'),
(64, 25, '2mg'),
(65, 24, '5mg'),
(65, 25, '2mg'),
(66, 26, '135mg'),
(67, 26, '135mg'),
(68, 26, '135mg'),
(69, 26, '200mg'),
(70, 26, '135mg'),
(71, 26, '200mg'),
(72, 26, '135mg'),
(73, 26, '135mg'),
(74, 26, '135mg'),
(74, 27, '3.5mg'),
(75, 26, '135mg'),
(75, 27, '3.5mg'),
(76, 26, '135mg'),
(76, 27, '3.5mg'),
(77, 26, '135mg'),
(77, 27, '3.5mg'),
(78, 26, '135mg'),
(78, 27, '3.5mg'),
(79, 26, '135mg'),
(79, 27, '3.5mg'),
(80, 28, '40mg'),
(81, 28, '40mg'),
(82, 29, '0.04mg'),
(82, 30, '40mg'),
(83, 29, '80mg'),
(83, 30, '80mg'),
(84, 29, '0.04mg'),
(84, 30, '40mg'),
(85, 29, '80mg'),
(85, 30, '80mg'),
(86, 29, '0.04mg'),
(86, 30, '40mg'),
(87, 29, '80mg'),
(87, 30, '80mg'),
(88, 5, '450mg'),
(88, 31, '35mg'),
(89, 5, '450mg'),
(89, 6, '60mg'),
(89, 31, '35mg'),
(90, 32, '10mg/ml');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `medId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `supplierId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `medId`, `userId`, `supplierId`, `quantity`, `time`, `status`) VALUES
(11, 8, 4, 1, 21, 1534189049, 1),
(12, 12, 4, 5, 11, 1534189803, 1),
(13, 82, 4, 1, 2, 1534259320, 1),
(14, 82, 4, 1, 2, 1534259320, 2),
(15, 12, 4, 5, 11, 1534189803, 3),
(16, 82, 4, 1, 2, 1534259320, 3),
(17, 8, 4, 5, 3, 1534310582, 1),
(18, 82, 4, 1, 5, 1534314549, 1),
(19, 2, 4, 7, 3, 1534322311, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderstatus`
--

CREATE TABLE `orderstatus` (
  `statusId` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderstatus`
--

INSERT INTO `orderstatus` (`statusId`, `status`) VALUES
(1, 'Pending'),
(2, 'Expired'),
(3, 'Fulfilled'),
(4, 'Unfulfilled');

-- --------------------------------------------------------

--
-- Table structure for table `retailer`
--

CREATE TABLE `retailer` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `location` varchar(100) NOT NULL,
  `latitude` varchar(70) NOT NULL,
  `longitude` varchar(70) NOT NULL,
  `license` varchar(500) NOT NULL,
  `password` varchar(50) NOT NULL,
  `openingTime` time(6) NOT NULL,
  `closingTime` time(6) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retailer`
--

INSERT INTO `retailer` (`id`, `name`, `phone`, `emailid`, `location`, `latitude`, `longitude`, `license`, `password`, `openingTime`, `closingTime`, `date`) VALUES
(1, 'Time Medico', '1-234-567-8910', 'Timemedico@gmail.com', 'Time Medico, Karachi, Pakistan', '24.8915425', '67.08140000000003', '1-234-568', 'e10adc3949ba59abbe56e057f20f883e', '10:00:00.000000', '23:00:00.000000', '2018-07-28'),
(5, 'Ahmed Medical Store', '1-234-567-8910', 'Ahmedmedical@gmail.com', 'Ahmed Medical Store, Karachi, Pakistan', '24.9418636', '67.07946849999996', '1-234-567', 'e10adc3949ba59abbe56e057f20f883e', '10:00:00.000000', '23:00:00.000000', '2018-08-04'),
(6, 'Bin Hashim Pharmacy', '1-211-454-1266', 'Binhashim@gmail.com', 'Bin hashim supermarket & pharmacy, university road, karachi, pakistan', '24.9380912', '67.15160519999995', '1-234-778', 'e10adc3949ba59abbe56e057f20f883e', '09:00:00.000000', '22:00:00.000000', '2018-08-15'),
(7, 'Kausar Medicos', '1-244-567-8915', 'Kausarmedicos@gmail.com', 'Kausar medicos, karachi, pakistan', '24.8267468', '67.04315240000005', '3-211-166', 'e10adc3949ba59abbe56e057f20f883e', '09:00:00.000000', '22:00:00.000000', '2018-08-15'),
(8, 'Adnan Medical Store', '1-244-567-8917', 'Adnanmedical@gmail.com', 'Adnan medical store, korangi, karachi, pakistan', '24.8320', '67.1683', '1-234-569', 'e10adc3949ba59abbe56e057f20f883e', '10:00:00.000000', '22:00:00.000000', '2018-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `location` text NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `license` varchar(500) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `emailid`, `location`, `latitude`, `longitude`, `license`, `password`, `usertype`, `date`) VALUES
(1, 'AbbasiShaheed', '1-234-567-8910', 'Abbasi@gmail.com', 'Abbasishaheedhospital,karachi,pakistan', '1-234-567', '1-234-567', '1-234-567', 'eece39a95411ff850971627c71f6e6e0', 1, '2018-07-24'),
(3, 'usm', '1-234-567-8910', 'Ss@mnasdna.coj', 'Ab, canada', '1-234-567', '1-234-567', '1-234-567', 'e10adc3949ba59abbe56e057f20f883e', 1, '2018-08-04'),
(4, 'Usman Sabir', '1-234-567-8910', 'Usmansabir98@hotmail.com', 'Kaneez fatima society block 2 park., karachi, pakistan', '24.9545101', '67.11740910000003', ' ', '0eb8d99effdba313202a3fe7225f15e8', 2, '2018-08-09');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `id` int(10) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`id`, `type`) VALUES
(1, 'hospital'),
(2, 'generalPublic');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `brandname`
--
ALTER TABLE `brandname`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `dosageform`
--
ALTER TABLE `dosageform`
  ADD PRIMARY KEY (`formId`);

--
-- Indexes for table `genericname`
--
ALTER TABLE `genericname`
  ADD PRIMARY KEY (`drugId`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`itemId`),
  ADD KEY `medId` (`medId`),
  ADD KEY `supplierId` (`supplierId`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manId`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medId`),
  ADD KEY `brandId` (`brandId`),
  ADD KEY `manId` (`manId`),
  ADD KEY `formId` (`formId`);

--
-- Indexes for table `medigeneric`
--
ALTER TABLE `medigeneric`
  ADD PRIMARY KEY (`medId`,`drugId`),
  ADD KEY `medId` (`medId`),
  ADD KEY `drugId` (`drugId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `user_fk` (`userId`),
  ADD KEY `med_fk` (`medId`),
  ADD KEY `supplier_fk` (`supplierId`),
  ADD KEY `status_fk` (`status`);

--
-- Indexes for table `orderstatus`
--
ALTER TABLE `orderstatus`
  ADD PRIMARY KEY (`statusId`);

--
-- Indexes for table `retailer`
--
ALTER TABLE `retailer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emailid` (`emailid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emailid` (`emailid`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brandname`
--
ALTER TABLE `brandname`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `dosageform`
--
ALTER TABLE `dosageform`
  MODIFY `formId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `genericname`
--
ALTER TABLE `genericname`
  MODIFY `drugId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `manId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `retailer`
--
ALTER TABLE `retailer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `medId` FOREIGN KEY (`medId`) REFERENCES `medicine` (`medId`),
  ADD CONSTRAINT `supplierId` FOREIGN KEY (`supplierId`) REFERENCES `retailer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
