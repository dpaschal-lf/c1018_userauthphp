-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jan 09, 2019 at 09:46 PM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `c1018db`
--

-- --------------------------------------------------------

--
-- Table structure for table `currentConnections`
--

CREATE TABLE `currentConnections` (
  `ID` int(10) unsigned NOT NULL,
  `token` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `connected` datetime NOT NULL,
  `connectionCount` mediumint(8) unsigned NOT NULL,
  `ipAddress` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lastConnection` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currentConnections`
--
ALTER TABLE `currentConnections`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `token` (`token`(4));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currentConnections`
--
ALTER TABLE `currentConnections`
  MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;


  -- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jan 10, 2019 at 03:26 AM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `c1018db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` mediumint(8) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `joined` datetime NOT NULL,
  `birthday` date NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('joined','active','banned','deleted','admin') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `name`, `email`, `password`, `joined`, `birthday`, `updated`, `status`) VALUES
(1, 'Sri Madhala', '120db@learningfuze.com', '059b2f700e6171eafe61f97c46574891366c107b', '2018-12-14 12:39:38', '2017-09-06', '2019-01-08 01:51:02', 'active'),
(2, 'Barack Obama', 'barackobama@gmail.com', 'abf96dead33675d1e816181491438ad498e6428c', '2018-12-14 12:58:05', '2001-01-01', '2018-12-15 04:58:05', 'active'),
(3, 'George Washington', 'georgewashington@gmail.com', 'a74f82fd1ea730c684c1c21ba078763fc9091411', '2018-12-14 12:58:05', '2002-02-02', '2018-12-14 21:30:17', 'banned'),
(4, 'Thomas Jefferson', 'thomasjefferson@gmail.com', 'ac0ea0b550b7696334789843b5f115bf6bf43985', '2018-12-14 12:58:05', '2003-03-03', '2018-12-14 21:30:17', 'banned'),
(5, 'John Kennedy', 'johnkennedy@gmail.com', '35695888c48267c53dfc38a62988b4b7420f70d3', '2018-12-14 12:58:05', '2004-04-04', '2018-12-14 21:30:17', 'banned'),
(6, 'Theodore Roosevelt', 'theodoreroosevelt@gmail.com', '83de2363e806abb16f53821cf746d13b1d68105c', '2018-12-14 12:58:05', '2005-05-05', '2018-12-14 21:30:17', 'banned'),
(7, 'Abraham Lincoln', 'abrahamlincoln@gmail.com', 'bd34219459059ab1817f2b76d671d84a7793f465', '2018-12-14 12:58:05', '2006-06-06', '2018-12-15 04:58:05', 'active'),
(8, 'Franklin Roosevelt', 'franklinroosevelt@gmail.com', '96d033cd9f1ca40c9ef073e0fa1aa568c0d7eb57', '2018-12-14 12:58:05', '2007-07-07', '2018-12-15 04:58:05', 'active'),
(9, 'James Madison', 'jamesmadison@gmail.com', '5a7e6ef8fa6ae053004201128dd00c1b11100659', '2018-12-14 12:58:05', '2008-08-08', '2018-12-15 04:58:05', 'active'),
(10, 'George Bush', 'georgebush@gmail.com', 'c88d905095539531cf6e4bf6f0233114192ba74b', '2018-12-14 12:58:05', '2009-09-09', '2018-12-15 04:58:05', 'active'),
(11, 'Andrew Jackson', '', 'fbbc1aebfea93123236a0961e6df9bcd35fc1a5c', '2018-12-14 12:58:05', '2010-10-10', '2018-12-15 04:58:05', 'active'),
(12, 'Barack Obama', 'barackobama@gmail.com', 'abf96dead33675d1e816181491438ad498e6428c', '2018-12-14 12:58:05', '2001-01-01', '2018-12-15 04:58:05', 'active'),
(13, 'George Washington', 'georgewashington@gmail.com', 'a74f82fd1ea730c684c1c21ba078763fc9091411', '2018-12-14 12:58:05', '2002-02-02', '2018-12-15 04:58:05', 'active'),
(14, 'Thomas Jefferson', 'thomasjefferson@gmail.com', 'ac0ea0b550b7696334789843b5f115bf6bf43985', '2018-12-14 12:58:05', '2003-03-03', '2018-12-15 04:58:05', 'active'),
(15, 'John Kennedy', 'johnkennedy@gmail.com', '35695888c48267c53dfc38a62988b4b7420f70d3', '2018-12-14 12:58:05', '2004-04-04', '2018-12-15 04:58:05', 'active'),
(16, 'Theodore Roosevelt', 'theodoreroosevelt@gmail.com', '83de2363e806abb16f53821cf746d13b1d68105c', '2018-12-14 12:58:05', '2005-05-05', '2018-12-15 04:58:05', 'active'),
(17, 'Abraham Lincoln', 'abrahamlincoln@gmail.com', 'bd34219459059ab1817f2b76d671d84a7793f465', '2018-12-14 12:58:05', '2006-06-06', '2018-12-15 04:58:05', 'active'),
(18, 'Franklin Roosevelt', 'franklinroosevelt@gmail.com', '96d033cd9f1ca40c9ef073e0fa1aa568c0d7eb57', '2018-12-14 12:58:05', '2007-07-07', '2018-12-15 04:58:05', 'active'),
(19, 'James Madison', 'jamesmadison@gmail.com', '5a7e6ef8fa6ae053004201128dd00c1b11100659', '2018-12-14 12:58:05', '2008-08-08', '2018-12-15 04:58:05', 'active'),
(20, 'George Bush', 'georgebush@gmail.com', 'c88d905095539531cf6e4bf6f0233114192ba74b', '2018-12-14 12:58:05', '2009-09-09', '2018-12-15 04:58:05', 'active'),
(21, 'Andrew Jackson', '', 'fbbc1aebfea93123236a0961e6df9bcd35fc1a5c', '2018-12-14 12:58:05', '2010-10-10', '2018-12-15 04:58:05', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;