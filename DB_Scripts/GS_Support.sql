-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 20, 2021 at 08:03 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `GS_Support`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log_history`
--

CREATE TABLE `activity_log_history` (
  `id` int(20) NOT NULL,
  `username` varchar(250) NOT NULL,
  `action` varchar(250) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Area`
--

CREATE TABLE `Area` (
  `id` int(11) NOT NULL,
  `area` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `posteddate` datetime DEFAULT NULL,
  `issue_id` int(11) NOT NULL,
  `issue_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Company`
--

CREATE TABLE `Company` (
  `Id` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `PrimaryContact` bigint(120) DEFAULT NULL,
  `Active` enum('Yes','No') DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Issue_Priority`
--

CREATE TABLE `Issue_Priority` (
  `Id` int(11) NOT NULL,
  `priority` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `issue_tracker_tb`
--

CREATE TABLE `issue_tracker_tb` (
  `IssueId` int(11) NOT NULL,
  `IssueName` varchar(128) DEFAULT NULL,
  `IssueDescription` varchar(250) DEFAULT NULL,
  `IssueType` enum('Product Bug','Enhancement','Data Request') NOT NULL,
  `ProductTeam` enum('Team A','Team B','Team C') NOT NULL,
  `Area` enum('Data Management','Reports','Dashboards','Data Designer','Journey Orchestrator','Rules Engine','cockpit','C360','Scorecard','Connectors') NOT NULL,
  `Priority` enum('Low','Medium','High') NOT NULL,
  `Owner` varchar(45) DEFAULT NULL,
  `Status` enum('New','In-Progress','Re-Open','Close') NOT NULL DEFAULT 'New',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ReportedBy` varchar(128) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_company` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Issue_Type`
--

CREATE TABLE `Issue_Type` (
  `id` int(11) NOT NULL,
  `type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Product_Team`
--

CREATE TABLE `Product_Team` (
  `id` int(11) NOT NULL,
  `product_team` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Status`
--

CREATE TABLE `Status` (
  `id` int(11) NOT NULL,
  `status` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usersdata`
--

CREATE TABLE `usersdata` (
  `id` int(11) NOT NULL,
  `role` enum('User','Admin') NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `number` bigint(120) NOT NULL,
  `company` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log_history`
--
ALTER TABLE `activity_log_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Area`
--
ALTER TABLE `Area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `issue_id` (`issue_id`);

--
-- Indexes for table `Company`
--
ALTER TABLE `Company`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `Issue_Priority`
--
ALTER TABLE `Issue_Priority`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `issue_tracker_tb`
--
ALTER TABLE `issue_tracker_tb`
  ADD PRIMARY KEY (`IssueId`);

--
-- Indexes for table `Issue_Type`
--
ALTER TABLE `Issue_Type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Product_Team`
--
ALTER TABLE `Product_Team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Status`
--
ALTER TABLE `Status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersdata`
--
ALTER TABLE `usersdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `company` (`company`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log_history`
--
ALTER TABLE `activity_log_history`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Area`
--
ALTER TABLE `Area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Company`
--
ALTER TABLE `Company`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Issue_Priority`
--
ALTER TABLE `Issue_Priority`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issue_tracker_tb`
--
ALTER TABLE `issue_tracker_tb`
  MODIFY `IssueId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Issue_Type`
--
ALTER TABLE `Issue_Type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Product_Team`
--
ALTER TABLE `Product_Team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Status`
--
ALTER TABLE `Status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usersdata`
--
ALTER TABLE `usersdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `usersdata` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`issue_id`) REFERENCES `issue_tracker_tb` (`IssueId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
