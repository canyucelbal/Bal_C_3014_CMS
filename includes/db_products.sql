-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 26, 2021 at 02:32 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_products`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gender`
--

DROP TABLE IF EXISTS `tbl_gender`;
CREATE TABLE IF NOT EXISTS `tbl_gender` (
  `gender_id` int(5) NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(30) NOT NULL,
  PRIMARY KEY (`gender_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gender`
--

INSERT INTO `tbl_gender` (`gender_id`, `gender_name`) VALUES
(1, 'Man'),
(2, 'women'),
(3, 'kids');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE IF NOT EXISTS `tbl_products` (
  `product_id` int(5) NOT NULL AUTO_INCREMENT,
  `product_img` varchar(50) NOT NULL,
  `product_name` varchar(75) NOT NULL,
  `product_description` varchar(1000) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `product_color` varchar(150) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_img`, `product_name`, `product_description`, `product_price`, `product_color`) VALUES
(1, 'hat1.png', 'Under Armour Women\'s Play Up Cap', 'Super-soft, smooth knit fabric for all day comfort\r\nUA Siro sweatband gives greater stretch & recovery, an ultra-soft feel & more breathable performance\r\nAdjustable webbing closure with wordmark detail\r\nEmbroidered logo\r\nImported', '30', 'BLACK'),
(2, 'hat2.png', 'Nike Women\'s Run Dri-FIT Featherlight Cap', 'Nike aerobill technology integrates proprietary lightweight construction with breathable, sweat-wicking fabric for enhanced comfort and reduced distraction\r\nDri-FIT technology helps you stay dry and comfortable\r\nPerforations around the cap help increase cooling\r\nA knit sweatband helps contain sweat and moisture\r\nAdjustable back strap lets you customize your fit', '30', 'BLACK'),
(3, 'hat3.png', 'Under Armour Women\'s Multi Hair Cap', 'Ultra-light stretch woven fabric is durable & breathable\r\nIso-Chill sweatband helps disperse body heat, making it feel cool to the touch\r\nOversized open back panel so you can still wear your hair up in a ponytail or bun\r\nElastic back closure with buckle adjust for a secure fit\r\nReflective logos', '35', 'BLACK'),
(4, 'hat4.png', 'Under Armour Women\'s Run Launch Cap', 'Ultra-light stretch woven fabric is durable & breathable\r\nIso-Chill sweatband helps disperse body heat, making it feel cool to the touch\r\nLaser perforations for added ventilation where you need it\r\nLow-profile, adjustable hook & loop closure to avoid hair snagging\r\nReflective logos\r\nFit & Care: UA Free Fit: Pre-curved visor & unstructured front conforms to your head for a sleek, low profile fit', '32', 'BLACK'),
(5, 'hat5.png', 'Columbia Women\'s Global Adventure II Straw Hat', 'Omni-Shade™ UPF 50 sun protection\r\nAdjustable chin strap', '40', 'NEUTRAL'),
(6, 'mantry.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pro_gender`
--

DROP TABLE IF EXISTS `tbl_pro_gender`;
CREATE TABLE IF NOT EXISTS `tbl_pro_gender` (
  `pro_gender_id` int(5) NOT NULL AUTO_INCREMENT,
  `product_id` int(5) NOT NULL,
  `gender_id` int(5) NOT NULL,
  PRIMARY KEY (`pro_gender_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pro_gender`
--

INSERT INTO `tbl_pro_gender` (`pro_gender_id`, `product_id`, `gender_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pro_sort`
--

DROP TABLE IF EXISTS `tbl_pro_sort`;
CREATE TABLE IF NOT EXISTS `tbl_pro_sort` (
  `pro_sort_id` int(5) NOT NULL AUTO_INCREMENT,
  `product_id` int(5) NOT NULL,
  `sort_id` int(5) NOT NULL,
  PRIMARY KEY (`pro_sort_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pro_sort`
--

INSERT INTO `tbl_pro_sort` (`pro_sort_id`, `product_id`, `sort_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sort`
--

DROP TABLE IF EXISTS `tbl_sort`;
CREATE TABLE IF NOT EXISTS `tbl_sort` (
  `sort_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_name` varchar(30) NOT NULL,
  PRIMARY KEY (`sort_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sort`
--

INSERT INTO `tbl_sort` (`sort_id`, `sort_name`) VALUES
(1, 'hats'),
(2, 'pants'),
(3, 'socks');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
