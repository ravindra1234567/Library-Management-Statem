-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 17, 2018 at 03:26 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `addbook`
--

CREATE TABLE IF NOT EXISTS `addbook` (
  `bookname` varchar(500) NOT NULL,
  `category` varchar(100) NOT NULL,
  `author` varchar(500) NOT NULL,
  `ssn` int(100) NOT NULL,
  `issue` varchar(20) NOT NULL,
  `price` int(100) NOT NULL,
  PRIMARY KEY (`ssn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addbook`
--

INSERT INTO `addbook` (`bookname`, `category`, `author`, `ssn`, `issue`, `price`) VALUES
('Java Programming', 'Technical', 'E Balagurusamy', 1900, 'YES', 500),
('C++ Programming', 'Technical', 'E Balagurusamy', 1901, 'NO', 250),
('Data Structure And Algorithm', 'Technical', 'E Balagurusamy', 1902, 'NO', 350),
('Programming in BASIC', 'Technical', 'E Balagurusamy', 1903, 'YES', 450),
('Data Mining ', 'Technical', 'E Balagurusamy', 1904, 'NO', 550),
('Data Structure And Algorithm', 'Technical', 'Yashavant P Kanetkar', 1905, 'NO', 300),
('Digital Techniques', 'Technical', 'Jason Cannon', 1907, 'YES', 400),
('Java Programming', 'Technical', 'James Gosling', 1908, 'YES', 320),
('Java Programming', 'Technical', 'James Gosling', 1909, 'YES', 300),
('Programming C', 'Technical', 'E Balagurusamy', 1910, 'NO', 420),
('Data Mining', 'Technical', 'E Balagurusamy', 1911, 'YES', 200);

-- --------------------------------------------------------

--
-- Table structure for table `adminsignup`
--

CREATE TABLE IF NOT EXISTS `adminsignup` (
  `adminname` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(36) NOT NULL,
  `cpassword` varchar(36) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminsignup`
--

INSERT INTO `adminsignup` (`adminname`, `fname`, `mobile`, `address`, `email`, `password`, `cpassword`) VALUES
('Ravindra', 'mr Ramgopal', '7047178936', 'Nowgong', 'ravindrakushwahanwg@gmail.com', '111111', '111111'),
('Daya Kushwaha', 'Mr. Govind Das ', '8085838022', 'Kararaganj', 'dayakushwaha420@gmail.com', '888', '888'),
('Gaurav Pathak', 'Mr. Jagdish pathak', '7047178936', 'harpalpur', 'gauravpathak351@gamil.com', '7777', '7777');

-- --------------------------------------------------------

--
-- Table structure for table `bookissue`
--

CREATE TABLE IF NOT EXISTS `bookissue` (
  `enrollment1` varchar(11) NOT NULL,
  `bookname` varchar(200) NOT NULL,
  `author` varchar(200) NOT NULL,
  `ssn` int(100) NOT NULL,
  `issue` varchar(20) NOT NULL,
  `date1` varchar(100) NOT NULL,
  `time1` varchar(100) NOT NULL,
  `return1` varchar(20) NOT NULL,
  `rdate1` varchar(100) NOT NULL,
  `rtime1` varchar(100) NOT NULL,
  PRIMARY KEY (`ssn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookissue`
--

INSERT INTO `bookissue` (`enrollment1`, `bookname`, `author`, `ssn`, `issue`, `date1`, `time1`, `return1`, `rdate1`, `rtime1`) VALUES
('15025c04048', 'Java Programming', 'E Balagurusamy', 1900, 'YES', '  09.04.2018 ', '  05:58:21 PM', 'YES', '  10.04.2018 ', '  10:06:00 PM'),
('15025c04048', 'C++ Programming', 'E Balagurusamy', 1901, 'YES', '  01.01.2018', '  06:27:46 PM', 'YES', '  14.06.2018 ', '  07:09:37 PM'),
('15025c04048', 'Data Structure And Algorithm', 'E Balagurusamy', 1902, 'YES', '  15.02.2018 ', '  06:29:01 PM', 'YES', '  14.06.2018 ', '  07:18:12 PM'),
('15025c04024', 'Programming in BASIC', 'E Balagurusamy', 1903, 'YES', '  09.04.2018 ', '  06:31:13 PM', 'NO', '00:00:0000', '00:00:00'),
('15025c04024', 'Data Mining', 'E Balagurusamy', 1904, 'YES', '  09.04.2018 ', '  06:51:57 PM', 'YES', '  14.06.2018 ', '  07:19:26 PM'),
('15025c04048', 'Java Programming', 'James Gosling', 1909, 'YES', '  18.05.2018 ', '  05:59:33 PM', 'NO', '00:00:0000', '00:00:00'),
('15025c04026', 'Digital Techniques', 'jason cannon', 1907, 'YES', '  27.05.2018 ', '  11:12:34 AM', 'NO', '00:00:0000', '00:00:00'),
('15025c04026', 'Programming C', 'E Balagurusamy', 1910, 'YES', '  27.05.2018 ', '  05:12:05 PM', 'YES', '  14.06.2018 ', '  07:20:47 PM'),
('15025c04048', 'Data Mining', 'E Balagurusamy', 1911, 'YES', '  15.06.2018 ', '  08:08:05 AM', 'NO', '00:00:0000', '00:00:00'),
('15025c04048', 'Java Programming', 'James Goslin', 1908, 'YES', '  15.06.2018 ', '  01:04:18 PM', 'NO', '00:00:0000', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `sname` varchar(100) NOT NULL,
  `enrollment` varchar(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `cpassword` varchar(40) NOT NULL,
  PRIMARY KEY (`enrollment`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`sname`, `enrollment`, `fname`, `dob`, `gender`, `branch`, `category`, `mobile`, `address`, `email`, `password`, `cpassword`) VALUES
('Ravindra kumar kushwaha', '15025c04048', 'Mr. Ramgopal kushwaha', '1997-09-25', 'MALE', 'CSE', 'OBC', '7047178936', 'harpalpur', 'ravindrakushwahanwg@gmail.com', '9999', '9999'),
('Jagdeesh Kushwaha', '15025c04026', 'Mr.Govind Das Kushwaha', '1999-12-18', 'MALE', 'CSE', 'OBC', '7224011061', 'Karara Ganj', 'dayakushwaha420@gmail.com', 'daya26', 'daya26'),
('Gaurav Pathak', '15025c04024', 'Mr.Jagdish Pathak', '1997-06-06', 'MALE', 'CSE', 'GEN', '9144183827', 'Nowgong', 'gauravpathak24@gmail.com', 'Gaurav@123', 'Gaurav@123'),
('ANKIT TIWARI', '15025C04006', 'Mr. ANIL KUMAR', '1998-01-16', 'MALE', 'CSE', 'GEN', '8871281605', 'LAHCHOORA ROAD WARD NO. 01 HARPALPUR', 'ankitkumartiwari1601@gmail.com', '555', '555');
