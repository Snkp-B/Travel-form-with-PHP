-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2023 at 04:39 PM
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
-- Database: `trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `Sr.no` int(3) NOT NULL,
  `Name` text NOT NULL,
  `Age` int(3) NOT NULL,
  `Gender` varchar(8) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `other` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`Sr.no`, `Name`, `Age`, `Gender`, `Email`, `Phone`, `other`, `dt`) VALUES
(1, 'test name', 21, 'Male', 'example@gmail.com', '1234567890', 'This a a sample information...', '2023-07-31 15:51:36'),
(2, 'Sankalp', 21, 'Male', 'sankalpjbl@gmail.com', '9370239669', 'Excited to see if this works !', '2023-07-31 16:58:15'),
(6, 'sparsh', 18, 'Male', 'sparsh2005@gmail.com', '7249835844', 'Hello....\r\n', '2023-07-31 17:28:35'),
(7, 'sparsh', 18, 'Male', 'sparsh2005@gmail.com', '7249835844', 'Hello....\r\n', '2023-07-31 17:46:53'),
(8, 'Chanda', 42, 'Female', 'chandabhagat@gmail.com', '9370239669', 'Hello...', '2023-07-31 17:47:58'),
(9, 'Chanda', 42, 'Female', 'chandabhagat@gmail.com', '9370239669', 'Hello...', '2023-07-31 17:51:51'),
(10, 'Chanda', 42, 'Female', 'chandabhagat@gmail.com', '9370239669', 'Hello...', '2023-07-31 17:51:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`Sr.no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `Sr.no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
