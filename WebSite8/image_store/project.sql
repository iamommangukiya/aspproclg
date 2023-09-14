-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2023 at 10:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblfoot`
--

CREATE TABLE `tblfoot` (
  `Id` int(15) NOT NULL,
  `fname` int(15) NOT NULL,
  `Email` int(15) NOT NULL,
  `password` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblkhokho`
--

CREATE TABLE `tblkhokho` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pincoded` varchar(10) DEFAULT NULL,
  `nop` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblkhokho`
--

INSERT INTO `tblkhokho` (`id`, `name`, `password`, `phone`, `gender`, `city`, `state`, `pincoded`, `nop`) VALUES
(1, 'gujrat', '$2y$10$OfyfnDoTLbmXvvY6ka6QBuufaUAGII1d7QwuCDhzo.fehMsbUZgTa', '09998208299', 'female', 'Surat', 'as', '395006', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `tblreg`
--

CREATE TABLE `tblreg` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblreg`
--

INSERT INTO `tblreg` (`email`, `password`) VALUES
('ommangukiya@10123@gmail.com', 'Ommangukiya');

-- --------------------------------------------------------

--
-- Table structure for table `tnlcricket`
--

CREATE TABLE `tnlcricket` (
  `cid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `nop` int(11) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tnlcricket`
--

INSERT INTO `tnlcricket` (`cid`, `name`, `password`, `phone`, `gender`, `city`, `state`, `pincode`, `nop`, `role`) VALUES
(14, 'gujrat', '$2y$10$zk9X/sQerpu5WzBuqthDuuRVp0hsumCxXxQkdPYNCnl6MO9InNvAG', '09998208299', 'female', 'Surat', 'sdsd', 9558, 1, 'batsman'),
(15, 'gujrat', '$2y$10$GZgpQYwNT4C0es5t78f4sOlQLpsvvH/ryr1zN3rmpulNCbUVyRFom', '09998208299', 'female', 'Surat', 'sdsd', 9558, 1, 'batsman'),
(16, 'gujrat', '$2y$10$jufbYHTn1tEJeZb0yjCK6ee3jGNK7nqZSnd6VerI6YR3zY6b4RmhG', '09998208299', 'female', 'Surat', 'sdsd', 9558, 1, 'batsman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblkhokho`
--
ALTER TABLE `tblkhokho`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tnlcricket`
--
ALTER TABLE `tnlcricket`
  ADD PRIMARY KEY (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblkhokho`
--
ALTER TABLE `tblkhokho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tnlcricket`
--
ALTER TABLE `tnlcricket`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
