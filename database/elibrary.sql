-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2019 at 06:03 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `e_book`
--

CREATE TABLE `e_book` (
  `CALLNO` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `AUTHOR` varchar(200) DEFAULT NULL,
  `PUBLISHER` varchar(100) DEFAULT NULL,
  `QUANTITY` double DEFAULT NULL,
  `ISSUED` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e_book`
--

INSERT INTO `e_book` (`CALLNO`, `NAME`, `AUTHOR`, `PUBLISHER`, `QUANTITY`, `ISSUED`) VALUES
('125', 'Saral Notes', 'Dipendra Bahadur Chand', 'VSIC', 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `e_issuebook`
--

CREATE TABLE `e_issuebook` (
  `CALLNO` varchar(200) NOT NULL,
  `STUDENTID` varchar(50) NOT NULL,
  `STUDENTNAME` varchar(200) DEFAULT NULL,
  `STUDENTMOBILE` double DEFAULT NULL,
  `ISSUEDDATE` datetime DEFAULT NULL,
  `RETURNSTATUS` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `e_librarian`
--

CREATE TABLE `e_librarian` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(200) DEFAULT NULL,
  `PASSWORD` varchar(200) DEFAULT NULL,
  `EMAIL` varchar(200) DEFAULT NULL,
  `MOBILE` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e_librarian`
--

INSERT INTO `e_librarian` (`ID`, `NAME`, `PASSWORD`, `EMAIL`, `MOBILE`) VALUES
(0, 'Dipendra Bahadur Chand', 'dip123', 'dip@gmail.com', 9843681599),
(1, 'Dipendra Bahadur Chand', 'dip123', 'dip@gmail.com', 9843681599);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `e_book`
--
ALTER TABLE `e_book`
  ADD PRIMARY KEY (`CALLNO`);

--
-- Indexes for table `e_librarian`
--
ALTER TABLE `e_librarian`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
