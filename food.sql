-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2015 at 01:55 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbblog`
--

CREATE TABLE IF NOT EXISTS `tbblog` (
  `id` int(11) NOT NULL,
  `bname` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `blogimage` varchar(45) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbblog`
--

INSERT INTO `tbblog` (`id`, `bname`, `description`, `blogimage`, `status`) VALUES
(1, 'breakfast', 'have light and healthy', 'vegetable-sandwich.jpg', 1),
(2, 'lunch', 'have green vegetables in lunch', 'north-indian-non-veg-meal.jpg', 1),
(1, 'breakfast', 'have light and healthy', 'vegetable-sandwich.jpg', 1),
(2, 'lunch', 'have green vegetables in lunch', 'north-indian-non-veg-meal.jpg', 1),
(3, 'dinner', 'have light dinner', 'idli', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbbloganswer`
--

CREATE TABLE IF NOT EXISTS `tbbloganswer` (
  `answer` varchar(50) NOT NULL,
  `quid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbbloganswer`
--

INSERT INTO `tbbloganswer` (`answer`, `quid`, `username`) VALUES
('what if when we eat only juice in breakfast?', 1, 'userdeepika'),
('YOu have to take care of healthy meals', 2, 'userdeepika');

-- --------------------------------------------------------

--
-- Table structure for table `tbblogquestion`
--

CREATE TABLE IF NOT EXISTS `tbblogquestion` (
  `question` varchar(45) NOT NULL,
  `blogid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbblogquestion`
--

INSERT INTO `tbblogquestion` (`question`, `blogid`, `username`) VALUES
('what should be dite for whole day to be fit a', 1, 'username');

-- --------------------------------------------------------

--
-- Table structure for table `tbcategory`
--

CREATE TABLE IF NOT EXISTS `tbcategory` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbcategory`
--

INSERT INTO `tbcategory` (`cid`, `cname`, `rank`, `description`, `status`) VALUES
(1, 'North Indian', 0, '', 0),
(2, 'South Indian', 0, '', 0),
(3, 'Continental', 0, '', 0),
(4, 'Chinese', 0, '', 0),
(5, 'Bakery and Chocolates', 0, '', 0),
(6, 'Sweets and Snacks', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbitems`
--

CREATE TABLE IF NOT EXISTS `tbitems` (
  `cid` int(11) NOT NULL,
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `iname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sellername` varchar(255) NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=609 ;

--
-- Dumping data for table `tbitems`
--

INSERT INTO `tbitems` (`cid`, `iid`, `iname`, `description`, `image`, `price`, `quantity`, `type`, `rank`, `status`, `sellername`) VALUES
(1, 101, 'Onion Paratha', 'made with pure ghee', 'onion-paratha.jpg', 22, 2, 'Vegetarian', 1, 1, 'userdeepika'),
(1, 102, 'Ajwain Paratha', 'made with pure ghee', 'ajwain-paratha.jpg', 20, 2, 'Vegetarian', 2, NULL, ''),
(1, 103, 'Palak Paratha', 'made with pure ghee', 'palak-paratha.jpg', 25, 2, 'Vegetarian', 3, NULL, ''),
(1, 104, 'Paneer Butter Masala', 'pure ghee and soft paneer', 'paneer-butter-masala.jpg', 80, 1, 'Vegetarian', 4, NULL, ''),
(1, 105, 'North Indian Veg Meal', 'vegetarian special meal', 'north-indian-veg-meal.jpg', 40, 1, 'Vegetarian', 5, 1, 'userdeepika'),
(1, 106, 'North Indian Non-Veg Meal', 'non-vegetarian special meal', 'north-indian-non-veg-meal.jpg', 50, 1, 'Non Vegetarian', 6, NULL, 'userdeepika'),
(1, 107, 'Chola Bhatura', 'special chola and bhatura', 'chola-bhatura.jpg', 50, 1, 'Vegetarian', 7, NULL, ''),
(1, 108, 'Chicken Dum Biryani', 'yummy delicious chicken biryani', 'chicken-dum-biryani.jpg', 80, 1, 'Non Vegetarian', 8, NULL, ''),
(1, 109, 'Palak Paneer', 'delicious palak paneer', 'palak-paneer.jpg', 150, 1, 'Vegetarian', 9, NULL, ''),
(1, 110, 'Kadhai Paneer', 'delicious kadhai paneer', 'kadhai-paneer.jpg', 150, 1, 'Vegetarian', 10, NULL, ''),
(1, 111, 'Aloo Matar', 'delicious aloo matar', 'aloo-matar.jpg', 150, 1, 'Vegetarian', 11, NULL, ''),
(1, 112, 'Bhindi masala', 'special bhindi masal', 'bhindi-masala.jpg', 100, 1, 'Vegetarian', 12, 1, 'userdeepika'),
(1, 113, 'Chapati(wheat)', 'soft light chapati', 'chapati.jpg', 8, 1, 'Vegetarian', 13, NULL, ''),
(1, 114, 'Kulcha', 'special kulcha', 'kulcha.jpg', 12, 1, 'Vegetarian', 14, NULL, ''),
(1, 115, 'Mooli Paratha', 'homemade muli ka parantha', 'mooli-paratha.jpg', 12, 1, 'Vegetarian', 15, NULL, ''),
(1, 116, 'Dal Tadka', 'special homemade daal', 'dal-tadka.jpg', 80, 1, 'Vegetarian', 16, NULL, ''),
(1, 117, 'Dal Makhani', 'special daal makhni', 'dal-makhani.jpg', 80, 1, 'Vegetarian', 17, NULL, ''),
(1, 118, 'Kadhai Chicken', 'sepcial kadhai chicken', 'kadhai-chicken.jpg', 200, 1, 'Non Vegetarian', 18, NULL, ''),
(1, 119, 'Pav Bhaji', 'special pao bhaji', 'pav-bhaji.jpg', 45, 1, 'Vegetarian', 19, NULL, ''),
(1, 120, 'Dal Fry and Zeera Rice', 'special dal fry and zeera rice', 'dal-fry-zeera-rice.jpg', 80, 1, 'Vegetarian', 20, NULL, ''),
(1, 121, 'Rajma Rice', 'home made rajma rice', 'rajma-rice.jpg', 80, 1, 'Vegetarian', 21, NULL, ''),
(1, 122, 'Popcorn Chicken', 'special popcorn chicken', 'popcorn-chicken.jpg', 80, 1, 'Non Vegetarian', 22, NULL, ''),
(1, 123, 'Fried Chicken', 'special fried chicken', 'fried-chicken.jpg', 160, 1, 'Non Vegetarian', 23, NULL, ''),
(1, 124, 'Sarson Saag with Makki di Roti', 'home made sarso saag with makee di rot', 'sarson-ka-saag.jpg', 80, 1, 'Vegetarian', 24, NULL, ''),
(2, 201, 'Bisi Bele Bhath', 'specially south made bisi bele bath', 'bisi-bele-bhath.jpg', 50, 1, 'Vegetarian', 25, NULL, ''),
(2, 202, 'Curd Rice', 'curd rice', 'curd-rice.jpg', 50, 1, 'Vegetarian', 26, NULL, ''),
(2, 203, 'Appam', 'apam', 'appam.jpg', 15, 1, 'Vegetarian', 27, NULL, ''),
(2, 204, 'Dosa', 'dosa with sambhar and chutney', 'dosa.jpg', 40, 1, 'Vegetarian', 28, NULL, ''),
(2, 205, 'Idli', 'idli with sambhar and chutney', 'idli.jpg', 20, 1, 'Vegetarian', 29, NULL, ''),
(2, 206, 'South Indian Thali', 'Special south indian veg thali', 'south-indian-thali.jpg', 60, 1, 'Vegetarian', 30, NULL, ''),
(2, 207, 'Fish Curry', 'special fish curry', 'fish-curry.jpg', 70, 1, 'Non Vegetarian', 31, NULL, ''),
(2, 208, 'Lemon Rice', 'special lemon rice', 'lemon-rice.jpg', 30, 1, 'Vegetarian', 32, NULL, ''),
(2, 209, 'Tamarind Rice', 'Tamarind rice', 'tamarind-rice.jpg', 35, 1, 'Vegetarian', 33, NULL, ''),
(2, 210, 'Pongal Rice', 'Pongal Rice', 'pongal.jpg', 20, 1, 'Vegetarian', 34, NULL, ''),
(2, 211, 'Vada', 'vada with sambhar and chutney', 'vada.jpg', 20, 2, 'Vegetarian', 35, NULL, ''),
(2, 212, 'Tomato Rice', 'tomato rice', 'tomato-rice.jpg', 40, 1, 'Vegetarian', 36, NULL, ''),
(2, 213, 'Upma', 'special home made upma', 'upma.jpg', 25, 1, 'Vegetarian', 37, NULL, ''),
(3, 301, 'Peri Peri Grilled Prawns', 'home made grilled peri peri', 'peri-peri-grilled-prawns.jpg', 150, 1, 'Non Vegetarian', 38, NULL, ''),
(3, 302, 'Classic Chicken Panini', 'home made chicken panini', 'classic-chicken-panini.jpg', 200, 1, 'Non Vegetarian', 39, NULL, ''),
(3, 303, 'Chicken Pie', 'home made chicken pie', 'chicken-pie.jpg', 120, 1, 'Non Vegetarian', 40, NULL, ''),
(4, 401, 'Chicken Noodles', 'special chicken noodles', 'chicken-noodles.jpg', 150, 1, 'Non Vegetarian', 41, NULL, ''),
(4, 402, 'Gobi Manchurian and Fried Rice', 'noodles and manchurian', 'gobi-manchurian-fried-rice.jpg', 80, 1, 'Vegetarian', 42, NULL, ''),
(4, 403, 'Chinese Noodles', 'special veg chinese noodles', 'chinese-noodles.jpg', 80, 1, 'Vegetarian', 43, NULL, ''),
(5, 501, 'Homemade Chocolate', 'sweet and delicious home made chocolate', 'homemade-chocolate.jpg', 150, 1, 'Vegetarian', 46, NULL, ''),
(5, 502, 'Choco Chip Muffin', 'delicious chocochip muffins', 'choco-chip-muffins.jpg', 15, 1, 'Non Vegetarian', 47, NULL, ''),
(5, 503, 'Cup Cake', 'eggless cup cakes', 'cup-cakes.jpg', 40, 1, 'Vegetarian', 48, NULL, ''),
(5, 504, 'Cheese Cake', 'eggless delicious cheese cake', 'cheese-cake.jpg', 680, 1, 'Vegetarian', 49, NULL, ''),
(5, 505, 'Carrot Cake', 'eggless delicious carrot cake', 'carrot-cake.jpg', 250, 1, 'Vegetarian', 50, NULL, ''),
(5, 506, 'Coconut Cake', 'eggless delicious coconut cake', 'coconut-cake.jpg', 300, 1, 'Vegetarian', 51, NULL, ''),
(5, 507, 'Orange Cake', 'eggless delicious orange cake', 'orange-cake.jpg', 350, 1, 'Vegetarian', 52, NULL, ''),
(6, 601, 'Vegetable Chutney Sandwich', 'delicious vegetable grilled sandwich', 'vegetable-sandwich.jpg', 125, 1, 'Vegetarian', 53, NULL, ''),
(6, 602, 'Kai Murukku', 'delicious crisp kai murmure', 'kai-murukku.jpg', 300, 1, 'Vegetarian', 54, NULL, ''),
(6, 603, 'Thepla', 'delicious thepla', 'thepla.jpg', 70, 1, 'Vegetarian', 55, NULL, ''),
(6, 604, 'Gulab Jamun', 'delicious gulab jamun', 'gulab-jamun.JPG', 5, 1, 'Vegetarian', 56, NULL, ''),
(6, 605, 'Besan Laddoo', 'sweet and fresh besan ke laddoo', 'besan-laddoo.jpeg', 7, 1, 'Vegetarian', 57, NULL, ''),
(6, 606, 'Til Laddoo', 'sweet and fresh til ke laddoo', 'til-laddoo.jpg', 10, 1, 'Vegetarian', 58, NULL, ''),
(6, 607, 'Samosa', 'yummy delicious samosa', 'samosa.jpg', 40, 4, 'Vegetarian', 59, NULL, ''),
(6, 608, 'Bread roll', 'yummy hot and delicious bread roll', 'bread-roll.jpg', 80, 4, 'Vegetarian', 60, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tborder`
--

CREATE TABLE IF NOT EXISTS `tborder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(100) NOT NULL,
  `iid` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) NOT NULL,
  `WID` varchar(11) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tborder`
--

INSERT INTO `tborder` (`id`, `orderid`, `iid`, `quantity`, `WID`, `price`) VALUES
(1, 'orderid', '${cartItem.id}', '${cartItem.quantity}', '0', 0),
(2, 'c03596cb35f66169f12ce00de649', '103', '1', '0', 0),
(3, 'c0d47faf6804e4b06b01172af5cd', '102', '1', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tborderdetails`
--

CREATE TABLE IF NOT EXISTS `tborderdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `sfname` varchar(100) NOT NULL,
  `slname` varchar(100) NOT NULL,
  `sphone` varchar(100) NOT NULL,
  `slocality` varchar(100) DEFAULT NULL,
  `saltphone` varchar(100) DEFAULT NULL,
  `saddress` varchar(200) NOT NULL,
  `scity` varchar(100) NOT NULL,
  `sregion` varchar(100) NOT NULL,
  `spincode` varchar(150) NOT NULL,
  `subtotal` double NOT NULL,
  `shippingcharges` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `crDate` varchar(50) NOT NULL,
  `WID` varchar(11) NOT NULL,
  `paymentstatus` tinyint(1) NOT NULL,
  `deliverystatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tborderdetails`
--

INSERT INTO `tborderdetails` (`id`, `orderid`, `username`, `sfname`, `slname`, `sphone`, `slocality`, `saltphone`, `saddress`, `scity`, `sregion`, `spincode`, `subtotal`, `shippingcharges`, `tax`, `total`, `crDate`, `WID`, `paymentstatus`, `deliverystatus`) VALUES
(1, 'oredrid', 'uname', 'deepika', 'manchanda', '878955622', 'manimajra', '254169777', '1234', 'chd', 'samdhigate', '160101', 0, 0, 0, 0, '', '0', 0, 0),
(2, '111', 'userdeepika', 'deepika', 'manchanda', '9874561123', 'chd', '12354789', '123', 'chd', 'chd', '160101', 500, 50, 20, 570, '', '0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbregister`
--

CREATE TABLE IF NOT EXISTS `tbregister` (
  `custid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbregister`
--

INSERT INTO `tbregister` (`custid`, `name`, `username`, `email`, `password`, `city`) VALUES
(5, 'admin', 'admindeepika', 'deepika.lifes@gmail.com', 'manchanda', 'chandigarh'),
(4, 'deepikamanchanda', 'userdeepika', 'deepika.lifes@yahoo.com', 'user12', 'pkl'),
(0, 'nupur', '', 'gnupur92@gmail.com', '', 'Chandigarh'),
(0, 'nupur', 'nupur92', 'gnupur93@mail.com', 'Kanha@92', 'chandigarh');

-- --------------------------------------------------------

--
-- Table structure for table `tbseller`
--

CREATE TABLE IF NOT EXISTS `tbseller` (
  `sellerid` int(11) NOT NULL AUTO_INCREMENT,
  `sellername` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `zip` int(11) NOT NULL,
  `contact` int(15) NOT NULL,
  `image` varchar(255) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`sellerid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbseller`
--

INSERT INTO `tbseller` (`sellerid`, `sellername`, `address`, `state`, `area`, `zip`, `contact`, `image`, `cname`, `status`, `username`) VALUES
(1, 'deepika', '1845,manimajra', 'chandigarh', 'chandigarh', 160101, 987863452, '0001.jpg', 'North Indian', 0, 'userdeepika'),
(3, '', '1810', 'Punjab', 'Mohali', 16545, 98785262, '0001.jpg', 'Bakery and Chocolates', 1, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
