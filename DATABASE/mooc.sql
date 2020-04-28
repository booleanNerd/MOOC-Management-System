-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2019 at 08:28 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mooc`
--

-- --------------------------------------------------------

--
-- Table structure for table `basictable`
--

CREATE TABLE `basictable` (
  `dno` varchar(8) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course` varchar(5) NOT NULL,
  `joinYear` year(4) NOT NULL,
  `email` varchar(35) NOT NULL,
  `mobileNo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolled`
--

CREATE TABLE `courseenrolled` (
  `dno` varchar(8) NOT NULL,
  `courseId` varchar(30) NOT NULL,
  `discipline` varchar(38) NOT NULL,
  `courseName` text NOT NULL,
  `instructorName` varchar(30) NOT NULL,
  `duration` int(11) NOT NULL,
  `weekMin` varchar(4) NOT NULL,
  `month` varchar(3) NOT NULL,
  `certificate` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courseupdation`
--

CREATE TABLE `courseupdation` (
  `dno` varchar(8) NOT NULL,
  `courseId` varchar(30) NOT NULL,
  `update` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facultyId` varchar(10) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basictable`
--
ALTER TABLE `basictable`
  ADD PRIMARY KEY (`dno`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
