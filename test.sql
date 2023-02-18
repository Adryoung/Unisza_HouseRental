-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 07:15 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `idBooking` int(11) NOT NULL,
  `noMatrik` varchar(10) NOT NULL,
  `idHouse` int(11) NOT NULL,
  `dateStart` date NOT NULL,
  `dateEnd` date NOT NULL,
  `period` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`idBooking`, `noMatrik`, `idHouse`, `dateStart`, `dateEnd`, `period`) VALUES
(1, '062825', 1, '2023-01-06', '2023-03-16', 123);

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `idHouse` int(11) NOT NULL,
  `icOwner` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `noTel` varchar(20) NOT NULL,
  `room` int(10) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`idHouse`, `icOwner`, `name`, `noTel`, `room`, `address`, `city`, `description`, `price`) VALUES
(1, '030303110299', 'ashraf', '01131762566', 2, 'no.366 jalan anggur ', 'Jerteh', 'berdekatan dengan Un', 'RM200');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `name` varchar(20) DEFAULT NULL,
  `icOwner` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `noTel` varchar(20) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`name`, `icOwner`, `email`, `address`, `noTel`, `pass`) VALUES
('ashraf', '030303110299', 'ashrffahmi03@gmail.com', 'Kg Temiang', '01131762566', '123');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(50) DEFAULT NULL,
  `noMatrik` varchar(10) NOT NULL,
  `icStudent` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `noTel` varchar(20) DEFAULT NULL,
  `pass` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `noMatrik`, `icStudent`, `email`, `address`, `noTel`, `pass`) VALUES
('Mellynna Abdulla', '062548', '030109011270', 'mell@gmail.com', 'Unisza Kampus Besut , Kg Tembila', '0177446189', '123'),
('ashraf', '062825', '030303011029', 'ashraffahmi03@gmail.com', 'kg temiang', '01131762566', '123'),
('Mellynna Abdullah', '062835', '03333333', 'unisza@gmail', 'Unisza Kampus Besut', '0177446189', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE `tbl_level` (
  `id` int(4) NOT NULL,
  `levelID` varchar(10) NOT NULL,
  `levelName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_level`
--

INSERT INTO `tbl_level` (`id`, `levelID`, `levelName`) VALUES
(1, 'L1', 'admin'),
(2, 'L2', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_persons`
--

CREATE TABLE `tbl_persons` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `cars` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_persons`
--

INSERT INTO `tbl_persons` (`id`, `fname`, `lname`, `cars`, `img`) VALUES
(38, 'Ashraf', 'Fahmi', 'audi', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(4) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `levelID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `levelID`) VALUES
(3, 'admin1', 'fCl7cNJ3VYN0pEdj8czb0g==', 'L1'),
(4, 'user1', 'fCl7cNJ3VYN0pEdj8czb0g==', 'L2');

-- --------------------------------------------------------

--
-- Table structure for table `test1`
--

CREATE TABLE `test1` (
  `file` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test1`
--

INSERT INTO `test1` (`file`) VALUES
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(0x53757261745f5361685f50656c616a61725f3036323832352e706466),
(0x53757261745f5361685f50656c616a61725f3036323832352e706466);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`idBooking`),
  ADD KEY `noMatrik` (`noMatrik`),
  ADD KEY `idHouse` (`idHouse`);

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`idHouse`),
  ADD KEY `icOwner` (`icOwner`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`icOwner`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`noMatrik`);

--
-- Indexes for table `tbl_level`
--
ALTER TABLE `tbl_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_persons`
--
ALTER TABLE `tbl_persons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `idBooking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `house`
--
ALTER TABLE `house`
  MODIFY `idHouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_persons`
--
ALTER TABLE `tbl_persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`noMatrik`) REFERENCES `student` (`noMatrik`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`idHouse`) REFERENCES `house` (`idHouse`);

--
-- Constraints for table `house`
--
ALTER TABLE `house`
  ADD CONSTRAINT `house_ibfk_1` FOREIGN KEY (`icOwner`) REFERENCES `owner` (`icOwner`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
