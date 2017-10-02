-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 02, 2017 at 02:27 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `Author`
--

CREATE TABLE `Author` (
  `Author ID` int(11) NOT NULL,
  `First name` varchar(100) DEFAULT NULL,
  `Last name` varchar(100) DEFAULT NULL,
  `Social security number` char(20) DEFAULT NULL,
  `Birth year` int(11) DEFAULT NULL,
  `Author's homepage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Book`
--

CREATE TABLE `Book` (
  `Title` varchar(255) DEFAULT NULL,
  `ISBN` char(13) NOT NULL,
  `Number of pages` int(11) DEFAULT NULL,
  `Edition number` int(11) DEFAULT NULL,
  `Publisher` varchar(100) DEFAULT NULL,
  `Publishing year` int(11) DEFAULT NULL,
  `Author` varchar(60) NOT NULL,
  `Reserved` tinyint(1) NOT NULL,
  `onloan` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Book`
--

INSERT INTO `Book` (`Title`, `ISBN`, `Number of pages`, `Edition number`, `Publisher`, `Publishing year`, `Author`, `Reserved`, `onloan`) VALUES
('The old man and the sea', '9780099908401', 112, NULL, 'Arrow Books Ltd', NULL, 'Ernest Hemingway', 1, 1),
('PHP, MySQL, for Dummies', '9781118213704', 692, 1, 'WILEY', 2013, 'Janet Valade', 0, 0),
('Thinking with type', '9781568989693', 224, 2, 'Princeton Architectural Press', 2010, 'Ellen Lupton', 0, 0),
('The great gatsby', '9781853260414', 144, NULL, 'New ed', 1925, 'F. Scott Fitzgerald', 0, 0),
('Harry Potter', '9789129704211', 325, 1, 'Rabén & Sjögren', 1999, 'J K Rowling', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Relationship`
--

CREATE TABLE `Relationship` (
  `ISBN number` char(13) NOT NULL,
  `Author ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `hash`) VALUES
('Emelie', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Author`
--
ALTER TABLE `Author`
  ADD PRIMARY KEY (`Author ID`);

--
-- Indexes for table `Book`
--
ALTER TABLE `Book`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Author`
--
ALTER TABLE `Author`
  MODIFY `Author ID` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
