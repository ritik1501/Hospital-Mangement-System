-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2020 at 09:02 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `room` varchar(10) NOT NULL,
  `pid` varchar(20) NOT NULL,
  `disease` varchar(60) NOT NULL DEFAULT 'Normal',
  `treatment` varchar(20) NOT NULL DEFAULT 'NOT DONE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`fname`, `lname`, `email`, `contact`, `room`, `pid`, `disease`, `treatment`) VALUES
('Karan', 'Shah', 'karan987', '8574968574', '1E1', 'Kar999', 'Cancer', 'ongoing'),
('RITIK', 'Mishra', 'mishraritik86@gmail.com', '8076694256', '1G1', 'Rit999', 'Headache', 'ongoing');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `pid` varchar(20) NOT NULL,
  `bill` int(20) NOT NULL DEFAULT 0,
  `payment` varchar(30) NOT NULL DEFAULT '0',
  `due` varchar(20) NOT NULL,
  `icu` varchar(5) NOT NULL,
  `general` varchar(5) NOT NULL,
  `other` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`pid`, `bill`, `payment`, `due`, `icu`, `general`, `other`) VALUES
('Kar999', 0, 'done', '165000', '10', '25', '15000'),
('Rit999', 0, '0', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `name` varchar(20) NOT NULL,
  `timing` varchar(40) NOT NULL DEFAULT '8:00A.M-5:00P.M',
  `specialization` varchar(60) NOT NULL DEFAULT 'General',
  `contact` varchar(11) NOT NULL,
  `did` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`name`, `timing`, `specialization`, `contact`, `did`) VALUES
('Anup', '8:00A.M-5:00P.M', 'Cardiologist', '9833677061', 'Anu111'),
('Reema', '0:00A.M-9:00A.M', 'Ear Specialist', '98754865124', 'Ree111'),
('Sunita', '4:00P.M-1:00A.M', 'Surgeon', '9872154886', 'Sun111');

-- --------------------------------------------------------

--
-- Table structure for table `doctorapp`
--

CREATE TABLE `doctorapp` (
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `docapp` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorapp`
--

INSERT INTO `doctorapp` (`fname`, `lname`, `email`, `contact`, `docapp`) VALUES
('Karan', 'Mishra', 'mishraritik86@gmail.com', '8457925221', 'Dr. Ramesh From 6am to 2pm'),
('RITIK', 'Mishra', 'mishraritik86@gmail.com', '9833677061', 'Dr. Ramesh From 6am to 2pm'),
('Roshan', 'Khurana', 'mishraritik545@gmail.com', '5478541254', 'Dr. Suresh From 2pm to 10pm');

-- --------------------------------------------------------

--
-- Table structure for table `doctsalary`
--

CREATE TABLE `doctsalary` (
  `doctid` varchar(20) NOT NULL,
  `salary` varchar(11) NOT NULL DEFAULT '0',
  `cabin` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctsalary`
--

INSERT INTO `doctsalary` (`doctid`, `salary`, `cabin`) VALUES
('Anu111', '85000', '10'),
('Ree111', '75000', '5'),
('Sun111', '60000', '8');

-- --------------------------------------------------------

--
-- Table structure for table `logindb`
--

CREATE TABLE `logindb` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logindb`
--

INSERT INTO `logindb` (`username`, `password`) VALUES
('admin', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `pstatus`
--

CREATE TABLE `pstatus` (
  `pid` varchar(20) NOT NULL,
  `did` varchar(20) NOT NULL DEFAULT 'Not Appoined',
  `treatment` varchar(40) NOT NULL DEFAULT 'ongoing',
  `payment` varchar(20) NOT NULL DEFAULT 'pay later'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pstatus`
--

INSERT INTO `pstatus` (`pid`, `did`, `treatment`, `payment`) VALUES
('Kar999', 'Not Appoined', 'done', 'paid'),
('Rit999', 'Anup', 'ongoing', 'pay later');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `rno` varchar(10) NOT NULL,
  `ward` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `pid` varchar(20) NOT NULL DEFAULT 'empty'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`rno`, `ward`, `type`, `pid`) VALUES
('1E4', '3', 'emergency', 'empty'),
('1G1', '1', 'general', 'Rit999'),
('1G10', '1', 'general', 'empty'),
('1G2', '1', 'general', 'empty'),
('1G3', '1', 'general', 'empty'),
('1I1', '2', 'icu', 'empty'),
('1I2', '2', 'icu', 'empty'),
('2I3', '2', 'icu', 'empty'),
('3E1', '3', 'emergency', 'empty'),
('3E2', '3', 'emergency', 'empty');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sid` varchar(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `work` varchar(40) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `salary` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sid`, `name`, `work`, `contact`, `email`, `salary`) VALUES
('H1', 'Harjeet', 'nurse', '8076694256', 'mishraritik86@gmail.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `doctb`
--
ALTER TABLE `doctb`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `doctsalary`
--
ALTER TABLE `doctsalary`
  ADD PRIMARY KEY (`doctid`);

--
-- Indexes for table `pstatus`
--
ALTER TABLE `pstatus`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
