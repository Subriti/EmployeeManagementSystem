-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 08:58 AM
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
-- Database: `employeedetails`
--

-- --------------------------------------------------------

--
-- Table structure for table `dept_tb`
--

CREATE TABLE `dept_tb` (
  `dept_id` int(11) NOT NULL,
  `dept_code` int(11) NOT NULL,
  `dept_name` varchar(255) NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept_tb`
--

INSERT INTO `dept_tb` (`dept_id`, `dept_code`, `dept_name`, `update_date`) VALUES
(1, 12, 'C++', '2022-07-14'),
(2, 22, 'C#', '2022-07-14'),
(23, 1234, 'Java', '2022-07-08'),
(24, 12, 'Flutter', '2022-07-01'),
(30, 13, 'Python', '2022-07-20'),
(32, 120, 'QBasic', '2022-01-01'),
(50, 15, 'PHP', '2021-12-22');

-- --------------------------------------------------------

--
-- Table structure for table `emp_tb`
--

CREATE TABLE `emp_tb` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(30) NOT NULL,
  `emp_last_name` varchar(30) NOT NULL,
  `emp_address` varchar(60) NOT NULL,
  `emp_email` varchar(60) NOT NULL,
  `emp_salary` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_tb`
--

INSERT INTO `emp_tb` (`emp_id`, `emp_name`, `emp_last_name`, `emp_address`, `emp_email`, `emp_salary`, `dept_id`, `post_id`, `update_date`) VALUES
(1, 'Subriti', 'Aryal', 'Kathmandu', 'subriti@gmail.com', 20000, 23, 1, '2019-09-01'),
(2, 'Sarthak', 'Aryal', 'Kathmandu', 'sarthak@gmail.com', 20000, 30, 2, '2019-09-01'),
(4, 'Apoorva', 'Basnet', 'Biratnagar', 'apoo123@gmail.com', 25000, 24, 4, '2022-07-24'),
(10, 'Shreya', 'Ghimire', 'Chabahil', 'shreya@gmail.com', 20000, 23, 1, '2022-07-23'),
(13, 'Tisha', 'S.', 'Kathmandu', 'tisha234@gmail.com', 22000, 30, 3, '2019-09-01'),
(20, 'Garima', 'C.', 'Birgunj,Nep', 'gecee789@gmail.com', 35000, 1, 4, '2021-08-20'),
(33, 'Bina', 'Aryal', 'Bauddha,Nep', 'bina123@gmail.com', 35000, 2, 5, '2021-03-16'),
(43, 'Shamba', 'Aryal', 'Bauddha,Nep', 'shamba@gmail.com', 30000, 23, 5, '2022-03-06'),
(60, 'Bihani', 'Sitaula', 'Lalitpur', 'bihani@gmail.com', 24000, 30, 4, '2022-03-14'),
(61, 'Prakh', 'S.', 'Lalitpur', 'prakhyat@gmail.com', 30000, 2, 2, '2022-01-14'),
(69, 'Ram', 'Aryal', 'Gothatar', 'ram@gmail.com', 23000, 1, 5, '2021-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `post_tb`
--

CREATE TABLE `post_tb` (
  `post_id` int(11) NOT NULL,
  `post_code` int(11) NOT NULL,
  `post_name` varchar(255) NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_tb`
--

INSERT INTO `post_tb` (`post_id`, `post_code`, `post_name`, `update_date`) VALUES
(1, 10, 'Java Intern', '2022-07-10'),
(2, 20, 'Flutter Intern', '2022-07-13'),
(3, 30, 'Backend Developer', '2022-07-09'),
(4, 40, 'Manager', '2021-07-06'),
(5, 50, 'Developer', '2022-02-02'),
(6, 60, 'Python Intern', '2022-02-02'),
(7, 80, 'Django Developer', '2022-01-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dept_tb`
--
ALTER TABLE `dept_tb`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `emp_tb`
--
ALTER TABLE `emp_tb`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `post_tb`
--
ALTER TABLE `post_tb`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dept_tb`
--
ALTER TABLE `dept_tb`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `emp_tb`
--
ALTER TABLE `emp_tb`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `post_tb`
--
ALTER TABLE `post_tb`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp_tb`
--
ALTER TABLE `emp_tb`
  ADD CONSTRAINT `dept_id` FOREIGN KEY (`dept_id`) REFERENCES `dept_tb` (`dept_id`),
  ADD CONSTRAINT `post_id` FOREIGN KEY (`post_id`) REFERENCES `post_tb` (`post_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
