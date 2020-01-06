-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2019 at 12:26 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '18-10-2016 04:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'School of Art', 'hggg jbj jj knkkjmkyfyf', '2019-10-10 10:14:54', NULL),
(3, 'School of Science', 'today', '2019-10-10 10:15:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE IF NOT EXISTS `complaintremark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2018-09-05 17:08:26'),
(6, 5, 'in process', 'test Data', '2019-06-24 07:26:17'),
(7, 23, 'in process', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-06-24 10:34:47'),
(8, 23, 'closed', 'Issue resolved ', '2019-06-24 10:37:08'),
(9, 24, 'in process', 'ur work is curentlt in process we will get back to u shortly', '2019-10-09 14:25:06'),
(10, 32, 'closed', 'the problem is solved', '2019-10-10 10:42:34'),
(11, 32, 'closed', 'your problem is resolved', '2019-10-10 10:43:41'),
(12, 36, 'closed', 'We solved your problem mr.', '2019-10-12 00:56:15'),
(13, 37, 'closed', 'problem solved', '2019-10-12 08:29:34'),
(14, 39, 'in process', 'Mr. Aaron we got your complain and will get back to u soon', '2019-10-12 18:42:23'),
(15, 39, 'closed', 'problem solved', '2019-10-12 18:43:55'),
(16, 33, 'closed', 'problem silved', '2019-10-12 22:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `hdean_art`
--

CREATE TABLE IF NOT EXISTS `hdean_art` (
  `id` int(128) NOT NULL AUTO_INCREMENT,
  `school` varchar(200) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hdean_art`
--

INSERT INTO `hdean_art` (`id`, `school`, `fullname`, `dob`, `phone`, `address`, `email`, `password`, `date`) VALUES
(3, 'Art', 'MichaelPaul', '2019-10-16', '09087656543', 'behind ful ', 'anwolu@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '2019-10-12 23:23:37');

-- --------------------------------------------------------

--
-- Table structure for table `hdean_science`
--

CREATE TABLE IF NOT EXISTS `hdean_science` (
  `id` int(128) NOT NULL AUTO_INCREMENT,
  `school` varchar(200) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hdean_science`
--

INSERT INTO `hdean_science` (`id`, `school`, `fullname`, `dob`, `phone`, `address`, `email`, `password`, `date`) VALUES
(1, 'Science', 'Johnson Paul', '2019-10-14', '76766897000', 'behind ful ', 'anwolu@yahoo.com', '01cfcd4f6b8770febfb40cb906715822', '2019-10-13 05:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE IF NOT EXISTS `hod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school` varchar(110) NOT NULL,
  `subcategory` varchar(110) NOT NULL,
  `fullname` varchar(110) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `hod`
--

INSERT INTO `hod` (`id`, `school`, `subcategory`, `fullname`, `dob`, `phone`, `address`, `email`, `password`, `date`) VALUES
(4, '3', 'computer Sceince', 'Johnson Paul', '2019-10-16', '76766897000', 'trfyguhjiokl', 'hgvhgv@hyug.com', '827ccb0eea8a706c4c34a16891f84e7b', '2019-10-12 03:45:35'),
(7, '1', 'Business Admin', 'Faith Donti', '2019-10-09', '12345', 'trfyguhjiokl', 'samuel4usall@yahoo.com', '01cfcd4f6b8770febfb40cb906715822', '2019-10-12 03:55:37'),
(8, 'School_of_Art', 'Literature', 'Johnson Paul', '2019-10-15', '76766897000', 'anwolu@gmail.com', 'patrick@healthrenaissance-ng.com', '01cfcd4f6b8770febfb40cb906715822', '2019-10-12 04:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `mesage_sent`
--

CREATE TABLE IF NOT EXISTS `mesage_sent` (
  `id` int(128) NOT NULL AUTO_INCREMENT,
  `messaget` varchar(120) NOT NULL,
  `message` varchar(120) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `mesage_sent`
--

INSERT INTO `mesage_sent` (`id`, `messaget`, `message`, `date`) VALUES
(3, 'Alot of complain', 'let chech if it works', '2019-10-17 11:03:52'),
(4, 'Alot of complain', 'wat wrong', '2019-10-17 11:07:57'),
(5, 'Alot of complain', 'gyg miller is death or die war', '2019-10-17 11:08:35'),
(6, 'hello', 'brooklyn', '2019-10-17 11:11:29'),
(7, 'sir', 'weldone', '2019-10-17 11:15:19');

-- --------------------------------------------------------

--
-- Table structure for table `mesage_sent2`
--

CREATE TABLE IF NOT EXISTS `mesage_sent2` (
  `id` int(128) NOT NULL AUTO_INCREMENT,
  `messaget` varchar(120) NOT NULL,
  `message` varchar(120) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mesage_sent2`
--

INSERT INTO `mesage_sent2` (`id`, `messaget`, `message`, `date`) VALUES
(1, 'Alot of complain', 'something nature like ass with some stretchmarks', '2019-10-17 10:48:14'),
(2, 'Alot of complain', 'like check if it works', '2019-10-17 11:07:23'),
(3, 'hi', 'new york', '2019-10-17 11:11:46'),
(4, 'glory', 'i just got ur message', '2019-10-17 11:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(7, 'Abia', 'Abia state', '2019-10-12 00:51:08', NULL),
(8, 'Akwa Ibom', 'akwa ibom', '2019-10-12 00:51:48', NULL),
(9, 'Kogi', 'kogi state', '2019-10-12 00:52:33', NULL),
(10, 'Kwara', 'Kwara state', '2019-10-12 00:52:55', NULL),
(11, 'Rivers', 'Rivers', '2019-10-12 00:53:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` varchar(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, '2', 'other', '2019-06-24 07:06:44', '2019-06-24 07:21:38'),
(4, '3', 'Computer Science ', '2019-10-10 10:24:17', NULL),
(5, '1', 'History', '2019-10-10 10:24:57', NULL),
(6, '3', 'Mathematics', '2019-10-10 10:26:44', NULL),
(14, 'School of S', 'Physic', '2019-10-13 11:28:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE IF NOT EXISTS `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `userEmail` varchar(200) NOT NULL,
  PRIMARY KEY (`complaintNumber`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`, `userEmail`) VALUES
(31, 1, 2, 'other', 'General Query', 'Delhi', 'complaint', 'mozilar', 'IMG_1285.JPG', '2019-10-09 18:17:17', NULL, NULL, 'anuj.lpu1@gmail.com'),
(32, 1, 3, 'Computer Science ', 'General Query', 'Punjab', 'Bad weather', 'from the rock of sin that i met clearly seen', '', '2019-10-10 10:36:11', 'closed', '2019-10-10 10:42:34', 'anwolu@yahoo.com'),
(33, 1, 3, 'Computer Science ', 'General Query', 'Punjab', 'it just work', 'hfuh ufs  to his name ', 'The director.docx', '2019-10-10 10:45:15', 'closed', '2019-10-12 22:44:08', 'anwolu@yahoo.com'),
(34, 1, 1, 'History', ' Complaint', 'Punjab', 'hope', 'he still speak', 'IMG_1527.JPG', '2019-10-10 10:47:34', NULL, NULL, 'anuj.lpu1@gmail.com'),
(35, 1, 3, 'Computer Science ', 'General Query', 'Punjab', 'School complain system', 'this is a perfect school complain system that work effectively..', 'TONY_FIRST_PAGE.docx', '2019-10-12 00:48:27', 'in process', '2019-10-12 08:30:36', 'anwolu@yahoo.com'),
(36, 1, 3, 'Computer Science ', 'General Query', 'Rivers', 'School complain system', 'Yea am on it', 'OPERATING SYSTEM SECURITY BY CHIBEN.pptx', '2019-10-12 00:54:11', 'closed', '2019-10-12 00:56:15', 'anwolu@yahoo.com'),
(37, 1, 3, 'Computer Science ', 'General Query', 'Kogi', 'Bad weather', 'today in class', 'Screenshot (8).png', '2019-10-12 08:27:53', 'closed', '2019-10-12 08:29:34', 'anwolu@yahoo.com'),
(38, 1, 3, 'Mathematics', 'General Query', 'Kwara', 'Bad weather is here', 'jhjkbln; guiy89u0i08u0-', '', '2019-10-12 09:31:37', NULL, NULL, 'anwolu@yahoo.com'),
(39, 2, 1, 'English', 'General Query', 'Kwara', 'Bad weather is here', 'fyub  biuguib niohioh klniohopin , knoihiohih ugiguig juigiu', 'Screenshot (8).png', '2019-10-12 18:13:10', 'closed', '2019-10-12 18:43:55', 'anwolu@yahoo.com'),
(40, 8, 3, 'Mathematics', ' Complaint', 'Kogi', 'Delay Result', 'sorry sir but my result is not yet out', '', '2019-10-12 22:46:09', NULL, NULL, 'anwolu@yahoo.com'),
(42, 11, 3, 'Mathematics', '', '', 'No Respond', 'I made a complain today and no respond', '', '2019-10-13 17:29:18', NULL, NULL, 'drnkumah@ccaworldwide.com'),
(43, 11, 3, 'Mathematics', '', '', 'it just work', 'bvvgv nvugiug  nkihojo9i igi8g8g 78t87 77t7t78t8b', '', '2019-10-13 18:12:44', NULL, NULL, 'drnkumah@ccaworldwide.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(128) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(200) NOT NULL,
  `school` varchar(300) NOT NULL,
  `department` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `userpics` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-28 17:04:36', '', 1),
(2, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-29 15:02:26', '', 1),
(3, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-30 14:58:00', '', 1),
(4, 0, 'dsad', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-31 17:39:07', '', 0),
(5, 0, 'dwerwer', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-31 17:41:22', '', 0),
(6, 0, 'ffert', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-31 17:41:29', '', 0),
(7, 0, 'ewrwe', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-31 17:42:12', '', 0),
(8, 0, 'ewrwe', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-31 17:47:51', '', 0),
(9, 0, 'ewrwe', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-31 17:47:54', '', 0),
(10, 0, 'fsdfsdff', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-31 17:48:11', '', 0),
(11, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-31 17:49:25', '', 1),
(12, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-04-01 18:52:35', '02-04-2017 12:24:41 AM', 1),
(13, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-04-01 18:58:09', '02-04-2017 12:50:42 AM', 1),
(14, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-04-01 19:38:15', '02-04-2017 01:08:19 AM', 1),
(15, 0, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-04-02 18:50:20', '', 0),
(16, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-04-02 18:50:28', '03-04-2017 12:26:50 AM', 1),
(17, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-05-02 18:01:26', '', 1),
(18, 0, 'test@gm.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-06-11 10:48:50', '', 0),
(19, 5, 'abc@abc.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-06-11 10:56:30', '11-06-2017 04:39:15 PM', 1),
(20, 6, 'xyz@xyz.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-06-11 11:13:28', '11-06-2017 04:45:46 PM', 1),
(21, 6, 'xyz@xyz.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-06-11 11:19:45', '11-06-2017 04:50:02 PM', 1),
(22, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-05-24 18:26:07', '', 1),
(23, 0, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-09-05 17:05:22', '', 0),
(24, 0, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-09-05 17:05:32', '', 0),
(25, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-09-05 17:07:12', '', 1),
(26, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-06-24 10:27:30', '24-06-2019 04:11:08 PM', 1),
(27, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-09 14:13:15', '', 1),
(28, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-09 14:39:44', '09-10-2019 09:12:08 PM', 1),
(29, 2, 'anwolu@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-09 15:44:38', '09-10-2019 11:00:10 PM', 1),
(30, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-09 17:30:49', '09-10-2019 11:19:08 PM', 1),
(31, 2, 'anwolu@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-09 17:49:25', '09-10-2019 11:22:39 PM', 1),
(32, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-09 17:54:16', '', 1),
(33, 2, 'anwolu@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-09 17:54:57', '', 1),
(34, 2, 'anwolu@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-10 09:13:16', '', 1),
(35, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-10 09:14:04', '', 1),
(36, 0, 'anwolu@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-12 00:44:17', '', 0),
(37, 2, 'anwolu@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-12 00:44:23', '12-10-2019 06:51:16 AM', 1),
(38, 1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-12 00:46:40', '', 1),
(39, 2, 'anwolu@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-12 02:02:35', '12-10-2019 09:51:31 AM', 1),
(40, 2, 'anwolu@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-12 08:34:34', '12-10-2019 03:11:08 PM', 1),
(41, 0, 'anwolu@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-12 09:41:31', '', 0),
(42, 2, 'anwolu@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-12 09:41:42', '12-10-2019 03:11:49 PM', 1),
(43, 2, 'anwolu@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-12 18:12:08', '', 1),
(44, 2, 'anwolu@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-12 22:20:38', '', 1),
(45, 2, 'anwolu@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-13 07:07:03', '13-10-2019 01:13:46 PM', 1),
(46, 2, 'anwolu@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-13 07:44:58', '13-10-2019 01:21:38 PM', 1),
(47, 0, 'scuscu23@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-13 09:30:28', '', 0),
(48, 3, 'scuscu23@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-13 10:05:29', '', 1),
(49, 11, 'drnkumah@ccaworldwide.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-13 10:56:44', '13-10-2019 04:59:31 PM', 1),
(50, 11, 'drnkumah@ccaworldwide.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-13 16:45:45', '', 1),
(51, 11, 'drnkumah@ccaworldwide.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-10-13 17:48:14', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `school` varchar(128) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `school`, `department`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(2, 'aaron', 'anwolu@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', 90876754, 'hospital road', 'Punjab', 'nigeria', 12345, 'b08eda187afd12c352d1d571511b44b9.jpg', '2019-10-09 15:43:39', '2019-10-09 15:53:18', 1),
(3, 'Abigail Ex', 'scuscu23@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 908765434, NULL, NULL, NULL, NULL, NULL, '2019-10-13 09:41:10', '0000-00-00 00:00:00', 1),
(4, 'MichaelPaul', 'hsdah@ya.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', 908765434, NULL, NULL, NULL, NULL, NULL, '2019-10-13 09:45:40', '0000-00-00 00:00:00', 1),
(5, 'MichaelPaul', 'anwolu@yahooo.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL, '12345', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-13 10:21:42', '0000-00-00 00:00:00', 1),
(6, 'MichaelPaul', 'anwolu@yaho.com', '827ccb0eea8a706c4c34a16891f84e7b', '2345', '12345', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-13 10:24:45', '0000-00-00 00:00:00', 1),
(7, 'Michae lPaul', 'anwolu@ho.com', '827ccb0eea8a706c4c34a16891f84e7b', '34', '123456789', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-13 10:32:21', '0000-00-00 00:00:00', 1),
(8, 'Michae lPaul', 'anwolu@o.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '3', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-13 10:36:06', '0000-00-00 00:00:00', 1),
(9, 'olaka', 'ola@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Mathematics', '3', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-13 10:41:33', '0000-00-00 00:00:00', 1),
(10, 'Yanka john', 'yinkan@yahoo.com', '85bfba0dea470c67307a5814aafae64f', 'Mathematics', '3', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-13 10:52:15', '0000-00-00 00:00:00', 1),
(11, 'favour philip', 'drnkumah@ccaworldwide.com', '827ccb0eea8a706c4c34a16891f84e7b', '3', 'Mathematics', 908765434, 'fcgcgcgh', 'Akwa Ibom', '', 0, '399c22a3dcb450b38fbfb518dc81c6d2.png', '2019-10-13 10:55:49', '2019-10-13 17:54:06', 1),
(12, 'Faith Donti', 'w@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '3', 'Mathematics', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-13 11:30:26', '0000-00-00 00:00:00', 1),
(13, 'onabode', 'oban@g.com', '81dc9bdb52d04dc20036dbd8313ed055', '3', 'Mathematics', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-13 16:38:14', '0000-00-00 00:00:00', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
