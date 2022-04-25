-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 10:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `adaptor`
--

CREATE TABLE `adaptor` (
  `adaptor_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adaptor`
--

INSERT INTO `adaptor` (`adaptor_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'ADAPTOR', 'm', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `add_master`
--

CREATE TABLE `add_master` (
  `master_id` int(55) NOT NULL,
  `brand` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_master`
--

INSERT INTO `add_master` (`master_id`, `brand`) VALUES
(1, 'HPE'),
(2, 'SUN'),
(3, 'm'),
(4, 'n'),
(5, 'n'),
(6, 'p'),
(7, 'p'),
(8, 'qwerty'),
(9, 'fghj'),
(10, 'abhi'),
(23, 'ytrewq'),
(24, 'ytrewq'),
(25, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `battery`
--

CREATE TABLE `battery` (
  `battery_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blade_server`
--

CREATE TABLE `blade_server` (
  `blade_server_id` int(55) NOT NULL,
  `test_date` varchar(55) DEFAULT NULL,
  `test_by` varchar(55) DEFAULT NULL,
  `mach_type` varchar(55) DEFAULT NULL,
  `mach_no` varchar(55) NOT NULL,
  `service_tag` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `spar_type` varchar(55) NOT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt _part` varchar(55) NOT NULL,
  `seri_no` varchar(55) DEFAULT NULL,
  `alt _serial` varchar(55) NOT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `barc_no` varchar(55) DEFAULT NULL,
  `qty` varchar(55) NOT NULL,
  `work_not` varchar(55) DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL,
  `refe_location` varchar(55) NOT NULL,
  `pare_child` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cable`
--

CREATE TABLE `cable` (
  `cable_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cf_backplane`
--

CREATE TABLE `cf_backplane` (
  `cf_backplane_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cf_backplane`
--

INSERT INTO `cf_backplane` (`cf_backplane_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'COOLING FAN BACKPLANE', 'HPE', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `chasis`
--

CREATE TABLE `chasis` (
  `chasis_id` int(55) NOT NULL,
  `test_date` varchar(55) DEFAULT NULL,
  `test_by` varchar(55) DEFAULT NULL,
  `mach_type` varchar(55) DEFAULT NULL,
  `mach_no` varchar(55) NOT NULL,
  `service_tag` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `spar_type` varchar(55) NOT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt _part` varchar(55) NOT NULL,
  `seri_no` varchar(55) DEFAULT NULL,
  `alt _serial` varchar(55) NOT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `barc_no` varchar(55) DEFAULT NULL,
  `qty` varchar(55) NOT NULL,
  `work_not` varchar(55) DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL,
  `refe_location` varchar(55) NOT NULL,
  `pare_child` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cisco_chasis`
--

CREATE TABLE `cisco_chasis` (
  `cisco_chasis_id` int(55) NOT NULL,
  `test_date` varchar(55) DEFAULT NULL,
  `test_by` varchar(55) DEFAULT NULL,
  `mach_type` varchar(55) DEFAULT NULL,
  `mach_no` varchar(55) NOT NULL,
  `service_tag` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `spar_type` varchar(55) NOT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt _part` varchar(55) NOT NULL,
  `seri_no` varchar(55) DEFAULT NULL,
  `alt _serial` varchar(55) NOT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `barc_no` varchar(55) DEFAULT NULL,
  `qty` varchar(55) NOT NULL,
  `work_not` varchar(55) DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL,
  `refe_location` varchar(55) NOT NULL,
  `pare_child` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cooling_fan`
--

CREATE TABLE `cooling_fan` (
  `cf_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cooling_fan`
--

INSERT INTO `cooling_fan` (`cf_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'Cooling Fan', 'HPE', '1', '1', '1', '1', '', '1', '1', '`1', '1', '1', '1'),
(2, 'COOLING FAN', 'HPE', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'COOLING FAN', 'HPE', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `desktop`
--

CREATE TABLE `desktop` (
  `desktop_id` int(55) NOT NULL,
  `test_date` varchar(55) DEFAULT NULL,
  `test_by` varchar(55) DEFAULT NULL,
  `mach_type` varchar(55) DEFAULT NULL,
  `mach_no` varchar(55) NOT NULL,
  `service_tag` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `spar_type` varchar(55) NOT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt _part` varchar(55) NOT NULL,
  `seri_no` varchar(55) DEFAULT NULL,
  `alt _serial` varchar(55) NOT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `barc_no` varchar(55) DEFAULT NULL,
  `qty` varchar(55) NOT NULL,
  `work_not` varchar(55) DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL,
  `refe_location` varchar(55) NOT NULL,
  `pare_child` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dvd`
--

CREATE TABLE `dvd` (
  `dvd_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dvd`
--

INSERT INTO `dvd` (`dvd_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'DVD', 'HPE', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hdd`
--

CREATE TABLE `hdd` (
  `hdd_id` int(25) NOT NULL,
  `product` set('HARD DISK') NOT NULL,
  `brand` varchar(25) NOT NULL,
  `oem` varchar(25) DEFAULT NULL,
  `b_model_no` varchar(55) DEFAULT NULL,
  `o_model_no` varchar(55) DEFAULT NULL,
  `capacity` varchar(55) NOT NULL,
  `rpm` varchar(55) DEFAULT NULL,
  `interface` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `a_part_no` varchar(55) DEFAULT NULL,
  `a_part_no_1` varchar(55) DEFAULT NULL,
  `a_part_no_2` varchar(55) DEFAULT NULL,
  `a_part_no_3` varchar(55) DEFAULT NULL,
  `r_part_no` varchar(55) DEFAULT NULL,
  `spare_part_no` varchar(55) DEFAULT NULL,
  `gpn_code` varchar(55) DEFAULT NULL,
  `b_serial_no` varchar(55) NOT NULL,
  `o_serial_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) DEFAULT NULL,
  `firmware` varchar(55) DEFAULT NULL,
  `size` varchar(55) NOT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `gbps` varchar(55) DEFAULT NULL,
  `location` varchar(55) NOT NULL,
  `barcode` varchar(55) NOT NULL,
  `t_barcode` varchar(55) DEFAULT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL,
  `status` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hdd`
--

INSERT INTO `hdd` (`hdd_id`, `product`, `brand`, `oem`, `b_model_no`, `o_model_no`, `capacity`, `rpm`, `interface`, `part_no`, `a_part_no`, `a_part_no_1`, `a_part_no_2`, `a_part_no_3`, `r_part_no`, `spare_part_no`, `gpn_code`, `b_serial_no`, `o_serial_no`, `serial_no`, `firmware`, `size`, `quantity`, `gbps`, `location`, `barcode`, `t_barcode`, `ref_location`, `remark`, `status`) VALUES
(1, '', 'Select Brand', 'Select OEM', '1', '1', '1', 'Select RPM', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'Select Size', '1', '1', '1', '1', '1', '1', '1', NULL),
(2, '', 'Select Brand', 'Select OEM', '1', '1', '1', 'Select RPM', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'Select Size', '1', '1', '1', '1', '1', '1', '1', NULL),
(3, '', 'Select Brand', 'Select OEM', '1', '1', '1', 'Select RPM', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'Select Size', '1', '1', '1', '1', '1', '1', '1', NULL),
(4, '', 'Select Brand', 'Select OEM', '2', '2', '2', 'Select RPM', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', 'Select Size', '2', '2', '2', '2', '2', '2', '2', NULL),
(5, '', 'Select Brand', 'Select OEM', '3', '3', '3', 'Select RPM', '3', '3', '3', '3', '3', '3', '33', '3', '3', '3', '3', '3', '3', 'Select Size', '3', '3', '3', '3', '3', '3', '3', NULL),
(6, '', 'Select Brand', 'Select OEM', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'Select RPM', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'Select Size', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'vqwertyuqwertyuiop', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', 'qwertyuqwertyuiop', NULL),
(7, 'HARD DISK', '', NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(8, 'HARD DISK', '', NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(9, 'HARD DISK', 'dell', NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(10, 'HARD DISK', 'SUN', 'Select OEM', 'q', 'q', 'q', 'Select RPM', 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'Select Size', 'q', 'q', 'q', 'q', 'q', 'q', 'q', NULL),
(11, 'HARD DISK', 'HPE', 'Select OEM', '1324567', '00987654', '6', '15K', 'sas', '12345678', '0987654', '1234567', '0987654', '1234567', '098765', '12345', '098765', '123456', '09876', '123456', '098765', '2.5', '1', '123', 'ghar pe', '1234567890987', '123456789098765', 'ghar pe bola na pahele', '1234567', NULL),
(12, '', 'HPE', 'Select OEM', '123', 'qwer', 'qertg', '10K', 'erty', 'tyu', 'tyu', 'gtyh', 'tg', 'yhg', 'h', 'tyu', 'ty', 'ty', 'ut', 'yu', 'gh', 'Select Size', 'gh', 'gh', 'g', 'h', 'gh', 'ghj', 'hj', NULL),
(13, 'HARD DISK', 'SUN', 'Select OEM', '1', '1', '1', '10K', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2.5', '1', '1', '1', '1', '1', '1', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hd_backplane`
--

CREATE TABLE `hd_backplane` (
  `hd_backplane_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hd_backplane`
--

INSERT INTO `hd_backplane` (`hd_backplane_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'HARD DISK BACKPLANE', 'HPE', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `heat_sink`
--

CREATE TABLE `heat_sink` (
  `heat_sink_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `heat_sink`
--

INSERT INTO `heat_sink` (`heat_sink_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'HEAT SINK', 'SUN', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `io_board`
--

CREATE TABLE `io_board` (
  `io_board_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `io_board`
--

INSERT INTO `io_board` (`io_board_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'IO BOARD', 'SUN', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ip_phone`
--

CREATE TABLE `ip_phone` (
  `ip_phone_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ip_phone`
--

INSERT INTO `ip_phone` (`ip_phone_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'IP PHONE', 'HPE', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lto`
--

CREATE TABLE `lto` (
  `lto_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lto`
--

INSERT INTO `lto` (`lto_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'LTO', 'HPE', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `miscellaneous`
--

CREATE TABLE `miscellaneous` (
  `miscellaneous_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `miscellaneous`
--

INSERT INTO `miscellaneous` (`miscellaneous_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'MISCELLANEOUS', 'n', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mother_board`
--

CREATE TABLE `mother_board` (
  `mother_board_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mother_board`
--

INSERT INTO `mother_board` (`mother_board_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'MOTHER BOARD', 'SUN', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `networking_firewall`
--

CREATE TABLE `networking_firewall` (
  `networking_firewall_id` int(55) NOT NULL,
  `test_date` varchar(55) DEFAULT NULL,
  `test_by` varchar(55) DEFAULT NULL,
  `mach_type` varchar(55) DEFAULT NULL,
  `mach_no` varchar(55) NOT NULL,
  `service_tag` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `spar_type` varchar(55) NOT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt _part` varchar(55) NOT NULL,
  `seri_no` varchar(55) DEFAULT NULL,
  `alt _serial` varchar(55) NOT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `barc_no` varchar(55) DEFAULT NULL,
  `qty` varchar(55) NOT NULL,
  `work_not` varchar(55) DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL,
  `refe_location` varchar(55) NOT NULL,
  `pare_child` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oo_switch`
--

CREATE TABLE `oo_switch` (
  `oo_switch_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oo_switch`
--

INSERT INTO `oo_switch` (`oo_switch_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'ON OFF SWITCH', 'm', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `power_backplane`
--

CREATE TABLE `power_backplane` (
  `power_backplane_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `power_backplane`
--

INSERT INTO `power_backplane` (`power_backplane_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'POWER BACKPLANE', 'm', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `power_cage`
--

CREATE TABLE `power_cage` (
  `power_cage_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `power_cage`
--

INSERT INTO `power_cage` (`power_cage_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'POWER CAGE', 'n', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `power_supply`
--

CREATE TABLE `power_supply` (
  `power_supply_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `power_supply`
--

INSERT INTO `power_supply` (`power_supply_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'POWER SUPPLY', 'SUN', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rack_server`
--

CREATE TABLE `rack_server` (
  `rack_server_id` int(55) NOT NULL,
  `test_date` varchar(55) DEFAULT NULL,
  `test_by` varchar(55) DEFAULT NULL,
  `mach_type` varchar(55) DEFAULT NULL,
  `mach_no` varchar(55) NOT NULL,
  `service_tag` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `spar_type` varchar(55) NOT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt _part` varchar(55) NOT NULL,
  `seri_no` varchar(55) DEFAULT NULL,
  `alt _serial` varchar(55) NOT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `barc_no` varchar(55) DEFAULT NULL,
  `qty` varchar(55) NOT NULL,
  `work_not` varchar(55) DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL,
  `refe_location` varchar(55) NOT NULL,
  `pare_child` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `riser_card`
--

CREATE TABLE `riser_card` (
  `riser_card_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riser_card`
--

INSERT INTO `riser_card` (`riser_card_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'RISER CARD', 'HPE', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `storage_id` int(55) NOT NULL,
  `test_date` varchar(55) DEFAULT NULL,
  `test_by` varchar(55) DEFAULT NULL,
  `mach_type` varchar(55) DEFAULT NULL,
  `mach_no` varchar(55) NOT NULL,
  `service_tag` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `spar_type` varchar(55) NOT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt _part` varchar(55) NOT NULL,
  `seri_no` varchar(55) DEFAULT NULL,
  `alt _serial` varchar(55) NOT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `barc_no` varchar(55) DEFAULT NULL,
  `qty` varchar(55) NOT NULL,
  `work_not` varchar(55) DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL,
  `refe_location` varchar(55) NOT NULL,
  `pare_child` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vrm`
--

CREATE TABLE `vrm` (
  `vrm_id` int(55) NOT NULL,
  `product` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `model` varchar(55) DEFAULT NULL,
  `part_no` varchar(55) NOT NULL,
  `alt_part_no` varchar(55) DEFAULT NULL,
  `serial_no` varchar(55) NOT NULL,
  `alt_serial_no` varchar(55) DEFAULT NULL,
  `specs` varchar(55) DEFAULT NULL,
  `quantity` varchar(55) DEFAULT NULL,
  `barcode` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `ref_location` varchar(55) DEFAULT NULL,
  `remark` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vrm`
--

INSERT INTO `vrm` (`vrm_id`, `product`, `brand`, `model`, `part_no`, `alt_part_no`, `serial_no`, `alt_serial_no`, `specs`, `quantity`, `barcode`, `location`, `ref_location`, `remark`) VALUES
(1, 'VRM', 'HPE', 'Q236475RYFH', '12345EWERT', 'JHGFDE56E', '123456789OIUYTFRD', '', '5TRFTYUTJCHFB', '1', '12345678UIYGTFD', 'KUJHYTRE456', 'UJYTHRGEW43', 'RHTEWRETRT'),
(2, 'VRM', 'HPE', '', '', '', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adaptor`
--
ALTER TABLE `adaptor`
  ADD PRIMARY KEY (`adaptor_id`);

--
-- Indexes for table `add_master`
--
ALTER TABLE `add_master`
  ADD PRIMARY KEY (`master_id`);

--
-- Indexes for table `battery`
--
ALTER TABLE `battery`
  ADD PRIMARY KEY (`battery_id`);

--
-- Indexes for table `blade_server`
--
ALTER TABLE `blade_server`
  ADD PRIMARY KEY (`blade_server_id`);

--
-- Indexes for table `cable`
--
ALTER TABLE `cable`
  ADD PRIMARY KEY (`cable_id`);

--
-- Indexes for table `cf_backplane`
--
ALTER TABLE `cf_backplane`
  ADD PRIMARY KEY (`cf_backplane_id`);

--
-- Indexes for table `chasis`
--
ALTER TABLE `chasis`
  ADD PRIMARY KEY (`chasis_id`);

--
-- Indexes for table `cisco_chasis`
--
ALTER TABLE `cisco_chasis`
  ADD PRIMARY KEY (`cisco_chasis_id`);

--
-- Indexes for table `cooling_fan`
--
ALTER TABLE `cooling_fan`
  ADD PRIMARY KEY (`cf_id`);

--
-- Indexes for table `desktop`
--
ALTER TABLE `desktop`
  ADD PRIMARY KEY (`desktop_id`);

--
-- Indexes for table `dvd`
--
ALTER TABLE `dvd`
  ADD PRIMARY KEY (`dvd_id`);

--
-- Indexes for table `hdd`
--
ALTER TABLE `hdd`
  ADD PRIMARY KEY (`hdd_id`);

--
-- Indexes for table `hd_backplane`
--
ALTER TABLE `hd_backplane`
  ADD PRIMARY KEY (`hd_backplane_id`);

--
-- Indexes for table `heat_sink`
--
ALTER TABLE `heat_sink`
  ADD PRIMARY KEY (`heat_sink_id`);

--
-- Indexes for table `io_board`
--
ALTER TABLE `io_board`
  ADD PRIMARY KEY (`io_board_id`);

--
-- Indexes for table `ip_phone`
--
ALTER TABLE `ip_phone`
  ADD PRIMARY KEY (`ip_phone_id`);

--
-- Indexes for table `lto`
--
ALTER TABLE `lto`
  ADD PRIMARY KEY (`lto_id`);

--
-- Indexes for table `miscellaneous`
--
ALTER TABLE `miscellaneous`
  ADD PRIMARY KEY (`miscellaneous_id`);

--
-- Indexes for table `mother_board`
--
ALTER TABLE `mother_board`
  ADD PRIMARY KEY (`mother_board_id`);

--
-- Indexes for table `networking_firewall`
--
ALTER TABLE `networking_firewall`
  ADD PRIMARY KEY (`networking_firewall_id`);

--
-- Indexes for table `oo_switch`
--
ALTER TABLE `oo_switch`
  ADD PRIMARY KEY (`oo_switch_id`);

--
-- Indexes for table `power_backplane`
--
ALTER TABLE `power_backplane`
  ADD PRIMARY KEY (`power_backplane_id`);

--
-- Indexes for table `power_cage`
--
ALTER TABLE `power_cage`
  ADD PRIMARY KEY (`power_cage_id`);

--
-- Indexes for table `power_supply`
--
ALTER TABLE `power_supply`
  ADD PRIMARY KEY (`power_supply_id`);

--
-- Indexes for table `rack_server`
--
ALTER TABLE `rack_server`
  ADD PRIMARY KEY (`rack_server_id`);

--
-- Indexes for table `riser_card`
--
ALTER TABLE `riser_card`
  ADD PRIMARY KEY (`riser_card_id`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`storage_id`);

--
-- Indexes for table `vrm`
--
ALTER TABLE `vrm`
  ADD PRIMARY KEY (`vrm_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adaptor`
--
ALTER TABLE `adaptor`
  MODIFY `adaptor_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_master`
--
ALTER TABLE `add_master`
  MODIFY `master_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `battery`
--
ALTER TABLE `battery`
  MODIFY `battery_id` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blade_server`
--
ALTER TABLE `blade_server`
  MODIFY `blade_server_id` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cable`
--
ALTER TABLE `cable`
  MODIFY `cable_id` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cf_backplane`
--
ALTER TABLE `cf_backplane`
  MODIFY `cf_backplane_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chasis`
--
ALTER TABLE `chasis`
  MODIFY `chasis_id` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cisco_chasis`
--
ALTER TABLE `cisco_chasis`
  MODIFY `cisco_chasis_id` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cooling_fan`
--
ALTER TABLE `cooling_fan`
  MODIFY `cf_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `desktop`
--
ALTER TABLE `desktop`
  MODIFY `desktop_id` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dvd`
--
ALTER TABLE `dvd`
  MODIFY `dvd_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hdd`
--
ALTER TABLE `hdd`
  MODIFY `hdd_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hd_backplane`
--
ALTER TABLE `hd_backplane`
  MODIFY `hd_backplane_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `heat_sink`
--
ALTER TABLE `heat_sink`
  MODIFY `heat_sink_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `io_board`
--
ALTER TABLE `io_board`
  MODIFY `io_board_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ip_phone`
--
ALTER TABLE `ip_phone`
  MODIFY `ip_phone_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lto`
--
ALTER TABLE `lto`
  MODIFY `lto_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `miscellaneous`
--
ALTER TABLE `miscellaneous`
  MODIFY `miscellaneous_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mother_board`
--
ALTER TABLE `mother_board`
  MODIFY `mother_board_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oo_switch`
--
ALTER TABLE `oo_switch`
  MODIFY `oo_switch_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `power_backplane`
--
ALTER TABLE `power_backplane`
  MODIFY `power_backplane_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `power_cage`
--
ALTER TABLE `power_cage`
  MODIFY `power_cage_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `power_supply`
--
ALTER TABLE `power_supply`
  MODIFY `power_supply_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rack_server`
--
ALTER TABLE `rack_server`
  MODIFY `rack_server_id` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riser_card`
--
ALTER TABLE `riser_card`
  MODIFY `riser_card_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `storage_id` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vrm`
--
ALTER TABLE `vrm`
  MODIFY `vrm_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
