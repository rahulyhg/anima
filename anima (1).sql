-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2015 at 12:04 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `anima`
--
CREATE DATABASE IF NOT EXISTS `anima` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `anima`;

-- --------------------------------------------------------

--
-- Table structure for table `accesslevel`
--

CREATE TABLE IF NOT EXISTS `accesslevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `accesslevel`
--

INSERT INTO `accesslevel` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'Operator'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `anima_albumimage`
--

CREATE TABLE IF NOT EXISTS `anima_albumimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `json` text NOT NULL,
  `photographeralbum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `anima_albumimage`
--

INSERT INTO `anima_albumimage` (`id`, `name`, `image`, `type`, `order`, `json`, `photographeralbum`) VALUES
(1, 'tttt', 'Nature_at_its_Best!!!7.png', '0', 1, '222222', 1),
(2, 'asxas', 'Nature_at_its_Best!!!8.png', '1', 1, 'asxa', 0),
(4, 'avinash', 'Nature_at_its_Best!!!11.png', '1', 2, 'ajsbxhajs', 1),
(5, 'asxas', 'Nature_at_its_Best!!!12.png', '1', 3, 'asjxbajs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `anima_article`
--

CREATE TABLE IF NOT EXISTS `anima_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `json` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `anima_article`
--

INSERT INTO `anima_article` (`id`, `title`, `json`, `content`) VALUES
(1, 'Demo', 'acac', 'dacasc');

-- --------------------------------------------------------

--
-- Table structure for table `anima_category`
--

CREATE TABLE IF NOT EXISTS `anima_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `anima_category`
--

INSERT INTO `anima_category` (`id`, `name`, `status`, `order`) VALUES
(2, 'l l', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `anima_instagram`
--

CREATE TABLE IF NOT EXISTS `anima_instagram` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `anima_instagram`
--

INSERT INTO `anima_instagram` (`id`, `image`, `url`, `status`, `user`, `likes`) VALUES
(1, 'Nature_at_its_Best!!!.png', 'http://storage.googleapis.com/lylalovescsv/product.csv', 1, 1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `anima_model`
--

CREATE TABLE IF NOT EXISTS `anima_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `json` text NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `anima_model`
--

