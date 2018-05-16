-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2018 at 11:44 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `logo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `logo`) VALUES
(2, 'Acer', 'iconAcer.png'),
(3, 'Apple', 'iconApple.png'),
(4, 'Asus', 'iconAsus.png'),
(5, 'Dell', 'iconDell.png'),
(6, 'HP', 'iconHP.png'),
(7, 'IBM', 'iconIBM.png'),
(8, 'Lenovo', 'iconLenovo.png'),
(9, 'LG', 'iconLG.png'),
(10, 'MSI', 'iconMSI.png'),
(11, 'SAMSUNG', 'iconSamsung.png');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Category 1'),
(2, 'Category 2'),
(3, 'Category 3'),
(4, 'Category 4'),
(5, 'Category 5'),
(6, 'Category 6'),
(7, 'Category 7'),
(8, 'Category 8'),
(9, 'Category 9'),
(10, 'Category 10'),
(11, 'Category 11'),
(12, 'Caaaaateg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `chip` varchar(100) DEFAULT NULL,
  `cpuSpeed` varchar(100) DEFAULT NULL,
  `hardDrive` varchar(100) DEFAULT NULL,
  `ram` varchar(100) DEFAULT NULL,
  `graphics` varchar(100) DEFAULT NULL,
  `resolution` varchar(100) DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `wifi` varchar(100) DEFAULT NULL,
  `operatingSystem` varchar(100) DEFAULT NULL,
  `pin` varchar(100) DEFAULT NULL,
  `fingerprintSensor` tinyint(1) DEFAULT NULL,
  `keyboardLight` tinyint(1) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `warrantyPeriod` varchar(100) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `supplierId` int(11) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  KEY `supplierId` (`supplierId`),
  KEY `brandId` (`brandId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `code`, `name`, `price`, `photo`, `description`, `chip`, `cpuSpeed`, `hardDrive`, `ram`, `graphics`, `resolution`, `lan`, `wifi`, `operatingSystem`, `pin`, `fingerprintSensor`, `keyboardLight`, `weight`, `warrantyPeriod`, `categoryId`, `supplierId`, `brandId`) VALUES
(4, 'MQD32', 'MacBook Air', '19788000', 'macbookAirMQD32.png', NULL, 'Intel Core i5 dual-core', '1.8 - 2.9', '128GB SSD', '8GB 1600MHz', 'Intel HD Graphics 6000', '1440 x 960', '802.11ac Wi-Fi wireless networking', 'IEEE 802.11a/b/g/n compatible', 'Mac Os X', 'Lithium-polymer', NULL, NULL, '1.35', NULL, NULL, NULL, 3),
(6, 'A315-51-53ZL ', 'Acer', '10300000', 'AcerA315-51-53ZL.png', NULL, 'Intel Core i5-7200U', '2.5 - 3.10', '1TB SATA - 5400rpm', '4GB DDR4 2400MHz', 'Intel HD Graphics', '1366 x 768 Pixels', '10/100/1000 Mbps', 'IEEE 802.11 a/b/g/h', 'Linux', 'li-ion', 0, 0, '1.8 Kg', NULL, NULL, NULL, 2),
(7, 'S510UQ-BQ475T', 'Asus', '15260000', 'AsusS510UQ-BQ475T.jpg', NULL, 'Intel Core i5-8250U', '1.6GHz Up to 3.4GHz', '1TB 5400rpm, x1 slot SSD (M.2/ SATA)', '4GB DDR4 - 2400MHz', 'NVIDIA GeForce GT940MX 2GB GDDR5 + Intel UHD Graphics 620', '1920 x 1080 pixels', 'None', 'IEEE 802.11ac', 'Window 10 Home 64 SL', 'Li?n', 0, 0, '1.6 kg', NULL, NULL, NULL, 4),
(8, 'Vostro 5568 077M52', 'Dell', '16080000', 'DellVostro-5568-077M52.jpg', NULL, 'Intel Core i5-7200U', '2.5GHz - up to 3.1Ghz', '1TB SATA 5400rpm', '4GB DDR4 2400MHz', 'NVIDIA GeForce 940MX 2GB GDDR5 + Intel HD Graphics 620', '1366 x 768 pixels', '10/100/1000 Mbps', 'Wi-Fi 802.11 a/b/g/n/ac', 'Windows 10', 'Li-Ion 3 cell', NULL, NULL, '1.98kg', NULL, NULL, NULL, 5),
(9, 'FX503VD-E4119T', 'Asus', '22999000', 'AsusFX503VD-E4119T.png', NULL, 'Intel Core i7 7700HQ', '2.8GHz Up to 3.8GHz', 'SSHD 1TB 5400rpm + 8GB NAND', 'RAM 8GB DDR4 - 2400MHz', 'VGA NVIDIA GeForce GTX 1050 4GB GDDR5 + Intel HD Graphics 630', '1920 x 1080 pixels', '10/100/1000 Mbps', 'IEEE 802.11ac', 'Window 10 Home 64 SL', 'Li?n', NULL, NULL, '2.57 kg', NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_EMPLOYEE');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `linkHomePage` varchar(250) DEFAULT NULL,
  `linkSearch` varchar(250) DEFAULT NULL,
  `classListProduct` varchar(250) DEFAULT NULL,
  `className` varchar(250) DEFAULT NULL,
  `classPrice` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `logo`, `linkHomePage`, `linkSearch`, `classListProduct`, `className`, `classPrice`) VALUES
(1, 'FPT Shop', 'fpt-shop.png', 'fptshop.com.vn', 'https://fptshop.com.vn/tim-kiem/', 'div.fs-lprods', 'h3.fs-icname', 'p.fs-icpri'),
(3, 'Phong Vu', 'phong_vu.jpg', 'phongvu.vn', 'https://phongvu.vn/catalogsearch/result/?q=', 'div.grid-view-content', 'a.grid-view-product-name', 'div.grid-view-final-price'),
(4, 'Tiki', 'Tiki.png', 'tiki.vn', 'https://tiki.vn/search?q=', 'div.product-box-list', 'span.title', 'span.final-price'),
(5, 'The gioi di dong', 'the_gioi_di_dong.png', 'www.thegioididong.com', 'https://www.thegioididong.com/tim-kiem?key=', 'ul.listsearch', 'h3', 'strong');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `enabled` int(1) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `enabled`, `firstName`, `lastName`, `photo`, `phone`, `birthday`, `address`, `email`, `gender`) VALUES
(1, 'admin', '$2a$10$LJxSNKNHaADkJQS4LQsYXeafeP4t5Jaiz49EEGgb5zyZGIb4nFmzW', 1, 'Phuoc', 'Loc', '', '1231111111', '1997-10-17', 'HCM City', 'loc@gmail.com', 'male'),
(2, 'employee', '$2a$10$LJxSNKNHaADkJQS4LQsYXeafeP4t5Jaiz49EEGgb5zyZGIb4nFmzW', 1, 'Hoang', 'Tien', '', '1231111111', '1995-10-17', 'HCM City', 'tien@gmail.com', 'female'),
(3, 'tientest1', '$2a$12$VdnbSXe9xAjjjejQpwwN.OYYmBm7yGteSLjhsGYVQejWkYqv4pVau', 1, 'ngyen', 'tien', NULL, '0905826748', '1999-01-19', 'naha tang', 'akasakatien2@gmail.com', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`userid`,`roleid`),
  KEY `roleid` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`userid`, `roleid`, `enable`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`supplierId`) REFERENCES `supplier` (`id`),
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`brandId`) REFERENCES `brand` (`id`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`roleid`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
