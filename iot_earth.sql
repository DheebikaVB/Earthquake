-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 04, 2020 at 07:59 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iot_earth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `mobile`) VALUES
('admin', 'admin', '9976570006');

-- --------------------------------------------------------

--
-- Table structure for table `store_data`
--

CREATE TABLE `store_data` (
  `id` int(11) NOT NULL,
  `data1` varchar(30) NOT NULL,
  `data2` varchar(30) NOT NULL,
  `data3` varchar(20) NOT NULL,
  `data4` varchar(20) NOT NULL,
  `data5` varchar(20) NOT NULL,
  `data6` varchar(20) NOT NULL,
  `data7` varchar(20) NOT NULL,
  `data8` varchar(20) NOT NULL,
  `data9` varchar(20) NOT NULL,
  `data10` varchar(20) NOT NULL,
  `data11` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_data`
--

INSERT INTO `store_data` (`id`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`) VALUES
(1, '23746.0', '0.47903935185185187', '1.863', '127.352', '3.6', '33.7', '25.3', '-2.0', '3.0', '7.5', 'Mild'),
(2, '23747.0', '0.7541435185185185', '-20.579', '-173.972', '5.7', '44.6', '25.5', '6.0', '7.0', '8.0', 'Moderate'),
(3, '23750.0', '0.784525462962963', '-59.076', '-23.557', '3.0', '33.6', '25.2', '3.0', '-1.0', '7.9', 'Mild'),
(4, '23751.0', '0.5644675925925926', '11.938', '126.427', '5.8', '33.3', '25.58', '2.0', '-2.0', '7.8', 'Moderate'),
(5, '23752.0', '0.567037037037037', '-13.405', '166.629', '6.7', '48.6', '25.77', '-7.0', '6.0', '9.8', 'Severe'),
(6, '23754.0', '0.5641782407407407', '27.357', '87.867', '5.9', '50.7', '25.83', '1.0', '-2.0', '9.32', 'Severe'),
(7, '23757.0', '0.970625', '-13.309', '166.212', '3.1', '33.9', '25.1', '4.0', '5.0', '7.2', 'Mild'),
(8, '23758.0', '0.4809837962962963', '-56.452', '-27.043', '4.3', '33.6', '25.15', '-3.0', '5.0', '7.1', 'Mild'),
(9, '23759.0', '0.446724537037037', '-24.563', '178.487', '4.1', '33.5', '25.28', '-1.0', '3.0', '7.7', 'Mild'),
(10, '23759.0', '0.8733912037037037', '-6.807', '108.988', '4.0', '33.2', '25.3', '-3.0', '2.0', '7.6', 'Mild'),
(11, '23766.0', '0.007835648148148149', '-2.608', '125.952', '8.2', '54.26', '25.67', '9.0', '-8.0', '9.42', 'Severe'),
(12, '23771.0', '0.3996527777777778', '54.636', '161.703', '5.5', '44.7', '25.45', '-1.0', '4.0', '7.7', 'Moderate'),
(13, '23774.0', '0.2271527777777778', '-18.697', '-177.864', '5.6', '33.5', '25.4', '-3.0', '3.0', '8.3', 'Moderate'),
(14, '23775.0', '0.6644791666666666', '37.523', '73.251', '6.0', '53.7', '25.9', '4.0', '-2.0', '8.9', 'Severe'),
(15, '23777.0', '0.1423611111111111', '-51.84', '139.741', '5.1', '34.5', '25.46', '-6.0', '-6.0', '8.4', 'Moderate'),
(16, '23777.0', '0.20928240740740742', '51.251', '178.715', '8.7', '63.91', '25.82', '-9.0', '9.0', '9.79', 'Severe'),
(17, '23777.0', '0.25346064814814817', '51.639', '175.055', '3.4', '33.4', '25.25', '3.0', '2.0', '7.7', 'Mild'),
(18, '23777.0', '0.27576388888888886', '52.528', '172.007', '5.7', '46.1', '25.58', '-2.0', '3.0', '7.4', 'Moderate'),
(19, '23777.0', '0.2774537037037037', '51.626', '175.746', '5.8', '37.9', '25.4', '2.0', '1.0', '8.5', 'Moderate'),
(20, '23777.0', '0.2995717592592593', '51.037', '177.848', '5.9', '33.8', '25.72', '3.0', '3.0', '7.9', 'Severe'),
(21, '23777.0', '0.3020717592592593', '51.73', '173.975', '3.9', '33.7', '25.1', '1.0', '-3.0', '7.8', 'Mild'),
(22, '23777.0', '0.30777777777777776', '51.775', '173.058', '3.6', '33.4', '25.2', '3.0', '2.0', '7.2', 'Mild'),
(23, '23777.0', '0.32202546296296297', '52.611', '172.588', '4.2', '33.1', '25.3', '-3.0', '1.0', '7.6', 'Mild'),
(24, '23777.0', '0.33769675925925924', '51.831', '174.368', '4.5', '39.5', '25.4', '2.0', '-1.0', '7.2', 'Moderate'),
(25, '23777.0', '0.35672453703703705', '51.948', '173.969', '5.6', '33.6', '25.4', '1.0', '-3.0', '7.1', 'Moderate'),
(26, '23777.0', '0.36162037037037037', '51.443', '179.605', '7.3', '67.3', '25.6', '7.0', '-6.0', '9.6', 'Severe'),
(27, '23777.0', '0.5042592592592593', '52.773', '171.974', '6.5', '51.8', '25.55', '6.0', '7.0', '8.5', 'Severe'),
(28, '23777.0', '0.5354050925925926', '51.772', '174.696', '3.6', '33.2', '25.18', '-1.0', '-1.0', '7.7', 'Mild'),
(29, '23777.0', '0.5961689814814815', '52.975', '171.091', '5.4', '34.2', '25.24', '-6.0', '-6.0', '8.6', 'Moderate'),
(30, '23777.0', '0.6607060185185185', '52.99', '170.874', '3.8', '33.5', '25.2', '-3.0', '-3.0', '7.6', 'Mild'),
(31, '23777.0', '0.77375', '51.536', '175.045', '3.9', '33.8', '25.3', '-1.0', '-2.0', '7.7', 'Mild'),
(32, '23777.0', '0.8222685185185186', '13.245', '-44.922', '4.2', '33.9', '25.4', '-3.0', '2.0', '7.5', 'Mild'),
(33, '23777.0', '0.9375347222222222', '51.812', '174.206', '3.7', '33.5', '25.1', '-2.0', '3.0', '7.4', 'Mild'),
(34, '23778.0', '0.277662037037037', '51.762', '174.841', '5.7', '41.2', '25.4', '2.0', '5.0', '7.7', 'Moderate'),
(35, '23778.0', '0.397349537037037', '52.438', '174.321', '6.3', '57.1', '25.53', '-6.0', '6.0', '9.3', 'Severe'),
(36, '23778.0', '0.568599537037037', '51.946', '173.84', '4.3', '33.0', '25.2', '3.0', '1.0', '7.4', 'Mild'),
(37, '23778.0', '0.8661111111111112', '51.738', '174.566', '6.0', '66.8', '25.6', '5.0', '3.0', '9.2', 'Severe'),
(38, '23778.0', '0.9278009259259259', '51.487', '176.558', '3.0', '33.7', '25.3', '1.0', '-3.0', '7.9', 'Mild'),
(39, '23779.0', '0.06981481481481482', '53.008', '-162.008', '5.0', '40.3', '25.44', '7.0', '-7.0', '8.9', 'Moderate'),
(40, '23779.0', '0.16868055555555556', '52.184', '175.505', '6.2', '50.9', '25.82', '-6.0', '-6.0', '9.1', 'Severe'),
(41, '23779.0', '0.30190972222222223', '52.076', '172.918', '5.6', '45.2', '25.4', '3.0', '2.0', '7.8', 'Moderate'),
(42, '23779.0', '0.5156018518518518', '51.744', '175.213', '5.7', '38.0', '25.3', '-3.0', '-3.0', '7.2', 'Moderate'),
(43, '23779.0', '0.591099537037037', '52.057', '174.116', '4.1', '33.6', '25.3', '2.0', '-2.0', '7.5', 'Mild'),
(44, '23779.0', '0.7017245370370371', '53.191', '-161.859', '6.3', '64.7', '25.63', '6.0', '6.0', '8.8', 'Severe'),
(45, '23779.0', '0.7572916666666667', '51.447', '176.469', '5.8', '45.0', '25.3', '-3.0', '2.0', '7.9', 'Moderate'),
(46, '23780.0', '0.09523148148148149', '51.258', '173.393', '5.7', '43.0', '25.4', '-2.0', '3.0', '7.8', 'Moderate'),
(47, '23780.0', '0.17456018518518518', '52.031', '175.411', '4.3', '33.4', '25.1', '2.0', '1.0', '7.4', 'Mild'),
(48, '23780.0', '0.39296296296296296', '51.294', '179.092', '4.4', '33.6', '25.3', '3.0', '3.0', '7.2', 'Mild'),
(49, '23781.0', '0.6575462962962964', '55.223', '165.426', '3.9', '33.5', '25.2', '1.0', '5.0', '7.1', 'Mild'),
(50, '23782.0', '0.23755787037037038', '-18.718', '169.386', '3.8', '33.2', '25.11', '3.0', '-3.0', '7.7', 'Mild'),
(51, '23782.0', '0.734224537037037', '52.815', '171.904', '6.0', '56.8', '25.6', '5.0', '2.0', '9.4', 'Severe'),
(52, '23785.0', '0.03831018518518518', '52.188', '172.752', '5.8', '38.6', '25.3', '-3.0', '1.0', '7.7', 'Moderate'),
(53, '23788.0', '0.0591087962962963', '51.009', '179.325', '3.4', '33.0', '25.3', '2.0', '-1.0', '7.5', 'Mild'),
(54, '23788.0', '0.44686342592592593', '3.026', '125.951', '4.4', '33.4', '25.1', '1.0', '-3.0', '7.4', 'Mild'),
(55, '23789.0', '0.5167824074074074', '38.908', '142.095', '5.8', '42.4', '25.7', '-1.0', '-1.0', '7.7', 'Moderate'),
(56, '23790.0', '0.42975694444444446', '51.694', '176.446', '3.1', '33.1', '25.1', '-3.0', '-3.0', '7.4', 'Mild'),
(57, '23790.0', '0.7666319444444445', '21.527', '143.081', '5.6', '44.0', '25.5', '-1.0', '-2.0', '7.1', 'Moderate'),
(58, '23791.0', '0.18515046296296298', '25.011', '94.186', '5.6', '40.0', '25.4', '-3.0', '2.0', '7.9', 'Moderate'),
(59, '23791.0', '0.9443055555555555', '-7.251', '126.715', '5.9', '53.0', '25.6', '-2.0', '3.0', '9.5', 'Severe'),
(60, '23791.0', '0.9678240740740741', '51.415', '179.358', '3.8', '33.3', '25.1', '2.0', '3.0', '7.2', 'Mild'),
(61, '23794.0', '0.46826388888888887', '-15.343', '-172.889', '5.8', '37.0', '25.6', '3.0', '-3.0', '8.3', 'Moderate'),
(62, '23796.0', '0.924849537037037', '-25.633', '-70.679', '7.0', '51.9', '25.6', '-7.0', '6.0', '8.8', 'Severe'),
(63, '23798.0', '0.2024189814814815', '-5.461', '151.98', '6.2', '55.4', '25.7', '-6.0', '-6.0', '9.7', 'Severe'),
(64, '23798.0', '0.22377314814814814', '51.884', '173.072', '6.2', '57.2', '25.8', '6.0', '6.0', '8.6', 'Severe'),
(65, '23799.0', '0.9834953703703704', '6.746', '-72.971', '3.6', '33.6', '25.3', '3.0', '-1.0', '7.2', 'Mild'),
(66, '23800.0', '0.323900462962963', '28.133', '-112.208', '3.0', '33.2', '25.11', '-3.0', '-2.0', '7.1', 'Mild'),
(67, '23802.0', '0.3062037037037037', '-5.377', '152.115', '3.9', '33.8', '25.1', '-1.0', '-2.0', '7.7', 'Mild'),
(68, '23802.0', '0.34649305555555554', '21.104', '121.218', '3.7', '33.4', '25.2', '-2.0', '3.0', '7.6', 'Mild'),
(69, '23802.0', '0.3811111111111111', '-5.371', '152.055', '5.5', '36.0', '25.8', '-2.0', '2.0', '8.7', 'Moderate'),
(70, '23802.0', '0.5562152777777778', '21.122', '121.148', '5.6', '39.0', '25.6', '3.0', '1.0', '7.5', 'Moderate'),
(71, '23802.0', '0.8069907407407407', '52.204', '173.911', '5.7', '43.2', '25.3', '2.0', '-1.0', '7.4', 'Moderate'),
(72, '23802.0', '0.8973842592592592', '15.404', '-92.623', '3.6', '33.1', '25.2', '1.0', '-3.0', '7.7', 'Mild'),
(73, '23803.0', '0.916724537037037', '38.399', '28.226', '3.8', '33.5', '25.2', '-1.0', '-1.0', '7.4', 'Mild'),
(74, '23804.0', '0.6104398148148148', '-27.145', '-177.262', '3.3', '33.0', '25.34', '-3.0', '-3.0', '7.1', 'Mild'),
(75, '23804.0', '0.6348148148148148', '-5.514', '151.819', '6.7', '63.0', '25.72', '6.0', '7.0', '8.4', 'Severe'),
(76, '23804.0', '0.6996296296296296', '53.046', '171.308', '5.3', '37.5', '25.44', '-6.0', '-6.0', '8.1', 'Moderate'),
(77, '23805.0', '0.07564814814814814', '-5.487', '146.993', '5.7', '38.9', '25.3', '-1.0', '-2.0', '7.5', 'Moderate'),
(78, '23806.0', '0.26046296296296295', '50.928', '179.511', '3.5', '33.9', '25.3', '-3.0', '2.0', '7.9', 'Mild'),
(79, '23806.0', '0.5713773148148148', '52.39', '174.937', '3.6', '33.7', '25.1', '-2.0', '3.0', '7.8', 'Mild'),
(80, '23806.0', '0.6057638888888889', '-27.027', '-63.214', '3.7', '33.6', '25.2', '2.0', '1.0', '7.4', 'Mild'),
(81, '23806.0', '0.7494907407407407', '52.416', '174.239', '3.8', '33.3', '25.2', '3.0', '3.0', '7.2', 'Mild'),
(82, '23807.0', '0.46586805555555555', '-18.425', '-132.923', '3.9', '33.0', '25.1', '1.0', '-4.0', '7.1', 'Mild'),
(83, '23807.0', '0.8499652777777778', '20.13', '121.461', '4.0', '33.9', '25.3', '3.0', '-3.0', '7.7', 'Mild'),
(84, '23808.0', '0.07165509259259259', '-29.998', '-177.968', '5.0', '37.0', '25.4', '-4.0', '2.0', '7.6', 'Moderate'),
(85, '23810.0', '0.7485532407407407', '39.197', '23.86', '5.7', '42.0', '25.51', '6.0', '6.0', '8.5', 'Moderate'),
(86, '23814.0', '0.3148611111111111', '53.292', '-162.331', '3.5', '33.5', '25.1', '-3.0', '4.0', '7.7', 'Mild'),
(87, '23815.0', '0.661886574074074', '36.405', '70.724', '4.5', '45.6', '25.48', '7.0', '6.0', '8.6', 'Moderate'),
(88, '23816.0', '0.0848263888888889', '22.635', '121.117', '3.8', '33.2', '25.3', '2.0', '1.0', '7.5', 'Mild'),
(89, '23817.0', '0.6988078703703704', '40.697', '143.032', '5.5', '43.6', '25.45', '-6.0', '-6.0', '8.2', 'Moderate'),
(90, '23818.0', '0.6022569444444444', '52.785', '171.821', '3.0', '33.1', '25.3', '4.0', '3.0', '7.4', 'Mild'),
(91, '23819.0', '0.2654166666666667', '-20.036', '-175.89', '5.2', '44.5', '25.43', '6.0', '-6.0', '8.9', 'Moderate'),
(92, '23819.0', '0.5282986111111111', '-55.857', '-26.758', '3.1', '33.5', '25.1', '1.0', '-1.0', '7.7', 'Mild'),
(93, '23820.0', '0.6811689814814815', '-1.887', '119.836', '3.0', '33.0', '25.1', '3.0', '-3.0', '7.4', 'Mild'),
(94, '23822.0', '0.4641087962962963', '-1.547', '126.623', '5.2', '49.0', '25.32', '6.0', '-6.0', '8.7', 'Moderate'),
(95, '23823.0', '0.11445601851851851', '-15.262', '-173.254', '5.5', '41.5', '25.33', '-6.0', '7.0', '8.3', 'Moderate'),
(96, '23823.0', '0.9558680555555555', '-31.974', '-71.573', '5.7', '39.7', '25.4', '-6.0', '7.0', '8.8', 'Moderate'),
(97, '23824.0', '0.9958912037037037', '-15.382', '-173.194', '5.1', '36.2', '25.4', '-6.0', '-7.0', '8.0', 'Moderate'),
(98, '23825.0', '0.9459722222222222', '8.418', '126.553', '3.2', '33.4', '25.1', '-1.0', '-1.0', '7.1', 'Mild'),
(99, '23829.0', '0.557650462962963', '55.26', '161.904', '3.3', '33.3', '25.2', '-3.0', '-3.0', '7.9', 'Mild'),
(100, '23829.0', '0.6897685185185185', '-32.522', '-71.233', '5.4', '38.0', '25.43', '7.0', '-6.0', '8.2', 'Moderate'),
(101, '23830.0', '0.4497453703703704', '40.687', '142.915', '5.7', '39.2', '25.44', '7.0', '6.0', '8.4', 'Moderate'),
(102, '23831.0', '0.014583333333333334', '-20.502', '-173.701', '3.4', '33.1', '25.1', '-1.0', '-2.0', '7.8', 'Mild'),
(103, '23831.0', '0.10215277777777777', '50.282', '177.959', '5.7', '45.0', '25.3', '-7.0', '-6.0', '8.1', 'Moderate'),
(104, '23832.0', '0.4079976851851852', '38.365', '22.405', '5.5', '39.0', '25.4', '-6.0', '6.0', '8.5', 'Moderate'),
(105, '23833.0', '0.29765046296296294', '9.986', '125.896', '3.9', '33.8', '25.3', '-3.0', '2.0', '7.2', 'Mild'),
(106, '23835.0', '0.4727199074074074', '15.8', '-98.067', '3.8', '33.7', '25.2', '-2.0', '3.0', '7.6', 'Mild'),
(107, '23836.0', '0.5629513888888888', '51.865', '175.172', '3.1', '33.4', '25.2', '2.0', '1.0', '7.2', 'Mild'),
(108, '23836.0', '0.650150462962963', '-27.088', '-176.046', '3.2', '33.1', '25.1', '3.0', '3.0', '7.1', 'Mild'),
(109, '23837.0', '0.13394675925925925', '37.505', '22.067', '5.3', '47.0', '25.45', '6.0', '6.0', '8.6', 'Moderate'),
(110, '23837.0', '0.5779166666666666', '44.812', '150.871', '3.7', '33.3', '25.3', '1.0', '-5.0', '7.7', 'Mild'),
(111, '23838.0', '0.23054398148148147', '36.083', '139.968', '4.1', '33.6', '25.2', '3.0', '-3.0', '7.6', 'Mild'),
(112, '23838.0', '0.4045023148148148', '-0.463', '120.039', '4.9', '46.1', '25.52', '-6.0', '-6.0', '8.2', 'Moderate'),
(113, '23840.0', '0.5721527777777777', '52.192', '173.437', '7.0', '67.4', '25.92', '6.0', '6.0', '8.9', 'Severe'),
(114, '23841.0', '0.4482175925925926', '-32.707', '-178.207', '3.0', '33.2', '25.1', '-5.0', '2.0', '7.7', 'Mild'),
(115, '23841.0', '0.9979861111111111', '35.047', '24.318', '5.7', '45.0', '25.43', '6.0', '-6.0', '8.7', 'Moderate'),
(116, '23842.0', '0.6158680555555556', '-20.455', '-173.621', '3.3', '33.5', '25.2', '-3.0', '3.0', '7.5', 'Mild'),
(117, '23842.0', '0.9394444444444444', '-17.857', '-178.646', '5.6', '42.1', '25.38', '-6.0', '6.0', '8.3', 'Moderate'),
(118, '23842.0', '0.9535300925925926', '-13.409', '170.376', '5.8', '43.1', '25.44', '6.0', '6.0', '8.8', 'Moderate'),
(119, '23843.0', '0.007766203703703704', '-42.692', '174.205', '3.2', '33.8', '25.3', '2.0', '1.0', '7.4', 'Mild'),
(120, '23843.0', '0.7858449074074074', '-26.168', '178.628', '3.7', '33.9', '25.2', '3.0', '3.0', '7.7', 'Mild'),
(121, '23844.0', '0.8620023148148148', '30.317', '138.702', '3.6', '33.5', '25.3', '1.0', '5.0', '7.4', 'Mild'),
(122, '23847.0', '0.21516203703703704', '25.08', '122.897', '3.1', '33.8', '25.2', '3.0', '-3.0', '7.1', 'Mild'),
(123, '23848.0', '0.9738541666666667', '64.572', '-160.375', '3.0', '33.0', '25.1', '5.0', '-3.0', '7.9', 'Mild'),
(124, '23850.0', '0.27358796296296295', '41.46', '-127.416', '3.7', '33.4', '25.1', '-3.0', '2.0', '7.8', 'Mild'),
(125, '23850.0', '0.40230324074074075', '-59.687', '-26.454', '4.7', '39.5', '25.5', '-6.0', '-6.0', '8.4', 'Moderate'),
(126, '23850.0', '0.5291203703703704', '-59.586', '-26.372', '5.4', '38.7', '25.4', '6.0', '6.0', '8.1', 'Moderate'),
(127, '23851.0', '0.9875', '34.848', '138.332', '6.0', '57.9', '25.9', '-3.0', '4.0', '7.2', 'Severe'),
(128, '23856.0', '0.9135300925925925', '11.451', '140.231', '3.8', '33.3', '25.1', '2.0', '1.0', '7.5', 'Mild'),
(129, '23857.0', '0.041840277777777775', '24.409', '142.776', '3.0', '33.0', '25.3', '4.0', '-1.0', '7.9', 'Mild'),
(130, '23858.0', '0.407974537037037', '-1.733', '126.568', '3.7', '33.6', '25.2', '1.0', '-4.0', '7.8', 'Mild'),
(131, '23858.0', '0.8535532407407408', '54.157', '-162.59', '3.6', '33.2', '25.1', '-1.0', '-3.0', '7.4', 'Mild'),
(132, '23858.0', '0.9276041666666667', '21.045', '120.798', '5.1', '45.6', '25.44', '6.0', '-6.0', '8.5', 'Moderate'),
(133, '23859.0', '0.45444444444444443', '-6.822', '129.504', '3.0', '33.8', '25.2', '-4.0', '-3.0', '7.2', 'Mild'),
(134, '23859.0', '0.5896990740740741', '35.626', '23.425', '3.1', '45.6', '25.33', '-6.0', '6.0', '8.6', 'Moderate'),
(135, '23859.0', '0.8397800925925926', '1.333', '-85.075', '3.8', '33.4', '25.3', '-3.0', '-1.0', '7.1', 'Mild'),
(136, '23861.0', '0.6449652777777778', '47.288', '-122.406', '3.7', '45.7', '25.42', '6.0', '6.0', '8.2', 'Moderate'),
(137, '23861.0', '0.6589699074074075', '-5.548', '110.332', '3.0', '33.6', '25.1', '-3.0', '-3.0', '7.7', 'Mild'),
(138, '23863.0', '0.894375', '60.35', '-146.176', '3.6', '33.5', '25.1', '-1.0', '-2.0', '7.6', 'Mild'),
(139, '23864.0', '0.3012152777777778', '28.927', '128.769', '3.8', '33.2', '25.7', '-3.0', '2.0', '7.7', 'Mild'),
(140, '23865.0', '0.048310185185185185', '-32.537', '-70.569', '3.8', '33.1', '25.9', '-2.0', '3.0', '7.5', 'Mild'),
(141, '23865.0', '0.41780092592592594', '13.683', '-89.07', '3.9', '33.5', '25.6', '2.0', '1.0', '7.4', 'Mild'),
(142, '23865.0', '0.6730208333333333', '-24.281', '-67.927', '3.7', '33.0', '25.3', '3.0', '3.0', '7.7', 'Mild'),
(143, '23866.0', '0.3574421296296296', '41.801', '79.414', '5.2', '45.3', '25.43', '-6.0', '7.0', '8.9', 'Moderate'),
(144, '23874.0', '0.3374537037037037', '-3.523', '137.924', '3.7', '33.4', '25.3', '1.0', '-3.0', '7.4', 'Mild'),
(145, '23874.0', '0.4401273148148148', '-6.174', '130.358', '3.1', '39.3', '25.53', '6.0', '-6.0', '8.7', 'Moderate'),
(146, '23877.0', '0.9990277777777777', '-4.131', '134.946', '3.8', '33.3', '25.2', '3.0', '2.0', '7.1', 'Mild'),
(147, '23878.0', '0.4831828703703704', '5.268', '125.467', '3.9', '33.1', '25.3', '-3.0', '1.0', '7.9', 'Mild'),
(148, '23879.0', '0.7219097222222223', '22.336', '121.248', '3.7', '37.4', '25.59', '6.0', '-7.0', '8.3', 'Moderate'),
(149, '23881.0', '0.1256712962962963', '-8.938', '159.083', '3.6', '33.8', '25.3', '2.0', '-1.0', '7.8', 'Mild'),
(150, '23881.0', '0.2527314814814815', '-6.575', '105.311', '3.0', '33.4', '25.4', '1.0', '-3.0', '7.2', 'Mild'),
(151, '23881.0', '0.583275462962963', '-4.819', '152.436', '3.5', '33.7', '25.1', '-1.0', '4.0', '7.6', 'Mild'),
(152, '23882.0', '0.028090277777777777', '-14.921', '167.34', '3.7', '38.6', '25.52', '7.0', '-7.0', '8.8', 'Moderate'),
(153, '23884.0', '0.12900462962962964', '1.309', '126.239', '3.7', '33.3', '25.11', '-3.0', '-1.0', '7.2', 'Mild'),
(154, '23884.0', '0.43864583333333335', '-21.126', '-178.537', '3.1', '39.6', '25.4', '-6.0', '6.0', '8.0', 'Moderate'),
(155, '23885.0', '0.9904513888888888', '52.149', '175.119', '3.0', '33.0', '25.3', '4.0', '3.0', '7.1', 'Mild'),
(156, '23886.0', '0.9730555555555556', '13.174', '124.604', '3.9', '33.6', '25.3', '-1.0', '3.0', '7.7', 'Mild'),
(157, '23887.0', '0.5471180555555556', '51.227', '178.882', '3.8', '33.2', '25.3', '3.0', '1.0', '7.6', 'Mild'),
(158, '23888.0', '0.8223726851851851', '-55.957', '-27.875', '3.0', '33.8', '25.4', '3.0', '3.0', '7.7', 'Mild'),
(159, '23893.0', '0.48520833333333335', '-7.566', '128.578', '3.9', '33.4', '25.1', '1.0', '-3.0', '7.5', 'Mild'),
(160, '23895.0', '0.21736111111111112', '-23.54', '-179.917', '3.7', '33.6', '25.3', '3.0', '2.0', '7.4', 'Mild'),
(161, '23895.0', '0.9863773148148148', '15.674', '-46.712', '3.9', '33.5', '25.3', '-3.0', '-3.0', '7.7', 'Mild'),
(162, '23898.0', '0.1590625', '-1.649', '126.552', '3.6', '33.2', '25.4', '2.0', '-2.0', '7.4', 'Mild'),
(163, '23904.0', '0.10943287037037037', '51.884', '174.015', '3.3', '33.1', '25.1', '-3.0', '2.0', '7.3', 'Mild'),
(164, '23904.0', '0.14846064814814816', '44.608', '149.022', '7.0', '65.3', '25.82', '-7.0', '-6.0', '8.2', 'Severe'),
(165, '23904.0', '0.1486574074074074', '44.578', '148.699', '7.2', '57.3', '25.67', '-7.0', '6.0', '8.4', 'Severe'),
(166, '23904.0', '0.29935185185185187', '44.133', '149.255', '3.3', '33.5', '25.2', '-2.0', '3.0', '7.5', 'Mild'),
(167, '23904.0', '0.31092592592592594', '44.112', '149.539', '3.6', '33.0', '25.3', '2.0', '1.0', '7.9', 'Mild'),
(168, '23904.0', '0.36181712962962964', '44.299', '149.032', '5.7', '34.8', '25.5', '3.0', '3.0', '7.8', 'Moderate'),
(169, '23905.0', '0.22824074074074074', '44.167', '149.87', '3.6', '33.2', '25.1', '1.0', '-3.0', '7.4', 'Mild'),
(170, '23905.0', '0.2367824074074074', '43.775', '149.448', '3.7', '33.8', '25.3', '3.0', '2.0', '7.2', 'Mild'),
(171, '23905.0', '0.2524652777777778', '43.804', '149.351', '3.7', '33.4', '25.4', '-3.0', '1.0', '7.1', 'Mild'),
(172, '23905.0', '0.7817592592592593', '43.885', '149.339', '3.5', '33.6', '25.1', '2.0', '-1.0', '7.7', 'Mild'),
(173, '23905.0', '0.7848611111111111', '-20.38', '-68.944', '3.9', '33.5', '25.2', '1.0', '-3.0', '7.6', 'Mild'),
(174, '23906.0', '0.2960069444444444', '41.705', '143.727', '6.1', '51.2', '25.8', '6.0', '6.0', '9.6', 'Severe'),
(175, '23906.0', '0.8346180555555556', '37.718', '29.378', '3.9', '33.2', '25.1', '-1.0', '-1.0', '7.7', 'Mild'),
(176, '23907.0', '0.31298611111111113', '-39.902', '45.55', '3.6', '33.1', '25.1', '-3.0', '-3.0', '7.5', 'Mild'),
(177, '23908.0', '0.3892824074074074', '-38.08', '177.442', '3.9', '33.5', '25.3', '-1.0', '-2.0', '7.4', 'Mild'),
(178, '23908.0', '0.9656134259259259', '-21.025', '173.574', '6.2', '49.5', '25.6', '-6.0', '-6.0', '8.5', 'Severe'),
(179, '23910.0', '0.8436458333333333', '32.052', '87.784', '3.9', '33.0', '25.4', '-3.0', '2.0', '7.7', 'Mild'),
(180, '23913.0', '0.08155092592592593', '44.505', '149.218', '3.6', '33.4', '25.1', '-2.0', '3.0', '7.4', 'Mild'),
(181, '23913.0', '0.7531712962962963', '42.973', '-126.652', '3.5', '33.3', '25.4', '2.0', '3.0', '7.1', 'Mild'),
(182, '23914.0', '0.014780092592592593', '28.134', '55.891', '5.9', '53.5', '25.7', '3.0', '-1.0', '9.8', 'Severe'),
(183, '23915.0', '0.9917476851851852', '7.175', '123.613', '5.4', '38.5', '25.34', '6.0', '-6.0', '8.6', 'Moderate'),
(184, '23916.0', '0.4647800925925926', '56.543', '-152.948', '5.3', '39.5', '25.43', '6.0', '7.0', '8.2', 'Moderate'),
(185, '23917.0', '0.32306712962962963', '7.034', '126.25', '3.8', '33.8', '25.4', '3.0', '-2.0', '7.8', 'Mild'),
(186, '23920.0', '0.40677083333333336', '-54.437', '4.965', '3.7', '33.4', '25.2', '-1.0', '4.0', '7.2', 'Mild'),
(187, '23920.0', '0.46457175925925925', '60.281', '-141.418', '5.5', '36.7', '25.43', '-6.0', '6.0', '8.9', 'Moderate'),
(188, '23920.0', '0.4834953703703704', '23.764', '121.56', '3.9', '33.7', '25.2', '-2.0', '-2.0', '7.6', 'Mild'),
(189, '23921.0', '0.14832175925925925', '-5.01', '153.06', '3.0', '33.3', '25.1', '4.0', '3.0', '7.2', 'Mild'),
(190, '23923.0', '0.12032407407407407', '-1.734', '126.53', '3.8', '33.0', '25.3', '-2.0', '2.0', '7.1', 'Mild'),
(191, '23923.0', '0.35663194444444446', '51.813', '176.53', '3.7', '33.6', '25.2', '3.0', '1.0', '7.7', 'Mild'),
(192, '23924.0', '0.9671527777777778', '-63.159', '-163.707', '5.1', '38.4', '25.4', '-6.0', '-6.0', '8.7', 'Moderate'),
(193, '23925.0', '0.8740740740740741', '52.99', '-167.739', '5.3', '39.5', '25.4', '7.0', '6.0', '8.3', 'Moderate'),
(194, '23926.0', '0.47653935185185187', '22.338', '101.496', '3.9', '33.2', '25.1', '2.0', '-1.0', '7.6', 'Mild'),
(195, '23929.0', '0.12802083333333333', '-22.567', '172.939', '3.8', '33.8', '25.2', '1.0', '-3.0', '7.7', 'Mild'),
(196, '23929.0', '0.13802083333333334', '38.384', '22.545', '5.3', '41.2', '25.5', '6.0', '7.0', '8.8', 'Moderate'),
(197, '23929.0', '0.17278935185185185', '46.591', '152.467', '3.6', '33.4', '25.1', '-1.0', '-1.0', '7.5', 'Mild'),
(198, '23929.0', '0.7755324074074074', '-4.408', '155.062', '5.3', '42.4', '25.4', '-6.0', '6.0', '8.0', 'Moderate'),
(199, '23930.0', '0.9583333333333334', '-6.819', '105.505', '3.7', '33.6', '25.1', '-3.0', '-3.0', '7.4', 'Mild'),
(200, '23935.0', '0.5814236111111111', '-28.428', '-68.25', '3.0', '33.5', '25.3', '-1.0', '-3.0', '7.7', 'Mild'),
(201, '23938.0', '0.7732638888888889', '7.74', '123.811', '3.1', '33.2', '25.4', '-3.0', '-2.0', '7.4', 'Mild'),
(202, '23940.0', '0.30594907407407407', '-9.72', '159.888', '3.9', '33.1', '25.1', '-3.0', '2.0', '7.1', 'Mild'),
(203, '23943.0', '0.5544907407407408', '7.56', '124.247', '5.7', '43.5', '25.4', '-2.0', '3.0', '7.9', 'Moderate'),
(204, '23944.0', '0.7448263888888889', '53.318', '170.365', '5.5', '41.7', '25.5', '2.0', '1.0', '7.8', 'Moderate'),
(205, '23948.0', '0.15327546296296296', '1.813', '99.276', '3.5', '33.4', '25.1', '3.0', '3.0', '7.2', 'Mild'),
(206, '23948.0', '0.5646296296296296', '41.278', '146.682', '3.6', '33.9', '25.1', '1.0', '-3.0', '7.5', 'Mild'),
(207, '23948.0', '0.9074652777777777', '51.472', '175.894', '3.7', '33.7', '25.2', '3.0', '2.0', '7.9', 'Mild'),
(208, '23951.0', '0.9369097222222222', '-2.335', '101.767', '3.6', '33.6', '25.1', '-3.0', '1.0', '7.8', 'Mild'),
(209, '23952.0', '0.35375', '51.05', '-171.289', '4.8', '45.5', '25.5', '6.0', '-7.0', '8.2', 'Moderate'),
(210, '23952.0', '0.5141319444444444', '50.799', '-171.607', '3.7', '33.3', '25.1', '2.0', '-1.0', '7.4', 'Mild'),
(211, '23952.0', '0.6309837962962963', '51.076', '-171.466', '3.6', '33.6', '25.3', '1.0', '-3.0', '7.2', 'Mild'),
(212, '23953.0', '0.3056712962962963', '6.789', '-72.907', '3.6', '33.5', '25.4', '-1.0', '-1.0', '7.1', 'Mild'),
(213, '23955.0', '0.989224537037037', '-32.441', '-178.803', '3.9', '33.2', '25.2', '-3.0', '-3.0', '7.7', 'Mild'),
(214, '23956.0', '0.5555208333333334', '-56.046', '157.922', '5.3', '45.6', '25.5', '7.0', '-6.0', '8.4', 'Moderate'),
(215, '23957.0', '0.0846412037037037', '-7.526', '-81.179', '3.7', '33.1', '25.2', '-1.0', '4.0', '7.6', 'Mild'),
(216, '23959.0', '0.005462962962962963', '-5.213', '151.701', '5.5', '39.9', '25.5', '6.0', '7.0', '8.1', 'Moderate'),
(217, '23965.0', '0.15344907407407407', '-15.449', '166.98', '5.2', '38.5', '25.6', '-7.0', '6.0', '8.5', 'Moderate'),
(218, '23965.0', '0.30471064814814813', '-15.67', '167.216', '3.8', '33.5', '25.3', '-3.0', '-2.0', '7.7', 'Mild'),
(219, '23965.0', '0.8281481481481482', '-15.685', '167.097', '4.9', '37.0', '25.46', '-6.0', '-6.0', '8.6', 'Moderate'),
(220, '23965.0', '0.8430324074074074', '-15.741', '167.26', '3.0', '33.0', '25.3', '4.0', '3.0', '7.5', 'Mild'),
(221, '23965.0', '0.9387847222222222', '-15.861', '167.092', '4.6', '38.4', '25.32', '7.0', '6.0', '8.2', 'Moderate'),
(222, '23966.0', '0.3345601851851852', '-15.817', '167.399', '4.9', '39.3', '25.28', '6.0', '-7.0', '8.9', 'Moderate'),
(223, '23966.0', '0.5397569444444444', '-5.36', '152.116', '4.8', '42.2', '25.18', '-6.0', '7.0', '8.7', 'Moderate'),
(224, '23966.0', '0.7534259259259259', '-15.931', '167.392', '3.9', '33.4', '25.1', '-2.0', '3.0', '7.4', 'Mild'),
(225, '23967.0', '0.19510416666666666', '-15.97', '167.439', '3.8', '33.3', '25.3', '3.0', '-5.0', '7.7', 'Mild'),
(226, '23967.0', '0.4756134259259259', '-15.995', '166.96', '4.1', '43.6', '25.45', '6.0', '6.0', '8.3', 'Moderate'),
(227, '23967.0', '0.5278935185185185', '-15.871', '166.96', '4.4', '35.2', '25.13', '-7.0', '-6.0', '8.8', 'Moderate'),
(228, '23967.0', '0.5281481481481481', '-16.198', '167.607', '4.2', '43.0', '25.51', '7.0', '-6.0', '8.4', 'Moderate'),
(229, '23967.0', '0.7475694444444444', '-16.801', '167.602', '4.3', '46.1', '25.29', '6.0', '-6.0', '8.1', 'Moderate'),
(230, '23967.0', '0.9150231481481481', '-6.38', '148.543', '3.0', '33.1', '25.1', '3.0', '-1.0', '7.4', 'Mild'),
(231, '23968.0', '0.4637384259259259', '-15.819', '166.794', '3.0', '33.8', '25.2', '-5.0', '-2.0', '7.1', 'Mild'),
(232, '23968.0', '0.5542361111111112', '-11.385', '166.332', '3.7', '33.7', '25.3', '-1.0', '-2.0', '7.9', 'Mild'),
(233, '23970.0', '0.5252546296296297', '-0.53', '-19.951', '4.2', '46.8', '25.4', '-6.0', '7.0', '8.5', 'Moderate'),
(234, '23971.0', '0.441087962962963', '4.872', '95.836', '4.1', '47.9', '25.5', '-6.0', '-6.0', '8.6', 'Moderate'),
(235, '23971.0', '0.6789930555555556', '-15.185', '166.67', '3.8', '33.4', '25.2', '-2.0', '5.0', '7.8', 'Mild'),
(236, '23972.0', '0.6191435185185186', '-15.945', '166.999', '4.2', '41.8', '25.3', '-6.0', '6.0', '8.2', 'Moderate'),
(237, '23974.0', '0.2464236111111111', '-5.714', '128.493', '4.7', '42.9', '25.4', '7.0', '-7.0', '8.9', 'Moderate'),
(238, '23974.0', '0.4047453703703704', '-18.954', '-68.82', '6.7', '63.9', '25.7', '-6.0', '-7.0', '9.4', 'Severe'),
(239, '23974.0', '0.8901851851851852', '-22.887', '-176.194', '6.1', '61.9', '25.8', '6.0', '-6.0', '8.7', 'Severe'),
(240, '23975.0', '0.6280092592592592', '-5.921', '103.993', '3.6', '33.1', '25.1', '-2.0', '3.0', '7.2', 'Mild'),
(241, '23977.0', '0.5895601851851852', '40.459', '26.206', '3.0', '33.3', '25.2', '5.0', '2.0', '7.6', 'Mild'),
(242, '23977.0', '0.8236574074074074', '16.081', '-95.867', '5.4', '55.9', '25.5', '-7.0', '6.0', '8.8', 'Moderate'),
(243, '23978.0', '0.04236111111111111', '15.837', '-96.235', '3.8', '33.6', '25.3', '3.0', '1.0', '7.2', 'Mild'),
(244, '23981.0', '0.7653125', '44.453', '149.06', '3.7', '33.2', '25.4', '2.0', '-1.0', '7.1', 'Mild'),
(245, '23984.0', '0.14731481481481482', '-16.931', '167.454', '3.8', '33.5', '25.1', '1.0', '-3.0', '7.7', 'Mild'),
(246, '23984.0', '0.7567592592592592', '-6.428', '104.667', '3.1', '33.8', '25.7', '-1.0', '-1.0', '7.6', 'Mild'),
(247, '23986.0', '0.1996875', '-34.596', '179.922', '3.2', '33.9', '25.2', '-3.0', '-3.0', '7.7', 'Mild'),
(248, '23987.0', '0.1851736111111111', '51.867', '175.451', '3.5', '33.5', '25.3', '-1.0', '-2.0', '7.5', 'Mild'),
(249, '23989.0', '0.4304513888888889', '46.515', '153.387', '3.9', '33.8', '25.2', '-3.0', '2.0', '7.4', 'Mild'),
(250, '23989.0', '0.6061458333333334', '58.09', '-152.525', '7.0', '66.9', '25.9', '-7.0', '6.0', '9.4', 'Severe'),
(251, '23993.0', '0.14331018518518518', '57.513', '-152.263', '3.7', '33.0', '25.3', '-2.0', '3.0', '7.7', 'Mild'),
(252, '23994.0', '0.41835648148148147', '6.47', '-84.408', '4.2', '44.2', '25.5', '-6.0', '-6.0', '8.2', 'Moderate'),
(253, '23996.0', '0.28681712962962963', '-5.349', '152.955', '5.2', '45.2', '25.4', '6.0', '6.0', '8.4', 'Moderate'),
(254, '23997.0', '0.3612268518518518', '-6.209', '151.651', '4.1', '46.3', '25.3', '6.0', '6.0', '8.1', 'Moderate'),
(255, '23997.0', '0.9184606481481481', '-6.416', '70.726', '4.3', '44.7', '25.4', '-6.0', '-7.0', '8.5', 'Moderate'),
(256, '23998.0', '0.5471180555555556', '55.338', '165.731', '3.9', '33.4', '25.2', '2.0', '-3.0', '7.4', 'Mild'),
(257, '23998.0', '0.6776041666666667', '-36.448', '-97.6', '5.1', '47.3', '25.3', '6.0', '-6.0', '8.6', 'Moderate'),
(258, '23999.0', '0.35229166666666667', '8.382', '126.895', '3.8', '33.7', '25.1', '3.0', '1.0', '7.1', 'Mild'),
(259, '24001.0', '0.5765277777777778', '7.156', '126.522', '3.0', '33.3', '25.2', '-3.0', '3.0', '7.5', 'Mild'),
(260, '24002.0', '0.46802083333333333', '-1.443', '-77.476', '4.5', '48.1', '25.5', '6.0', '6.0', '8.2', 'Moderate'),
(261, '24002.0', '0.5990509259259259', '36.269', '141.533', '3.8', '33.0', '25.2', '1.0', '-4.0', '7.9', 'Mild'),
(262, '24002.0', '0.6379166666666667', '36.245', '141.53', '3.9', '33.6', '25.2', '3.0', '-3.0', '7.8', 'Mild'),
(263, '24002.0', '0.6814814814814815', '36.27', '141.361', '4.8', '46.3', '25.4', '-7.0', '-6.0', '8.9', 'Moderate'),
(264, '24003.0', '0.9188888888888889', '8.188', '126.874', '3.0', '33.2', '25.3', '-4.0', '2.0', '7.4', 'Mild'),
(265, '24006.0', '0.06841435185185185', '28.952', '128.227', '4.7', '48.3', '25.11', '-6.0', '-6.0', '8.7', 'Moderate'),
(266, '24007.0', '0.18391203703703704', '20.682', '99.326', '3.9', '33.8', '25.3', '-3.0', '1.0', '7.2', 'Mild'),
(267, '24007.0', '0.8346064814814815', '-5.391', '151.631', '3.9', '33.4', '25.1', '2.0', '-1.0', '7.1', 'Mild'),
(268, '24007.0', '0.9222337962962963', '36.395', '141.46', '4.3', '47.3', '25.5', '6.0', '7.0', '8.3', 'Moderate'),
(269, '24009.0', '0.995636574074074', '13.092', '145.167', '3.6', '33.6', '25.2', '1.0', '-3.0', '7.7', 'Mild'),
(270, '24010.0', '0.6205324074074074', '39.626', '143.357', '3.7', '33.5', '25.31', '-1.0', '-1.0', '7.6', 'Mild'),
(271, '24011.0', '0.8985185185185185', '-54.757', '-38.244', '3.8', '33.2', '25.1', '-3.0', '4.0', '7.7', 'Mild'),
(272, '24012.0', '0.2147337962962963', '51.752', '175.5', '3.6', '33.1', '25.3', '-1.0', '-3.0', '7.5', 'Mild'),
(273, '24013.0', '0.21296296296296297', '-28.278', '-177.999', '4.5', '45.1', '25.4', '-6.0', '-6.0', '8.8', 'Moderate'),
(274, '24015.0', '0.9914583333333333', '59.28', '-144.06', '4.1', '39.2', '25.5', '-6.0', '6.0', '8.4', 'Moderate'),
(275, '24016.0', '0.36951388888888886', '49.937', '178.166', '6.8', '59.4', '25.76', '7.0', '-6.0', '9.5', 'Severe'),
(276, '24016.0', '0.5572800925925926', '-19.921', '174.48', '6.2', '52.3', '25.65', '-6.0', '6.0', '8.5', 'Severe'),
(277, '24016.0', '0.9405439814814814', '-60.468', '-24.551', '3.0', '33.5', '25.4', '4.0', '-2.0', '7.4', 'Mild'),
(278, '24018.0', '0.6149421296296296', '49.426', '156.417', '3.9', '33.0', '25.1', '-3.0', '2.0', '7.7', 'Mild'),
(279, '24018.0', '0.6770486111111111', '-42.969', '-75.225', '3.9', '33.4', '25.2', '-2.0', '3.0', '7.4', 'Mild'),
(280, '24022.0', '0.15002314814814816', '12.347', '114.485', '3.1', '33.3', '25.3', '2.0', '1.0', '7.1', 'Mild'),
(281, '24025.0', '0.7261689814814815', '-59.225', '-25.091', '3.8', '33.1', '25.2', '3.0', '3.0', '7.9', 'Mild'),
(282, '24027.0', '0.570150462962963', '56.19', '-153.615', '3.6', '33.8', '25.3', '1.0', '-3.0', '7.8', 'Mild'),
(283, '24031.0', '0.3492476851851852', '3.113', '128.558', '3.7', '33.4', '25.4', '3.0', '2.0', '7.2', 'Mild'),
(284, '24032.0', '0.07887731481481482', '-7.981', '156.287', '3.6', '33.7', '25.1', '-3.0', '1.0', '7.6', 'Mild'),
(285, '24033.0', '0.9098032407407407', '-1.28', '127.725', '4.3', '45.3', '25.5', '6.0', '6.0', '8.6', 'Moderate'),
(286, '24034.0', '0.8672337962962963', '52.366', '174.254', '5.1', '43.5', '25.6', '-6.0', '-6.0', '8.2', 'Moderate'),
(287, '24038.0', '0.250625', '53.901', '-165.403', '3.6', '33.3', '25.2', '2.0', '-1.0', '7.2', 'Mild'),
(288, '24039.0', '0.6056828703703704', '4.203', '125.787', '3.9', '33.0', '25.3', '1.0', '-3.0', '7.1', 'Mild'),
(289, '24039.0', '0.7605324074074075', '49.646', '156.116', '3.6', '33.6', '25.4', '-1.0', '-1.0', '7.7', 'Mild'),
(290, '24040.0', '0.9405555555555556', '44.12', '145.389', '3.7', '38.5', '25.5', '6.0', '6.0', '8.9', 'Moderate'),
(291, '24043.0', '0.3739236111111111', '-1.257', '127.735', '3.7', '33.2', '25.1', '-3.0', '3.0', '7.6', 'Mild'),
(292, '24049.0', '0.0687962962962963', '-9.031', '-71.139', '4.7', '39.4', '25.4', '6.0', '-6.0', '8.7', 'Moderate'),
(293, '24049.0', '0.7646759259259259', '-22.457', '-113.788', '4.3', '41.2', '25.5', '-6.0', '6.0', '8.3', 'Moderate'),
(294, '24051.0', '0.7924074074074074', '-3.144', '143.789', '3.9', '33.8', '25.2', '-1.0', '1.0', '7.7', 'Mild'),
(295, '24052.0', '0.39012731481481483', '-22.126', '-113.928', '4.2', '45.2', '25.4', '6.0', '6.0', '8.8', 'Moderate'),
(296, '24058.0', '0.7447222222222222', '30.628', '140.23', '6.4', '56.3', '25.7', '-6.0', '-6.0', '9.3', 'Severe'),
(297, '24059.0', '0.19018518518518518', '43.745', '87.843', '4.5', '43.2', '25.3', '6.0', '-6.0', '8.2', 'Moderate'),
(298, '24059.0', '0.7498032407407408', '-29.414', '-68.166', '3.7', '33.4', '25.2', '3.0', '3.0', '7.5', 'Mild');