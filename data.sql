-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20230210.98cfc64667
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2023 at 03:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_table`
--

CREATE TABLE `menu_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_table`
--

INSERT INTO `menu_table` (`id`, `name`, `parent_id`, `time`) VALUES
(1, 'Home', 0, '2023-02-10 14:58:56'),
(2, 'About', 0, '2023-02-10 14:59:57'),
(3, 'Services', 0, '2023-02-10 15:01:37'),
(4, 'Contact', 0, '2023-02-10 15:01:48'),
(5, 'CRM', 3, '2023-02-10 15:11:46'),
(6, 'HRM', 3, '2023-02-10 15:12:09'),
(7, 'ERP', 3, '2023-02-10 15:13:23'),
(8, 'HR', 7, '2023-02-10 15:14:12'),
(9, 'FINANCE', 7, '2023-02-10 15:14:35'),
(10, 'Marketing', 7, '2023-02-10 16:34:31'),
(11, 'Inventory', 7, '2023-02-10 16:34:53'),
(12, 'Sales', 7, '2023-02-10 16:43:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_table`
--
ALTER TABLE `menu_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_table`
--
ALTER TABLE `menu_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
