-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2020 at 12:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `atid` int(11) NOT NULL,
  `atdate` varchar(20) NOT NULL,
  `atcheckin` varchar(20) NOT NULL,
  `atcheckout` varchar(20) NOT NULL,
  `eid` int(11) NOT NULL,
  `attype` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblbranch`
--

CREATE TABLE `tblbranch` (
  `brid` int(11) NOT NULL,
  `brname` varchar(200) NOT NULL,
  `cpid` int(11) NOT NULL,
  `brdetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbranch`
--

INSERT INTO `tblbranch` (`brid`, `brname`, `cpid`, `brdetails`) VALUES
(1, 'branch', 1, 'branch details'),
(2, 'branch', 5, 'branch');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `cpid` int(11) NOT NULL,
  `cpname` varchar(200) NOT NULL,
  `cplogo` varchar(200) NOT NULL,
  `cpdetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`cpid`, `cpname`, `cplogo`, `cpdetails`) VALUES
(1, 'Aptech', 'aptech.png', 'this testing company'),
(2, 'Hussain', 'clogo', 'This is my company'),
(3, 'second comapny name', 'clogo2', 'thisi is second comp'),
(4, 'third', 'third', 'thrid'),
(5, 'third', 'third', 'thrid'),
(6, 'demo', 'D:\\xampp\\tmp\\phpDBA.tmp', 'demo'),
(7, 'Hussain', '1600281626.jpeg', 'dfwef'),
(8, 'Hussain', 'download.png', 'kjlkj'),
(9, 'Hussain', 'download.png', 'jjhjl'),
(10, 'dksl', '628897785png', 'kjlkjl'),
(11, 'hkh', '1963252960.png', 'lkjlkj'),
(12, 'fkls', '1752049670.png', 'jlkjlk');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE `tbldepartment` (
  `did` int(11) NOT NULL,
  `dname` varchar(200) NOT NULL,
  `brid` int(11) NOT NULL,
  `ddetails` text NOT NULL,
  `dhead` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`did`, `dname`, `brid`, `ddetails`, `dhead`) VALUES
