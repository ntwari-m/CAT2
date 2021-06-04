-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 08:03 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 5689784589, 'admin@gmail.com', 'e6e061838856bf47e1de730719fb2609', '2020-01-21 11:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `ID` int(10) NOT NULL,
  `BookingID` int(10) DEFAULT NULL,
  `ServiceID` int(10) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `EventDate` varchar(200) DEFAULT NULL,
  `EventStartingtime` varchar(200) DEFAULT NULL,
  `EventEndingtime` varchar(200) DEFAULT NULL,
  `VenueAddress` mediumtext DEFAULT NULL,
  `EventType` varchar(200) DEFAULT NULL,
  `AdditionalInformation` mediumtext DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`ID`, `BookingID`, `ServiceID`, `Name`, `MobileNumber`, `Email`, `EventDate`, `EventStartingtime`, `EventEndingtime`, `VenueAddress`, `EventType`, `AdditionalInformation`, `BookingDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 233064613, 1, 'ussama', 8798787977, 'ussama@gmail.com', '2020-01-31', '2 p.m', '10 p.m', 'nyarugenge, kimisagara', 'Engagement', 'jguytugvnvjhgh', '2020-01-24 12:46:29', 'Approved', 'Approved', '2021-06-03 12:23:30'),
(2, 750016128, 1, 'Jone', 4654644648, 'jon@gmail.com', '2020-01-30', '2 p.m', '7 p.m', 'kicukiro Gikondo', 'Social', 'kjhiuyughjvhsdadfs', '2020-01-28 05:44:37', 'Approved', 'Approved', '2021-06-03 12:23:57'),
(3, 215398258, 3, 'maliki', 7846466478, 'malik@gmail.com', '2020-01-29', '1 p.m', '10 p.m', 'Musanze bereshi', 'Government', 'kjiououbouiosydieskjfhbbcxmcbjhfkdsfkjdljkdljfkdn', '2020-01-28 05:47:10', 'Approved', 'Approved', '2021-06-03 12:25:18'),
(4, 206423586, 3, 'abdou', 5555643433, 'abdou@gmail.com', '2020-02-02', '11 a.m', '3 p.m', 'nyanza mukoro', 'Sangeet', 'ghjgjhuywergcnxcjyhgfsdnbvxnzcgdsygtewghdfc', '2020-01-29 05:37:40', 'YES', 'Approved', '2021-06-03 12:27:19'),
(5, 365319422, 5, 'Test', 8097867576, 'test@gmail.com', '2020-02-12', '7 p.m', '10 p.m', 'R-789 KW Raj Nagar Ghaziabad', 'Get Together', 'xskjhj nbzxjhgagwejmb gdjswgdscbxzmnb', '2020-01-29 05:39:29', 'Cancelled', 'Cancelled', '2020-01-29 05:44:23'),
(6, 534626649, 6, 'tyr', 7674343543, 'try@gmail.com', '2020-01-31', '9 a.m', '4 p.m', 'Rusizi', 'Concert', 'gjydywetyuavxeweytugauygshghwgfdyasywsgdg', '2020-01-29 05:41:01', 'approved', 'Approved', '2021-06-03 19:31:27'),
(7, 761769920, 1, 'fry', 1234567890, 'fry@gmail.com', '2020-02-29', '6 p.m', '10 p.m', 'kigali simba', 'Wedding', 'NA', '2020-02-10 15:32:17', 'Test remark', 'Approved', '2021-06-03 12:29:31'),
(8, 112862429, 1, 'NTWARI', 782345678, 'abdoulmalikntwari@gmail.com', '2021-05-23', '11 a.m', '9 p.m', 'KIGALI', 'Post Wedding', 'WRTY', '2021-05-23 19:25:49', NULL, NULL, NULL),
(9, 897858970, 3, 'hhhhh', 45676878, 'hhhh@gmail.com', '2021-06-04', '5 a.m', '4 p.m', 'hhhhh', 'Anniversary', 'jgfcghvkhvk fcityvkhg\r\njhvkh', '2021-06-01 10:49:05', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbleventtype`
--

CREATE TABLE `tbleventtype` (
  `ID` int(10) NOT NULL,
  `EventType` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbleventtype`
--

INSERT INTO `tbleventtype` (`ID`, `EventType`, `CreationDate`) VALUES
(1, 'Anniversary', '2020-01-22 07:01:39'),
(2, 'Birthday Party', '2020-01-22 07:02:34'),
(3, 'Charity', '2020-01-22 07:02:43'),
(4, 'Cocktail', '2020-01-22 07:03:00'),
(5, 'College', '2020-01-22 07:03:11'),
(6, 'Community', '2020-01-22 07:03:24'),
(7, 'Concert', '2020-01-22 07:03:35'),
(8, 'Engagement', '2020-01-22 07:03:51'),
(9, 'Get Together', '2020-01-22 07:04:04'),
(10, 'Government', '2020-01-22 07:04:15'),
(11, 'Night Club', '2020-01-22 07:04:26'),
(13, 'Post Wedding', '2020-01-22 07:05:01'),
(14, 'Pre Engagement', '2020-01-22 07:05:18'),
(15, 'Religious', '2020-01-22 07:05:27'),
(16, 'Sangeet', '2020-01-22 07:05:43'),
(17, 'Social', '2020-01-22 07:05:58'),
(18, 'Wedding', '2020-01-22 07:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(100) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<b>Online DJ Management System</b><div><b>ODMS&nbsp;is one of the Internet\'s largest and trusted Online DJ Booking Service.</b></div><div><b><br></b></div><div><b>&nbsp; Contact us and help you to enjoy your party.</b></div>', NULL, NULL, '2021-06-02 22:03:13'),
(2, 'contactus', 'Contact Us', 'KN 201 , KIGALI RWANDA', 'abdoulmalikntwari@gmail.com    dusengeussama@gmail.com', 782008357, '2021-06-02 22:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblservice`
--

CREATE TABLE `tblservice` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `SerDes` varchar(250) NOT NULL,
  `ServicePrice` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblservice`
--

INSERT INTO `tblservice` (`ID`, `ServiceName`, `SerDes`, `ServicePrice`, `CreationDate`) VALUES
(1, 'Wedding DJ', '(we install the DJ equipment before your ceremony or after your wedding breakfast)', '300000', '2020-01-24 07:17:43'),
(2, 'Party DJ', '(we install the DJ equipment 1 hour before your selected event start time)', '200000', '2020-01-24 07:18:32'),
(3, 'Ceremony Music', 'Our ceremony music service is a popular add on to our wedding DJ stay all day hire.', '70000', '2020-01-24 07:19:14'),
(8, 'Birth Day Party', 'we install our equipment before your party', '90000', '2021-06-01 21:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `MsgDate` timestamp NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `Name`, `MobileNumber`, `Email`, `Message`, `MsgDate`, `IsRead`) VALUES
(1, 'Test', 7887878787, 'test@gmail.com', 'Hello', '2020-01-24 07:00:34', 1),
(3, 'Test', 7654659878, 'test@gmail.com', 'Sample test.', '2020-01-29 06:05:08', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ServiceID` (`ServiceID`),
  ADD KEY `EventType` (`EventType`);

--
-- Indexes for table `tbleventtype`
--
ALTER TABLE `tbleventtype`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventType` (`EventType`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservice`
--
ALTER TABLE `tblservice`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbleventtype`
--
ALTER TABLE `tbleventtype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservice`
--
ALTER TABLE `tblservice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