INSERT INTO `anima_model` (`id`, `name`, `json`, `image`) VALUES
(1, 'Alicia Surname', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"176cm/5''8.5"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"82cm/32\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"64cm/24\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"89cm/35\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"39"}]', 'Nature_at_its_Best!!!4.png'),
(2, 'model1', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"176cm/5''8.5"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"82cm/32\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"64cm/24\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"89cm/35\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"39"}]', 'Nature_at_its_Best!!!4.png'),
(3, 'model1', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"176cm/5''8.5"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"82cm/32\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"64cm/24\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"89cm/35\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"39"}]', 'Nature_at_its_Best!!!4.png'),
(4, 'model1', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"176cm/5''8.5"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"82cm/32\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"64cm/24\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"89cm/35\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"39"}]', 'Nature_at_its_Best!!!4.png'),
(25, 'Alicia Surname2', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"176cm/5''8.5"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"82cm/32\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"64cm/24\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"89cm/35\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"39"}]', 'Nature_at_its_Best!!!4.png');

-- --------------------------------------------------------

--
-- Table structure for table `anima_modelimage`
--

CREATE TABLE IF NOT EXISTS `anima_modelimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `json` text NOT NULL,
  `model` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `anima_modelimage`
--

INSERT INTO `anima_modelimage` (`id`, `name`, `image`, `type`, `order`, `json`, `model`) VALUES
(2, 'deee', 'Nature_at_its_Best!!!6.png', '1', 2, 'saxas', 1),
(3, 'hbahs', 'Nature_at_its_Best!!!6.png', '1', 1, 'saxas', 1),
(4, 'demo', 'Nature_at_its_Best!!!13.png', '1', 3, 'asxas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `anima_modelvideo`
--

CREATE TABLE IF NOT EXISTS `anima_modelvideo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `anima_modelvideo`
--

INSERT INTO `anima_modelvideo` (`id`, `model`, `video`, `order`) VALUES
(1, 1, 'demo', 22),
(2, 1, 'demo2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `anima_news`
--

CREATE TABLE IF NOT EXISTS `anima_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `json` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `anima_news`
--

INSERT INTO `anima_news` (`id`, `title`, `json`, `image`, `content`) VALUES
(1, 'Demo', 'jhbjhb', 'Nature_at_its_Best!!!2.png', 'jhbjhbjh');

-- --------------------------------------------------------

--
-- Table structure for table `anima_photographer`
--

CREATE TABLE IF NOT EXISTS `anima_photographer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `anima_photographer`
--

INSERT INTO `anima_photographer` (`id`, `name`, `city`, `order`, `content`, `image`) VALUES
(1, 'demo', 'demo', 1, 'demokk', '32.jpg'),
(2, '2', '2', 2, '2', '32.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `anima_photographeralbum`
--

CREATE TABLE IF NOT EXISTS `anima_photographeralbum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `tab` varchar(255) NOT NULL,
  `photographer` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `anima_photographeralbum`
--

INSERT INTO `anima_photographeralbum` (`id`, `name`, `order`, `image`, `tab`, `photographer`) VALUES
(1, 'demo', 1, 'Nature_at_its_Best!!!5.png', 'demoqq', 1);

-- --------------------------------------------------------

--
-- Table structure for table `anima_photographervideo`
--

CREATE TABLE IF NOT EXISTS `anima_photographervideo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photographer` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `photographeralbum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `anima_photographervideo`
--

INSERT INTO `anima_photographervideo` (`id`, `photographer`, `video`, `order`, `photographeralbum`) VALUES
(2, 0, 'kjndkj', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `logintype`
--

CREATE TABLE IF NOT EXISTS `logintype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `logintype`
--

INSERT INTO `logintype` (`id`, `name`) VALUES
(1, 'Facebook'),
(2, 'Twitter'),
(3, 'Email'),
(4, 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `linktype` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `keyword`, `url`, `linktype`, `parent`, `isactive`, `order`, `icon`) VALUES
(1, 'Users', '', '', 'site/viewusers', 1, 0, 1, 1, 'icon-user'),
(4, 'Dashboard', '', '', 'site/index', 1, 0, 1, 0, 'icon-dashboard'),
(5, 'Category', '', '', 'site/viewcategory', 1, 0, 1, 2, 'icon-dashboard'),
(6, 'Instagram', '', '', 'site/viewinstagram', 1, 0, 1, 9, 'icon-dashboard'),
(7, 'News', '', '', 'site/viewnews', 1, 0, 1, 8, 'icon-dashboard'),
(8, 'Models', '', '', 'site/viewmodel', 1, 0, 1, 3, 'icon-dashboard'),
(9, 'Photographers', '', '', 'site/viewphotographer', 1, 0, 1, 4, 'icon-dashboard'),
(10, 'Photographers Album', '', '', 'site/viewphotographeralbum', 1, 0, 1, 5, 'icon-dashboard'),
(11, 'Article', '', '', 'site/viewarticle', 1, 0, 1, 7, 'icon-dashboard');

-- --------------------------------------------------------

--
-- Table structure for table `menuaccess`
--

CREATE TABLE IF NOT EXISTS `menuaccess` (
  `menu` int(11) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menuaccess`
--

INSERT INTO `menuaccess` (`menu`, `access`) VALUES
(1, 1),
(4, 1),
(2, 1),
(3, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'inactive'),
(2, 'Active'),
(3, 'Waiting'),
(4, 'Active Waiting'),
(5, 'Blocked');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `accesslevel` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `socialid` varchar(255) NOT NULL,
  `logintype` int(11) NOT NULL,
  `json` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `accesslevel`, `timestamp`, `status`, `image`, `username`, `socialid`, `logintype`, `json`) VALUES
(1, 'wohlig', 'a63526467438df9566c508027d9cb06b', 'wohlig@wohlig.com', 1, '0000-00-00 00:00:00', 1, NULL, '', '', 0, ''),
(4, 'pratik', '0cb2b62754dfd12b6ed0161d4b447df7', 'pratik@wohlig.com', 1, '2014-05-12 06:52:44', 1, NULL, 'pratik', '1', 1, ''),
(5, 'wohlig123', 'wohlig123', 'wohlig1@wohlig.com', 1, '2014-05-12 06:52:44', 1, NULL, '', '', 0, ''),
(6, 'wohlig1', 'a63526467438df9566c508027d9cb06b', 'wohlig2@wohlig.com', 1, '2014-05-12 06:52:44', 1, NULL, '', '', 0, ''),
(7, 'Avinash', '7b0a80efe0d324e937bbfc7716fb15d3', 'avinash@wohlig.com', 1, '2014-10-17 06:22:29', 1, NULL, '', '', 0, ''),
(9, 'avinash', 'a208e5837519309129fa466b0c68396b', 'a@email.com', 2, '2014-12-03 11:06:19', 3, '', '', '123', 1, 'demojson'),
(13, 'aaa', 'a208e5837519309129fa466b0c68396b', 'aaa3@email.com', 3, '2014-12-04 06:55:42', 3, NULL, '', '1', 2, 'userjson');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onuser` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `onuser`, `status`, `description`, `timestamp`) VALUES
(1, 1, 1, 'User Address Edited', '2014-05-12 06:50:21'),
(2, 1, 1, 'User Details Edited', '2014-05-12 06:51:43'),
(3, 1, 1, 'User Details Edited', '2014-05-12 06:51:53'),
(4, 4, 1, 'User Created', '2014-05-12 06:52:44'),
(5, 4, 1, 'User Address Edited', '2014-05-12 12:31:48'),
(6, 23, 2, 'User Created', '2014-10-07 06:46:55'),
(7, 24, 2, 'User Created', '2014-10-07 06:48:25'),
(8, 25, 2, 'User Created', '2014-10-07 06:49:04'),
(9, 26, 2, 'User Created', '2014-10-07 06:49:16'),
(10, 27, 2, 'User Created', '2014-10-07 06:52:18'),
(11, 28, 2, 'User Created', '2014-10-07 06:52:45'),
(12, 29, 2, 'User Created', '2014-10-07 06:53:10'),
(13, 30, 2, 'User Created', '2014-10-07 06:53:33'),
(14, 31, 2, 'User Created', '2014-10-07 06:55:03'),
(15, 32, 2, 'User Created', '2014-10-07 06:55:33'),
(16, 33, 2, 'User Created', '2014-10-07 06:59:32'),
(17, 34, 2, 'User Created', '2014-10-07 07:01:18'),
(18, 35, 2, 'User Created', '2014-10-07 07:01:50'),
(19, 34, 2, 'User Details Edited', '2014-10-07 07:04:34'),
(20, 18, 2, 'User Details Edited', '2014-10-07 07:05:11'),
(21, 18, 2, 'User Details Edited', '2014-10-07 07:05:45'),
(22, 18, 2, 'User Details Edited', '2014-10-07 07:06:03'),
(23, 7, 6, 'User Created', '2014-10-17 06:22:29'),
(24, 7, 6, 'User Details Edited', '2014-10-17 06:32:22'),
(25, 7, 6, 'User Details Edited', '2014-10-17 06:32:37'),
(26, 8, 6, 'User Created', '2014-11-15 12:05:52'),
(27, 9, 6, 'User Created', '2014-12-02 10:46:36'),
(28, 9, 6, 'User Details Edited', '2014-12-02 10:47:34'),
(29, 4, 6, 'User Details Edited', '2014-12-03 10:34:49'),
(30, 4, 6, 'User Details Edited', '2014-12-03 10:36:34'),
(31, 4, 6, 'User Details Edited', '2014-12-03 10:36:49'),
(32, 8, 6, 'User Details Edited', '2014-12-03 10:47:16');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
