-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2023 at 07:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7987979878, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-08-24 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplyjob`
--

CREATE TABLE `tblapplyjob` (
  `ID` int(10) NOT NULL,
  `UserId` int(5) DEFAULT NULL,
  `JobId` int(5) DEFAULT NULL,
  `Applydate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` varchar(200) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(1, 'Airline Service', ' Airline Services', '2023-08-25 10:54:19', NULL, 0),
(2, ' Health Service', 'Health Services ', '2023-08-25 10:54:42', NULL, 0),
(3, 'IT', 'Information Technology', '2023-08-25 10:55:08', NULL, 0),
(4, 'Education', 'Teaching', '2023-08-25 10:55:31', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbleducation`
--

CREATE TABLE `tbleducation` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) DEFAULT NULL,
  `Qualification` varchar(200) DEFAULT NULL,
  `ClgorschName` varchar(200) DEFAULT NULL,
  `PassingYear` varchar(200) DEFAULT NULL,
  `Stream` varchar(200) DEFAULT NULL,
  `CGPA` decimal(2,0) DEFAULT NULL,
  `Percentage` decimal(4,0) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbleducation`
--

INSERT INTO `tbleducation` (`ID`, `UserID`, `Qualification`, `ClgorschName`, `PassingYear`, `Stream`, `CGPA`, `Percentage`, `CreationDate`) VALUES
(1, 1, 'SEE', ' Jana jagriti Secondary School ', '2018', '', '4', '', '2023-08-25 13:47:15'),
(2, 1, '+2 Level', ' New Capital College ', '2020', 'Science', '4', '', '2023-08-25 13:47:46'),
(3, 1, 'Graduation', 'United Technical College  ', '2025', 'BE computer', '4', '', '2023-08-25 13:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployers`
--

