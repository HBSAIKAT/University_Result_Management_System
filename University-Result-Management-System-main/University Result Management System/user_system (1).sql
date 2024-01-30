-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2023 at 11:44 AM
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
-- Database: `user system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_username`, `admin_password`) VALUES
('Habib', '12345678910');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `batch` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `pic` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `email`, `name`, `batch`, `dept`, `dob`, `pic`, `password`) VALUES
(1, 'habibulbasher01644@gmail.com', 'MD HABIBUL BASHER SAIKAT', '40th', 'Computer Science and Engineering', '2023-08-25', 'uploads/wallpaperflare.com_wallpaper.jpg', '12345678'),
(3, 'akbarsami@gmail.com', 'MD Akber Sami', '41th', 'Electrical and Electronics Engineering', '2002-08-04', 'uploads/wallpaperflare.com_wallpaper (3).jpg', '6251462514'),
(4, 'sabbir@gmail.com', 'Sabbir', '39th', 'CIVIL', '2001-12-23', 'uploads/logo.png', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `ID` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(60) NOT NULL,
  `designation` varchar(60) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `pic` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`ID`, `email`, `name`, `designation`, `dept`, `dob`, `pic`, `password`) VALUES
(1, 'Sakib1102@gmail.com', 'Sakibul Hasan', '', 'CSE', '1998-04-12', 'uploads/wallpaperflare.com_wallpaper (1).jpg', '12345678'),
(3, 'rabbi@gmail.com', 'Rabbi Hassan', '', 'EEE', '1988-03-04', 'uploads/schoolimg.jpg', 'abcdef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
