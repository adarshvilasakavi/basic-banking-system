-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2021 at 11:58 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankings`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `s_no` varchar(100) NOT NULL,
  `account_holder` varchar(100) NOT NULL,
  `account_no` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `ifsc_code` varchar(50) NOT NULL,
  `account_type` enum('savings','current') NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gmail` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `balance` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`s_no`, `account_holder`, `account_no`, `branch`, `ifsc_code`, `account_type`, `phone_no`, `address`, `gmail`, `age`, `balance`) VALUES
('1', 'Sai', '1234567800', 'hyderabad', '123456', 'savings', '9393456789', 'hyderabad', 'Sai@gmail.com', 47, 500000),
('2', 'Venkat', '1234567801', 'kothagudem', '123450', 'savings', '9393123456', 'kothagudem', 'Venkat@gmail.com', 65, 200000),
('3', 'Adarsh', '1234567802', 'hyderabad', '123456', 'savings', '7013442300', 'hyderabad', 'adarsh@gmail.com', 20, 100000),
('4', 'Raghav', '1234567803', 'hyderabad', '123456', 'savings', '9849234567', 'hyderabad', 'raghav@gmail.com', 24, 250000),
('5', 'Aravind', '1234567804', 'kothagudem', '123450', 'savings', '7382345678', 'kothagudem', 'aravind@gmail.com', 22, 100000),
('6', 'Srikanth', '1234567805', 'khammam', '123451', 'savings', '7036567890', 'khammam', 'srikanth@gmail.com', 21, 100000),
('7', 'Bunny', '123456706', 'kothagudem', '123450', 'current', '9319345678', 'kothagudem', 'bunny@gmail.com', 21, 100000),
('8', 'Bharat', '1234567807', 'kothagudem', '123451', 'current', '9390234567', 'kothagudem', 'bharat@gmail.com', 23, 250000),
('9', 'vijay', '1234567808', 'khammam', '123451', 'current', '6303567683', 'khammam', 'vijay@gmail.com', 30, 400000),
('10', 'Sharath', '1234567809', 'hyderabad', '123456', 'savings', '8034671234', 'hyderabad', 'Sharath@gmail.com', 25, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `s_no` int(11) NOT NULL,
  `sender_account_no` varchar(15) NOT NULL,
  `receiver_account_no` varchar(15) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
