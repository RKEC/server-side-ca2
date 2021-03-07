-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2021 at 06:05 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ca2`
--

-- --------------------------------------------------------

--
-- Table structure for table `os`
--

CREATE TABLE `os` (
  `osID` int(11) NOT NULL,
  `osName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `os`
--

INSERT INTO `os` (`osID`, `osName`) VALUES
(1, 'Android'),
(2, 'IOS'),
(3, 'Blackberry'),
(4, 'Windows');

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `phoneID` int(11) NOT NULL,
  `dateAdded` date NOT NULL,
  `osID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`phoneID`, `dateAdded`, `osID`, `name`, `price`, `image`) VALUES
(1, '2020-12-12', 2, 'iPhone 12', '999.00', ''),
(2, '2020-12-30', 2, 'iPhone Xr', '750.00', ''),
(3, '2021-01-20', 2, 'iPhone 11', '875.00', ''),
(4, '2021-02-01', 2, 'iPhone 12 Pro', '1250.20', ''),
(5, '2020-11-01', 1, 'OnePlus 8 Pro', '1205.00', ''),
(6, '2020-12-30', 1, 'OnePlus 8t', '750.10', ''),
(7, '2021-01-21', 1, 'Galaxy Note 20', '999.00', ''),
(8, '2021-01-21', 1, 'Google Pixel 4', '600.00', ''),
(9, '2021-01-07', 1, 'Huawei P Smart', '160.50', ''),
(10, '2020-08-01', 3, 'BlackBerry PRIV', '200.00', ''),
(11, '2020-11-07', 3, 'BlackBerry PRD-65004-041', '120.00', ''),
(12, '2020-09-10', 4, 'Nokia Lumia 635', '286.30', ''),
(13, '2020-11-09', 4, 'Nokia Lumia 200', '143.00', ''),
(14, '2021-03-04', 2, 'iPhone 36 Pro', '11000.00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`osID`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`phoneID`),
  ADD KEY `osID` (`osID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `os`
--
ALTER TABLE `os`
  MODIFY `osID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `phoneID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `phones`
--
ALTER TABLE `phones`
  ADD CONSTRAINT `phones_ibfk_1` FOREIGN KEY (`osID`) REFERENCES `os` (`osID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
