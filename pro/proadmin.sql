-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2019 at 12:12 PM
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
-- Database: `proadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(5) NOT NULL,
  `catname` varchar(50) NOT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `catname`, `img`) VALUES
(1, 'Computers', 'Online-Exam-2-454x300.jpg'),
(7, 'General Knowledge', '7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `qid` int(5) NOT NULL,
  `subname` varchar(50) NOT NULL,
  `que` varchar(200) NOT NULL,
  `opt1` varchar(40) NOT NULL,
  `opt2` varchar(40) NOT NULL,
  `opt3` varchar(40) NOT NULL,
  `opt4` varchar(40) NOT NULL,
  `ans` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`qid`, `subname`, `que`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, 'css', 'what is html?', 'hypertext markup language', 'hypertext madeup language', 'hightext markup language', 'hightext madeup language', 'hypertext makeup language'),
(2, 'c++', 'how many type is inheritance is there', '5', '4', '6', '3', '5'),
(3, 'css', 'which of the following tag is used to mark a begining of paragraph ?', 'TD', 'br', 'p', 'tr', 'p'),
(4, 'css', 'From which tag descriptive list starts ?', 'LL', 'DD', 'DL', 'DS', 'DL'),
(5, 'css', 'Correct HTML tag for the largest heading is', 'head', 'h6', 'heading', 'h1', 'h1'),
(6, 'css', 'The attribute of <form> tag', 'method', 'action', 'both (a) & (b)', 'none of these', 'both (a) & (b)');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `regid` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`regid`, `name`, `contact`, `emailid`, `password`) VALUES
(4, 'bb', '1111111111', 'bb@gmail.com', 'bb'),
(6, 'agya', '9876543210', 'agya86@gmail.com', 'agya');

-- --------------------------------------------------------

--
-- Table structure for table `reguser`
--

CREATE TABLE `reguser` (
  `uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reguser`
--

INSERT INTO `reguser` (`uid`, `name`, `contact`, `email`, `password`) VALUES
(1, 'aaa', '1234567890', 'tttt@gmail.com', 'aaa'),
(2, 'xyz', '9876543210', 'xyz@gmail.com', 'qwert');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `resultid` int(5) NOT NULL,
  `uid` int(5) NOT NULL,
  `marks` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`resultid`, `uid`, `marks`) VALUES
(5, 1, 80),
(6, 1, 60),
(7, 2, 95);

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `catid` int(5) NOT NULL,
  `subid` int(5) NOT NULL,
  `subname` varchar(59) NOT NULL,
  `nop` int(5) NOT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`catid`, `subid`, `subname`, `nop`, `img`) VALUES
(7, 1, 'css', 3, '1234.jpg'),
(7, 4, 'management', 5, 'images.png'),
(1, 6, 'python', 5, '5.jpg'),
(1, 7, 'c++', 3, '6.jpg'),
(7, 8, 'current affairs', 1, 'images.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `tid` int(5) NOT NULL,
  `catid` int(5) NOT NULL,
  `subid` int(5) NOT NULL,
  `testname` varchar(50) NOT NULL,
  `maxmarks` int(4) NOT NULL,
  `noof_que` int(11) NOT NULL,
  `testtime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`regid`);

--
-- Indexes for table `reguser`
--
ALTER TABLE `reguser`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`resultid`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`subid`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `qid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `regid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reguser`
--
ALTER TABLE `reguser`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `resultid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `subid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `tid` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