CREATE TABLE `tblemployers` (
  `id` int(11) NOT NULL,
  `ConcernPerson` varchar(150) DEFAULT NULL,
  `EmpEmail` varchar(250) DEFAULT NULL,
  `EmpPassword` varchar(250) DEFAULT NULL,
  `CompnayName` varchar(255) DEFAULT NULL,
  `CompanyTagline` mediumtext DEFAULT NULL,
  `CompnayDescription` mediumtext DEFAULT NULL,
  `CompanyUrl` varchar(255) DEFAULT NULL,
  `CompnayLogo` varchar(200) DEFAULT NULL,
  `noOfEmployee` char(10) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `typeBusinessEntity` varchar(255) DEFAULT NULL,
  `lcation` varchar(255) DEFAULT NULL,
  `establishedIn` char(200) DEFAULT NULL,
  `RegDtae` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployers`
--

INSERT INTO `tblemployers` (`id`, `ConcernPerson`, `EmpEmail`, `EmpPassword`, `CompnayName`, `CompanyTagline`, `CompnayDescription`, `CompanyUrl`, `CompnayLogo`, `noOfEmployee`, `industry`, `typeBusinessEntity`, `lcation`, `establishedIn`, `RegDtae`, `LastUpdationDate`, `Is_Active`) VALUES
(1, 'Sandesh ', 'sandesh@gmail.com', '$2y$12$3bz8aAs.BOMuE4GwAKEDgOXUzw4pI0HMvqVcKieLlMI1I77i/LCeO', 'sandesh motors ', 'Sandesh Motors is Here.', 'We are a very good company. Come join us.', 'https://www.facebook.com/profile.php?id=100014263997614', '1111.png', '15', 'Servicing center', 'Listed Company', 'Bharatpur', '2019', '2023-08-31 12:25:21', '2023-08-31 12:28:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblexperience`
--

CREATE TABLE `tblexperience` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `EmployerName` varchar(200) DEFAULT NULL,
  `EmployementType` varchar(200) DEFAULT NULL,
  `Designation` varchar(200) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `Skills` varchar(200) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblexperience`
--

INSERT INTO `tblexperience` (`ID`, `UserID`, `EmployerName`, `EmployementType`, `Designation`, `FromDate`, `ToDate`, `Skills`, `CreationDate`) VALUES
(1, 1, 'sandesh motors', 'Full Time', ' mechanical engineer', '2023-01-01', '2023-09-31', '', '2023-08-31 13:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbljobs`
--

CREATE TABLE `tbljobs` (
  `jobId` int(11) NOT NULL,
  `employerId` int(11) NOT NULL,
  `jobCategory` varchar(255) DEFAULT NULL,
  `jobTitle` varchar(255) DEFAULT NULL,
  `jobType` varchar(255) DEFAULT NULL,
  `salaryPackage` char(200) DEFAULT NULL,
  `skillsRequired` varchar(255) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `jobLocation` varchar(255) DEFAULT NULL,
  `jobDescription` mediumtext DEFAULT NULL,
  `JobExpdate` date DEFAULT NULL,
  `postinDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `isActive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbljobs`
--

INSERT INTO `tbljobs` (`jobId`, `employerId`, `jobCategory`, `jobTitle`, `jobType`, `salaryPackage`, `skillsRequired`, `experience`, `jobLocation`, `jobDescription`, `JobExpdate`, `postinDate`, `updationDate`, `isActive`) VALUES
(1, 1, 'IT', 'Full Stack Developer', 'Full Time', '100000-150000', 'Linux, .net, JAVA, SQL, ORACLE', '2-5', ' Bharatpur ', 'We are looking for a Full Stack Developer to produce scalable software solutions. You’ll be part of a cross-functional team that’s responsible for the full software development life cycle, from conception to deployment.\r\n\r\nAs a Full Stack Developer, you should be comfortable around both front-end and back-end coding languages, development frameworks and third-party libraries. You should also be a team player with a knack for visual design and utility.', '2023-09-31', '2023-08-31 12:31:17', '2023-08-31 16:47:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbljobseekers`
--

CREATE TABLE `tbljobseekers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(150) DEFAULT NULL,
  `EmailId` varchar(150) DEFAULT NULL,
  `ContactNumber` bigint(15) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  `Resume` varchar(150) DEFAULT NULL,
  `AboutMe` mediumtext DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `Skills` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsActive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbljobseekers`
--

INSERT INTO `tbljobseekers` (`id`, `FullName`, `EmailId`, `ContactNumber`, `Password`, `Resume`, `AboutMe`, `ProfilePic`, `Skills`, `RegDate`, `LastUpdationDate`, `IsActive`) VALUES
(1, 'Dipesh Shrestha', 'dipesh@gmail.com', 1425362514, '$2y$12$YRhJd3t0J/MopTPC7kgGHOL5H/MMBDr4wjuwc/WqmjENLVj8.7b.2', 'da3d4d78b3820d223648f718c12b20891677332211.pdf', 'I can Develop can develop both client and server software.', NULL, 'PHP, HTML, nodejs, MySQL', '2023-08-31 13:36:51', '2023-08-31 13:43:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `ID` int(10) NOT NULL,
  `JobID` int(5) DEFAULT NULL,
  `UserID` int(5) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblmessage`
--

INSERT INTO `tblmessage` (`ID`, `JobID`, `UserID`, `Message`, `Status`, `ResponseDate`) VALUES
(1, 6, 1, 'You are sort listing for the next round.', 'Sort Listed', '2023-02-25 14:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` longtext DEFAULT NULL,
  `Email` varchar(200) NOT NULL,
  `MobileNumber` bigint(10) NOT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<div class=\"iw-heading  style1 vc_custom_1511523196571 border-color-theme\" style=\"outline: none; box-sizing: border-box; margin-top: 0px; margin-right: auto; margin-left: auto; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;; font-size: 13px; width: 670px; margin-bottom: 35px !important;\"><div class=\"iwh-description\" style=\"outline: none; box-sizing: border-box; color: rgb(51, 51, 51); font-size: 16px; line-height: 28px; font-weight: 600;\">Our job portal creates an opportunity for both job seekers and organizations to embrace an easy employment process. Users can register for free on this job portal and they can receive different job posting and updates that is related to their career search or their specific field.</div></div><div class=\"iw-heading  style1 vc_custom_1511523484678 border-color-theme\" style=\"outline: none; box-sizing: border-box; margin-top: 0px; margin-right: auto; margin-left: auto; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;; font-size: 13px; width: 670px; margin-bottom: 30px !important;\"><div class=\"iwh-description\" style=\"outline: none; box-sizing: border-box; color: rgb(51, 51, 51); font-size: 16px; line-height: 28px;\">As an organization, you can make use of our job portal to post different job openings as well as use them for searching for the most deserving candidates for vacancies. This helps to save time and help streamline the right candidate for a particular job.<br style=\"outline: none; box-sizing: border-box;\">Who can use our online job portal?<br style=\"outline: none; box-sizing: border-box;\">Our job portal can be used by both organization to post job openings and job seekers to find the job of their choice. Our job portal creates a platform for people seeking for job opportunities as well as corporations seeking best candidates for job openings, to come together.<br style=\"outline: none; box-sizing: border-box;\">At www.job-here.com, we are one of the best job sites and we also have provisions that make it possible for them to collect the required knowledge and background of each company or candidate. All the jobs are categorically organized in groups related to each field and industry. Job portals, also known as Career portals have aided numerous job seekers get suitable work and given a boost to their career growth.<br style=\"outline: none; box-sizing: border-box;\">So do not hesitate to explore your career opportunities with our job portal and give your career the elevation that you have always been waiting for.</div></div>', '2023-08-31 12:18:06', 0, '2023-08-31 11:00:55'),
(2, 'contactus', 'Contact Us', 'Ramjanaki,Ratnanagar,Chitwan,Nepal', 'info@gmail.com', 1234567890, '2023-08-31 18:19:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tbleducation`
--
ALTER TABLE `tbleducation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblemployers`
--
ALTER TABLE `tblemployers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblexperience`
--
ALTER TABLE `tblexperience`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `tbljobs`
--
ALTER TABLE `tbljobs`
  ADD PRIMARY KEY (`jobId`);

--
-- Indexes for table `tbljobseekers`
--
ALTER TABLE `tbljobseekers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
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
-- AUTO_INCREMENT for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbleducation`
--
ALTER TABLE `tbleducation`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblemployers`
--
ALTER TABLE `tblemployers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblexperience`
--
ALTER TABLE `tblexperience`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbljobs`
--
ALTER TABLE `tbljobs`
  MODIFY `jobId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbljobseekers`
--
ALTER TABLE `tbljobseekers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