(1, 'dep', 1, 'deoq', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbldesignation`
--

CREATE TABLE `tbldesignation` (
  `dsgid` int(11) NOT NULL,
  `dsgtitle` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldesignation`
--

INSERT INTO `tbldesignation` (`dsgid`, `dsgtitle`) VALUES
(1, 'title');

-- --------------------------------------------------------

--
-- Table structure for table `tbldocuments`
--

CREATE TABLE `tbldocuments` (
  `dcid` int(11) NOT NULL,
  `dctitle` text NOT NULL,
  `dcfile` text NOT NULL,
  `eid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `eid` int(11) NOT NULL,
  `efname` varchar(200) NOT NULL,
  `elast` varchar(200) NOT NULL,
  `edob` date NOT NULL,
  `eemail` varchar(200) NOT NULL,
  `ephone` varchar(20) NOT NULL,
  `eaddress` text NOT NULL,
  `ecity` varchar(50) NOT NULL,
  `ecountry` varchar(50) NOT NULL,
  `eimage` varchar(200) NOT NULL,
  `eophone` varchar(20) NOT NULL,
  `eoemail` varchar(20) NOT NULL,
  `eemphone` varchar(50) NOT NULL,
  `estatus` int(11) NOT NULL DEFAULT 1,
  `etid` int(11) NOT NULL,
  `dsgid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `brid` int(11) NOT NULL,
  `cpid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`eid`, `efname`, `elast`, `edob`, `eemail`, `ephone`, `eaddress`, `ecity`, `ecountry`, `eimage`, `eophone`, `eoemail`, `eemphone`, `estatus`, `etid`, `dsgid`, `did`, `brid`, `cpid`) VALUES
(1, 'first', 'last', '0000-00-00', 'email.com', '7878787878', 'address', 'city', 'country', 'img', '7878787878', 'eoemail.com', '7878787878', 1, 3, 1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblemptype`
--

CREATE TABLE `tblemptype` (
  `etid` int(11) NOT NULL,
  `ettitle` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblemptype`
--

INSERT INTO `tblemptype` (`etid`, `ettitle`) VALUES
(1, 'title\r\n'),
(2, 'title2'),
(3, 'paid intent'),
(4, 'unpaid intent');

-- --------------------------------------------------------

--
-- Table structure for table `tblleave`
--

CREATE TABLE `tblleave` (
  `lid` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `lqid` int(11) NOT NULL,
  `lqty` varchar(20) NOT NULL,
  `lstartdate` float NOT NULL,
  `lenddate` float NOT NULL,
  `ldetails` text NOT NULL,
  `laltereid` int(11) NOT NULL,
  `lemphone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblleavequota`
--

CREATE TABLE `tblleavequota` (
  `lqid` int(11) NOT NULL,
  `lqtitle` varchar(200) NOT NULL,
  `lqallowed` float NOT NULL,
  `lqpending` float NOT NULL,
  `lqstartdate` varchar(20) NOT NULL,
  `lqenddate` varchar(20) NOT NULL,
  `eid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `vbranch`
-- (See below for the actual view)
--
CREATE TABLE `vbranch` (
`brid` int(11)
,`brname` varchar(200)
,`cpid` int(11)
,`brdetails` text
,`cpname` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vdepartment`
-- (See below for the actual view)
--
CREATE TABLE `vdepartment` (
`did` int(11)
,`dname` varchar(200)
,`brid` int(11)
,`ddetails` text
,`dhead` int(11)
,`brname` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vemp`
-- (See below for the actual view)
--
CREATE TABLE `vemp` (
`eid` int(11)
,`efname` varchar(200)
,`elast` varchar(200)
,`eemail` varchar(200)
,`ephone` varchar(20)
,`eaddress` text
,`ecity` varchar(50)
,`ecountry` varchar(50)
,`eimage` varchar(200)
,`eophone` varchar(20)
,`eoemail` varchar(20)
,`eemphone` varchar(50)
,`estatus` int(11)
,`etid` int(11)
,`dsgid` int(11)
,`did` int(11)
,`brid` int(11)
,`cpid` int(11)
,`dsgtitle` varchar(200)
,`dname` varchar(200)
,`brname` varchar(200)
,`cpname` varchar(200)
);

-- --------------------------------------------------------

--
-- Structure for view `vbranch`
--
DROP TABLE IF EXISTS `vbranch`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vbranch`  AS  select `a`.`brid` AS `brid`,`a`.`brname` AS `brname`,`a`.`cpid` AS `cpid`,`a`.`brdetails` AS `brdetails`,`b`.`cpname` AS `cpname` from (`tblbranch` `a` join `tblcompany` `b` on(`a`.`cpid` = `b`.`cpid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vdepartment`
--
DROP TABLE IF EXISTS `vdepartment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vdepartment`  AS  select `a`.`did` AS `did`,`a`.`dname` AS `dname`,`a`.`brid` AS `brid`,`a`.`ddetails` AS `ddetails`,`a`.`dhead` AS `dhead`,`b`.`brname` AS `brname` from (`tbldepartment` `a` join `tblbranch` `b` on(`a`.`brid` = `b`.`brid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vemp`
--
DROP TABLE IF EXISTS `vemp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vemp`  AS  select `a`.`eid` AS `eid`,`a`.`efname` AS `efname`,`a`.`elast` AS `elast`,`a`.`eemail` AS `eemail`,`a`.`ephone` AS `ephone`,`a`.`eaddress` AS `eaddress`,`a`.`ecity` AS `ecity`,`a`.`ecountry` AS `ecountry`,`a`.`eimage` AS `eimage`,`a`.`eophone` AS `eophone`,`a`.`eoemail` AS `eoemail`,`a`.`eemphone` AS `eemphone`,`a`.`estatus` AS `estatus`,`a`.`etid` AS `etid`,`a`.`dsgid` AS `dsgid`,`a`.`did` AS `did`,`a`.`brid` AS `brid`,`a`.`cpid` AS `cpid`,`b`.`dsgtitle` AS `dsgtitle`,`c`.`dname` AS `dname`,`d`.`brname` AS `brname`,`e`.`cpname` AS `cpname` from ((((`tblemployee` `a` join `tbldesignation` `b` on(`a`.`dsgid` = `b`.`dsgid`)) join `tbldepartment` `c` on(`a`.`did` = `c`.`did`)) join `tblbranch` `d` on(`a`.`brid` = `d`.`brid`)) join `tblcompany` `e` on(`a`.`cpid` = `e`.`cpid`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD PRIMARY KEY (`atid`),
  ADD KEY `eid` (`eid`);

--
-- Indexes for table `tblbranch`
--
ALTER TABLE `tblbranch`
  ADD PRIMARY KEY (`brid`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`cpid`);

--
-- Indexes for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `tbldesignation`
--
ALTER TABLE `tbldesignation`
  ADD PRIMARY KEY (`dsgid`);

--
-- Indexes for table `tbldocuments`
--
ALTER TABLE `tbldocuments`
  ADD PRIMARY KEY (`dcid`);

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `etid` (`etid`),
  ADD KEY `dsgid` (`dsgid`),
  ADD KEY `did` (`did`),
  ADD KEY `brid` (`brid`),
  ADD KEY `cpid` (`cpid`);

--
-- Indexes for table `tblemptype`
--
ALTER TABLE `tblemptype`
  ADD PRIMARY KEY (`etid`);

--
-- Indexes for table `tblleave`
--
ALTER TABLE `tblleave`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `tblleavequota`
--
ALTER TABLE `tblleavequota`
  ADD PRIMARY KEY (`lqid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `atid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblbranch`
--
ALTER TABLE `tblbranch`
  MODIFY `brid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `cpid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldesignation`
--
ALTER TABLE `tbldesignation`
  MODIFY `dsgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldocuments`
--
ALTER TABLE `tbldocuments`
  MODIFY `dcid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblemployee`
--
ALTER TABLE `tblemployee`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblemptype`
--
ALTER TABLE `tblemptype`
  MODIFY `etid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblleave`
--
ALTER TABLE `tblleave`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblleavequota`
--
ALTER TABLE `tblleavequota`
  MODIFY `lqid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD CONSTRAINT `tblemployee_ibfk_1` FOREIGN KEY (`etid`) REFERENCES `tblemptype` (`etid`),
  ADD CONSTRAINT `tblemployee_ibfk_2` FOREIGN KEY (`dsgid`) REFERENCES `tbldesignation` (`dsgid`),
  ADD CONSTRAINT `tblemployee_ibfk_3` FOREIGN KEY (`did`) REFERENCES `tbldepartment` (`did`),
  ADD CONSTRAINT `tblemployee_ibfk_4` FOREIGN KEY (`brid`) REFERENCES `tblbranch` (`brid`),
  ADD CONSTRAINT `tblemployee_ibfk_5` FOREIGN KEY (`cpid`) REFERENCES `tblcompany` (`cpid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
