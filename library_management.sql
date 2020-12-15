-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2020 at 02:07 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` varchar(10) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `publisher` varchar(30) DEFAULT NULL,
  `edition` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `pages` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `isbn`, `publisher`, `edition`, `price`, `pages`) VALUES
('1', 'himu_rimande', 'humayon_ahmed', 'monirul_hok', '3rd', '220', '102'),
('2', 'himur_moddhodupur', 'humayon_ahmed', 'monirul_hok', '2nd', '320', '142'),
('3', 'himur_nil_joshna', 'humayon_ahmed', 'monirul_hok', '4th', '120', '122'),
('4', 'himur_ache_jol', 'humayon_ahmed', 'monirul_hok', '1th', '240', '162'),
('5', 'Pother_pacali', 'bivutivushon_bondopa', 'sottojit_ray', '1th', '440', '262');

-- --------------------------------------------------------

--
-- Table structure for table `issuebook`
--

CREATE TABLE `issuebook` (
  `book_id` varchar(10) DEFAULT NULL,
  `student_id` varchar(10) DEFAULT NULL,
  `bname` varchar(40) DEFAULT NULL,
  `sname` varchar(40) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `branch` varchar(10) DEFAULT NULL,
  `dateOfIssue` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issuebook`
--

INSERT INTO `issuebook` (`book_id`, `student_id`, `bname`, `sname`, `course`, `branch`, `dateOfIssue`) VALUES
('1', '13208', 'himu_rimande', 'Mst._Tuhin_Akter', 'software3', 'main', '0001-12-20'),
('4', '13212', 'himur_ache_jol', 'Musa_Kibria', 'software3', 'main', '0002-12-20'),
('3', '13060', 'himur_nil_jochna', 'Nazmun_Nishat_mishu', 'software3', 'main', '0003-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `book_id` varchar(10) DEFAULT NULL,
  `student_id` varchar(10) DEFAULT NULL,
  `bname` varchar(40) DEFAULT NULL,
  `sname` varchar(40) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `branch` varchar(10) DEFAULT NULL,
  `dateOfIssue` varchar(30) DEFAULT NULL,
  `dateOfReturn` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`book_id`, `student_id`, `bname`, `sname`, `course`, `branch`, `dateOfIssue`, `dateOfReturn`) VALUES
('4', NULL, 'himur_ache_jol', 'Musa_Kibria', 'software', 'main', '2-12-20', '13-12-20'),
('3', NULL, 'himur_nil_jochna', 'Nazmun_Nishat_Mishu', 'software3', 'main', '3-12-20', '15-12-20'),
('1', NULL, 'himu_rimande', 'Mst._Tuhin_Akter', 'software3', 'main', '1-12-20', '12-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(10) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `father` varchar(25) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `branch` varchar(10) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `father`, `course`, `branch`, `year`, `semester`) VALUES
('13212', 'Musa_kibria', 'Abul_hossain', 'software', 'main', '2020', '5th'),
('13060', 'Nazmun_nishat_mishu', 'Ali_akbor', 'software3', 'main', '2020', '6th'),
('13208', 'Mst._Tuhin_Akter', 'rayhan', 'software3', 'main', '2020', '6th'),
('13226', 'Md_Nahidul_Islam', 'rabbi', 'software3', 'main', '2020', '4th'),
('13185', 'Sharia_sultana_eva', 'raju', 'software3', 'main', '2020', '5th');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
