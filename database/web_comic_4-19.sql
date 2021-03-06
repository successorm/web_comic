-- phpMyAdmin SQL Dump
-- version 3.3.2deb1ubuntu1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2012 at 09:31 AM
-- Server version: 5.1.61
-- PHP Version: 5.3.2-1ubuntu4.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webcomic`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_names`
--

DROP TABLE IF EXISTS `book_names`;
CREATE TABLE IF NOT EXISTS `book_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `b_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `book_names`
--

INSERT INTO `book_names` (`id`, `b_name`) VALUES
(1, 'Test!');

-- --------------------------------------------------------

--
-- Table structure for table `comics`
--

DROP TABLE IF EXISTS `comics`;
CREATE TABLE IF NOT EXISTS `comics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book` varchar(50) DEFAULT NULL,
  `chapter` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `image_path` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `comics`
--

INSERT INTO `comics` (`id`, `book`, `chapter`, `date_added`, `image_path`) VALUES
(1, '1', 1, '2012-04-15', 'comics/sample.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `i_name` varchar(50) DEFAULT NULL,
  `image_path` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `i_name`, `image_path`) VALUES
(1, 'team', 'images/team.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `article` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `date_added`, `article`) VALUES
(1, 'about', '2012-04-15', 'This will be where the information about the creators of Apex Comics can             	give information about themsevles and their work in orderro inform other              	readers. Probably won''t change to much, and we will be sure to make room  for pictures if necessary.'),
(2, 'Sample News!', '2012-04-16', 'This will be where we display the latest news and comic, however we must be sure that the image doesn''t try to push over into where the news goes. Make sure image size is specified Following should word for getting the path of the most recent comic added.'),
(8, 'TEST NEWS 2!!!', '2012-04-17', 'THIS IS ANOTHER TEST!  NEW NEWS NOW!'),
(9, 'TEST NEWS 3!!!', '2012-04-17', 'BLAH BLAH BLAH, Here is some more news about whats goin on at APEX!');
