-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 24, 2013 at 06:32 AM
-- Server version: 5.5.32
-- PHP Version: 5.3.10-1ubuntu3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `tester`
--

CREATE TABLE IF NOT EXISTS `tester` (
  `ID` int(11) NOT NULL,
  `FNAME` varchar(100) NOT NULL,
  `LNAME` varchar(100) NOT NULL,
  `SKILLS` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tester`
--

INSERT INTO `tester` (`ID`, `FNAME`, `LNAME`, `SKILLS`) VALUES
(1, 'Paul', 'Allen', 'Altair BASIC, BASIC'),
(2, 'Kent', 'Beck', 'Java'),
(3, 'Marc', 'Blank', 'C, C++, BASIC'),
(4, 'Dries', 'Buytaert', 'PHP, C'),
(5, 'John', 'Carmack', 'C++'),
(6, 'Edsger', 'Dijkstra', 'ALGOL'),
(7, 'Brian', 'Fox', 'Bash'),
(8, 'Adele', 'Goldberg', 'Smalltalk'),
(9, 'Andi', 'Gutmans', 'PHP'),
(10, 'Roberto ', 'Ierusalimschy', 'Lua'),
(11, 'Rasmus', 'Lerdorg', 'PHP'),
(12, 'Sam', 'Lantinga', 'SDL, C++'),
(13, 'John', 'McCarthy', 'Lisp'),
(14, 'Yukihiro', 'Matsumoto', 'Ruby'),
(15, 'Seymour', 'Papert', 'Logo'),
(16, 'John', 'Resig', 'JavaScript, jQuery'),
(17, 'Guido', 'van Rossum', 'Python'),
(18, 'Randal', 'Schwartz', 'Perl'),
(19, 'Bjarne', 'Stroustrup', 'C++'),
(20, 'Larry', 'Wall', 'Perl'),
(21, 'Niklaus', 'Wirth', 'Pascal'),
(22, 'Anders', 'Hejlsberg', 'C#');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
