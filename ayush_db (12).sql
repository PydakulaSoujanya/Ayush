-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2024 at 05:31 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayush_db`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetEmployeeExpenseClaims` ()   BEGIN
    SELECT * FROM expenses
    WHERE expense_type = 'Employee Expense Claim';
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetExpense` ()   SELECT * FROM expenses$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `account_config`
--

CREATE TABLE `account_config` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `bank_account_no` varchar(50) NOT NULL,
  `ifsc_code` varchar(20) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_type` enum('Saving','Current') NOT NULL,
  `status` enum('Active','In Active') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_config`
--

INSERT INTO `account_config` (`id`, `account_name`, `bank_account_no`, `ifsc_code`, `bank_name`, `account_type`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Alekhya k', '2987985431666', 'ifsc4442215', 'sbi', 'Saving', 'Active', '2024-12-11 09:42:50', '2024-12-11 12:54:35'),
(3, 'Alekhya Kodam', '2987985431666', 'ifsc4442215', 'sbi', 'Saving', 'Active', '2024-12-11 12:54:26', '2024-12-11 12:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `allotment`
--

CREATE TABLE `allotment` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `service_type` varchar(255) NOT NULL,
  `shift` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `no_of_hours` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `day_1` varchar(255) DEFAULT NULL,
  `day_2` varchar(255) DEFAULT NULL,
  `day_3` varchar(255) DEFAULT NULL,
  `day_4` varchar(255) DEFAULT NULL,
  `day_5` varchar(255) DEFAULT NULL,
  `day_6` varchar(255) DEFAULT NULL,
  `day_7` varchar(255) DEFAULT NULL,
  `day_8` varchar(255) DEFAULT NULL,
  `day_9` varchar(255) DEFAULT NULL,
  `day_10` varchar(255) DEFAULT NULL,
  `day_11` varchar(255) DEFAULT NULL,
  `day_12` varchar(255) DEFAULT NULL,
  `day_13` varchar(255) DEFAULT NULL,
  `day_14` varchar(255) DEFAULT NULL,
  `day_15` varchar(255) DEFAULT NULL,
  `day_16` varchar(255) DEFAULT NULL,
  `day_17` varchar(255) DEFAULT NULL,
  `day_18` varchar(255) DEFAULT NULL,
  `day_19` varchar(255) DEFAULT NULL,
  `day_20` varchar(255) DEFAULT NULL,
  `day_21` varchar(255) DEFAULT NULL,
  `day_22` varchar(255) DEFAULT NULL,
  `day_23` varchar(255) DEFAULT NULL,
  `day_24` varchar(255) DEFAULT NULL,
  `day_25` varchar(255) DEFAULT NULL,
  `day_26` varchar(255) DEFAULT NULL,
  `day_27` varchar(255) DEFAULT NULL,
  `day_28` varchar(255) DEFAULT NULL,
  `day_29` varchar(255) DEFAULT NULL,
  `day_30` varchar(255) DEFAULT NULL,
  `day_31` varchar(255) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allotment`
--

INSERT INTO `allotment` (`id`, `employee_id`, `name`, `patient_id`, `patient_name`, `service_type`, `shift`, `status`, `no_of_hours`, `created_at`, `updated_at`, `day_1`, `day_2`, `day_3`, `day_4`, `day_5`, `day_6`, `day_7`, `day_8`, `day_9`, `day_10`, `day_11`, `day_12`, `day_13`, `day_14`, `day_15`, `day_16`, `day_17`, `day_18`, `day_19`, `day_20`, `day_21`, `day_22`, `day_23`, `day_24`, `day_25`, `day_26`, `day_27`, `day_28`, `day_29`, `day_30`, `day_31`, `start_date`, `end_date`) VALUES
(1, 3, 'alekhya kodam', 0, '3', 'Semi-Trained Nurse', 'Night', 'Assigned', 8, '2024-12-06 15:00:35', '2024-12-06 15:01:32', '', '', 'yes', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-06', '2024-12-26'),
(2, 7, 'Soujanya', 0, '4', 'Care Taker', 'Flexible', 'Assigned', 12, '2024-12-06 15:27:55', '2024-12-06 16:23:46', NULL, NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-07', '2024-12-17'),
(3, 3, 'alekhya kodam', 0, '2', 'Semi-Trained Nurse', 'Day', 'Assigned', 24, '2024-12-06 16:07:38', '2024-12-06 16:26:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-08', '2024-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `allotment_old`
--

CREATE TABLE `allotment_old` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `patient_id` int(255) NOT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `shift` varchar(20) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `no_of_hours` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allotment_old`
--

INSERT INTO `allotment_old` (`id`, `employee_id`, `name`, `patient_id`, `patient_name`, `service_type`, `shift`, `start_date`, `end_date`, `status`, `no_of_hours`, `created_at`, `updated_at`) VALUES
(1, 0, '0', 0, 'Harish', 'Fully Trained Nurse', 'Day', '2024-12-05', '2024-12-19', 'Assigned', '8 Hours', '2024-12-05 07:36:16', '2024-12-05 07:36:16'),
(4, 3, 'alekhya kodam', 0, 'Harish', 'Fully Trained Nurse', 'Day', '2024-12-05', '2024-12-11', 'Assigned', '12 Hours', '2024-12-05 10:34:34', '2024-12-05 10:34:34'),
(13, 7, 'Soujanya', 0, '4', 'Fully Trained Nurse', 'Day', '2024-12-05', '2024-12-20', 'Assigned', '24 Hours', '2024-12-05 13:50:33', '2024-12-05 13:50:33'),
(14, 3, 'alekhya kodam', 0, '3', 'Care Taker', 'Flexible', '2024-12-06', '2024-12-18', 'Assigned', '12 Hours', '2024-12-06 09:00:17', '2024-12-06 09:00:17'),
(15, 7, 'Soujanya', 0, '2', 'Nani\'s', 'Day', '2024-12-13', '2024-12-24', 'Assigned', '8 Hours', '2024-12-06 09:03:36', '2024-12-06 09:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `customer_master`
--

CREATE TABLE `customer_master` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `relationship` varchar(100) DEFAULT NULL,
  `customer_name` varchar(255) NOT NULL,
  `emergency_contact_number` varchar(15) NOT NULL,
  `blood_group` varchar(5) DEFAULT NULL,
  `medical_conditions` text DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `patient_age` int(11) DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `care_requirements` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `mobility_status` varchar(50) DEFAULT NULL,
  `discharge_summary_sheet` varchar(255) DEFAULT NULL,
  `address` text NOT NULL,
  `patient_status` varchar(10) DEFAULT NULL,
  `pincode` varchar(6) NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_master`
--

INSERT INTO `customer_master` (`id`, `patient_name`, `relationship`, `customer_name`, `emergency_contact_number`, `blood_group`, `medical_conditions`, `email`, `patient_age`, `gender`, `care_requirements`, `created_at`, `updated_at`, `mobility_status`, `discharge_summary_sheet`, `address`, `patient_status`, `pincode`, `address_line1`, `address_line2`, `landmark`, `city`, `state`) VALUES
(11, 'Bhargav', 'guardian', 'Bhargav', '9874563210', 'O+', '3', 'bhargav@gmail.com', 28, 'male', 'fully-trained-nurse', NULL, NULL, 'Walking', 'document (2).pdf', 'Hyd', NULL, '', '', NULL, NULL, '', ''),
(15, 'soujanya', 'parent', 'Soujanya', '9874563210', 'A+', '1', 'soujanya@gmail.com', 25, 'female', 'fully-trained-nurse', NULL, NULL, 'Walking', 'web development theory.txt', 'Knr', NULL, '', '', NULL, NULL, '', ''),
(16, 'Alekhya', 'parent', 'Alekhya', '9874563210', 'AB-', '1', 'alkehya@gmail.com', 26, 'female', 'caretaker', NULL, NULL, 'Walking', 'web development theory.txt', 'Hyd', NULL, '', '', NULL, NULL, '', ''),
(18, 'Priya', 'sibling', 'Priya', '9234567890', 'A+', '3', 'priya@gmail.com', 26, 'female', '', NULL, NULL, 'Walking', 'web development theory.txt', 'Vmd', NULL, '', '', NULL, NULL, '', ''),
(19, 'Priya', 'sibling', 'Priya', '9234567890', 'A+', '3', 'priya@gmail.com', 26, 'female', '', NULL, NULL, 'Walking', 'web development theory.txt', 'Vmd', NULL, '', '', NULL, NULL, '', ''),
(20, 'Priya', 'sibling', 'Priya', '9234567890', 'A+', '3', 'priya@gmail.com', 26, 'female', '', NULL, NULL, 'Walking', 'web development theory.txt', 'Vmd', NULL, '', '', NULL, NULL, '', ''),
(34, 'Harish', 'child', 'Soujanya', '9492003253', 'O-', 'Leg injured', '261126@gmail.com', 0, 'male', NULL, NULL, NULL, 'Walking', NULL, '', 'no', '505001', '8-7-270/1, Hanuman nagar, Ganesh Nagar', 'Karimnagar', '', 'Karimnagar', 'Telangana'),
(35, 'Kiran', 'guardian', 'Kavya', '9522352352', 'B-', 'Fever', 'kavya@gmail.com', 45, 'male', NULL, NULL, NULL, 'Walking', NULL, '', 'no', '505001', '8-7-270/1, Hanuman nagar, Ganesh Nagar', 'Karimnagar', '', 'Karimnagar', 'Telangana'),
(36, 'Bagath', 'sibling', 'Soujanya', '09492003253', 'B-', 'heavy fever', 'sspandrala6@gmail.com', 25, 'male', NULL, NULL, NULL, 'Walking', NULL, '', 'no', '505001', '8-7-270/1, Hanuman nagar, Ganesh Nagar', 'Karimnagar', '', 'Karimnagar', 'Telangana'),
(37, 'savitha', 'friend', 'Soujanya', '09492003253', 'O+', 'bnmnm', 'sspandrala261126@gmail.com', 25, 'female', NULL, NULL, NULL, 'Walking', NULL, '', 'no', '505001', '8-7-270/1, Hanuman nagar, Ganesh Nagar', 'Karimnagar', 'asdf', 'Karimnagar', 'Telangana'),
(38, 'Naresh', 'spouse', 'Soujanya', '9492003253', 'O+', 'Leg injured', 'sspandrala261126@gmail.com', 40, 'female', NULL, '2024-12-16 13:40:03', '2024-12-16 13:40:03', 'Wheelchair', 'invoice_INV092471.pdf', '8-7-270/1, Hanuman nagar, Ganesh Nagar\r\nKarimnagar', NULL, '', '', NULL, NULL, '', ''),
(39, 'Dharma', 'friend', 'Eashwar', '9522532236', 'O-', 'heavy fever', 'sspandrala261126@gmail.com', 25, '', NULL, '2024-12-16 14:00:28', '2024-12-16 14:00:28', 'Walking', '46cd5d8e5fda4921f9ed6c906efc1d58.pdf', '8-7-270/1, Hanuman nagar, Ganesh Nagar\r\nKarimnagar', NULL, '', '', NULL, NULL, '', ''),
(40, '', NULL, 'RaviKumar', '9292929292', 'A+', 'FEVER', 'ravi@gmail.com', 48, 'male', NULL, NULL, NULL, 'Walking', NULL, '', 'yes', '505001', '8-7-270/1, Hanuman nagar, Ganesh Nagar', 'Karimnagar', '', 'Karimnagar', 'Telangana');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `tran_id` varchar(50) DEFAULT NULL,
  `value_date` date DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `transaction_posted_date` datetime DEFAULT NULL,
  `cheque_no_ref_no` varchar(255) DEFAULT NULL,
  `transaction_remarks` text DEFAULT NULL,
  `deposit_amt` decimal(15,2) DEFAULT NULL,
  `balance` decimal(15,2) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `tran_id`, `value_date`, `transaction_date`, `transaction_posted_date`, `cheque_no_ref_no`, `transaction_remarks`, `deposit_amt`, `balance`, `status`) VALUES
(1, 'S49409907', '2024-11-13', '2024-11-13', '2024-11-13 12:37:51', '', 'NEFT-P318240375189734-ASHA D NAYAK--0125101001157-CNRB0000125', 21000.00, 34434.03, 'Matched'),
(2, 'S58792440', '2024-11-14', '2024-11-14', '2024-11-14 12:43:08', '', 'BIL/INFT/DKI1914610/Nov set2/ DHANYA ROS MATH', 14000.00, 28434.03, 'Matched'),
(3, 'S59919983', '2024-11-14', '2024-11-14', '2024-11-14 14:32:49', '', 'UPI/431966588105/Attendant for M/madhavi.krishna/Union Bank of I/ICI889e75bae7454070adb31dcd5a39d20c', 13500.00, 41934.03, 'pending'),
(4, 'S68642897', '2024-11-15', '2024-11-15', '2024-11-15 13:31:20', '', 'INF/INFT/038300045131/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 20958.00, 62892.03, 'pending'),
(5, 'S68647127', '2024-11-15', '2024-11-15', '2024-11-15 13:31:54', '', 'INF/INFT/038300053381/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 6395.00, 69287.03, 'pending'),
(6, 'S68648725', '2024-11-15', '2024-11-15', '2024-11-15 13:32:04', '', 'INF/INFT/038300056191/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 19050.00, 88337.03, 'Matched'),
(7, 'S68932545', '2024-11-15', '2024-11-15', '2024-11-15 14:12:53', '', 'INF/INFT/038300516371/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 29057.03, 'pending'),
(8, 'S68933364', '2024-11-15', '2024-11-15', '2024-11-15 14:13:04', '', 'INF/INFT/038300519091/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 49777.03, 'pending'),
(9, 'S68933971', '2024-11-15', '2024-11-15', '2024-11-15 14:13:14', '', 'INF/INFT/038300521141/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 16808.00, 66585.03, 'pending'),
(10, 'S68935004', '2024-11-15', '2024-11-15', '2024-11-15 14:13:22', '', 'INF/INFT/038300522641/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 1334.00, 67919.03, 'pending'),
(11, 'S70395084', '2024-11-15', '2024-11-15', '2024-11-15 17:50:01', '', 'UPI/432055761180/UPI/cynthiajimmy@ok/State Bank Of I/SBI701ec21a073747329af8e0101fae926d', 13500.00, 81419.03, 'pending'),
(12, 'S73697621', '2024-11-16', '2024-11-16', '2024-11-16 08:07:42', '', 'MMT/IMPS/432108828325/null/MANGALA KO/State Bank of I', 13500.00, 94919.03, 'pending'),
(13, 'S73942259', '2024-11-16', '2024-11-16', '2024-11-16 09:38:08', '', 'UPI/9901537347@ibl/Payment from Ph/Union Bank of I/356324008385/IBLa4fc535fb1d94fadaad705770e50cad6', 12500.00, 107419.03, 'pending'),
(14, 'S74013974', '2024-11-16', '2024-11-16', '2024-11-16 09:41:31', '', 'UPI/468737652217/Paid via SuperM/8197129933@supe/ICICI Bank/SMY2411160941ROO2MQXIFRWV32PTV3541C', 14000.00, 121419.03, 'pending'),
(15, 'S75485220', '2024-11-16', '2024-11-16', '2024-11-16 12:28:56', '', 'BIL/INFT/DKK2266161/MI Khan elder c/ SYED ABDUL MUSS', 12750.00, 134169.03, 'pending'),
(16, 'S78020341', '2024-11-16', '2024-11-16', '2024-11-16 16:57:51', '', 'BIL/INFT/DKK2315964/NA/ UMA SATYEN VYAS', 15750.00, 109119.03, 'pending'),
(17, 'S78018687', '2024-11-16', '2024-11-16', '2024-11-16 17:21:31', '', 'UPI/468741241443/Nursing/9845894222@supe/AXIS BANK/SMY2411161721UF6GBEWTJL3IVF7PYJPT9L', 13500.00, 122619.03, 'pending'),
(18, 'S78368102', '2024-11-16', '2024-11-16', '2024-11-16 17:55:24', '', 'UPI/anuragverma150-/UPI/AXIS BANK/468795146377/AXI1df955ccb4e04383ba4440cf8eb55d5a', 13500.00, 136119.03, 'pending'),
(19, 'S78800076', '2024-11-16', '2024-11-16', '2024-11-16 18:35:35', '', 'UPI/432162245191/UPI/obi2005-3@okaxi/AXIS BANK/AXI305b2e70add74000aa4a3ef0a37dabe4', 13500.00, 149619.03, 'pending'),
(20, 'S78905669', '2024-11-16', '2024-11-16', '2024-11-16 18:39:44', '', 'INF/INFT/038315025331/Salary         /ARCHANA DIWAN', 13500.00, 163119.03, 'pending'),
(21, 'S79748941', '2024-11-16', '2024-11-16', '2024-11-16 20:34:24', '', 'NEFT-SVCB024321302874-R JAYALAKSHMI-R JAYALAKSHMI 2ND HALF OF NOV 2024-109803130005618-SVCB0000098', 13500.00, 176619.03, 'pending'),
(22, 'S80121355', '2024-11-16', '2024-11-16', '2024-11-16 21:40:43', '', 'MMT/IMPS/432121759197/null/RAVI RAJ S/State Bank of I', 11625.00, 188244.03, 'pending'),
(23, 'S80434449', '2024-11-16', '2024-11-16', '2024-11-16 22:58:50', '', 'FT-MESPOS/REVRENGSTOCT24/EP049242', 80.82, 188324.85, 'pending'),
(24, 'S80706988', '2024-11-17', '2024-11-17', '2024-11-17 01:33:39', '', 'NEFT-N322243402959481-BHAVANI-NOV 2ND HALF 2024-00771140203921-HDFC0000001', 12500.00, 130824.85, 'pending'),
(25, 'S81168941', '2024-11-16', '2024-11-17', '2024-11-17 05:56:09', '', 'FT-MESPOS/REV/RENT/OCT24/EP049242', 449.00, 131273.85, 'pending'),
(26, 'S82245503', '2024-11-17', '2024-11-17', '2024-11-17 11:50:23', '', 'UPI/468868371912/UPI/abhishek.mn.iis/State Bank Of I/AXI9d6bd59c17604cc38fb77b7256a893e5', 11500.00, 142773.85, 'pending'),
(27, 'S82376192', '2024-11-17', '2024-11-17', '2024-11-17 11:51:17', '', 'UPI/432224940501/UPI/christinavprabh/State Bank Of I/ICI35f3b109a3ff4f1faa4ad5e7e46df700', 4500.00, 147273.85, 'pending'),
(28, 'S82765985', '2024-11-17', '2024-11-17', '2024-11-17 13:08:55', '', 'MMT/IMPS/432213127447/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 160773.85, 'pending'),
(29, 'S83168600', '2024-11-17', '2024-11-17', '2024-11-17 14:32:20', '', 'NEFT-AXOMB32275094653-SRIRUPA SEN--015010100536585-UTIB0004821', 12500.00, 173273.85, 'pending'),
(30, 'S85235775', '2024-11-17', '2024-11-17', '2024-11-17 22:24:09', '', 'UPI/468851867229/UPI/manjeetverma161/Punjab National/ICI5efb05c53bed458da215897ec3f0e360', 14000.00, 187273.85, 'pending'),
(31, 'S87711173', '2024-11-18', '2024-11-18', '2024-11-18 08:31:55', '', 'NEFT-N323243403464711-S RAMACHANDRA RAO-RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 200773.85, 'pending'),
(32, 'S88771127', '2024-11-18', '2024-11-18', '2024-11-18 11:15:35', '', 'UPI/432389681030/UPI/deepti12karumba/AXIS BANK/SBI92bfef8f88e84e789a204767dd6dcbfe', 10500.00, 211273.85, 'pending'),
(33, 'S89241742', '2024-11-18', '2024-11-18', '2024-11-18 11:34:01', '', 'UPI/432390842965/UPI/cynthiajimmy@ok/State Bank Of I/SBIfd2ba295b1274ff693d7cf37b8b76cad', 1800.00, 213073.85, 'pending'),
(34, 'S90372247', '2024-11-18', '2024-11-18', '2024-11-18 12:56:27', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/432376654391/HDF5b4e61c28b38492382435bf9c57bb647', 13500.00, 226573.85, 'pending'),
(35, 'S90839934', '2024-11-18', '2024-11-18', '2024-11-18 13:16:39', '', 'NEFT-N323243403899686-IGNOXLABS PVT LTD OP1-NEFT  EMHB002 BANGLORE 5020003209-50200032099971-HDFC', 12495.00, 239068.85, 'pending'),
(36, 'S90839937', '2024-11-18', '2024-11-18', '2024-11-18 13:16:40', '', 'NEFT-N323243403899682-IGNOXLABS PVT LTD OP1-NEFT  EMHB0002 BANGLORE 502000320-50200032099971-HDFC', 13230.00, 252298.85, 'pending'),
(37, 'S91887312', '2024-11-18', '2024-11-18', '2024-11-18 14:57:08', '', 'BIL/INFT/DKM2588188/16thto30thNovem/ RENU KALAGNANAM', 33000.00, 285298.85, 'pending'),
(38, 'S92243655', '2024-11-18', '2024-11-18', '2024-11-18 15:23:14', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5431', 12000.00, 297298.85, 'pending'),
(39, 'S92263663', '2024-11-18', '2024-11-18', '2024-11-18 15:24:49', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5433', 1500.00, 298798.85, 'pending'),
(40, 'S93418829', '2024-11-18', '2024-11-18', '2024-11-18 16:45:10', '', 'MMT/IMPS/432316117723/Ali Helper/SANJEEV SH/HDFC Bank', 3600.00, 22398.85, 'pending'),
(41, 'S94929916', '2024-11-18', '2024-11-18', '2024-11-18 19:02:59', '', 'INF/INFT/038329979601/AARUSH CONSTRUC', 100000.00, 122398.85, 'pending'),
(42, 'S95293560', '2024-11-18', '2024-11-18', '2024-11-18 19:39:18', '', 'MMT/IMPS/432319525371/Nov30/VIDYASRIVA/Axis Bank', 23625.00, 146023.85, 'pending'),
(43, 'S95317245', '2024-11-18', '2024-11-18', '2024-11-18 19:42:56', '', 'MMT/IMPS/432319545404/Nov30/VLAKSHMIAM/Axis Bank', 12600.00, 158623.85, 'pending'),
(44, 'S96680226', '2024-11-19', '2024-11-19', '2024-11-19 00:49:50', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/432407404179/HDF13aa8b0039b44fe7bb85fc842f476ea5', 12500.00, 171123.85, 'pending'),
(45, 'S98613032', '2024-11-19', '2024-11-19', '2024-11-19 09:47:13', '', 'INF/INFT/038332871671/44855766     /EZEE MEDFIND LLP    /', 1300.00, 172423.85, 'pending'),
(46, 'S99309776', '2024-11-19', '2024-11-19', '2024-11-19 11:23:38', '', 'UPI/469065238185/salary 16 to 30/pallavisinhamis/ICICI Bank/ICI2ad8b12a9fff4a2994199b9f7e18fcaf', 15000.00, 187423.85, 'pending'),
(47, 'S11434339', '2024-11-20', '2024-11-20', '2024-11-20 17:26:20', '', 'CMS/ CMS4662594714/SUKINO HEALTHCARE SOLUTIONS PR', 27291.00, 154714.85, 'pending'),
(48, 'S16777086', '2024-11-21', '2024-11-21', '2024-11-21 11:04:28', '', 'UPI/432626433487/UPI/sandhyanair199@/ICICI Bank/ICI3155b308a5ce40d0afe24aed6f7bd000', 12000.00, 166714.85, 'pending'),
(49, 'S19082966', '2024-11-21', '2024-11-21', '2024-11-21 14:05:30', '', 'NEFT-AXISCN0823448800-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 159954.45, 'pending'),
(50, 'S25554007', '2024-11-22', '2024-11-22', '2024-11-22 07:37:39', '', 'UPI/432780870440/caretaker/rkpatil1@oksbi/State Bank Of I/SBI9a9f4cb52eaf4d1a8d68b1547d5b177c', 15000.00, 129454.45, 'pending'),
(51, 'S27420133', '2024-11-22', '2024-11-22', '2024-11-22 12:38:03', '', 'UPI/432796300568/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI777c692ff028408bafb59a5402522716', 12600.00, 133392.45, 'pending'),
(52, 'S39453747', '2024-11-24', '2024-11-24', '2024-11-24 10:20:15', '', 'CMS/ CMS4669666771/SUKINO HEALTHCARE SOLUTIONS PR', 4704.00, 120096.45, 'pending'),
(53, 'S52285457', '2024-11-25', '2024-11-25', '2024-11-25 20:33:27', '', 'NEFT-CMS3302466086620-HEALTHVISTA INDIA PRIVATE LIMITE-PAYMENT-6447052626-KKBK0000958', 33997.00, 154093.45, 'pending'),
(54, 'S56045368', '2024-11-26', '2024-11-26', '2024-11-26 10:15:07', '', 'UPI/433122951714/UPI/yusufshahpurwal/HDFC BANK LTD/HDF8368d24241df4227ac6b70eb0d6956d2', 13500.00, 167593.45, 'pending'),
(55, 'M3735849', '2024-11-26', '2024-11-26', '2024-11-26 19:15:41', '', 'TRF/MADAN/055778/ICI/23.11.2024', 25000.00, 192593.45, 'pending'),
(56, 'S91139662', '2024-11-29', '2024-11-29', '2024-11-29 16:55:23', '', 'UPI/433474709893/UPI/kanchanaseshadr/HDFC BANK LTD/HDF387ad8fb3d1646edb7624e068c7376c0', 29295.00, 152888.45, 'pending'),
(57, 'S97922697', '2024-11-30', '2024-11-30', '2024-11-30 11:24:55', '', 'MMT/IMPS/433511351600/Dec2024 Surende/RAJESH DES/HDFC Bank', 27900.00, 180788.45, 'pending'),
(58, 'S5509059', '2024-12-01', '2024-12-01', '2024-12-01 00:08:53', '', 'UPI/470234442140/UPI/nuqranaqvi@okic/ICICI Bank/ICI0e23a5d0c0144ff0a6474e25b7ecfdcc', 14000.00, 194788.45, 'pending'),
(59, 'S6697751', '2024-12-01', '2024-12-01', '2024-12-01 07:00:00', '', 'BIL/INFT/DL15102214/December first / DHANYA ROS MATH', 14000.00, 208788.45, 'pending'),
(60, 'S6792085', '2024-12-01', '2024-12-01', '2024-12-01 07:31:19', '', 'MMT/IMPS/433607157093/Dec15/VLAKSHMIAM/Axis Bank', 12600.00, 221388.45, 'pending'),
(61, 'S9474255', '2024-12-01', '2024-12-01', '2024-12-01 13:41:23', '', 'BIL/INFT/DL15241533/MI Khan Elder c/ SYED ABDUL MUSS', 12750.00, 234138.45, 'pending'),
(62, 'S13105703', '2024-12-02', '2024-12-02', '2024-12-02 02:01:42', '', 'NEFT-N337243426973380-ANVAYAA KIN CARE PVT LTD-NEFT    AAYUSH HHC 50200019583158-50200019583158-HDF', 23760.00, 113397.45, 'pending'),
(63, 'S14175281', '2024-12-02', '2024-12-02', '2024-12-02 06:48:49', '', 'MMT/IMPS/433706505623/Dec15/VIDYASRIVA/Axis Bank', 23625.00, 137022.45, 'pending'),
(64, 'S15760326', '2024-12-02', '2024-12-02', '2024-12-02 09:30:09', '', 'UPI/470342152061/18th to 30th No/christinavprabh/State Bank Of I/AXI8ddd925c99944297a2a6ae1dc7488d41', 11700.00, 148722.45, 'pending'),
(65, 'S16532005', '2024-12-02', '2024-12-02', '2024-12-02 10:39:10', '', 'MMT/IMPS/433710570676/Bill Payment/MANGALA KO/State Bank of I', 9000.00, 157722.45, 'pending'),
(66, 'S24806421', '2024-12-02', '2024-12-02', '2024-12-02 20:43:18', '', 'MMT/IMPS/433720032204/IMPS/SRIRUPASEN/Axis Bank', 12500.00, 170222.45, 'pending'),
(67, 'S25433966', '2024-12-02', '2024-12-02', '2024-12-02 21:50:11', '', 'UPI/470374003846/UPI/obi2005-3@okaxi/AXIS BANK/AXI59ad74bbe25842bfb6fdf0e70b52d58a', 13500.00, 183722.45, 'pending'),
(68, 'S25735864', '2024-12-02', '2024-12-02', '2024-12-02 22:36:44', '', 'UPI/9901537347@axl/Payment from Ph/Union Bank of I/132883836942/AXL7cbc4b44082e4ffd9fb3251fac112042', 12500.00, 196222.45, 'pending'),
(69, 'S33545228', '2024-12-03', '2024-12-03', '2024-12-03 16:21:54', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/433866408881/HDFdd60b004d4df4e61abcc9c448f27fdd6', 13500.00, 209663.45, 'pending'),
(70, 'S35992827', '2024-12-03', '2024-12-03', '2024-12-03 19:27:26', '', 'BIL/INFT/DL36083050/NA/ UMA SATYEN VYAS', 34000.00, 83663.45, 'pending'),
(71, 'S36090241', '2024-12-03', '2024-12-03', '2024-12-03 19:41:30', '', 'UPI/433879338733/UPI/jayastev-yahoo./INDIAN OVERSEAS/HDF2012fc9348c24b8ab630f52a0a0db419', 29250.00, 112913.45, 'pending'),
(72, 'S36174722', '2024-12-03', '2024-12-03', '2024-12-03 20:01:16', '', 'UPI/470406596078/Attendant for M/madhavi.krishna/Union Bank of I/ICIc2f1bdf31a5f4bfa9f2d5800d5bc0961', 13500.00, 126413.45, 'pending'),
(73, 'S36251939', '2024-12-03', '2024-12-03', '2024-12-03 20:12:19', '', 'UPI/433825525338/UPI Payment/9884018900@icic/ICICI Bank/ICI4550286beaf44a0883cb57b872dedf93', 13500.00, 139913.45, 'pending'),
(74, 'S36352356', '2024-12-03', '2024-12-03', '2024-12-03 20:13:42', '', 'UPI/anuragverma150-/UPI/AXIS BANK/433855186194/AXI1c25ec598b594f1186e3445477748c06', 13500.00, 153413.45, 'pending'),
(75, 'S36938342', '2024-12-03', '2024-12-03', '2024-12-03 21:28:23', '', 'UPI/433891688658/Nursing/9845894222@supe/AXIS BANK/SMY241203212868WFXIGOHBUCVIF9W6FMCM', 13500.00, 166913.45, 'pending'),
(76, 'S37109923', '2024-12-03', '2024-12-03', '2024-12-03 21:52:25', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/433886984451/HDF4ee2107685ba4711b450b71ff494d8b1', 1666.00, 168579.45, 'pending'),
(77, 'S37238536', '2024-12-03', '2024-12-03', '2024-12-03 22:04:48', '', 'MMT/IMPS/433822923147/Bill Payment/RAVI RAJ S/State Bank of I', 11625.00, 180204.45, 'pending'),
(78, 'S37307199', '2024-12-03', '2024-12-03', '2024-12-03 22:16:54', '', 'INF/INFT/038483986991/salary         /ARCHANA DIWAN', 13500.00, 193704.45, 'pending'),
(79, 'S37708683', '2024-12-03', '2024-12-03', '2024-12-03 23:40:59', '', 'BIL/INFT/DL36143237/Quick Pay FT/Phuli Debnath/029805005633SOWMYA RANGARAJ', 24334.00, 218038.45, 'pending'),
(80, 'S39375165', '2024-12-04', '2024-12-04', '2024-12-04 08:31:45', '', 'NEFT-SVCB024339842606-R JAYALAKSHMI-R JAYALAKSHMI1ST HALF DEC 2024-109803130005618-SVCB0000098', 13500.00, 231538.45, 'pending'),
(81, 'M3270273', '2024-12-04', '2024-12-04', '2024-12-04 11:12:48', '', 'BY CASH  - HRBR LAYOUT', 27000.00, 149176.30, 'pending'),
(82, 'M3331984', '2024-12-04', '2024-12-04', '2024-12-04 12:13:40', '', 'BY CASH -BANGALORE - ULSOOR C', 13500.00, 162676.30, 'pending'),
(83, 'S46403214', '2024-12-04', '2024-12-04', '2024-12-04 18:49:09', '', 'MMT/IMPS/433918467778/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 176176.30, 'pending'),
(84, 'S46699194', '2024-12-04', '2024-12-04', '2024-12-04 19:16:59', '', 'MMT/IMPS/433919546974/ReqPay/Mr  NAGARA/State Bank of I', 25500.00, 201676.30, 'pending'),
(85, 'S47489464', '2024-12-04', '2024-12-04', '2024-12-04 21:20:21', '', 'UPI/433941916665/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI862f7d0ca92048c08364fe7a488ebe13', 13500.00, 215176.30, 'pending'),
(86, 'S47772488', '2024-12-04', '2024-12-04', '2024-12-04 21:30:45', '', 'MMT/IMPS/433921101469/Ali Payment/SANJEEV SH/HDFCBank', 9000.00, 224176.30, 'pending'),
(87, 'S47683170', '2024-12-04', '2024-12-04', '2024-12-04 21:45:31', '', 'UPI/470515560753/UPI/abhishek.mn.iis/State Bank Of I/AXI201a8433bdeb4c61a56be3cce362b366', 11500.00, 235676.30, 'pending'),
(88, 'S48813346', '2024-12-05', '2024-12-05', '2024-12-05 02:02:00', '', 'NEFT-N340243434553900-IGNOXLABS PVT LTD OP1-NEFT  EMHB042 BANGLORE DC 5020003-50200032099971-HDFC', 7056.00, 242732.30, 'pending'),
(89, 'S48812502', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434591254-IGNOXLABS PVT LTD OP1-NEFT  EMHB038 BANGLORE DC 5020003-50200032099971-HDFC', 4165.00, 246897.30, 'pending'),
(90, 'S48814152', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434581711-IGNOXLABS PVT LTD OP1-NEFT  EMHB037 BANGLORE DC 5020003-50200032099971-HDFC', 13230.00, 260127.30, 'pending'),
(91, 'S52143733', '2024-12-05', '2024-12-05', '2024-12-05 08:36:12', '', 'NEFT-N340243434762983-S RAMACHANDRA RAO-S RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 123231.30, 'pending'),
(92, 'C44882503', '2024-12-05', '2024-12-05', '2024-12-05 12:55:11', '', 'UPI/434063396426/UPI/deepti12karumba/AXIS BANK/SBIe15a2b9ff7474b85a1617f351d781d06', 13500.00, 136731.30, 'pending'),
(93, 'C52475339', '2024-12-05', '2024-12-05', '2024-12-05 16:24:05', '', 'NEFT-YESIG43400064650-INDIA HOME HEALTH CARE P L OPERATIO-512202424 71193-002281400004518-YESB00000', 18900.00, 155631.30, 'pending'),
(94, 'S56599551', '2024-12-05', '2024-12-05', '2024-12-05 16:49:54', '', 'NEFT-AXISCN0840109369-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 193710.90, 'pending'),
(95, 'S57986128', '2024-12-05', '2024-12-05', '2024-12-05 18:15:42', '', 'BIL/INFT/DL56694654/1stto15thDecnur/ RENU KALAGNANAM', 33000.00, 226710.90, 'pending'),
(96, 'S59404764', '2024-12-05', '2024-12-05', '2024-12-05 20:05:35', '', 'NEFT-N340243437019556-BHAVANI-DEC 1ST HALF-00771140203921-HDFC0000001', 13500.00, 155285.90, 'pending'),
(97, 'S59643664', '2024-12-05', '2024-12-05', '2024-12-05 20:36:31', '', 'UPI/470676510520/Dec 1 to 15 sal/pallavisinhamis/ICICI Bank/ICId68808e5b13e4f47915d8fbfbbe55110', 15000.00, 170285.90, 'pending'),
(98, 'S59886897', '2024-12-05', '2024-12-05', '2024-12-05 21:17:35', '', 'UPI/434060983170/Sent from Paytm/9739988071@ptsb/ICICI Bank/PTMD01B1F12564E4D2194C911C9BF3F5412', 12000.00, 182285.90, 'pending'),
(99, 'S63308333', '2024-12-06', '2024-12-06', '2024-12-06 10:32:21', '', 'UPI/434116747526/caretaker/rkpatil1@oksbi/State Bank Of I/SBIdc0d6069d5664745acfbfeb9902cee3c', 15000.00, 197285.90, 'pending'),
(100, 'S63719860', '2024-12-06', '2024-12-06', '2024-12-06 11:06:29', '', 'NEFT-N341243437655074-APARAJITA SAHA-15DAYS ADVANCE-50100177601573-HDFC0000001', 15000.00, 212285.90, 'pending'),
(101, 'S70837017', '2024-12-06', '2024-12-06', '2024-12-06 22:05:55', '', 'NEFT-SBIN224341243398-MRS MOHUA MUKHERJEE-/ATTN//INB-00000036831395463-SBIN0009042', 22400.00, 234650.50, 'pending'),
(102, 'S75317231', '2024-12-07', '2024-12-07', '2024-12-07 12:39:06', '', 'NEFT-N342243440819027-ANURAG SRIVASTAVA-ALOK SRIVASTAVA-00441060006038-HDFC0000001', 27900.00, 262550.50, 'pending'),
(103, 'S89117605', '2024-12-09', '2024-12-09', '2024-12-09 08:15:43', '', 'FT-MESPOS SET 10XX080827 091224', 205133.68, 237684.18, 'pending'),
(104, 'S93026350', '2024-12-09', '2024-12-09', '2024-12-09 15:03:23', '', 'NEFT-KKBKH24344647334-NHK MEDICAL PRIVATE LIMITED-PAYMENT-9739841619-KKBK0000958', 72045.00, 309729.18, 'pending'),
(105, 'S97140070', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 315372.18, 'pending'),
(106, 'S49409907', '2024-11-13', '2024-11-13', '2024-11-13 12:37:51', '', 'NEFT-P318240375189734-ASHA D NAYAK--0125101001157-CNRB0000125', 21000.00, 34434.03, 'Matched'),
(107, 'S58792440', '2024-11-14', '2024-11-14', '2024-11-14 12:43:08', '', 'BIL/INFT/DKI1914610/Nov set2/ DHANYA ROS MATH', 14000.00, 28434.03, 'Matched'),
(108, 'S59919983', '2024-11-14', '2024-11-14', '2024-11-14 14:32:49', '', 'UPI/431966588105/Attendant for M/madhavi.krishna/Union Bank of I/ICI889e75bae7454070adb31dcd5a39d20c', 13500.00, 41934.03, 'pending'),
(109, 'S68642897', '2024-11-15', '2024-11-15', '2024-11-15 13:31:20', '', 'INF/INFT/038300045131/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 20958.00, 62892.03, 'pending'),
(110, 'S68647127', '2024-11-15', '2024-11-15', '2024-11-15 13:31:54', '', 'INF/INFT/038300053381/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 6395.00, 69287.03, 'pending'),
(111, 'S68648725', '2024-11-15', '2024-11-15', '2024-11-15 13:32:04', '', 'INF/INFT/038300056191/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 19050.00, 88337.03, 'Matched'),
(112, 'S68932545', '2024-11-15', '2024-11-15', '2024-11-15 14:12:53', '', 'INF/INFT/038300516371/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 29057.03, 'pending'),
(113, 'S68933364', '2024-11-15', '2024-11-15', '2024-11-15 14:13:04', '', 'INF/INFT/038300519091/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 49777.03, 'pending'),
(114, 'S68933971', '2024-11-15', '2024-11-15', '2024-11-15 14:13:14', '', 'INF/INFT/038300521141/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 16808.00, 66585.03, 'pending'),
(115, 'S68935004', '2024-11-15', '2024-11-15', '2024-11-15 14:13:22', '', 'INF/INFT/038300522641/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 1334.00, 67919.03, 'pending'),
(116, 'S70395084', '2024-11-15', '2024-11-15', '2024-11-15 17:50:01', '', 'UPI/432055761180/UPI/cynthiajimmy@ok/State Bank Of I/SBI701ec21a073747329af8e0101fae926d', 13500.00, 81419.03, 'pending'),
(117, 'S73697621', '2024-11-16', '2024-11-16', '2024-11-16 08:07:42', '', 'MMT/IMPS/432108828325/null/MANGALA KO/State Bank of I', 13500.00, 94919.03, 'pending'),
(118, 'S73942259', '2024-11-16', '2024-11-16', '2024-11-16 09:38:08', '', 'UPI/9901537347@ibl/Payment from Ph/Union Bank of I/356324008385/IBLa4fc535fb1d94fadaad705770e50cad6', 12500.00, 107419.03, 'pending'),
(119, 'S74013974', '2024-11-16', '2024-11-16', '2024-11-16 09:41:31', '', 'UPI/468737652217/Paid via SuperM/8197129933@supe/ICICI Bank/SMY2411160941ROO2MQXIFRWV32PTV3541C', 14000.00, 121419.03, 'pending'),
(120, 'S75485220', '2024-11-16', '2024-11-16', '2024-11-16 12:28:56', '', 'BIL/INFT/DKK2266161/MI Khan elder c/ SYED ABDUL MUSS', 12750.00, 134169.03, 'pending'),
(121, 'S78020341', '2024-11-16', '2024-11-16', '2024-11-16 16:57:51', '', 'BIL/INFT/DKK2315964/NA/ UMA SATYEN VYAS', 15750.00, 109119.03, 'pending'),
(122, 'S78018687', '2024-11-16', '2024-11-16', '2024-11-16 17:21:31', '', 'UPI/468741241443/Nursing/9845894222@supe/AXIS BANK/SMY2411161721UF6GBEWTJL3IVF7PYJPT9L', 13500.00, 122619.03, 'pending'),
(123, 'S78368102', '2024-11-16', '2024-11-16', '2024-11-16 17:55:24', '', 'UPI/anuragverma150-/UPI/AXIS BANK/468795146377/AXI1df955ccb4e04383ba4440cf8eb55d5a', 13500.00, 136119.03, 'pending'),
(124, 'S78800076', '2024-11-16', '2024-11-16', '2024-11-16 18:35:35', '', 'UPI/432162245191/UPI/obi2005-3@okaxi/AXIS BANK/AXI305b2e70add74000aa4a3ef0a37dabe4', 13500.00, 149619.03, 'pending'),
(125, 'S78905669', '2024-11-16', '2024-11-16', '2024-11-16 18:39:44', '', 'INF/INFT/038315025331/Salary         /ARCHANA DIWAN', 13500.00, 163119.03, 'pending'),
(126, 'S79748941', '2024-11-16', '2024-11-16', '2024-11-16 20:34:24', '', 'NEFT-SVCB024321302874-R JAYALAKSHMI-R JAYALAKSHMI 2ND HALF OF NOV 2024-109803130005618-SVCB0000098', 13500.00, 176619.03, 'pending'),
(127, 'S80121355', '2024-11-16', '2024-11-16', '2024-11-16 21:40:43', '', 'MMT/IMPS/432121759197/null/RAVI RAJ S/State Bank of I', 11625.00, 188244.03, 'pending'),
(128, 'S80434449', '2024-11-16', '2024-11-16', '2024-11-16 22:58:50', '', 'FT-MESPOS/REVRENGSTOCT24/EP049242', 80.82, 188324.85, 'pending'),
(129, 'S80706988', '2024-11-17', '2024-11-17', '2024-11-17 01:33:39', '', 'NEFT-N322243402959481-BHAVANI-NOV 2ND HALF 2024-00771140203921-HDFC0000001', 12500.00, 130824.85, 'pending'),
(130, 'S81168941', '2024-11-16', '2024-11-17', '2024-11-17 05:56:09', '', 'FT-MESPOS/REV/RENT/OCT24/EP049242', 449.00, 131273.85, 'pending'),
(131, 'S82245503', '2024-11-17', '2024-11-17', '2024-11-17 11:50:23', '', 'UPI/468868371912/UPI/abhishek.mn.iis/State Bank Of I/AXI9d6bd59c17604cc38fb77b7256a893e5', 11500.00, 142773.85, 'pending'),
(132, 'S82376192', '2024-11-17', '2024-11-17', '2024-11-17 11:51:17', '', 'UPI/432224940501/UPI/christinavprabh/State Bank Of I/ICI35f3b109a3ff4f1faa4ad5e7e46df700', 4500.00, 147273.85, 'pending'),
(133, 'S82765985', '2024-11-17', '2024-11-17', '2024-11-17 13:08:55', '', 'MMT/IMPS/432213127447/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 160773.85, 'pending'),
(134, 'S83168600', '2024-11-17', '2024-11-17', '2024-11-17 14:32:20', '', 'NEFT-AXOMB32275094653-SRIRUPA SEN--015010100536585-UTIB0004821', 12500.00, 173273.85, 'pending'),
(135, 'S85235775', '2024-11-17', '2024-11-17', '2024-11-17 22:24:09', '', 'UPI/468851867229/UPI/manjeetverma161/Punjab National/ICI5efb05c53bed458da215897ec3f0e360', 14000.00, 187273.85, 'pending'),
(136, 'S87711173', '2024-11-18', '2024-11-18', '2024-11-18 08:31:55', '', 'NEFT-N323243403464711-S RAMACHANDRA RAO-RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 200773.85, 'pending'),
(137, 'S88771127', '2024-11-18', '2024-11-18', '2024-11-18 11:15:35', '', 'UPI/432389681030/UPI/deepti12karumba/AXIS BANK/SBI92bfef8f88e84e789a204767dd6dcbfe', 10500.00, 211273.85, 'pending'),
(138, 'S89241742', '2024-11-18', '2024-11-18', '2024-11-18 11:34:01', '', 'UPI/432390842965/UPI/cynthiajimmy@ok/State Bank Of I/SBIfd2ba295b1274ff693d7cf37b8b76cad', 1800.00, 213073.85, 'pending'),
(139, 'S90372247', '2024-11-18', '2024-11-18', '2024-11-18 12:56:27', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/432376654391/HDF5b4e61c28b38492382435bf9c57bb647', 13500.00, 226573.85, 'pending'),
(140, 'S90839934', '2024-11-18', '2024-11-18', '2024-11-18 13:16:39', '', 'NEFT-N323243403899686-IGNOXLABS PVT LTD OP1-NEFT  EMHB002 BANGLORE 5020003209-50200032099971-HDFC', 12495.00, 239068.85, 'pending'),
(141, 'S90839937', '2024-11-18', '2024-11-18', '2024-11-18 13:16:40', '', 'NEFT-N323243403899682-IGNOXLABS PVT LTD OP1-NEFT  EMHB0002 BANGLORE 502000320-50200032099971-HDFC', 13230.00, 252298.85, 'pending'),
(142, 'S91887312', '2024-11-18', '2024-11-18', '2024-11-18 14:57:08', '', 'BIL/INFT/DKM2588188/16thto30thNovem/ RENU KALAGNANAM', 33000.00, 285298.85, 'pending'),
(143, 'S92243655', '2024-11-18', '2024-11-18', '2024-11-18 15:23:14', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5431', 12000.00, 297298.85, 'pending'),
(144, 'S92263663', '2024-11-18', '2024-11-18', '2024-11-18 15:24:49', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5433', 1500.00, 298798.85, 'pending'),
(145, 'S93418829', '2024-11-18', '2024-11-18', '2024-11-18 16:45:10', '', 'MMT/IMPS/432316117723/Ali Helper/SANJEEV SH/HDFC Bank', 3600.00, 22398.85, 'pending'),
(146, 'S94929916', '2024-11-18', '2024-11-18', '2024-11-18 19:02:59', '', 'INF/INFT/038329979601/AARUSH CONSTRUC', 100000.00, 122398.85, 'pending'),
(147, 'S95293560', '2024-11-18', '2024-11-18', '2024-11-18 19:39:18', '', 'MMT/IMPS/432319525371/Nov30/VIDYASRIVA/Axis Bank', 23625.00, 146023.85, 'pending'),
(148, 'S95317245', '2024-11-18', '2024-11-18', '2024-11-18 19:42:56', '', 'MMT/IMPS/432319545404/Nov30/VLAKSHMIAM/Axis Bank', 12600.00, 158623.85, 'pending'),
(149, 'S96680226', '2024-11-19', '2024-11-19', '2024-11-19 00:49:50', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/432407404179/HDF13aa8b0039b44fe7bb85fc842f476ea5', 12500.00, 171123.85, 'pending'),
(150, 'S98613032', '2024-11-19', '2024-11-19', '2024-11-19 09:47:13', '', 'INF/INFT/038332871671/44855766     /EZEE MEDFIND LLP    /', 1300.00, 172423.85, 'pending'),
(151, 'S99309776', '2024-11-19', '2024-11-19', '2024-11-19 11:23:38', '', 'UPI/469065238185/salary 16 to 30/pallavisinhamis/ICICI Bank/ICI2ad8b12a9fff4a2994199b9f7e18fcaf', 15000.00, 187423.85, 'pending'),
(152, 'S11434339', '2024-11-20', '2024-11-20', '2024-11-20 17:26:20', '', 'CMS/ CMS4662594714/SUKINO HEALTHCARE SOLUTIONS PR', 27291.00, 154714.85, 'pending'),
(153, 'S16777086', '2024-11-21', '2024-11-21', '2024-11-21 11:04:28', '', 'UPI/432626433487/UPI/sandhyanair199@/ICICI Bank/ICI3155b308a5ce40d0afe24aed6f7bd000', 12000.00, 166714.85, 'pending'),
(154, 'S19082966', '2024-11-21', '2024-11-21', '2024-11-21 14:05:30', '', 'NEFT-AXISCN0823448800-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 159954.45, 'pending'),
(155, 'S25554007', '2024-11-22', '2024-11-22', '2024-11-22 07:37:39', '', 'UPI/432780870440/caretaker/rkpatil1@oksbi/State Bank Of I/SBI9a9f4cb52eaf4d1a8d68b1547d5b177c', 15000.00, 129454.45, 'pending'),
(156, 'S27420133', '2024-11-22', '2024-11-22', '2024-11-22 12:38:03', '', 'UPI/432796300568/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI777c692ff028408bafb59a5402522716', 12600.00, 133392.45, 'pending'),
(157, 'S39453747', '2024-11-24', '2024-11-24', '2024-11-24 10:20:15', '', 'CMS/ CMS4669666771/SUKINO HEALTHCARE SOLUTIONS PR', 4704.00, 120096.45, 'pending'),
(158, 'S52285457', '2024-11-25', '2024-11-25', '2024-11-25 20:33:27', '', 'NEFT-CMS3302466086620-HEALTHVISTA INDIA PRIVATE LIMITE-PAYMENT-6447052626-KKBK0000958', 33997.00, 154093.45, 'pending'),
(159, 'S56045368', '2024-11-26', '2024-11-26', '2024-11-26 10:15:07', '', 'UPI/433122951714/UPI/yusufshahpurwal/HDFC BANK LTD/HDF8368d24241df4227ac6b70eb0d6956d2', 13500.00, 167593.45, 'pending'),
(160, 'M3735849', '2024-11-26', '2024-11-26', '2024-11-26 19:15:41', '', 'TRF/MADAN/055778/ICI/23.11.2024', 25000.00, 192593.45, 'pending'),
(161, 'S91139662', '2024-11-29', '2024-11-29', '2024-11-29 16:55:23', '', 'UPI/433474709893/UPI/kanchanaseshadr/HDFC BANK LTD/HDF387ad8fb3d1646edb7624e068c7376c0', 29295.00, 152888.45, 'pending'),
(162, 'S97922697', '2024-11-30', '2024-11-30', '2024-11-30 11:24:55', '', 'MMT/IMPS/433511351600/Dec2024 Surende/RAJESH DES/HDFC Bank', 27900.00, 180788.45, 'pending'),
(163, 'S5509059', '2024-12-01', '2024-12-01', '2024-12-01 00:08:53', '', 'UPI/470234442140/UPI/nuqranaqvi@okic/ICICI Bank/ICI0e23a5d0c0144ff0a6474e25b7ecfdcc', 14000.00, 194788.45, 'pending'),
(164, 'S6697751', '2024-12-01', '2024-12-01', '2024-12-01 07:00:00', '', 'BIL/INFT/DL15102214/December first / DHANYA ROS MATH', 14000.00, 208788.45, 'pending'),
(165, 'S6792085', '2024-12-01', '2024-12-01', '2024-12-01 07:31:19', '', 'MMT/IMPS/433607157093/Dec15/VLAKSHMIAM/Axis Bank', 12600.00, 221388.45, 'pending'),
(166, 'S9474255', '2024-12-01', '2024-12-01', '2024-12-01 13:41:23', '', 'BIL/INFT/DL15241533/MI Khan Elder c/ SYED ABDUL MUSS', 12750.00, 234138.45, 'pending'),
(167, 'S13105703', '2024-12-02', '2024-12-02', '2024-12-02 02:01:42', '', 'NEFT-N337243426973380-ANVAYAA KIN CARE PVT LTD-NEFT    AAYUSH HHC 50200019583158-50200019583158-HDF', 23760.00, 113397.45, 'pending'),
(168, 'S14175281', '2024-12-02', '2024-12-02', '2024-12-02 06:48:49', '', 'MMT/IMPS/433706505623/Dec15/VIDYASRIVA/Axis Bank', 23625.00, 137022.45, 'pending'),
(169, 'S15760326', '2024-12-02', '2024-12-02', '2024-12-02 09:30:09', '', 'UPI/470342152061/18th to 30th No/christinavprabh/State Bank Of I/AXI8ddd925c99944297a2a6ae1dc7488d41', 11700.00, 148722.45, 'pending'),
(170, 'S16532005', '2024-12-02', '2024-12-02', '2024-12-02 10:39:10', '', 'MMT/IMPS/433710570676/Bill Payment/MANGALA KO/State Bank of I', 9000.00, 157722.45, 'pending'),
(171, 'S24806421', '2024-12-02', '2024-12-02', '2024-12-02 20:43:18', '', 'MMT/IMPS/433720032204/IMPS/SRIRUPASEN/Axis Bank', 12500.00, 170222.45, 'pending'),
(172, 'S25433966', '2024-12-02', '2024-12-02', '2024-12-02 21:50:11', '', 'UPI/470374003846/UPI/obi2005-3@okaxi/AXIS BANK/AXI59ad74bbe25842bfb6fdf0e70b52d58a', 13500.00, 183722.45, 'pending'),
(173, 'S25735864', '2024-12-02', '2024-12-02', '2024-12-02 22:36:44', '', 'UPI/9901537347@axl/Payment from Ph/Union Bank of I/132883836942/AXL7cbc4b44082e4ffd9fb3251fac112042', 12500.00, 196222.45, 'pending'),
(174, 'S33545228', '2024-12-03', '2024-12-03', '2024-12-03 16:21:54', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/433866408881/HDFdd60b004d4df4e61abcc9c448f27fdd6', 13500.00, 209663.45, 'pending'),
(175, 'S35992827', '2024-12-03', '2024-12-03', '2024-12-03 19:27:26', '', 'BIL/INFT/DL36083050/NA/ UMA SATYEN VYAS', 34000.00, 83663.45, 'pending'),
(176, 'S36090241', '2024-12-03', '2024-12-03', '2024-12-03 19:41:30', '', 'UPI/433879338733/UPI/jayastev-yahoo./INDIAN OVERSEAS/HDF2012fc9348c24b8ab630f52a0a0db419', 29250.00, 112913.45, 'pending'),
(177, 'S36174722', '2024-12-03', '2024-12-03', '2024-12-03 20:01:16', '', 'UPI/470406596078/Attendant for M/madhavi.krishna/Union Bank of I/ICIc2f1bdf31a5f4bfa9f2d5800d5bc0961', 13500.00, 126413.45, 'pending'),
(178, 'S36251939', '2024-12-03', '2024-12-03', '2024-12-03 20:12:19', '', 'UPI/433825525338/UPI Payment/9884018900@icic/ICICI Bank/ICI4550286beaf44a0883cb57b872dedf93', 13500.00, 139913.45, 'pending'),
(179, 'S36352356', '2024-12-03', '2024-12-03', '2024-12-03 20:13:42', '', 'UPI/anuragverma150-/UPI/AXIS BANK/433855186194/AXI1c25ec598b594f1186e3445477748c06', 13500.00, 153413.45, 'pending'),
(180, 'S36938342', '2024-12-03', '2024-12-03', '2024-12-03 21:28:23', '', 'UPI/433891688658/Nursing/9845894222@supe/AXIS BANK/SMY241203212868WFXIGOHBUCVIF9W6FMCM', 13500.00, 166913.45, 'pending'),
(181, 'S37109923', '2024-12-03', '2024-12-03', '2024-12-03 21:52:25', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/433886984451/HDF4ee2107685ba4711b450b71ff494d8b1', 1666.00, 168579.45, 'pending'),
(182, 'S37238536', '2024-12-03', '2024-12-03', '2024-12-03 22:04:48', '', 'MMT/IMPS/433822923147/Bill Payment/RAVI RAJ S/State Bank of I', 11625.00, 180204.45, 'pending'),
(183, 'S37307199', '2024-12-03', '2024-12-03', '2024-12-03 22:16:54', '', 'INF/INFT/038483986991/salary         /ARCHANA DIWAN', 13500.00, 193704.45, 'pending'),
(184, 'S37708683', '2024-12-03', '2024-12-03', '2024-12-03 23:40:59', '', 'BIL/INFT/DL36143237/Quick Pay FT/Phuli Debnath/029805005633SOWMYA RANGARAJ', 24334.00, 218038.45, 'pending'),
(185, 'S39375165', '2024-12-04', '2024-12-04', '2024-12-04 08:31:45', '', 'NEFT-SVCB024339842606-R JAYALAKSHMI-R JAYALAKSHMI1ST HALF DEC 2024-109803130005618-SVCB0000098', 13500.00, 231538.45, 'pending'),
(186, 'M3270273', '2024-12-04', '2024-12-04', '2024-12-04 11:12:48', '', 'BY CASH  - HRBR LAYOUT', 27000.00, 149176.30, 'pending'),
(187, 'M3331984', '2024-12-04', '2024-12-04', '2024-12-04 12:13:40', '', 'BY CASH -BANGALORE - ULSOOR C', 13500.00, 162676.30, 'pending'),
(188, 'S46403214', '2024-12-04', '2024-12-04', '2024-12-04 18:49:09', '', 'MMT/IMPS/433918467778/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 176176.30, 'pending'),
(189, 'S46699194', '2024-12-04', '2024-12-04', '2024-12-04 19:16:59', '', 'MMT/IMPS/433919546974/ReqPay/Mr  NAGARA/State Bank of I', 25500.00, 201676.30, 'pending'),
(190, 'S47489464', '2024-12-04', '2024-12-04', '2024-12-04 21:20:21', '', 'UPI/433941916665/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI862f7d0ca92048c08364fe7a488ebe13', 13500.00, 215176.30, 'pending'),
(191, 'S47772488', '2024-12-04', '2024-12-04', '2024-12-04 21:30:45', '', 'MMT/IMPS/433921101469/Ali Payment/SANJEEV SH/HDFCBank', 9000.00, 224176.30, 'pending'),
(192, 'S47683170', '2024-12-04', '2024-12-04', '2024-12-04 21:45:31', '', 'UPI/470515560753/UPI/abhishek.mn.iis/State Bank Of I/AXI201a8433bdeb4c61a56be3cce362b366', 11500.00, 235676.30, 'pending'),
(193, 'S48813346', '2024-12-05', '2024-12-05', '2024-12-05 02:02:00', '', 'NEFT-N340243434553900-IGNOXLABS PVT LTD OP1-NEFT  EMHB042 BANGLORE DC 5020003-50200032099971-HDFC', 7056.00, 242732.30, 'pending'),
(194, 'S48812502', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434591254-IGNOXLABS PVT LTD OP1-NEFT  EMHB038 BANGLORE DC 5020003-50200032099971-HDFC', 4165.00, 246897.30, 'pending'),
(195, 'S48814152', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434581711-IGNOXLABS PVT LTD OP1-NEFT  EMHB037 BANGLORE DC 5020003-50200032099971-HDFC', 13230.00, 260127.30, 'pending'),
(196, 'S52143733', '2024-12-05', '2024-12-05', '2024-12-05 08:36:12', '', 'NEFT-N340243434762983-S RAMACHANDRA RAO-S RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 123231.30, 'pending'),
(197, 'C44882503', '2024-12-05', '2024-12-05', '2024-12-05 12:55:11', '', 'UPI/434063396426/UPI/deepti12karumba/AXIS BANK/SBIe15a2b9ff7474b85a1617f351d781d06', 13500.00, 136731.30, 'pending'),
(198, 'C52475339', '2024-12-05', '2024-12-05', '2024-12-05 16:24:05', '', 'NEFT-YESIG43400064650-INDIA HOME HEALTH CARE P L OPERATIO-512202424 71193-002281400004518-YESB00000', 18900.00, 155631.30, 'pending'),
(199, 'S56599551', '2024-12-05', '2024-12-05', '2024-12-05 16:49:54', '', 'NEFT-AXISCN0840109369-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 193710.90, 'pending'),
(200, 'S57986128', '2024-12-05', '2024-12-05', '2024-12-05 18:15:42', '', 'BIL/INFT/DL56694654/1stto15thDecnur/ RENU KALAGNANAM', 33000.00, 226710.90, 'pending'),
(201, 'S59404764', '2024-12-05', '2024-12-05', '2024-12-05 20:05:35', '', 'NEFT-N340243437019556-BHAVANI-DEC 1ST HALF-00771140203921-HDFC0000001', 13500.00, 155285.90, 'pending'),
(202, 'S59643664', '2024-12-05', '2024-12-05', '2024-12-05 20:36:31', '', 'UPI/470676510520/Dec 1 to 15 sal/pallavisinhamis/ICICI Bank/ICId68808e5b13e4f47915d8fbfbbe55110', 15000.00, 170285.90, 'pending'),
(203, 'S59886897', '2024-12-05', '2024-12-05', '2024-12-05 21:17:35', '', 'UPI/434060983170/Sent from Paytm/9739988071@ptsb/ICICI Bank/PTMD01B1F12564E4D2194C911C9BF3F5412', 12000.00, 182285.90, 'pending'),
(204, 'S63308333', '2024-12-06', '2024-12-06', '2024-12-06 10:32:21', '', 'UPI/434116747526/caretaker/rkpatil1@oksbi/State Bank Of I/SBIdc0d6069d5664745acfbfeb9902cee3c', 15000.00, 197285.90, 'pending'),
(205, 'S63719860', '2024-12-06', '2024-12-06', '2024-12-06 11:06:29', '', 'NEFT-N341243437655074-APARAJITA SAHA-15DAYS ADVANCE-50100177601573-HDFC0000001', 15000.00, 212285.90, 'pending'),
(206, 'S70837017', '2024-12-06', '2024-12-06', '2024-12-06 22:05:55', '', 'NEFT-SBIN224341243398-MRS MOHUA MUKHERJEE-/ATTN//INB-00000036831395463-SBIN0009042', 22400.00, 234650.50, 'pending'),
(207, 'S75317231', '2024-12-07', '2024-12-07', '2024-12-07 12:39:06', '', 'NEFT-N342243440819027-ANURAG SRIVASTAVA-ALOK SRIVASTAVA-00441060006038-HDFC0000001', 27900.00, 262550.50, 'pending'),
(208, 'S89117605', '2024-12-09', '2024-12-09', '2024-12-09 08:15:43', '', 'FT-MESPOS SET 10XX080827 091224', 205133.68, 237684.18, 'pending'),
(209, 'S93026350', '2024-12-09', '2024-12-09', '2024-12-09 15:03:23', '', 'NEFT-KKBKH24344647334-NHK MEDICAL PRIVATE LIMITED-PAYMENT-9739841619-KKBK0000958', 72045.00, 309729.18, 'pending'),
(210, 'S97140070', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 315372.18, 'pending'),
(211, 'S49409907', '2024-11-13', '2024-11-13', '2024-11-13 12:37:51', '', 'NEFT-P318240375189734-ASHA D NAYAK--0125101001157-CNRB0000125', 21000.00, 34434.03, 'Matched'),
(212, 'S58792440', '2024-11-14', '2024-11-14', '2024-11-14 12:43:08', '', 'BIL/INFT/DKI1914610/Nov set2/ DHANYA ROS MATH', 14000.00, 28434.03, 'Matched'),
(213, 'S59919983', '2024-11-14', '2024-11-14', '2024-11-14 14:32:49', '', 'UPI/431966588105/Attendant for M/madhavi.krishna/Union Bank of I/ICI889e75bae7454070adb31dcd5a39d20c', 13500.00, 41934.03, 'pending'),
(214, 'S68642897', '2024-11-15', '2024-11-15', '2024-11-15 13:31:20', '', 'INF/INFT/038300045131/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 20958.00, 62892.03, 'pending'),
(215, 'S68647127', '2024-11-15', '2024-11-15', '2024-11-15 13:31:54', '', 'INF/INFT/038300053381/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 6395.00, 69287.03, 'pending'),
(216, 'S68648725', '2024-11-15', '2024-11-15', '2024-11-15 13:32:04', '', 'INF/INFT/038300056191/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 19050.00, 88337.03, 'Matched'),
(217, 'S68932545', '2024-11-15', '2024-11-15', '2024-11-15 14:12:53', '', 'INF/INFT/038300516371/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 29057.03, 'pending'),
(218, 'S68933364', '2024-11-15', '2024-11-15', '2024-11-15 14:13:04', '', 'INF/INFT/038300519091/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 49777.03, 'pending'),
(219, 'S68933971', '2024-11-15', '2024-11-15', '2024-11-15 14:13:14', '', 'INF/INFT/038300521141/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 16808.00, 66585.03, 'pending'),
(220, 'S68935004', '2024-11-15', '2024-11-15', '2024-11-15 14:13:22', '', 'INF/INFT/038300522641/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 1334.00, 67919.03, 'pending'),
(221, 'S70395084', '2024-11-15', '2024-11-15', '2024-11-15 17:50:01', '', 'UPI/432055761180/UPI/cynthiajimmy@ok/State Bank Of I/SBI701ec21a073747329af8e0101fae926d', 13500.00, 81419.03, 'pending'),
(222, 'S73697621', '2024-11-16', '2024-11-16', '2024-11-16 08:07:42', '', 'MMT/IMPS/432108828325/null/MANGALA KO/State Bank of I', 13500.00, 94919.03, 'pending'),
(223, 'S73942259', '2024-11-16', '2024-11-16', '2024-11-16 09:38:08', '', 'UPI/9901537347@ibl/Payment from Ph/Union Bank of I/356324008385/IBLa4fc535fb1d94fadaad705770e50cad6', 12500.00, 107419.03, 'pending'),
(224, 'S74013974', '2024-11-16', '2024-11-16', '2024-11-16 09:41:31', '', 'UPI/468737652217/Paid via SuperM/8197129933@supe/ICICI Bank/SMY2411160941ROO2MQXIFRWV32PTV3541C', 14000.00, 121419.03, 'pending'),
(225, 'S75485220', '2024-11-16', '2024-11-16', '2024-11-16 12:28:56', '', 'BIL/INFT/DKK2266161/MI Khan elder c/ SYED ABDUL MUSS', 12750.00, 134169.03, 'pending'),
(226, 'S78020341', '2024-11-16', '2024-11-16', '2024-11-16 16:57:51', '', 'BIL/INFT/DKK2315964/NA/ UMA SATYEN VYAS', 15750.00, 109119.03, 'pending'),
(227, 'S78018687', '2024-11-16', '2024-11-16', '2024-11-16 17:21:31', '', 'UPI/468741241443/Nursing/9845894222@supe/AXIS BANK/SMY2411161721UF6GBEWTJL3IVF7PYJPT9L', 13500.00, 122619.03, 'pending'),
(228, 'S78368102', '2024-11-16', '2024-11-16', '2024-11-16 17:55:24', '', 'UPI/anuragverma150-/UPI/AXIS BANK/468795146377/AXI1df955ccb4e04383ba4440cf8eb55d5a', 13500.00, 136119.03, 'pending'),
(229, 'S78800076', '2024-11-16', '2024-11-16', '2024-11-16 18:35:35', '', 'UPI/432162245191/UPI/obi2005-3@okaxi/AXIS BANK/AXI305b2e70add74000aa4a3ef0a37dabe4', 13500.00, 149619.03, 'pending'),
(230, 'S78905669', '2024-11-16', '2024-11-16', '2024-11-16 18:39:44', '', 'INF/INFT/038315025331/Salary         /ARCHANA DIWAN', 13500.00, 163119.03, 'pending'),
(231, 'S79748941', '2024-11-16', '2024-11-16', '2024-11-16 20:34:24', '', 'NEFT-SVCB024321302874-R JAYALAKSHMI-R JAYALAKSHMI 2ND HALF OF NOV 2024-109803130005618-SVCB0000098', 13500.00, 176619.03, 'pending'),
(232, 'S80121355', '2024-11-16', '2024-11-16', '2024-11-16 21:40:43', '', 'MMT/IMPS/432121759197/null/RAVI RAJ S/State Bank of I', 11625.00, 188244.03, 'pending'),
(233, 'S80434449', '2024-11-16', '2024-11-16', '2024-11-16 22:58:50', '', 'FT-MESPOS/REVRENGSTOCT24/EP049242', 80.82, 188324.85, 'pending'),
(234, 'S80706988', '2024-11-17', '2024-11-17', '2024-11-17 01:33:39', '', 'NEFT-N322243402959481-BHAVANI-NOV 2ND HALF 2024-00771140203921-HDFC0000001', 12500.00, 130824.85, 'pending'),
(235, 'S81168941', '2024-11-16', '2024-11-17', '2024-11-17 05:56:09', '', 'FT-MESPOS/REV/RENT/OCT24/EP049242', 449.00, 131273.85, 'pending'),
(236, 'S82245503', '2024-11-17', '2024-11-17', '2024-11-17 11:50:23', '', 'UPI/468868371912/UPI/abhishek.mn.iis/State Bank Of I/AXI9d6bd59c17604cc38fb77b7256a893e5', 11500.00, 142773.85, 'pending'),
(237, 'S82376192', '2024-11-17', '2024-11-17', '2024-11-17 11:51:17', '', 'UPI/432224940501/UPI/christinavprabh/State Bank Of I/ICI35f3b109a3ff4f1faa4ad5e7e46df700', 4500.00, 147273.85, 'pending'),
(238, 'S82765985', '2024-11-17', '2024-11-17', '2024-11-17 13:08:55', '', 'MMT/IMPS/432213127447/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 160773.85, 'pending'),
(239, 'S83168600', '2024-11-17', '2024-11-17', '2024-11-17 14:32:20', '', 'NEFT-AXOMB32275094653-SRIRUPA SEN--015010100536585-UTIB0004821', 12500.00, 173273.85, 'pending'),
(240, 'S85235775', '2024-11-17', '2024-11-17', '2024-11-17 22:24:09', '', 'UPI/468851867229/UPI/manjeetverma161/Punjab National/ICI5efb05c53bed458da215897ec3f0e360', 14000.00, 187273.85, 'pending'),
(241, 'S87711173', '2024-11-18', '2024-11-18', '2024-11-18 08:31:55', '', 'NEFT-N323243403464711-S RAMACHANDRA RAO-RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 200773.85, 'pending'),
(242, 'S88771127', '2024-11-18', '2024-11-18', '2024-11-18 11:15:35', '', 'UPI/432389681030/UPI/deepti12karumba/AXIS BANK/SBI92bfef8f88e84e789a204767dd6dcbfe', 10500.00, 211273.85, 'pending'),
(243, 'S89241742', '2024-11-18', '2024-11-18', '2024-11-18 11:34:01', '', 'UPI/432390842965/UPI/cynthiajimmy@ok/State Bank Of I/SBIfd2ba295b1274ff693d7cf37b8b76cad', 1800.00, 213073.85, 'pending'),
(244, 'S90372247', '2024-11-18', '2024-11-18', '2024-11-18 12:56:27', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/432376654391/HDF5b4e61c28b38492382435bf9c57bb647', 13500.00, 226573.85, 'pending'),
(245, 'S90839934', '2024-11-18', '2024-11-18', '2024-11-18 13:16:39', '', 'NEFT-N323243403899686-IGNOXLABS PVT LTD OP1-NEFT  EMHB002 BANGLORE 5020003209-50200032099971-HDFC', 12495.00, 239068.85, 'pending'),
(246, 'S90839937', '2024-11-18', '2024-11-18', '2024-11-18 13:16:40', '', 'NEFT-N323243403899682-IGNOXLABS PVT LTD OP1-NEFT  EMHB0002 BANGLORE 502000320-50200032099971-HDFC', 13230.00, 252298.85, 'pending'),
(247, 'S91887312', '2024-11-18', '2024-11-18', '2024-11-18 14:57:08', '', 'BIL/INFT/DKM2588188/16thto30thNovem/ RENU KALAGNANAM', 33000.00, 285298.85, 'pending'),
(248, 'S92243655', '2024-11-18', '2024-11-18', '2024-11-18 15:23:14', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5431', 12000.00, 297298.85, 'pending'),
(249, 'S92263663', '2024-11-18', '2024-11-18', '2024-11-18 15:24:49', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5433', 1500.00, 298798.85, 'pending'),
(250, 'S93418829', '2024-11-18', '2024-11-18', '2024-11-18 16:45:10', '', 'MMT/IMPS/432316117723/Ali Helper/SANJEEV SH/HDFC Bank', 3600.00, 22398.85, 'pending'),
(251, 'S94929916', '2024-11-18', '2024-11-18', '2024-11-18 19:02:59', '', 'INF/INFT/038329979601/AARUSH CONSTRUC', 100000.00, 122398.85, 'pending'),
(252, 'S95293560', '2024-11-18', '2024-11-18', '2024-11-18 19:39:18', '', 'MMT/IMPS/432319525371/Nov30/VIDYASRIVA/Axis Bank', 23625.00, 146023.85, 'pending'),
(253, 'S95317245', '2024-11-18', '2024-11-18', '2024-11-18 19:42:56', '', 'MMT/IMPS/432319545404/Nov30/VLAKSHMIAM/Axis Bank', 12600.00, 158623.85, 'pending'),
(254, 'S96680226', '2024-11-19', '2024-11-19', '2024-11-19 00:49:50', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/432407404179/HDF13aa8b0039b44fe7bb85fc842f476ea5', 12500.00, 171123.85, 'pending'),
(255, 'S98613032', '2024-11-19', '2024-11-19', '2024-11-19 09:47:13', '', 'INF/INFT/038332871671/44855766     /EZEE MEDFIND LLP    /', 1300.00, 172423.85, 'pending'),
(256, 'S99309776', '2024-11-19', '2024-11-19', '2024-11-19 11:23:38', '', 'UPI/469065238185/salary 16 to 30/pallavisinhamis/ICICI Bank/ICI2ad8b12a9fff4a2994199b9f7e18fcaf', 15000.00, 187423.85, 'pending'),
(257, 'S11434339', '2024-11-20', '2024-11-20', '2024-11-20 17:26:20', '', 'CMS/ CMS4662594714/SUKINO HEALTHCARE SOLUTIONS PR', 27291.00, 154714.85, 'pending'),
(258, 'S16777086', '2024-11-21', '2024-11-21', '2024-11-21 11:04:28', '', 'UPI/432626433487/UPI/sandhyanair199@/ICICI Bank/ICI3155b308a5ce40d0afe24aed6f7bd000', 12000.00, 166714.85, 'pending'),
(259, 'S19082966', '2024-11-21', '2024-11-21', '2024-11-21 14:05:30', '', 'NEFT-AXISCN0823448800-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 159954.45, 'pending'),
(260, 'S25554007', '2024-11-22', '2024-11-22', '2024-11-22 07:37:39', '', 'UPI/432780870440/caretaker/rkpatil1@oksbi/State Bank Of I/SBI9a9f4cb52eaf4d1a8d68b1547d5b177c', 15000.00, 129454.45, 'pending'),
(261, 'S27420133', '2024-11-22', '2024-11-22', '2024-11-22 12:38:03', '', 'UPI/432796300568/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI777c692ff028408bafb59a5402522716', 12600.00, 133392.45, 'pending'),
(262, 'S39453747', '2024-11-24', '2024-11-24', '2024-11-24 10:20:15', '', 'CMS/ CMS4669666771/SUKINO HEALTHCARE SOLUTIONS PR', 4704.00, 120096.45, 'pending'),
(263, 'S52285457', '2024-11-25', '2024-11-25', '2024-11-25 20:33:27', '', 'NEFT-CMS3302466086620-HEALTHVISTA INDIA PRIVATE LIMITE-PAYMENT-6447052626-KKBK0000958', 33997.00, 154093.45, 'pending'),
(264, 'S56045368', '2024-11-26', '2024-11-26', '2024-11-26 10:15:07', '', 'UPI/433122951714/UPI/yusufshahpurwal/HDFC BANK LTD/HDF8368d24241df4227ac6b70eb0d6956d2', 13500.00, 167593.45, 'pending'),
(265, 'M3735849', '2024-11-26', '2024-11-26', '2024-11-26 19:15:41', '', 'TRF/MADAN/055778/ICI/23.11.2024', 25000.00, 192593.45, 'pending'),
(266, 'S91139662', '2024-11-29', '2024-11-29', '2024-11-29 16:55:23', '', 'UPI/433474709893/UPI/kanchanaseshadr/HDFC BANK LTD/HDF387ad8fb3d1646edb7624e068c7376c0', 29295.00, 152888.45, 'pending'),
(267, 'S97922697', '2024-11-30', '2024-11-30', '2024-11-30 11:24:55', '', 'MMT/IMPS/433511351600/Dec2024 Surende/RAJESH DES/HDFC Bank', 27900.00, 180788.45, 'pending'),
(268, 'S5509059', '2024-12-01', '2024-12-01', '2024-12-01 00:08:53', '', 'UPI/470234442140/UPI/nuqranaqvi@okic/ICICI Bank/ICI0e23a5d0c0144ff0a6474e25b7ecfdcc', 14000.00, 194788.45, 'pending'),
(269, 'S6697751', '2024-12-01', '2024-12-01', '2024-12-01 07:00:00', '', 'BIL/INFT/DL15102214/December first / DHANYA ROS MATH', 14000.00, 208788.45, 'pending'),
(270, 'S6792085', '2024-12-01', '2024-12-01', '2024-12-01 07:31:19', '', 'MMT/IMPS/433607157093/Dec15/VLAKSHMIAM/Axis Bank', 12600.00, 221388.45, 'pending'),
(271, 'S9474255', '2024-12-01', '2024-12-01', '2024-12-01 13:41:23', '', 'BIL/INFT/DL15241533/MI Khan Elder c/ SYED ABDUL MUSS', 12750.00, 234138.45, 'pending'),
(272, 'S13105703', '2024-12-02', '2024-12-02', '2024-12-02 02:01:42', '', 'NEFT-N337243426973380-ANVAYAA KIN CARE PVT LTD-NEFT    AAYUSH HHC 50200019583158-50200019583158-HDF', 23760.00, 113397.45, 'pending'),
(273, 'S14175281', '2024-12-02', '2024-12-02', '2024-12-02 06:48:49', '', 'MMT/IMPS/433706505623/Dec15/VIDYASRIVA/Axis Bank', 23625.00, 137022.45, 'pending'),
(274, 'S15760326', '2024-12-02', '2024-12-02', '2024-12-02 09:30:09', '', 'UPI/470342152061/18th to 30th No/christinavprabh/State Bank Of I/AXI8ddd925c99944297a2a6ae1dc7488d41', 11700.00, 148722.45, 'pending'),
(275, 'S16532005', '2024-12-02', '2024-12-02', '2024-12-02 10:39:10', '', 'MMT/IMPS/433710570676/Bill Payment/MANGALA KO/State Bank of I', 9000.00, 157722.45, 'pending'),
(276, 'S24806421', '2024-12-02', '2024-12-02', '2024-12-02 20:43:18', '', 'MMT/IMPS/433720032204/IMPS/SRIRUPASEN/Axis Bank', 12500.00, 170222.45, 'pending'),
(277, 'S25433966', '2024-12-02', '2024-12-02', '2024-12-02 21:50:11', '', 'UPI/470374003846/UPI/obi2005-3@okaxi/AXIS BANK/AXI59ad74bbe25842bfb6fdf0e70b52d58a', 13500.00, 183722.45, 'pending');
INSERT INTO `deposits` (`id`, `tran_id`, `value_date`, `transaction_date`, `transaction_posted_date`, `cheque_no_ref_no`, `transaction_remarks`, `deposit_amt`, `balance`, `status`) VALUES
(278, 'S25735864', '2024-12-02', '2024-12-02', '2024-12-02 22:36:44', '', 'UPI/9901537347@axl/Payment from Ph/Union Bank of I/132883836942/AXL7cbc4b44082e4ffd9fb3251fac112042', 12500.00, 196222.45, 'pending'),
(279, 'S33545228', '2024-12-03', '2024-12-03', '2024-12-03 16:21:54', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/433866408881/HDFdd60b004d4df4e61abcc9c448f27fdd6', 13500.00, 209663.45, 'pending'),
(280, 'S35992827', '2024-12-03', '2024-12-03', '2024-12-03 19:27:26', '', 'BIL/INFT/DL36083050/NA/ UMA SATYEN VYAS', 34000.00, 83663.45, 'pending'),
(281, 'S36090241', '2024-12-03', '2024-12-03', '2024-12-03 19:41:30', '', 'UPI/433879338733/UPI/jayastev-yahoo./INDIAN OVERSEAS/HDF2012fc9348c24b8ab630f52a0a0db419', 29250.00, 112913.45, 'pending'),
(282, 'S36174722', '2024-12-03', '2024-12-03', '2024-12-03 20:01:16', '', 'UPI/470406596078/Attendant for M/madhavi.krishna/Union Bank of I/ICIc2f1bdf31a5f4bfa9f2d5800d5bc0961', 13500.00, 126413.45, 'pending'),
(283, 'S36251939', '2024-12-03', '2024-12-03', '2024-12-03 20:12:19', '', 'UPI/433825525338/UPI Payment/9884018900@icic/ICICI Bank/ICI4550286beaf44a0883cb57b872dedf93', 13500.00, 139913.45, 'pending'),
(284, 'S36352356', '2024-12-03', '2024-12-03', '2024-12-03 20:13:42', '', 'UPI/anuragverma150-/UPI/AXIS BANK/433855186194/AXI1c25ec598b594f1186e3445477748c06', 13500.00, 153413.45, 'pending'),
(285, 'S36938342', '2024-12-03', '2024-12-03', '2024-12-03 21:28:23', '', 'UPI/433891688658/Nursing/9845894222@supe/AXIS BANK/SMY241203212868WFXIGOHBUCVIF9W6FMCM', 13500.00, 166913.45, 'pending'),
(286, 'S37109923', '2024-12-03', '2024-12-03', '2024-12-03 21:52:25', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/433886984451/HDF4ee2107685ba4711b450b71ff494d8b1', 1666.00, 168579.45, 'pending'),
(287, 'S37238536', '2024-12-03', '2024-12-03', '2024-12-03 22:04:48', '', 'MMT/IMPS/433822923147/Bill Payment/RAVI RAJ S/State Bank of I', 11625.00, 180204.45, 'pending'),
(288, 'S37307199', '2024-12-03', '2024-12-03', '2024-12-03 22:16:54', '', 'INF/INFT/038483986991/salary         /ARCHANA DIWAN', 13500.00, 193704.45, 'pending'),
(289, 'S37708683', '2024-12-03', '2024-12-03', '2024-12-03 23:40:59', '', 'BIL/INFT/DL36143237/Quick Pay FT/Phuli Debnath/029805005633SOWMYA RANGARAJ', 24334.00, 218038.45, 'pending'),
(290, 'S39375165', '2024-12-04', '2024-12-04', '2024-12-04 08:31:45', '', 'NEFT-SVCB024339842606-R JAYALAKSHMI-R JAYALAKSHMI1ST HALF DEC 2024-109803130005618-SVCB0000098', 13500.00, 231538.45, 'pending'),
(291, 'M3270273', '2024-12-04', '2024-12-04', '2024-12-04 11:12:48', '', 'BY CASH  - HRBR LAYOUT', 27000.00, 149176.30, 'pending'),
(292, 'M3331984', '2024-12-04', '2024-12-04', '2024-12-04 12:13:40', '', 'BY CASH -BANGALORE - ULSOOR C', 13500.00, 162676.30, 'pending'),
(293, 'S46403214', '2024-12-04', '2024-12-04', '2024-12-04 18:49:09', '', 'MMT/IMPS/433918467778/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 176176.30, 'pending'),
(294, 'S46699194', '2024-12-04', '2024-12-04', '2024-12-04 19:16:59', '', 'MMT/IMPS/433919546974/ReqPay/Mr  NAGARA/State Bank of I', 25500.00, 201676.30, 'pending'),
(295, 'S47489464', '2024-12-04', '2024-12-04', '2024-12-04 21:20:21', '', 'UPI/433941916665/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI862f7d0ca92048c08364fe7a488ebe13', 13500.00, 215176.30, 'pending'),
(296, 'S47772488', '2024-12-04', '2024-12-04', '2024-12-04 21:30:45', '', 'MMT/IMPS/433921101469/Ali Payment/SANJEEV SH/HDFCBank', 9000.00, 224176.30, 'pending'),
(297, 'S47683170', '2024-12-04', '2024-12-04', '2024-12-04 21:45:31', '', 'UPI/470515560753/UPI/abhishek.mn.iis/State Bank Of I/AXI201a8433bdeb4c61a56be3cce362b366', 11500.00, 235676.30, 'pending'),
(298, 'S48813346', '2024-12-05', '2024-12-05', '2024-12-05 02:02:00', '', 'NEFT-N340243434553900-IGNOXLABS PVT LTD OP1-NEFT  EMHB042 BANGLORE DC 5020003-50200032099971-HDFC', 7056.00, 242732.30, 'pending'),
(299, 'S48812502', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434591254-IGNOXLABS PVT LTD OP1-NEFT  EMHB038 BANGLORE DC 5020003-50200032099971-HDFC', 4165.00, 246897.30, 'pending'),
(300, 'S48814152', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434581711-IGNOXLABS PVT LTD OP1-NEFT  EMHB037 BANGLORE DC 5020003-50200032099971-HDFC', 13230.00, 260127.30, 'pending'),
(301, 'S52143733', '2024-12-05', '2024-12-05', '2024-12-05 08:36:12', '', 'NEFT-N340243434762983-S RAMACHANDRA RAO-S RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 123231.30, 'pending'),
(302, 'C44882503', '2024-12-05', '2024-12-05', '2024-12-05 12:55:11', '', 'UPI/434063396426/UPI/deepti12karumba/AXIS BANK/SBIe15a2b9ff7474b85a1617f351d781d06', 13500.00, 136731.30, 'pending'),
(303, 'C52475339', '2024-12-05', '2024-12-05', '2024-12-05 16:24:05', '', 'NEFT-YESIG43400064650-INDIA HOME HEALTH CARE P L OPERATIO-512202424 71193-002281400004518-YESB00000', 18900.00, 155631.30, 'pending'),
(304, 'S56599551', '2024-12-05', '2024-12-05', '2024-12-05 16:49:54', '', 'NEFT-AXISCN0840109369-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 193710.90, 'pending'),
(305, 'S57986128', '2024-12-05', '2024-12-05', '2024-12-05 18:15:42', '', 'BIL/INFT/DL56694654/1stto15thDecnur/ RENU KALAGNANAM', 33000.00, 226710.90, 'pending'),
(306, 'S59404764', '2024-12-05', '2024-12-05', '2024-12-05 20:05:35', '', 'NEFT-N340243437019556-BHAVANI-DEC 1ST HALF-00771140203921-HDFC0000001', 13500.00, 155285.90, 'pending'),
(307, 'S59643664', '2024-12-05', '2024-12-05', '2024-12-05 20:36:31', '', 'UPI/470676510520/Dec 1 to 15 sal/pallavisinhamis/ICICI Bank/ICId68808e5b13e4f47915d8fbfbbe55110', 15000.00, 170285.90, 'pending'),
(308, 'S59886897', '2024-12-05', '2024-12-05', '2024-12-05 21:17:35', '', 'UPI/434060983170/Sent from Paytm/9739988071@ptsb/ICICI Bank/PTMD01B1F12564E4D2194C911C9BF3F5412', 12000.00, 182285.90, 'pending'),
(309, 'S63308333', '2024-12-06', '2024-12-06', '2024-12-06 10:32:21', '', 'UPI/434116747526/caretaker/rkpatil1@oksbi/State Bank Of I/SBIdc0d6069d5664745acfbfeb9902cee3c', 15000.00, 197285.90, 'pending'),
(310, 'S63719860', '2024-12-06', '2024-12-06', '2024-12-06 11:06:29', '', 'NEFT-N341243437655074-APARAJITA SAHA-15DAYS ADVANCE-50100177601573-HDFC0000001', 15000.00, 212285.90, 'pending'),
(311, 'S70837017', '2024-12-06', '2024-12-06', '2024-12-06 22:05:55', '', 'NEFT-SBIN224341243398-MRS MOHUA MUKHERJEE-/ATTN//INB-00000036831395463-SBIN0009042', 22400.00, 234650.50, 'pending'),
(312, 'S75317231', '2024-12-07', '2024-12-07', '2024-12-07 12:39:06', '', 'NEFT-N342243440819027-ANURAG SRIVASTAVA-ALOK SRIVASTAVA-00441060006038-HDFC0000001', 27900.00, 262550.50, 'pending'),
(313, 'S89117605', '2024-12-09', '2024-12-09', '2024-12-09 08:15:43', '', 'FT-MESPOS SET 10XX080827 091224', 205133.68, 237684.18, 'pending'),
(314, 'S93026350', '2024-12-09', '2024-12-09', '2024-12-09 15:03:23', '', 'NEFT-KKBKH24344647334-NHK MEDICAL PRIVATE LIMITED-PAYMENT-9739841619-KKBK0000958', 72045.00, 309729.18, 'pending'),
(315, 'S97140070', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 315372.18, 'pending'),
(316, 'S49409907', '2024-11-13', '2024-11-13', '2024-11-13 12:37:51', '', 'NEFT-P318240375189734-ASHA D NAYAK--0125101001157-CNRB0000125', 21000.00, 34434.03, 'Matched'),
(317, 'S49409907', '2024-11-13', '2024-11-13', '2024-11-13 12:37:51', '', 'NEFT-P318240375189734-ASHA D NAYAK--0125101001157-CNRB0000125', 21000.00, 34434.03, 'Matched'),
(318, 'S58792440', '2024-11-14', '2024-11-14', '2024-11-14 12:43:08', '', 'BIL/INFT/DKI1914610/Nov set2/ DHANYA ROS MATH', 14000.00, 28434.03, 'Matched'),
(319, 'S58792440', '2024-11-14', '2024-11-14', '2024-11-14 12:43:08', '', 'BIL/INFT/DKI1914610/Nov set2/ DHANYA ROS MATH', 14000.00, 28434.03, 'Matched'),
(320, 'S59919983', '2024-11-14', '2024-11-14', '2024-11-14 14:32:49', '', 'UPI/431966588105/Attendant for M/madhavi.krishna/Union Bank of I/ICI889e75bae7454070adb31dcd5a39d20c', 13500.00, 41934.03, 'pending'),
(321, 'S59919983', '2024-11-14', '2024-11-14', '2024-11-14 14:32:49', '', 'UPI/431966588105/Attendant for M/madhavi.krishna/Union Bank of I/ICI889e75bae7454070adb31dcd5a39d20c', 13500.00, 41934.03, 'pending'),
(322, 'S68642897', '2024-11-15', '2024-11-15', '2024-11-15 13:31:20', '', 'INF/INFT/038300045131/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 20958.00, 62892.03, 'pending'),
(323, 'S68642897', '2024-11-15', '2024-11-15', '2024-11-15 13:31:20', '', 'INF/INFT/038300045131/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 20958.00, 62892.03, 'pending'),
(324, 'S68647127', '2024-11-15', '2024-11-15', '2024-11-15 13:31:54', '', 'INF/INFT/038300053381/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 6395.00, 69287.03, 'pending'),
(325, 'S68647127', '2024-11-15', '2024-11-15', '2024-11-15 13:31:54', '', 'INF/INFT/038300053381/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 6395.00, 69287.03, 'pending'),
(326, 'S68648725', '2024-11-15', '2024-11-15', '2024-11-15 13:32:04', '', 'INF/INFT/038300056191/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 19050.00, 88337.03, 'Matched'),
(327, 'S68648725', '2024-11-15', '2024-11-15', '2024-11-15 13:32:04', '', 'INF/INFT/038300056191/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 19050.00, 88337.03, 'Matched'),
(328, 'S68932545', '2024-11-15', '2024-11-15', '2024-11-15 14:12:53', '', 'INF/INFT/038300516371/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 29057.03, 'pending'),
(329, 'S68932545', '2024-11-15', '2024-11-15', '2024-11-15 14:12:53', '', 'INF/INFT/038300516371/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 29057.03, 'pending'),
(330, 'S68933364', '2024-11-15', '2024-11-15', '2024-11-15 14:13:04', '', 'INF/INFT/038300519091/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 49777.03, 'pending'),
(331, 'S68933364', '2024-11-15', '2024-11-15', '2024-11-15 14:13:04', '', 'INF/INFT/038300519091/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 49777.03, 'pending'),
(332, 'S68933971', '2024-11-15', '2024-11-15', '2024-11-15 14:13:14', '', 'INF/INFT/038300521141/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 16808.00, 66585.03, 'pending'),
(333, 'S68933971', '2024-11-15', '2024-11-15', '2024-11-15 14:13:14', '', 'INF/INFT/038300521141/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 16808.00, 66585.03, 'pending'),
(334, 'S68935004', '2024-11-15', '2024-11-15', '2024-11-15 14:13:22', '', 'INF/INFT/038300522641/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 1334.00, 67919.03, 'pending'),
(335, 'S68935004', '2024-11-15', '2024-11-15', '2024-11-15 14:13:22', '', 'INF/INFT/038300522641/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 1334.00, 67919.03, 'pending'),
(336, 'S70395084', '2024-11-15', '2024-11-15', '2024-11-15 17:50:01', '', 'UPI/432055761180/UPI/cynthiajimmy@ok/State Bank Of I/SBI701ec21a073747329af8e0101fae926d', 13500.00, 81419.03, 'pending'),
(337, 'S70395084', '2024-11-15', '2024-11-15', '2024-11-15 17:50:01', '', 'UPI/432055761180/UPI/cynthiajimmy@ok/State Bank Of I/SBI701ec21a073747329af8e0101fae926d', 13500.00, 81419.03, 'pending'),
(338, 'S73697621', '2024-11-16', '2024-11-16', '2024-11-16 08:07:42', '', 'MMT/IMPS/432108828325/null/MANGALA KO/State Bank of I', 13500.00, 94919.03, 'pending'),
(339, 'S73697621', '2024-11-16', '2024-11-16', '2024-11-16 08:07:42', '', 'MMT/IMPS/432108828325/null/MANGALA KO/State Bank of I', 13500.00, 94919.03, 'pending'),
(340, 'S73942259', '2024-11-16', '2024-11-16', '2024-11-16 09:38:08', '', 'UPI/9901537347@ibl/Payment from Ph/Union Bank of I/356324008385/IBLa4fc535fb1d94fadaad705770e50cad6', 12500.00, 107419.03, 'pending'),
(341, 'S73942259', '2024-11-16', '2024-11-16', '2024-11-16 09:38:08', '', 'UPI/9901537347@ibl/Payment from Ph/Union Bank of I/356324008385/IBLa4fc535fb1d94fadaad705770e50cad6', 12500.00, 107419.03, 'pending'),
(342, 'S74013974', '2024-11-16', '2024-11-16', '2024-11-16 09:41:31', '', 'UPI/468737652217/Paid via SuperM/8197129933@supe/ICICI Bank/SMY2411160941ROO2MQXIFRWV32PTV3541C', 14000.00, 121419.03, 'pending'),
(343, 'S74013974', '2024-11-16', '2024-11-16', '2024-11-16 09:41:31', '', 'UPI/468737652217/Paid via SuperM/8197129933@supe/ICICI Bank/SMY2411160941ROO2MQXIFRWV32PTV3541C', 14000.00, 121419.03, 'pending'),
(344, 'S75485220', '2024-11-16', '2024-11-16', '2024-11-16 12:28:56', '', 'BIL/INFT/DKK2266161/MI Khan elder c/ SYED ABDUL MUSS', 12750.00, 134169.03, 'pending'),
(345, 'S75485220', '2024-11-16', '2024-11-16', '2024-11-16 12:28:56', '', 'BIL/INFT/DKK2266161/MI Khan elder c/ SYED ABDUL MUSS', 12750.00, 134169.03, 'pending'),
(346, 'S78020341', '2024-11-16', '2024-11-16', '2024-11-16 16:57:51', '', 'BIL/INFT/DKK2315964/NA/ UMA SATYEN VYAS', 15750.00, 109119.03, 'pending'),
(347, 'S78018687', '2024-11-16', '2024-11-16', '2024-11-16 17:21:31', '', 'UPI/468741241443/Nursing/9845894222@supe/AXIS BANK/SMY2411161721UF6GBEWTJL3IVF7PYJPT9L', 13500.00, 122619.03, 'pending'),
(348, 'S78020341', '2024-11-16', '2024-11-16', '2024-11-16 16:57:51', '', 'BIL/INFT/DKK2315964/NA/ UMA SATYEN VYAS', 15750.00, 109119.03, 'pending'),
(349, 'S78368102', '2024-11-16', '2024-11-16', '2024-11-16 17:55:24', '', 'UPI/anuragverma150-/UPI/AXIS BANK/468795146377/AXI1df955ccb4e04383ba4440cf8eb55d5a', 13500.00, 136119.03, 'pending'),
(350, 'S78018687', '2024-11-16', '2024-11-16', '2024-11-16 17:21:31', '', 'UPI/468741241443/Nursing/9845894222@supe/AXIS BANK/SMY2411161721UF6GBEWTJL3IVF7PYJPT9L', 13500.00, 122619.03, 'pending'),
(351, 'S78800076', '2024-11-16', '2024-11-16', '2024-11-16 18:35:35', '', 'UPI/432162245191/UPI/obi2005-3@okaxi/AXIS BANK/AXI305b2e70add74000aa4a3ef0a37dabe4', 13500.00, 149619.03, 'pending'),
(352, 'S78368102', '2024-11-16', '2024-11-16', '2024-11-16 17:55:24', '', 'UPI/anuragverma150-/UPI/AXIS BANK/468795146377/AXI1df955ccb4e04383ba4440cf8eb55d5a', 13500.00, 136119.03, 'pending'),
(353, 'S78905669', '2024-11-16', '2024-11-16', '2024-11-16 18:39:44', '', 'INF/INFT/038315025331/Salary         /ARCHANA DIWAN', 13500.00, 163119.03, 'pending'),
(354, 'S78800076', '2024-11-16', '2024-11-16', '2024-11-16 18:35:35', '', 'UPI/432162245191/UPI/obi2005-3@okaxi/AXIS BANK/AXI305b2e70add74000aa4a3ef0a37dabe4', 13500.00, 149619.03, 'pending'),
(355, 'S79748941', '2024-11-16', '2024-11-16', '2024-11-16 20:34:24', '', 'NEFT-SVCB024321302874-R JAYALAKSHMI-R JAYALAKSHMI 2ND HALF OF NOV 2024-109803130005618-SVCB0000098', 13500.00, 176619.03, 'pending'),
(356, 'S78905669', '2024-11-16', '2024-11-16', '2024-11-16 18:39:44', '', 'INF/INFT/038315025331/Salary         /ARCHANA DIWAN', 13500.00, 163119.03, 'pending'),
(357, 'S80121355', '2024-11-16', '2024-11-16', '2024-11-16 21:40:43', '', 'MMT/IMPS/432121759197/null/RAVI RAJ S/State Bank of I', 11625.00, 188244.03, 'pending'),
(358, 'S79748941', '2024-11-16', '2024-11-16', '2024-11-16 20:34:24', '', 'NEFT-SVCB024321302874-R JAYALAKSHMI-R JAYALAKSHMI 2ND HALF OF NOV 2024-109803130005618-SVCB0000098', 13500.00, 176619.03, 'pending'),
(359, 'S80434449', '2024-11-16', '2024-11-16', '2024-11-16 22:58:50', '', 'FT-MESPOS/REVRENGSTOCT24/EP049242', 80.82, 188324.85, 'pending'),
(360, 'S80121355', '2024-11-16', '2024-11-16', '2024-11-16 21:40:43', '', 'MMT/IMPS/432121759197/null/RAVI RAJ S/State Bank of I', 11625.00, 188244.03, 'pending'),
(361, 'S80434449', '2024-11-16', '2024-11-16', '2024-11-16 22:58:50', '', 'FT-MESPOS/REVRENGSTOCT24/EP049242', 80.82, 188324.85, 'pending'),
(362, 'S80706988', '2024-11-17', '2024-11-17', '2024-11-17 01:33:39', '', 'NEFT-N322243402959481-BHAVANI-NOV 2ND HALF 2024-00771140203921-HDFC0000001', 12500.00, 130824.85, 'pending'),
(363, 'S81168941', '2024-11-16', '2024-11-17', '2024-11-17 05:56:09', '', 'FT-MESPOS/REV/RENT/OCT24/EP049242', 449.00, 131273.85, 'pending'),
(364, 'S80706988', '2024-11-17', '2024-11-17', '2024-11-17 01:33:39', '', 'NEFT-N322243402959481-BHAVANI-NOV 2ND HALF 2024-00771140203921-HDFC0000001', 12500.00, 130824.85, 'pending'),
(365, 'S82245503', '2024-11-17', '2024-11-17', '2024-11-17 11:50:23', '', 'UPI/468868371912/UPI/abhishek.mn.iis/State Bank Of I/AXI9d6bd59c17604cc38fb77b7256a893e5', 11500.00, 142773.85, 'pending'),
(366, 'S81168941', '2024-11-16', '2024-11-17', '2024-11-17 05:56:09', '', 'FT-MESPOS/REV/RENT/OCT24/EP049242', 449.00, 131273.85, 'pending'),
(367, 'S82376192', '2024-11-17', '2024-11-17', '2024-11-17 11:51:17', '', 'UPI/432224940501/UPI/christinavprabh/State Bank Of I/ICI35f3b109a3ff4f1faa4ad5e7e46df700', 4500.00, 147273.85, 'pending'),
(368, 'S82245503', '2024-11-17', '2024-11-17', '2024-11-17 11:50:23', '', 'UPI/468868371912/UPI/abhishek.mn.iis/State Bank Of I/AXI9d6bd59c17604cc38fb77b7256a893e5', 11500.00, 142773.85, 'pending'),
(369, 'S82765985', '2024-11-17', '2024-11-17', '2024-11-17 13:08:55', '', 'MMT/IMPS/432213127447/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 160773.85, 'pending'),
(370, 'S82376192', '2024-11-17', '2024-11-17', '2024-11-17 11:51:17', '', 'UPI/432224940501/UPI/christinavprabh/State Bank Of I/ICI35f3b109a3ff4f1faa4ad5e7e46df700', 4500.00, 147273.85, 'pending'),
(371, 'S83168600', '2024-11-17', '2024-11-17', '2024-11-17 14:32:20', '', 'NEFT-AXOMB32275094653-SRIRUPA SEN--015010100536585-UTIB0004821', 12500.00, 173273.85, 'pending'),
(372, 'S82765985', '2024-11-17', '2024-11-17', '2024-11-17 13:08:55', '', 'MMT/IMPS/432213127447/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 160773.85, 'pending'),
(373, 'S85235775', '2024-11-17', '2024-11-17', '2024-11-17 22:24:09', '', 'UPI/468851867229/UPI/manjeetverma161/Punjab National/ICI5efb05c53bed458da215897ec3f0e360', 14000.00, 187273.85, 'pending'),
(374, 'S83168600', '2024-11-17', '2024-11-17', '2024-11-17 14:32:20', '', 'NEFT-AXOMB32275094653-SRIRUPA SEN--015010100536585-UTIB0004821', 12500.00, 173273.85, 'pending'),
(375, 'S87711173', '2024-11-18', '2024-11-18', '2024-11-18 08:31:55', '', 'NEFT-N323243403464711-S RAMACHANDRA RAO-RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 200773.85, 'pending'),
(376, 'S85235775', '2024-11-17', '2024-11-17', '2024-11-17 22:24:09', '', 'UPI/468851867229/UPI/manjeetverma161/Punjab National/ICI5efb05c53bed458da215897ec3f0e360', 14000.00, 187273.85, 'pending'),
(377, 'S88771127', '2024-11-18', '2024-11-18', '2024-11-18 11:15:35', '', 'UPI/432389681030/UPI/deepti12karumba/AXIS BANK/SBI92bfef8f88e84e789a204767dd6dcbfe', 10500.00, 211273.85, 'pending'),
(378, 'S87711173', '2024-11-18', '2024-11-18', '2024-11-18 08:31:55', '', 'NEFT-N323243403464711-S RAMACHANDRA RAO-RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 200773.85, 'pending'),
(379, 'S89241742', '2024-11-18', '2024-11-18', '2024-11-18 11:34:01', '', 'UPI/432390842965/UPI/cynthiajimmy@ok/State Bank Of I/SBIfd2ba295b1274ff693d7cf37b8b76cad', 1800.00, 213073.85, 'pending'),
(380, 'S88771127', '2024-11-18', '2024-11-18', '2024-11-18 11:15:35', '', 'UPI/432389681030/UPI/deepti12karumba/AXIS BANK/SBI92bfef8f88e84e789a204767dd6dcbfe', 10500.00, 211273.85, 'pending'),
(381, 'S90372247', '2024-11-18', '2024-11-18', '2024-11-18 12:56:27', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/432376654391/HDF5b4e61c28b38492382435bf9c57bb647', 13500.00, 226573.85, 'pending'),
(382, 'S89241742', '2024-11-18', '2024-11-18', '2024-11-18 11:34:01', '', 'UPI/432390842965/UPI/cynthiajimmy@ok/State Bank Of I/SBIfd2ba295b1274ff693d7cf37b8b76cad', 1800.00, 213073.85, 'pending'),
(383, 'S90839934', '2024-11-18', '2024-11-18', '2024-11-18 13:16:39', '', 'NEFT-N323243403899686-IGNOXLABS PVT LTD OP1-NEFT  EMHB002 BANGLORE 5020003209-50200032099971-HDFC', 12495.00, 239068.85, 'pending'),
(384, 'S90372247', '2024-11-18', '2024-11-18', '2024-11-18 12:56:27', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/432376654391/HDF5b4e61c28b38492382435bf9c57bb647', 13500.00, 226573.85, 'pending'),
(385, 'S90839937', '2024-11-18', '2024-11-18', '2024-11-18 13:16:40', '', 'NEFT-N323243403899682-IGNOXLABS PVT LTD OP1-NEFT  EMHB0002 BANGLORE 502000320-50200032099971-HDFC', 13230.00, 252298.85, 'pending'),
(386, 'S90839934', '2024-11-18', '2024-11-18', '2024-11-18 13:16:39', '', 'NEFT-N323243403899686-IGNOXLABS PVT LTD OP1-NEFT  EMHB002 BANGLORE 5020003209-50200032099971-HDFC', 12495.00, 239068.85, 'pending'),
(387, 'S91887312', '2024-11-18', '2024-11-18', '2024-11-18 14:57:08', '', 'BIL/INFT/DKM2588188/16thto30thNovem/ RENU KALAGNANAM', 33000.00, 285298.85, 'pending'),
(388, 'S90839937', '2024-11-18', '2024-11-18', '2024-11-18 13:16:40', '', 'NEFT-N323243403899682-IGNOXLABS PVT LTD OP1-NEFT  EMHB0002 BANGLORE 502000320-50200032099971-HDFC', 13230.00, 252298.85, 'pending'),
(389, 'S92243655', '2024-11-18', '2024-11-18', '2024-11-18 15:23:14', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5431', 12000.00, 297298.85, 'pending'),
(390, 'S91887312', '2024-11-18', '2024-11-18', '2024-11-18 14:57:08', '', 'BIL/INFT/DKM2588188/16thto30thNovem/ RENU KALAGNANAM', 33000.00, 285298.85, 'pending'),
(391, 'S92263663', '2024-11-18', '2024-11-18', '2024-11-18 15:24:49', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5433', 1500.00, 298798.85, 'pending'),
(392, 'S92243655', '2024-11-18', '2024-11-18', '2024-11-18 15:23:14', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5431', 12000.00, 297298.85, 'pending'),
(393, 'S92263663', '2024-11-18', '2024-11-18', '2024-11-18 15:24:49', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5433', 1500.00, 298798.85, 'pending'),
(394, 'S93418829', '2024-11-18', '2024-11-18', '2024-11-18 16:45:10', '', 'MMT/IMPS/432316117723/Ali Helper/SANJEEV SH/HDFC Bank', 3600.00, 22398.85, 'pending'),
(395, 'S94929916', '2024-11-18', '2024-11-18', '2024-11-18 19:02:59', '', 'INF/INFT/038329979601/AARUSH CONSTRUC', 100000.00, 122398.85, 'pending'),
(396, 'S93418829', '2024-11-18', '2024-11-18', '2024-11-18 16:45:10', '', 'MMT/IMPS/432316117723/Ali Helper/SANJEEV SH/HDFC Bank', 3600.00, 22398.85, 'pending'),
(397, 'S95293560', '2024-11-18', '2024-11-18', '2024-11-18 19:39:18', '', 'MMT/IMPS/432319525371/Nov30/VIDYASRIVA/Axis Bank', 23625.00, 146023.85, 'pending'),
(398, 'S94929916', '2024-11-18', '2024-11-18', '2024-11-18 19:02:59', '', 'INF/INFT/038329979601/AARUSH CONSTRUC', 100000.00, 122398.85, 'pending'),
(399, 'S95317245', '2024-11-18', '2024-11-18', '2024-11-18 19:42:56', '', 'MMT/IMPS/432319545404/Nov30/VLAKSHMIAM/Axis Bank', 12600.00, 158623.85, 'pending'),
(400, 'S95293560', '2024-11-18', '2024-11-18', '2024-11-18 19:39:18', '', 'MMT/IMPS/432319525371/Nov30/VIDYASRIVA/Axis Bank', 23625.00, 146023.85, 'pending'),
(401, 'S96680226', '2024-11-19', '2024-11-19', '2024-11-19 00:49:50', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/432407404179/HDF13aa8b0039b44fe7bb85fc842f476ea5', 12500.00, 171123.85, 'pending'),
(402, 'S95317245', '2024-11-18', '2024-11-18', '2024-11-18 19:42:56', '', 'MMT/IMPS/432319545404/Nov30/VLAKSHMIAM/Axis Bank', 12600.00, 158623.85, 'pending'),
(403, 'S98613032', '2024-11-19', '2024-11-19', '2024-11-19 09:47:13', '', 'INF/INFT/038332871671/44855766     /EZEE MEDFIND LLP    /', 1300.00, 172423.85, 'pending'),
(404, 'S96680226', '2024-11-19', '2024-11-19', '2024-11-19 00:49:50', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/432407404179/HDF13aa8b0039b44fe7bb85fc842f476ea5', 12500.00, 171123.85, 'pending'),
(405, 'S99309776', '2024-11-19', '2024-11-19', '2024-11-19 11:23:38', '', 'UPI/469065238185/salary 16 to 30/pallavisinhamis/ICICI Bank/ICI2ad8b12a9fff4a2994199b9f7e18fcaf', 15000.00, 187423.85, 'pending'),
(406, 'S98613032', '2024-11-19', '2024-11-19', '2024-11-19 09:47:13', '', 'INF/INFT/038332871671/44855766     /EZEE MEDFIND LLP    /', 1300.00, 172423.85, 'pending'),
(407, 'S99309776', '2024-11-19', '2024-11-19', '2024-11-19 11:23:38', '', 'UPI/469065238185/salary 16 to 30/pallavisinhamis/ICICI Bank/ICI2ad8b12a9fff4a2994199b9f7e18fcaf', 15000.00, 187423.85, 'pending'),
(408, 'S11434339', '2024-11-20', '2024-11-20', '2024-11-20 17:26:20', '', 'CMS/ CMS4662594714/SUKINO HEALTHCARE SOLUTIONS PR', 27291.00, 154714.85, 'pending'),
(409, 'S16777086', '2024-11-21', '2024-11-21', '2024-11-21 11:04:28', '', 'UPI/432626433487/UPI/sandhyanair199@/ICICI Bank/ICI3155b308a5ce40d0afe24aed6f7bd000', 12000.00, 166714.85, 'pending'),
(410, 'S11434339', '2024-11-20', '2024-11-20', '2024-11-20 17:26:20', '', 'CMS/ CMS4662594714/SUKINO HEALTHCARE SOLUTIONS PR', 27291.00, 154714.85, 'pending'),
(411, 'S16777086', '2024-11-21', '2024-11-21', '2024-11-21 11:04:28', '', 'UPI/432626433487/UPI/sandhyanair199@/ICICI Bank/ICI3155b308a5ce40d0afe24aed6f7bd000', 12000.00, 166714.85, 'pending'),
(412, 'S19082966', '2024-11-21', '2024-11-21', '2024-11-21 14:05:30', '', 'NEFT-AXISCN0823448800-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 159954.45, 'pending'),
(413, 'S19082966', '2024-11-21', '2024-11-21', '2024-11-21 14:05:30', '', 'NEFT-AXISCN0823448800-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 159954.45, 'pending'),
(414, 'S25554007', '2024-11-22', '2024-11-22', '2024-11-22 07:37:39', '', 'UPI/432780870440/caretaker/rkpatil1@oksbi/State Bank Of I/SBI9a9f4cb52eaf4d1a8d68b1547d5b177c', 15000.00, 129454.45, 'pending'),
(415, 'S25554007', '2024-11-22', '2024-11-22', '2024-11-22 07:37:39', '', 'UPI/432780870440/caretaker/rkpatil1@oksbi/State Bank Of I/SBI9a9f4cb52eaf4d1a8d68b1547d5b177c', 15000.00, 129454.45, 'pending'),
(416, 'S27420133', '2024-11-22', '2024-11-22', '2024-11-22 12:38:03', '', 'UPI/432796300568/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI777c692ff028408bafb59a5402522716', 12600.00, 133392.45, 'pending'),
(417, 'S27420133', '2024-11-22', '2024-11-22', '2024-11-22 12:38:03', '', 'UPI/432796300568/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI777c692ff028408bafb59a5402522716', 12600.00, 133392.45, 'pending'),
(418, 'S39453747', '2024-11-24', '2024-11-24', '2024-11-24 10:20:15', '', 'CMS/ CMS4669666771/SUKINO HEALTHCARE SOLUTIONS PR', 4704.00, 120096.45, 'pending'),
(419, 'S52285457', '2024-11-25', '2024-11-25', '2024-11-25 20:33:27', '', 'NEFT-CMS3302466086620-HEALTHVISTA INDIA PRIVATE LIMITE-PAYMENT-6447052626-KKBK0000958', 33997.00, 154093.45, 'pending'),
(420, 'S39453747', '2024-11-24', '2024-11-24', '2024-11-24 10:20:15', '', 'CMS/ CMS4669666771/SUKINO HEALTHCARE SOLUTIONS PR', 4704.00, 120096.45, 'pending'),
(421, 'S56045368', '2024-11-26', '2024-11-26', '2024-11-26 10:15:07', '', 'UPI/433122951714/UPI/yusufshahpurwal/HDFC BANK LTD/HDF8368d24241df4227ac6b70eb0d6956d2', 13500.00, 167593.45, 'pending'),
(422, 'S52285457', '2024-11-25', '2024-11-25', '2024-11-25 20:33:27', '', 'NEFT-CMS3302466086620-HEALTHVISTA INDIA PRIVATE LIMITE-PAYMENT-6447052626-KKBK0000958', 33997.00, 154093.45, 'pending'),
(423, 'M3735849', '2024-11-26', '2024-11-26', '2024-11-26 19:15:41', '', 'TRF/MADAN/055778/ICI/23.11.2024', 25000.00, 192593.45, 'pending'),
(424, 'S56045368', '2024-11-26', '2024-11-26', '2024-11-26 10:15:07', '', 'UPI/433122951714/UPI/yusufshahpurwal/HDFC BANK LTD/HDF8368d24241df4227ac6b70eb0d6956d2', 13500.00, 167593.45, 'pending'),
(425, 'M3735849', '2024-11-26', '2024-11-26', '2024-11-26 19:15:41', '', 'TRF/MADAN/055778/ICI/23.11.2024', 25000.00, 192593.45, 'pending'),
(426, 'S91139662', '2024-11-29', '2024-11-29', '2024-11-29 16:55:23', '', 'UPI/433474709893/UPI/kanchanaseshadr/HDFC BANK LTD/HDF387ad8fb3d1646edb7624e068c7376c0', 29295.00, 152888.45, 'pending'),
(427, 'S97922697', '2024-11-30', '2024-11-30', '2024-11-30 11:24:55', '', 'MMT/IMPS/433511351600/Dec2024 Surende/RAJESH DES/HDFC Bank', 27900.00, 180788.45, 'pending'),
(428, 'S91139662', '2024-11-29', '2024-11-29', '2024-11-29 16:55:23', '', 'UPI/433474709893/UPI/kanchanaseshadr/HDFC BANK LTD/HDF387ad8fb3d1646edb7624e068c7376c0', 29295.00, 152888.45, 'pending'),
(429, 'S5509059', '2024-12-01', '2024-12-01', '2024-12-01 00:08:53', '', 'UPI/470234442140/UPI/nuqranaqvi@okic/ICICI Bank/ICI0e23a5d0c0144ff0a6474e25b7ecfdcc', 14000.00, 194788.45, 'pending'),
(430, 'S97922697', '2024-11-30', '2024-11-30', '2024-11-30 11:24:55', '', 'MMT/IMPS/433511351600/Dec2024 Surende/RAJESH DES/HDFC Bank', 27900.00, 180788.45, 'pending'),
(431, 'S6697751', '2024-12-01', '2024-12-01', '2024-12-01 07:00:00', '', 'BIL/INFT/DL15102214/December first / DHANYA ROS MATH', 14000.00, 208788.45, 'pending'),
(432, 'S5509059', '2024-12-01', '2024-12-01', '2024-12-01 00:08:53', '', 'UPI/470234442140/UPI/nuqranaqvi@okic/ICICI Bank/ICI0e23a5d0c0144ff0a6474e25b7ecfdcc', 14000.00, 194788.45, 'pending'),
(433, 'S6792085', '2024-12-01', '2024-12-01', '2024-12-01 07:31:19', '', 'MMT/IMPS/433607157093/Dec15/VLAKSHMIAM/Axis Bank', 12600.00, 221388.45, 'pending'),
(434, 'S6697751', '2024-12-01', '2024-12-01', '2024-12-01 07:00:00', '', 'BIL/INFT/DL15102214/December first / DHANYA ROS MATH', 14000.00, 208788.45, 'pending'),
(435, 'S9474255', '2024-12-01', '2024-12-01', '2024-12-01 13:41:23', '', 'BIL/INFT/DL15241533/MI Khan Elder c/ SYED ABDUL MUSS', 12750.00, 234138.45, 'pending'),
(436, 'S6792085', '2024-12-01', '2024-12-01', '2024-12-01 07:31:19', '', 'MMT/IMPS/433607157093/Dec15/VLAKSHMIAM/Axis Bank', 12600.00, 221388.45, 'pending'),
(437, 'S9474255', '2024-12-01', '2024-12-01', '2024-12-01 13:41:23', '', 'BIL/INFT/DL15241533/MI Khan Elder c/ SYED ABDUL MUSS', 12750.00, 234138.45, 'pending'),
(438, 'S13105703', '2024-12-02', '2024-12-02', '2024-12-02 02:01:42', '', 'NEFT-N337243426973380-ANVAYAA KIN CARE PVT LTD-NEFT    AAYUSH HHC 50200019583158-50200019583158-HDF', 23760.00, 113397.45, 'pending'),
(439, 'S14175281', '2024-12-02', '2024-12-02', '2024-12-02 06:48:49', '', 'MMT/IMPS/433706505623/Dec15/VIDYASRIVA/Axis Bank', 23625.00, 137022.45, 'pending'),
(440, 'S13105703', '2024-12-02', '2024-12-02', '2024-12-02 02:01:42', '', 'NEFT-N337243426973380-ANVAYAA KIN CARE PVT LTD-NEFT    AAYUSH HHC 50200019583158-50200019583158-HDF', 23760.00, 113397.45, 'pending'),
(441, 'S15760326', '2024-12-02', '2024-12-02', '2024-12-02 09:30:09', '', 'UPI/470342152061/18th to 30th No/christinavprabh/State Bank Of I/AXI8ddd925c99944297a2a6ae1dc7488d41', 11700.00, 148722.45, 'pending'),
(442, 'S14175281', '2024-12-02', '2024-12-02', '2024-12-02 06:48:49', '', 'MMT/IMPS/433706505623/Dec15/VIDYASRIVA/Axis Bank', 23625.00, 137022.45, 'pending'),
(443, 'S16532005', '2024-12-02', '2024-12-02', '2024-12-02 10:39:10', '', 'MMT/IMPS/433710570676/Bill Payment/MANGALA KO/State Bank of I', 9000.00, 157722.45, 'pending'),
(444, 'S15760326', '2024-12-02', '2024-12-02', '2024-12-02 09:30:09', '', 'UPI/470342152061/18th to 30th No/christinavprabh/State Bank Of I/AXI8ddd925c99944297a2a6ae1dc7488d41', 11700.00, 148722.45, 'pending'),
(445, 'S24806421', '2024-12-02', '2024-12-02', '2024-12-02 20:43:18', '', 'MMT/IMPS/433720032204/IMPS/SRIRUPASEN/Axis Bank', 12500.00, 170222.45, 'pending'),
(446, 'S16532005', '2024-12-02', '2024-12-02', '2024-12-02 10:39:10', '', 'MMT/IMPS/433710570676/Bill Payment/MANGALA KO/State Bank of I', 9000.00, 157722.45, 'pending'),
(447, 'S25433966', '2024-12-02', '2024-12-02', '2024-12-02 21:50:11', '', 'UPI/470374003846/UPI/obi2005-3@okaxi/AXIS BANK/AXI59ad74bbe25842bfb6fdf0e70b52d58a', 13500.00, 183722.45, 'pending'),
(448, 'S24806421', '2024-12-02', '2024-12-02', '2024-12-02 20:43:18', '', 'MMT/IMPS/433720032204/IMPS/SRIRUPASEN/Axis Bank', 12500.00, 170222.45, 'pending'),
(449, 'S25735864', '2024-12-02', '2024-12-02', '2024-12-02 22:36:44', '', 'UPI/9901537347@axl/Payment from Ph/Union Bank of I/132883836942/AXL7cbc4b44082e4ffd9fb3251fac112042', 12500.00, 196222.45, 'pending'),
(450, 'S25433966', '2024-12-02', '2024-12-02', '2024-12-02 21:50:11', '', 'UPI/470374003846/UPI/obi2005-3@okaxi/AXIS BANK/AXI59ad74bbe25842bfb6fdf0e70b52d58a', 13500.00, 183722.45, 'pending'),
(451, 'S25735864', '2024-12-02', '2024-12-02', '2024-12-02 22:36:44', '', 'UPI/9901537347@axl/Payment from Ph/Union Bank of I/132883836942/AXL7cbc4b44082e4ffd9fb3251fac112042', 12500.00, 196222.45, 'pending'),
(452, 'S33545228', '2024-12-03', '2024-12-03', '2024-12-03 16:21:54', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/433866408881/HDFdd60b004d4df4e61abcc9c448f27fdd6', 13500.00, 209663.45, 'pending'),
(453, 'S33545228', '2024-12-03', '2024-12-03', '2024-12-03 16:21:54', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/433866408881/HDFdd60b004d4df4e61abcc9c448f27fdd6', 13500.00, 209663.45, 'pending'),
(454, 'S35992827', '2024-12-03', '2024-12-03', '2024-12-03 19:27:26', '', 'BIL/INFT/DL36083050/NA/ UMA SATYEN VYAS', 34000.00, 83663.45, 'pending'),
(455, 'S36090241', '2024-12-03', '2024-12-03', '2024-12-03 19:41:30', '', 'UPI/433879338733/UPI/jayastev-yahoo./INDIAN OVERSEAS/HDF2012fc9348c24b8ab630f52a0a0db419', 29250.00, 112913.45, 'pending'),
(456, 'S35992827', '2024-12-03', '2024-12-03', '2024-12-03 19:27:26', '', 'BIL/INFT/DL36083050/NA/ UMA SATYEN VYAS', 34000.00, 83663.45, 'pending'),
(457, 'S36174722', '2024-12-03', '2024-12-03', '2024-12-03 20:01:16', '', 'UPI/470406596078/Attendant for M/madhavi.krishna/Union Bank of I/ICIc2f1bdf31a5f4bfa9f2d5800d5bc0961', 13500.00, 126413.45, 'pending'),
(458, 'S36090241', '2024-12-03', '2024-12-03', '2024-12-03 19:41:30', '', 'UPI/433879338733/UPI/jayastev-yahoo./INDIAN OVERSEAS/HDF2012fc9348c24b8ab630f52a0a0db419', 29250.00, 112913.45, 'pending'),
(459, 'S36251939', '2024-12-03', '2024-12-03', '2024-12-03 20:12:19', '', 'UPI/433825525338/UPI Payment/9884018900@icic/ICICI Bank/ICI4550286beaf44a0883cb57b872dedf93', 13500.00, 139913.45, 'pending'),
(460, 'S36174722', '2024-12-03', '2024-12-03', '2024-12-03 20:01:16', '', 'UPI/470406596078/Attendant for M/madhavi.krishna/Union Bank of I/ICIc2f1bdf31a5f4bfa9f2d5800d5bc0961', 13500.00, 126413.45, 'pending'),
(461, 'S36352356', '2024-12-03', '2024-12-03', '2024-12-03 20:13:42', '', 'UPI/anuragverma150-/UPI/AXIS BANK/433855186194/AXI1c25ec598b594f1186e3445477748c06', 13500.00, 153413.45, 'pending'),
(462, 'S36251939', '2024-12-03', '2024-12-03', '2024-12-03 20:12:19', '', 'UPI/433825525338/UPI Payment/9884018900@icic/ICICI Bank/ICI4550286beaf44a0883cb57b872dedf93', 13500.00, 139913.45, 'pending'),
(463, 'S36938342', '2024-12-03', '2024-12-03', '2024-12-03 21:28:23', '', 'UPI/433891688658/Nursing/9845894222@supe/AXIS BANK/SMY241203212868WFXIGOHBUCVIF9W6FMCM', 13500.00, 166913.45, 'pending'),
(464, 'S36352356', '2024-12-03', '2024-12-03', '2024-12-03 20:13:42', '', 'UPI/anuragverma150-/UPI/AXIS BANK/433855186194/AXI1c25ec598b594f1186e3445477748c06', 13500.00, 153413.45, 'pending'),
(465, 'S37109923', '2024-12-03', '2024-12-03', '2024-12-03 21:52:25', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/433886984451/HDF4ee2107685ba4711b450b71ff494d8b1', 1666.00, 168579.45, 'pending'),
(466, 'S36938342', '2024-12-03', '2024-12-03', '2024-12-03 21:28:23', '', 'UPI/433891688658/Nursing/9845894222@supe/AXIS BANK/SMY241203212868WFXIGOHBUCVIF9W6FMCM', 13500.00, 166913.45, 'pending'),
(467, 'S37238536', '2024-12-03', '2024-12-03', '2024-12-03 22:04:48', '', 'MMT/IMPS/433822923147/Bill Payment/RAVI RAJ S/State Bank of I', 11625.00, 180204.45, 'pending'),
(468, 'S37109923', '2024-12-03', '2024-12-03', '2024-12-03 21:52:25', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/433886984451/HDF4ee2107685ba4711b450b71ff494d8b1', 1666.00, 168579.45, 'pending'),
(469, 'S37307199', '2024-12-03', '2024-12-03', '2024-12-03 22:16:54', '', 'INF/INFT/038483986991/salary         /ARCHANA DIWAN', 13500.00, 193704.45, 'pending'),
(470, 'S37238536', '2024-12-03', '2024-12-03', '2024-12-03 22:04:48', '', 'MMT/IMPS/433822923147/Bill Payment/RAVI RAJ S/State Bank of I', 11625.00, 180204.45, 'pending'),
(471, 'S37708683', '2024-12-03', '2024-12-03', '2024-12-03 23:40:59', '', 'BIL/INFT/DL36143237/Quick Pay FT/Phuli Debnath/029805005633SOWMYA RANGARAJ', 24334.00, 218038.45, 'pending'),
(472, 'S37307199', '2024-12-03', '2024-12-03', '2024-12-03 22:16:54', '', 'INF/INFT/038483986991/salary         /ARCHANA DIWAN', 13500.00, 193704.45, 'pending'),
(473, 'S39375165', '2024-12-04', '2024-12-04', '2024-12-04 08:31:45', '', 'NEFT-SVCB024339842606-R JAYALAKSHMI-R JAYALAKSHMI1ST HALF DEC 2024-109803130005618-SVCB0000098', 13500.00, 231538.45, 'pending'),
(474, 'S37708683', '2024-12-03', '2024-12-03', '2024-12-03 23:40:59', '', 'BIL/INFT/DL36143237/Quick Pay FT/Phuli Debnath/029805005633SOWMYA RANGARAJ', 24334.00, 218038.45, 'pending'),
(475, 'S39375165', '2024-12-04', '2024-12-04', '2024-12-04 08:31:45', '', 'NEFT-SVCB024339842606-R JAYALAKSHMI-R JAYALAKSHMI1ST HALF DEC 2024-109803130005618-SVCB0000098', 13500.00, 231538.45, 'pending'),
(476, 'M3270273', '2024-12-04', '2024-12-04', '2024-12-04 11:12:48', '', 'BY CASH  - HRBR LAYOUT', 27000.00, 149176.30, 'pending'),
(477, 'M3331984', '2024-12-04', '2024-12-04', '2024-12-04 12:13:40', '', 'BY CASH -BANGALORE - ULSOOR C', 13500.00, 162676.30, 'pending'),
(478, 'M3270273', '2024-12-04', '2024-12-04', '2024-12-04 11:12:48', '', 'BY CASH  - HRBR LAYOUT', 27000.00, 149176.30, 'pending'),
(479, 'S46403214', '2024-12-04', '2024-12-04', '2024-12-04 18:49:09', '', 'MMT/IMPS/433918467778/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 176176.30, 'pending'),
(480, 'M3331984', '2024-12-04', '2024-12-04', '2024-12-04 12:13:40', '', 'BY CASH -BANGALORE - ULSOOR C', 13500.00, 162676.30, 'pending'),
(481, 'S46699194', '2024-12-04', '2024-12-04', '2024-12-04 19:16:59', '', 'MMT/IMPS/433919546974/ReqPay/Mr  NAGARA/State Bank of I', 25500.00, 201676.30, 'pending'),
(482, 'S46403214', '2024-12-04', '2024-12-04', '2024-12-04 18:49:09', '', 'MMT/IMPS/433918467778/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 176176.30, 'pending'),
(483, 'S47489464', '2024-12-04', '2024-12-04', '2024-12-04 21:20:21', '', 'UPI/433941916665/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI862f7d0ca92048c08364fe7a488ebe13', 13500.00, 215176.30, 'pending'),
(484, 'S46699194', '2024-12-04', '2024-12-04', '2024-12-04 19:16:59', '', 'MMT/IMPS/433919546974/ReqPay/Mr  NAGARA/State Bank of I', 25500.00, 201676.30, 'pending'),
(485, 'S47772488', '2024-12-04', '2024-12-04', '2024-12-04 21:30:45', '', 'MMT/IMPS/433921101469/Ali Payment/SANJEEV SH/HDFCBank', 9000.00, 224176.30, 'pending'),
(486, 'S47489464', '2024-12-04', '2024-12-04', '2024-12-04 21:20:21', '', 'UPI/433941916665/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI862f7d0ca92048c08364fe7a488ebe13', 13500.00, 215176.30, 'pending'),
(487, 'S47683170', '2024-12-04', '2024-12-04', '2024-12-04 21:45:31', '', 'UPI/470515560753/UPI/abhishek.mn.iis/State Bank Of I/AXI201a8433bdeb4c61a56be3cce362b366', 11500.00, 235676.30, 'pending'),
(488, 'S47772488', '2024-12-04', '2024-12-04', '2024-12-04 21:30:45', '', 'MMT/IMPS/433921101469/Ali Payment/SANJEEV SH/HDFCBank', 9000.00, 224176.30, 'pending'),
(489, 'S48813346', '2024-12-05', '2024-12-05', '2024-12-05 02:02:00', '', 'NEFT-N340243434553900-IGNOXLABS PVT LTD OP1-NEFT  EMHB042 BANGLORE DC 5020003-50200032099971-HDFC', 7056.00, 242732.30, 'pending'),
(490, 'S47683170', '2024-12-04', '2024-12-04', '2024-12-04 21:45:31', '', 'UPI/470515560753/UPI/abhishek.mn.iis/State Bank Of I/AXI201a8433bdeb4c61a56be3cce362b366', 11500.00, 235676.30, 'pending'),
(491, 'S48812502', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434591254-IGNOXLABS PVT LTD OP1-NEFT  EMHB038 BANGLORE DC 5020003-50200032099971-HDFC', 4165.00, 246897.30, 'pending'),
(492, 'S48813346', '2024-12-05', '2024-12-05', '2024-12-05 02:02:00', '', 'NEFT-N340243434553900-IGNOXLABS PVT LTD OP1-NEFT  EMHB042 BANGLORE DC 5020003-50200032099971-HDFC', 7056.00, 242732.30, 'pending'),
(493, 'S48814152', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434581711-IGNOXLABS PVT LTD OP1-NEFT  EMHB037 BANGLORE DC 5020003-50200032099971-HDFC', 13230.00, 260127.30, 'pending'),
(494, 'S48812502', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434591254-IGNOXLABS PVT LTD OP1-NEFT  EMHB038 BANGLORE DC 5020003-50200032099971-HDFC', 4165.00, 246897.30, 'pending'),
(495, 'S48814152', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434581711-IGNOXLABS PVT LTD OP1-NEFT  EMHB037 BANGLORE DC 5020003-50200032099971-HDFC', 13230.00, 260127.30, 'pending'),
(496, 'S52143733', '2024-12-05', '2024-12-05', '2024-12-05 08:36:12', '', 'NEFT-N340243434762983-S RAMACHANDRA RAO-S RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 123231.30, 'pending'),
(497, 'C44882503', '2024-12-05', '2024-12-05', '2024-12-05 12:55:11', '', 'UPI/434063396426/UPI/deepti12karumba/AXIS BANK/SBIe15a2b9ff7474b85a1617f351d781d06', 13500.00, 136731.30, 'pending'),
(498, 'S52143733', '2024-12-05', '2024-12-05', '2024-12-05 08:36:12', '', 'NEFT-N340243434762983-S RAMACHANDRA RAO-S RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 123231.30, 'pending'),
(499, 'C52475339', '2024-12-05', '2024-12-05', '2024-12-05 16:24:05', '', 'NEFT-YESIG43400064650-INDIA HOME HEALTH CARE P L OPERATIO-512202424 71193-002281400004518-YESB00000', 18900.00, 155631.30, 'pending'),
(500, 'C44882503', '2024-12-05', '2024-12-05', '2024-12-05 12:55:11', '', 'UPI/434063396426/UPI/deepti12karumba/AXIS BANK/SBIe15a2b9ff7474b85a1617f351d781d06', 13500.00, 136731.30, 'pending'),
(501, 'S56599551', '2024-12-05', '2024-12-05', '2024-12-05 16:49:54', '', 'NEFT-AXISCN0840109369-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 193710.90, 'pending'),
(502, 'C52475339', '2024-12-05', '2024-12-05', '2024-12-05 16:24:05', '', 'NEFT-YESIG43400064650-INDIA HOME HEALTH CARE P L OPERATIO-512202424 71193-002281400004518-YESB00000', 18900.00, 155631.30, 'pending'),
(503, 'S57986128', '2024-12-05', '2024-12-05', '2024-12-05 18:15:42', '', 'BIL/INFT/DL56694654/1stto15thDecnur/ RENU KALAGNANAM', 33000.00, 226710.90, 'pending'),
(504, 'S56599551', '2024-12-05', '2024-12-05', '2024-12-05 16:49:54', '', 'NEFT-AXISCN0840109369-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 193710.90, 'pending'),
(505, 'S57986128', '2024-12-05', '2024-12-05', '2024-12-05 18:15:42', '', 'BIL/INFT/DL56694654/1stto15thDecnur/ RENU KALAGNANAM', 33000.00, 226710.90, 'pending'),
(506, 'S59404764', '2024-12-05', '2024-12-05', '2024-12-05 20:05:35', '', 'NEFT-N340243437019556-BHAVANI-DEC 1ST HALF-00771140203921-HDFC0000001', 13500.00, 155285.90, 'pending'),
(507, 'S59643664', '2024-12-05', '2024-12-05', '2024-12-05 20:36:31', '', 'UPI/470676510520/Dec 1 to 15 sal/pallavisinhamis/ICICI Bank/ICId68808e5b13e4f47915d8fbfbbe55110', 15000.00, 170285.90, 'pending'),
(508, 'S59404764', '2024-12-05', '2024-12-05', '2024-12-05 20:05:35', '', 'NEFT-N340243437019556-BHAVANI-DEC 1ST HALF-00771140203921-HDFC0000001', 13500.00, 155285.90, 'pending'),
(509, 'S59886897', '2024-12-05', '2024-12-05', '2024-12-05 21:17:35', '', 'UPI/434060983170/Sent from Paytm/9739988071@ptsb/ICICI Bank/PTMD01B1F12564E4D2194C911C9BF3F5412', 12000.00, 182285.90, 'pending'),
(510, 'S59643664', '2024-12-05', '2024-12-05', '2024-12-05 20:36:31', '', 'UPI/470676510520/Dec 1 to 15 sal/pallavisinhamis/ICICI Bank/ICId68808e5b13e4f47915d8fbfbbe55110', 15000.00, 170285.90, 'pending'),
(511, 'S63308333', '2024-12-06', '2024-12-06', '2024-12-06 10:32:21', '', 'UPI/434116747526/caretaker/rkpatil1@oksbi/State Bank Of I/SBIdc0d6069d5664745acfbfeb9902cee3c', 15000.00, 197285.90, 'pending'),
(512, 'S59886897', '2024-12-05', '2024-12-05', '2024-12-05 21:17:35', '', 'UPI/434060983170/Sent from Paytm/9739988071@ptsb/ICICI Bank/PTMD01B1F12564E4D2194C911C9BF3F5412', 12000.00, 182285.90, 'pending'),
(513, 'S63719860', '2024-12-06', '2024-12-06', '2024-12-06 11:06:29', '', 'NEFT-N341243437655074-APARAJITA SAHA-15DAYS ADVANCE-50100177601573-HDFC0000001', 15000.00, 212285.90, 'pending'),
(514, 'S63308333', '2024-12-06', '2024-12-06', '2024-12-06 10:32:21', '', 'UPI/434116747526/caretaker/rkpatil1@oksbi/State Bank Of I/SBIdc0d6069d5664745acfbfeb9902cee3c', 15000.00, 197285.90, 'pending'),
(515, 'S63719860', '2024-12-06', '2024-12-06', '2024-12-06 11:06:29', '', 'NEFT-N341243437655074-APARAJITA SAHA-15DAYS ADVANCE-50100177601573-HDFC0000001', 15000.00, 212285.90, 'pending'),
(516, 'S70837017', '2024-12-06', '2024-12-06', '2024-12-06 22:05:55', '', 'NEFT-SBIN224341243398-MRS MOHUA MUKHERJEE-/ATTN//INB-00000036831395463-SBIN0009042', 22400.00, 234650.50, 'pending'),
(517, 'S75317231', '2024-12-07', '2024-12-07', '2024-12-07 12:39:06', '', 'NEFT-N342243440819027-ANURAG SRIVASTAVA-ALOK SRIVASTAVA-00441060006038-HDFC0000001', 27900.00, 262550.50, 'pending'),
(518, 'S70837017', '2024-12-06', '2024-12-06', '2024-12-06 22:05:55', '', 'NEFT-SBIN224341243398-MRS MOHUA MUKHERJEE-/ATTN//INB-00000036831395463-SBIN0009042', 22400.00, 234650.50, 'pending'),
(519, 'S75317231', '2024-12-07', '2024-12-07', '2024-12-07 12:39:06', '', 'NEFT-N342243440819027-ANURAG SRIVASTAVA-ALOK SRIVASTAVA-00441060006038-HDFC0000001', 27900.00, 262550.50, 'pending'),
(520, 'S89117605', '2024-12-09', '2024-12-09', '2024-12-09 08:15:43', '', 'FT-MESPOS SET 10XX080827 091224', 205133.68, 237684.18, 'pending'),
(521, 'S93026350', '2024-12-09', '2024-12-09', '2024-12-09 15:03:23', '', 'NEFT-KKBKH24344647334-NHK MEDICAL PRIVATE LIMITED-PAYMENT-9739841619-KKBK0000958', 72045.00, 309729.18, 'pending'),
(522, 'S89117605', '2024-12-09', '2024-12-09', '2024-12-09 08:15:43', '', 'FT-MESPOS SET 10XX080827 091224', 205133.68, 237684.18, 'pending'),
(523, 'S97140070', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 315372.18, 'pending'),
(524, 'S93026350', '2024-12-09', '2024-12-09', '2024-12-09 15:03:23', '', 'NEFT-KKBKH24344647334-NHK MEDICAL PRIVATE LIMITED-PAYMENT-9739841619-KKBK0000958', 72045.00, 309729.18, 'pending'),
(525, 'S97140070', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 315372.18, 'pending'),
(526, 'S49409907', '2024-11-13', '2024-11-13', '2024-11-13 12:37:51', '', 'NEFT-P318240375189734-ASHA D NAYAK--0125101001157-CNRB0000125', 21000.00, 34434.03, 'Matched'),
(527, 'S58792440', '2024-11-14', '2024-11-14', '2024-11-14 12:43:08', '', 'BIL/INFT/DKI1914610/Nov set2/ DHANYA ROS MATH', 14000.00, 28434.03, 'Matched'),
(528, 'S59919983', '2024-11-14', '2024-11-14', '2024-11-14 14:32:49', '', 'UPI/431966588105/Attendant for M/madhavi.krishna/Union Bank of I/ICI889e75bae7454070adb31dcd5a39d20c', 13500.00, 41934.03, 'pending'),
(529, 'S68642897', '2024-11-15', '2024-11-15', '2024-11-15 13:31:20', '', 'INF/INFT/038300045131/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 20958.00, 62892.03, 'pending'),
(530, 'S68647127', '2024-11-15', '2024-11-15', '2024-11-15 13:31:54', '', 'INF/INFT/038300053381/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 6395.00, 69287.03, 'pending'),
(531, 'S68648725', '2024-11-15', '2024-11-15', '2024-11-15 13:32:04', '', 'INF/INFT/038300056191/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 19050.00, 88337.03, 'Matched'),
(532, 'S68932545', '2024-11-15', '2024-11-15', '2024-11-15 14:12:53', '', 'INF/INFT/038300516371/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 29057.03, 'pending'),
(533, 'S68933364', '2024-11-15', '2024-11-15', '2024-11-15 14:13:04', '', 'INF/INFT/038300519091/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 49777.03, 'pending'),
(534, 'S68933971', '2024-11-15', '2024-11-15', '2024-11-15 14:13:14', '', 'INF/INFT/038300521141/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 16808.00, 66585.03, 'pending'),
(535, 'S68935004', '2024-11-15', '2024-11-15', '2024-11-15 14:13:22', '', 'INF/INFT/038300522641/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 1334.00, 67919.03, 'pending'),
(536, 'S70395084', '2024-11-15', '2024-11-15', '2024-11-15 17:50:01', '', 'UPI/432055761180/UPI/cynthiajimmy@ok/State Bank Of I/SBI701ec21a073747329af8e0101fae926d', 13500.00, 81419.03, 'pending'),
(537, 'S73697621', '2024-11-16', '2024-11-16', '2024-11-16 08:07:42', '', 'MMT/IMPS/432108828325/null/MANGALA KO/State Bank of I', 13500.00, 94919.03, 'pending'),
(538, 'S73942259', '2024-11-16', '2024-11-16', '2024-11-16 09:38:08', '', 'UPI/9901537347@ibl/Payment from Ph/Union Bank of I/356324008385/IBLa4fc535fb1d94fadaad705770e50cad6', 12500.00, 107419.03, 'pending'),
(539, 'S74013974', '2024-11-16', '2024-11-16', '2024-11-16 09:41:31', '', 'UPI/468737652217/Paid via SuperM/8197129933@supe/ICICI Bank/SMY2411160941ROO2MQXIFRWV32PTV3541C', 14000.00, 121419.03, 'pending'),
(540, 'S75485220', '2024-11-16', '2024-11-16', '2024-11-16 12:28:56', '', 'BIL/INFT/DKK2266161/MI Khan elder c/ SYED ABDUL MUSS', 12750.00, 134169.03, 'pending'),
(541, 'S78020341', '2024-11-16', '2024-11-16', '2024-11-16 16:57:51', '', 'BIL/INFT/DKK2315964/NA/ UMA SATYEN VYAS', 15750.00, 109119.03, 'pending'),
(542, 'S78018687', '2024-11-16', '2024-11-16', '2024-11-16 17:21:31', '', 'UPI/468741241443/Nursing/9845894222@supe/AXIS BANK/SMY2411161721UF6GBEWTJL3IVF7PYJPT9L', 13500.00, 122619.03, 'pending'),
(543, 'S49409907', '2024-11-13', '2024-11-13', '2024-11-13 12:37:51', '', 'NEFT-P318240375189734-ASHA D NAYAK--0125101001157-CNRB0000125', 21000.00, 34434.03, 'Matched'),
(544, 'S78368102', '2024-11-16', '2024-11-16', '2024-11-16 17:55:24', '', 'UPI/anuragverma150-/UPI/AXIS BANK/468795146377/AXI1df955ccb4e04383ba4440cf8eb55d5a', 13500.00, 136119.03, 'pending'),
(545, 'S78800076', '2024-11-16', '2024-11-16', '2024-11-16 18:35:35', '', 'UPI/432162245191/UPI/obi2005-3@okaxi/AXIS BANK/AXI305b2e70add74000aa4a3ef0a37dabe4', 13500.00, 149619.03, 'pending'),
(546, 'S58792440', '2024-11-14', '2024-11-14', '2024-11-14 12:43:08', '', 'BIL/INFT/DKI1914610/Nov set2/ DHANYA ROS MATH', 14000.00, 28434.03, 'Matched'),
(547, 'S78905669', '2024-11-16', '2024-11-16', '2024-11-16 18:39:44', '', 'INF/INFT/038315025331/Salary         /ARCHANA DIWAN', 13500.00, 163119.03, 'pending'),
(548, 'S59919983', '2024-11-14', '2024-11-14', '2024-11-14 14:32:49', '', 'UPI/431966588105/Attendant for M/madhavi.krishna/Union Bank of I/ICI889e75bae7454070adb31dcd5a39d20c', 13500.00, 41934.03, 'pending'),
(549, 'S79748941', '2024-11-16', '2024-11-16', '2024-11-16 20:34:24', '', 'NEFT-SVCB024321302874-R JAYALAKSHMI-R JAYALAKSHMI 2ND HALF OF NOV 2024-109803130005618-SVCB0000098', 13500.00, 176619.03, 'pending'),
(550, 'S68642897', '2024-11-15', '2024-11-15', '2024-11-15 13:31:20', '', 'INF/INFT/038300045131/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 20958.00, 62892.03, 'pending'),
(551, 'S80121355', '2024-11-16', '2024-11-16', '2024-11-16 21:40:43', '', 'MMT/IMPS/432121759197/null/RAVI RAJ S/State Bank of I', 11625.00, 188244.03, 'pending'),
(552, 'S68647127', '2024-11-15', '2024-11-15', '2024-11-15 13:31:54', '', 'INF/INFT/038300053381/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 6395.00, 69287.03, 'pending');
INSERT INTO `deposits` (`id`, `tran_id`, `value_date`, `transaction_date`, `transaction_posted_date`, `cheque_no_ref_no`, `transaction_remarks`, `deposit_amt`, `balance`, `status`) VALUES
(553, 'S80434449', '2024-11-16', '2024-11-16', '2024-11-16 22:58:50', '', 'FT-MESPOS/REVRENGSTOCT24/EP049242', 80.82, 188324.85, 'pending'),
(554, 'S68648725', '2024-11-15', '2024-11-15', '2024-11-15 13:32:04', '', 'INF/INFT/038300056191/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 19050.00, 88337.03, 'Matched'),
(555, 'S80706988', '2024-11-17', '2024-11-17', '2024-11-17 01:33:39', '', 'NEFT-N322243402959481-BHAVANI-NOV 2ND HALF 2024-00771140203921-HDFC0000001', 12500.00, 130824.85, 'pending'),
(556, 'S68932545', '2024-11-15', '2024-11-15', '2024-11-15 14:12:53', '', 'INF/INFT/038300516371/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 29057.03, 'pending'),
(557, 'S81168941', '2024-11-16', '2024-11-17', '2024-11-17 05:56:09', '', 'FT-MESPOS/REV/RENT/OCT24/EP049242', 449.00, 131273.85, 'pending'),
(558, 'S68933364', '2024-11-15', '2024-11-15', '2024-11-15 14:13:04', '', 'INF/INFT/038300519091/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 49777.03, 'pending'),
(559, 'S82245503', '2024-11-17', '2024-11-17', '2024-11-17 11:50:23', '', 'UPI/468868371912/UPI/abhishek.mn.iis/State Bank Of I/AXI9d6bd59c17604cc38fb77b7256a893e5', 11500.00, 142773.85, 'pending'),
(560, 'S68933971', '2024-11-15', '2024-11-15', '2024-11-15 14:13:14', '', 'INF/INFT/038300521141/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 16808.00, 66585.03, 'pending'),
(561, 'S82376192', '2024-11-17', '2024-11-17', '2024-11-17 11:51:17', '', 'UPI/432224940501/UPI/christinavprabh/State Bank Of I/ICI35f3b109a3ff4f1faa4ad5e7e46df700', 4500.00, 147273.85, 'pending'),
(562, 'S68935004', '2024-11-15', '2024-11-15', '2024-11-15 14:13:22', '', 'INF/INFT/038300522641/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 1334.00, 67919.03, 'pending'),
(563, 'S82765985', '2024-11-17', '2024-11-17', '2024-11-17 13:08:55', '', 'MMT/IMPS/432213127447/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 160773.85, 'pending'),
(564, 'S70395084', '2024-11-15', '2024-11-15', '2024-11-15 17:50:01', '', 'UPI/432055761180/UPI/cynthiajimmy@ok/State Bank Of I/SBI701ec21a073747329af8e0101fae926d', 13500.00, 81419.03, 'pending'),
(565, 'S83168600', '2024-11-17', '2024-11-17', '2024-11-17 14:32:20', '', 'NEFT-AXOMB32275094653-SRIRUPA SEN--015010100536585-UTIB0004821', 12500.00, 173273.85, 'pending'),
(566, 'S73697621', '2024-11-16', '2024-11-16', '2024-11-16 08:07:42', '', 'MMT/IMPS/432108828325/null/MANGALA KO/State Bank of I', 13500.00, 94919.03, 'pending'),
(567, 'S85235775', '2024-11-17', '2024-11-17', '2024-11-17 22:24:09', '', 'UPI/468851867229/UPI/manjeetverma161/Punjab National/ICI5efb05c53bed458da215897ec3f0e360', 14000.00, 187273.85, 'pending'),
(568, 'S73942259', '2024-11-16', '2024-11-16', '2024-11-16 09:38:08', '', 'UPI/9901537347@ibl/Payment from Ph/Union Bank of I/356324008385/IBLa4fc535fb1d94fadaad705770e50cad6', 12500.00, 107419.03, 'pending'),
(569, 'S87711173', '2024-11-18', '2024-11-18', '2024-11-18 08:31:55', '', 'NEFT-N323243403464711-S RAMACHANDRA RAO-RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 200773.85, 'pending'),
(570, 'S74013974', '2024-11-16', '2024-11-16', '2024-11-16 09:41:31', '', 'UPI/468737652217/Paid via SuperM/8197129933@supe/ICICI Bank/SMY2411160941ROO2MQXIFRWV32PTV3541C', 14000.00, 121419.03, 'pending'),
(571, 'S88771127', '2024-11-18', '2024-11-18', '2024-11-18 11:15:35', '', 'UPI/432389681030/UPI/deepti12karumba/AXIS BANK/SBI92bfef8f88e84e789a204767dd6dcbfe', 10500.00, 211273.85, 'pending'),
(572, 'S75485220', '2024-11-16', '2024-11-16', '2024-11-16 12:28:56', '', 'BIL/INFT/DKK2266161/MI Khan elder c/ SYED ABDUL MUSS', 12750.00, 134169.03, 'pending'),
(573, 'S89241742', '2024-11-18', '2024-11-18', '2024-11-18 11:34:01', '', 'UPI/432390842965/UPI/cynthiajimmy@ok/State Bank Of I/SBIfd2ba295b1274ff693d7cf37b8b76cad', 1800.00, 213073.85, 'pending'),
(574, 'S90372247', '2024-11-18', '2024-11-18', '2024-11-18 12:56:27', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/432376654391/HDF5b4e61c28b38492382435bf9c57bb647', 13500.00, 226573.85, 'pending'),
(575, 'S78020341', '2024-11-16', '2024-11-16', '2024-11-16 16:57:51', '', 'BIL/INFT/DKK2315964/NA/ UMA SATYEN VYAS', 15750.00, 109119.03, 'pending'),
(576, 'S90839934', '2024-11-18', '2024-11-18', '2024-11-18 13:16:39', '', 'NEFT-N323243403899686-IGNOXLABS PVT LTD OP1-NEFT  EMHB002 BANGLORE 5020003209-50200032099971-HDFC', 12495.00, 239068.85, 'pending'),
(577, 'S78018687', '2024-11-16', '2024-11-16', '2024-11-16 17:21:31', '', 'UPI/468741241443/Nursing/9845894222@supe/AXIS BANK/SMY2411161721UF6GBEWTJL3IVF7PYJPT9L', 13500.00, 122619.03, 'pending'),
(578, 'S90839937', '2024-11-18', '2024-11-18', '2024-11-18 13:16:40', '', 'NEFT-N323243403899682-IGNOXLABS PVT LTD OP1-NEFT  EMHB0002 BANGLORE 502000320-50200032099971-HDFC', 13230.00, 252298.85, 'pending'),
(579, 'S78368102', '2024-11-16', '2024-11-16', '2024-11-16 17:55:24', '', 'UPI/anuragverma150-/UPI/AXIS BANK/468795146377/AXI1df955ccb4e04383ba4440cf8eb55d5a', 13500.00, 136119.03, 'pending'),
(580, 'S91887312', '2024-11-18', '2024-11-18', '2024-11-18 14:57:08', '', 'BIL/INFT/DKM2588188/16thto30thNovem/ RENU KALAGNANAM', 33000.00, 285298.85, 'pending'),
(581, 'S78800076', '2024-11-16', '2024-11-16', '2024-11-16 18:35:35', '', 'UPI/432162245191/UPI/obi2005-3@okaxi/AXIS BANK/AXI305b2e70add74000aa4a3ef0a37dabe4', 13500.00, 149619.03, 'pending'),
(582, 'S92243655', '2024-11-18', '2024-11-18', '2024-11-18 15:23:14', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5431', 12000.00, 297298.85, 'pending'),
(583, 'S78905669', '2024-11-16', '2024-11-16', '2024-11-16 18:39:44', '', 'INF/INFT/038315025331/Salary         /ARCHANA DIWAN', 13500.00, 163119.03, 'pending'),
(584, 'S92263663', '2024-11-18', '2024-11-18', '2024-11-18 15:24:49', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5433', 1500.00, 298798.85, 'pending'),
(585, 'S79748941', '2024-11-16', '2024-11-16', '2024-11-16 20:34:24', '', 'NEFT-SVCB024321302874-R JAYALAKSHMI-R JAYALAKSHMI 2ND HALF OF NOV 2024-109803130005618-SVCB0000098', 13500.00, 176619.03, 'pending'),
(586, 'S80121355', '2024-11-16', '2024-11-16', '2024-11-16 21:40:43', '', 'MMT/IMPS/432121759197/null/RAVI RAJ S/State Bank of I', 11625.00, 188244.03, 'pending'),
(587, 'S93418829', '2024-11-18', '2024-11-18', '2024-11-18 16:45:10', '', 'MMT/IMPS/432316117723/Ali Helper/SANJEEV SH/HDFC Bank', 3600.00, 22398.85, 'pending'),
(588, 'S80434449', '2024-11-16', '2024-11-16', '2024-11-16 22:58:50', '', 'FT-MESPOS/REVRENGSTOCT24/EP049242', 80.82, 188324.85, 'pending'),
(589, 'S94929916', '2024-11-18', '2024-11-18', '2024-11-18 19:02:59', '', 'INF/INFT/038329979601/AARUSH CONSTRUC', 100000.00, 122398.85, 'pending'),
(590, 'S95293560', '2024-11-18', '2024-11-18', '2024-11-18 19:39:18', '', 'MMT/IMPS/432319525371/Nov30/VIDYASRIVA/Axis Bank', 23625.00, 146023.85, 'pending'),
(591, 'S80706988', '2024-11-17', '2024-11-17', '2024-11-17 01:33:39', '', 'NEFT-N322243402959481-BHAVANI-NOV 2ND HALF 2024-00771140203921-HDFC0000001', 12500.00, 130824.85, 'pending'),
(592, 'S95317245', '2024-11-18', '2024-11-18', '2024-11-18 19:42:56', '', 'MMT/IMPS/432319545404/Nov30/VLAKSHMIAM/Axis Bank', 12600.00, 158623.85, 'pending'),
(593, 'S81168941', '2024-11-16', '2024-11-17', '2024-11-17 05:56:09', '', 'FT-MESPOS/REV/RENT/OCT24/EP049242', 449.00, 131273.85, 'pending'),
(594, 'S96680226', '2024-11-19', '2024-11-19', '2024-11-19 00:49:50', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/432407404179/HDF13aa8b0039b44fe7bb85fc842f476ea5', 12500.00, 171123.85, 'pending'),
(595, 'S82245503', '2024-11-17', '2024-11-17', '2024-11-17 11:50:23', '', 'UPI/468868371912/UPI/abhishek.mn.iis/State Bank Of I/AXI9d6bd59c17604cc38fb77b7256a893e5', 11500.00, 142773.85, 'pending'),
(596, 'S98613032', '2024-11-19', '2024-11-19', '2024-11-19 09:47:13', '', 'INF/INFT/038332871671/44855766     /EZEE MEDFIND LLP    /', 1300.00, 172423.85, 'pending'),
(597, 'S82376192', '2024-11-17', '2024-11-17', '2024-11-17 11:51:17', '', 'UPI/432224940501/UPI/christinavprabh/State Bank Of I/ICI35f3b109a3ff4f1faa4ad5e7e46df700', 4500.00, 147273.85, 'pending'),
(598, 'S99309776', '2024-11-19', '2024-11-19', '2024-11-19 11:23:38', '', 'UPI/469065238185/salary 16 to 30/pallavisinhamis/ICICI Bank/ICI2ad8b12a9fff4a2994199b9f7e18fcaf', 15000.00, 187423.85, 'pending'),
(599, 'S82765985', '2024-11-17', '2024-11-17', '2024-11-17 13:08:55', '', 'MMT/IMPS/432213127447/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 160773.85, 'pending'),
(600, 'S83168600', '2024-11-17', '2024-11-17', '2024-11-17 14:32:20', '', 'NEFT-AXOMB32275094653-SRIRUPA SEN--015010100536585-UTIB0004821', 12500.00, 173273.85, 'pending'),
(601, 'S11434339', '2024-11-20', '2024-11-20', '2024-11-20 17:26:20', '', 'CMS/ CMS4662594714/SUKINO HEALTHCARE SOLUTIONS PR', 27291.00, 154714.85, 'pending'),
(602, 'S85235775', '2024-11-17', '2024-11-17', '2024-11-17 22:24:09', '', 'UPI/468851867229/UPI/manjeetverma161/Punjab National/ICI5efb05c53bed458da215897ec3f0e360', 14000.00, 187273.85, 'pending'),
(603, 'S16777086', '2024-11-21', '2024-11-21', '2024-11-21 11:04:28', '', 'UPI/432626433487/UPI/sandhyanair199@/ICICI Bank/ICI3155b308a5ce40d0afe24aed6f7bd000', 12000.00, 166714.85, 'pending'),
(604, 'S87711173', '2024-11-18', '2024-11-18', '2024-11-18 08:31:55', '', 'NEFT-N323243403464711-S RAMACHANDRA RAO-RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 200773.85, 'pending'),
(605, 'S88771127', '2024-11-18', '2024-11-18', '2024-11-18 11:15:35', '', 'UPI/432389681030/UPI/deepti12karumba/AXIS BANK/SBI92bfef8f88e84e789a204767dd6dcbfe', 10500.00, 211273.85, 'pending'),
(606, 'S19082966', '2024-11-21', '2024-11-21', '2024-11-21 14:05:30', '', 'NEFT-AXISCN0823448800-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 159954.45, 'pending'),
(607, 'S89241742', '2024-11-18', '2024-11-18', '2024-11-18 11:34:01', '', 'UPI/432390842965/UPI/cynthiajimmy@ok/State Bank Of I/SBIfd2ba295b1274ff693d7cf37b8b76cad', 1800.00, 213073.85, 'pending'),
(608, 'S90372247', '2024-11-18', '2024-11-18', '2024-11-18 12:56:27', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/432376654391/HDF5b4e61c28b38492382435bf9c57bb647', 13500.00, 226573.85, 'pending'),
(609, 'S90839934', '2024-11-18', '2024-11-18', '2024-11-18 13:16:39', '', 'NEFT-N323243403899686-IGNOXLABS PVT LTD OP1-NEFT  EMHB002 BANGLORE 5020003209-50200032099971-HDFC', 12495.00, 239068.85, 'pending'),
(610, 'S90839937', '2024-11-18', '2024-11-18', '2024-11-18 13:16:40', '', 'NEFT-N323243403899682-IGNOXLABS PVT LTD OP1-NEFT  EMHB0002 BANGLORE 502000320-50200032099971-HDFC', 13230.00, 252298.85, 'pending'),
(611, 'S25554007', '2024-11-22', '2024-11-22', '2024-11-22 07:37:39', '', 'UPI/432780870440/caretaker/rkpatil1@oksbi/State Bank Of I/SBI9a9f4cb52eaf4d1a8d68b1547d5b177c', 15000.00, 129454.45, 'pending'),
(612, 'S91887312', '2024-11-18', '2024-11-18', '2024-11-18 14:57:08', '', 'BIL/INFT/DKM2588188/16thto30thNovem/ RENU KALAGNANAM', 33000.00, 285298.85, 'pending'),
(613, 'S92243655', '2024-11-18', '2024-11-18', '2024-11-18 15:23:14', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5431', 12000.00, 297298.85, 'pending'),
(614, 'S27420133', '2024-11-22', '2024-11-22', '2024-11-22 12:38:03', '', 'UPI/432796300568/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI777c692ff028408bafb59a5402522716', 12600.00, 133392.45, 'pending'),
(615, 'S92263663', '2024-11-18', '2024-11-18', '2024-11-18 15:24:49', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5433', 1500.00, 298798.85, 'pending'),
(616, 'S93418829', '2024-11-18', '2024-11-18', '2024-11-18 16:45:10', '', 'MMT/IMPS/432316117723/Ali Helper/SANJEEV SH/HDFC Bank', 3600.00, 22398.85, 'pending'),
(617, 'S39453747', '2024-11-24', '2024-11-24', '2024-11-24 10:20:15', '', 'CMS/ CMS4669666771/SUKINO HEALTHCARE SOLUTIONS PR', 4704.00, 120096.45, 'pending'),
(618, 'S94929916', '2024-11-18', '2024-11-18', '2024-11-18 19:02:59', '', 'INF/INFT/038329979601/AARUSH CONSTRUC', 100000.00, 122398.85, 'pending'),
(619, 'S52285457', '2024-11-25', '2024-11-25', '2024-11-25 20:33:27', '', 'NEFT-CMS3302466086620-HEALTHVISTA INDIA PRIVATE LIMITE-PAYMENT-6447052626-KKBK0000958', 33997.00, 154093.45, 'pending'),
(620, 'S95293560', '2024-11-18', '2024-11-18', '2024-11-18 19:39:18', '', 'MMT/IMPS/432319525371/Nov30/VIDYASRIVA/Axis Bank', 23625.00, 146023.85, 'pending'),
(621, 'S56045368', '2024-11-26', '2024-11-26', '2024-11-26 10:15:07', '', 'UPI/433122951714/UPI/yusufshahpurwal/HDFC BANK LTD/HDF8368d24241df4227ac6b70eb0d6956d2', 13500.00, 167593.45, 'pending'),
(622, 'S95317245', '2024-11-18', '2024-11-18', '2024-11-18 19:42:56', '', 'MMT/IMPS/432319545404/Nov30/VLAKSHMIAM/Axis Bank', 12600.00, 158623.85, 'pending'),
(623, 'M3735849', '2024-11-26', '2024-11-26', '2024-11-26 19:15:41', '', 'TRF/MADAN/055778/ICI/23.11.2024', 25000.00, 192593.45, 'pending'),
(624, 'S96680226', '2024-11-19', '2024-11-19', '2024-11-19 00:49:50', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/432407404179/HDF13aa8b0039b44fe7bb85fc842f476ea5', 12500.00, 171123.85, 'pending'),
(625, 'S98613032', '2024-11-19', '2024-11-19', '2024-11-19 09:47:13', '', 'INF/INFT/038332871671/44855766     /EZEE MEDFIND LLP    /', 1300.00, 172423.85, 'pending'),
(626, 'S99309776', '2024-11-19', '2024-11-19', '2024-11-19 11:23:38', '', 'UPI/469065238185/salary 16 to 30/pallavisinhamis/ICICI Bank/ICI2ad8b12a9fff4a2994199b9f7e18fcaf', 15000.00, 187423.85, 'pending'),
(627, 'S91139662', '2024-11-29', '2024-11-29', '2024-11-29 16:55:23', '', 'UPI/433474709893/UPI/kanchanaseshadr/HDFC BANK LTD/HDF387ad8fb3d1646edb7624e068c7376c0', 29295.00, 152888.45, 'pending'),
(628, 'S11434339', '2024-11-20', '2024-11-20', '2024-11-20 17:26:20', '', 'CMS/ CMS4662594714/SUKINO HEALTHCARE SOLUTIONS PR', 27291.00, 154714.85, 'pending'),
(629, 'S97922697', '2024-11-30', '2024-11-30', '2024-11-30 11:24:55', '', 'MMT/IMPS/433511351600/Dec2024 Surende/RAJESH DES/HDFC Bank', 27900.00, 180788.45, 'pending'),
(630, 'S16777086', '2024-11-21', '2024-11-21', '2024-11-21 11:04:28', '', 'UPI/432626433487/UPI/sandhyanair199@/ICICI Bank/ICI3155b308a5ce40d0afe24aed6f7bd000', 12000.00, 166714.85, 'pending'),
(631, 'S5509059', '2024-12-01', '2024-12-01', '2024-12-01 00:08:53', '', 'UPI/470234442140/UPI/nuqranaqvi@okic/ICICI Bank/ICI0e23a5d0c0144ff0a6474e25b7ecfdcc', 14000.00, 194788.45, 'pending'),
(632, 'S6697751', '2024-12-01', '2024-12-01', '2024-12-01 07:00:00', '', 'BIL/INFT/DL15102214/December first / DHANYA ROS MATH', 14000.00, 208788.45, 'pending'),
(633, 'S19082966', '2024-11-21', '2024-11-21', '2024-11-21 14:05:30', '', 'NEFT-AXISCN0823448800-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 159954.45, 'pending'),
(634, 'S6792085', '2024-12-01', '2024-12-01', '2024-12-01 07:31:19', '', 'MMT/IMPS/433607157093/Dec15/VLAKSHMIAM/Axis Bank', 12600.00, 221388.45, 'pending'),
(635, 'S9474255', '2024-12-01', '2024-12-01', '2024-12-01 13:41:23', '', 'BIL/INFT/DL15241533/MI Khan Elder c/ SYED ABDUL MUSS', 12750.00, 234138.45, 'pending'),
(636, 'S25554007', '2024-11-22', '2024-11-22', '2024-11-22 07:37:39', '', 'UPI/432780870440/caretaker/rkpatil1@oksbi/State Bank Of I/SBI9a9f4cb52eaf4d1a8d68b1547d5b177c', 15000.00, 129454.45, 'pending'),
(637, 'S27420133', '2024-11-22', '2024-11-22', '2024-11-22 12:38:03', '', 'UPI/432796300568/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI777c692ff028408bafb59a5402522716', 12600.00, 133392.45, 'pending'),
(638, 'S13105703', '2024-12-02', '2024-12-02', '2024-12-02 02:01:42', '', 'NEFT-N337243426973380-ANVAYAA KIN CARE PVT LTD-NEFT    AAYUSH HHC 50200019583158-50200019583158-HDF', 23760.00, 113397.45, 'pending'),
(639, 'S14175281', '2024-12-02', '2024-12-02', '2024-12-02 06:48:49', '', 'MMT/IMPS/433706505623/Dec15/VIDYASRIVA/Axis Bank', 23625.00, 137022.45, 'pending'),
(640, 'S15760326', '2024-12-02', '2024-12-02', '2024-12-02 09:30:09', '', 'UPI/470342152061/18th to 30th No/christinavprabh/State Bank Of I/AXI8ddd925c99944297a2a6ae1dc7488d41', 11700.00, 148722.45, 'pending'),
(641, 'S39453747', '2024-11-24', '2024-11-24', '2024-11-24 10:20:15', '', 'CMS/ CMS4669666771/SUKINO HEALTHCARE SOLUTIONS PR', 4704.00, 120096.45, 'pending'),
(642, 'S16532005', '2024-12-02', '2024-12-02', '2024-12-02 10:39:10', '', 'MMT/IMPS/433710570676/Bill Payment/MANGALA KO/State Bank of I', 9000.00, 157722.45, 'pending'),
(643, 'S52285457', '2024-11-25', '2024-11-25', '2024-11-25 20:33:27', '', 'NEFT-CMS3302466086620-HEALTHVISTA INDIA PRIVATE LIMITE-PAYMENT-6447052626-KKBK0000958', 33997.00, 154093.45, 'pending'),
(644, 'S24806421', '2024-12-02', '2024-12-02', '2024-12-02 20:43:18', '', 'MMT/IMPS/433720032204/IMPS/SRIRUPASEN/Axis Bank', 12500.00, 170222.45, 'pending'),
(645, 'S25433966', '2024-12-02', '2024-12-02', '2024-12-02 21:50:11', '', 'UPI/470374003846/UPI/obi2005-3@okaxi/AXIS BANK/AXI59ad74bbe25842bfb6fdf0e70b52d58a', 13500.00, 183722.45, 'pending'),
(646, 'S56045368', '2024-11-26', '2024-11-26', '2024-11-26 10:15:07', '', 'UPI/433122951714/UPI/yusufshahpurwal/HDFC BANK LTD/HDF8368d24241df4227ac6b70eb0d6956d2', 13500.00, 167593.45, 'pending'),
(647, 'S25735864', '2024-12-02', '2024-12-02', '2024-12-02 22:36:44', '', 'UPI/9901537347@axl/Payment from Ph/Union Bank of I/132883836942/AXL7cbc4b44082e4ffd9fb3251fac112042', 12500.00, 196222.45, 'pending'),
(648, 'M3735849', '2024-11-26', '2024-11-26', '2024-11-26 19:15:41', '', 'TRF/MADAN/055778/ICI/23.11.2024', 25000.00, 192593.45, 'pending'),
(649, 'S33545228', '2024-12-03', '2024-12-03', '2024-12-03 16:21:54', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/433866408881/HDFdd60b004d4df4e61abcc9c448f27fdd6', 13500.00, 209663.45, 'pending'),
(650, 'S91139662', '2024-11-29', '2024-11-29', '2024-11-29 16:55:23', '', 'UPI/433474709893/UPI/kanchanaseshadr/HDFC BANK LTD/HDF387ad8fb3d1646edb7624e068c7376c0', 29295.00, 152888.45, 'pending'),
(651, 'S97922697', '2024-11-30', '2024-11-30', '2024-11-30 11:24:55', '', 'MMT/IMPS/433511351600/Dec2024 Surende/RAJESH DES/HDFC Bank', 27900.00, 180788.45, 'pending'),
(652, 'S35992827', '2024-12-03', '2024-12-03', '2024-12-03 19:27:26', '', 'BIL/INFT/DL36083050/NA/ UMA SATYEN VYAS', 34000.00, 83663.45, 'pending'),
(653, 'S5509059', '2024-12-01', '2024-12-01', '2024-12-01 00:08:53', '', 'UPI/470234442140/UPI/nuqranaqvi@okic/ICICI Bank/ICI0e23a5d0c0144ff0a6474e25b7ecfdcc', 14000.00, 194788.45, 'pending'),
(654, 'S36090241', '2024-12-03', '2024-12-03', '2024-12-03 19:41:30', '', 'UPI/433879338733/UPI/jayastev-yahoo./INDIAN OVERSEAS/HDF2012fc9348c24b8ab630f52a0a0db419', 29250.00, 112913.45, 'pending'),
(655, 'S6697751', '2024-12-01', '2024-12-01', '2024-12-01 07:00:00', '', 'BIL/INFT/DL15102214/December first / DHANYA ROS MATH', 14000.00, 208788.45, 'pending'),
(656, 'S36174722', '2024-12-03', '2024-12-03', '2024-12-03 20:01:16', '', 'UPI/470406596078/Attendant for M/madhavi.krishna/Union Bank of I/ICIc2f1bdf31a5f4bfa9f2d5800d5bc0961', 13500.00, 126413.45, 'pending'),
(657, 'S6792085', '2024-12-01', '2024-12-01', '2024-12-01 07:31:19', '', 'MMT/IMPS/433607157093/Dec15/VLAKSHMIAM/Axis Bank', 12600.00, 221388.45, 'pending'),
(658, 'S36251939', '2024-12-03', '2024-12-03', '2024-12-03 20:12:19', '', 'UPI/433825525338/UPI Payment/9884018900@icic/ICICI Bank/ICI4550286beaf44a0883cb57b872dedf93', 13500.00, 139913.45, 'pending'),
(659, 'S9474255', '2024-12-01', '2024-12-01', '2024-12-01 13:41:23', '', 'BIL/INFT/DL15241533/MI Khan Elder c/ SYED ABDUL MUSS', 12750.00, 234138.45, 'pending'),
(660, 'S36352356', '2024-12-03', '2024-12-03', '2024-12-03 20:13:42', '', 'UPI/anuragverma150-/UPI/AXIS BANK/433855186194/AXI1c25ec598b594f1186e3445477748c06', 13500.00, 153413.45, 'pending'),
(661, 'S36938342', '2024-12-03', '2024-12-03', '2024-12-03 21:28:23', '', 'UPI/433891688658/Nursing/9845894222@supe/AXIS BANK/SMY241203212868WFXIGOHBUCVIF9W6FMCM', 13500.00, 166913.45, 'pending'),
(662, 'S37109923', '2024-12-03', '2024-12-03', '2024-12-03 21:52:25', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/433886984451/HDF4ee2107685ba4711b450b71ff494d8b1', 1666.00, 168579.45, 'pending'),
(663, 'S37238536', '2024-12-03', '2024-12-03', '2024-12-03 22:04:48', '', 'MMT/IMPS/433822923147/Bill Payment/RAVI RAJ S/State Bank of I', 11625.00, 180204.45, 'pending'),
(664, 'S37307199', '2024-12-03', '2024-12-03', '2024-12-03 22:16:54', '', 'INF/INFT/038483986991/salary         /ARCHANA DIWAN', 13500.00, 193704.45, 'pending'),
(665, 'S13105703', '2024-12-02', '2024-12-02', '2024-12-02 02:01:42', '', 'NEFT-N337243426973380-ANVAYAA KIN CARE PVT LTD-NEFT    AAYUSH HHC 50200019583158-50200019583158-HDF', 23760.00, 113397.45, 'pending'),
(666, 'S37708683', '2024-12-03', '2024-12-03', '2024-12-03 23:40:59', '', 'BIL/INFT/DL36143237/Quick Pay FT/Phuli Debnath/029805005633SOWMYA RANGARAJ', 24334.00, 218038.45, 'pending'),
(667, 'S14175281', '2024-12-02', '2024-12-02', '2024-12-02 06:48:49', '', 'MMT/IMPS/433706505623/Dec15/VIDYASRIVA/Axis Bank', 23625.00, 137022.45, 'pending'),
(668, 'S39375165', '2024-12-04', '2024-12-04', '2024-12-04 08:31:45', '', 'NEFT-SVCB024339842606-R JAYALAKSHMI-R JAYALAKSHMI1ST HALF DEC 2024-109803130005618-SVCB0000098', 13500.00, 231538.45, 'pending'),
(669, 'S15760326', '2024-12-02', '2024-12-02', '2024-12-02 09:30:09', '', 'UPI/470342152061/18th to 30th No/christinavprabh/State Bank Of I/AXI8ddd925c99944297a2a6ae1dc7488d41', 11700.00, 148722.45, 'pending'),
(670, 'S16532005', '2024-12-02', '2024-12-02', '2024-12-02 10:39:10', '', 'MMT/IMPS/433710570676/Bill Payment/MANGALA KO/State Bank of I', 9000.00, 157722.45, 'pending'),
(671, 'S24806421', '2024-12-02', '2024-12-02', '2024-12-02 20:43:18', '', 'MMT/IMPS/433720032204/IMPS/SRIRUPASEN/Axis Bank', 12500.00, 170222.45, 'pending'),
(672, 'M3270273', '2024-12-04', '2024-12-04', '2024-12-04 11:12:48', '', 'BY CASH  - HRBR LAYOUT', 27000.00, 149176.30, 'pending'),
(673, 'S25433966', '2024-12-02', '2024-12-02', '2024-12-02 21:50:11', '', 'UPI/470374003846/UPI/obi2005-3@okaxi/AXIS BANK/AXI59ad74bbe25842bfb6fdf0e70b52d58a', 13500.00, 183722.45, 'pending'),
(674, 'M3331984', '2024-12-04', '2024-12-04', '2024-12-04 12:13:40', '', 'BY CASH -BANGALORE - ULSOOR C', 13500.00, 162676.30, 'pending'),
(675, 'S25735864', '2024-12-02', '2024-12-02', '2024-12-02 22:36:44', '', 'UPI/9901537347@axl/Payment from Ph/Union Bank of I/132883836942/AXL7cbc4b44082e4ffd9fb3251fac112042', 12500.00, 196222.45, 'pending'),
(676, 'S46403214', '2024-12-04', '2024-12-04', '2024-12-04 18:49:09', '', 'MMT/IMPS/433918467778/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 176176.30, 'pending'),
(677, 'S46699194', '2024-12-04', '2024-12-04', '2024-12-04 19:16:59', '', 'MMT/IMPS/433919546974/ReqPay/Mr  NAGARA/State Bank of I', 25500.00, 201676.30, 'pending'),
(678, 'S47489464', '2024-12-04', '2024-12-04', '2024-12-04 21:20:21', '', 'UPI/433941916665/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI862f7d0ca92048c08364fe7a488ebe13', 13500.00, 215176.30, 'pending'),
(679, 'S47772488', '2024-12-04', '2024-12-04', '2024-12-04 21:30:45', '', 'MMT/IMPS/433921101469/Ali Payment/SANJEEV SH/HDFCBank', 9000.00, 224176.30, 'pending'),
(680, 'S33545228', '2024-12-03', '2024-12-03', '2024-12-03 16:21:54', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/433866408881/HDFdd60b004d4df4e61abcc9c448f27fdd6', 13500.00, 209663.45, 'pending'),
(681, 'S47683170', '2024-12-04', '2024-12-04', '2024-12-04 21:45:31', '', 'UPI/470515560753/UPI/abhishek.mn.iis/State Bank Of I/AXI201a8433bdeb4c61a56be3cce362b366', 11500.00, 235676.30, 'pending'),
(682, 'S48813346', '2024-12-05', '2024-12-05', '2024-12-05 02:02:00', '', 'NEFT-N340243434553900-IGNOXLABS PVT LTD OP1-NEFT  EMHB042 BANGLORE DC 5020003-50200032099971-HDFC', 7056.00, 242732.30, 'pending'),
(683, 'S35992827', '2024-12-03', '2024-12-03', '2024-12-03 19:27:26', '', 'BIL/INFT/DL36083050/NA/ UMA SATYEN VYAS', 34000.00, 83663.45, 'pending'),
(684, 'S48812502', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434591254-IGNOXLABS PVT LTD OP1-NEFT  EMHB038 BANGLORE DC 5020003-50200032099971-HDFC', 4165.00, 246897.30, 'pending'),
(685, 'S36090241', '2024-12-03', '2024-12-03', '2024-12-03 19:41:30', '', 'UPI/433879338733/UPI/jayastev-yahoo./INDIAN OVERSEAS/HDF2012fc9348c24b8ab630f52a0a0db419', 29250.00, 112913.45, 'pending'),
(686, 'S48814152', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434581711-IGNOXLABS PVT LTD OP1-NEFT  EMHB037 BANGLORE DC 5020003-50200032099971-HDFC', 13230.00, 260127.30, 'pending'),
(687, 'S36174722', '2024-12-03', '2024-12-03', '2024-12-03 20:01:16', '', 'UPI/470406596078/Attendant for M/madhavi.krishna/Union Bank of I/ICIc2f1bdf31a5f4bfa9f2d5800d5bc0961', 13500.00, 126413.45, 'pending'),
(688, 'S36251939', '2024-12-03', '2024-12-03', '2024-12-03 20:12:19', '', 'UPI/433825525338/UPI Payment/9884018900@icic/ICICI Bank/ICI4550286beaf44a0883cb57b872dedf93', 13500.00, 139913.45, 'pending'),
(689, 'S36352356', '2024-12-03', '2024-12-03', '2024-12-03 20:13:42', '', 'UPI/anuragverma150-/UPI/AXIS BANK/433855186194/AXI1c25ec598b594f1186e3445477748c06', 13500.00, 153413.45, 'pending'),
(690, 'S52143733', '2024-12-05', '2024-12-05', '2024-12-05 08:36:12', '', 'NEFT-N340243434762983-S RAMACHANDRA RAO-S RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 123231.30, 'pending'),
(691, 'S36938342', '2024-12-03', '2024-12-03', '2024-12-03 21:28:23', '', 'UPI/433891688658/Nursing/9845894222@supe/AXIS BANK/SMY241203212868WFXIGOHBUCVIF9W6FMCM', 13500.00, 166913.45, 'pending'),
(692, 'C44882503', '2024-12-05', '2024-12-05', '2024-12-05 12:55:11', '', 'UPI/434063396426/UPI/deepti12karumba/AXIS BANK/SBIe15a2b9ff7474b85a1617f351d781d06', 13500.00, 136731.30, 'pending'),
(693, 'S37109923', '2024-12-03', '2024-12-03', '2024-12-03 21:52:25', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/433886984451/HDF4ee2107685ba4711b450b71ff494d8b1', 1666.00, 168579.45, 'pending'),
(694, 'C52475339', '2024-12-05', '2024-12-05', '2024-12-05 16:24:05', '', 'NEFT-YESIG43400064650-INDIA HOME HEALTH CARE P L OPERATIO-512202424 71193-002281400004518-YESB00000', 18900.00, 155631.30, 'pending'),
(695, 'S37238536', '2024-12-03', '2024-12-03', '2024-12-03 22:04:48', '', 'MMT/IMPS/433822923147/Bill Payment/RAVI RAJ S/State Bank of I', 11625.00, 180204.45, 'pending'),
(696, 'S56599551', '2024-12-05', '2024-12-05', '2024-12-05 16:49:54', '', 'NEFT-AXISCN0840109369-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 193710.90, 'pending'),
(697, 'S37307199', '2024-12-03', '2024-12-03', '2024-12-03 22:16:54', '', 'INF/INFT/038483986991/salary         /ARCHANA DIWAN', 13500.00, 193704.45, 'pending'),
(698, 'S57986128', '2024-12-05', '2024-12-05', '2024-12-05 18:15:42', '', 'BIL/INFT/DL56694654/1stto15thDecnur/ RENU KALAGNANAM', 33000.00, 226710.90, 'pending'),
(699, 'S37708683', '2024-12-03', '2024-12-03', '2024-12-03 23:40:59', '', 'BIL/INFT/DL36143237/Quick Pay FT/Phuli Debnath/029805005633SOWMYA RANGARAJ', 24334.00, 218038.45, 'pending'),
(700, 'S39375165', '2024-12-04', '2024-12-04', '2024-12-04 08:31:45', '', 'NEFT-SVCB024339842606-R JAYALAKSHMI-R JAYALAKSHMI1ST HALF DEC 2024-109803130005618-SVCB0000098', 13500.00, 231538.45, 'pending'),
(701, 'S59404764', '2024-12-05', '2024-12-05', '2024-12-05 20:05:35', '', 'NEFT-N340243437019556-BHAVANI-DEC 1ST HALF-00771140203921-HDFC0000001', 13500.00, 155285.90, 'pending'),
(702, 'S59643664', '2024-12-05', '2024-12-05', '2024-12-05 20:36:31', '', 'UPI/470676510520/Dec 1 to 15 sal/pallavisinhamis/ICICI Bank/ICId68808e5b13e4f47915d8fbfbbe55110', 15000.00, 170285.90, 'pending'),
(703, 'M3270273', '2024-12-04', '2024-12-04', '2024-12-04 11:12:48', '', 'BY CASH  - HRBR LAYOUT', 27000.00, 149176.30, 'pending'),
(704, 'S59886897', '2024-12-05', '2024-12-05', '2024-12-05 21:17:35', '', 'UPI/434060983170/Sent from Paytm/9739988071@ptsb/ICICI Bank/PTMD01B1F12564E4D2194C911C9BF3F5412', 12000.00, 182285.90, 'pending'),
(705, 'M3331984', '2024-12-04', '2024-12-04', '2024-12-04 12:13:40', '', 'BY CASH -BANGALORE - ULSOOR C', 13500.00, 162676.30, 'pending'),
(706, 'S63308333', '2024-12-06', '2024-12-06', '2024-12-06 10:32:21', '', 'UPI/434116747526/caretaker/rkpatil1@oksbi/State Bank Of I/SBIdc0d6069d5664745acfbfeb9902cee3c', 15000.00, 197285.90, 'pending'),
(707, 'S46403214', '2024-12-04', '2024-12-04', '2024-12-04 18:49:09', '', 'MMT/IMPS/433918467778/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 176176.30, 'pending'),
(708, 'S63719860', '2024-12-06', '2024-12-06', '2024-12-06 11:06:29', '', 'NEFT-N341243437655074-APARAJITA SAHA-15DAYS ADVANCE-50100177601573-HDFC0000001', 15000.00, 212285.90, 'pending'),
(709, 'S46699194', '2024-12-04', '2024-12-04', '2024-12-04 19:16:59', '', 'MMT/IMPS/433919546974/ReqPay/Mr  NAGARA/State Bank of I', 25500.00, 201676.30, 'pending'),
(710, 'S47489464', '2024-12-04', '2024-12-04', '2024-12-04 21:20:21', '', 'UPI/433941916665/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI862f7d0ca92048c08364fe7a488ebe13', 13500.00, 215176.30, 'pending'),
(711, 'S70837017', '2024-12-06', '2024-12-06', '2024-12-06 22:05:55', '', 'NEFT-SBIN224341243398-MRS MOHUA MUKHERJEE-/ATTN//INB-00000036831395463-SBIN0009042', 22400.00, 234650.50, 'pending'),
(712, 'S47772488', '2024-12-04', '2024-12-04', '2024-12-04 21:30:45', '', 'MMT/IMPS/433921101469/Ali Payment/SANJEEV SH/HDFCBank', 9000.00, 224176.30, 'pending'),
(713, 'S75317231', '2024-12-07', '2024-12-07', '2024-12-07 12:39:06', '', 'NEFT-N342243440819027-ANURAG SRIVASTAVA-ALOK SRIVASTAVA-00441060006038-HDFC0000001', 27900.00, 262550.50, 'pending'),
(714, 'S47683170', '2024-12-04', '2024-12-04', '2024-12-04 21:45:31', '', 'UPI/470515560753/UPI/abhishek.mn.iis/State Bank Of I/AXI201a8433bdeb4c61a56be3cce362b366', 11500.00, 235676.30, 'pending'),
(715, 'S48813346', '2024-12-05', '2024-12-05', '2024-12-05 02:02:00', '', 'NEFT-N340243434553900-IGNOXLABS PVT LTD OP1-NEFT  EMHB042 BANGLORE DC 5020003-50200032099971-HDFC', 7056.00, 242732.30, 'pending'),
(716, 'S89117605', '2024-12-09', '2024-12-09', '2024-12-09 08:15:43', '', 'FT-MESPOS SET 10XX080827 091224', 205133.68, 237684.18, 'pending'),
(717, 'S48812502', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434591254-IGNOXLABS PVT LTD OP1-NEFT  EMHB038 BANGLORE DC 5020003-50200032099971-HDFC', 4165.00, 246897.30, 'pending'),
(718, 'S93026350', '2024-12-09', '2024-12-09', '2024-12-09 15:03:23', '', 'NEFT-KKBKH24344647334-NHK MEDICAL PRIVATE LIMITED-PAYMENT-9739841619-KKBK0000958', 72045.00, 309729.18, 'pending'),
(719, 'S48814152', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434581711-IGNOXLABS PVT LTD OP1-NEFT  EMHB037 BANGLORE DC 5020003-50200032099971-HDFC', 13230.00, 260127.30, 'pending'),
(720, 'S97140070', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 315372.18, 'pending'),
(721, 'S52143733', '2024-12-05', '2024-12-05', '2024-12-05 08:36:12', '', 'NEFT-N340243434762983-S RAMACHANDRA RAO-S RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 123231.30, 'pending'),
(722, 'C44882503', '2024-12-05', '2024-12-05', '2024-12-05 12:55:11', '', 'UPI/434063396426/UPI/deepti12karumba/AXIS BANK/SBIe15a2b9ff7474b85a1617f351d781d06', 13500.00, 136731.30, 'pending'),
(723, 'C52475339', '2024-12-05', '2024-12-05', '2024-12-05 16:24:05', '', 'NEFT-YESIG43400064650-INDIA HOME HEALTH CARE P L OPERATIO-512202424 71193-002281400004518-YESB00000', 18900.00, 155631.30, 'pending'),
(724, 'S56599551', '2024-12-05', '2024-12-05', '2024-12-05 16:49:54', '', 'NEFT-AXISCN0840109369-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 193710.90, 'pending'),
(725, 'S57986128', '2024-12-05', '2024-12-05', '2024-12-05 18:15:42', '', 'BIL/INFT/DL56694654/1stto15thDecnur/ RENU KALAGNANAM', 33000.00, 226710.90, 'pending'),
(726, 'S59404764', '2024-12-05', '2024-12-05', '2024-12-05 20:05:35', '', 'NEFT-N340243437019556-BHAVANI-DEC 1ST HALF-00771140203921-HDFC0000001', 13500.00, 155285.90, 'pending'),
(727, 'S59643664', '2024-12-05', '2024-12-05', '2024-12-05 20:36:31', '', 'UPI/470676510520/Dec 1 to 15 sal/pallavisinhamis/ICICI Bank/ICId68808e5b13e4f47915d8fbfbbe55110', 15000.00, 170285.90, 'pending'),
(728, 'S59886897', '2024-12-05', '2024-12-05', '2024-12-05 21:17:35', '', 'UPI/434060983170/Sent from Paytm/9739988071@ptsb/ICICI Bank/PTMD01B1F12564E4D2194C911C9BF3F5412', 12000.00, 182285.90, 'pending'),
(729, 'S63308333', '2024-12-06', '2024-12-06', '2024-12-06 10:32:21', '', 'UPI/434116747526/caretaker/rkpatil1@oksbi/State Bank Of I/SBIdc0d6069d5664745acfbfeb9902cee3c', 15000.00, 197285.90, 'pending'),
(730, 'S63719860', '2024-12-06', '2024-12-06', '2024-12-06 11:06:29', '', 'NEFT-N341243437655074-APARAJITA SAHA-15DAYS ADVANCE-50100177601573-HDFC0000001', 15000.00, 212285.90, 'pending'),
(731, 'S70837017', '2024-12-06', '2024-12-06', '2024-12-06 22:05:55', '', 'NEFT-SBIN224341243398-MRS MOHUA MUKHERJEE-/ATTN//INB-00000036831395463-SBIN0009042', 22400.00, 234650.50, 'pending'),
(732, 'S75317231', '2024-12-07', '2024-12-07', '2024-12-07 12:39:06', '', 'NEFT-N342243440819027-ANURAG SRIVASTAVA-ALOK SRIVASTAVA-00441060006038-HDFC0000001', 27900.00, 262550.50, 'pending'),
(733, 'S89117605', '2024-12-09', '2024-12-09', '2024-12-09 08:15:43', '', 'FT-MESPOS SET 10XX080827 091224', 205133.68, 237684.18, 'pending'),
(734, 'S93026350', '2024-12-09', '2024-12-09', '2024-12-09 15:03:23', '', 'NEFT-KKBKH24344647334-NHK MEDICAL PRIVATE LIMITED-PAYMENT-9739841619-KKBK0000958', 72045.00, 309729.18, 'pending'),
(735, 'S97140070', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 315372.18, 'pending'),
(736, 'S49409907', '2024-11-13', '2024-11-13', '2024-11-13 12:37:51', '', 'NEFT-P318240375189734-ASHA D NAYAK--0125101001157-CNRB0000125', 21000.00, 34434.03, 'Matched'),
(737, 'S58792440', '2024-11-14', '2024-11-14', '2024-11-14 12:43:08', '', 'BIL/INFT/DKI1914610/Nov set2/ DHANYA ROS MATH', 14000.00, 28434.03, 'Matched'),
(738, 'S59919983', '2024-11-14', '2024-11-14', '2024-11-14 14:32:49', '', 'UPI/431966588105/Attendant for M/madhavi.krishna/Union Bank of I/ICI889e75bae7454070adb31dcd5a39d20c', 13500.00, 41934.03, 'pending'),
(739, 'S68642897', '2024-11-15', '2024-11-15', '2024-11-15 13:31:20', '', 'INF/INFT/038300045131/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 20958.00, 62892.03, 'pending'),
(740, 'S68647127', '2024-11-15', '2024-11-15', '2024-11-15 13:31:54', '', 'INF/INFT/038300053381/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 6395.00, 69287.03, 'pending'),
(741, 'S68648725', '2024-11-15', '2024-11-15', '2024-11-15 13:32:04', '', 'INF/INFT/038300056191/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 19050.00, 88337.03, 'Matched'),
(742, 'S68932545', '2024-11-15', '2024-11-15', '2024-11-15 14:12:53', '', 'INF/INFT/038300516371/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 29057.03, 'pending'),
(743, 'S68933364', '2024-11-15', '2024-11-15', '2024-11-15 14:13:04', '', 'INF/INFT/038300519091/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 49777.03, 'pending'),
(744, 'S68933971', '2024-11-15', '2024-11-15', '2024-11-15 14:13:14', '', 'INF/INFT/038300521141/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 16808.00, 66585.03, 'pending'),
(745, 'S68935004', '2024-11-15', '2024-11-15', '2024-11-15 14:13:22', '', 'INF/INFT/038300522641/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 1334.00, 67919.03, 'pending'),
(746, 'S70395084', '2024-11-15', '2024-11-15', '2024-11-15 17:50:01', '', 'UPI/432055761180/UPI/cynthiajimmy@ok/State Bank Of I/SBI701ec21a073747329af8e0101fae926d', 13500.00, 81419.03, 'pending'),
(747, 'S73697621', '2024-11-16', '2024-11-16', '2024-11-16 08:07:42', '', 'MMT/IMPS/432108828325/null/MANGALA KO/State Bank of I', 13500.00, 94919.03, 'pending'),
(748, 'S73942259', '2024-11-16', '2024-11-16', '2024-11-16 09:38:08', '', 'UPI/9901537347@ibl/Payment from Ph/Union Bank of I/356324008385/IBLa4fc535fb1d94fadaad705770e50cad6', 12500.00, 107419.03, 'pending'),
(749, 'S74013974', '2024-11-16', '2024-11-16', '2024-11-16 09:41:31', '', 'UPI/468737652217/Paid via SuperM/8197129933@supe/ICICI Bank/SMY2411160941ROO2MQXIFRWV32PTV3541C', 14000.00, 121419.03, 'pending'),
(750, 'S75485220', '2024-11-16', '2024-11-16', '2024-11-16 12:28:56', '', 'BIL/INFT/DKK2266161/MI Khan elder c/ SYED ABDUL MUSS', 12750.00, 134169.03, 'pending'),
(751, 'S78020341', '2024-11-16', '2024-11-16', '2024-11-16 16:57:51', '', 'BIL/INFT/DKK2315964/NA/ UMA SATYEN VYAS', 15750.00, 109119.03, 'pending'),
(752, 'S78018687', '2024-11-16', '2024-11-16', '2024-11-16 17:21:31', '', 'UPI/468741241443/Nursing/9845894222@supe/AXIS BANK/SMY2411161721UF6GBEWTJL3IVF7PYJPT9L', 13500.00, 122619.03, 'pending'),
(753, 'S78368102', '2024-11-16', '2024-11-16', '2024-11-16 17:55:24', '', 'UPI/anuragverma150-/UPI/AXIS BANK/468795146377/AXI1df955ccb4e04383ba4440cf8eb55d5a', 13500.00, 136119.03, 'pending'),
(754, 'S78800076', '2024-11-16', '2024-11-16', '2024-11-16 18:35:35', '', 'UPI/432162245191/UPI/obi2005-3@okaxi/AXIS BANK/AXI305b2e70add74000aa4a3ef0a37dabe4', 13500.00, 149619.03, 'pending'),
(755, 'S78905669', '2024-11-16', '2024-11-16', '2024-11-16 18:39:44', '', 'INF/INFT/038315025331/Salary         /ARCHANA DIWAN', 13500.00, 163119.03, 'pending'),
(756, 'S79748941', '2024-11-16', '2024-11-16', '2024-11-16 20:34:24', '', 'NEFT-SVCB024321302874-R JAYALAKSHMI-R JAYALAKSHMI 2ND HALF OF NOV 2024-109803130005618-SVCB0000098', 13500.00, 176619.03, 'pending'),
(757, 'S80121355', '2024-11-16', '2024-11-16', '2024-11-16 21:40:43', '', 'MMT/IMPS/432121759197/null/RAVI RAJ S/State Bank of I', 11625.00, 188244.03, 'pending'),
(758, 'S80434449', '2024-11-16', '2024-11-16', '2024-11-16 22:58:50', '', 'FT-MESPOS/REVRENGSTOCT24/EP049242', 80.82, 188324.85, 'pending'),
(759, 'S80706988', '2024-11-17', '2024-11-17', '2024-11-17 01:33:39', '', 'NEFT-N322243402959481-BHAVANI-NOV 2ND HALF 2024-00771140203921-HDFC0000001', 12500.00, 130824.85, 'pending'),
(760, 'S81168941', '2024-11-16', '2024-11-17', '2024-11-17 05:56:09', '', 'FT-MESPOS/REV/RENT/OCT24/EP049242', 449.00, 131273.85, 'pending'),
(761, 'S82245503', '2024-11-17', '2024-11-17', '2024-11-17 11:50:23', '', 'UPI/468868371912/UPI/abhishek.mn.iis/State Bank Of I/AXI9d6bd59c17604cc38fb77b7256a893e5', 11500.00, 142773.85, 'pending'),
(762, 'S82376192', '2024-11-17', '2024-11-17', '2024-11-17 11:51:17', '', 'UPI/432224940501/UPI/christinavprabh/State Bank Of I/ICI35f3b109a3ff4f1faa4ad5e7e46df700', 4500.00, 147273.85, 'pending'),
(763, 'S82765985', '2024-11-17', '2024-11-17', '2024-11-17 13:08:55', '', 'MMT/IMPS/432213127447/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 160773.85, 'pending'),
(764, 'S83168600', '2024-11-17', '2024-11-17', '2024-11-17 14:32:20', '', 'NEFT-AXOMB32275094653-SRIRUPA SEN--015010100536585-UTIB0004821', 12500.00, 173273.85, 'pending'),
(765, 'S85235775', '2024-11-17', '2024-11-17', '2024-11-17 22:24:09', '', 'UPI/468851867229/UPI/manjeetverma161/Punjab National/ICI5efb05c53bed458da215897ec3f0e360', 14000.00, 187273.85, 'pending'),
(766, 'S87711173', '2024-11-18', '2024-11-18', '2024-11-18 08:31:55', '', 'NEFT-N323243403464711-S RAMACHANDRA RAO-RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 200773.85, 'pending'),
(767, 'S88771127', '2024-11-18', '2024-11-18', '2024-11-18 11:15:35', '', 'UPI/432389681030/UPI/deepti12karumba/AXIS BANK/SBI92bfef8f88e84e789a204767dd6dcbfe', 10500.00, 211273.85, 'pending'),
(768, 'S89241742', '2024-11-18', '2024-11-18', '2024-11-18 11:34:01', '', 'UPI/432390842965/UPI/cynthiajimmy@ok/State Bank Of I/SBIfd2ba295b1274ff693d7cf37b8b76cad', 1800.00, 213073.85, 'pending'),
(769, 'S90372247', '2024-11-18', '2024-11-18', '2024-11-18 12:56:27', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/432376654391/HDF5b4e61c28b38492382435bf9c57bb647', 13500.00, 226573.85, 'pending'),
(770, 'S90839934', '2024-11-18', '2024-11-18', '2024-11-18 13:16:39', '', 'NEFT-N323243403899686-IGNOXLABS PVT LTD OP1-NEFT  EMHB002 BANGLORE 5020003209-50200032099971-HDFC', 12495.00, 239068.85, 'pending'),
(771, 'S90839937', '2024-11-18', '2024-11-18', '2024-11-18 13:16:40', '', 'NEFT-N323243403899682-IGNOXLABS PVT LTD OP1-NEFT  EMHB0002 BANGLORE 502000320-50200032099971-HDFC', 13230.00, 252298.85, 'pending'),
(772, 'S91887312', '2024-11-18', '2024-11-18', '2024-11-18 14:57:08', '', 'BIL/INFT/DKM2588188/16thto30thNovem/ RENU KALAGNANAM', 33000.00, 285298.85, 'pending'),
(773, 'S92243655', '2024-11-18', '2024-11-18', '2024-11-18 15:23:14', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5431', 12000.00, 297298.85, 'pending'),
(774, 'S92263663', '2024-11-18', '2024-11-18', '2024-11-18 15:24:49', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5433', 1500.00, 298798.85, 'pending'),
(775, 'S93418829', '2024-11-18', '2024-11-18', '2024-11-18 16:45:10', '', 'MMT/IMPS/432316117723/Ali Helper/SANJEEV SH/HDFC Bank', 3600.00, 22398.85, 'pending'),
(776, 'S94929916', '2024-11-18', '2024-11-18', '2024-11-18 19:02:59', '', 'INF/INFT/038329979601/AARUSH CONSTRUC', 100000.00, 122398.85, 'pending'),
(777, 'S95293560', '2024-11-18', '2024-11-18', '2024-11-18 19:39:18', '', 'MMT/IMPS/432319525371/Nov30/VIDYASRIVA/Axis Bank', 23625.00, 146023.85, 'pending'),
(778, 'S95317245', '2024-11-18', '2024-11-18', '2024-11-18 19:42:56', '', 'MMT/IMPS/432319545404/Nov30/VLAKSHMIAM/Axis Bank', 12600.00, 158623.85, 'pending'),
(779, 'S96680226', '2024-11-19', '2024-11-19', '2024-11-19 00:49:50', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/432407404179/HDF13aa8b0039b44fe7bb85fc842f476ea5', 12500.00, 171123.85, 'pending'),
(780, 'S98613032', '2024-11-19', '2024-11-19', '2024-11-19 09:47:13', '', 'INF/INFT/038332871671/44855766     /EZEE MEDFIND LLP    /', 1300.00, 172423.85, 'pending'),
(781, 'S99309776', '2024-11-19', '2024-11-19', '2024-11-19 11:23:38', '', 'UPI/469065238185/salary 16 to 30/pallavisinhamis/ICICI Bank/ICI2ad8b12a9fff4a2994199b9f7e18fcaf', 15000.00, 187423.85, 'pending'),
(782, 'S11434339', '2024-11-20', '2024-11-20', '2024-11-20 17:26:20', '', 'CMS/ CMS4662594714/SUKINO HEALTHCARE SOLUTIONS PR', 27291.00, 154714.85, 'pending'),
(783, 'S16777086', '2024-11-21', '2024-11-21', '2024-11-21 11:04:28', '', 'UPI/432626433487/UPI/sandhyanair199@/ICICI Bank/ICI3155b308a5ce40d0afe24aed6f7bd000', 12000.00, 166714.85, 'pending'),
(784, 'S19082966', '2024-11-21', '2024-11-21', '2024-11-21 14:05:30', '', 'NEFT-AXISCN0823448800-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 159954.45, 'pending'),
(785, 'S25554007', '2024-11-22', '2024-11-22', '2024-11-22 07:37:39', '', 'UPI/432780870440/caretaker/rkpatil1@oksbi/State Bank Of I/SBI9a9f4cb52eaf4d1a8d68b1547d5b177c', 15000.00, 129454.45, 'pending'),
(786, 'S27420133', '2024-11-22', '2024-11-22', '2024-11-22 12:38:03', '', 'UPI/432796300568/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI777c692ff028408bafb59a5402522716', 12600.00, 133392.45, 'pending'),
(787, 'S39453747', '2024-11-24', '2024-11-24', '2024-11-24 10:20:15', '', 'CMS/ CMS4669666771/SUKINO HEALTHCARE SOLUTIONS PR', 4704.00, 120096.45, 'pending'),
(788, 'S52285457', '2024-11-25', '2024-11-25', '2024-11-25 20:33:27', '', 'NEFT-CMS3302466086620-HEALTHVISTA INDIA PRIVATE LIMITE-PAYMENT-6447052626-KKBK0000958', 33997.00, 154093.45, 'pending'),
(789, 'S56045368', '2024-11-26', '2024-11-26', '2024-11-26 10:15:07', '', 'UPI/433122951714/UPI/yusufshahpurwal/HDFC BANK LTD/HDF8368d24241df4227ac6b70eb0d6956d2', 13500.00, 167593.45, 'pending'),
(790, 'M3735849', '2024-11-26', '2024-11-26', '2024-11-26 19:15:41', '', 'TRF/MADAN/055778/ICI/23.11.2024', 25000.00, 192593.45, 'pending'),
(791, 'S91139662', '2024-11-29', '2024-11-29', '2024-11-29 16:55:23', '', 'UPI/433474709893/UPI/kanchanaseshadr/HDFC BANK LTD/HDF387ad8fb3d1646edb7624e068c7376c0', 29295.00, 152888.45, 'pending'),
(792, 'S97922697', '2024-11-30', '2024-11-30', '2024-11-30 11:24:55', '', 'MMT/IMPS/433511351600/Dec2024 Surende/RAJESH DES/HDFC Bank', 27900.00, 180788.45, 'pending'),
(793, 'S5509059', '2024-12-01', '2024-12-01', '2024-12-01 00:08:53', '', 'UPI/470234442140/UPI/nuqranaqvi@okic/ICICI Bank/ICI0e23a5d0c0144ff0a6474e25b7ecfdcc', 14000.00, 194788.45, 'pending'),
(794, 'S6697751', '2024-12-01', '2024-12-01', '2024-12-01 07:00:00', '', 'BIL/INFT/DL15102214/December first / DHANYA ROS MATH', 14000.00, 208788.45, 'pending'),
(795, 'S6792085', '2024-12-01', '2024-12-01', '2024-12-01 07:31:19', '', 'MMT/IMPS/433607157093/Dec15/VLAKSHMIAM/Axis Bank', 12600.00, 221388.45, 'pending'),
(796, 'S9474255', '2024-12-01', '2024-12-01', '2024-12-01 13:41:23', '', 'BIL/INFT/DL15241533/MI Khan Elder c/ SYED ABDUL MUSS', 12750.00, 234138.45, 'pending'),
(797, 'S13105703', '2024-12-02', '2024-12-02', '2024-12-02 02:01:42', '', 'NEFT-N337243426973380-ANVAYAA KIN CARE PVT LTD-NEFT    AAYUSH HHC 50200019583158-50200019583158-HDF', 23760.00, 113397.45, 'pending'),
(798, 'S14175281', '2024-12-02', '2024-12-02', '2024-12-02 06:48:49', '', 'MMT/IMPS/433706505623/Dec15/VIDYASRIVA/Axis Bank', 23625.00, 137022.45, 'pending'),
(799, 'S15760326', '2024-12-02', '2024-12-02', '2024-12-02 09:30:09', '', 'UPI/470342152061/18th to 30th No/christinavprabh/State Bank Of I/AXI8ddd925c99944297a2a6ae1dc7488d41', 11700.00, 148722.45, 'pending'),
(800, 'S16532005', '2024-12-02', '2024-12-02', '2024-12-02 10:39:10', '', 'MMT/IMPS/433710570676/Bill Payment/MANGALA KO/State Bank of I', 9000.00, 157722.45, 'pending'),
(801, 'S24806421', '2024-12-02', '2024-12-02', '2024-12-02 20:43:18', '', 'MMT/IMPS/433720032204/IMPS/SRIRUPASEN/Axis Bank', 12500.00, 170222.45, 'pending'),
(802, 'S25433966', '2024-12-02', '2024-12-02', '2024-12-02 21:50:11', '', 'UPI/470374003846/UPI/obi2005-3@okaxi/AXIS BANK/AXI59ad74bbe25842bfb6fdf0e70b52d58a', 13500.00, 183722.45, 'pending'),
(803, 'S25735864', '2024-12-02', '2024-12-02', '2024-12-02 22:36:44', '', 'UPI/9901537347@axl/Payment from Ph/Union Bank of I/132883836942/AXL7cbc4b44082e4ffd9fb3251fac112042', 12500.00, 196222.45, 'pending'),
(804, 'S33545228', '2024-12-03', '2024-12-03', '2024-12-03 16:21:54', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/433866408881/HDFdd60b004d4df4e61abcc9c448f27fdd6', 13500.00, 209663.45, 'pending'),
(805, 'S35992827', '2024-12-03', '2024-12-03', '2024-12-03 19:27:26', '', 'BIL/INFT/DL36083050/NA/ UMA SATYEN VYAS', 34000.00, 83663.45, 'pending'),
(806, 'S36090241', '2024-12-03', '2024-12-03', '2024-12-03 19:41:30', '', 'UPI/433879338733/UPI/jayastev-yahoo./INDIAN OVERSEAS/HDF2012fc9348c24b8ab630f52a0a0db419', 29250.00, 112913.45, 'pending'),
(807, 'S36174722', '2024-12-03', '2024-12-03', '2024-12-03 20:01:16', '', 'UPI/470406596078/Attendant for M/madhavi.krishna/Union Bank of I/ICIc2f1bdf31a5f4bfa9f2d5800d5bc0961', 13500.00, 126413.45, 'pending'),
(808, 'S36251939', '2024-12-03', '2024-12-03', '2024-12-03 20:12:19', '', 'UPI/433825525338/UPI Payment/9884018900@icic/ICICI Bank/ICI4550286beaf44a0883cb57b872dedf93', 13500.00, 139913.45, 'pending'),
(809, 'S36352356', '2024-12-03', '2024-12-03', '2024-12-03 20:13:42', '', 'UPI/anuragverma150-/UPI/AXIS BANK/433855186194/AXI1c25ec598b594f1186e3445477748c06', 13500.00, 153413.45, 'pending'),
(810, 'S36938342', '2024-12-03', '2024-12-03', '2024-12-03 21:28:23', '', 'UPI/433891688658/Nursing/9845894222@supe/AXIS BANK/SMY241203212868WFXIGOHBUCVIF9W6FMCM', 13500.00, 166913.45, 'pending'),
(811, 'S37109923', '2024-12-03', '2024-12-03', '2024-12-03 21:52:25', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/433886984451/HDF4ee2107685ba4711b450b71ff494d8b1', 1666.00, 168579.45, 'pending'),
(812, 'S37238536', '2024-12-03', '2024-12-03', '2024-12-03 22:04:48', '', 'MMT/IMPS/433822923147/Bill Payment/RAVI RAJ S/State Bank of I', 11625.00, 180204.45, 'pending'),
(813, 'S37307199', '2024-12-03', '2024-12-03', '2024-12-03 22:16:54', '', 'INF/INFT/038483986991/salary         /ARCHANA DIWAN', 13500.00, 193704.45, 'pending'),
(814, 'S37708683', '2024-12-03', '2024-12-03', '2024-12-03 23:40:59', '', 'BIL/INFT/DL36143237/Quick Pay FT/Phuli Debnath/029805005633SOWMYA RANGARAJ', 24334.00, 218038.45, 'pending'),
(815, 'S39375165', '2024-12-04', '2024-12-04', '2024-12-04 08:31:45', '', 'NEFT-SVCB024339842606-R JAYALAKSHMI-R JAYALAKSHMI1ST HALF DEC 2024-109803130005618-SVCB0000098', 13500.00, 231538.45, 'pending'),
(816, 'M3270273', '2024-12-04', '2024-12-04', '2024-12-04 11:12:48', '', 'BY CASH  - HRBR LAYOUT', 27000.00, 149176.30, 'pending'),
(817, 'M3331984', '2024-12-04', '2024-12-04', '2024-12-04 12:13:40', '', 'BY CASH -BANGALORE - ULSOOR C', 13500.00, 162676.30, 'pending'),
(818, 'S46403214', '2024-12-04', '2024-12-04', '2024-12-04 18:49:09', '', 'MMT/IMPS/433918467778/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 176176.30, 'pending'),
(819, 'S46699194', '2024-12-04', '2024-12-04', '2024-12-04 19:16:59', '', 'MMT/IMPS/433919546974/ReqPay/Mr  NAGARA/State Bank of I', 25500.00, 201676.30, 'pending'),
(820, 'S47489464', '2024-12-04', '2024-12-04', '2024-12-04 21:20:21', '', 'UPI/433941916665/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI862f7d0ca92048c08364fe7a488ebe13', 13500.00, 215176.30, 'pending'),
(821, 'S47772488', '2024-12-04', '2024-12-04', '2024-12-04 21:30:45', '', 'MMT/IMPS/433921101469/Ali Payment/SANJEEV SH/HDFCBank', 9000.00, 224176.30, 'pending'),
(822, 'S47683170', '2024-12-04', '2024-12-04', '2024-12-04 21:45:31', '', 'UPI/470515560753/UPI/abhishek.mn.iis/State Bank Of I/AXI201a8433bdeb4c61a56be3cce362b366', 11500.00, 235676.30, 'pending'),
(823, 'S48813346', '2024-12-05', '2024-12-05', '2024-12-05 02:02:00', '', 'NEFT-N340243434553900-IGNOXLABS PVT LTD OP1-NEFT  EMHB042 BANGLORE DC 5020003-50200032099971-HDFC', 7056.00, 242732.30, 'pending'),
(824, 'S48812502', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434591254-IGNOXLABS PVT LTD OP1-NEFT  EMHB038 BANGLORE DC 5020003-50200032099971-HDFC', 4165.00, 246897.30, 'pending'),
(825, 'S48814152', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434581711-IGNOXLABS PVT LTD OP1-NEFT  EMHB037 BANGLORE DC 5020003-50200032099971-HDFC', 13230.00, 260127.30, 'pending'),
(826, 'S52143733', '2024-12-05', '2024-12-05', '2024-12-05 08:36:12', '', 'NEFT-N340243434762983-S RAMACHANDRA RAO-S RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 123231.30, 'pending'),
(827, 'C44882503', '2024-12-05', '2024-12-05', '2024-12-05 12:55:11', '', 'UPI/434063396426/UPI/deepti12karumba/AXIS BANK/SBIe15a2b9ff7474b85a1617f351d781d06', 13500.00, 136731.30, 'pending');
INSERT INTO `deposits` (`id`, `tran_id`, `value_date`, `transaction_date`, `transaction_posted_date`, `cheque_no_ref_no`, `transaction_remarks`, `deposit_amt`, `balance`, `status`) VALUES
(828, 'C52475339', '2024-12-05', '2024-12-05', '2024-12-05 16:24:05', '', 'NEFT-YESIG43400064650-INDIA HOME HEALTH CARE P L OPERATIO-512202424 71193-002281400004518-YESB00000', 18900.00, 155631.30, 'pending'),
(829, 'S56599551', '2024-12-05', '2024-12-05', '2024-12-05 16:49:54', '', 'NEFT-AXISCN0840109369-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 193710.90, 'pending'),
(830, 'S57986128', '2024-12-05', '2024-12-05', '2024-12-05 18:15:42', '', 'BIL/INFT/DL56694654/1stto15thDecnur/ RENU KALAGNANAM', 33000.00, 226710.90, 'pending'),
(831, 'S59404764', '2024-12-05', '2024-12-05', '2024-12-05 20:05:35', '', 'NEFT-N340243437019556-BHAVANI-DEC 1ST HALF-00771140203921-HDFC0000001', 13500.00, 155285.90, 'pending'),
(832, 'S59643664', '2024-12-05', '2024-12-05', '2024-12-05 20:36:31', '', 'UPI/470676510520/Dec 1 to 15 sal/pallavisinhamis/ICICI Bank/ICId68808e5b13e4f47915d8fbfbbe55110', 15000.00, 170285.90, 'pending'),
(833, 'S59886897', '2024-12-05', '2024-12-05', '2024-12-05 21:17:35', '', 'UPI/434060983170/Sent from Paytm/9739988071@ptsb/ICICI Bank/PTMD01B1F12564E4D2194C911C9BF3F5412', 12000.00, 182285.90, 'pending'),
(834, 'S63308333', '2024-12-06', '2024-12-06', '2024-12-06 10:32:21', '', 'UPI/434116747526/caretaker/rkpatil1@oksbi/State Bank Of I/SBIdc0d6069d5664745acfbfeb9902cee3c', 15000.00, 197285.90, 'pending'),
(835, 'S63719860', '2024-12-06', '2024-12-06', '2024-12-06 11:06:29', '', 'NEFT-N341243437655074-APARAJITA SAHA-15DAYS ADVANCE-50100177601573-HDFC0000001', 15000.00, 212285.90, 'pending'),
(836, 'S70837017', '2024-12-06', '2024-12-06', '2024-12-06 22:05:55', '', 'NEFT-SBIN224341243398-MRS MOHUA MUKHERJEE-/ATTN//INB-00000036831395463-SBIN0009042', 22400.00, 234650.50, 'pending'),
(837, 'S75317231', '2024-12-07', '2024-12-07', '2024-12-07 12:39:06', '', 'NEFT-N342243440819027-ANURAG SRIVASTAVA-ALOK SRIVASTAVA-00441060006038-HDFC0000001', 27900.00, 262550.50, 'pending'),
(838, 'S89117605', '2024-12-09', '2024-12-09', '2024-12-09 08:15:43', '', 'FT-MESPOS SET 10XX080827 091224', 205133.68, 237684.18, 'pending'),
(839, 'S93026350', '2024-12-09', '2024-12-09', '2024-12-09 15:03:23', '', 'NEFT-KKBKH24344647334-NHK MEDICAL PRIVATE LIMITED-PAYMENT-9739841619-KKBK0000958', 72045.00, 309729.18, 'pending'),
(840, 'S97140070', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 315372.18, 'pending'),
(841, 'S49409907', '2024-11-13', '2024-11-13', '2024-11-13 12:37:51', '', 'NEFT-P318240375189734-ASHA D NAYAK--0125101001157-CNRB0000125', 21000.00, 34434.03, 'Matched'),
(842, 'S49409907', '2024-11-13', '2024-11-13', '2024-11-13 12:37:51', '', 'NEFT-P318240375189734-ASHA D NAYAK--0125101001157-CNRB0000125', 21000.00, 34434.03, 'Matched'),
(843, 'S58792440', '2024-11-14', '2024-11-14', '2024-11-14 12:43:08', '', 'BIL/INFT/DKI1914610/Nov set2/ DHANYA ROS MATH', 14000.00, 28434.03, 'Matched'),
(844, 'S58792440', '2024-11-14', '2024-11-14', '2024-11-14 12:43:08', '', 'BIL/INFT/DKI1914610/Nov set2/ DHANYA ROS MATH', 14000.00, 28434.03, 'Matched'),
(845, 'S59919983', '2024-11-14', '2024-11-14', '2024-11-14 14:32:49', '', 'UPI/431966588105/Attendant for M/madhavi.krishna/Union Bank of I/ICI889e75bae7454070adb31dcd5a39d20c', 13500.00, 41934.03, 'pending'),
(846, 'S59919983', '2024-11-14', '2024-11-14', '2024-11-14 14:32:49', '', 'UPI/431966588105/Attendant for M/madhavi.krishna/Union Bank of I/ICI889e75bae7454070adb31dcd5a39d20c', 13500.00, 41934.03, 'pending'),
(847, 'S68642897', '2024-11-15', '2024-11-15', '2024-11-15 13:31:20', '', 'INF/INFT/038300045131/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 20958.00, 62892.03, 'pending'),
(848, 'S68642897', '2024-11-15', '2024-11-15', '2024-11-15 13:31:20', '', 'INF/INFT/038300045131/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 20958.00, 62892.03, 'pending'),
(849, 'S68647127', '2024-11-15', '2024-11-15', '2024-11-15 13:31:54', '', 'INF/INFT/038300053381/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 6395.00, 69287.03, 'pending'),
(850, 'S68647127', '2024-11-15', '2024-11-15', '2024-11-15 13:31:54', '', 'INF/INFT/038300053381/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 6395.00, 69287.03, 'pending'),
(851, 'S68648725', '2024-11-15', '2024-11-15', '2024-11-15 13:32:04', '', 'INF/INFT/038300056191/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 19050.00, 88337.03, 'Matched'),
(852, 'S68648725', '2024-11-15', '2024-11-15', '2024-11-15 13:32:04', '', 'INF/INFT/038300056191/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 19050.00, 88337.03, 'Matched'),
(853, 'S68932545', '2024-11-15', '2024-11-15', '2024-11-15 14:12:53', '', 'INF/INFT/038300516371/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 29057.03, 'pending'),
(854, 'S68932545', '2024-11-15', '2024-11-15', '2024-11-15 14:12:53', '', 'INF/INFT/038300516371/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 29057.03, 'pending'),
(855, 'S68933364', '2024-11-15', '2024-11-15', '2024-11-15 14:13:04', '', 'INF/INFT/038300519091/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 49777.03, 'pending'),
(856, 'S68933364', '2024-11-15', '2024-11-15', '2024-11-15 14:13:04', '', 'INF/INFT/038300519091/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 49777.03, 'pending'),
(857, 'S68933971', '2024-11-15', '2024-11-15', '2024-11-15 14:13:14', '', 'INF/INFT/038300521141/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 16808.00, 66585.03, 'pending'),
(858, 'S68933971', '2024-11-15', '2024-11-15', '2024-11-15 14:13:14', '', 'INF/INFT/038300521141/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 16808.00, 66585.03, 'pending'),
(859, 'S68935004', '2024-11-15', '2024-11-15', '2024-11-15 14:13:22', '', 'INF/INFT/038300522641/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 1334.00, 67919.03, 'pending'),
(860, 'S68935004', '2024-11-15', '2024-11-15', '2024-11-15 14:13:22', '', 'INF/INFT/038300522641/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 1334.00, 67919.03, 'pending'),
(861, 'S70395084', '2024-11-15', '2024-11-15', '2024-11-15 17:50:01', '', 'UPI/432055761180/UPI/cynthiajimmy@ok/State Bank Of I/SBI701ec21a073747329af8e0101fae926d', 13500.00, 81419.03, 'pending'),
(862, 'S70395084', '2024-11-15', '2024-11-15', '2024-11-15 17:50:01', '', 'UPI/432055761180/UPI/cynthiajimmy@ok/State Bank Of I/SBI701ec21a073747329af8e0101fae926d', 13500.00, 81419.03, 'pending'),
(863, 'S73697621', '2024-11-16', '2024-11-16', '2024-11-16 08:07:42', '', 'MMT/IMPS/432108828325/null/MANGALA KO/State Bank of I', 13500.00, 94919.03, 'pending'),
(864, 'S73697621', '2024-11-16', '2024-11-16', '2024-11-16 08:07:42', '', 'MMT/IMPS/432108828325/null/MANGALA KO/State Bank of I', 13500.00, 94919.03, 'pending'),
(865, 'S73942259', '2024-11-16', '2024-11-16', '2024-11-16 09:38:08', '', 'UPI/9901537347@ibl/Payment from Ph/Union Bank of I/356324008385/IBLa4fc535fb1d94fadaad705770e50cad6', 12500.00, 107419.03, 'pending'),
(866, 'S73942259', '2024-11-16', '2024-11-16', '2024-11-16 09:38:08', '', 'UPI/9901537347@ibl/Payment from Ph/Union Bank of I/356324008385/IBLa4fc535fb1d94fadaad705770e50cad6', 12500.00, 107419.03, 'pending'),
(867, 'S74013974', '2024-11-16', '2024-11-16', '2024-11-16 09:41:31', '', 'UPI/468737652217/Paid via SuperM/8197129933@supe/ICICI Bank/SMY2411160941ROO2MQXIFRWV32PTV3541C', 14000.00, 121419.03, 'pending'),
(868, 'S74013974', '2024-11-16', '2024-11-16', '2024-11-16 09:41:31', '', 'UPI/468737652217/Paid via SuperM/8197129933@supe/ICICI Bank/SMY2411160941ROO2MQXIFRWV32PTV3541C', 14000.00, 121419.03, 'pending'),
(869, 'S75485220', '2024-11-16', '2024-11-16', '2024-11-16 12:28:56', '', 'BIL/INFT/DKK2266161/MI Khan elder c/ SYED ABDUL MUSS', 12750.00, 134169.03, 'pending'),
(870, 'S75485220', '2024-11-16', '2024-11-16', '2024-11-16 12:28:56', '', 'BIL/INFT/DKK2266161/MI Khan elder c/ SYED ABDUL MUSS', 12750.00, 134169.03, 'pending'),
(871, 'S78020341', '2024-11-16', '2024-11-16', '2024-11-16 16:57:51', '', 'BIL/INFT/DKK2315964/NA/ UMA SATYEN VYAS', 15750.00, 109119.03, 'pending'),
(872, 'S78020341', '2024-11-16', '2024-11-16', '2024-11-16 16:57:51', '', 'BIL/INFT/DKK2315964/NA/ UMA SATYEN VYAS', 15750.00, 109119.03, 'pending'),
(873, 'S78018687', '2024-11-16', '2024-11-16', '2024-11-16 17:21:31', '', 'UPI/468741241443/Nursing/9845894222@supe/AXIS BANK/SMY2411161721UF6GBEWTJL3IVF7PYJPT9L', 13500.00, 122619.03, 'pending'),
(874, 'S78018687', '2024-11-16', '2024-11-16', '2024-11-16 17:21:31', '', 'UPI/468741241443/Nursing/9845894222@supe/AXIS BANK/SMY2411161721UF6GBEWTJL3IVF7PYJPT9L', 13500.00, 122619.03, 'pending'),
(875, 'S78368102', '2024-11-16', '2024-11-16', '2024-11-16 17:55:24', '', 'UPI/anuragverma150-/UPI/AXIS BANK/468795146377/AXI1df955ccb4e04383ba4440cf8eb55d5a', 13500.00, 136119.03, 'pending'),
(876, 'S78368102', '2024-11-16', '2024-11-16', '2024-11-16 17:55:24', '', 'UPI/anuragverma150-/UPI/AXIS BANK/468795146377/AXI1df955ccb4e04383ba4440cf8eb55d5a', 13500.00, 136119.03, 'pending'),
(877, 'S78800076', '2024-11-16', '2024-11-16', '2024-11-16 18:35:35', '', 'UPI/432162245191/UPI/obi2005-3@okaxi/AXIS BANK/AXI305b2e70add74000aa4a3ef0a37dabe4', 13500.00, 149619.03, 'pending'),
(878, 'S78800076', '2024-11-16', '2024-11-16', '2024-11-16 18:35:35', '', 'UPI/432162245191/UPI/obi2005-3@okaxi/AXIS BANK/AXI305b2e70add74000aa4a3ef0a37dabe4', 13500.00, 149619.03, 'pending'),
(879, 'S78905669', '2024-11-16', '2024-11-16', '2024-11-16 18:39:44', '', 'INF/INFT/038315025331/Salary         /ARCHANA DIWAN', 13500.00, 163119.03, 'pending'),
(880, 'S78905669', '2024-11-16', '2024-11-16', '2024-11-16 18:39:44', '', 'INF/INFT/038315025331/Salary         /ARCHANA DIWAN', 13500.00, 163119.03, 'pending'),
(881, 'S79748941', '2024-11-16', '2024-11-16', '2024-11-16 20:34:24', '', 'NEFT-SVCB024321302874-R JAYALAKSHMI-R JAYALAKSHMI 2ND HALF OF NOV 2024-109803130005618-SVCB0000098', 13500.00, 176619.03, 'pending'),
(882, 'S79748941', '2024-11-16', '2024-11-16', '2024-11-16 20:34:24', '', 'NEFT-SVCB024321302874-R JAYALAKSHMI-R JAYALAKSHMI 2ND HALF OF NOV 2024-109803130005618-SVCB0000098', 13500.00, 176619.03, 'pending'),
(883, 'S80121355', '2024-11-16', '2024-11-16', '2024-11-16 21:40:43', '', 'MMT/IMPS/432121759197/null/RAVI RAJ S/State Bank of I', 11625.00, 188244.03, 'pending'),
(884, 'S80121355', '2024-11-16', '2024-11-16', '2024-11-16 21:40:43', '', 'MMT/IMPS/432121759197/null/RAVI RAJ S/State Bank of I', 11625.00, 188244.03, 'pending'),
(885, 'S80434449', '2024-11-16', '2024-11-16', '2024-11-16 22:58:50', '', 'FT-MESPOS/REVRENGSTOCT24/EP049242', 80.82, 188324.85, 'pending'),
(886, 'S80434449', '2024-11-16', '2024-11-16', '2024-11-16 22:58:50', '', 'FT-MESPOS/REVRENGSTOCT24/EP049242', 80.82, 188324.85, 'pending'),
(887, 'S80706988', '2024-11-17', '2024-11-17', '2024-11-17 01:33:39', '', 'NEFT-N322243402959481-BHAVANI-NOV 2ND HALF 2024-00771140203921-HDFC0000001', 12500.00, 130824.85, 'pending'),
(888, 'S80706988', '2024-11-17', '2024-11-17', '2024-11-17 01:33:39', '', 'NEFT-N322243402959481-BHAVANI-NOV 2ND HALF 2024-00771140203921-HDFC0000001', 12500.00, 130824.85, 'pending'),
(889, 'S81168941', '2024-11-16', '2024-11-17', '2024-11-17 05:56:09', '', 'FT-MESPOS/REV/RENT/OCT24/EP049242', 449.00, 131273.85, 'pending'),
(890, 'S81168941', '2024-11-16', '2024-11-17', '2024-11-17 05:56:09', '', 'FT-MESPOS/REV/RENT/OCT24/EP049242', 449.00, 131273.85, 'pending'),
(891, 'S82245503', '2024-11-17', '2024-11-17', '2024-11-17 11:50:23', '', 'UPI/468868371912/UPI/abhishek.mn.iis/State Bank Of I/AXI9d6bd59c17604cc38fb77b7256a893e5', 11500.00, 142773.85, 'pending'),
(892, 'S82245503', '2024-11-17', '2024-11-17', '2024-11-17 11:50:23', '', 'UPI/468868371912/UPI/abhishek.mn.iis/State Bank Of I/AXI9d6bd59c17604cc38fb77b7256a893e5', 11500.00, 142773.85, 'pending'),
(893, 'S82376192', '2024-11-17', '2024-11-17', '2024-11-17 11:51:17', '', 'UPI/432224940501/UPI/christinavprabh/State Bank Of I/ICI35f3b109a3ff4f1faa4ad5e7e46df700', 4500.00, 147273.85, 'pending'),
(894, 'S82376192', '2024-11-17', '2024-11-17', '2024-11-17 11:51:17', '', 'UPI/432224940501/UPI/christinavprabh/State Bank Of I/ICI35f3b109a3ff4f1faa4ad5e7e46df700', 4500.00, 147273.85, 'pending'),
(895, 'S82765985', '2024-11-17', '2024-11-17', '2024-11-17 13:08:55', '', 'MMT/IMPS/432213127447/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 160773.85, 'pending'),
(896, 'S82765985', '2024-11-17', '2024-11-17', '2024-11-17 13:08:55', '', 'MMT/IMPS/432213127447/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 160773.85, 'pending'),
(897, 'S83168600', '2024-11-17', '2024-11-17', '2024-11-17 14:32:20', '', 'NEFT-AXOMB32275094653-SRIRUPA SEN--015010100536585-UTIB0004821', 12500.00, 173273.85, 'pending'),
(898, 'S83168600', '2024-11-17', '2024-11-17', '2024-11-17 14:32:20', '', 'NEFT-AXOMB32275094653-SRIRUPA SEN--015010100536585-UTIB0004821', 12500.00, 173273.85, 'pending'),
(899, 'S85235775', '2024-11-17', '2024-11-17', '2024-11-17 22:24:09', '', 'UPI/468851867229/UPI/manjeetverma161/Punjab National/ICI5efb05c53bed458da215897ec3f0e360', 14000.00, 187273.85, 'pending'),
(900, 'S85235775', '2024-11-17', '2024-11-17', '2024-11-17 22:24:09', '', 'UPI/468851867229/UPI/manjeetverma161/Punjab National/ICI5efb05c53bed458da215897ec3f0e360', 14000.00, 187273.85, 'pending'),
(901, 'S87711173', '2024-11-18', '2024-11-18', '2024-11-18 08:31:55', '', 'NEFT-N323243403464711-S RAMACHANDRA RAO-RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 200773.85, 'pending'),
(902, 'S87711173', '2024-11-18', '2024-11-18', '2024-11-18 08:31:55', '', 'NEFT-N323243403464711-S RAMACHANDRA RAO-RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 200773.85, 'pending'),
(903, 'S88771127', '2024-11-18', '2024-11-18', '2024-11-18 11:15:35', '', 'UPI/432389681030/UPI/deepti12karumba/AXIS BANK/SBI92bfef8f88e84e789a204767dd6dcbfe', 10500.00, 211273.85, 'pending'),
(904, 'S88771127', '2024-11-18', '2024-11-18', '2024-11-18 11:15:35', '', 'UPI/432389681030/UPI/deepti12karumba/AXIS BANK/SBI92bfef8f88e84e789a204767dd6dcbfe', 10500.00, 211273.85, 'pending'),
(905, 'S89241742', '2024-11-18', '2024-11-18', '2024-11-18 11:34:01', '', 'UPI/432390842965/UPI/cynthiajimmy@ok/State Bank Of I/SBIfd2ba295b1274ff693d7cf37b8b76cad', 1800.00, 213073.85, 'pending'),
(906, 'S89241742', '2024-11-18', '2024-11-18', '2024-11-18 11:34:01', '', 'UPI/432390842965/UPI/cynthiajimmy@ok/State Bank Of I/SBIfd2ba295b1274ff693d7cf37b8b76cad', 1800.00, 213073.85, 'pending'),
(907, 'S90372247', '2024-11-18', '2024-11-18', '2024-11-18 12:56:27', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/432376654391/HDF5b4e61c28b38492382435bf9c57bb647', 13500.00, 226573.85, 'pending'),
(908, 'S90372247', '2024-11-18', '2024-11-18', '2024-11-18 12:56:27', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/432376654391/HDF5b4e61c28b38492382435bf9c57bb647', 13500.00, 226573.85, 'pending'),
(909, 'S90839934', '2024-11-18', '2024-11-18', '2024-11-18 13:16:39', '', 'NEFT-N323243403899686-IGNOXLABS PVT LTD OP1-NEFT  EMHB002 BANGLORE 5020003209-50200032099971-HDFC', 12495.00, 239068.85, 'pending'),
(910, 'S90839934', '2024-11-18', '2024-11-18', '2024-11-18 13:16:39', '', 'NEFT-N323243403899686-IGNOXLABS PVT LTD OP1-NEFT  EMHB002 BANGLORE 5020003209-50200032099971-HDFC', 12495.00, 239068.85, 'pending'),
(911, 'S90839937', '2024-11-18', '2024-11-18', '2024-11-18 13:16:40', '', 'NEFT-N323243403899682-IGNOXLABS PVT LTD OP1-NEFT  EMHB0002 BANGLORE 502000320-50200032099971-HDFC', 13230.00, 252298.85, 'pending'),
(912, 'S90839937', '2024-11-18', '2024-11-18', '2024-11-18 13:16:40', '', 'NEFT-N323243403899682-IGNOXLABS PVT LTD OP1-NEFT  EMHB0002 BANGLORE 502000320-50200032099971-HDFC', 13230.00, 252298.85, 'pending'),
(913, 'S91887312', '2024-11-18', '2024-11-18', '2024-11-18 14:57:08', '', 'BIL/INFT/DKM2588188/16thto30thNovem/ RENU KALAGNANAM', 33000.00, 285298.85, 'pending'),
(914, 'S91887312', '2024-11-18', '2024-11-18', '2024-11-18 14:57:08', '', 'BIL/INFT/DKM2588188/16thto30thNovem/ RENU KALAGNANAM', 33000.00, 285298.85, 'pending'),
(915, 'S92243655', '2024-11-18', '2024-11-18', '2024-11-18 15:23:14', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5431', 12000.00, 297298.85, 'pending'),
(916, 'S92243655', '2024-11-18', '2024-11-18', '2024-11-18 15:23:14', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5431', 12000.00, 297298.85, 'pending'),
(917, 'S92263663', '2024-11-18', '2024-11-18', '2024-11-18 15:24:49', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5433', 1500.00, 298798.85, 'pending'),
(918, 'S92263663', '2024-11-18', '2024-11-18', '2024-11-18 15:24:49', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5433', 1500.00, 298798.85, 'pending'),
(919, 'S93418829', '2024-11-18', '2024-11-18', '2024-11-18 16:45:10', '', 'MMT/IMPS/432316117723/Ali Helper/SANJEEV SH/HDFC Bank', 3600.00, 22398.85, 'pending'),
(920, 'S93418829', '2024-11-18', '2024-11-18', '2024-11-18 16:45:10', '', 'MMT/IMPS/432316117723/Ali Helper/SANJEEV SH/HDFC Bank', 3600.00, 22398.85, 'pending'),
(921, 'S94929916', '2024-11-18', '2024-11-18', '2024-11-18 19:02:59', '', 'INF/INFT/038329979601/AARUSH CONSTRUC', 100000.00, 122398.85, 'pending'),
(922, 'S94929916', '2024-11-18', '2024-11-18', '2024-11-18 19:02:59', '', 'INF/INFT/038329979601/AARUSH CONSTRUC', 100000.00, 122398.85, 'pending'),
(923, 'S95293560', '2024-11-18', '2024-11-18', '2024-11-18 19:39:18', '', 'MMT/IMPS/432319525371/Nov30/VIDYASRIVA/Axis Bank', 23625.00, 146023.85, 'pending'),
(924, 'S95293560', '2024-11-18', '2024-11-18', '2024-11-18 19:39:18', '', 'MMT/IMPS/432319525371/Nov30/VIDYASRIVA/Axis Bank', 23625.00, 146023.85, 'pending'),
(925, 'S95317245', '2024-11-18', '2024-11-18', '2024-11-18 19:42:56', '', 'MMT/IMPS/432319545404/Nov30/VLAKSHMIAM/Axis Bank', 12600.00, 158623.85, 'pending'),
(926, 'S95317245', '2024-11-18', '2024-11-18', '2024-11-18 19:42:56', '', 'MMT/IMPS/432319545404/Nov30/VLAKSHMIAM/Axis Bank', 12600.00, 158623.85, 'pending'),
(927, 'S96680226', '2024-11-19', '2024-11-19', '2024-11-19 00:49:50', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/432407404179/HDF13aa8b0039b44fe7bb85fc842f476ea5', 12500.00, 171123.85, 'pending'),
(928, 'S96680226', '2024-11-19', '2024-11-19', '2024-11-19 00:49:50', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/432407404179/HDF13aa8b0039b44fe7bb85fc842f476ea5', 12500.00, 171123.85, 'pending'),
(929, 'S98613032', '2024-11-19', '2024-11-19', '2024-11-19 09:47:13', '', 'INF/INFT/038332871671/44855766     /EZEE MEDFIND LLP    /', 1300.00, 172423.85, 'pending'),
(930, 'S98613032', '2024-11-19', '2024-11-19', '2024-11-19 09:47:13', '', 'INF/INFT/038332871671/44855766     /EZEE MEDFIND LLP    /', 1300.00, 172423.85, 'pending'),
(931, 'S99309776', '2024-11-19', '2024-11-19', '2024-11-19 11:23:38', '', 'UPI/469065238185/salary 16 to 30/pallavisinhamis/ICICI Bank/ICI2ad8b12a9fff4a2994199b9f7e18fcaf', 15000.00, 187423.85, 'pending'),
(932, 'S99309776', '2024-11-19', '2024-11-19', '2024-11-19 11:23:38', '', 'UPI/469065238185/salary 16 to 30/pallavisinhamis/ICICI Bank/ICI2ad8b12a9fff4a2994199b9f7e18fcaf', 15000.00, 187423.85, 'pending'),
(933, 'S11434339', '2024-11-20', '2024-11-20', '2024-11-20 17:26:20', '', 'CMS/ CMS4662594714/SUKINO HEALTHCARE SOLUTIONS PR', 27291.00, 154714.85, 'pending'),
(934, 'S11434339', '2024-11-20', '2024-11-20', '2024-11-20 17:26:20', '', 'CMS/ CMS4662594714/SUKINO HEALTHCARE SOLUTIONS PR', 27291.00, 154714.85, 'pending'),
(935, 'S16777086', '2024-11-21', '2024-11-21', '2024-11-21 11:04:28', '', 'UPI/432626433487/UPI/sandhyanair199@/ICICI Bank/ICI3155b308a5ce40d0afe24aed6f7bd000', 12000.00, 166714.85, 'pending'),
(936, 'S16777086', '2024-11-21', '2024-11-21', '2024-11-21 11:04:28', '', 'UPI/432626433487/UPI/sandhyanair199@/ICICI Bank/ICI3155b308a5ce40d0afe24aed6f7bd000', 12000.00, 166714.85, 'pending'),
(937, 'S19082966', '2024-11-21', '2024-11-21', '2024-11-21 14:05:30', '', 'NEFT-AXISCN0823448800-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 159954.45, 'pending'),
(938, 'S19082966', '2024-11-21', '2024-11-21', '2024-11-21 14:05:30', '', 'NEFT-AXISCN0823448800-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 159954.45, 'pending'),
(939, 'S25554007', '2024-11-22', '2024-11-22', '2024-11-22 07:37:39', '', 'UPI/432780870440/caretaker/rkpatil1@oksbi/State Bank Of I/SBI9a9f4cb52eaf4d1a8d68b1547d5b177c', 15000.00, 129454.45, 'pending'),
(940, 'S25554007', '2024-11-22', '2024-11-22', '2024-11-22 07:37:39', '', 'UPI/432780870440/caretaker/rkpatil1@oksbi/State Bank Of I/SBI9a9f4cb52eaf4d1a8d68b1547d5b177c', 15000.00, 129454.45, 'pending'),
(941, 'S27420133', '2024-11-22', '2024-11-22', '2024-11-22 12:38:03', '', 'UPI/432796300568/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI777c692ff028408bafb59a5402522716', 12600.00, 133392.45, 'pending'),
(942, 'S27420133', '2024-11-22', '2024-11-22', '2024-11-22 12:38:03', '', 'UPI/432796300568/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI777c692ff028408bafb59a5402522716', 12600.00, 133392.45, 'pending'),
(943, 'S39453747', '2024-11-24', '2024-11-24', '2024-11-24 10:20:15', '', 'CMS/ CMS4669666771/SUKINO HEALTHCARE SOLUTIONS PR', 4704.00, 120096.45, 'pending'),
(944, 'S39453747', '2024-11-24', '2024-11-24', '2024-11-24 10:20:15', '', 'CMS/ CMS4669666771/SUKINO HEALTHCARE SOLUTIONS PR', 4704.00, 120096.45, 'pending'),
(945, 'S52285457', '2024-11-25', '2024-11-25', '2024-11-25 20:33:27', '', 'NEFT-CMS3302466086620-HEALTHVISTA INDIA PRIVATE LIMITE-PAYMENT-6447052626-KKBK0000958', 33997.00, 154093.45, 'pending'),
(946, 'S52285457', '2024-11-25', '2024-11-25', '2024-11-25 20:33:27', '', 'NEFT-CMS3302466086620-HEALTHVISTA INDIA PRIVATE LIMITE-PAYMENT-6447052626-KKBK0000958', 33997.00, 154093.45, 'pending'),
(947, 'S56045368', '2024-11-26', '2024-11-26', '2024-11-26 10:15:07', '', 'UPI/433122951714/UPI/yusufshahpurwal/HDFC BANK LTD/HDF8368d24241df4227ac6b70eb0d6956d2', 13500.00, 167593.45, 'pending'),
(948, 'S56045368', '2024-11-26', '2024-11-26', '2024-11-26 10:15:07', '', 'UPI/433122951714/UPI/yusufshahpurwal/HDFC BANK LTD/HDF8368d24241df4227ac6b70eb0d6956d2', 13500.00, 167593.45, 'pending'),
(949, 'M3735849', '2024-11-26', '2024-11-26', '2024-11-26 19:15:41', '', 'TRF/MADAN/055778/ICI/23.11.2024', 25000.00, 192593.45, 'pending'),
(950, 'M3735849', '2024-11-26', '2024-11-26', '2024-11-26 19:15:41', '', 'TRF/MADAN/055778/ICI/23.11.2024', 25000.00, 192593.45, 'pending'),
(951, 'S91139662', '2024-11-29', '2024-11-29', '2024-11-29 16:55:23', '', 'UPI/433474709893/UPI/kanchanaseshadr/HDFC BANK LTD/HDF387ad8fb3d1646edb7624e068c7376c0', 29295.00, 152888.45, 'pending'),
(952, 'S91139662', '2024-11-29', '2024-11-29', '2024-11-29 16:55:23', '', 'UPI/433474709893/UPI/kanchanaseshadr/HDFC BANK LTD/HDF387ad8fb3d1646edb7624e068c7376c0', 29295.00, 152888.45, 'pending'),
(953, 'S97922697', '2024-11-30', '2024-11-30', '2024-11-30 11:24:55', '', 'MMT/IMPS/433511351600/Dec2024 Surende/RAJESH DES/HDFC Bank', 27900.00, 180788.45, 'pending'),
(954, 'S97922697', '2024-11-30', '2024-11-30', '2024-11-30 11:24:55', '', 'MMT/IMPS/433511351600/Dec2024 Surende/RAJESH DES/HDFC Bank', 27900.00, 180788.45, 'pending'),
(955, 'S5509059', '2024-12-01', '2024-12-01', '2024-12-01 00:08:53', '', 'UPI/470234442140/UPI/nuqranaqvi@okic/ICICI Bank/ICI0e23a5d0c0144ff0a6474e25b7ecfdcc', 14000.00, 194788.45, 'pending'),
(956, 'S5509059', '2024-12-01', '2024-12-01', '2024-12-01 00:08:53', '', 'UPI/470234442140/UPI/nuqranaqvi@okic/ICICI Bank/ICI0e23a5d0c0144ff0a6474e25b7ecfdcc', 14000.00, 194788.45, 'pending'),
(957, 'S6697751', '2024-12-01', '2024-12-01', '2024-12-01 07:00:00', '', 'BIL/INFT/DL15102214/December first / DHANYA ROS MATH', 14000.00, 208788.45, 'pending'),
(958, 'S6697751', '2024-12-01', '2024-12-01', '2024-12-01 07:00:00', '', 'BIL/INFT/DL15102214/December first / DHANYA ROS MATH', 14000.00, 208788.45, 'pending'),
(959, 'S6792085', '2024-12-01', '2024-12-01', '2024-12-01 07:31:19', '', 'MMT/IMPS/433607157093/Dec15/VLAKSHMIAM/Axis Bank', 12600.00, 221388.45, 'pending'),
(960, 'S6792085', '2024-12-01', '2024-12-01', '2024-12-01 07:31:19', '', 'MMT/IMPS/433607157093/Dec15/VLAKSHMIAM/Axis Bank', 12600.00, 221388.45, 'pending'),
(961, 'S9474255', '2024-12-01', '2024-12-01', '2024-12-01 13:41:23', '', 'BIL/INFT/DL15241533/MI Khan Elder c/ SYED ABDUL MUSS', 12750.00, 234138.45, 'pending'),
(962, 'S9474255', '2024-12-01', '2024-12-01', '2024-12-01 13:41:23', '', 'BIL/INFT/DL15241533/MI Khan Elder c/ SYED ABDUL MUSS', 12750.00, 234138.45, 'pending'),
(963, 'S13105703', '2024-12-02', '2024-12-02', '2024-12-02 02:01:42', '', 'NEFT-N337243426973380-ANVAYAA KIN CARE PVT LTD-NEFT    AAYUSH HHC 50200019583158-50200019583158-HDF', 23760.00, 113397.45, 'pending'),
(964, 'S13105703', '2024-12-02', '2024-12-02', '2024-12-02 02:01:42', '', 'NEFT-N337243426973380-ANVAYAA KIN CARE PVT LTD-NEFT    AAYUSH HHC 50200019583158-50200019583158-HDF', 23760.00, 113397.45, 'pending'),
(965, 'S14175281', '2024-12-02', '2024-12-02', '2024-12-02 06:48:49', '', 'MMT/IMPS/433706505623/Dec15/VIDYASRIVA/Axis Bank', 23625.00, 137022.45, 'pending'),
(966, 'S14175281', '2024-12-02', '2024-12-02', '2024-12-02 06:48:49', '', 'MMT/IMPS/433706505623/Dec15/VIDYASRIVA/Axis Bank', 23625.00, 137022.45, 'pending'),
(967, 'S15760326', '2024-12-02', '2024-12-02', '2024-12-02 09:30:09', '', 'UPI/470342152061/18th to 30th No/christinavprabh/State Bank Of I/AXI8ddd925c99944297a2a6ae1dc7488d41', 11700.00, 148722.45, 'pending'),
(968, 'S15760326', '2024-12-02', '2024-12-02', '2024-12-02 09:30:09', '', 'UPI/470342152061/18th to 30th No/christinavprabh/State Bank Of I/AXI8ddd925c99944297a2a6ae1dc7488d41', 11700.00, 148722.45, 'pending'),
(969, 'S16532005', '2024-12-02', '2024-12-02', '2024-12-02 10:39:10', '', 'MMT/IMPS/433710570676/Bill Payment/MANGALA KO/State Bank of I', 9000.00, 157722.45, 'pending'),
(970, 'S16532005', '2024-12-02', '2024-12-02', '2024-12-02 10:39:10', '', 'MMT/IMPS/433710570676/Bill Payment/MANGALA KO/State Bank of I', 9000.00, 157722.45, 'pending'),
(971, 'S24806421', '2024-12-02', '2024-12-02', '2024-12-02 20:43:18', '', 'MMT/IMPS/433720032204/IMPS/SRIRUPASEN/Axis Bank', 12500.00, 170222.45, 'pending'),
(972, 'S24806421', '2024-12-02', '2024-12-02', '2024-12-02 20:43:18', '', 'MMT/IMPS/433720032204/IMPS/SRIRUPASEN/Axis Bank', 12500.00, 170222.45, 'pending'),
(973, 'S25433966', '2024-12-02', '2024-12-02', '2024-12-02 21:50:11', '', 'UPI/470374003846/UPI/obi2005-3@okaxi/AXIS BANK/AXI59ad74bbe25842bfb6fdf0e70b52d58a', 13500.00, 183722.45, 'pending'),
(974, 'S25433966', '2024-12-02', '2024-12-02', '2024-12-02 21:50:11', '', 'UPI/470374003846/UPI/obi2005-3@okaxi/AXIS BANK/AXI59ad74bbe25842bfb6fdf0e70b52d58a', 13500.00, 183722.45, 'pending'),
(975, 'S25735864', '2024-12-02', '2024-12-02', '2024-12-02 22:36:44', '', 'UPI/9901537347@axl/Payment from Ph/Union Bank of I/132883836942/AXL7cbc4b44082e4ffd9fb3251fac112042', 12500.00, 196222.45, 'pending'),
(976, 'S25735864', '2024-12-02', '2024-12-02', '2024-12-02 22:36:44', '', 'UPI/9901537347@axl/Payment from Ph/Union Bank of I/132883836942/AXL7cbc4b44082e4ffd9fb3251fac112042', 12500.00, 196222.45, 'pending'),
(977, 'S33545228', '2024-12-03', '2024-12-03', '2024-12-03 16:21:54', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/433866408881/HDFdd60b004d4df4e61abcc9c448f27fdd6', 13500.00, 209663.45, 'pending'),
(978, 'S33545228', '2024-12-03', '2024-12-03', '2024-12-03 16:21:54', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/433866408881/HDFdd60b004d4df4e61abcc9c448f27fdd6', 13500.00, 209663.45, 'pending'),
(979, 'S35992827', '2024-12-03', '2024-12-03', '2024-12-03 19:27:26', '', 'BIL/INFT/DL36083050/NA/ UMA SATYEN VYAS', 34000.00, 83663.45, 'pending'),
(980, 'S35992827', '2024-12-03', '2024-12-03', '2024-12-03 19:27:26', '', 'BIL/INFT/DL36083050/NA/ UMA SATYEN VYAS', 34000.00, 83663.45, 'pending'),
(981, 'S36090241', '2024-12-03', '2024-12-03', '2024-12-03 19:41:30', '', 'UPI/433879338733/UPI/jayastev-yahoo./INDIAN OVERSEAS/HDF2012fc9348c24b8ab630f52a0a0db419', 29250.00, 112913.45, 'pending'),
(982, 'S36090241', '2024-12-03', '2024-12-03', '2024-12-03 19:41:30', '', 'UPI/433879338733/UPI/jayastev-yahoo./INDIAN OVERSEAS/HDF2012fc9348c24b8ab630f52a0a0db419', 29250.00, 112913.45, 'pending'),
(983, 'S36174722', '2024-12-03', '2024-12-03', '2024-12-03 20:01:16', '', 'UPI/470406596078/Attendant for M/madhavi.krishna/Union Bank of I/ICIc2f1bdf31a5f4bfa9f2d5800d5bc0961', 13500.00, 126413.45, 'pending'),
(984, 'S36174722', '2024-12-03', '2024-12-03', '2024-12-03 20:01:16', '', 'UPI/470406596078/Attendant for M/madhavi.krishna/Union Bank of I/ICIc2f1bdf31a5f4bfa9f2d5800d5bc0961', 13500.00, 126413.45, 'pending'),
(985, 'S36251939', '2024-12-03', '2024-12-03', '2024-12-03 20:12:19', '', 'UPI/433825525338/UPI Payment/9884018900@icic/ICICI Bank/ICI4550286beaf44a0883cb57b872dedf93', 13500.00, 139913.45, 'pending'),
(986, 'S36251939', '2024-12-03', '2024-12-03', '2024-12-03 20:12:19', '', 'UPI/433825525338/UPI Payment/9884018900@icic/ICICI Bank/ICI4550286beaf44a0883cb57b872dedf93', 13500.00, 139913.45, 'pending'),
(987, 'S36352356', '2024-12-03', '2024-12-03', '2024-12-03 20:13:42', '', 'UPI/anuragverma150-/UPI/AXIS BANK/433855186194/AXI1c25ec598b594f1186e3445477748c06', 13500.00, 153413.45, 'pending'),
(988, 'S36352356', '2024-12-03', '2024-12-03', '2024-12-03 20:13:42', '', 'UPI/anuragverma150-/UPI/AXIS BANK/433855186194/AXI1c25ec598b594f1186e3445477748c06', 13500.00, 153413.45, 'pending'),
(989, 'S36938342', '2024-12-03', '2024-12-03', '2024-12-03 21:28:23', '', 'UPI/433891688658/Nursing/9845894222@supe/AXIS BANK/SMY241203212868WFXIGOHBUCVIF9W6FMCM', 13500.00, 166913.45, 'pending'),
(990, 'S36938342', '2024-12-03', '2024-12-03', '2024-12-03 21:28:23', '', 'UPI/433891688658/Nursing/9845894222@supe/AXIS BANK/SMY241203212868WFXIGOHBUCVIF9W6FMCM', 13500.00, 166913.45, 'pending'),
(991, 'S37109923', '2024-12-03', '2024-12-03', '2024-12-03 21:52:25', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/433886984451/HDF4ee2107685ba4711b450b71ff494d8b1', 1666.00, 168579.45, 'pending'),
(992, 'S37109923', '2024-12-03', '2024-12-03', '2024-12-03 21:52:25', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/433886984451/HDF4ee2107685ba4711b450b71ff494d8b1', 1666.00, 168579.45, 'pending'),
(993, 'S37238536', '2024-12-03', '2024-12-03', '2024-12-03 22:04:48', '', 'MMT/IMPS/433822923147/Bill Payment/RAVI RAJ S/State Bank of I', 11625.00, 180204.45, 'pending'),
(994, 'S37238536', '2024-12-03', '2024-12-03', '2024-12-03 22:04:48', '', 'MMT/IMPS/433822923147/Bill Payment/RAVI RAJ S/State Bank of I', 11625.00, 180204.45, 'pending'),
(995, 'S37307199', '2024-12-03', '2024-12-03', '2024-12-03 22:16:54', '', 'INF/INFT/038483986991/salary         /ARCHANA DIWAN', 13500.00, 193704.45, 'pending'),
(996, 'S37307199', '2024-12-03', '2024-12-03', '2024-12-03 22:16:54', '', 'INF/INFT/038483986991/salary         /ARCHANA DIWAN', 13500.00, 193704.45, 'pending'),
(997, 'S37708683', '2024-12-03', '2024-12-03', '2024-12-03 23:40:59', '', 'BIL/INFT/DL36143237/Quick Pay FT/Phuli Debnath/029805005633SOWMYA RANGARAJ', 24334.00, 218038.45, 'pending'),
(998, 'S37708683', '2024-12-03', '2024-12-03', '2024-12-03 23:40:59', '', 'BIL/INFT/DL36143237/Quick Pay FT/Phuli Debnath/029805005633SOWMYA RANGARAJ', 24334.00, 218038.45, 'pending'),
(999, 'S39375165', '2024-12-04', '2024-12-04', '2024-12-04 08:31:45', '', 'NEFT-SVCB024339842606-R JAYALAKSHMI-R JAYALAKSHMI1ST HALF DEC 2024-109803130005618-SVCB0000098', 13500.00, 231538.45, 'pending'),
(1000, 'S39375165', '2024-12-04', '2024-12-04', '2024-12-04 08:31:45', '', 'NEFT-SVCB024339842606-R JAYALAKSHMI-R JAYALAKSHMI1ST HALF DEC 2024-109803130005618-SVCB0000098', 13500.00, 231538.45, 'pending'),
(1001, 'M3270273', '2024-12-04', '2024-12-04', '2024-12-04 11:12:48', '', 'BY CASH  - HRBR LAYOUT', 27000.00, 149176.30, 'pending'),
(1002, 'M3270273', '2024-12-04', '2024-12-04', '2024-12-04 11:12:48', '', 'BY CASH  - HRBR LAYOUT', 27000.00, 149176.30, 'pending'),
(1003, 'M3331984', '2024-12-04', '2024-12-04', '2024-12-04 12:13:40', '', 'BY CASH -BANGALORE - ULSOOR C', 13500.00, 162676.30, 'pending'),
(1004, 'M3331984', '2024-12-04', '2024-12-04', '2024-12-04 12:13:40', '', 'BY CASH -BANGALORE - ULSOOR C', 13500.00, 162676.30, 'pending'),
(1005, 'S46403214', '2024-12-04', '2024-12-04', '2024-12-04 18:49:09', '', 'MMT/IMPS/433918467778/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 176176.30, 'pending'),
(1006, 'S46403214', '2024-12-04', '2024-12-04', '2024-12-04 18:49:09', '', 'MMT/IMPS/433918467778/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 176176.30, 'pending'),
(1007, 'S46699194', '2024-12-04', '2024-12-04', '2024-12-04 19:16:59', '', 'MMT/IMPS/433919546974/ReqPay/Mr  NAGARA/State Bank of I', 25500.00, 201676.30, 'pending'),
(1008, 'S46699194', '2024-12-04', '2024-12-04', '2024-12-04 19:16:59', '', 'MMT/IMPS/433919546974/ReqPay/Mr  NAGARA/State Bank of I', 25500.00, 201676.30, 'pending'),
(1009, 'S47489464', '2024-12-04', '2024-12-04', '2024-12-04 21:20:21', '', 'UPI/433941916665/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI862f7d0ca92048c08364fe7a488ebe13', 13500.00, 215176.30, 'pending'),
(1010, 'S47489464', '2024-12-04', '2024-12-04', '2024-12-04 21:20:21', '', 'UPI/433941916665/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI862f7d0ca92048c08364fe7a488ebe13', 13500.00, 215176.30, 'pending'),
(1011, 'S47772488', '2024-12-04', '2024-12-04', '2024-12-04 21:30:45', '', 'MMT/IMPS/433921101469/Ali Payment/SANJEEV SH/HDFCBank', 9000.00, 224176.30, 'pending'),
(1012, 'S47772488', '2024-12-04', '2024-12-04', '2024-12-04 21:30:45', '', 'MMT/IMPS/433921101469/Ali Payment/SANJEEV SH/HDFCBank', 9000.00, 224176.30, 'pending'),
(1013, 'S47683170', '2024-12-04', '2024-12-04', '2024-12-04 21:45:31', '', 'UPI/470515560753/UPI/abhishek.mn.iis/State Bank Of I/AXI201a8433bdeb4c61a56be3cce362b366', 11500.00, 235676.30, 'pending'),
(1014, 'S47683170', '2024-12-04', '2024-12-04', '2024-12-04 21:45:31', '', 'UPI/470515560753/UPI/abhishek.mn.iis/State Bank Of I/AXI201a8433bdeb4c61a56be3cce362b366', 11500.00, 235676.30, 'pending'),
(1015, 'S48813346', '2024-12-05', '2024-12-05', '2024-12-05 02:02:00', '', 'NEFT-N340243434553900-IGNOXLABS PVT LTD OP1-NEFT  EMHB042 BANGLORE DC 5020003-50200032099971-HDFC', 7056.00, 242732.30, 'pending'),
(1016, 'S48813346', '2024-12-05', '2024-12-05', '2024-12-05 02:02:00', '', 'NEFT-N340243434553900-IGNOXLABS PVT LTD OP1-NEFT  EMHB042 BANGLORE DC 5020003-50200032099971-HDFC', 7056.00, 242732.30, 'pending'),
(1017, 'S48812502', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434591254-IGNOXLABS PVT LTD OP1-NEFT  EMHB038 BANGLORE DC 5020003-50200032099971-HDFC', 4165.00, 246897.30, 'pending'),
(1018, 'S48812502', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434591254-IGNOXLABS PVT LTD OP1-NEFT  EMHB038 BANGLORE DC 5020003-50200032099971-HDFC', 4165.00, 246897.30, 'pending'),
(1019, 'S48814152', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434581711-IGNOXLABS PVT LTD OP1-NEFT  EMHB037 BANGLORE DC 5020003-50200032099971-HDFC', 13230.00, 260127.30, 'pending'),
(1020, 'S48814152', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434581711-IGNOXLABS PVT LTD OP1-NEFT  EMHB037 BANGLORE DC 5020003-50200032099971-HDFC', 13230.00, 260127.30, 'pending'),
(1021, 'S52143733', '2024-12-05', '2024-12-05', '2024-12-05 08:36:12', '', 'NEFT-N340243434762983-S RAMACHANDRA RAO-S RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 123231.30, 'pending'),
(1022, 'S52143733', '2024-12-05', '2024-12-05', '2024-12-05 08:36:12', '', 'NEFT-N340243434762983-S RAMACHANDRA RAO-S RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 123231.30, 'pending'),
(1023, 'C44882503', '2024-12-05', '2024-12-05', '2024-12-05 12:55:11', '', 'UPI/434063396426/UPI/deepti12karumba/AXIS BANK/SBIe15a2b9ff7474b85a1617f351d781d06', 13500.00, 136731.30, 'pending'),
(1024, 'C44882503', '2024-12-05', '2024-12-05', '2024-12-05 12:55:11', '', 'UPI/434063396426/UPI/deepti12karumba/AXIS BANK/SBIe15a2b9ff7474b85a1617f351d781d06', 13500.00, 136731.30, 'pending'),
(1025, 'C52475339', '2024-12-05', '2024-12-05', '2024-12-05 16:24:05', '', 'NEFT-YESIG43400064650-INDIA HOME HEALTH CARE P L OPERATIO-512202424 71193-002281400004518-YESB00000', 18900.00, 155631.30, 'pending'),
(1026, 'C52475339', '2024-12-05', '2024-12-05', '2024-12-05 16:24:05', '', 'NEFT-YESIG43400064650-INDIA HOME HEALTH CARE P L OPERATIO-512202424 71193-002281400004518-YESB00000', 18900.00, 155631.30, 'pending'),
(1027, 'S56599551', '2024-12-05', '2024-12-05', '2024-12-05 16:49:54', '', 'NEFT-AXISCN0840109369-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 193710.90, 'pending'),
(1028, 'S56599551', '2024-12-05', '2024-12-05', '2024-12-05 16:49:54', '', 'NEFT-AXISCN0840109369-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 193710.90, 'pending'),
(1029, 'S57986128', '2024-12-05', '2024-12-05', '2024-12-05 18:15:42', '', 'BIL/INFT/DL56694654/1stto15thDecnur/ RENU KALAGNANAM', 33000.00, 226710.90, 'pending'),
(1030, 'S57986128', '2024-12-05', '2024-12-05', '2024-12-05 18:15:42', '', 'BIL/INFT/DL56694654/1stto15thDecnur/ RENU KALAGNANAM', 33000.00, 226710.90, 'pending'),
(1031, 'S59404764', '2024-12-05', '2024-12-05', '2024-12-05 20:05:35', '', 'NEFT-N340243437019556-BHAVANI-DEC 1ST HALF-00771140203921-HDFC0000001', 13500.00, 155285.90, 'pending'),
(1032, 'S59404764', '2024-12-05', '2024-12-05', '2024-12-05 20:05:35', '', 'NEFT-N340243437019556-BHAVANI-DEC 1ST HALF-00771140203921-HDFC0000001', 13500.00, 155285.90, 'pending'),
(1033, 'S59643664', '2024-12-05', '2024-12-05', '2024-12-05 20:36:31', '', 'UPI/470676510520/Dec 1 to 15 sal/pallavisinhamis/ICICI Bank/ICId68808e5b13e4f47915d8fbfbbe55110', 15000.00, 170285.90, 'pending'),
(1034, 'S59643664', '2024-12-05', '2024-12-05', '2024-12-05 20:36:31', '', 'UPI/470676510520/Dec 1 to 15 sal/pallavisinhamis/ICICI Bank/ICId68808e5b13e4f47915d8fbfbbe55110', 15000.00, 170285.90, 'pending'),
(1035, 'S59886897', '2024-12-05', '2024-12-05', '2024-12-05 21:17:35', '', 'UPI/434060983170/Sent from Paytm/9739988071@ptsb/ICICI Bank/PTMD01B1F12564E4D2194C911C9BF3F5412', 12000.00, 182285.90, 'pending'),
(1036, 'S59886897', '2024-12-05', '2024-12-05', '2024-12-05 21:17:35', '', 'UPI/434060983170/Sent from Paytm/9739988071@ptsb/ICICI Bank/PTMD01B1F12564E4D2194C911C9BF3F5412', 12000.00, 182285.90, 'pending'),
(1037, 'S63308333', '2024-12-06', '2024-12-06', '2024-12-06 10:32:21', '', 'UPI/434116747526/caretaker/rkpatil1@oksbi/State Bank Of I/SBIdc0d6069d5664745acfbfeb9902cee3c', 15000.00, 197285.90, 'pending'),
(1038, 'S63308333', '2024-12-06', '2024-12-06', '2024-12-06 10:32:21', '', 'UPI/434116747526/caretaker/rkpatil1@oksbi/State Bank Of I/SBIdc0d6069d5664745acfbfeb9902cee3c', 15000.00, 197285.90, 'pending'),
(1039, 'S63719860', '2024-12-06', '2024-12-06', '2024-12-06 11:06:29', '', 'NEFT-N341243437655074-APARAJITA SAHA-15DAYS ADVANCE-50100177601573-HDFC0000001', 15000.00, 212285.90, 'pending'),
(1040, 'S63719860', '2024-12-06', '2024-12-06', '2024-12-06 11:06:29', '', 'NEFT-N341243437655074-APARAJITA SAHA-15DAYS ADVANCE-50100177601573-HDFC0000001', 15000.00, 212285.90, 'pending'),
(1041, 'S70837017', '2024-12-06', '2024-12-06', '2024-12-06 22:05:55', '', 'NEFT-SBIN224341243398-MRS MOHUA MUKHERJEE-/ATTN//INB-00000036831395463-SBIN0009042', 22400.00, 234650.50, 'pending'),
(1042, 'S70837017', '2024-12-06', '2024-12-06', '2024-12-06 22:05:55', '', 'NEFT-SBIN224341243398-MRS MOHUA MUKHERJEE-/ATTN//INB-00000036831395463-SBIN0009042', 22400.00, 234650.50, 'pending'),
(1043, 'S75317231', '2024-12-07', '2024-12-07', '2024-12-07 12:39:06', '', 'NEFT-N342243440819027-ANURAG SRIVASTAVA-ALOK SRIVASTAVA-00441060006038-HDFC0000001', 27900.00, 262550.50, 'pending'),
(1044, 'S75317231', '2024-12-07', '2024-12-07', '2024-12-07 12:39:06', '', 'NEFT-N342243440819027-ANURAG SRIVASTAVA-ALOK SRIVASTAVA-00441060006038-HDFC0000001', 27900.00, 262550.50, 'pending'),
(1045, 'S89117605', '2024-12-09', '2024-12-09', '2024-12-09 08:15:43', '', 'FT-MESPOS SET 10XX080827 091224', 205133.68, 237684.18, 'pending'),
(1046, 'S89117605', '2024-12-09', '2024-12-09', '2024-12-09 08:15:43', '', 'FT-MESPOS SET 10XX080827 091224', 205133.68, 237684.18, 'pending'),
(1047, 'S93026350', '2024-12-09', '2024-12-09', '2024-12-09 15:03:23', '', 'NEFT-KKBKH24344647334-NHK MEDICAL PRIVATE LIMITED-PAYMENT-9739841619-KKBK0000958', 72045.00, 309729.18, 'pending'),
(1048, 'S93026350', '2024-12-09', '2024-12-09', '2024-12-09 15:03:23', '', 'NEFT-KKBKH24344647334-NHK MEDICAL PRIVATE LIMITED-PAYMENT-9739841619-KKBK0000958', 72045.00, 309729.18, 'pending'),
(1049, 'S97140070', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 315372.18, 'pending'),
(1050, 'S97140070', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 315372.18, 'pending'),
(1051, 'S49409907', '2024-11-13', '2024-11-13', '2024-11-13 12:37:51', '', 'NEFT-P318240375189734-ASHA D NAYAK--0125101001157-CNRB0000125', 21000.00, 34434.03, 'Matched'),
(1052, 'S58792440', '2024-11-14', '2024-11-14', '2024-11-14 12:43:08', '', 'BIL/INFT/DKI1914610/Nov set2/ DHANYA ROS MATH', 14000.00, 28434.03, 'Matched'),
(1053, 'S59919983', '2024-11-14', '2024-11-14', '2024-11-14 14:32:49', '', 'UPI/431966588105/Attendant for M/madhavi.krishna/Union Bank of I/ICI889e75bae7454070adb31dcd5a39d20c', 13500.00, 41934.03, 'pending'),
(1054, 'S68642897', '2024-11-15', '2024-11-15', '2024-11-15 13:31:20', '', 'INF/INFT/038300045131/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 20958.00, 62892.03, 'pending'),
(1055, 'S68647127', '2024-11-15', '2024-11-15', '2024-11-15 13:31:54', '', 'INF/INFT/038300053381/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 6395.00, 69287.03, 'pending'),
(1056, 'S68648725', '2024-11-15', '2024-11-15', '2024-11-15 13:32:04', '', 'INF/INFT/038300056191/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 19050.00, 88337.03, 'Matched'),
(1057, 'S68932545', '2024-11-15', '2024-11-15', '2024-11-15 14:12:53', '', 'INF/INFT/038300516371/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 29057.03, 'pending'),
(1058, 'S68933364', '2024-11-15', '2024-11-15', '2024-11-15 14:13:04', '', 'INF/INFT/038300519091/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 49777.03, 'pending'),
(1059, 'S68933971', '2024-11-15', '2024-11-15', '2024-11-15 14:13:14', '', 'INF/INFT/038300521141/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 16808.00, 66585.03, 'pending'),
(1060, 'S68935004', '2024-11-15', '2024-11-15', '2024-11-15 14:13:22', '', 'INF/INFT/038300522641/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 1334.00, 67919.03, 'pending'),
(1061, 'S70395084', '2024-11-15', '2024-11-15', '2024-11-15 17:50:01', '', 'UPI/432055761180/UPI/cynthiajimmy@ok/State Bank Of I/SBI701ec21a073747329af8e0101fae926d', 13500.00, 81419.03, 'pending'),
(1062, 'S73697621', '2024-11-16', '2024-11-16', '2024-11-16 08:07:42', '', 'MMT/IMPS/432108828325/null/MANGALA KO/State Bank of I', 13500.00, 94919.03, 'pending'),
(1063, 'S73942259', '2024-11-16', '2024-11-16', '2024-11-16 09:38:08', '', 'UPI/9901537347@ibl/Payment from Ph/Union Bank of I/356324008385/IBLa4fc535fb1d94fadaad705770e50cad6', 12500.00, 107419.03, 'pending'),
(1064, 'S74013974', '2024-11-16', '2024-11-16', '2024-11-16 09:41:31', '', 'UPI/468737652217/Paid via SuperM/8197129933@supe/ICICI Bank/SMY2411160941ROO2MQXIFRWV32PTV3541C', 14000.00, 121419.03, 'pending'),
(1065, 'S75485220', '2024-11-16', '2024-11-16', '2024-11-16 12:28:56', '', 'BIL/INFT/DKK2266161/MI Khan elder c/ SYED ABDUL MUSS', 12750.00, 134169.03, 'pending'),
(1066, 'S78020341', '2024-11-16', '2024-11-16', '2024-11-16 16:57:51', '', 'BIL/INFT/DKK2315964/NA/ UMA SATYEN VYAS', 15750.00, 109119.03, 'pending'),
(1067, 'S78018687', '2024-11-16', '2024-11-16', '2024-11-16 17:21:31', '', 'UPI/468741241443/Nursing/9845894222@supe/AXIS BANK/SMY2411161721UF6GBEWTJL3IVF7PYJPT9L', 13500.00, 122619.03, 'pending'),
(1068, 'S78368102', '2024-11-16', '2024-11-16', '2024-11-16 17:55:24', '', 'UPI/anuragverma150-/UPI/AXIS BANK/468795146377/AXI1df955ccb4e04383ba4440cf8eb55d5a', 13500.00, 136119.03, 'pending'),
(1069, 'S78800076', '2024-11-16', '2024-11-16', '2024-11-16 18:35:35', '', 'UPI/432162245191/UPI/obi2005-3@okaxi/AXIS BANK/AXI305b2e70add74000aa4a3ef0a37dabe4', 13500.00, 149619.03, 'pending'),
(1070, 'S78905669', '2024-11-16', '2024-11-16', '2024-11-16 18:39:44', '', 'INF/INFT/038315025331/Salary         /ARCHANA DIWAN', 13500.00, 163119.03, 'pending'),
(1071, 'S79748941', '2024-11-16', '2024-11-16', '2024-11-16 20:34:24', '', 'NEFT-SVCB024321302874-R JAYALAKSHMI-R JAYALAKSHMI 2ND HALF OF NOV 2024-109803130005618-SVCB0000098', 13500.00, 176619.03, 'pending'),
(1072, 'S80121355', '2024-11-16', '2024-11-16', '2024-11-16 21:40:43', '', 'MMT/IMPS/432121759197/null/RAVI RAJ S/State Bank of I', 11625.00, 188244.03, 'pending'),
(1073, 'S80434449', '2024-11-16', '2024-11-16', '2024-11-16 22:58:50', '', 'FT-MESPOS/REVRENGSTOCT24/EP049242', 80.82, 188324.85, 'pending'),
(1074, 'S80706988', '2024-11-17', '2024-11-17', '2024-11-17 01:33:39', '', 'NEFT-N322243402959481-BHAVANI-NOV 2ND HALF 2024-00771140203921-HDFC0000001', 12500.00, 130824.85, 'pending'),
(1075, 'S81168941', '2024-11-16', '2024-11-17', '2024-11-17 05:56:09', '', 'FT-MESPOS/REV/RENT/OCT24/EP049242', 449.00, 131273.85, 'pending'),
(1076, 'S82245503', '2024-11-17', '2024-11-17', '2024-11-17 11:50:23', '', 'UPI/468868371912/UPI/abhishek.mn.iis/State Bank Of I/AXI9d6bd59c17604cc38fb77b7256a893e5', 11500.00, 142773.85, 'pending'),
(1077, 'S82376192', '2024-11-17', '2024-11-17', '2024-11-17 11:51:17', '', 'UPI/432224940501/UPI/christinavprabh/State Bank Of I/ICI35f3b109a3ff4f1faa4ad5e7e46df700', 4500.00, 147273.85, 'pending'),
(1078, 'S82765985', '2024-11-17', '2024-11-17', '2024-11-17 13:08:55', '', 'MMT/IMPS/432213127447/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 160773.85, 'pending'),
(1079, 'S83168600', '2024-11-17', '2024-11-17', '2024-11-17 14:32:20', '', 'NEFT-AXOMB32275094653-SRIRUPA SEN--015010100536585-UTIB0004821', 12500.00, 173273.85, 'pending'),
(1080, 'S85235775', '2024-11-17', '2024-11-17', '2024-11-17 22:24:09', '', 'UPI/468851867229/UPI/manjeetverma161/Punjab National/ICI5efb05c53bed458da215897ec3f0e360', 14000.00, 187273.85, 'pending'),
(1081, 'S87711173', '2024-11-18', '2024-11-18', '2024-11-18 08:31:55', '', 'NEFT-N323243403464711-S RAMACHANDRA RAO-RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 200773.85, 'pending'),
(1082, 'S88771127', '2024-11-18', '2024-11-18', '2024-11-18 11:15:35', '', 'UPI/432389681030/UPI/deepti12karumba/AXIS BANK/SBI92bfef8f88e84e789a204767dd6dcbfe', 10500.00, 211273.85, 'pending'),
(1083, 'S89241742', '2024-11-18', '2024-11-18', '2024-11-18 11:34:01', '', 'UPI/432390842965/UPI/cynthiajimmy@ok/State Bank Of I/SBIfd2ba295b1274ff693d7cf37b8b76cad', 1800.00, 213073.85, 'pending'),
(1084, 'S90372247', '2024-11-18', '2024-11-18', '2024-11-18 12:56:27', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/432376654391/HDF5b4e61c28b38492382435bf9c57bb647', 13500.00, 226573.85, 'pending'),
(1085, 'S90839934', '2024-11-18', '2024-11-18', '2024-11-18 13:16:39', '', 'NEFT-N323243403899686-IGNOXLABS PVT LTD OP1-NEFT  EMHB002 BANGLORE 5020003209-50200032099971-HDFC', 12495.00, 239068.85, 'pending'),
(1086, 'S90839937', '2024-11-18', '2024-11-18', '2024-11-18 13:16:40', '', 'NEFT-N323243403899682-IGNOXLABS PVT LTD OP1-NEFT  EMHB0002 BANGLORE 502000320-50200032099971-HDFC', 13230.00, 252298.85, 'pending'),
(1087, 'S91887312', '2024-11-18', '2024-11-18', '2024-11-18 14:57:08', '', 'BIL/INFT/DKM2588188/16thto30thNovem/ RENU KALAGNANAM', 33000.00, 285298.85, 'pending'),
(1088, 'S92243655', '2024-11-18', '2024-11-18', '2024-11-18 15:23:14', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5431', 12000.00, 297298.85, 'pending'),
(1089, 'S92263663', '2024-11-18', '2024-11-18', '2024-11-18 15:24:49', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5433', 1500.00, 298798.85, 'pending'),
(1090, 'S93418829', '2024-11-18', '2024-11-18', '2024-11-18 16:45:10', '', 'MMT/IMPS/432316117723/Ali Helper/SANJEEV SH/HDFC Bank', 3600.00, 22398.85, 'pending'),
(1091, 'S94929916', '2024-11-18', '2024-11-18', '2024-11-18 19:02:59', '', 'INF/INFT/038329979601/AARUSH CONSTRUC', 100000.00, 122398.85, 'pending'),
(1092, 'S95293560', '2024-11-18', '2024-11-18', '2024-11-18 19:39:18', '', 'MMT/IMPS/432319525371/Nov30/VIDYASRIVA/Axis Bank', 23625.00, 146023.85, 'pending'),
(1093, 'S95317245', '2024-11-18', '2024-11-18', '2024-11-18 19:42:56', '', 'MMT/IMPS/432319545404/Nov30/VLAKSHMIAM/Axis Bank', 12600.00, 158623.85, 'pending'),
(1094, 'S96680226', '2024-11-19', '2024-11-19', '2024-11-19 00:49:50', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/432407404179/HDF13aa8b0039b44fe7bb85fc842f476ea5', 12500.00, 171123.85, 'pending'),
(1095, 'S98613032', '2024-11-19', '2024-11-19', '2024-11-19 09:47:13', '', 'INF/INFT/038332871671/44855766     /EZEE MEDFIND LLP    /', 1300.00, 172423.85, 'pending'),
(1096, 'S99309776', '2024-11-19', '2024-11-19', '2024-11-19 11:23:38', '', 'UPI/469065238185/salary 16 to 30/pallavisinhamis/ICICI Bank/ICI2ad8b12a9fff4a2994199b9f7e18fcaf', 15000.00, 187423.85, 'pending'),
(1097, 'S11434339', '2024-11-20', '2024-11-20', '2024-11-20 17:26:20', '', 'CMS/ CMS4662594714/SUKINO HEALTHCARE SOLUTIONS PR', 27291.00, 154714.85, 'pending'),
(1098, 'S16777086', '2024-11-21', '2024-11-21', '2024-11-21 11:04:28', '', 'UPI/432626433487/UPI/sandhyanair199@/ICICI Bank/ICI3155b308a5ce40d0afe24aed6f7bd000', 12000.00, 166714.85, 'pending'),
(1099, 'S19082966', '2024-11-21', '2024-11-21', '2024-11-21 14:05:30', '', 'NEFT-AXISCN0823448800-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 159954.45, 'pending'),
(1100, 'S25554007', '2024-11-22', '2024-11-22', '2024-11-22 07:37:39', '', 'UPI/432780870440/caretaker/rkpatil1@oksbi/State Bank Of I/SBI9a9f4cb52eaf4d1a8d68b1547d5b177c', 15000.00, 129454.45, 'pending'),
(1101, 'S27420133', '2024-11-22', '2024-11-22', '2024-11-22 12:38:03', '', 'UPI/432796300568/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI777c692ff028408bafb59a5402522716', 12600.00, 133392.45, 'pending'),
(1102, 'S39453747', '2024-11-24', '2024-11-24', '2024-11-24 10:20:15', '', 'CMS/ CMS4669666771/SUKINO HEALTHCARE SOLUTIONS PR', 4704.00, 120096.45, 'pending');
INSERT INTO `deposits` (`id`, `tran_id`, `value_date`, `transaction_date`, `transaction_posted_date`, `cheque_no_ref_no`, `transaction_remarks`, `deposit_amt`, `balance`, `status`) VALUES
(1103, 'S52285457', '2024-11-25', '2024-11-25', '2024-11-25 20:33:27', '', 'NEFT-CMS3302466086620-HEALTHVISTA INDIA PRIVATE LIMITE-PAYMENT-6447052626-KKBK0000958', 33997.00, 154093.45, 'pending'),
(1104, 'S56045368', '2024-11-26', '2024-11-26', '2024-11-26 10:15:07', '', 'UPI/433122951714/UPI/yusufshahpurwal/HDFC BANK LTD/HDF8368d24241df4227ac6b70eb0d6956d2', 13500.00, 167593.45, 'pending'),
(1105, 'M3735849', '2024-11-26', '2024-11-26', '2024-11-26 19:15:41', '', 'TRF/MADAN/055778/ICI/23.11.2024', 25000.00, 192593.45, 'pending'),
(1106, 'S91139662', '2024-11-29', '2024-11-29', '2024-11-29 16:55:23', '', 'UPI/433474709893/UPI/kanchanaseshadr/HDFC BANK LTD/HDF387ad8fb3d1646edb7624e068c7376c0', 29295.00, 152888.45, 'pending'),
(1107, 'S97922697', '2024-11-30', '2024-11-30', '2024-11-30 11:24:55', '', 'MMT/IMPS/433511351600/Dec2024 Surende/RAJESH DES/HDFC Bank', 27900.00, 180788.45, 'pending'),
(1108, 'S5509059', '2024-12-01', '2024-12-01', '2024-12-01 00:08:53', '', 'UPI/470234442140/UPI/nuqranaqvi@okic/ICICI Bank/ICI0e23a5d0c0144ff0a6474e25b7ecfdcc', 14000.00, 194788.45, 'pending'),
(1109, 'S6697751', '2024-12-01', '2024-12-01', '2024-12-01 07:00:00', '', 'BIL/INFT/DL15102214/December first / DHANYA ROS MATH', 14000.00, 208788.45, 'pending'),
(1110, 'S6792085', '2024-12-01', '2024-12-01', '2024-12-01 07:31:19', '', 'MMT/IMPS/433607157093/Dec15/VLAKSHMIAM/Axis Bank', 12600.00, 221388.45, 'pending'),
(1111, 'S9474255', '2024-12-01', '2024-12-01', '2024-12-01 13:41:23', '', 'BIL/INFT/DL15241533/MI Khan Elder c/ SYED ABDUL MUSS', 12750.00, 234138.45, 'pending'),
(1112, 'S13105703', '2024-12-02', '2024-12-02', '2024-12-02 02:01:42', '', 'NEFT-N337243426973380-ANVAYAA KIN CARE PVT LTD-NEFT    AAYUSH HHC 50200019583158-50200019583158-HDF', 23760.00, 113397.45, 'pending'),
(1113, 'S14175281', '2024-12-02', '2024-12-02', '2024-12-02 06:48:49', '', 'MMT/IMPS/433706505623/Dec15/VIDYASRIVA/Axis Bank', 23625.00, 137022.45, 'pending'),
(1114, 'S15760326', '2024-12-02', '2024-12-02', '2024-12-02 09:30:09', '', 'UPI/470342152061/18th to 30th No/christinavprabh/State Bank Of I/AXI8ddd925c99944297a2a6ae1dc7488d41', 11700.00, 148722.45, 'pending'),
(1115, 'S16532005', '2024-12-02', '2024-12-02', '2024-12-02 10:39:10', '', 'MMT/IMPS/433710570676/Bill Payment/MANGALA KO/State Bank of I', 9000.00, 157722.45, 'pending'),
(1116, 'S24806421', '2024-12-02', '2024-12-02', '2024-12-02 20:43:18', '', 'MMT/IMPS/433720032204/IMPS/SRIRUPASEN/Axis Bank', 12500.00, 170222.45, 'pending'),
(1117, 'S25433966', '2024-12-02', '2024-12-02', '2024-12-02 21:50:11', '', 'UPI/470374003846/UPI/obi2005-3@okaxi/AXIS BANK/AXI59ad74bbe25842bfb6fdf0e70b52d58a', 13500.00, 183722.45, 'pending'),
(1118, 'S25735864', '2024-12-02', '2024-12-02', '2024-12-02 22:36:44', '', 'UPI/9901537347@axl/Payment from Ph/Union Bank of I/132883836942/AXL7cbc4b44082e4ffd9fb3251fac112042', 12500.00, 196222.45, 'pending'),
(1119, 'S33545228', '2024-12-03', '2024-12-03', '2024-12-03 16:21:54', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/433866408881/HDFdd60b004d4df4e61abcc9c448f27fdd6', 13500.00, 209663.45, 'pending'),
(1120, 'S35992827', '2024-12-03', '2024-12-03', '2024-12-03 19:27:26', '', 'BIL/INFT/DL36083050/NA/ UMA SATYEN VYAS', 34000.00, 83663.45, 'pending'),
(1121, 'S36090241', '2024-12-03', '2024-12-03', '2024-12-03 19:41:30', '', 'UPI/433879338733/UPI/jayastev-yahoo./INDIAN OVERSEAS/HDF2012fc9348c24b8ab630f52a0a0db419', 29250.00, 112913.45, 'pending'),
(1122, 'S36174722', '2024-12-03', '2024-12-03', '2024-12-03 20:01:16', '', 'UPI/470406596078/Attendant for M/madhavi.krishna/Union Bank of I/ICIc2f1bdf31a5f4bfa9f2d5800d5bc0961', 13500.00, 126413.45, 'pending'),
(1123, 'S36251939', '2024-12-03', '2024-12-03', '2024-12-03 20:12:19', '', 'UPI/433825525338/UPI Payment/9884018900@icic/ICICI Bank/ICI4550286beaf44a0883cb57b872dedf93', 13500.00, 139913.45, 'pending'),
(1124, 'S36352356', '2024-12-03', '2024-12-03', '2024-12-03 20:13:42', '', 'UPI/anuragverma150-/UPI/AXIS BANK/433855186194/AXI1c25ec598b594f1186e3445477748c06', 13500.00, 153413.45, 'pending'),
(1125, 'S36938342', '2024-12-03', '2024-12-03', '2024-12-03 21:28:23', '', 'UPI/433891688658/Nursing/9845894222@supe/AXIS BANK/SMY241203212868WFXIGOHBUCVIF9W6FMCM', 13500.00, 166913.45, 'pending'),
(1126, 'S37109923', '2024-12-03', '2024-12-03', '2024-12-03 21:52:25', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/433886984451/HDF4ee2107685ba4711b450b71ff494d8b1', 1666.00, 168579.45, 'pending'),
(1127, 'S37238536', '2024-12-03', '2024-12-03', '2024-12-03 22:04:48', '', 'MMT/IMPS/433822923147/Bill Payment/RAVI RAJ S/State Bank of I', 11625.00, 180204.45, 'pending'),
(1128, 'S37307199', '2024-12-03', '2024-12-03', '2024-12-03 22:16:54', '', 'INF/INFT/038483986991/salary         /ARCHANA DIWAN', 13500.00, 193704.45, 'pending'),
(1129, 'S37708683', '2024-12-03', '2024-12-03', '2024-12-03 23:40:59', '', 'BIL/INFT/DL36143237/Quick Pay FT/Phuli Debnath/029805005633SOWMYA RANGARAJ', 24334.00, 218038.45, 'pending'),
(1130, 'S39375165', '2024-12-04', '2024-12-04', '2024-12-04 08:31:45', '', 'NEFT-SVCB024339842606-R JAYALAKSHMI-R JAYALAKSHMI1ST HALF DEC 2024-109803130005618-SVCB0000098', 13500.00, 231538.45, 'pending'),
(1131, 'S49409907', '2024-11-13', '2024-11-13', '2024-11-13 12:37:51', '', 'NEFT-P318240375189734-ASHA D NAYAK--0125101001157-CNRB0000125', 21000.00, 34434.03, 'Matched'),
(1132, 'M3270273', '2024-12-04', '2024-12-04', '2024-12-04 11:12:48', '', 'BY CASH  - HRBR LAYOUT', 27000.00, 149176.30, 'pending'),
(1133, 'M3331984', '2024-12-04', '2024-12-04', '2024-12-04 12:13:40', '', 'BY CASH -BANGALORE - ULSOOR C', 13500.00, 162676.30, 'pending'),
(1134, 'S58792440', '2024-11-14', '2024-11-14', '2024-11-14 12:43:08', '', 'BIL/INFT/DKI1914610/Nov set2/ DHANYA ROS MATH', 14000.00, 28434.03, 'Matched'),
(1135, 'S46403214', '2024-12-04', '2024-12-04', '2024-12-04 18:49:09', '', 'MMT/IMPS/433918467778/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 176176.30, 'pending'),
(1136, 'S59919983', '2024-11-14', '2024-11-14', '2024-11-14 14:32:49', '', 'UPI/431966588105/Attendant for M/madhavi.krishna/Union Bank of I/ICI889e75bae7454070adb31dcd5a39d20c', 13500.00, 41934.03, 'pending'),
(1137, 'S46699194', '2024-12-04', '2024-12-04', '2024-12-04 19:16:59', '', 'MMT/IMPS/433919546974/ReqPay/Mr  NAGARA/State Bank of I', 25500.00, 201676.30, 'pending'),
(1138, 'S68642897', '2024-11-15', '2024-11-15', '2024-11-15 13:31:20', '', 'INF/INFT/038300045131/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 20958.00, 62892.03, 'pending'),
(1139, 'S47489464', '2024-12-04', '2024-12-04', '2024-12-04 21:20:21', '', 'UPI/433941916665/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI862f7d0ca92048c08364fe7a488ebe13', 13500.00, 215176.30, 'pending'),
(1140, 'S68647127', '2024-11-15', '2024-11-15', '2024-11-15 13:31:54', '', 'INF/INFT/038300053381/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 6395.00, 69287.03, 'pending'),
(1141, 'S47772488', '2024-12-04', '2024-12-04', '2024-12-04 21:30:45', '', 'MMT/IMPS/433921101469/Ali Payment/SANJEEV SH/HDFCBank', 9000.00, 224176.30, 'pending'),
(1142, 'S68648725', '2024-11-15', '2024-11-15', '2024-11-15 13:32:04', '', 'INF/INFT/038300056191/44734196     /AARUSH CONSTRUCTIONS/Oct Salary', 19050.00, 88337.03, 'Matched'),
(1143, 'S47683170', '2024-12-04', '2024-12-04', '2024-12-04 21:45:31', '', 'UPI/470515560753/UPI/abhishek.mn.iis/State Bank Of I/AXI201a8433bdeb4c61a56be3cce362b366', 11500.00, 235676.30, 'pending'),
(1144, 'S48813346', '2024-12-05', '2024-12-05', '2024-12-05 02:02:00', '', 'NEFT-N340243434553900-IGNOXLABS PVT LTD OP1-NEFT  EMHB042 BANGLORE DC 5020003-50200032099971-HDFC', 7056.00, 242732.30, 'pending'),
(1145, 'S68932545', '2024-11-15', '2024-11-15', '2024-11-15 14:12:53', '', 'INF/INFT/038300516371/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 29057.03, 'pending'),
(1146, 'S48812502', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434591254-IGNOXLABS PVT LTD OP1-NEFT  EMHB038 BANGLORE DC 5020003-50200032099971-HDFC', 4165.00, 246897.30, 'pending'),
(1147, 'S68933364', '2024-11-15', '2024-11-15', '2024-11-15 14:13:04', '', 'INF/INFT/038300519091/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 20720.00, 49777.03, 'pending'),
(1148, 'S48814152', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434581711-IGNOXLABS PVT LTD OP1-NEFT  EMHB037 BANGLORE DC 5020003-50200032099971-HDFC', 13230.00, 260127.30, 'pending'),
(1149, 'S68933971', '2024-11-15', '2024-11-15', '2024-11-15 14:13:14', '', 'INF/INFT/038300521141/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 16808.00, 66585.03, 'pending'),
(1150, 'S68935004', '2024-11-15', '2024-11-15', '2024-11-15 14:13:22', '', 'INF/INFT/038300522641/44736335     /AARUSH CONSTRUCTIONS/Oct Salary', 1334.00, 67919.03, 'pending'),
(1151, 'S70395084', '2024-11-15', '2024-11-15', '2024-11-15 17:50:01', '', 'UPI/432055761180/UPI/cynthiajimmy@ok/State Bank Of I/SBI701ec21a073747329af8e0101fae926d', 13500.00, 81419.03, 'pending'),
(1152, 'S52143733', '2024-12-05', '2024-12-05', '2024-12-05 08:36:12', '', 'NEFT-N340243434762983-S RAMACHANDRA RAO-S RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 123231.30, 'pending'),
(1153, 'S73697621', '2024-11-16', '2024-11-16', '2024-11-16 08:07:42', '', 'MMT/IMPS/432108828325/null/MANGALA KO/State Bank of I', 13500.00, 94919.03, 'pending'),
(1154, 'C44882503', '2024-12-05', '2024-12-05', '2024-12-05 12:55:11', '', 'UPI/434063396426/UPI/deepti12karumba/AXIS BANK/SBIe15a2b9ff7474b85a1617f351d781d06', 13500.00, 136731.30, 'pending'),
(1155, 'S73942259', '2024-11-16', '2024-11-16', '2024-11-16 09:38:08', '', 'UPI/9901537347@ibl/Payment from Ph/Union Bank of I/356324008385/IBLa4fc535fb1d94fadaad705770e50cad6', 12500.00, 107419.03, 'pending'),
(1156, 'C52475339', '2024-12-05', '2024-12-05', '2024-12-05 16:24:05', '', 'NEFT-YESIG43400064650-INDIA HOME HEALTH CARE P L OPERATIO-512202424 71193-002281400004518-YESB00000', 18900.00, 155631.30, 'pending'),
(1157, 'S74013974', '2024-11-16', '2024-11-16', '2024-11-16 09:41:31', '', 'UPI/468737652217/Paid via SuperM/8197129933@supe/ICICI Bank/SMY2411160941ROO2MQXIFRWV32PTV3541C', 14000.00, 121419.03, 'pending'),
(1158, 'S56599551', '2024-12-05', '2024-12-05', '2024-12-05 16:49:54', '', 'NEFT-AXISCN0840109369-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 193710.90, 'pending'),
(1159, 'S75485220', '2024-11-16', '2024-11-16', '2024-11-16 12:28:56', '', 'BIL/INFT/DKK2266161/MI Khan elder c/ SYED ABDUL MUSS', 12750.00, 134169.03, 'pending'),
(1160, 'S57986128', '2024-12-05', '2024-12-05', '2024-12-05 18:15:42', '', 'BIL/INFT/DL56694654/1stto15thDecnur/ RENU KALAGNANAM', 33000.00, 226710.90, 'pending'),
(1161, 'S78020341', '2024-11-16', '2024-11-16', '2024-11-16 16:57:51', '', 'BIL/INFT/DKK2315964/NA/ UMA SATYEN VYAS', 15750.00, 109119.03, 'pending'),
(1162, 'S78018687', '2024-11-16', '2024-11-16', '2024-11-16 17:21:31', '', 'UPI/468741241443/Nursing/9845894222@supe/AXIS BANK/SMY2411161721UF6GBEWTJL3IVF7PYJPT9L', 13500.00, 122619.03, 'pending'),
(1163, 'S59404764', '2024-12-05', '2024-12-05', '2024-12-05 20:05:35', '', 'NEFT-N340243437019556-BHAVANI-DEC 1ST HALF-00771140203921-HDFC0000001', 13500.00, 155285.90, 'pending'),
(1164, 'S78368102', '2024-11-16', '2024-11-16', '2024-11-16 17:55:24', '', 'UPI/anuragverma150-/UPI/AXIS BANK/468795146377/AXI1df955ccb4e04383ba4440cf8eb55d5a', 13500.00, 136119.03, 'pending'),
(1165, 'S59643664', '2024-12-05', '2024-12-05', '2024-12-05 20:36:31', '', 'UPI/470676510520/Dec 1 to 15 sal/pallavisinhamis/ICICI Bank/ICId68808e5b13e4f47915d8fbfbbe55110', 15000.00, 170285.90, 'pending'),
(1166, 'S78800076', '2024-11-16', '2024-11-16', '2024-11-16 18:35:35', '', 'UPI/432162245191/UPI/obi2005-3@okaxi/AXIS BANK/AXI305b2e70add74000aa4a3ef0a37dabe4', 13500.00, 149619.03, 'pending'),
(1167, 'S59886897', '2024-12-05', '2024-12-05', '2024-12-05 21:17:35', '', 'UPI/434060983170/Sent from Paytm/9739988071@ptsb/ICICI Bank/PTMD01B1F12564E4D2194C911C9BF3F5412', 12000.00, 182285.90, 'pending'),
(1168, 'S78905669', '2024-11-16', '2024-11-16', '2024-11-16 18:39:44', '', 'INF/INFT/038315025331/Salary         /ARCHANA DIWAN', 13500.00, 163119.03, 'pending'),
(1169, 'S63308333', '2024-12-06', '2024-12-06', '2024-12-06 10:32:21', '', 'UPI/434116747526/caretaker/rkpatil1@oksbi/State Bank Of I/SBIdc0d6069d5664745acfbfeb9902cee3c', 15000.00, 197285.90, 'pending'),
(1170, 'S79748941', '2024-11-16', '2024-11-16', '2024-11-16 20:34:24', '', 'NEFT-SVCB024321302874-R JAYALAKSHMI-R JAYALAKSHMI 2ND HALF OF NOV 2024-109803130005618-SVCB0000098', 13500.00, 176619.03, 'pending'),
(1171, 'S63719860', '2024-12-06', '2024-12-06', '2024-12-06 11:06:29', '', 'NEFT-N341243437655074-APARAJITA SAHA-15DAYS ADVANCE-50100177601573-HDFC0000001', 15000.00, 212285.90, 'pending'),
(1172, 'S80121355', '2024-11-16', '2024-11-16', '2024-11-16 21:40:43', '', 'MMT/IMPS/432121759197/null/RAVI RAJ S/State Bank of I', 11625.00, 188244.03, 'pending'),
(1173, 'S80434449', '2024-11-16', '2024-11-16', '2024-11-16 22:58:50', '', 'FT-MESPOS/REVRENGSTOCT24/EP049242', 80.82, 188324.85, 'pending'),
(1174, 'S70837017', '2024-12-06', '2024-12-06', '2024-12-06 22:05:55', '', 'NEFT-SBIN224341243398-MRS MOHUA MUKHERJEE-/ATTN//INB-00000036831395463-SBIN0009042', 22400.00, 234650.50, 'pending'),
(1175, 'S75317231', '2024-12-07', '2024-12-07', '2024-12-07 12:39:06', '', 'NEFT-N342243440819027-ANURAG SRIVASTAVA-ALOK SRIVASTAVA-00441060006038-HDFC0000001', 27900.00, 262550.50, 'pending'),
(1176, 'S80706988', '2024-11-17', '2024-11-17', '2024-11-17 01:33:39', '', 'NEFT-N322243402959481-BHAVANI-NOV 2ND HALF 2024-00771140203921-HDFC0000001', 12500.00, 130824.85, 'pending'),
(1177, 'S81168941', '2024-11-16', '2024-11-17', '2024-11-17 05:56:09', '', 'FT-MESPOS/REV/RENT/OCT24/EP049242', 449.00, 131273.85, 'pending'),
(1178, 'S89117605', '2024-12-09', '2024-12-09', '2024-12-09 08:15:43', '', 'FT-MESPOS SET 10XX080827 091224', 205133.68, 237684.18, 'pending'),
(1179, 'S82245503', '2024-11-17', '2024-11-17', '2024-11-17 11:50:23', '', 'UPI/468868371912/UPI/abhishek.mn.iis/State Bank Of I/AXI9d6bd59c17604cc38fb77b7256a893e5', 11500.00, 142773.85, 'pending'),
(1180, 'S93026350', '2024-12-09', '2024-12-09', '2024-12-09 15:03:23', '', 'NEFT-KKBKH24344647334-NHK MEDICAL PRIVATE LIMITED-PAYMENT-9739841619-KKBK0000958', 72045.00, 309729.18, 'pending'),
(1181, 'S82376192', '2024-11-17', '2024-11-17', '2024-11-17 11:51:17', '', 'UPI/432224940501/UPI/christinavprabh/State Bank Of I/ICI35f3b109a3ff4f1faa4ad5e7e46df700', 4500.00, 147273.85, 'pending'),
(1182, 'S97140070', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 315372.18, 'pending'),
(1183, 'S82765985', '2024-11-17', '2024-11-17', '2024-11-17 13:08:55', '', 'MMT/IMPS/432213127447/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 160773.85, 'pending'),
(1184, 'S83168600', '2024-11-17', '2024-11-17', '2024-11-17 14:32:20', '', 'NEFT-AXOMB32275094653-SRIRUPA SEN--015010100536585-UTIB0004821', 12500.00, 173273.85, 'pending'),
(1185, 'S85235775', '2024-11-17', '2024-11-17', '2024-11-17 22:24:09', '', 'UPI/468851867229/UPI/manjeetverma161/Punjab National/ICI5efb05c53bed458da215897ec3f0e360', 14000.00, 187273.85, 'pending'),
(1186, 'S87711173', '2024-11-18', '2024-11-18', '2024-11-18 08:31:55', '', 'NEFT-N323243403464711-S RAMACHANDRA RAO-RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 200773.85, 'pending'),
(1187, 'S88771127', '2024-11-18', '2024-11-18', '2024-11-18 11:15:35', '', 'UPI/432389681030/UPI/deepti12karumba/AXIS BANK/SBI92bfef8f88e84e789a204767dd6dcbfe', 10500.00, 211273.85, 'pending'),
(1188, 'S89241742', '2024-11-18', '2024-11-18', '2024-11-18 11:34:01', '', 'UPI/432390842965/UPI/cynthiajimmy@ok/State Bank Of I/SBIfd2ba295b1274ff693d7cf37b8b76cad', 1800.00, 213073.85, 'pending'),
(1189, 'S90372247', '2024-11-18', '2024-11-18', '2024-11-18 12:56:27', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/432376654391/HDF5b4e61c28b38492382435bf9c57bb647', 13500.00, 226573.85, 'pending'),
(1190, 'S90839934', '2024-11-18', '2024-11-18', '2024-11-18 13:16:39', '', 'NEFT-N323243403899686-IGNOXLABS PVT LTD OP1-NEFT  EMHB002 BANGLORE 5020003209-50200032099971-HDFC', 12495.00, 239068.85, 'pending'),
(1191, 'S90839937', '2024-11-18', '2024-11-18', '2024-11-18 13:16:40', '', 'NEFT-N323243403899682-IGNOXLABS PVT LTD OP1-NEFT  EMHB0002 BANGLORE 502000320-50200032099971-HDFC', 13230.00, 252298.85, 'pending'),
(1192, 'S91887312', '2024-11-18', '2024-11-18', '2024-11-18 14:57:08', '', 'BIL/INFT/DKM2588188/16thto30thNovem/ RENU KALAGNANAM', 33000.00, 285298.85, 'pending'),
(1193, 'S92243655', '2024-11-18', '2024-11-18', '2024-11-18 15:23:14', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5431', 12000.00, 297298.85, 'pending'),
(1194, 'S92263663', '2024-11-18', '2024-11-18', '2024-11-18 15:24:49', '', 'CAM/00021HRY/CASH DEP-Other/18-11-24/5433', 1500.00, 298798.85, 'pending'),
(1195, 'S93418829', '2024-11-18', '2024-11-18', '2024-11-18 16:45:10', '', 'MMT/IMPS/432316117723/Ali Helper/SANJEEV SH/HDFC Bank', 3600.00, 22398.85, 'pending'),
(1196, 'S94929916', '2024-11-18', '2024-11-18', '2024-11-18 19:02:59', '', 'INF/INFT/038329979601/AARUSH CONSTRUC', 100000.00, 122398.85, 'pending'),
(1197, 'S95293560', '2024-11-18', '2024-11-18', '2024-11-18 19:39:18', '', 'MMT/IMPS/432319525371/Nov30/VIDYASRIVA/Axis Bank', 23625.00, 146023.85, 'pending'),
(1198, 'S95317245', '2024-11-18', '2024-11-18', '2024-11-18 19:42:56', '', 'MMT/IMPS/432319545404/Nov30/VLAKSHMIAM/Axis Bank', 12600.00, 158623.85, 'pending'),
(1199, 'S96680226', '2024-11-19', '2024-11-19', '2024-11-19 00:49:50', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/432407404179/HDF13aa8b0039b44fe7bb85fc842f476ea5', 12500.00, 171123.85, 'pending'),
(1200, 'S98613032', '2024-11-19', '2024-11-19', '2024-11-19 09:47:13', '', 'INF/INFT/038332871671/44855766     /EZEE MEDFIND LLP    /', 1300.00, 172423.85, 'pending'),
(1201, 'S99309776', '2024-11-19', '2024-11-19', '2024-11-19 11:23:38', '', 'UPI/469065238185/salary 16 to 30/pallavisinhamis/ICICI Bank/ICI2ad8b12a9fff4a2994199b9f7e18fcaf', 15000.00, 187423.85, 'pending'),
(1202, 'S11434339', '2024-11-20', '2024-11-20', '2024-11-20 17:26:20', '', 'CMS/ CMS4662594714/SUKINO HEALTHCARE SOLUTIONS PR', 27291.00, 154714.85, 'pending'),
(1203, 'S16777086', '2024-11-21', '2024-11-21', '2024-11-21 11:04:28', '', 'UPI/432626433487/UPI/sandhyanair199@/ICICI Bank/ICI3155b308a5ce40d0afe24aed6f7bd000', 12000.00, 166714.85, 'pending'),
(1204, 'S19082966', '2024-11-21', '2024-11-21', '2024-11-21 14:05:30', '', 'NEFT-AXISCN0823448800-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 159954.45, 'pending'),
(1205, 'S25554007', '2024-11-22', '2024-11-22', '2024-11-22 07:37:39', '', 'UPI/432780870440/caretaker/rkpatil1@oksbi/State Bank Of I/SBI9a9f4cb52eaf4d1a8d68b1547d5b177c', 15000.00, 129454.45, 'pending'),
(1206, 'S27420133', '2024-11-22', '2024-11-22', '2024-11-22 12:38:03', '', 'UPI/432796300568/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI777c692ff028408bafb59a5402522716', 12600.00, 133392.45, 'pending'),
(1207, 'S39453747', '2024-11-24', '2024-11-24', '2024-11-24 10:20:15', '', 'CMS/ CMS4669666771/SUKINO HEALTHCARE SOLUTIONS PR', 4704.00, 120096.45, 'pending'),
(1208, 'S52285457', '2024-11-25', '2024-11-25', '2024-11-25 20:33:27', '', 'NEFT-CMS3302466086620-HEALTHVISTA INDIA PRIVATE LIMITE-PAYMENT-6447052626-KKBK0000958', 33997.00, 154093.45, 'pending'),
(1209, 'S56045368', '2024-11-26', '2024-11-26', '2024-11-26 10:15:07', '', 'UPI/433122951714/UPI/yusufshahpurwal/HDFC BANK LTD/HDF8368d24241df4227ac6b70eb0d6956d2', 13500.00, 167593.45, 'pending'),
(1210, 'M3735849', '2024-11-26', '2024-11-26', '2024-11-26 19:15:41', '', 'TRF/MADAN/055778/ICI/23.11.2024', 25000.00, 192593.45, 'pending'),
(1211, 'S91139662', '2024-11-29', '2024-11-29', '2024-11-29 16:55:23', '', 'UPI/433474709893/UPI/kanchanaseshadr/HDFC BANK LTD/HDF387ad8fb3d1646edb7624e068c7376c0', 29295.00, 152888.45, 'pending'),
(1212, 'S97922697', '2024-11-30', '2024-11-30', '2024-11-30 11:24:55', '', 'MMT/IMPS/433511351600/Dec2024 Surende/RAJESH DES/HDFC Bank', 27900.00, 180788.45, 'pending'),
(1213, 'S5509059', '2024-12-01', '2024-12-01', '2024-12-01 00:08:53', '', 'UPI/470234442140/UPI/nuqranaqvi@okic/ICICI Bank/ICI0e23a5d0c0144ff0a6474e25b7ecfdcc', 14000.00, 194788.45, 'pending'),
(1214, 'S6697751', '2024-12-01', '2024-12-01', '2024-12-01 07:00:00', '', 'BIL/INFT/DL15102214/December first / DHANYA ROS MATH', 14000.00, 208788.45, 'pending'),
(1215, 'S6792085', '2024-12-01', '2024-12-01', '2024-12-01 07:31:19', '', 'MMT/IMPS/433607157093/Dec15/VLAKSHMIAM/Axis Bank', 12600.00, 221388.45, 'pending'),
(1216, 'S9474255', '2024-12-01', '2024-12-01', '2024-12-01 13:41:23', '', 'BIL/INFT/DL15241533/MI Khan Elder c/ SYED ABDUL MUSS', 12750.00, 234138.45, 'pending'),
(1217, 'S13105703', '2024-12-02', '2024-12-02', '2024-12-02 02:01:42', '', 'NEFT-N337243426973380-ANVAYAA KIN CARE PVT LTD-NEFT    AAYUSH HHC 50200019583158-50200019583158-HDF', 23760.00, 113397.45, 'pending'),
(1218, 'S14175281', '2024-12-02', '2024-12-02', '2024-12-02 06:48:49', '', 'MMT/IMPS/433706505623/Dec15/VIDYASRIVA/Axis Bank', 23625.00, 137022.45, 'pending'),
(1219, 'S15760326', '2024-12-02', '2024-12-02', '2024-12-02 09:30:09', '', 'UPI/470342152061/18th to 30th No/christinavprabh/State Bank Of I/AXI8ddd925c99944297a2a6ae1dc7488d41', 11700.00, 148722.45, 'pending'),
(1220, 'S16532005', '2024-12-02', '2024-12-02', '2024-12-02 10:39:10', '', 'MMT/IMPS/433710570676/Bill Payment/MANGALA KO/State Bank of I', 9000.00, 157722.45, 'pending'),
(1221, 'S24806421', '2024-12-02', '2024-12-02', '2024-12-02 20:43:18', '', 'MMT/IMPS/433720032204/IMPS/SRIRUPASEN/Axis Bank', 12500.00, 170222.45, 'pending'),
(1222, 'S25433966', '2024-12-02', '2024-12-02', '2024-12-02 21:50:11', '', 'UPI/470374003846/UPI/obi2005-3@okaxi/AXIS BANK/AXI59ad74bbe25842bfb6fdf0e70b52d58a', 13500.00, 183722.45, 'pending'),
(1223, 'S25735864', '2024-12-02', '2024-12-02', '2024-12-02 22:36:44', '', 'UPI/9901537347@axl/Payment from Ph/Union Bank of I/132883836942/AXL7cbc4b44082e4ffd9fb3251fac112042', 12500.00, 196222.45, 'pending'),
(1224, 'S33545228', '2024-12-03', '2024-12-03', '2024-12-03 16:21:54', '', 'UPI/sudip.sen0120-1/UPI/HDFC BANK LTD/433866408881/HDFdd60b004d4df4e61abcc9c448f27fdd6', 13500.00, 209663.45, 'pending'),
(1225, 'S35992827', '2024-12-03', '2024-12-03', '2024-12-03 19:27:26', '', 'BIL/INFT/DL36083050/NA/ UMA SATYEN VYAS', 34000.00, 83663.45, 'pending'),
(1226, 'S36090241', '2024-12-03', '2024-12-03', '2024-12-03 19:41:30', '', 'UPI/433879338733/UPI/jayastev-yahoo./INDIAN OVERSEAS/HDF2012fc9348c24b8ab630f52a0a0db419', 29250.00, 112913.45, 'pending'),
(1227, 'S36174722', '2024-12-03', '2024-12-03', '2024-12-03 20:01:16', '', 'UPI/470406596078/Attendant for M/madhavi.krishna/Union Bank of I/ICIc2f1bdf31a5f4bfa9f2d5800d5bc0961', 13500.00, 126413.45, 'pending'),
(1228, 'S36251939', '2024-12-03', '2024-12-03', '2024-12-03 20:12:19', '', 'UPI/433825525338/UPI Payment/9884018900@icic/ICICI Bank/ICI4550286beaf44a0883cb57b872dedf93', 13500.00, 139913.45, 'pending'),
(1229, 'S36352356', '2024-12-03', '2024-12-03', '2024-12-03 20:13:42', '', 'UPI/anuragverma150-/UPI/AXIS BANK/433855186194/AXI1c25ec598b594f1186e3445477748c06', 13500.00, 153413.45, 'pending'),
(1230, 'S36938342', '2024-12-03', '2024-12-03', '2024-12-03 21:28:23', '', 'UPI/433891688658/Nursing/9845894222@supe/AXIS BANK/SMY241203212868WFXIGOHBUCVIF9W6FMCM', 13500.00, 166913.45, 'pending'),
(1231, 'S37109923', '2024-12-03', '2024-12-03', '2024-12-03 21:52:25', '', 'UPI/akkothiyal@okhd/UPI/HDFC BANK LTD/433886984451/HDF4ee2107685ba4711b450b71ff494d8b1', 1666.00, 168579.45, 'pending'),
(1232, 'S37238536', '2024-12-03', '2024-12-03', '2024-12-03 22:04:48', '', 'MMT/IMPS/433822923147/Bill Payment/RAVI RAJ S/State Bank of I', 11625.00, 180204.45, 'pending'),
(1233, 'S37307199', '2024-12-03', '2024-12-03', '2024-12-03 22:16:54', '', 'INF/INFT/038483986991/salary         /ARCHANA DIWAN', 13500.00, 193704.45, 'pending'),
(1234, 'S37708683', '2024-12-03', '2024-12-03', '2024-12-03 23:40:59', '', 'BIL/INFT/DL36143237/Quick Pay FT/Phuli Debnath/029805005633SOWMYA RANGARAJ', 24334.00, 218038.45, 'pending'),
(1235, 'S39375165', '2024-12-04', '2024-12-04', '2024-12-04 08:31:45', '', 'NEFT-SVCB024339842606-R JAYALAKSHMI-R JAYALAKSHMI1ST HALF DEC 2024-109803130005618-SVCB0000098', 13500.00, 231538.45, 'pending'),
(1236, 'M3270273', '2024-12-04', '2024-12-04', '2024-12-04 11:12:48', '', 'BY CASH  - HRBR LAYOUT', 27000.00, 149176.30, 'pending'),
(1237, 'M3331984', '2024-12-04', '2024-12-04', '2024-12-04 12:13:40', '', 'BY CASH -BANGALORE - ULSOOR C', 13500.00, 162676.30, 'pending'),
(1238, 'S46403214', '2024-12-04', '2024-12-04', '2024-12-04 18:49:09', '', 'MMT/IMPS/433918467778/tarunsalary/ASULOCHANA/Bankof Baroda', 13500.00, 176176.30, 'pending'),
(1239, 'S46699194', '2024-12-04', '2024-12-04', '2024-12-04 19:16:59', '', 'MMT/IMPS/433919546974/ReqPay/Mr  NAGARA/State Bank of I', 25500.00, 201676.30, 'pending'),
(1240, 'S47489464', '2024-12-04', '2024-12-04', '2024-12-04 21:20:21', '', 'UPI/433941916665/Caregiver Sanja/ayyersh@oksbi/State Bank Of I/SBI862f7d0ca92048c08364fe7a488ebe13', 13500.00, 215176.30, 'pending'),
(1241, 'S47772488', '2024-12-04', '2024-12-04', '2024-12-04 21:30:45', '', 'MMT/IMPS/433921101469/Ali Payment/SANJEEV SH/HDFCBank', 9000.00, 224176.30, 'pending'),
(1242, 'S47683170', '2024-12-04', '2024-12-04', '2024-12-04 21:45:31', '', 'UPI/470515560753/UPI/abhishek.mn.iis/State Bank Of I/AXI201a8433bdeb4c61a56be3cce362b366', 11500.00, 235676.30, 'pending'),
(1243, 'S48813346', '2024-12-05', '2024-12-05', '2024-12-05 02:02:00', '', 'NEFT-N340243434553900-IGNOXLABS PVT LTD OP1-NEFT  EMHB042 BANGLORE DC 5020003-50200032099971-HDFC', 7056.00, 242732.30, 'pending'),
(1244, 'S48812502', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434591254-IGNOXLABS PVT LTD OP1-NEFT  EMHB038 BANGLORE DC 5020003-50200032099971-HDFC', 4165.00, 246897.30, 'pending'),
(1245, 'S48814152', '2024-12-05', '2024-12-05', '2024-12-05 02:02:12', '', 'NEFT-N340243434581711-IGNOXLABS PVT LTD OP1-NEFT  EMHB037 BANGLORE DC 5020003-50200032099971-HDFC', 13230.00, 260127.30, 'pending'),
(1246, 'S52143733', '2024-12-05', '2024-12-05', '2024-12-05 08:36:12', '', 'NEFT-N340243434762983-S RAMACHANDRA RAO-S RAMACHANDRA RAO-00101570001187-HDFC0000001', 13500.00, 123231.30, 'pending'),
(1247, 'C44882503', '2024-12-05', '2024-12-05', '2024-12-05 12:55:11', '', 'UPI/434063396426/UPI/deepti12karumba/AXIS BANK/SBIe15a2b9ff7474b85a1617f351d781d06', 13500.00, 136731.30, 'pending'),
(1248, 'C52475339', '2024-12-05', '2024-12-05', '2024-12-05 16:24:05', '', 'NEFT-YESIG43400064650-INDIA HOME HEALTH CARE P L OPERATIO-512202424 71193-002281400004518-YESB00000', 18900.00, 155631.30, 'pending'),
(1249, 'S56599551', '2024-12-05', '2024-12-05', '2024-12-05 16:49:54', '', 'NEFT-AXISCN0840109369-RAZORPAY SOFTWARE PRIVATE LIMITED --RAZORPAY SOFTWARE PVT LTD FUND-9170200412', 38079.60, 193710.90, 'pending'),
(1250, 'S57986128', '2024-12-05', '2024-12-05', '2024-12-05 18:15:42', '', 'BIL/INFT/DL56694654/1stto15thDecnur/ RENU KALAGNANAM', 33000.00, 226710.90, 'pending'),
(1251, 'S59404764', '2024-12-05', '2024-12-05', '2024-12-05 20:05:35', '', 'NEFT-N340243437019556-BHAVANI-DEC 1ST HALF-00771140203921-HDFC0000001', 13500.00, 155285.90, 'pending'),
(1252, 'S59643664', '2024-12-05', '2024-12-05', '2024-12-05 20:36:31', '', 'UPI/470676510520/Dec 1 to 15 sal/pallavisinhamis/ICICI Bank/ICId68808e5b13e4f47915d8fbfbbe55110', 15000.00, 170285.90, 'pending'),
(1253, 'S59886897', '2024-12-05', '2024-12-05', '2024-12-05 21:17:35', '', 'UPI/434060983170/Sent from Paytm/9739988071@ptsb/ICICI Bank/PTMD01B1F12564E4D2194C911C9BF3F5412', 12000.00, 182285.90, 'pending'),
(1254, 'S63308333', '2024-12-06', '2024-12-06', '2024-12-06 10:32:21', '', 'UPI/434116747526/caretaker/rkpatil1@oksbi/State Bank Of I/SBIdc0d6069d5664745acfbfeb9902cee3c', 15000.00, 197285.90, 'pending'),
(1255, 'S63719860', '2024-12-06', '2024-12-06', '2024-12-06 11:06:29', '', 'NEFT-N341243437655074-APARAJITA SAHA-15DAYS ADVANCE-50100177601573-HDFC0000001', 15000.00, 212285.90, 'pending'),
(1256, 'S70837017', '2024-12-06', '2024-12-06', '2024-12-06 22:05:55', '', 'NEFT-SBIN224341243398-MRS MOHUA MUKHERJEE-/ATTN//INB-00000036831395463-SBIN0009042', 22400.00, 234650.50, 'pending'),
(1257, 'S75317231', '2024-12-07', '2024-12-07', '2024-12-07 12:39:06', '', 'NEFT-N342243440819027-ANURAG SRIVASTAVA-ALOK SRIVASTAVA-00441060006038-HDFC0000001', 27900.00, 262550.50, 'pending'),
(1258, 'S89117605', '2024-12-09', '2024-12-09', '2024-12-09 08:15:43', '', 'FT-MESPOS SET 10XX080827 091224', 205133.68, 237684.18, 'pending'),
(1259, 'S93026350', '2024-12-09', '2024-12-09', '2024-12-09 15:03:23', '', 'NEFT-KKBKH24344647334-NHK MEDICAL PRIVATE LIMITED-PAYMENT-9739841619-KKBK0000958', 72045.00, 309729.18, 'pending'),
(1260, 'S97140070', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 315372.18, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `employee_payouts`
--

CREATE TABLE `employee_payouts` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `service_type` varchar(255) NOT NULL,
  `total_days` int(11) NOT NULL,
  `worked_days` int(11) NOT NULL,
  `daily_rate` decimal(10,2) NOT NULL,
  `total_pay` decimal(10,2) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_payouts`
--

INSERT INTO `employee_payouts` (`id`, `employee_id`, `employee_name`, `service_type`, `total_days`, `worked_days`, `daily_rate`, `total_pay`, `status`, `updated_at`) VALUES
(1, 30, 'Shobha', 'Care_taker', 15, 6, 1000.00, 8400.00, 'Pending', '2024-12-13 12:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `emp_addresses`
--

CREATE TABLE `emp_addresses` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp_addresses`
--

INSERT INTO `emp_addresses` (`id`, `emp_id`, `address_line1`, `address_line2`, `landmark`, `city`, `state`, `pincode`) VALUES
(1, 57, 'thumkunta, secundrabad', 'alwal', 'near sbi ', 'hyderabad', 'Telangana', '500010'),
(2, 57, 'thumkunta, secundrabad', 'alwal', 'near sbi ', 'hyderabad', 'Nagaland', '500010'),
(3, 58, 'thumkunta, secundrabad', 'alwal', 'near sbi ', 'hyderabad', 'Telangana', '500010'),
(4, 58, 'thumkunta, secundrabad', 'alwal', 'near sbi ', 'hyderabad', 'Manipur', '500010'),
(5, 60, 'thumkunta, secundrabad', 'alwal', 'near sbi ', 'hyderabad', 'Telangana', '500010'),
(6, 60, 'thumkunta, secundrabad', 'bollaram', 'near realiance smart', 'hyderabad', 'Madhya Pradesh', '500010'),
(7, 61, 'thumkunta, secundrabad', 'alwal', 'near sbi ', 'hyderabad', 'Telangana', '500010'),
(8, 61, 'thumkunta, secundrabad', 'bollaram', 'near realiance smart', 'hyderabad', 'Madhya Pradesh', '500010'),
(9, 62, '8-7-270/1, Hanuman nagar, Ganesh Nagar', 'Karimnagar', '', 'Karimnagar', 'Telangana', '505001'),
(10, 63, '8-7-270/1, Hanuman nagar, Ganesh Nagar', 'Karimnagar', '', 'Karimnagar', 'Telangana', '505001'),
(11, 83, '8-7-270/1, Hanuman nagar, Ganesh Nagar', 'Karimnagar', '', 'Karimnagar', 'Telangana', '505001');

-- --------------------------------------------------------

--
-- Table structure for table `emp_documents`
--

CREATE TABLE `emp_documents` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_type` varchar(50) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp_documents`
--

INSERT INTO `emp_documents` (`id`, `emp_id`, `file_path`, `file_type`, `document_name`, `created_at`) VALUES
(1, 57, 'uploads/Screenshot 2024-08-30 113755.png', 'image/png', 'PAN card', '2024-12-13 09:10:24'),
(2, 57, 'uploads/Screenshot 2024-08-29 161437.png', 'image/png', 'PAN card', '2024-12-13 09:10:24'),
(3, 59, 'uploads/other_doc_1734083518_DRS_08_20@Jan 2024_payslip.pdf', NULL, 'PAN card', '2024-12-13 09:51:58'),
(4, 59, 'uploads/other_doc_1734083518_DRS_08_20@Dec 2023_payslip.pdf', NULL, 'experience certificate', '2024-12-13 09:51:58'),
(5, 60, 'uploads/other_doc_1734083843_Screenshot 2024-08-29 161437.png', NULL, 'PAN card', '2024-12-13 09:57:23'),
(6, 60, 'uploads/other_doc_1734083843_DRS_08_20@Feb 2024_payslip.pdf', NULL, 'training certificate', '2024-12-13 09:57:23'),
(7, 61, 'uploads/other_doc_1734084025_Screenshot 2024-08-29 161437.png', NULL, 'PAN card', '2024-12-13 10:00:25'),
(8, 61, 'uploads/other_doc_1734084025_DRS_08_20@Feb 2024_payslip.pdf', NULL, 'training certificate', '2024-12-13 10:00:25'),
(9, 62, '../uploads/other_doc_1734342058_invoice_INV018569 (2).pdf', NULL, 'pan', '2024-12-16 09:40:58'),
(10, 63, '../uploads/other_doc_1734415581_invoice_INV018569.pdf', NULL, 'pan', '2024-12-17 06:06:21');

-- --------------------------------------------------------

--
-- Table structure for table `emp_info`
--

CREATE TABLE `emp_info` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(150) DEFAULT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `role` varchar(150) DEFAULT NULL,
  `qualification` varchar(150) DEFAULT NULL,
  `experience` varchar(150) DEFAULT NULL,
  `doj` date NOT NULL,
  `aadhar` varchar(150) NOT NULL,
  `police_verification` varchar(150) DEFAULT NULL,
  `police_verification_form` varchar(500) DEFAULT NULL,
  `daily_rate8` varchar(250) NOT NULL,
  `daily_rate12` varchar(250) NOT NULL,
  `daily_rate24` varchar(250) NOT NULL,
  `adhar_upload_doc` varchar(500) DEFAULT NULL,
  `bank_name` varchar(150) DEFAULT NULL,
  `bank_account_no` varchar(150) DEFAULT NULL,
  `ifsc_code` varchar(150) NOT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `reference` varchar(250) DEFAULT NULL,
  `vendor_name` varchar(250) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `vendor_contact` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp_info`
--

INSERT INTO `emp_info` (`id`, `name`, `dob`, `gender`, `phone`, `email`, `role`, `qualification`, `experience`, `doj`, `aadhar`, `police_verification`, `police_verification_form`, `daily_rate8`, `daily_rate12`, `daily_rate24`, `adhar_upload_doc`, `bank_name`, `bank_account_no`, `ifsc_code`, `branch`, `reference`, `vendor_name`, `vendor_id`, `vendor_contact`) VALUES
(65, 'UMESH BAURI', '0000-00-00', '', '9749316054', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(66, 'ESTHER NIANGNEIHOI', '0000-00-00', '', '9863376948', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(67, 'RACHITA MANDAL', '0000-00-00', '', '6296091342', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(68, 'BILGRIK G MOMIN', '0000-00-00', '', '9366628427', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(69, 'SAYAN SARKAR', '0000-00-00', '', '7319090711', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(70, 'TARUN BANSRIAR', '0000-00-00', '', '8617517496', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(71, 'RAMJIT ORAON', '0000-00-00', '', '7294092255', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(72, 'SILINDA KURKALANG', '0000-00-00', '', '8014026113', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(73, 'BANDANA ROY', '0000-00-00', '', '7029826065', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(74, 'RANJEET SINGH', '0000-00-00', '', '9670804760', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(75, 'SUMIT KUMAR KASHYAP', '0000-00-00', '', '7795868219', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(76, 'SHIVAM VERMA', '0000-00-00', '', '7054037434', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(77, 'UTTAM DEBNATH', '0000-00-00', '', '9089547909', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(78, 'SHASHI MUNDA', '0000-00-00', '', '7366010355', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(79, 'PROSENJIT ADAK', '0000-00-00', '', '6296238055', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(80, 'SHARADA DEVI', '0000-00-00', '', '7899753873', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(81, 'RAJESH', '0000-00-00', '', '7880613861', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(82, 'PRITY GARI', '0000-00-00', '', '7856007016', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, ''),
(87, 'test', '0000-00-00', '', '9749316054', '', 'fully_trained_nurse', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `emp_info_16-12`
--

CREATE TABLE `emp_info_16-12` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(150) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `role` varchar(150) NOT NULL,
  `qualification` varchar(150) NOT NULL,
  `experience` varchar(150) NOT NULL,
  `doj` date NOT NULL,
  `aadhar` varchar(150) NOT NULL,
  `police_verification` varchar(150) NOT NULL,
  `police_verification_form` varchar(500) NOT NULL,
  `status` varchar(150) NOT NULL,
  `daily_rate8` varchar(250) NOT NULL,
  `daily_rate12` varchar(250) NOT NULL,
  `daily_rate24` varchar(250) NOT NULL,
  `adhar_upload_doc` varchar(500) NOT NULL,
  `bank_name` varchar(150) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `bank_account_no` varchar(150) NOT NULL,
  `ifsc_code` varchar(150) NOT NULL,
  `reference` varchar(250) NOT NULL,
  `vendor_name` varchar(250) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `vendor_contact` varchar(250) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp_info_16-12`
--

INSERT INTO `emp_info_16-12` (`id`, `name`, `dob`, `gender`, `phone`, `email`, `role`, `qualification`, `experience`, `doj`, `aadhar`, `police_verification`, `police_verification_form`, `status`, `daily_rate8`, `daily_rate12`, `daily_rate24`, `adhar_upload_doc`, `bank_name`, `branch`, `bank_account_no`, `ifsc_code`, `reference`, `vendor_name`, `vendor_id`, `vendor_contact`, `address`) VALUES
(20, 'Vinay.k', '1995-11-02', 'male', '9856321478', 'vinaynetha821@gmail.com', 'care_taker', 'degree', '2-3', '2024-12-01', '897453201532', 'pending', '', 'active', '', '', '', '', 'hdfc', '', '2987985431666', 'ifsc4442215', 'vendors', 'poojith', 0, '9133380809', 'uppal,hyderabad'),
(25, 'saritha', '2024-12-01', 'female', '9856321478', 'saritha@gmail.com', 'fully_trained_nurse', '10th', '2-3', '2024-12-05', '321456987826', 'verified', 'uploads/Screenshot 2024-08-30 113743.png', 'active', '', '', '', '', 'BARCLAYS BANK', '', '2987985431666', 'ifsc4442215', '', '', 0, '', 'thumkunta, secundrabad'),
(27, 'srinithi', '2024-12-01', 'female', '9856321478', 'srinithi@gmail.com', 'semi_trained_nurse', 'intermediate', '2-3', '2024-12-05', '321456987899', 'verified', '', 'active', '2000', '3000', '4000', 'uploads/Screenshot 2024-08-29 155057.png', 'CHINATRUST COMMERCIAL BANK LIMITED', '', '29879854316', 'ifsc4442258', 'vendors', 'poojith', 0, '9133380809', 'thumkunta, secundrabad'),
(29, 'bhavani', '2024-12-03', 'male', '9553897696', 'allushyamk@gmail.com', 'care_taker', '10th', '0-1', '2024-12-05', '321456987899', 'verified', 'uploads/payslip.pdf', 'active', '2100', '3100', '4100', 'uploads/Increment Letter 2024 - Alekya.pdf', 'CANARA BANK', '', '2987985431666', 'ifsc4442215', 'vendors', 'savitha', 23, '8897791988', 'thumkunta, secundrabad'),
(30, 'Shobha', '2024-12-01', 'female', '9874589745', 'shobha@gmail.com', 'fully_trained_nurse', '10th', '4-5', '2024-12-06', '321456987899', 'verified', 'uploads/Increment Letter 2024 - Alekya.pdf', 'active', '1000', '1200', '1500', 'uploads/payslip (1).pdf', 'AXIS BANK', '', '2987985431666', 'ifsc4442258', 'vendors', 'poojith', NULL, '9133380809', 'thumkunta, secundrabad'),
(31, 'poorvi', '2024-12-01', 'female', '9874563214', 'poorvi@gmail.com', 'care_taker', 'intermediate', '2-3', '2024-12-06', '321456987899', 'verified', 'uploads/payslip.pdf', 'active', '1000', '1500', '2000', 'uploads/DRS_08_20@Jan 2024_payslip.pdf', 'CANARA BANK', '', '2987985431666', 'ifsc4442215', 'vendors', 'savitha', NULL, '8897791988', 'thumkunta, secundrabad'),
(39, 'alekhya sripathi', '2024-12-06', 'Male', '9553897696', 'allushyamk@gmail.com', 'care_taker', '10th', '0-1', '2024-12-05', '321456987899', 'verified', 'uploads/6752cc92acfc6_DRS_08_20@Feb 2024_payslip.pdf', 'Active', '500', '1000', '1500', 'uploads/6752cc92acd8e_DRS_08_20@Feb 2024_payslip.pdf', 'BANK OF AMERICA', '', '2987985431666', 'ifsc4442215', 'vendors', 'poojith', NULL, '9133380809', 'thumkunta, secundrabad'),
(41, 'alekhya kodam', '2024-12-07', 'female', '9553897696', 'allushyamk@gmail.com', 'care_taker', '10th', '0-1', '2024-12-05', '321456987899', 'verified', 'uploads/6753dc0d6602e_DRS_08_20@Feb 2024_payslip.pdf', 'active', '500', '1000', '1500', 'uploads/6753dc0d652a5_DRS_08_20@Nov 2023_payslip.pdf', 'CENTRAL BANK OF INDIA', '', '2987985431666', 'ifsc4442215', 'vendors', 'savitha', NULL, '8897791988', 'thumkunta, secundrabad'),
(42, 'Screenshot 2024-08-30 113743.png', '2024-12-07', 'female', '9553897696', 'allushyamk@gmail.com', 'care_taker', 'intermediate', '0-1', '2024-12-06', '321456987899', 'verified', '', 'active', '500', '1000', '1500', '', 'ANDHRA BANK', '', '29879854316', 'ifsc4442215', 'vendors', 'savitha', NULL, '8897791988', 'thumkunta, secundrabad'),
(43, 'alekhya kodam', '2024-12-07', 'male', '9553897696', 'allushyamk@gmail.com', 'nanny', '10th', '0-1', '2024-12-07', '321456987899', 'verified', 'uploads/6753e3c240dd1_Screenshot 2024-08-30 113755.png', 'active', '2000', '2500', '3000', 'uploads/6753e3c240b24_Screenshot 2024-08-30 113755.png', 'CHINATRUST COMMERCIAL BANK LIMITED', '', '2987985431666', 'ifsc4442215', 'vendors', 'poojith', NULL, '9133380809', 'thumkunta, secundrabad'),
(44, 'savitri', '1990-12-07', 'female', '9874563214', 'savitri@gmail.com', 'fully_trained_nurse', 'degree', '2-3', '2024-12-07', '321456987899', 'verified', 'uploads/6753ef28b47ff_Screenshot 2024-08-29 155057.png', 'active', '500', '1000', '1500', 'uploads/6753ef28b450c_Screenshot 2024-08-29 175018.png', 'CENTRAL BANK OF INDIA', '', '2987985431666', 'ifsc4442215', 'vendors', 'punarv', NULL, '8897791988', 'thumkunta, secundrabad'),
(45, 'ramu', '1980-12-01', 'male', '9874563214', 'ramu@gmail.com', 'semi_trained_nurse', 'degree', '2-3', '2024-12-18', '321456987899', 'verified', 'uploads/6753f0cd2e5d2_DRS_08_20@Nov 2023_payslip.pdf', 'active', '500', '1000', '1500', 'uploads/6753f0cd2e2c6_DRS_08_20@Nov 2023_payslip.pdf', 'CANARA BANK', '', '2987985431666', 'ifsc4442215', 'vendors', 'poojith', NULL, '9133380809', 'thumkunta, secundrabad'),
(50, 'alekhya kodam', '2024-12-04', 'female', '9553897696', 'allushyamk@gmail.com', 'care_taker', '10th', '0-1', '2024-12-10', '321456987899', 'verified', '', 'active', '500', '1000', '1500', '', 'CITI BANK', '', '2987985431666', 'ifsc4442215', 'ayush', '', NULL, '', 'thumkunta, secundrabad'),
(51, 'alekhya kodam', '2024-12-04', 'female', '9553897696', 'allushyamk@gmail.com', 'care_taker', '10th', '0-1', '2024-12-10', '321456987899', 'verified', '', 'active', '500', '1000', '1500', '', 'CITI BANK', '', '2987985431666', 'ifsc4442215', 'ayush', '', NULL, '', 'thumkunta, secundrabad'),
(52, 'soujanya', '2024-12-10', 'female', '9874563214', 'soujanya@gmail.com', 'fully_trained_nurse', 'intermediate', '0-1', '2024-12-10', '321456987899', 'verified', '', 'active', '500', '1000', '1500', '', 'CANARA BANK', '', '2987985431666', 'ifsc4442215', 'vendors', 'savitha', NULL, '8897791988', 'thumkunta, secundrabad'),
(53, 'srujan', '2024-12-04', 'male', '9856321478', 'srujan@gmail.com', 'care_taker', 'degree', '2-3', '2024-12-26', '321456987899', 'verified', '', 'active', '500', '1000', '1500', '', 'B N P PARIBAS', '', '2987985431666', 'ifsc4442215', 'vendors', 'savitha', NULL, '8897791988', 'thumkunta, secundrabad'),
(54, 'poojith', '2024-12-01', 'male', '9553897696', 'poojith@gmail.com', 'fully_trained_nurse', '10th', '0-1', '2024-12-01', '321456987899', 'verified', '', 'active', '500', '1000', '1500', '', 'B N P PARIBAS', '', '2987985431666', 'ifsc4442215', 'vendors', 'savitha', NULL, '8897791988', 'thumkunta, secundrabad'),
(55, 'Soujanya', '2024-12-10', 'female', '9492003253', 'sspandrala261126@gmail.com', 'semi_trained_nurse', 'degree', '4-5', '2024-12-10', '935762545822', 'verified', '', 'active', '252', '450', '800', '', 'BARCLAYS BANK', '', '955636253336356', 'SBIN0012502', 'vendors', 'soumya', NULL, '8292003253', '8-7-270/1, Hanuman nagar, Ganesh Nagar\r\nKarimnagar');

-- --------------------------------------------------------

--
-- Table structure for table `emp_info_old`
--

CREATE TABLE `emp_info_old` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(150) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `role` varchar(150) NOT NULL,
  `qualification` varchar(150) NOT NULL,
  `experience` varchar(150) NOT NULL,
  `doj` date NOT NULL,
  `aadhar` varchar(150) NOT NULL,
  `police_verification` varchar(150) NOT NULL,
  `daily_rate` decimal(50,0) NOT NULL,
  `status` varchar(150) NOT NULL,
  `termination_date` date NOT NULL,
  `document` varchar(255) NOT NULL,
  `bank_name` varchar(150) NOT NULL,
  `bank_account_no` varchar(150) NOT NULL,
  `ifsc_code` varchar(150) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp_info_old`
--

INSERT INTO `emp_info_old` (`id`, `name`, `dob`, `gender`, `phone`, `email`, `role`, `qualification`, `experience`, `doj`, `aadhar`, `police_verification`, `daily_rate`, `status`, `termination_date`, `document`, `bank_name`, `bank_account_no`, `ifsc_code`, `address`) VALUES
(3, 'alekhya kodam', '2024-01-02', 'female', '9553897696', 'allushyamk@gmail.com', 'admin', '10th', '0-1', '0000-00-00', '', 'verified', 1000, 'active', '2024-12-03', 'uploads/Alekhya sripathi.docx', 'sbi', '', 'ifsc4442215', 'thumkunta, secundrabad'),
(7, 'Soujanya', '1997-02-11', 'female', '9492003253', 'sspandrala261126@gmail.com', 'manager', 'degree', '2-3', '2024-12-02', '935767756357', 'verified', 2400, 'active', '0000-00-00', 'uploads/292022_22290230535_HTNO_2291909368_081120241224.pdf', 'SBI', '955636253336356', 'SBIN0012502', '8-7-270/1, Hanuman nagar, Ganesh Nagar\r\nKarimnagar');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expense_id` int(11) NOT NULL,
  `expense_type` varchar(255) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `entity_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `date_incurred` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL,
  `beneficiary_account_number` varchar(100) NOT NULL,
  `beneficiary_ifsc` varchar(100) NOT NULL,
  `debit_account_number` varchar(100) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `additional_details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expense_id`, `expense_type`, `entity_id`, `entity_name`, `description`, `amount`, `date_incurred`, `status`, `payment_status`, `beneficiary_account_number`, `beneficiary_ifsc`, `debit_account_number`, `payment_mode`, `additional_details`, `created_at`, `updated_at`) VALUES
(1, 'Employee Expense Claim', 0, 'saritha', 'testing', 12000.00, '2024-12-13', 'Pending', NULL, '', '', '', '', NULL, '2024-12-20 04:29:31', '2024-12-20 04:29:31'),
(2, 'Employee Expense Claim', 0, 'poorvi', 'TEST2', 1000.00, '2024-12-12', 'Pending', NULL, '', '', '', '', NULL, '2024-12-20 04:50:56', '2024-12-20 04:50:56'),
(3, 'Employee Expense Claim', 53, 'srujan', 'test3', 250.00, '2024-12-05', 'Pending', NULL, '', '', '', '', NULL, '2024-12-20 04:53:58', '2024-12-20 04:53:58'),
(4, 'Employee Expense Claim', 56, 'vamshi', 'test4', 250.00, '2024-12-10', 'Pending', NULL, '', '', '', '', NULL, '2024-12-20 06:57:50', '2024-12-20 06:57:50'),
(5, 'Employee Expense Claim', 31, 'savitha123', 'test5', NULL, '2024-12-18', 'Pending', NULL, '', '', '', '', NULL, '2024-12-20 06:58:57', '2024-12-20 06:58:57'),
(6, 'Employee Expense Claim', 36, 'anuja', 'TEST8', 4000.00, '2024-12-18', 'Pending', NULL, '', '', '', '', NULL, '2024-12-20 07:01:02', '2024-12-20 07:01:02'),
(7, 'Employee Expense Claim', 33, 'punarv', 'test8', 3400.00, '2024-12-05', 'Pending', NULL, '', '', '', '', NULL, '2024-12-21 04:59:02', '2024-12-21 04:59:02'),
(8, 'Employee Expense Claim', 30, 'Shobha', 'For travelling', 2000.00, '2024-12-26', 'Approved', NULL, '', '', '', '', NULL, '2024-12-21 08:05:22', '2024-12-21 08:05:22'),
(9, 'Employee Expense Claim', 57, 'alekhya kodam', 'For food', 1500.00, '2024-12-25', 'Pending', NULL, '', '', '', '', NULL, '2024-12-21 12:51:12', '2024-12-21 12:51:12'),
(10, 'Employee Expense Claim', 33, 'punarv', 'vegetables', 5000.00, '2024-12-25', 'Pending', NULL, '', '', '', '', NULL, '2024-12-22 08:13:07', '2024-12-22 08:13:07'),
(11, 'Employee Expense Claim', 76, 'SHIVAM VERMA', 'travelling', 1000.00, '2025-01-01', 'Pending', NULL, '', '', '', '', NULL, '2024-12-22 08:13:41', '2024-12-22 08:13:41'),
(12, 'Employee Payout', 87, 'test', '0', 500.00, '2024-12-22', 'Pending', 'Pending', '', '', '', '', '', '2024-12-22 12:54:09', '2024-12-22 12:54:09'),
(13, 'Employee Payout', 87, 'test', '0', 500.00, '2024-12-22', 'Pending', 'Pending', '', '', '', '', '', '2024-12-22 13:05:17', '2024-12-22 13:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `expensesmatched`
--

CREATE TABLE `expensesmatched` (
  `id` int(11) NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `purchase` varchar(255) NOT NULL,
  `voucher_number` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expensesmatched`
--

INSERT INTO `expensesmatched` (`id`, `vendor`, `purchase`, `voucher_number`, `amount`, `created_date`) VALUES
(1, 'poojith', 'PI0002', 'VOU02', 1000.00, '2024-12-21 15:02:37'),
(2, 'punarv', 'PI0003', 'VOU03', 2000.00, '2024-12-21 15:03:41'),
(3, 'punarv', 'PI0002', 'VOU05', 100.00, '2024-12-21 15:07:04'),
(4, 'soumya', 'PI0003', 'VOU03', 3000.00, '2024-12-22 08:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `expenses_claim`
--

CREATE TABLE `expenses_claim` (
  `id` int(11) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `expense_category` varchar(100) NOT NULL,
  `expense_date` date NOT NULL,
  `amount_claimed` decimal(10,2) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `status` enum('Pending','Approved','Rejected','Paid') NOT NULL,
  `rejection_reason` varchar(255) DEFAULT NULL,
  `submitted_date` date NOT NULL,
  `approved_date` date DEFAULT NULL,
  `payment_status` enum('Paid','Pending Payment') NOT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `card_reference_number` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses_claim`
--

INSERT INTO `expenses_claim` (`id`, `employee_name`, `expense_category`, `expense_date`, `amount_claimed`, `attachment`, `status`, `rejection_reason`, `submitted_date`, `approved_date`, `payment_status`, `payment_date`, `payment_mode`, `transaction_id`, `card_reference_number`, `bank_name`, `description`, `created_at`, `updated_at`) VALUES
(1, '0', 'Travel', '2024-12-09', 1000.00, '', 'Pending', '', '2024-12-09', '2024-12-09', '', '0000-00-00', '', '', '', '', 'dfghj', '2024-12-09 11:21:19', '2024-12-09 11:21:19'),
(2, '', 'Travel', '2024-12-09', 1000.00, '', 'Pending', '', '2024-12-09', '2024-12-09', '', '0000-00-00', '', '', '', '', 'dfghj', '2024-12-09 11:23:16', '2024-12-09 11:23:16'),
(3, '7', 'Travel', '2024-12-09', 2000.00, '', 'Paid', '', '2024-12-09', '2024-12-09', 'Paid', '2024-12-09', '', '', '', '', 'sdfg', '2024-12-09 11:24:44', '2024-12-09 11:24:44'),
(4, 'Soujanya', 'Medical', '2024-12-09', 1500.00, '', 'Paid', '', '2024-12-09', '2024-12-09', 'Paid', '2024-12-09', '', '', '', '', 'sasasa', '2024-12-09 11:27:40', '2024-12-09 11:27:40'),
(5, 'alekhya kodam', 'Travel', '2024-12-11', 500.00, '', 'Paid', '', '2024-12-11', '2024-12-11', 'Paid', '2024-12-11', 'Card', '', '245467546677', '', 'sdfgh', '2024-12-11 07:51:51', '2024-12-11 07:51:51'),
(6, 'saritha', 'Travel', '2024-12-19', 2500.00, 'invoice_INV018569 (2).pdf', 'Pending', '', '2024-12-17', '2024-12-17', 'Paid', '0000-00-00', 'Cash', '', '', '', 'For travel', '2024-12-17 05:45:05', '2024-12-17 05:45:05'),
(7, 'ramu', 'Medical', '2024-12-25', 3300.00, 'invoice_INV018569 (1).pdf', 'Pending', '', '2024-12-18', '0000-00-00', 'Paid', '0000-00-00', 'Cash', '', '', '', 'MEdical bills', '2024-12-17 05:45:50', '2024-12-17 05:45:50'),
(8, 'ramu', 'Medical', '2024-12-17', 2000.00, 'invoice_INV092471.pdf', 'Pending', '', '2024-12-18', '0000-00-00', 'Paid', '0000-00-00', 'Cash', '', '', '', 'Medical', '2024-12-17 05:48:16', '2024-12-17 05:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_id` varchar(250) NOT NULL,
  `receipt_id` varchar(250) DEFAULT NULL,
  `pdf_invoice_path` varchar(500) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `service_id` varchar(25) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `customer_email` varchar(500) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `paid_amount` varchar(25) DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_id`, `receipt_id`, `pdf_invoice_path`, `customer_id`, `service_id`, `customer_name`, `mobile_number`, `customer_email`, `total_amount`, `paid_amount`, `due_date`, `status`, `created_at`, `updated_at`) VALUES
(57, 'INV037986', 'RCP1734181096006', 'invoices/invoice_INV037986.pdf', 0, '19', 'Sneha Das', '9001234567', 'sneha.das@example.com', 14000.00, '1000', '0000-00-00 00:00:00', 'Pending', '2024-12-14 12:58:16', '2024-12-14 16:29:36'),
(58, 'INV037986', 'RCP1734181138014', 'invoices/invoice_INV037986.pdf', 0, '19', 'Sneha Das', '9001234567', 'sneha.das@example.com', 14000.00, '2000', '0000-00-00 00:00:00', 'Pending', '2024-12-14 12:58:58', '2024-12-14 16:29:36'),
(69, 'INV010936', 'RCP1734237359040', '', 0, '16', 'Rajesh Kumar', '9876543210', 'rajesh.k@gmail.com', 15000.00, '1000', '0000-00-00 00:00:00', 'Pending', '2024-12-15 04:35:59', '2024-12-15 04:35:59'),
(70, 'INV010936', 'RCPT1734238340132', '', 0, '16', 'Rajesh Kumar', '9876543210', 'rajesh.k@gmail.com', 15000.00, '2000', '0000-00-00 00:00:00', 'Pending', '2024-12-15 04:52:20', '2024-12-15 04:52:20'),
(71, 'INV075053', NULL, 'invoices/invoice_INV023062.pdf', 0, '27', 'Kavya', '9000090000', 'kabvyakayva@yahho.co', 0.00, NULL, '2024-12-22 05:06:52', 'Pending', '2024-12-15 05:06:52', '2024-12-15 05:06:52'),
(72, 'INV096727', NULL, 'invoices/invoice_INV098506.pdf', 0, '17', 'Priya Sharma', '9123456789', 'priya.sharma@example.com', 12000.00, NULL, '2024-12-22 05:25:47', 'Pending', '2024-12-15 05:25:47', '2024-12-15 05:25:47'),
(73, 'INV098506', 'RCPT1734240373134', '', 0, '17', 'Priya Sharma', '9123456789', 'priya.sharma@example.com', 12000.00, '2000', '0000-00-00 00:00:00', 'Pending', '2024-12-15 05:26:13', '2024-12-15 05:26:13'),
(74, 'INV032221', 'RCPT1734246481720', 'invoices/invoice_INV032221.pdf', 0, '24', 'Rohit Singh', '9801234567', 'rohit.singh@example.com', 15500.00, '500', '2024-12-21 16:18:50', 'Pending', '2024-12-15 08:08:01', '2024-12-15 08:08:01'),
(76, 'INV061689', 'RCPT1734263530674', '', 0, '33', 'Soujanya', '9492003253', '', 4666.00, '2000', '2024-12-22 17:20:19', 'Pending', '2024-12-15 12:52:10', '2024-12-15 12:52:10'),
(77, 'INV061689', 'RCPT1734263555023', '', 0, '33', 'Soujanya', '9492003253', '', 4666.00, '2666', '2024-12-22 17:20:19', 'Pending', '2024-12-15 12:52:35', '2024-12-15 12:52:35'),
(79, 'INV036979', 'RCPT1734263711117', '', 0, '34', 'Soujanya', '9492003253', '', 1800.00, '1800', '2024-12-22 17:23:32', 'Paid', '2024-12-15 12:55:11', '2024-12-15 12:55:11'),
(90, 'INV018569', NULL, 'invoices/invoice_INV018569.pdf', 0, '35', 'Soujanya', '09492003253', '', 5000.00, NULL, '2024-12-23 10:15:24', 'Pending', '2024-12-16 10:15:24', '2024-12-16 10:29:33'),
(91, 'INV080674', NULL, 'invoices/invoice_INV018569.pdf', 0, '35', 'Soujanya', '09492003253', '', 5000.00, NULL, '2024-12-23 10:28:38', 'Pending', '2024-12-16 10:28:38', '2024-12-16 10:29:33'),
(92, 'INV098492', NULL, 'invoices/invoice_INV018569.pdf', 0, '35', 'Soujanya', '09492003253', '', 5000.00, NULL, '2024-12-23 10:29:32', 'Pending', '2024-12-16 10:29:32', '2024-12-16 10:29:33'),
(93, 'INV018569', 'RCPT1734325434926', 'invoices/invoice_INV018569.pdf', 0, '35', 'Soujanya', '09492003253', '', 5000.00, '1000', '2024-12-23 10:15:24', 'Pending', '2024-12-16 06:03:54', '2024-12-16 06:03:54'),
(94, 'INV018569', 'RCPT1734325449091', 'invoices/invoice_INV018569.pdf', 0, '35', 'Soujanya', '09492003253', '', 5000.00, '4000', '2024-12-23 10:15:24', 'Pending', '2024-12-16 06:04:09', '2024-12-16 06:04:09'),
(95, 'INV092471', NULL, 'invoices/invoice_INV092471.pdf', 0, '36', 'Soujanya', '09492003253', '', 2400.00, NULL, '2024-12-23 10:38:05', 'Pending', '2024-12-16 10:38:05', '2024-12-16 10:38:05'),
(96, 'INV006099', NULL, 'invoices/invoice_INV092471.pdf', 0, '36', 'Soujanya', '09492003253', '', 2400.00, NULL, '2024-12-23 11:17:47', 'Pending', '2024-12-16 11:17:47', '2024-12-16 11:17:47'),
(97, 'INV051694', NULL, 'invoices/invoice_INV051694.pdf', 0, '37', 'Soujanya', '9492003253', '', 3500.00, NULL, '2024-12-23 16:00:14', 'Pending', '2024-12-16 16:00:14', '2024-12-16 16:00:15'),
(98, 'INV041966', NULL, 'invoices/invoice_INV092471.pdf', 0, '36', 'Soujanya', '09492003253', '', 2400.00, NULL, '2024-12-24 11:21:02', 'Pending', '2024-12-17 11:21:02', '2024-12-17 11:21:03'),
(99, 'INV043434', NULL, 'invoices/invoice_INV043434.pdf', 0, '39', 'Bhargav', '9874563210', '', 4666.00, NULL, '2024-12-24 19:23:52', 'Pending', '2024-12-17 19:23:52', '2024-12-17 19:23:52'),
(100, 'INV043434', 'RCPT1734443684869', 'invoices/invoice_INV043434.pdf', 0, '39', 'Bhargav', '9874563210', '', 4666.00, '2000', '2024-12-24 19:23:52', 'Pending', '2024-12-17 14:54:44', '2024-12-17 14:54:44'),
(101, 'INV043434', 'RCPT1734443874416', 'invoices/invoice_INV043434.pdf', 0, '39', 'Bhargav', '9874563210', '', 4666.00, '2666', '2024-12-24 19:23:52', 'Pending', '2024-12-17 14:57:54', '2024-12-17 14:57:54'),
(102, 'INV099900', NULL, 'invoices/invoice_INV051694.pdf', 0, '37', 'Soujanya', '9492003253', '', 3500.00, NULL, '2024-12-25 18:57:01', 'Pending', '2024-12-18 18:57:01', '2024-12-18 18:57:02'),
(103, 'INV051694', 'RCPT1734528492570', 'invoices/invoice_INV051694.pdf', 0, '37', 'Soujanya', '9492003253', '', 3500.00, '1000', '2024-12-23 16:00:14', 'Pending', '2024-12-18 14:28:12', '2024-12-18 14:28:12'),
(104, 'INV051694', 'RCPT1734528516709', 'invoices/invoice_INV051694.pdf', 0, '37', 'Soujanya', '9492003253', '', 3500.00, '2500', '2024-12-23 16:00:14', 'Pending', '2024-12-18 14:28:36', '2024-12-18 14:28:36'),
(105, 'INV088893', NULL, 'invoices/invoice_INV088893.pdf', 0, '40', 'Soujanya', '9492003253', '', 4800.00, NULL, '2024-12-26 18:47:55', 'Pending', '2024-12-19 18:47:55', '2024-12-19 18:47:56'),
(106, 'INV088893', 'RCPT1734614321457', 'invoices/invoice_INV088893.pdf', 0, '40', 'Soujanya', '9492003253', '', 4800.00, '1329', '2024-12-26 18:47:55', 'Pending', '2024-12-19 14:18:41', '2024-12-19 14:18:41'),
(107, 'INV088893', 'RCPT1734674153771', 'invoices/invoice_INV088893.pdf', 0, '40', 'Soujanya', '9492003253', '', 4800.00, '2000', '2024-12-26 18:47:55', 'Pending', '2024-12-20 06:55:53', '2024-12-20 06:55:53'),
(108, 'INV088893', 'RCPT1734674164038', 'invoices/invoice_INV088893.pdf', 0, '40', 'Soujanya', '9492003253', '', 4800.00, '1471', '2024-12-26 18:47:55', 'Pending', '2024-12-20 06:56:04', '2024-12-20 06:56:04'),
(109, 'INV000709', NULL, 'invoices/invoice_INV000709.pdf', 0, '41', 'RaviKumar', '9292929292', '', 2658.00, NULL, '2024-12-27 12:04:01', 'Pending', '2024-12-20 12:04:01', '2024-12-20 12:04:01'),
(110, 'INV000709', 'RCPT1734676484328', 'invoices/invoice_INV000709.pdf', 0, '41', 'RaviKumar', '9292929292', '', 2658.00, '658', '2024-12-27 12:04:01', 'Pending', '2024-12-20 07:34:44', '2024-12-20 07:34:44'),
(111, 'INV000709', 'RCPT1734678620657', 'invoices/invoice_INV000709.pdf', 0, '41', 'RaviKumar', '9292929292', '', 2658.00, '1487', '2024-12-27 12:04:01', 'Pending', '2024-12-20 08:10:20', '2024-12-20 08:10:20'),
(112, 'INV000709', 'RCPT1734678773301', 'invoices/invoice_INV000709.pdf', 0, '41', 'RaviKumar', '9292929292', '', 2658.00, '10', '2024-12-27 12:04:01', 'Pending', '2024-12-20 08:12:53', '2024-12-20 08:12:53'),
(113, 'INV000709', 'RCPT1734680198083', 'invoices/invoice_INV000709.pdf', 0, '41', 'RaviKumar', '9292929292', '', 2658.00, '503', '2024-12-27 12:04:01', 'Pending', '2024-12-20 08:36:38', '2024-12-20 08:36:38'),
(114, 'INV090599', NULL, 'invoices/invoice_INV090599.pdf', 0, '42', 'Soujanya', '9492003253', '', 2400.00, NULL, '2024-12-28 18:33:31', 'Pending', '2024-12-21 18:33:31', '2024-12-21 18:33:31'),
(115, 'INV090599', 'RCPT1734786238143', 'invoices/invoice_INV090599.pdf', 0, '42', 'Soujanya', '9492003253', '', 2400.00, '1000', '2024-12-28 18:33:31', 'Pending', '2024-12-21 14:03:58', '2024-12-21 14:03:58'),
(116, 'INV044143', NULL, 'invoices/invoice_INV090599.pdf', 0, '42', 'Soujanya', '9492003253', '', 2400.00, NULL, '2024-12-28 18:34:12', 'Pending', '2024-12-21 18:34:12', '2024-12-21 18:34:12'),
(117, 'INV090599', 'RCPT1734857651058', 'invoices/invoice_INV090599.pdf', 0, '42', 'Soujanya', '9492003253', '', 2400.00, '1400', '2024-12-28 18:33:31', 'Pending', '2024-12-22 09:54:11', '2024-12-22 09:54:11'),
(121, 'INV048794', NULL, 'invoices/invoice_INV048794.pdf', 0, '43', 'Soujanya', '09492003253', '', 500.00, NULL, '2024-12-29 18:24:09', 'Pending', '2024-12-22 18:24:09', '2024-12-22 18:24:09'),
(122, 'INV030297', NULL, 'invoices/invoice_INV048794.pdf', 0, '43', 'Soujanya', '09492003253', '', 500.00, NULL, '2024-12-29 18:35:17', 'Pending', '2024-12-22 18:35:17', '2024-12-22 18:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `service_type` enum('fully_trained_nurse','semi_trained_nurse','care_taker') NOT NULL,
  `from_date` date NOT NULL,
  `end_date` date NOT NULL,
  `duration` int(11) NOT NULL,
  `base_charges` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `status` enum('paid','pending','partially_paid') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `customer_name`, `service_type`, `from_date`, `end_date`, `duration`, `base_charges`, `total_amount`, `status`, `created_at`) VALUES
(8, 'poojith', 'semi_trained_nurse', '2024-12-06', '2024-12-26', 20, 500.00, 5000.00, 'pending', '2024-12-05 08:29:03'),
(10, 'savitha', 'fully_trained_nurse', '2024-12-06', '2024-12-19', 13, 500.00, 2111.00, 'paid', '2024-12-05 09:29:20'),
(11, 'Venkatesh', 'fully_trained_nurse', '2024-12-05', '2024-12-12', 7, 500.00, 1500.00, 'partially_paid', '2024-12-05 13:13:18'),
(12, 'soujanya', 'semi_trained_nurse', '2024-12-19', '2025-01-01', 13, 500.00, 6000.00, 'pending', '2024-12-05 13:19:07'),
(13, '', '', '2024-12-05', '2024-12-10', 5, 1000.00, 5000.00, '', '2024-12-05 13:26:54'),
(14, '', '', '2024-12-05', '2024-12-10', 5, 1000.00, 5000.00, '', '2024-12-05 13:27:00'),
(15, '', '', '2024-12-05', '2024-12-10', 5, 1000.00, 5000.00, '', '2024-12-05 13:27:09'),
(16, 'Venkatesh', 'fully_trained_nurse', '2024-12-12', '2024-12-10', 0, 1000.00, 5000.00, 'pending', '2024-12-05 14:13:42'),
(17, '', '', '0000-00-00', '0000-00-00', 0, 0.00, 0.00, '', '2024-12-06 23:56:16'),
(18, '', 'care_taker', '2024-12-10', '2024-12-17', 7, 1000.00, 2500.00, 'pending', '2024-12-10 07:47:44'),
(19, '', 'fully_trained_nurse', '2024-12-11', '2024-12-25', 14, 2500.00, 2500.00, 'partially_paid', '2024-12-10 09:03:10'),
(20, '', 'semi_trained_nurse', '2024-12-18', '2024-12-31', 13, 200.00, 2500.00, 'pending', '2024-12-11 07:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reset_token` varchar(64) DEFAULT NULL,
  `token_expires` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `reset_token`, `token_expires`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'admin@123', 'bb3d5a3a2e339483127ff375fdbbe5d635f7c42a35ac5479240c66a070a6dd64', '2024-12-12 10:43:28', '2024-12-12 08:42:33', '2024-12-12 08:43:28'),
(2, 'pandralasoujanya@gmail.com', '$2y$10$GZ2VCauf6tEkWLhjiwyPXeQQzUhMgYSaXAWfaugD.vg55RCqHZz8O', '31c75fa3bd1fcedc06a79088380633338934afa7be853892afa3c0d940b94bdc', '2024-12-13 18:20:58', '2024-12-12 08:45:43', '2024-12-12 12:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `matched`
--

CREATE TABLE `matched` (
  `id` int(11) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `receipt` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matched`
--

INSERT INTO `matched` (`id`, `customer`, `invoice`, `receipt`, `amount`, `created_at`) VALUES
(1, 'Customer A', 'INV123', 'REC001', 4000.00, '2024-12-19 08:31:10'),
(2, 'Customer 1', 'INV-001', 'REC-001', 2000.00, '2024-12-19 08:34:44'),
(3, 'Customer 2', 'INV-002', 'REC-002', 20000.00, '2024-12-19 08:36:24');

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `allotment_id` int(11) NOT NULL,
  `refund_reason` varchar(255) NOT NULL,
  `refund_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_refunded` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `patient_name` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_master`
--

CREATE TABLE `service_master` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `daily_rate_8_hours` decimal(10,2) NOT NULL,
  `daily_rate_12_hours` decimal(10,2) NOT NULL,
  `daily_rate_24_hours` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_master`
--

INSERT INTO `service_master` (`id`, `service_name`, `status`, `daily_rate_8_hours`, `daily_rate_12_hours`, `daily_rate_24_hours`, `description`, `created_at`) VALUES
(3, 'nannies', 'active', 200.00, 400.00, 800.00, 'zdfbvzdfbv', '2024-12-05 09:57:06'),
(4, 'care_taker', 'active', 2333.00, 443.00, 231.00, 'xzdgbzdsfardf', '2024-12-05 09:58:53'),
(5, 'fully_trained_nurse', 'active', 500.00, 600.00, 800.00, 'bjjbjk', '2024-12-05 09:59:50'),
(6, 'care_taker', 'active', 800.00, 1400.00, 2800.00, 'jujjujj', '2024-12-05 10:01:07'),
(8, 'fully_trained_nurse', 'active', 400.00, 800.00, 1500.00, 'bfbfff', '2024-12-05 14:06:32'),
(9, 'fully_trained_nurse', 'inactive', 200.00, 500.00, 700.00, '', '2024-12-16 12:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_id` int(25) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `enquiry_date` date NOT NULL,
  `enquiry_time` time NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `from_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_days` int(11) DEFAULT NULL,
  `service_price` decimal(10,2) DEFAULT NULL,
  `assigned_employee` varchar(255) NOT NULL,
  `invoice_status` varchar(250) DEFAULT NULL,
  `enquiry_source` varchar(100) NOT NULL,
  `priority_level` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `emp_id` int(25) NOT NULL,
  `request_details` text NOT NULL,
  `resolution_notes` text NOT NULL,
  `comments` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `patient_name` varchar(255) NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `per_day_service_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `customer_name`, `customer_id`, `contact_no`, `email`, `enquiry_date`, `enquiry_time`, `service_type`, `from_date`, `end_date`, `total_days`, `service_price`, `assigned_employee`, `invoice_status`, `enquiry_source`, `priority_level`, `status`, `emp_id`, `request_details`, `resolution_notes`, `comments`, `created_at`, `patient_name`, `relationship`, `per_day_service_price`) VALUES
(39, 'Bhargav', 0, '9874563210', '', '2024-12-17', '19:05:00', 'care_taker', '2024-12-25', '2024-12-26', 2, 4666.00, 'poorvi', NULL, 'email', 'high', 'Confirmed', 31, '', '', '', '2024-12-17 13:52:17', 'Bhargav', 'guardian', '2333.00'),
(40, 'Soujanya', 0, '9492003253', '', '2024-12-19', '18:47:00', 'fully_trained_nurse', '2024-12-20', '2024-12-27', 8, 4800.00, 'alekhya kodam', NULL, 'walkin', 'medium', 'Confirmed', 55, '', '', '', '2024-12-19 13:17:39', 'Harish', 'child', '600.00'),
(41, 'RaviKumar', 0, '9292929292', '', '2024-12-20', '12:03:00', 'care_taker', '2024-12-20', '2024-12-25', 6, 2658.00, 'shyamkumar netha', NULL, 'email', 'medium', 'Confirmed', 60, 'kakjajaaj', '', '', '2024-12-20 06:33:47', 'Unknown', 'Unknown', '443.00'),
(42, 'Soujanya', 0, '9492003253', '', '2024-12-21', '18:23:00', 'fully_trained_nurse', '2024-12-21', '2024-12-24', 4, 2400.00, 'Shobha', NULL, 'walkin', 'medium', 'Confirmed', 30, '', '', '', '2024-12-21 13:02:54', 'Naresh', 'spouse', '600.00'),
(43, 'Soujanya', 0, '09492003253', '', '2024-12-22', '18:10:00', 'fully_trained_nurse', '2024-12-25', '2024-12-25', 1, 500.00, 'test', NULL, 'phone', 'medium', 'Confirmed', 87, '', '', '', '2024-12-22 12:41:10', 'savitha', 'friend', '500.00');

-- --------------------------------------------------------

--
-- Table structure for table `sp_vendors`
--

CREATE TABLE `sp_vendors` (
  `id` int(11) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `gstin` varchar(15) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `services_provided` varchar(255) DEFAULT NULL,
  `vendor_type` varchar(50) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(50) DEFAULT NULL,
  `ifsc` varchar(11) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT 'Admin',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sp_vendors`
--

INSERT INTO `sp_vendors` (`id`, `vendor_name`, `gstin`, `contact_person`, `phone_number`, `email`, `services_provided`, `vendor_type`, `pincode`, `address_line1`, `address_line2`, `landmark`, `city`, `state`, `bank_name`, `account_number`, `ifsc`, `branch`, `created_by`, `created_at`) VALUES
(1, 'soujanya', '', 'Soujanya', '09492003253', 'sspandrala261126@gmail.com', 'Fully Trained Nurse', 'Individual', '505001', '8-7-270/1, Hanuman nagar, Ganesh Nagar', 'Karimnagar', '', 'Karimnagar', 'Telangana', '', '', '', '', 'Admin', '2024-12-19 10:47:36'),
(2, 'soujanya', '', 'Soujanya', '09492003253', 'sspandrala261126@gmail.com', 'Fully Trained Nurse', 'Individual', '505001', '8-7-270/1, Hanuman nagar, Ganesh Nagar', 'Karimnagar', '', 'Karimnagar', 'Telangana', '', '', '', '', 'Admin', '2024-12-19 11:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `gstin` varchar(20) DEFAULT NULL,
  `contact_person` varchar(255) NOT NULL,
  `supporting_documents` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `vendor_type` enum('Individual','Company','Other') DEFAULT 'Other',
  `services_provided` text DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(20) DEFAULT NULL,
  `ifsc` varchar(11) DEFAULT NULL,
  `branch` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `pincode` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `vendor_name`, `gstin`, `contact_person`, `supporting_documents`, `phone_number`, `email`, `vendor_type`, `services_provided`, `bank_name`, `account_number`, `ifsc`, `branch`, `created_at`, `updated_at`, `address_line1`, `address_line2`, `city`, `state`, `landmark`, `pincode`) VALUES
(31, 'savitha123', 'MNJJI233nk', 'poojith Kumar', '', '8897791988', 'savitha.gundla08@gmail.com', 'Individual', 'Fully Trained Nurse', 'AXIS Bank', '895632147897', 'UTI9800123', '', '2024-12-04 06:11:59', '2024-12-05 14:15:26', '', NULL, '', '', NULL, ''),
(32, 'poojith', 'mJNDSVcjKWA', 'poojith Kumar', '', '9133380809', 'poojith@gmail.com', 'Individual', 'Fully Trained Nurse', 'AXIS Bank', '8954793133', 'UTI9800123', '', '2024-12-04 06:15:47', '2024-12-04 06:15:47', '', NULL, '', '', NULL, ''),
(33, 'punarv', 'MNJJI233NKI', 'poojith Kumar', '', '9133380809', 'punarv@gmail.com', 'Individual', 'Fully Trained Nurse', 'AXIS Bank', '9865471230', 'UTI9800123', '', '2024-12-04 06:19:03', '2024-12-04 06:19:03', '', NULL, '', '', NULL, ''),
(36, 'anuja', 'MNJJI233JK', 'poojith Kumar', '', '8897791988', 'anuja@gmail.com', 'Individual', 'Fully Trained Nurse', 'AXIS Bank', '854213698700', 'UTI9800123', '', '2024-12-04 12:48:05', '2024-12-04 12:48:05', '', NULL, '', '', NULL, ''),
(37, 'pruthvi', 'MNJJI233NKM', 'poojith Kumar', 'uploads/ayush_db (3).sql', '9441036543', 'pruthvi@gmail.com', 'Individual', 'Fully Trained Nurse', 'AXIS Bank', '8956321478', 'UTI9800123', 'hyd', '2024-12-13 08:50:09', '2024-12-13 08:50:09', 'H. No. 7-45, chaitanyapuri, hyderabad', 'asdf', 'Hyderabad', 'Telangana', 'asdfgv', '500060'),
(39, 'soumya', '55455875', 'Soujanya', '../uploads/46cd5d8e5fda4921f9ed6c906efc1d58.pdf', '09492003253', 'sspandrala261126@gmail.com', 'Company', 'Caretaker', 'fvhmmna', '2245336214', 'UBIN0815918', 'sircilla', '2024-12-16 08:45:25', '2024-12-16 08:45:25', '8-7-270/1, Hanuman nagar, Ganesh Nagar', 'Karimnagar', 'Karimnagar', 'Telangana', 'asdf', '505001');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_payments`
--

CREATE TABLE `vendor_payments` (
  `id` int(11) NOT NULL,
  `bill_id` varchar(50) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `payment_amount` int(100) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `remaining_balance` int(100) NOT NULL,
  `payment_status` enum('Paid','Partially Paid','Pending') NOT NULL,
  `payment_date` date NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `card_reference_number` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_payments`
--

INSERT INTO `vendor_payments` (`id`, `bill_id`, `vendor_name`, `payment_amount`, `paid_amount`, `remaining_balance`, `payment_status`, `payment_date`, `transaction_id`, `payment_mode`, `card_reference_number`, `bank_name`, `created_at`, `updated_at`) VALUES
(1, 'BILL-09/12/2024-2108', 'soumya', 10000, 0, 0, 'Paid', '2024-12-09', '2145472353454', '', '', '', '2024-12-09 11:46:32', '2024-12-09 11:46:32'),
(2, '123234', 'soujanya', 1000, 500, 500, 'Partially Paid', '2024-12-10', '', '', '', '', '2024-12-10 12:06:09', '2024-12-10 12:06:09'),
(3, '34343', 'soumya', 2000, 1000, 1000, 'Partially Paid', '2024-12-10', '2145472353454', '', '', '', '2024-12-10 12:09:07', '2024-12-11 08:26:23'),
(4, '1232345', 'soujanya', 2000, 1000, 1000, 'Partially Paid', '2024-12-10', '2145472353454', '', '', '', '2024-12-10 12:18:06', '2024-12-11 08:26:14'),
(5, '1232346', 'soujanya', 2000, 1000, 1000, 'Partially Paid', '2024-12-11', '2145472353454', 'Bank Transfer', '', 'Axis Bank', '2024-12-11 07:34:28', '2024-12-11 08:26:27'),
(6, '3434', 'soumya', 5000, 3000, 2000, 'Partially Paid', '2024-12-11', '2145472353454', 'Bank Transfer', '245467546677', '', '2024-12-11 07:39:55', '2024-12-11 08:35:47'),
(8, '3434', 'soumya', 5000, 4000, 1000, 'Partially Paid', '2024-12-11', '2145472353454', 'UPI', '', '', '2024-12-11 09:38:40', '2024-12-11 09:38:40'),
(9, '1232346', 'soujanya', 2000, 2000, 0, 'Paid', '2024-12-11', '', 'Cash', '', '', '2024-12-11 09:39:19', '2024-12-11 09:39:19'),
(10, '34343', 'soumya', 2000, 1500, 500, 'Partially Paid', '2024-12-11', '', 'Cash', '', '', '2024-12-11 10:09:52', '2024-12-11 10:09:52'),
(11, '34343', 'soumya', 2000, 1700, 300, 'Partially Paid', '2024-12-11', '', 'Cash', '', '', '2024-12-11 12:01:29', '2024-12-11 12:01:29'),
(12, '34343', 'soumya', 2000, 2000, 0, 'Paid', '2024-12-11', '', 'Cash', '', '', '2024-12-11 12:02:00', '2024-12-11 12:02:00'),
(13, '001', 'soumya', 5000, 3000, 2000, 'Partially Paid', '2024-12-11', '2145472353454', 'UPI', '', '', '2024-12-11 12:11:02', '2024-12-11 12:11:02'),
(14, '001', 'soumya', 5000, 5000, 0, 'Paid', '2024-12-11', '2145472353454', 'UPI', '', '', '2024-12-11 12:11:31', '2024-12-11 12:11:31'),
(15, '3434', 'soumya', 5000, 5000, 0, 'Paid', '2024-12-11', '', 'Cash', '', '', '2024-12-11 12:20:48', '2024-12-11 12:20:48'),
(16, '003', 'soujanya', 7000, 3000, 4000, 'Partially Paid', '2024-12-11', '2145472353454', 'UPI', '', '', '2024-12-11 12:27:48', '2024-12-11 12:27:48'),
(17, '003', 'soujanya', 7000, 6000, 1000, 'Partially Paid', '2024-12-11', '', 'Cash', '', '', '2024-12-11 12:28:04', '2024-12-11 12:28:04'),
(18, '003', 'soujanya', 7000, 7000, 0, 'Paid', '2024-12-11', '', 'Cash', '', '', '2024-12-11 12:28:14', '2024-12-11 12:28:14'),
(19, '005', 'soumya', 5000, 3000, 2000, 'Partially Paid', '2024-12-11', '2145472353454', 'UPI', '', '', '2024-12-11 12:35:46', '2024-12-11 12:35:46'),
(20, '005', 'soumya', 5000, 4000, 1000, 'Partially Paid', '2024-12-11', '2145472353454', 'UPI', '', '', '2024-12-11 12:36:13', '2024-12-11 12:36:13'),
(21, '005', 'soumya', 5000, 5000, 0, 'Paid', '2024-12-11', '', 'Cash', '', '', '2024-12-11 12:36:42', '2024-12-11 12:36:42'),
(22, '005', 'punarv', 0, 0, 0, '', '0000-00-00', '', '', '', '', '2024-12-15 13:56:34', '2024-12-15 13:56:34'),
(23, '123', 'anuja', 0, 0, 0, '', '0000-00-00', '', '', '', '', '2024-12-15 14:00:03', '2024-12-15 14:00:03'),
(24, '1234', 'savitha123', 0, 0, 0, '', '0000-00-00', '', '', '', '', '2024-12-15 14:00:36', '2024-12-15 14:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_payments_new`
--

CREATE TABLE `vendor_payments_new` (
  `id` int(11) NOT NULL,
  `purchase_invoice_number` varchar(50) NOT NULL,
  `bill_id` varchar(50) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `invoice_amount` int(100) NOT NULL,
  `description` text DEFAULT NULL,
  `bill_file_path` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_payments_new`
--

INSERT INTO `vendor_payments_new` (`id`, `purchase_invoice_number`, `bill_id`, `vendor_name`, `invoice_amount`, `description`, `bill_file_path`, `created_at`, `updated_at`) VALUES
(1, 'PI0001', '1234', 'poojith', 5000, '', 'vendor_bills/1734272044_InShot_20241127_132533065.jpg', '2024-12-15 19:44:04', '2024-12-15 19:44:04'),
(2, 'PI0002', '12345', 'savitha123', 2000, '', 'vendor_bills/1734414145_invoice_INV051694.pdf', '2024-12-17 11:12:25', '2024-12-17 11:12:25'),
(3, 'PI0003', '123546', 'anuja', 5000, 'For december month vegetables', 'vendor_bills/1734444221_invoice_INV043434.pdf', '2024-12-17 19:33:41', '2024-12-17 19:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `voucher_number` varchar(255) NOT NULL,
  `voucher_date` date NOT NULL DEFAULT current_timestamp(),
  `bill_id` varchar(255) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `paid_amount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `voucher_number`, `voucher_date`, `bill_id`, `vendor_name`, `paid_amount`, `payment_date`, `payment_mode`, `created_at`) VALUES
(1, 'VOU0001', '2024-12-14', '112', 'vamshi', 7000.00, '2024-12-14', '', '2024-12-14 13:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers_new`
--

CREATE TABLE `vouchers_new` (
  `id` int(11) NOT NULL,
  `voucher_number` varchar(50) NOT NULL,
  `voucher_date` date NOT NULL,
  `purchase_invoice_number` varchar(50) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `remaining_balance` int(11) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vouchers_new`
--

INSERT INTO `vouchers_new` (`id`, `voucher_number`, `voucher_date`, `purchase_invoice_number`, `paid_amount`, `payment_mode`, `transaction_id`, `remaining_balance`, `payment_status`, `created_at`) VALUES
(1, 'VOU01', '2024-12-15', 'PI0001', 2000, 'Cash', NULL, 3000, 'Partially Paid', '2024-12-15 14:19:00'),
(2, 'VOU02', '2024-12-17', 'PI0002', 1000, 'Cash', NULL, 1000, 'Partially Paid', '2024-12-17 05:42:55'),
(3, 'VOU03', '2024-12-17', 'PI0003', 2000, 'Cash', NULL, 3000, 'Partially Paid', '2024-12-17 14:04:26'),
(4, 'VOU04', '2024-12-18', 'PI0003', 3000, 'Cash', NULL, 0, 'Paid', '2024-12-18 13:32:21'),
(5, 'VOU05', '2024-12-20', 'PI0002', 100, 'Cash', NULL, 900, 'Partially Paid', '2024-12-20 06:01:28'),
(6, 'VOU06', '2024-12-20', 'PI0002', 900, 'Cash', NULL, 0, 'Paid', '2024-12-20 06:01:43'),
(7, 'VOU07', '2024-12-20', 'PI0001', 500, 'Cash', NULL, 2500, 'Partially Paid', '2024-12-20 06:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(11) NOT NULL,
  `tran_id` varchar(50) DEFAULT NULL,
  `value_date` date DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `transaction_posted_date` datetime DEFAULT NULL,
  `cheque_no_ref_no` varchar(255) DEFAULT NULL,
  `transaction_remarks` text DEFAULT NULL,
  `withdrawal_amt` decimal(15,2) DEFAULT NULL,
  `balance` decimal(15,2) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `tran_id`, `value_date`, `transaction_date`, `transaction_posted_date`, `cheque_no_ref_no`, `transaction_remarks`, `withdrawal_amt`, `balance`, `status`) VALUES
(1, 'S51777577', '2024-11-13', '2024-11-13', '2024-11-13 16:21:52', '', 'MMT/IMPS/431816671539/MitalBhanushali/SBIN0007212', 20000.00, 14434.03, 'Matched'),
(2, 'S68809433', '2024-11-15', '2024-11-15', '2024-11-15 13:55:39', '', 'INF/INFT/038300325851/Aarushconstruct', 80000.00, 8337.03, 'Matched'),
(3, 'S77253913', '2024-11-16', '2024-11-16', '2024-11-16 15:34:55', '', 'MMT/IMPS/432115747635/Rent/NewPG/DLXB0000161', 40800.00, 93369.03, 'pending'),
(4, 'S80548362', '2024-11-16', '2024-11-16', '2024-11-16 23:26:37', '', 'INF/INFT/038316904291/Aarushconstruct', 70000.00, 118324.85, 'Matched'),
(5, 'S92531585', '2024-11-18', '2024-11-18', '2024-11-18 15:44:16', '', 'INF/INFT/038326629751/HandLoanforLabo/Aarushconstruct', 280000.00, 18798.85, 'pending'),
(6, 'S1465723', '2024-11-19', '2024-11-19', '2024-11-19 14:46:58', '', 'INF/INFT/038336781751/Salary         /Juni', 60000.00, 127423.85, 'Matched'),
(7, 'S19000689', '2024-11-21', '2024-11-21', '2024-11-21 13:58:22', '', 'INF/INFT/038357464881/1stpaymentforso/Grassroots', 44840.00, 121874.85, 'pending'),
(8, 'S19310987', '2024-11-21', '2024-11-21', '2024-11-21 14:40:26', '', 'UPI/432666504141/Friend/shriramchits@ax//ICIba5874a31a344dfeb2014fe3b322384b/', 33500.00, 126454.45, 'pending'),
(9, 'S23582280', '2024-11-21', '2024-11-21', '2024-11-21 22:18:45', '', 'UPI/432668564507/Salary/8867360378@axl//ICI76833989e2614d92b61284cf1cd3cf7a/', 8000.00, 118454.45, 'pending'),
(10, 'S23668504', '2024-11-21', '2024-11-21', '2024-11-21 22:39:55', '', 'MMT/IMPS/432622153084/BULD44982912/RASMONIMUR/PUNB0034020', 4000.00, 114454.45, 'pending'),
(11, 'S26531035', '2024-11-22', '2024-11-22', '2024-11-22 10:30:51', '', 'MMT/IMPS/432710596338/BULD44985067/SAGARSARKA/YESB0000452', 8662.00, 120792.45, 'pending'),
(12, 'S30183751', '2024-11-22', '2024-11-22', '2024-11-22 17:10:34', '', 'UPI/432771596960/Salary/prasenjitadak82//ICIa6dc49ec8de344fcb3504b936b506c8d/', 10000.00, 123392.45, 'pending'),
(13, 'S30568729', '2024-11-22', '2024-11-22', '2024-11-22 17:35:39', '', 'UPI/432771713885/Salary/rakhikarmakar6@//ICI8fd632ef228a44a3aa639912facf2108/', 8000.00, 115392.45, 'pending'),
(14, 'S63095422', '2024-11-26', '2024-11-26', '2024-11-26 21:47:11', '', 'MMT/IMPS/433121524335/Selfkotak/KKBK0000811', 12000.00, 180593.45, 'pending'),
(15, 'S63099713', '2024-11-26', '2024-11-26', '2024-11-26 21:47:49', '', 'MMT/IMPS/433121525747/SelfPNB/PUNB0588100', 12000.00, 168593.45, 'pending'),
(16, 'S89474506', '2024-11-29', '2024-11-29', '2024-11-29 14:56:00', '', 'MMT/IMPS/433414999766/ForCreditCardpa/MyAxisBank/UTIB0000734', 45000.00, 123593.45, 'pending'),
(17, 'S11913744', '2024-12-01', '2024-12-01', '2024-12-01 20:15:39', '', 'MMT/IMPS/433620548724/Salary/SoniAXIS/UTIB0000734', 41001.00, 193137.45, 'pending'),
(18, 'S11933750', '2024-12-01', '2024-12-01', '2024-12-01 20:17:58', '', 'INF/INFT/038456635211/Aarushconstruct', 50000.00, 143137.45, 'pending'),
(19, 'S12027408', '2024-12-01', '2024-12-01', '2024-12-01 20:30:15', '', 'MMT/IMPS/433620578920/Rent/NewFlat/KARB0000083', 33500.00, 109637.45, 'pending'),
(20, 'S12114084', '2024-12-01', '2024-12-01', '2024-12-01 20:41:47', '', 'MMT/IMPS/433620600620/MyAxisBank/UTIB0000734', 20000.00, 89637.45, 'pending'),
(21, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'MESPOS/Serv Fee_OCT24/EP049242', 50.00, 196172.45, 'pending'),
(22, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'SGST202412035739008059', 4.50, 196167.95, 'pending'),
(23, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'CGST202412035739008064', 4.50, 196163.45, 'pending'),
(24, 'S34977478', '2024-12-03', '2024-12-03', '2024-12-03 18:01:35', '', 'MMT/IMPS/433818507136/Formaterialbill/BipinKumar/SBIN0001238', 160000.00, 49663.45, 'pending'),
(25, 'S39537408', '2024-12-04', '2024-12-04', '2024-12-04 08:40:25', '', 'ATD/Auto Debit CC1xx1726', 9362.15, 222176.30, 'pending'),
(26, 'S40011913', '2024-12-04', '2024-12-04', '2024-12-04 09:50:45', '', 'MMT/IMPS/433909799193/KSRajeshwari/BARB0VJCHEM', 100000.00, 122176.30, 'pending'),
(27, 'S51071370', '2024-12-05', '2024-12-05', '2024-12-05 07:15:15', '', 'INF/INFT/038498200491/ForloanEMI     /Aarushconstruct', 120000.00, 140127.30, 'pending'),
(28, 'S51469932', '2024-12-05', '2024-12-05', '2024-12-05 07:42:54', '', 'ACH/HDFC BANK LIMITED/ICIC0000000013399486/0000125631456', 30396.00, 109731.30, 'pending'),
(29, 'S59349420', '2024-12-05', '2024-12-05', '2024-12-05 20:00:04', '', 'MMT/IMPS/434020062300/Salary/RSHomeMano/HDFC0003678', 70100.00, 156610.90, 'pending'),
(30, 'S59395615', '2024-12-05', '2024-12-05', '2024-12-05 20:04:49', '', 'MMT/IMPS/434020074205/Salary/ChandiniHo/HDFC0001472', 14825.00, 141785.90, 'pending'),
(31, 'S66669315', '2024-12-06', '2024-12-06', '2024-12-06 15:40:00', '', 'IMPS Chg Sep-24+GST', 35.40, 212250.50, 'pending'),
(32, 'S80871315', '2024-12-07', '2024-12-07', '2024-12-07 21:55:15', '', 'MMT/IMPS/434221833895/ForCreditCardpa/Selfkotak/KKBK0000811', 230000.00, 32550.50, 'pending'),
(33, 'S97140554', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 309729.18, 'pending'),
(34, 'S97140657', '2024-12-09', '2024-12-09', '2024-12-09 20:58:37', '', 'MMT/IMPS/434420748285/BULD45757891/AJMALHUSSA/IPOS0000001', 18810.00, 290919.18, 'pending'),
(35, 'S97141720', '2024-12-09', '2024-12-09', '2024-12-09 20:58:39', '', 'MMT/IMPS/434420748321/BULD45757891/SHIVANIVER/IDIB000B818', 16038.00, 274881.18, 'pending'),
(36, 'S97141093', '2024-12-09', '2024-12-09', '2024-12-09 20:58:40', '', 'MMT/IMPS/434420749252/BULD45757891/MANISHABIS/UBIN0561291', 20790.00, 254091.18, 'pending'),
(37, 'S97141677', '2024-12-09', '2024-12-09', '2024-12-09 20:58:41', '', 'MMT/IMPS/434420748382/BULD45757891/PHILIPVENG/HDFC0001239', 19800.00, 234291.18, 'pending'),
(38, 'S97141945', '2024-12-09', '2024-12-09', '2024-12-09 20:58:42', '', 'MMT/IMPS/434420748417/BULD45757891/PROTIMAMID/PUNB0047820', 12770.00, 221521.18, 'pending'),
(39, 'S97142838', '2024-12-09', '2024-12-09', '2024-12-09 20:58:44', '', 'MMT/IMPS/434420749473/BULD45757891/PRIYAVARMA/PUNB0198520', 17820.00, 203701.18, 'pending'),
(40, 'S97143366', '2024-12-09', '2024-12-09', '2024-12-09 20:58:46', '', 'MMT/IMPS/434420749525/BULD45757891/PHULIBHUIY/CNRB0005557', 19800.00, 183901.18, 'pending'),
(41, 'S97143716', '2024-12-09', '2024-12-09', '2024-12-09 20:58:48', '', 'MMT/IMPS/434420749424/BULD45757891/SUMANAROY/SBIN0009977', 4817.00, 179084.18, 'pending'),
(42, 'S97143078', '2024-12-09', '2024-12-09', '2024-12-09 20:58:49', '', 'MMT/IMPS/434420749445/BULD45757891/PRADEEPDIW/IDIB000B781', 6534.00, 172550.18, 'pending'),
(43, 'S97142586', '2024-12-09', '2024-12-09', '2024-12-09 20:58:50', '', 'MMT/IMPS/434420749619/BULD45757891/BANDANAROY/SBIN0009705', 19800.00, 152750.18, 'pending'),
(44, 'S97326765', '2024-12-09', '2024-12-09', '2024-12-09 21:20:26', '', 'MMT/IMPS/434421797437/Selfkotak/KKBK0000811', 32000.00, 120750.18, 'pending'),
(45, 'S51777577', '2024-11-13', '2024-11-13', '2024-11-13 16:21:52', '', 'MMT/IMPS/431816671539/MitalBhanushali/SBIN0007212', 20000.00, 14434.03, 'Matched'),
(46, 'S68809433', '2024-11-15', '2024-11-15', '2024-11-15 13:55:39', '', 'INF/INFT/038300325851/Aarushconstruct', 80000.00, 8337.03, 'Matched'),
(47, 'S77253913', '2024-11-16', '2024-11-16', '2024-11-16 15:34:55', '', 'MMT/IMPS/432115747635/Rent/NewPG/DLXB0000161', 40800.00, 93369.03, 'pending'),
(48, 'S80548362', '2024-11-16', '2024-11-16', '2024-11-16 23:26:37', '', 'INF/INFT/038316904291/Aarushconstruct', 70000.00, 118324.85, 'Matched'),
(49, 'S92531585', '2024-11-18', '2024-11-18', '2024-11-18 15:44:16', '', 'INF/INFT/038326629751/HandLoanforLabo/Aarushconstruct', 280000.00, 18798.85, 'pending'),
(50, 'S1465723', '2024-11-19', '2024-11-19', '2024-11-19 14:46:58', '', 'INF/INFT/038336781751/Salary         /Juni', 60000.00, 127423.85, 'Matched'),
(51, 'S19000689', '2024-11-21', '2024-11-21', '2024-11-21 13:58:22', '', 'INF/INFT/038357464881/1stpaymentforso/Grassroots', 44840.00, 121874.85, 'pending'),
(52, 'S19310987', '2024-11-21', '2024-11-21', '2024-11-21 14:40:26', '', 'UPI/432666504141/Friend/shriramchits@ax//ICIba5874a31a344dfeb2014fe3b322384b/', 33500.00, 126454.45, 'pending'),
(53, 'S23582280', '2024-11-21', '2024-11-21', '2024-11-21 22:18:45', '', 'UPI/432668564507/Salary/8867360378@axl//ICI76833989e2614d92b61284cf1cd3cf7a/', 8000.00, 118454.45, 'pending'),
(54, 'S23668504', '2024-11-21', '2024-11-21', '2024-11-21 22:39:55', '', 'MMT/IMPS/432622153084/BULD44982912/RASMONIMUR/PUNB0034020', 4000.00, 114454.45, 'pending'),
(55, 'S26531035', '2024-11-22', '2024-11-22', '2024-11-22 10:30:51', '', 'MMT/IMPS/432710596338/BULD44985067/SAGARSARKA/YESB0000452', 8662.00, 120792.45, 'pending'),
(56, 'S30183751', '2024-11-22', '2024-11-22', '2024-11-22 17:10:34', '', 'UPI/432771596960/Salary/prasenjitadak82//ICIa6dc49ec8de344fcb3504b936b506c8d/', 10000.00, 123392.45, 'pending'),
(57, 'S30568729', '2024-11-22', '2024-11-22', '2024-11-22 17:35:39', '', 'UPI/432771713885/Salary/rakhikarmakar6@//ICI8fd632ef228a44a3aa639912facf2108/', 8000.00, 115392.45, 'pending'),
(58, 'S63095422', '2024-11-26', '2024-11-26', '2024-11-26 21:47:11', '', 'MMT/IMPS/433121524335/Selfkotak/KKBK0000811', 12000.00, 180593.45, 'pending'),
(59, 'S63099713', '2024-11-26', '2024-11-26', '2024-11-26 21:47:49', '', 'MMT/IMPS/433121525747/SelfPNB/PUNB0588100', 12000.00, 168593.45, 'pending'),
(60, 'S89474506', '2024-11-29', '2024-11-29', '2024-11-29 14:56:00', '', 'MMT/IMPS/433414999766/ForCreditCardpa/MyAxisBank/UTIB0000734', 45000.00, 123593.45, 'pending'),
(61, 'S11913744', '2024-12-01', '2024-12-01', '2024-12-01 20:15:39', '', 'MMT/IMPS/433620548724/Salary/SoniAXIS/UTIB0000734', 41001.00, 193137.45, 'pending'),
(62, 'S11933750', '2024-12-01', '2024-12-01', '2024-12-01 20:17:58', '', 'INF/INFT/038456635211/Aarushconstruct', 50000.00, 143137.45, 'pending'),
(63, 'S12027408', '2024-12-01', '2024-12-01', '2024-12-01 20:30:15', '', 'MMT/IMPS/433620578920/Rent/NewFlat/KARB0000083', 33500.00, 109637.45, 'pending'),
(64, 'S12114084', '2024-12-01', '2024-12-01', '2024-12-01 20:41:47', '', 'MMT/IMPS/433620600620/MyAxisBank/UTIB0000734', 20000.00, 89637.45, 'pending'),
(65, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'MESPOS/Serv Fee_OCT24/EP049242', 50.00, 196172.45, 'pending'),
(66, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'SGST202412035739008059', 4.50, 196167.95, 'pending'),
(67, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'CGST202412035739008064', 4.50, 196163.45, 'pending'),
(68, 'S34977478', '2024-12-03', '2024-12-03', '2024-12-03 18:01:35', '', 'MMT/IMPS/433818507136/Formaterialbill/BipinKumar/SBIN0001238', 160000.00, 49663.45, 'pending'),
(69, 'S39537408', '2024-12-04', '2024-12-04', '2024-12-04 08:40:25', '', 'ATD/Auto Debit CC1xx1726', 9362.15, 222176.30, 'pending'),
(70, 'S40011913', '2024-12-04', '2024-12-04', '2024-12-04 09:50:45', '', 'MMT/IMPS/433909799193/KSRajeshwari/BARB0VJCHEM', 100000.00, 122176.30, 'pending'),
(71, 'S51071370', '2024-12-05', '2024-12-05', '2024-12-05 07:15:15', '', 'INF/INFT/038498200491/ForloanEMI     /Aarushconstruct', 120000.00, 140127.30, 'pending'),
(72, 'S51469932', '2024-12-05', '2024-12-05', '2024-12-05 07:42:54', '', 'ACH/HDFC BANK LIMITED/ICIC0000000013399486/0000125631456', 30396.00, 109731.30, 'pending'),
(73, 'S59349420', '2024-12-05', '2024-12-05', '2024-12-05 20:00:04', '', 'MMT/IMPS/434020062300/Salary/RSHomeMano/HDFC0003678', 70100.00, 156610.90, 'pending'),
(74, 'S59395615', '2024-12-05', '2024-12-05', '2024-12-05 20:04:49', '', 'MMT/IMPS/434020074205/Salary/ChandiniHo/HDFC0001472', 14825.00, 141785.90, 'pending'),
(75, 'S66669315', '2024-12-06', '2024-12-06', '2024-12-06 15:40:00', '', 'IMPS Chg Sep-24+GST', 35.40, 212250.50, 'pending'),
(76, 'S80871315', '2024-12-07', '2024-12-07', '2024-12-07 21:55:15', '', 'MMT/IMPS/434221833895/ForCreditCardpa/Selfkotak/KKBK0000811', 230000.00, 32550.50, 'pending'),
(77, 'S97140554', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 309729.18, 'pending'),
(78, 'S97140657', '2024-12-09', '2024-12-09', '2024-12-09 20:58:37', '', 'MMT/IMPS/434420748285/BULD45757891/AJMALHUSSA/IPOS0000001', 18810.00, 290919.18, 'pending'),
(79, 'S97141720', '2024-12-09', '2024-12-09', '2024-12-09 20:58:39', '', 'MMT/IMPS/434420748321/BULD45757891/SHIVANIVER/IDIB000B818', 16038.00, 274881.18, 'pending'),
(80, 'S97141093', '2024-12-09', '2024-12-09', '2024-12-09 20:58:40', '', 'MMT/IMPS/434420749252/BULD45757891/MANISHABIS/UBIN0561291', 20790.00, 254091.18, 'pending'),
(81, 'S97141677', '2024-12-09', '2024-12-09', '2024-12-09 20:58:41', '', 'MMT/IMPS/434420748382/BULD45757891/PHILIPVENG/HDFC0001239', 19800.00, 234291.18, 'pending'),
(82, 'S97141945', '2024-12-09', '2024-12-09', '2024-12-09 20:58:42', '', 'MMT/IMPS/434420748417/BULD45757891/PROTIMAMID/PUNB0047820', 12770.00, 221521.18, 'pending'),
(83, 'S97142838', '2024-12-09', '2024-12-09', '2024-12-09 20:58:44', '', 'MMT/IMPS/434420749473/BULD45757891/PRIYAVARMA/PUNB0198520', 17820.00, 203701.18, 'pending'),
(84, 'S97143366', '2024-12-09', '2024-12-09', '2024-12-09 20:58:46', '', 'MMT/IMPS/434420749525/BULD45757891/PHULIBHUIY/CNRB0005557', 19800.00, 183901.18, 'pending'),
(85, 'S97143716', '2024-12-09', '2024-12-09', '2024-12-09 20:58:48', '', 'MMT/IMPS/434420749424/BULD45757891/SUMANAROY/SBIN0009977', 4817.00, 179084.18, 'pending'),
(86, 'S97143078', '2024-12-09', '2024-12-09', '2024-12-09 20:58:49', '', 'MMT/IMPS/434420749445/BULD45757891/PRADEEPDIW/IDIB000B781', 6534.00, 172550.18, 'pending'),
(87, 'S97142586', '2024-12-09', '2024-12-09', '2024-12-09 20:58:50', '', 'MMT/IMPS/434420749619/BULD45757891/BANDANAROY/SBIN0009705', 19800.00, 152750.18, 'pending'),
(88, 'S97326765', '2024-12-09', '2024-12-09', '2024-12-09 21:20:26', '', 'MMT/IMPS/434421797437/Selfkotak/KKBK0000811', 32000.00, 120750.18, 'pending'),
(89, 'S51777577', '2024-11-13', '2024-11-13', '2024-11-13 16:21:52', '', 'MMT/IMPS/431816671539/MitalBhanushali/SBIN0007212', 20000.00, 14434.03, 'Matched'),
(90, 'S68809433', '2024-11-15', '2024-11-15', '2024-11-15 13:55:39', '', 'INF/INFT/038300325851/Aarushconstruct', 80000.00, 8337.03, 'Matched'),
(91, 'S77253913', '2024-11-16', '2024-11-16', '2024-11-16 15:34:55', '', 'MMT/IMPS/432115747635/Rent/NewPG/DLXB0000161', 40800.00, 93369.03, 'pending'),
(92, 'S80548362', '2024-11-16', '2024-11-16', '2024-11-16 23:26:37', '', 'INF/INFT/038316904291/Aarushconstruct', 70000.00, 118324.85, 'Matched'),
(93, 'S92531585', '2024-11-18', '2024-11-18', '2024-11-18 15:44:16', '', 'INF/INFT/038326629751/HandLoanforLabo/Aarushconstruct', 280000.00, 18798.85, 'pending'),
(94, 'S1465723', '2024-11-19', '2024-11-19', '2024-11-19 14:46:58', '', 'INF/INFT/038336781751/Salary         /Juni', 60000.00, 127423.85, 'Matched'),
(95, 'S19000689', '2024-11-21', '2024-11-21', '2024-11-21 13:58:22', '', 'INF/INFT/038357464881/1stpaymentforso/Grassroots', 44840.00, 121874.85, 'pending'),
(96, 'S19310987', '2024-11-21', '2024-11-21', '2024-11-21 14:40:26', '', 'UPI/432666504141/Friend/shriramchits@ax//ICIba5874a31a344dfeb2014fe3b322384b/', 33500.00, 126454.45, 'pending'),
(97, 'S23582280', '2024-11-21', '2024-11-21', '2024-11-21 22:18:45', '', 'UPI/432668564507/Salary/8867360378@axl//ICI76833989e2614d92b61284cf1cd3cf7a/', 8000.00, 118454.45, 'pending'),
(98, 'S23668504', '2024-11-21', '2024-11-21', '2024-11-21 22:39:55', '', 'MMT/IMPS/432622153084/BULD44982912/RASMONIMUR/PUNB0034020', 4000.00, 114454.45, 'pending'),
(99, 'S26531035', '2024-11-22', '2024-11-22', '2024-11-22 10:30:51', '', 'MMT/IMPS/432710596338/BULD44985067/SAGARSARKA/YESB0000452', 8662.00, 120792.45, 'pending'),
(100, 'S30183751', '2024-11-22', '2024-11-22', '2024-11-22 17:10:34', '', 'UPI/432771596960/Salary/prasenjitadak82//ICIa6dc49ec8de344fcb3504b936b506c8d/', 10000.00, 123392.45, 'pending'),
(101, 'S30568729', '2024-11-22', '2024-11-22', '2024-11-22 17:35:39', '', 'UPI/432771713885/Salary/rakhikarmakar6@//ICI8fd632ef228a44a3aa639912facf2108/', 8000.00, 115392.45, 'pending'),
(102, 'S63095422', '2024-11-26', '2024-11-26', '2024-11-26 21:47:11', '', 'MMT/IMPS/433121524335/Selfkotak/KKBK0000811', 12000.00, 180593.45, 'pending'),
(103, 'S63099713', '2024-11-26', '2024-11-26', '2024-11-26 21:47:49', '', 'MMT/IMPS/433121525747/SelfPNB/PUNB0588100', 12000.00, 168593.45, 'pending'),
(104, 'S89474506', '2024-11-29', '2024-11-29', '2024-11-29 14:56:00', '', 'MMT/IMPS/433414999766/ForCreditCardpa/MyAxisBank/UTIB0000734', 45000.00, 123593.45, 'pending'),
(105, 'S11913744', '2024-12-01', '2024-12-01', '2024-12-01 20:15:39', '', 'MMT/IMPS/433620548724/Salary/SoniAXIS/UTIB0000734', 41001.00, 193137.45, 'pending'),
(106, 'S11933750', '2024-12-01', '2024-12-01', '2024-12-01 20:17:58', '', 'INF/INFT/038456635211/Aarushconstruct', 50000.00, 143137.45, 'pending'),
(107, 'S12027408', '2024-12-01', '2024-12-01', '2024-12-01 20:30:15', '', 'MMT/IMPS/433620578920/Rent/NewFlat/KARB0000083', 33500.00, 109637.45, 'pending'),
(108, 'S12114084', '2024-12-01', '2024-12-01', '2024-12-01 20:41:47', '', 'MMT/IMPS/433620600620/MyAxisBank/UTIB0000734', 20000.00, 89637.45, 'pending'),
(109, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'MESPOS/Serv Fee_OCT24/EP049242', 50.00, 196172.45, 'pending'),
(110, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'SGST202412035739008059', 4.50, 196167.95, 'pending'),
(111, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'CGST202412035739008064', 4.50, 196163.45, 'pending'),
(112, 'S34977478', '2024-12-03', '2024-12-03', '2024-12-03 18:01:35', '', 'MMT/IMPS/433818507136/Formaterialbill/BipinKumar/SBIN0001238', 160000.00, 49663.45, 'pending'),
(113, 'S39537408', '2024-12-04', '2024-12-04', '2024-12-04 08:40:25', '', 'ATD/Auto Debit CC1xx1726', 9362.15, 222176.30, 'pending'),
(114, 'S40011913', '2024-12-04', '2024-12-04', '2024-12-04 09:50:45', '', 'MMT/IMPS/433909799193/KSRajeshwari/BARB0VJCHEM', 100000.00, 122176.30, 'pending'),
(115, 'S51071370', '2024-12-05', '2024-12-05', '2024-12-05 07:15:15', '', 'INF/INFT/038498200491/ForloanEMI     /Aarushconstruct', 120000.00, 140127.30, 'pending'),
(116, 'S51469932', '2024-12-05', '2024-12-05', '2024-12-05 07:42:54', '', 'ACH/HDFC BANK LIMITED/ICIC0000000013399486/0000125631456', 30396.00, 109731.30, 'pending'),
(117, 'S59349420', '2024-12-05', '2024-12-05', '2024-12-05 20:00:04', '', 'MMT/IMPS/434020062300/Salary/RSHomeMano/HDFC0003678', 70100.00, 156610.90, 'pending'),
(118, 'S59395615', '2024-12-05', '2024-12-05', '2024-12-05 20:04:49', '', 'MMT/IMPS/434020074205/Salary/ChandiniHo/HDFC0001472', 14825.00, 141785.90, 'pending'),
(119, 'S66669315', '2024-12-06', '2024-12-06', '2024-12-06 15:40:00', '', 'IMPS Chg Sep-24+GST', 35.40, 212250.50, 'pending'),
(120, 'S80871315', '2024-12-07', '2024-12-07', '2024-12-07 21:55:15', '', 'MMT/IMPS/434221833895/ForCreditCardpa/Selfkotak/KKBK0000811', 230000.00, 32550.50, 'pending'),
(121, 'S97140554', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 309729.18, 'pending'),
(122, 'S97140657', '2024-12-09', '2024-12-09', '2024-12-09 20:58:37', '', 'MMT/IMPS/434420748285/BULD45757891/AJMALHUSSA/IPOS0000001', 18810.00, 290919.18, 'pending'),
(123, 'S97141720', '2024-12-09', '2024-12-09', '2024-12-09 20:58:39', '', 'MMT/IMPS/434420748321/BULD45757891/SHIVANIVER/IDIB000B818', 16038.00, 274881.18, 'pending'),
(124, 'S97141093', '2024-12-09', '2024-12-09', '2024-12-09 20:58:40', '', 'MMT/IMPS/434420749252/BULD45757891/MANISHABIS/UBIN0561291', 20790.00, 254091.18, 'pending'),
(125, 'S97141677', '2024-12-09', '2024-12-09', '2024-12-09 20:58:41', '', 'MMT/IMPS/434420748382/BULD45757891/PHILIPVENG/HDFC0001239', 19800.00, 234291.18, 'pending'),
(126, 'S97141945', '2024-12-09', '2024-12-09', '2024-12-09 20:58:42', '', 'MMT/IMPS/434420748417/BULD45757891/PROTIMAMID/PUNB0047820', 12770.00, 221521.18, 'pending'),
(127, 'S97142838', '2024-12-09', '2024-12-09', '2024-12-09 20:58:44', '', 'MMT/IMPS/434420749473/BULD45757891/PRIYAVARMA/PUNB0198520', 17820.00, 203701.18, 'pending'),
(128, 'S97143366', '2024-12-09', '2024-12-09', '2024-12-09 20:58:46', '', 'MMT/IMPS/434420749525/BULD45757891/PHULIBHUIY/CNRB0005557', 19800.00, 183901.18, 'pending'),
(129, 'S97143716', '2024-12-09', '2024-12-09', '2024-12-09 20:58:48', '', 'MMT/IMPS/434420749424/BULD45757891/SUMANAROY/SBIN0009977', 4817.00, 179084.18, 'pending'),
(130, 'S97143078', '2024-12-09', '2024-12-09', '2024-12-09 20:58:49', '', 'MMT/IMPS/434420749445/BULD45757891/PRADEEPDIW/IDIB000B781', 6534.00, 172550.18, 'pending'),
(131, 'S97142586', '2024-12-09', '2024-12-09', '2024-12-09 20:58:50', '', 'MMT/IMPS/434420749619/BULD45757891/BANDANAROY/SBIN0009705', 19800.00, 152750.18, 'pending'),
(132, 'S97326765', '2024-12-09', '2024-12-09', '2024-12-09 21:20:26', '', 'MMT/IMPS/434421797437/Selfkotak/KKBK0000811', 32000.00, 120750.18, 'pending'),
(133, 'S51777577', '2024-11-13', '2024-11-13', '2024-11-13 16:21:52', '', 'MMT/IMPS/431816671539/MitalBhanushali/SBIN0007212', 20000.00, 14434.03, 'Matched'),
(134, 'S51777577', '2024-11-13', '2024-11-13', '2024-11-13 16:21:52', '', 'MMT/IMPS/431816671539/MitalBhanushali/SBIN0007212', 20000.00, 14434.03, 'Matched'),
(135, 'S68809433', '2024-11-15', '2024-11-15', '2024-11-15 13:55:39', '', 'INF/INFT/038300325851/Aarushconstruct', 80000.00, 8337.03, 'Matched'),
(136, 'S68809433', '2024-11-15', '2024-11-15', '2024-11-15 13:55:39', '', 'INF/INFT/038300325851/Aarushconstruct', 80000.00, 8337.03, 'Matched'),
(137, 'S77253913', '2024-11-16', '2024-11-16', '2024-11-16 15:34:55', '', 'MMT/IMPS/432115747635/Rent/NewPG/DLXB0000161', 40800.00, 93369.03, 'pending'),
(138, 'S77253913', '2024-11-16', '2024-11-16', '2024-11-16 15:34:55', '', 'MMT/IMPS/432115747635/Rent/NewPG/DLXB0000161', 40800.00, 93369.03, 'pending'),
(139, 'S80548362', '2024-11-16', '2024-11-16', '2024-11-16 23:26:37', '', 'INF/INFT/038316904291/Aarushconstruct', 70000.00, 118324.85, 'Matched'),
(140, 'S80548362', '2024-11-16', '2024-11-16', '2024-11-16 23:26:37', '', 'INF/INFT/038316904291/Aarushconstruct', 70000.00, 118324.85, 'Matched'),
(141, 'S92531585', '2024-11-18', '2024-11-18', '2024-11-18 15:44:16', '', 'INF/INFT/038326629751/HandLoanforLabo/Aarushconstruct', 280000.00, 18798.85, 'pending'),
(142, 'S92531585', '2024-11-18', '2024-11-18', '2024-11-18 15:44:16', '', 'INF/INFT/038326629751/HandLoanforLabo/Aarushconstruct', 280000.00, 18798.85, 'pending'),
(143, 'S1465723', '2024-11-19', '2024-11-19', '2024-11-19 14:46:58', '', 'INF/INFT/038336781751/Salary         /Juni', 60000.00, 127423.85, 'Matched'),
(144, 'S1465723', '2024-11-19', '2024-11-19', '2024-11-19 14:46:58', '', 'INF/INFT/038336781751/Salary         /Juni', 60000.00, 127423.85, 'Matched'),
(145, 'S19000689', '2024-11-21', '2024-11-21', '2024-11-21 13:58:22', '', 'INF/INFT/038357464881/1stpaymentforso/Grassroots', 44840.00, 121874.85, 'pending'),
(146, 'S19000689', '2024-11-21', '2024-11-21', '2024-11-21 13:58:22', '', 'INF/INFT/038357464881/1stpaymentforso/Grassroots', 44840.00, 121874.85, 'pending'),
(147, 'S19310987', '2024-11-21', '2024-11-21', '2024-11-21 14:40:26', '', 'UPI/432666504141/Friend/shriramchits@ax//ICIba5874a31a344dfeb2014fe3b322384b/', 33500.00, 126454.45, 'pending'),
(148, 'S23582280', '2024-11-21', '2024-11-21', '2024-11-21 22:18:45', '', 'UPI/432668564507/Salary/8867360378@axl//ICI76833989e2614d92b61284cf1cd3cf7a/', 8000.00, 118454.45, 'pending'),
(149, 'S19310987', '2024-11-21', '2024-11-21', '2024-11-21 14:40:26', '', 'UPI/432666504141/Friend/shriramchits@ax//ICIba5874a31a344dfeb2014fe3b322384b/', 33500.00, 126454.45, 'pending'),
(150, 'S23668504', '2024-11-21', '2024-11-21', '2024-11-21 22:39:55', '', 'MMT/IMPS/432622153084/BULD44982912/RASMONIMUR/PUNB0034020', 4000.00, 114454.45, 'pending'),
(151, 'S23582280', '2024-11-21', '2024-11-21', '2024-11-21 22:18:45', '', 'UPI/432668564507/Salary/8867360378@axl//ICI76833989e2614d92b61284cf1cd3cf7a/', 8000.00, 118454.45, 'pending'),
(152, 'S23668504', '2024-11-21', '2024-11-21', '2024-11-21 22:39:55', '', 'MMT/IMPS/432622153084/BULD44982912/RASMONIMUR/PUNB0034020', 4000.00, 114454.45, 'pending'),
(153, 'S26531035', '2024-11-22', '2024-11-22', '2024-11-22 10:30:51', '', 'MMT/IMPS/432710596338/BULD44985067/SAGARSARKA/YESB0000452', 8662.00, 120792.45, 'pending'),
(154, 'S26531035', '2024-11-22', '2024-11-22', '2024-11-22 10:30:51', '', 'MMT/IMPS/432710596338/BULD44985067/SAGARSARKA/YESB0000452', 8662.00, 120792.45, 'pending'),
(155, 'S30183751', '2024-11-22', '2024-11-22', '2024-11-22 17:10:34', '', 'UPI/432771596960/Salary/prasenjitadak82//ICIa6dc49ec8de344fcb3504b936b506c8d/', 10000.00, 123392.45, 'pending'),
(156, 'S30568729', '2024-11-22', '2024-11-22', '2024-11-22 17:35:39', '', 'UPI/432771713885/Salary/rakhikarmakar6@//ICI8fd632ef228a44a3aa639912facf2108/', 8000.00, 115392.45, 'pending'),
(157, 'S30183751', '2024-11-22', '2024-11-22', '2024-11-22 17:10:34', '', 'UPI/432771596960/Salary/prasenjitadak82//ICIa6dc49ec8de344fcb3504b936b506c8d/', 10000.00, 123392.45, 'pending'),
(158, 'S30568729', '2024-11-22', '2024-11-22', '2024-11-22 17:35:39', '', 'UPI/432771713885/Salary/rakhikarmakar6@//ICI8fd632ef228a44a3aa639912facf2108/', 8000.00, 115392.45, 'pending'),
(159, 'S63095422', '2024-11-26', '2024-11-26', '2024-11-26 21:47:11', '', 'MMT/IMPS/433121524335/Selfkotak/KKBK0000811', 12000.00, 180593.45, 'pending'),
(160, 'S63099713', '2024-11-26', '2024-11-26', '2024-11-26 21:47:49', '', 'MMT/IMPS/433121525747/SelfPNB/PUNB0588100', 12000.00, 168593.45, 'pending'),
(161, 'S63095422', '2024-11-26', '2024-11-26', '2024-11-26 21:47:11', '', 'MMT/IMPS/433121524335/Selfkotak/KKBK0000811', 12000.00, 180593.45, 'pending'),
(162, 'S89474506', '2024-11-29', '2024-11-29', '2024-11-29 14:56:00', '', 'MMT/IMPS/433414999766/ForCreditCardpa/MyAxisBank/UTIB0000734', 45000.00, 123593.45, 'pending'),
(163, 'S63099713', '2024-11-26', '2024-11-26', '2024-11-26 21:47:49', '', 'MMT/IMPS/433121525747/SelfPNB/PUNB0588100', 12000.00, 168593.45, 'pending'),
(164, 'S89474506', '2024-11-29', '2024-11-29', '2024-11-29 14:56:00', '', 'MMT/IMPS/433414999766/ForCreditCardpa/MyAxisBank/UTIB0000734', 45000.00, 123593.45, 'pending'),
(165, 'S11913744', '2024-12-01', '2024-12-01', '2024-12-01 20:15:39', '', 'MMT/IMPS/433620548724/Salary/SoniAXIS/UTIB0000734', 41001.00, 193137.45, 'pending'),
(166, 'S11933750', '2024-12-01', '2024-12-01', '2024-12-01 20:17:58', '', 'INF/INFT/038456635211/Aarushconstruct', 50000.00, 143137.45, 'pending'),
(167, 'S11913744', '2024-12-01', '2024-12-01', '2024-12-01 20:15:39', '', 'MMT/IMPS/433620548724/Salary/SoniAXIS/UTIB0000734', 41001.00, 193137.45, 'pending'),
(168, 'S12027408', '2024-12-01', '2024-12-01', '2024-12-01 20:30:15', '', 'MMT/IMPS/433620578920/Rent/NewFlat/KARB0000083', 33500.00, 109637.45, 'pending'),
(169, 'S11933750', '2024-12-01', '2024-12-01', '2024-12-01 20:17:58', '', 'INF/INFT/038456635211/Aarushconstruct', 50000.00, 143137.45, 'pending'),
(170, 'S12114084', '2024-12-01', '2024-12-01', '2024-12-01 20:41:47', '', 'MMT/IMPS/433620600620/MyAxisBank/UTIB0000734', 20000.00, 89637.45, 'pending'),
(171, 'S12027408', '2024-12-01', '2024-12-01', '2024-12-01 20:30:15', '', 'MMT/IMPS/433620578920/Rent/NewFlat/KARB0000083', 33500.00, 109637.45, 'pending'),
(172, 'S12114084', '2024-12-01', '2024-12-01', '2024-12-01 20:41:47', '', 'MMT/IMPS/433620600620/MyAxisBank/UTIB0000734', 20000.00, 89637.45, 'pending'),
(173, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'MESPOS/Serv Fee_OCT24/EP049242', 50.00, 196172.45, 'pending'),
(174, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'SGST202412035739008059', 4.50, 196167.95, 'pending'),
(175, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'MESPOS/Serv Fee_OCT24/EP049242', 50.00, 196172.45, 'pending'),
(176, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'CGST202412035739008064', 4.50, 196163.45, 'pending'),
(177, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'SGST202412035739008059', 4.50, 196167.95, 'pending'),
(178, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'CGST202412035739008064', 4.50, 196163.45, 'pending'),
(179, 'S34977478', '2024-12-03', '2024-12-03', '2024-12-03 18:01:35', '', 'MMT/IMPS/433818507136/Formaterialbill/BipinKumar/SBIN0001238', 160000.00, 49663.45, 'pending'),
(180, 'S34977478', '2024-12-03', '2024-12-03', '2024-12-03 18:01:35', '', 'MMT/IMPS/433818507136/Formaterialbill/BipinKumar/SBIN0001238', 160000.00, 49663.45, 'pending'),
(181, 'S39537408', '2024-12-04', '2024-12-04', '2024-12-04 08:40:25', '', 'ATD/Auto Debit CC1xx1726', 9362.15, 222176.30, 'pending'),
(182, 'S40011913', '2024-12-04', '2024-12-04', '2024-12-04 09:50:45', '', 'MMT/IMPS/433909799193/KSRajeshwari/BARB0VJCHEM', 100000.00, 122176.30, 'pending'),
(183, 'S39537408', '2024-12-04', '2024-12-04', '2024-12-04 08:40:25', '', 'ATD/Auto Debit CC1xx1726', 9362.15, 222176.30, 'pending'),
(184, 'S40011913', '2024-12-04', '2024-12-04', '2024-12-04 09:50:45', '', 'MMT/IMPS/433909799193/KSRajeshwari/BARB0VJCHEM', 100000.00, 122176.30, 'pending'),
(185, 'S51071370', '2024-12-05', '2024-12-05', '2024-12-05 07:15:15', '', 'INF/INFT/038498200491/ForloanEMI     /Aarushconstruct', 120000.00, 140127.30, 'pending'),
(186, 'S51469932', '2024-12-05', '2024-12-05', '2024-12-05 07:42:54', '', 'ACH/HDFC BANK LIMITED/ICIC0000000013399486/0000125631456', 30396.00, 109731.30, 'pending'),
(187, 'S51071370', '2024-12-05', '2024-12-05', '2024-12-05 07:15:15', '', 'INF/INFT/038498200491/ForloanEMI     /Aarushconstruct', 120000.00, 140127.30, 'pending'),
(188, 'S51469932', '2024-12-05', '2024-12-05', '2024-12-05 07:42:54', '', 'ACH/HDFC BANK LIMITED/ICIC0000000013399486/0000125631456', 30396.00, 109731.30, 'pending'),
(189, 'S59349420', '2024-12-05', '2024-12-05', '2024-12-05 20:00:04', '', 'MMT/IMPS/434020062300/Salary/RSHomeMano/HDFC0003678', 70100.00, 156610.90, 'pending'),
(190, 'S59395615', '2024-12-05', '2024-12-05', '2024-12-05 20:04:49', '', 'MMT/IMPS/434020074205/Salary/ChandiniHo/HDFC0001472', 14825.00, 141785.90, 'pending'),
(191, 'S59349420', '2024-12-05', '2024-12-05', '2024-12-05 20:00:04', '', 'MMT/IMPS/434020062300/Salary/RSHomeMano/HDFC0003678', 70100.00, 156610.90, 'pending'),
(192, 'S59395615', '2024-12-05', '2024-12-05', '2024-12-05 20:04:49', '', 'MMT/IMPS/434020074205/Salary/ChandiniHo/HDFC0001472', 14825.00, 141785.90, 'pending'),
(193, 'S66669315', '2024-12-06', '2024-12-06', '2024-12-06 15:40:00', '', 'IMPS Chg Sep-24+GST', 35.40, 212250.50, 'pending'),
(194, 'S66669315', '2024-12-06', '2024-12-06', '2024-12-06 15:40:00', '', 'IMPS Chg Sep-24+GST', 35.40, 212250.50, 'pending'),
(195, 'S80871315', '2024-12-07', '2024-12-07', '2024-12-07 21:55:15', '', 'MMT/IMPS/434221833895/ForCreditCardpa/Selfkotak/KKBK0000811', 230000.00, 32550.50, 'pending'),
(196, 'S80871315', '2024-12-07', '2024-12-07', '2024-12-07 21:55:15', '', 'MMT/IMPS/434221833895/ForCreditCardpa/Selfkotak/KKBK0000811', 230000.00, 32550.50, 'pending'),
(197, 'S97140554', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 309729.18, 'pending'),
(198, 'S97140657', '2024-12-09', '2024-12-09', '2024-12-09 20:58:37', '', 'MMT/IMPS/434420748285/BULD45757891/AJMALHUSSA/IPOS0000001', 18810.00, 290919.18, 'pending'),
(199, 'S97140554', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 309729.18, 'pending'),
(200, 'S97141720', '2024-12-09', '2024-12-09', '2024-12-09 20:58:39', '', 'MMT/IMPS/434420748321/BULD45757891/SHIVANIVER/IDIB000B818', 16038.00, 274881.18, 'pending'),
(201, 'S97140657', '2024-12-09', '2024-12-09', '2024-12-09 20:58:37', '', 'MMT/IMPS/434420748285/BULD45757891/AJMALHUSSA/IPOS0000001', 18810.00, 290919.18, 'pending'),
(202, 'S97141093', '2024-12-09', '2024-12-09', '2024-12-09 20:58:40', '', 'MMT/IMPS/434420749252/BULD45757891/MANISHABIS/UBIN0561291', 20790.00, 254091.18, 'pending'),
(203, 'S97141720', '2024-12-09', '2024-12-09', '2024-12-09 20:58:39', '', 'MMT/IMPS/434420748321/BULD45757891/SHIVANIVER/IDIB000B818', 16038.00, 274881.18, 'pending'),
(204, 'S97141677', '2024-12-09', '2024-12-09', '2024-12-09 20:58:41', '', 'MMT/IMPS/434420748382/BULD45757891/PHILIPVENG/HDFC0001239', 19800.00, 234291.18, 'pending'),
(205, 'S97141093', '2024-12-09', '2024-12-09', '2024-12-09 20:58:40', '', 'MMT/IMPS/434420749252/BULD45757891/MANISHABIS/UBIN0561291', 20790.00, 254091.18, 'pending'),
(206, 'S97141945', '2024-12-09', '2024-12-09', '2024-12-09 20:58:42', '', 'MMT/IMPS/434420748417/BULD45757891/PROTIMAMID/PUNB0047820', 12770.00, 221521.18, 'pending'),
(207, 'S97141677', '2024-12-09', '2024-12-09', '2024-12-09 20:58:41', '', 'MMT/IMPS/434420748382/BULD45757891/PHILIPVENG/HDFC0001239', 19800.00, 234291.18, 'pending'),
(208, 'S97142838', '2024-12-09', '2024-12-09', '2024-12-09 20:58:44', '', 'MMT/IMPS/434420749473/BULD45757891/PRIYAVARMA/PUNB0198520', 17820.00, 203701.18, 'pending'),
(209, 'S97141945', '2024-12-09', '2024-12-09', '2024-12-09 20:58:42', '', 'MMT/IMPS/434420748417/BULD45757891/PROTIMAMID/PUNB0047820', 12770.00, 221521.18, 'pending'),
(210, 'S97143366', '2024-12-09', '2024-12-09', '2024-12-09 20:58:46', '', 'MMT/IMPS/434420749525/BULD45757891/PHULIBHUIY/CNRB0005557', 19800.00, 183901.18, 'pending'),
(211, 'S97142838', '2024-12-09', '2024-12-09', '2024-12-09 20:58:44', '', 'MMT/IMPS/434420749473/BULD45757891/PRIYAVARMA/PUNB0198520', 17820.00, 203701.18, 'pending'),
(212, 'S97143716', '2024-12-09', '2024-12-09', '2024-12-09 20:58:48', '', 'MMT/IMPS/434420749424/BULD45757891/SUMANAROY/SBIN0009977', 4817.00, 179084.18, 'pending'),
(213, 'S97143366', '2024-12-09', '2024-12-09', '2024-12-09 20:58:46', '', 'MMT/IMPS/434420749525/BULD45757891/PHULIBHUIY/CNRB0005557', 19800.00, 183901.18, 'pending'),
(214, 'S97143078', '2024-12-09', '2024-12-09', '2024-12-09 20:58:49', '', 'MMT/IMPS/434420749445/BULD45757891/PRADEEPDIW/IDIB000B781', 6534.00, 172550.18, 'pending'),
(215, 'S97143716', '2024-12-09', '2024-12-09', '2024-12-09 20:58:48', '', 'MMT/IMPS/434420749424/BULD45757891/SUMANAROY/SBIN0009977', 4817.00, 179084.18, 'pending'),
(216, 'S97142586', '2024-12-09', '2024-12-09', '2024-12-09 20:58:50', '', 'MMT/IMPS/434420749619/BULD45757891/BANDANAROY/SBIN0009705', 19800.00, 152750.18, 'pending'),
(217, 'S97143078', '2024-12-09', '2024-12-09', '2024-12-09 20:58:49', '', 'MMT/IMPS/434420749445/BULD45757891/PRADEEPDIW/IDIB000B781', 6534.00, 172550.18, 'pending'),
(218, 'S97326765', '2024-12-09', '2024-12-09', '2024-12-09 21:20:26', '', 'MMT/IMPS/434421797437/Selfkotak/KKBK0000811', 32000.00, 120750.18, 'pending'),
(219, 'S97142586', '2024-12-09', '2024-12-09', '2024-12-09 20:58:50', '', 'MMT/IMPS/434420749619/BULD45757891/BANDANAROY/SBIN0009705', 19800.00, 152750.18, 'pending'),
(220, 'S97326765', '2024-12-09', '2024-12-09', '2024-12-09 21:20:26', '', 'MMT/IMPS/434421797437/Selfkotak/KKBK0000811', 32000.00, 120750.18, 'pending'),
(221, 'S51777577', '2024-11-13', '2024-11-13', '2024-11-13 16:21:52', '', 'MMT/IMPS/431816671539/MitalBhanushali/SBIN0007212', 20000.00, 14434.03, 'Matched'),
(222, 'S68809433', '2024-11-15', '2024-11-15', '2024-11-15 13:55:39', '', 'INF/INFT/038300325851/Aarushconstruct', 80000.00, 8337.03, 'Matched'),
(223, 'S77253913', '2024-11-16', '2024-11-16', '2024-11-16 15:34:55', '', 'MMT/IMPS/432115747635/Rent/NewPG/DLXB0000161', 40800.00, 93369.03, 'pending'),
(224, 'S51777577', '2024-11-13', '2024-11-13', '2024-11-13 16:21:52', '', 'MMT/IMPS/431816671539/MitalBhanushali/SBIN0007212', 20000.00, 14434.03, 'Matched'),
(225, 'S80548362', '2024-11-16', '2024-11-16', '2024-11-16 23:26:37', '', 'INF/INFT/038316904291/Aarushconstruct', 70000.00, 118324.85, 'Matched'),
(226, 'S68809433', '2024-11-15', '2024-11-15', '2024-11-15 13:55:39', '', 'INF/INFT/038300325851/Aarushconstruct', 80000.00, 8337.03, 'Matched'),
(227, 'S77253913', '2024-11-16', '2024-11-16', '2024-11-16 15:34:55', '', 'MMT/IMPS/432115747635/Rent/NewPG/DLXB0000161', 40800.00, 93369.03, 'pending'),
(228, 'S92531585', '2024-11-18', '2024-11-18', '2024-11-18 15:44:16', '', 'INF/INFT/038326629751/HandLoanforLabo/Aarushconstruct', 280000.00, 18798.85, 'pending'),
(229, 'S80548362', '2024-11-16', '2024-11-16', '2024-11-16 23:26:37', '', 'INF/INFT/038316904291/Aarushconstruct', 70000.00, 118324.85, 'Matched'),
(230, 'S1465723', '2024-11-19', '2024-11-19', '2024-11-19 14:46:58', '', 'INF/INFT/038336781751/Salary         /Juni', 60000.00, 127423.85, 'Matched'),
(231, 'S19000689', '2024-11-21', '2024-11-21', '2024-11-21 13:58:22', '', 'INF/INFT/038357464881/1stpaymentforso/Grassroots', 44840.00, 121874.85, 'pending'),
(232, 'S19310987', '2024-11-21', '2024-11-21', '2024-11-21 14:40:26', '', 'UPI/432666504141/Friend/shriramchits@ax//ICIba5874a31a344dfeb2014fe3b322384b/', 33500.00, 126454.45, 'pending'),
(233, 'S23582280', '2024-11-21', '2024-11-21', '2024-11-21 22:18:45', '', 'UPI/432668564507/Salary/8867360378@axl//ICI76833989e2614d92b61284cf1cd3cf7a/', 8000.00, 118454.45, 'pending'),
(234, 'S23668504', '2024-11-21', '2024-11-21', '2024-11-21 22:39:55', '', 'MMT/IMPS/432622153084/BULD44982912/RASMONIMUR/PUNB0034020', 4000.00, 114454.45, 'pending'),
(235, 'S26531035', '2024-11-22', '2024-11-22', '2024-11-22 10:30:51', '', 'MMT/IMPS/432710596338/BULD44985067/SAGARSARKA/YESB0000452', 8662.00, 120792.45, 'pending'),
(236, 'S30183751', '2024-11-22', '2024-11-22', '2024-11-22 17:10:34', '', 'UPI/432771596960/Salary/prasenjitadak82//ICIa6dc49ec8de344fcb3504b936b506c8d/', 10000.00, 123392.45, 'pending'),
(237, 'S92531585', '2024-11-18', '2024-11-18', '2024-11-18 15:44:16', '', 'INF/INFT/038326629751/HandLoanforLabo/Aarushconstruct', 280000.00, 18798.85, 'pending'),
(238, 'S30568729', '2024-11-22', '2024-11-22', '2024-11-22 17:35:39', '', 'UPI/432771713885/Salary/rakhikarmakar6@//ICI8fd632ef228a44a3aa639912facf2108/', 8000.00, 115392.45, 'pending'),
(239, 'S63095422', '2024-11-26', '2024-11-26', '2024-11-26 21:47:11', '', 'MMT/IMPS/433121524335/Selfkotak/KKBK0000811', 12000.00, 180593.45, 'pending'),
(240, 'S63099713', '2024-11-26', '2024-11-26', '2024-11-26 21:47:49', '', 'MMT/IMPS/433121525747/SelfPNB/PUNB0588100', 12000.00, 168593.45, 'pending'),
(241, 'S89474506', '2024-11-29', '2024-11-29', '2024-11-29 14:56:00', '', 'MMT/IMPS/433414999766/ForCreditCardpa/MyAxisBank/UTIB0000734', 45000.00, 123593.45, 'pending'),
(242, 'S1465723', '2024-11-19', '2024-11-19', '2024-11-19 14:46:58', '', 'INF/INFT/038336781751/Salary         /Juni', 60000.00, 127423.85, 'Matched'),
(243, 'S19000689', '2024-11-21', '2024-11-21', '2024-11-21 13:58:22', '', 'INF/INFT/038357464881/1stpaymentforso/Grassroots', 44840.00, 121874.85, 'pending'),
(244, 'S19310987', '2024-11-21', '2024-11-21', '2024-11-21 14:40:26', '', 'UPI/432666504141/Friend/shriramchits@ax//ICIba5874a31a344dfeb2014fe3b322384b/', 33500.00, 126454.45, 'pending'),
(245, 'S23582280', '2024-11-21', '2024-11-21', '2024-11-21 22:18:45', '', 'UPI/432668564507/Salary/8867360378@axl//ICI76833989e2614d92b61284cf1cd3cf7a/', 8000.00, 118454.45, 'pending'),
(246, 'S11913744', '2024-12-01', '2024-12-01', '2024-12-01 20:15:39', '', 'MMT/IMPS/433620548724/Salary/SoniAXIS/UTIB0000734', 41001.00, 193137.45, 'pending'),
(247, 'S23668504', '2024-11-21', '2024-11-21', '2024-11-21 22:39:55', '', 'MMT/IMPS/432622153084/BULD44982912/RASMONIMUR/PUNB0034020', 4000.00, 114454.45, 'pending'),
(248, 'S11933750', '2024-12-01', '2024-12-01', '2024-12-01 20:17:58', '', 'INF/INFT/038456635211/Aarushconstruct', 50000.00, 143137.45, 'pending'),
(249, 'S12027408', '2024-12-01', '2024-12-01', '2024-12-01 20:30:15', '', 'MMT/IMPS/433620578920/Rent/NewFlat/KARB0000083', 33500.00, 109637.45, 'pending'),
(250, 'S26531035', '2024-11-22', '2024-11-22', '2024-11-22 10:30:51', '', 'MMT/IMPS/432710596338/BULD44985067/SAGARSARKA/YESB0000452', 8662.00, 120792.45, 'pending'),
(251, 'S12114084', '2024-12-01', '2024-12-01', '2024-12-01 20:41:47', '', 'MMT/IMPS/433620600620/MyAxisBank/UTIB0000734', 20000.00, 89637.45, 'pending'),
(252, 'S30183751', '2024-11-22', '2024-11-22', '2024-11-22 17:10:34', '', 'UPI/432771596960/Salary/prasenjitadak82//ICIa6dc49ec8de344fcb3504b936b506c8d/', 10000.00, 123392.45, 'pending'),
(253, 'S30568729', '2024-11-22', '2024-11-22', '2024-11-22 17:35:39', '', 'UPI/432771713885/Salary/rakhikarmakar6@//ICI8fd632ef228a44a3aa639912facf2108/', 8000.00, 115392.45, 'pending'),
(254, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'MESPOS/Serv Fee_OCT24/EP049242', 50.00, 196172.45, 'pending'),
(255, 'S63095422', '2024-11-26', '2024-11-26', '2024-11-26 21:47:11', '', 'MMT/IMPS/433121524335/Selfkotak/KKBK0000811', 12000.00, 180593.45, 'pending'),
(256, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'SGST202412035739008059', 4.50, 196167.95, 'pending'),
(257, 'S63099713', '2024-11-26', '2024-11-26', '2024-11-26 21:47:49', '', 'MMT/IMPS/433121525747/SelfPNB/PUNB0588100', 12000.00, 168593.45, 'pending'),
(258, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'CGST202412035739008064', 4.50, 196163.45, 'pending'),
(259, 'S89474506', '2024-11-29', '2024-11-29', '2024-11-29 14:56:00', '', 'MMT/IMPS/433414999766/ForCreditCardpa/MyAxisBank/UTIB0000734', 45000.00, 123593.45, 'pending'),
(260, 'S34977478', '2024-12-03', '2024-12-03', '2024-12-03 18:01:35', '', 'MMT/IMPS/433818507136/Formaterialbill/BipinKumar/SBIN0001238', 160000.00, 49663.45, 'pending'),
(261, 'S11913744', '2024-12-01', '2024-12-01', '2024-12-01 20:15:39', '', 'MMT/IMPS/433620548724/Salary/SoniAXIS/UTIB0000734', 41001.00, 193137.45, 'pending'),
(262, 'S11933750', '2024-12-01', '2024-12-01', '2024-12-01 20:17:58', '', 'INF/INFT/038456635211/Aarushconstruct', 50000.00, 143137.45, 'pending'),
(263, 'S12027408', '2024-12-01', '2024-12-01', '2024-12-01 20:30:15', '', 'MMT/IMPS/433620578920/Rent/NewFlat/KARB0000083', 33500.00, 109637.45, 'pending'),
(264, 'S12114084', '2024-12-01', '2024-12-01', '2024-12-01 20:41:47', '', 'MMT/IMPS/433620600620/MyAxisBank/UTIB0000734', 20000.00, 89637.45, 'pending'),
(265, 'S39537408', '2024-12-04', '2024-12-04', '2024-12-04 08:40:25', '', 'ATD/Auto Debit CC1xx1726', 9362.15, 222176.30, 'pending'),
(266, 'S40011913', '2024-12-04', '2024-12-04', '2024-12-04 09:50:45', '', 'MMT/IMPS/433909799193/KSRajeshwari/BARB0VJCHEM', 100000.00, 122176.30, 'pending'),
(267, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'MESPOS/Serv Fee_OCT24/EP049242', 50.00, 196172.45, 'pending'),
(268, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'SGST202412035739008059', 4.50, 196167.95, 'pending'),
(269, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'CGST202412035739008064', 4.50, 196163.45, 'pending'),
(270, 'S34977478', '2024-12-03', '2024-12-03', '2024-12-03 18:01:35', '', 'MMT/IMPS/433818507136/Formaterialbill/BipinKumar/SBIN0001238', 160000.00, 49663.45, 'pending'),
(271, 'S51071370', '2024-12-05', '2024-12-05', '2024-12-05 07:15:15', '', 'INF/INFT/038498200491/ForloanEMI     /Aarushconstruct', 120000.00, 140127.30, 'pending'),
(272, 'S51469932', '2024-12-05', '2024-12-05', '2024-12-05 07:42:54', '', 'ACH/HDFC BANK LIMITED/ICIC0000000013399486/0000125631456', 30396.00, 109731.30, 'pending'),
(273, 'S59349420', '2024-12-05', '2024-12-05', '2024-12-05 20:00:04', '', 'MMT/IMPS/434020062300/Salary/RSHomeMano/HDFC0003678', 70100.00, 156610.90, 'pending'),
(274, 'S59395615', '2024-12-05', '2024-12-05', '2024-12-05 20:04:49', '', 'MMT/IMPS/434020074205/Salary/ChandiniHo/HDFC0001472', 14825.00, 141785.90, 'pending'),
(275, 'S39537408', '2024-12-04', '2024-12-04', '2024-12-04 08:40:25', '', 'ATD/Auto Debit CC1xx1726', 9362.15, 222176.30, 'pending'),
(276, 'S40011913', '2024-12-04', '2024-12-04', '2024-12-04 09:50:45', '', 'MMT/IMPS/433909799193/KSRajeshwari/BARB0VJCHEM', 100000.00, 122176.30, 'pending'),
(277, 'S66669315', '2024-12-06', '2024-12-06', '2024-12-06 15:40:00', '', 'IMPS Chg Sep-24+GST', 35.40, 212250.50, 'pending'),
(278, 'S80871315', '2024-12-07', '2024-12-07', '2024-12-07 21:55:15', '', 'MMT/IMPS/434221833895/ForCreditCardpa/Selfkotak/KKBK0000811', 230000.00, 32550.50, 'pending'),
(279, 'S51071370', '2024-12-05', '2024-12-05', '2024-12-05 07:15:15', '', 'INF/INFT/038498200491/ForloanEMI     /Aarushconstruct', 120000.00, 140127.30, 'pending'),
(280, 'S97140554', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 309729.18, 'pending'),
(281, 'S51469932', '2024-12-05', '2024-12-05', '2024-12-05 07:42:54', '', 'ACH/HDFC BANK LIMITED/ICIC0000000013399486/0000125631456', 30396.00, 109731.30, 'pending'),
(282, 'S97140657', '2024-12-09', '2024-12-09', '2024-12-09 20:58:37', '', 'MMT/IMPS/434420748285/BULD45757891/AJMALHUSSA/IPOS0000001', 18810.00, 290919.18, 'pending'),
(283, 'S97141720', '2024-12-09', '2024-12-09', '2024-12-09 20:58:39', '', 'MMT/IMPS/434420748321/BULD45757891/SHIVANIVER/IDIB000B818', 16038.00, 274881.18, 'pending'),
(284, 'S97141093', '2024-12-09', '2024-12-09', '2024-12-09 20:58:40', '', 'MMT/IMPS/434420749252/BULD45757891/MANISHABIS/UBIN0561291', 20790.00, 254091.18, 'pending'),
(285, 'S97141677', '2024-12-09', '2024-12-09', '2024-12-09 20:58:41', '', 'MMT/IMPS/434420748382/BULD45757891/PHILIPVENG/HDFC0001239', 19800.00, 234291.18, 'pending'),
(286, 'S97141945', '2024-12-09', '2024-12-09', '2024-12-09 20:58:42', '', 'MMT/IMPS/434420748417/BULD45757891/PROTIMAMID/PUNB0047820', 12770.00, 221521.18, 'pending'),
(287, 'S97142838', '2024-12-09', '2024-12-09', '2024-12-09 20:58:44', '', 'MMT/IMPS/434420749473/BULD45757891/PRIYAVARMA/PUNB0198520', 17820.00, 203701.18, 'pending'),
(288, 'S59349420', '2024-12-05', '2024-12-05', '2024-12-05 20:00:04', '', 'MMT/IMPS/434020062300/Salary/RSHomeMano/HDFC0003678', 70100.00, 156610.90, 'pending'),
(289, 'S97143366', '2024-12-09', '2024-12-09', '2024-12-09 20:58:46', '', 'MMT/IMPS/434420749525/BULD45757891/PHULIBHUIY/CNRB0005557', 19800.00, 183901.18, 'pending'),
(290, 'S59395615', '2024-12-05', '2024-12-05', '2024-12-05 20:04:49', '', 'MMT/IMPS/434020074205/Salary/ChandiniHo/HDFC0001472', 14825.00, 141785.90, 'pending'),
(291, 'S97143716', '2024-12-09', '2024-12-09', '2024-12-09 20:58:48', '', 'MMT/IMPS/434420749424/BULD45757891/SUMANAROY/SBIN0009977', 4817.00, 179084.18, 'pending'),
(292, 'S97143078', '2024-12-09', '2024-12-09', '2024-12-09 20:58:49', '', 'MMT/IMPS/434420749445/BULD45757891/PRADEEPDIW/IDIB000B781', 6534.00, 172550.18, 'pending'),
(293, 'S97142586', '2024-12-09', '2024-12-09', '2024-12-09 20:58:50', '', 'MMT/IMPS/434420749619/BULD45757891/BANDANAROY/SBIN0009705', 19800.00, 152750.18, 'pending'),
(294, 'S97326765', '2024-12-09', '2024-12-09', '2024-12-09 21:20:26', '', 'MMT/IMPS/434421797437/Selfkotak/KKBK0000811', 32000.00, 120750.18, 'pending'),
(295, 'S66669315', '2024-12-06', '2024-12-06', '2024-12-06 15:40:00', '', 'IMPS Chg Sep-24+GST', 35.40, 212250.50, 'pending'),
(296, 'S80871315', '2024-12-07', '2024-12-07', '2024-12-07 21:55:15', '', 'MMT/IMPS/434221833895/ForCreditCardpa/Selfkotak/KKBK0000811', 230000.00, 32550.50, 'pending'),
(297, 'S97140554', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 309729.18, 'pending'),
(298, 'S97140657', '2024-12-09', '2024-12-09', '2024-12-09 20:58:37', '', 'MMT/IMPS/434420748285/BULD45757891/AJMALHUSSA/IPOS0000001', 18810.00, 290919.18, 'pending'),
(299, 'S97141720', '2024-12-09', '2024-12-09', '2024-12-09 20:58:39', '', 'MMT/IMPS/434420748321/BULD45757891/SHIVANIVER/IDIB000B818', 16038.00, 274881.18, 'pending'),
(300, 'S97141093', '2024-12-09', '2024-12-09', '2024-12-09 20:58:40', '', 'MMT/IMPS/434420749252/BULD45757891/MANISHABIS/UBIN0561291', 20790.00, 254091.18, 'pending'),
(301, 'S97141677', '2024-12-09', '2024-12-09', '2024-12-09 20:58:41', '', 'MMT/IMPS/434420748382/BULD45757891/PHILIPVENG/HDFC0001239', 19800.00, 234291.18, 'pending'),
(302, 'S97141945', '2024-12-09', '2024-12-09', '2024-12-09 20:58:42', '', 'MMT/IMPS/434420748417/BULD45757891/PROTIMAMID/PUNB0047820', 12770.00, 221521.18, 'pending'),
(303, 'S97142838', '2024-12-09', '2024-12-09', '2024-12-09 20:58:44', '', 'MMT/IMPS/434420749473/BULD45757891/PRIYAVARMA/PUNB0198520', 17820.00, 203701.18, 'pending'),
(304, 'S97143366', '2024-12-09', '2024-12-09', '2024-12-09 20:58:46', '', 'MMT/IMPS/434420749525/BULD45757891/PHULIBHUIY/CNRB0005557', 19800.00, 183901.18, 'pending'),
(305, 'S97143716', '2024-12-09', '2024-12-09', '2024-12-09 20:58:48', '', 'MMT/IMPS/434420749424/BULD45757891/SUMANAROY/SBIN0009977', 4817.00, 179084.18, 'pending'),
(306, 'S97143078', '2024-12-09', '2024-12-09', '2024-12-09 20:58:49', '', 'MMT/IMPS/434420749445/BULD45757891/PRADEEPDIW/IDIB000B781', 6534.00, 172550.18, 'pending'),
(307, 'S97142586', '2024-12-09', '2024-12-09', '2024-12-09 20:58:50', '', 'MMT/IMPS/434420749619/BULD45757891/BANDANAROY/SBIN0009705', 19800.00, 152750.18, 'pending'),
(308, 'S97326765', '2024-12-09', '2024-12-09', '2024-12-09 21:20:26', '', 'MMT/IMPS/434421797437/Selfkotak/KKBK0000811', 32000.00, 120750.18, 'pending'),
(309, 'S51777577', '2024-11-13', '2024-11-13', '2024-11-13 16:21:52', '', 'MMT/IMPS/431816671539/MitalBhanushali/SBIN0007212', 20000.00, 14434.03, 'Matched'),
(310, 'S68809433', '2024-11-15', '2024-11-15', '2024-11-15 13:55:39', '', 'INF/INFT/038300325851/Aarushconstruct', 80000.00, 8337.03, 'Matched'),
(311, 'S77253913', '2024-11-16', '2024-11-16', '2024-11-16 15:34:55', '', 'MMT/IMPS/432115747635/Rent/NewPG/DLXB0000161', 40800.00, 93369.03, 'pending'),
(312, 'S80548362', '2024-11-16', '2024-11-16', '2024-11-16 23:26:37', '', 'INF/INFT/038316904291/Aarushconstruct', 70000.00, 118324.85, 'Matched'),
(313, 'S92531585', '2024-11-18', '2024-11-18', '2024-11-18 15:44:16', '', 'INF/INFT/038326629751/HandLoanforLabo/Aarushconstruct', 280000.00, 18798.85, 'pending'),
(314, 'S1465723', '2024-11-19', '2024-11-19', '2024-11-19 14:46:58', '', 'INF/INFT/038336781751/Salary         /Juni', 60000.00, 127423.85, 'Matched');
INSERT INTO `withdrawals` (`id`, `tran_id`, `value_date`, `transaction_date`, `transaction_posted_date`, `cheque_no_ref_no`, `transaction_remarks`, `withdrawal_amt`, `balance`, `status`) VALUES
(315, 'S19000689', '2024-11-21', '2024-11-21', '2024-11-21 13:58:22', '', 'INF/INFT/038357464881/1stpaymentforso/Grassroots', 44840.00, 121874.85, 'pending'),
(316, 'S19310987', '2024-11-21', '2024-11-21', '2024-11-21 14:40:26', '', 'UPI/432666504141/Friend/shriramchits@ax//ICIba5874a31a344dfeb2014fe3b322384b/', 33500.00, 126454.45, 'pending'),
(317, 'S23582280', '2024-11-21', '2024-11-21', '2024-11-21 22:18:45', '', 'UPI/432668564507/Salary/8867360378@axl//ICI76833989e2614d92b61284cf1cd3cf7a/', 8000.00, 118454.45, 'pending'),
(318, 'S23668504', '2024-11-21', '2024-11-21', '2024-11-21 22:39:55', '', 'MMT/IMPS/432622153084/BULD44982912/RASMONIMUR/PUNB0034020', 4000.00, 114454.45, 'pending'),
(319, 'S26531035', '2024-11-22', '2024-11-22', '2024-11-22 10:30:51', '', 'MMT/IMPS/432710596338/BULD44985067/SAGARSARKA/YESB0000452', 8662.00, 120792.45, 'pending'),
(320, 'S30183751', '2024-11-22', '2024-11-22', '2024-11-22 17:10:34', '', 'UPI/432771596960/Salary/prasenjitadak82//ICIa6dc49ec8de344fcb3504b936b506c8d/', 10000.00, 123392.45, 'pending'),
(321, 'S30568729', '2024-11-22', '2024-11-22', '2024-11-22 17:35:39', '', 'UPI/432771713885/Salary/rakhikarmakar6@//ICI8fd632ef228a44a3aa639912facf2108/', 8000.00, 115392.45, 'pending'),
(322, 'S63095422', '2024-11-26', '2024-11-26', '2024-11-26 21:47:11', '', 'MMT/IMPS/433121524335/Selfkotak/KKBK0000811', 12000.00, 180593.45, 'pending'),
(323, 'S63099713', '2024-11-26', '2024-11-26', '2024-11-26 21:47:49', '', 'MMT/IMPS/433121525747/SelfPNB/PUNB0588100', 12000.00, 168593.45, 'pending'),
(324, 'S89474506', '2024-11-29', '2024-11-29', '2024-11-29 14:56:00', '', 'MMT/IMPS/433414999766/ForCreditCardpa/MyAxisBank/UTIB0000734', 45000.00, 123593.45, 'pending'),
(325, 'S11913744', '2024-12-01', '2024-12-01', '2024-12-01 20:15:39', '', 'MMT/IMPS/433620548724/Salary/SoniAXIS/UTIB0000734', 41001.00, 193137.45, 'pending'),
(326, 'S11933750', '2024-12-01', '2024-12-01', '2024-12-01 20:17:58', '', 'INF/INFT/038456635211/Aarushconstruct', 50000.00, 143137.45, 'pending'),
(327, 'S12027408', '2024-12-01', '2024-12-01', '2024-12-01 20:30:15', '', 'MMT/IMPS/433620578920/Rent/NewFlat/KARB0000083', 33500.00, 109637.45, 'pending'),
(328, 'S12114084', '2024-12-01', '2024-12-01', '2024-12-01 20:41:47', '', 'MMT/IMPS/433620600620/MyAxisBank/UTIB0000734', 20000.00, 89637.45, 'pending'),
(329, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'MESPOS/Serv Fee_OCT24/EP049242', 50.00, 196172.45, 'pending'),
(330, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'SGST202412035739008059', 4.50, 196167.95, 'pending'),
(331, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'CGST202412035739008064', 4.50, 196163.45, 'pending'),
(332, 'S34977478', '2024-12-03', '2024-12-03', '2024-12-03 18:01:35', '', 'MMT/IMPS/433818507136/Formaterialbill/BipinKumar/SBIN0001238', 160000.00, 49663.45, 'pending'),
(333, 'S39537408', '2024-12-04', '2024-12-04', '2024-12-04 08:40:25', '', 'ATD/Auto Debit CC1xx1726', 9362.15, 222176.30, 'pending'),
(334, 'S40011913', '2024-12-04', '2024-12-04', '2024-12-04 09:50:45', '', 'MMT/IMPS/433909799193/KSRajeshwari/BARB0VJCHEM', 100000.00, 122176.30, 'pending'),
(335, 'S51071370', '2024-12-05', '2024-12-05', '2024-12-05 07:15:15', '', 'INF/INFT/038498200491/ForloanEMI     /Aarushconstruct', 120000.00, 140127.30, 'pending'),
(336, 'S51469932', '2024-12-05', '2024-12-05', '2024-12-05 07:42:54', '', 'ACH/HDFC BANK LIMITED/ICIC0000000013399486/0000125631456', 30396.00, 109731.30, 'pending'),
(337, 'S59349420', '2024-12-05', '2024-12-05', '2024-12-05 20:00:04', '', 'MMT/IMPS/434020062300/Salary/RSHomeMano/HDFC0003678', 70100.00, 156610.90, 'pending'),
(338, 'S59395615', '2024-12-05', '2024-12-05', '2024-12-05 20:04:49', '', 'MMT/IMPS/434020074205/Salary/ChandiniHo/HDFC0001472', 14825.00, 141785.90, 'pending'),
(339, 'S66669315', '2024-12-06', '2024-12-06', '2024-12-06 15:40:00', '', 'IMPS Chg Sep-24+GST', 35.40, 212250.50, 'pending'),
(340, 'S80871315', '2024-12-07', '2024-12-07', '2024-12-07 21:55:15', '', 'MMT/IMPS/434221833895/ForCreditCardpa/Selfkotak/KKBK0000811', 230000.00, 32550.50, 'pending'),
(341, 'S97140554', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 309729.18, 'pending'),
(342, 'S97140657', '2024-12-09', '2024-12-09', '2024-12-09 20:58:37', '', 'MMT/IMPS/434420748285/BULD45757891/AJMALHUSSA/IPOS0000001', 18810.00, 290919.18, 'pending'),
(343, 'S97141720', '2024-12-09', '2024-12-09', '2024-12-09 20:58:39', '', 'MMT/IMPS/434420748321/BULD45757891/SHIVANIVER/IDIB000B818', 16038.00, 274881.18, 'pending'),
(344, 'S97141093', '2024-12-09', '2024-12-09', '2024-12-09 20:58:40', '', 'MMT/IMPS/434420749252/BULD45757891/MANISHABIS/UBIN0561291', 20790.00, 254091.18, 'pending'),
(345, 'S97141677', '2024-12-09', '2024-12-09', '2024-12-09 20:58:41', '', 'MMT/IMPS/434420748382/BULD45757891/PHILIPVENG/HDFC0001239', 19800.00, 234291.18, 'pending'),
(346, 'S97141945', '2024-12-09', '2024-12-09', '2024-12-09 20:58:42', '', 'MMT/IMPS/434420748417/BULD45757891/PROTIMAMID/PUNB0047820', 12770.00, 221521.18, 'pending'),
(347, 'S97142838', '2024-12-09', '2024-12-09', '2024-12-09 20:58:44', '', 'MMT/IMPS/434420749473/BULD45757891/PRIYAVARMA/PUNB0198520', 17820.00, 203701.18, 'pending'),
(348, 'S97143366', '2024-12-09', '2024-12-09', '2024-12-09 20:58:46', '', 'MMT/IMPS/434420749525/BULD45757891/PHULIBHUIY/CNRB0005557', 19800.00, 183901.18, 'pending'),
(349, 'S97143716', '2024-12-09', '2024-12-09', '2024-12-09 20:58:48', '', 'MMT/IMPS/434420749424/BULD45757891/SUMANAROY/SBIN0009977', 4817.00, 179084.18, 'pending'),
(350, 'S97143078', '2024-12-09', '2024-12-09', '2024-12-09 20:58:49', '', 'MMT/IMPS/434420749445/BULD45757891/PRADEEPDIW/IDIB000B781', 6534.00, 172550.18, 'pending'),
(351, 'S97142586', '2024-12-09', '2024-12-09', '2024-12-09 20:58:50', '', 'MMT/IMPS/434420749619/BULD45757891/BANDANAROY/SBIN0009705', 19800.00, 152750.18, 'pending'),
(352, 'S97326765', '2024-12-09', '2024-12-09', '2024-12-09 21:20:26', '', 'MMT/IMPS/434421797437/Selfkotak/KKBK0000811', 32000.00, 120750.18, 'pending'),
(353, 'S51777577', '2024-11-13', '2024-11-13', '2024-11-13 16:21:52', '', 'MMT/IMPS/431816671539/MitalBhanushali/SBIN0007212', 20000.00, 14434.03, 'Matched'),
(354, 'S51777577', '2024-11-13', '2024-11-13', '2024-11-13 16:21:52', '', 'MMT/IMPS/431816671539/MitalBhanushali/SBIN0007212', 20000.00, 14434.03, 'Matched'),
(355, 'S68809433', '2024-11-15', '2024-11-15', '2024-11-15 13:55:39', '', 'INF/INFT/038300325851/Aarushconstruct', 80000.00, 8337.03, 'Matched'),
(356, 'S68809433', '2024-11-15', '2024-11-15', '2024-11-15 13:55:39', '', 'INF/INFT/038300325851/Aarushconstruct', 80000.00, 8337.03, 'Matched'),
(357, 'S77253913', '2024-11-16', '2024-11-16', '2024-11-16 15:34:55', '', 'MMT/IMPS/432115747635/Rent/NewPG/DLXB0000161', 40800.00, 93369.03, 'pending'),
(358, 'S77253913', '2024-11-16', '2024-11-16', '2024-11-16 15:34:55', '', 'MMT/IMPS/432115747635/Rent/NewPG/DLXB0000161', 40800.00, 93369.03, 'pending'),
(359, 'S80548362', '2024-11-16', '2024-11-16', '2024-11-16 23:26:37', '', 'INF/INFT/038316904291/Aarushconstruct', 70000.00, 118324.85, 'Matched'),
(360, 'S80548362', '2024-11-16', '2024-11-16', '2024-11-16 23:26:37', '', 'INF/INFT/038316904291/Aarushconstruct', 70000.00, 118324.85, 'Matched'),
(361, 'S92531585', '2024-11-18', '2024-11-18', '2024-11-18 15:44:16', '', 'INF/INFT/038326629751/HandLoanforLabo/Aarushconstruct', 280000.00, 18798.85, 'pending'),
(362, 'S92531585', '2024-11-18', '2024-11-18', '2024-11-18 15:44:16', '', 'INF/INFT/038326629751/HandLoanforLabo/Aarushconstruct', 280000.00, 18798.85, 'pending'),
(363, 'S1465723', '2024-11-19', '2024-11-19', '2024-11-19 14:46:58', '', 'INF/INFT/038336781751/Salary         /Juni', 60000.00, 127423.85, 'Matched'),
(364, 'S1465723', '2024-11-19', '2024-11-19', '2024-11-19 14:46:58', '', 'INF/INFT/038336781751/Salary         /Juni', 60000.00, 127423.85, 'Matched'),
(365, 'S19000689', '2024-11-21', '2024-11-21', '2024-11-21 13:58:22', '', 'INF/INFT/038357464881/1stpaymentforso/Grassroots', 44840.00, 121874.85, 'pending'),
(366, 'S19000689', '2024-11-21', '2024-11-21', '2024-11-21 13:58:22', '', 'INF/INFT/038357464881/1stpaymentforso/Grassroots', 44840.00, 121874.85, 'pending'),
(367, 'S19310987', '2024-11-21', '2024-11-21', '2024-11-21 14:40:26', '', 'UPI/432666504141/Friend/shriramchits@ax//ICIba5874a31a344dfeb2014fe3b322384b/', 33500.00, 126454.45, 'pending'),
(368, 'S19310987', '2024-11-21', '2024-11-21', '2024-11-21 14:40:26', '', 'UPI/432666504141/Friend/shriramchits@ax//ICIba5874a31a344dfeb2014fe3b322384b/', 33500.00, 126454.45, 'pending'),
(369, 'S23582280', '2024-11-21', '2024-11-21', '2024-11-21 22:18:45', '', 'UPI/432668564507/Salary/8867360378@axl//ICI76833989e2614d92b61284cf1cd3cf7a/', 8000.00, 118454.45, 'pending'),
(370, 'S23582280', '2024-11-21', '2024-11-21', '2024-11-21 22:18:45', '', 'UPI/432668564507/Salary/8867360378@axl//ICI76833989e2614d92b61284cf1cd3cf7a/', 8000.00, 118454.45, 'pending'),
(371, 'S23668504', '2024-11-21', '2024-11-21', '2024-11-21 22:39:55', '', 'MMT/IMPS/432622153084/BULD44982912/RASMONIMUR/PUNB0034020', 4000.00, 114454.45, 'pending'),
(372, 'S23668504', '2024-11-21', '2024-11-21', '2024-11-21 22:39:55', '', 'MMT/IMPS/432622153084/BULD44982912/RASMONIMUR/PUNB0034020', 4000.00, 114454.45, 'pending'),
(373, 'S26531035', '2024-11-22', '2024-11-22', '2024-11-22 10:30:51', '', 'MMT/IMPS/432710596338/BULD44985067/SAGARSARKA/YESB0000452', 8662.00, 120792.45, 'pending'),
(374, 'S26531035', '2024-11-22', '2024-11-22', '2024-11-22 10:30:51', '', 'MMT/IMPS/432710596338/BULD44985067/SAGARSARKA/YESB0000452', 8662.00, 120792.45, 'pending'),
(375, 'S30183751', '2024-11-22', '2024-11-22', '2024-11-22 17:10:34', '', 'UPI/432771596960/Salary/prasenjitadak82//ICIa6dc49ec8de344fcb3504b936b506c8d/', 10000.00, 123392.45, 'pending'),
(376, 'S30183751', '2024-11-22', '2024-11-22', '2024-11-22 17:10:34', '', 'UPI/432771596960/Salary/prasenjitadak82//ICIa6dc49ec8de344fcb3504b936b506c8d/', 10000.00, 123392.45, 'pending'),
(377, 'S30568729', '2024-11-22', '2024-11-22', '2024-11-22 17:35:39', '', 'UPI/432771713885/Salary/rakhikarmakar6@//ICI8fd632ef228a44a3aa639912facf2108/', 8000.00, 115392.45, 'pending'),
(378, 'S30568729', '2024-11-22', '2024-11-22', '2024-11-22 17:35:39', '', 'UPI/432771713885/Salary/rakhikarmakar6@//ICI8fd632ef228a44a3aa639912facf2108/', 8000.00, 115392.45, 'pending'),
(379, 'S63095422', '2024-11-26', '2024-11-26', '2024-11-26 21:47:11', '', 'MMT/IMPS/433121524335/Selfkotak/KKBK0000811', 12000.00, 180593.45, 'pending'),
(380, 'S63095422', '2024-11-26', '2024-11-26', '2024-11-26 21:47:11', '', 'MMT/IMPS/433121524335/Selfkotak/KKBK0000811', 12000.00, 180593.45, 'pending'),
(381, 'S63099713', '2024-11-26', '2024-11-26', '2024-11-26 21:47:49', '', 'MMT/IMPS/433121525747/SelfPNB/PUNB0588100', 12000.00, 168593.45, 'pending'),
(382, 'S63099713', '2024-11-26', '2024-11-26', '2024-11-26 21:47:49', '', 'MMT/IMPS/433121525747/SelfPNB/PUNB0588100', 12000.00, 168593.45, 'pending'),
(383, 'S89474506', '2024-11-29', '2024-11-29', '2024-11-29 14:56:00', '', 'MMT/IMPS/433414999766/ForCreditCardpa/MyAxisBank/UTIB0000734', 45000.00, 123593.45, 'pending'),
(384, 'S89474506', '2024-11-29', '2024-11-29', '2024-11-29 14:56:00', '', 'MMT/IMPS/433414999766/ForCreditCardpa/MyAxisBank/UTIB0000734', 45000.00, 123593.45, 'pending'),
(385, 'S11913744', '2024-12-01', '2024-12-01', '2024-12-01 20:15:39', '', 'MMT/IMPS/433620548724/Salary/SoniAXIS/UTIB0000734', 41001.00, 193137.45, 'pending'),
(386, 'S11913744', '2024-12-01', '2024-12-01', '2024-12-01 20:15:39', '', 'MMT/IMPS/433620548724/Salary/SoniAXIS/UTIB0000734', 41001.00, 193137.45, 'pending'),
(387, 'S11933750', '2024-12-01', '2024-12-01', '2024-12-01 20:17:58', '', 'INF/INFT/038456635211/Aarushconstruct', 50000.00, 143137.45, 'pending'),
(388, 'S11933750', '2024-12-01', '2024-12-01', '2024-12-01 20:17:58', '', 'INF/INFT/038456635211/Aarushconstruct', 50000.00, 143137.45, 'pending'),
(389, 'S12027408', '2024-12-01', '2024-12-01', '2024-12-01 20:30:15', '', 'MMT/IMPS/433620578920/Rent/NewFlat/KARB0000083', 33500.00, 109637.45, 'pending'),
(390, 'S12027408', '2024-12-01', '2024-12-01', '2024-12-01 20:30:15', '', 'MMT/IMPS/433620578920/Rent/NewFlat/KARB0000083', 33500.00, 109637.45, 'pending'),
(391, 'S12114084', '2024-12-01', '2024-12-01', '2024-12-01 20:41:47', '', 'MMT/IMPS/433620600620/MyAxisBank/UTIB0000734', 20000.00, 89637.45, 'pending'),
(392, 'S12114084', '2024-12-01', '2024-12-01', '2024-12-01 20:41:47', '', 'MMT/IMPS/433620600620/MyAxisBank/UTIB0000734', 20000.00, 89637.45, 'pending'),
(393, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'MESPOS/Serv Fee_OCT24/EP049242', 50.00, 196172.45, 'pending'),
(394, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'MESPOS/Serv Fee_OCT24/EP049242', 50.00, 196172.45, 'pending'),
(395, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'SGST202412035739008059', 4.50, 196167.95, 'pending'),
(396, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'SGST202412035739008059', 4.50, 196167.95, 'pending'),
(397, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'CGST202412035739008064', 4.50, 196163.45, 'pending'),
(398, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'CGST202412035739008064', 4.50, 196163.45, 'pending'),
(399, 'S34977478', '2024-12-03', '2024-12-03', '2024-12-03 18:01:35', '', 'MMT/IMPS/433818507136/Formaterialbill/BipinKumar/SBIN0001238', 160000.00, 49663.45, 'pending'),
(400, 'S34977478', '2024-12-03', '2024-12-03', '2024-12-03 18:01:35', '', 'MMT/IMPS/433818507136/Formaterialbill/BipinKumar/SBIN0001238', 160000.00, 49663.45, 'pending'),
(401, 'S39537408', '2024-12-04', '2024-12-04', '2024-12-04 08:40:25', '', 'ATD/Auto Debit CC1xx1726', 9362.15, 222176.30, 'pending'),
(402, 'S39537408', '2024-12-04', '2024-12-04', '2024-12-04 08:40:25', '', 'ATD/Auto Debit CC1xx1726', 9362.15, 222176.30, 'pending'),
(403, 'S40011913', '2024-12-04', '2024-12-04', '2024-12-04 09:50:45', '', 'MMT/IMPS/433909799193/KSRajeshwari/BARB0VJCHEM', 100000.00, 122176.30, 'pending'),
(404, 'S40011913', '2024-12-04', '2024-12-04', '2024-12-04 09:50:45', '', 'MMT/IMPS/433909799193/KSRajeshwari/BARB0VJCHEM', 100000.00, 122176.30, 'pending'),
(405, 'S51071370', '2024-12-05', '2024-12-05', '2024-12-05 07:15:15', '', 'INF/INFT/038498200491/ForloanEMI     /Aarushconstruct', 120000.00, 140127.30, 'pending'),
(406, 'S51071370', '2024-12-05', '2024-12-05', '2024-12-05 07:15:15', '', 'INF/INFT/038498200491/ForloanEMI     /Aarushconstruct', 120000.00, 140127.30, 'pending'),
(407, 'S51469932', '2024-12-05', '2024-12-05', '2024-12-05 07:42:54', '', 'ACH/HDFC BANK LIMITED/ICIC0000000013399486/0000125631456', 30396.00, 109731.30, 'pending'),
(408, 'S51469932', '2024-12-05', '2024-12-05', '2024-12-05 07:42:54', '', 'ACH/HDFC BANK LIMITED/ICIC0000000013399486/0000125631456', 30396.00, 109731.30, 'pending'),
(409, 'S59349420', '2024-12-05', '2024-12-05', '2024-12-05 20:00:04', '', 'MMT/IMPS/434020062300/Salary/RSHomeMano/HDFC0003678', 70100.00, 156610.90, 'pending'),
(410, 'S59349420', '2024-12-05', '2024-12-05', '2024-12-05 20:00:04', '', 'MMT/IMPS/434020062300/Salary/RSHomeMano/HDFC0003678', 70100.00, 156610.90, 'pending'),
(411, 'S59395615', '2024-12-05', '2024-12-05', '2024-12-05 20:04:49', '', 'MMT/IMPS/434020074205/Salary/ChandiniHo/HDFC0001472', 14825.00, 141785.90, 'pending'),
(412, 'S59395615', '2024-12-05', '2024-12-05', '2024-12-05 20:04:49', '', 'MMT/IMPS/434020074205/Salary/ChandiniHo/HDFC0001472', 14825.00, 141785.90, 'pending'),
(413, 'S66669315', '2024-12-06', '2024-12-06', '2024-12-06 15:40:00', '', 'IMPS Chg Sep-24+GST', 35.40, 212250.50, 'pending'),
(414, 'S66669315', '2024-12-06', '2024-12-06', '2024-12-06 15:40:00', '', 'IMPS Chg Sep-24+GST', 35.40, 212250.50, 'pending'),
(415, 'S80871315', '2024-12-07', '2024-12-07', '2024-12-07 21:55:15', '', 'MMT/IMPS/434221833895/ForCreditCardpa/Selfkotak/KKBK0000811', 230000.00, 32550.50, 'pending'),
(416, 'S80871315', '2024-12-07', '2024-12-07', '2024-12-07 21:55:15', '', 'MMT/IMPS/434221833895/ForCreditCardpa/Selfkotak/KKBK0000811', 230000.00, 32550.50, 'pending'),
(417, 'S97140554', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 309729.18, 'pending'),
(418, 'S97140554', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 309729.18, 'pending'),
(419, 'S97140657', '2024-12-09', '2024-12-09', '2024-12-09 20:58:37', '', 'MMT/IMPS/434420748285/BULD45757891/AJMALHUSSA/IPOS0000001', 18810.00, 290919.18, 'pending'),
(420, 'S97140657', '2024-12-09', '2024-12-09', '2024-12-09 20:58:37', '', 'MMT/IMPS/434420748285/BULD45757891/AJMALHUSSA/IPOS0000001', 18810.00, 290919.18, 'pending'),
(421, 'S97141720', '2024-12-09', '2024-12-09', '2024-12-09 20:58:39', '', 'MMT/IMPS/434420748321/BULD45757891/SHIVANIVER/IDIB000B818', 16038.00, 274881.18, 'pending'),
(422, 'S97141720', '2024-12-09', '2024-12-09', '2024-12-09 20:58:39', '', 'MMT/IMPS/434420748321/BULD45757891/SHIVANIVER/IDIB000B818', 16038.00, 274881.18, 'pending'),
(423, 'S97141093', '2024-12-09', '2024-12-09', '2024-12-09 20:58:40', '', 'MMT/IMPS/434420749252/BULD45757891/MANISHABIS/UBIN0561291', 20790.00, 254091.18, 'pending'),
(424, 'S97141093', '2024-12-09', '2024-12-09', '2024-12-09 20:58:40', '', 'MMT/IMPS/434420749252/BULD45757891/MANISHABIS/UBIN0561291', 20790.00, 254091.18, 'pending'),
(425, 'S97141677', '2024-12-09', '2024-12-09', '2024-12-09 20:58:41', '', 'MMT/IMPS/434420748382/BULD45757891/PHILIPVENG/HDFC0001239', 19800.00, 234291.18, 'pending'),
(426, 'S97141677', '2024-12-09', '2024-12-09', '2024-12-09 20:58:41', '', 'MMT/IMPS/434420748382/BULD45757891/PHILIPVENG/HDFC0001239', 19800.00, 234291.18, 'pending'),
(427, 'S97141945', '2024-12-09', '2024-12-09', '2024-12-09 20:58:42', '', 'MMT/IMPS/434420748417/BULD45757891/PROTIMAMID/PUNB0047820', 12770.00, 221521.18, 'pending'),
(428, 'S97141945', '2024-12-09', '2024-12-09', '2024-12-09 20:58:42', '', 'MMT/IMPS/434420748417/BULD45757891/PROTIMAMID/PUNB0047820', 12770.00, 221521.18, 'pending'),
(429, 'S97142838', '2024-12-09', '2024-12-09', '2024-12-09 20:58:44', '', 'MMT/IMPS/434420749473/BULD45757891/PRIYAVARMA/PUNB0198520', 17820.00, 203701.18, 'pending'),
(430, 'S97142838', '2024-12-09', '2024-12-09', '2024-12-09 20:58:44', '', 'MMT/IMPS/434420749473/BULD45757891/PRIYAVARMA/PUNB0198520', 17820.00, 203701.18, 'pending'),
(431, 'S97143366', '2024-12-09', '2024-12-09', '2024-12-09 20:58:46', '', 'MMT/IMPS/434420749525/BULD45757891/PHULIBHUIY/CNRB0005557', 19800.00, 183901.18, 'pending'),
(432, 'S97143366', '2024-12-09', '2024-12-09', '2024-12-09 20:58:46', '', 'MMT/IMPS/434420749525/BULD45757891/PHULIBHUIY/CNRB0005557', 19800.00, 183901.18, 'pending'),
(433, 'S97143716', '2024-12-09', '2024-12-09', '2024-12-09 20:58:48', '', 'MMT/IMPS/434420749424/BULD45757891/SUMANAROY/SBIN0009977', 4817.00, 179084.18, 'pending'),
(434, 'S97143716', '2024-12-09', '2024-12-09', '2024-12-09 20:58:48', '', 'MMT/IMPS/434420749424/BULD45757891/SUMANAROY/SBIN0009977', 4817.00, 179084.18, 'pending'),
(435, 'S97143078', '2024-12-09', '2024-12-09', '2024-12-09 20:58:49', '', 'MMT/IMPS/434420749445/BULD45757891/PRADEEPDIW/IDIB000B781', 6534.00, 172550.18, 'pending'),
(436, 'S97143078', '2024-12-09', '2024-12-09', '2024-12-09 20:58:49', '', 'MMT/IMPS/434420749445/BULD45757891/PRADEEPDIW/IDIB000B781', 6534.00, 172550.18, 'pending'),
(437, 'S97142586', '2024-12-09', '2024-12-09', '2024-12-09 20:58:50', '', 'MMT/IMPS/434420749619/BULD45757891/BANDANAROY/SBIN0009705', 19800.00, 152750.18, 'pending'),
(438, 'S97142586', '2024-12-09', '2024-12-09', '2024-12-09 20:58:50', '', 'MMT/IMPS/434420749619/BULD45757891/BANDANAROY/SBIN0009705', 19800.00, 152750.18, 'pending'),
(439, 'S97326765', '2024-12-09', '2024-12-09', '2024-12-09 21:20:26', '', 'MMT/IMPS/434421797437/Selfkotak/KKBK0000811', 32000.00, 120750.18, 'pending'),
(440, 'S97326765', '2024-12-09', '2024-12-09', '2024-12-09 21:20:26', '', 'MMT/IMPS/434421797437/Selfkotak/KKBK0000811', 32000.00, 120750.18, 'pending'),
(441, 'S51777577', '2024-11-13', '2024-11-13', '2024-11-13 16:21:52', '', 'MMT/IMPS/431816671539/MitalBhanushali/SBIN0007212', 20000.00, 14434.03, 'Matched'),
(442, 'S68809433', '2024-11-15', '2024-11-15', '2024-11-15 13:55:39', '', 'INF/INFT/038300325851/Aarushconstruct', 80000.00, 8337.03, 'Matched'),
(443, 'S77253913', '2024-11-16', '2024-11-16', '2024-11-16 15:34:55', '', 'MMT/IMPS/432115747635/Rent/NewPG/DLXB0000161', 40800.00, 93369.03, 'pending'),
(444, 'S80548362', '2024-11-16', '2024-11-16', '2024-11-16 23:26:37', '', 'INF/INFT/038316904291/Aarushconstruct', 70000.00, 118324.85, 'Matched'),
(445, 'S92531585', '2024-11-18', '2024-11-18', '2024-11-18 15:44:16', '', 'INF/INFT/038326629751/HandLoanforLabo/Aarushconstruct', 280000.00, 18798.85, 'pending'),
(446, 'S1465723', '2024-11-19', '2024-11-19', '2024-11-19 14:46:58', '', 'INF/INFT/038336781751/Salary         /Juni', 60000.00, 127423.85, 'Matched'),
(447, 'S19000689', '2024-11-21', '2024-11-21', '2024-11-21 13:58:22', '', 'INF/INFT/038357464881/1stpaymentforso/Grassroots', 44840.00, 121874.85, 'pending'),
(448, 'S19310987', '2024-11-21', '2024-11-21', '2024-11-21 14:40:26', '', 'UPI/432666504141/Friend/shriramchits@ax//ICIba5874a31a344dfeb2014fe3b322384b/', 33500.00, 126454.45, 'pending'),
(449, 'S23582280', '2024-11-21', '2024-11-21', '2024-11-21 22:18:45', '', 'UPI/432668564507/Salary/8867360378@axl//ICI76833989e2614d92b61284cf1cd3cf7a/', 8000.00, 118454.45, 'pending'),
(450, 'S23668504', '2024-11-21', '2024-11-21', '2024-11-21 22:39:55', '', 'MMT/IMPS/432622153084/BULD44982912/RASMONIMUR/PUNB0034020', 4000.00, 114454.45, 'pending'),
(451, 'S26531035', '2024-11-22', '2024-11-22', '2024-11-22 10:30:51', '', 'MMT/IMPS/432710596338/BULD44985067/SAGARSARKA/YESB0000452', 8662.00, 120792.45, 'pending'),
(452, 'S30183751', '2024-11-22', '2024-11-22', '2024-11-22 17:10:34', '', 'UPI/432771596960/Salary/prasenjitadak82//ICIa6dc49ec8de344fcb3504b936b506c8d/', 10000.00, 123392.45, 'pending'),
(453, 'S30568729', '2024-11-22', '2024-11-22', '2024-11-22 17:35:39', '', 'UPI/432771713885/Salary/rakhikarmakar6@//ICI8fd632ef228a44a3aa639912facf2108/', 8000.00, 115392.45, 'pending'),
(454, 'S63095422', '2024-11-26', '2024-11-26', '2024-11-26 21:47:11', '', 'MMT/IMPS/433121524335/Selfkotak/KKBK0000811', 12000.00, 180593.45, 'pending'),
(455, 'S63099713', '2024-11-26', '2024-11-26', '2024-11-26 21:47:49', '', 'MMT/IMPS/433121525747/SelfPNB/PUNB0588100', 12000.00, 168593.45, 'pending'),
(456, 'S89474506', '2024-11-29', '2024-11-29', '2024-11-29 14:56:00', '', 'MMT/IMPS/433414999766/ForCreditCardpa/MyAxisBank/UTIB0000734', 45000.00, 123593.45, 'pending'),
(457, 'S11913744', '2024-12-01', '2024-12-01', '2024-12-01 20:15:39', '', 'MMT/IMPS/433620548724/Salary/SoniAXIS/UTIB0000734', 41001.00, 193137.45, 'pending'),
(458, 'S11933750', '2024-12-01', '2024-12-01', '2024-12-01 20:17:58', '', 'INF/INFT/038456635211/Aarushconstruct', 50000.00, 143137.45, 'pending'),
(459, 'S12027408', '2024-12-01', '2024-12-01', '2024-12-01 20:30:15', '', 'MMT/IMPS/433620578920/Rent/NewFlat/KARB0000083', 33500.00, 109637.45, 'pending'),
(460, 'S12114084', '2024-12-01', '2024-12-01', '2024-12-01 20:41:47', '', 'MMT/IMPS/433620600620/MyAxisBank/UTIB0000734', 20000.00, 89637.45, 'pending'),
(461, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'MESPOS/Serv Fee_OCT24/EP049242', 50.00, 196172.45, 'pending'),
(462, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'SGST202412035739008059', 4.50, 196167.95, 'pending'),
(463, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'CGST202412035739008064', 4.50, 196163.45, 'pending'),
(464, 'S34977478', '2024-12-03', '2024-12-03', '2024-12-03 18:01:35', '', 'MMT/IMPS/433818507136/Formaterialbill/BipinKumar/SBIN0001238', 160000.00, 49663.45, 'pending'),
(465, 'S39537408', '2024-12-04', '2024-12-04', '2024-12-04 08:40:25', '', 'ATD/Auto Debit CC1xx1726', 9362.15, 222176.30, 'pending'),
(466, 'S40011913', '2024-12-04', '2024-12-04', '2024-12-04 09:50:45', '', 'MMT/IMPS/433909799193/KSRajeshwari/BARB0VJCHEM', 100000.00, 122176.30, 'pending'),
(467, 'S51777577', '2024-11-13', '2024-11-13', '2024-11-13 16:21:52', '', 'MMT/IMPS/431816671539/MitalBhanushali/SBIN0007212', 20000.00, 14434.03, 'Matched'),
(468, 'S68809433', '2024-11-15', '2024-11-15', '2024-11-15 13:55:39', '', 'INF/INFT/038300325851/Aarushconstruct', 80000.00, 8337.03, 'Matched'),
(469, 'S51071370', '2024-12-05', '2024-12-05', '2024-12-05 07:15:15', '', 'INF/INFT/038498200491/ForloanEMI     /Aarushconstruct', 120000.00, 140127.30, 'pending'),
(470, 'S51469932', '2024-12-05', '2024-12-05', '2024-12-05 07:42:54', '', 'ACH/HDFC BANK LIMITED/ICIC0000000013399486/0000125631456', 30396.00, 109731.30, 'pending'),
(471, 'S77253913', '2024-11-16', '2024-11-16', '2024-11-16 15:34:55', '', 'MMT/IMPS/432115747635/Rent/NewPG/DLXB0000161', 40800.00, 93369.03, 'pending'),
(472, 'S59349420', '2024-12-05', '2024-12-05', '2024-12-05 20:00:04', '', 'MMT/IMPS/434020062300/Salary/RSHomeMano/HDFC0003678', 70100.00, 156610.90, 'pending'),
(473, 'S59395615', '2024-12-05', '2024-12-05', '2024-12-05 20:04:49', '', 'MMT/IMPS/434020074205/Salary/ChandiniHo/HDFC0001472', 14825.00, 141785.90, 'pending'),
(474, 'S66669315', '2024-12-06', '2024-12-06', '2024-12-06 15:40:00', '', 'IMPS Chg Sep-24+GST', 35.40, 212250.50, 'pending'),
(475, 'S80548362', '2024-11-16', '2024-11-16', '2024-11-16 23:26:37', '', 'INF/INFT/038316904291/Aarushconstruct', 70000.00, 118324.85, 'Matched'),
(476, 'S80871315', '2024-12-07', '2024-12-07', '2024-12-07 21:55:15', '', 'MMT/IMPS/434221833895/ForCreditCardpa/Selfkotak/KKBK0000811', 230000.00, 32550.50, 'pending'),
(477, 'S97140554', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 309729.18, 'pending'),
(478, 'S97140657', '2024-12-09', '2024-12-09', '2024-12-09 20:58:37', '', 'MMT/IMPS/434420748285/BULD45757891/AJMALHUSSA/IPOS0000001', 18810.00, 290919.18, 'pending'),
(479, 'S97141720', '2024-12-09', '2024-12-09', '2024-12-09 20:58:39', '', 'MMT/IMPS/434420748321/BULD45757891/SHIVANIVER/IDIB000B818', 16038.00, 274881.18, 'pending'),
(480, 'S97141093', '2024-12-09', '2024-12-09', '2024-12-09 20:58:40', '', 'MMT/IMPS/434420749252/BULD45757891/MANISHABIS/UBIN0561291', 20790.00, 254091.18, 'pending'),
(481, 'S97141677', '2024-12-09', '2024-12-09', '2024-12-09 20:58:41', '', 'MMT/IMPS/434420748382/BULD45757891/PHILIPVENG/HDFC0001239', 19800.00, 234291.18, 'pending'),
(482, 'S97141945', '2024-12-09', '2024-12-09', '2024-12-09 20:58:42', '', 'MMT/IMPS/434420748417/BULD45757891/PROTIMAMID/PUNB0047820', 12770.00, 221521.18, 'pending'),
(483, 'S97142838', '2024-12-09', '2024-12-09', '2024-12-09 20:58:44', '', 'MMT/IMPS/434420749473/BULD45757891/PRIYAVARMA/PUNB0198520', 17820.00, 203701.18, 'pending'),
(484, 'S97143366', '2024-12-09', '2024-12-09', '2024-12-09 20:58:46', '', 'MMT/IMPS/434420749525/BULD45757891/PHULIBHUIY/CNRB0005557', 19800.00, 183901.18, 'pending'),
(485, 'S97143716', '2024-12-09', '2024-12-09', '2024-12-09 20:58:48', '', 'MMT/IMPS/434420749424/BULD45757891/SUMANAROY/SBIN0009977', 4817.00, 179084.18, 'pending'),
(486, 'S97143078', '2024-12-09', '2024-12-09', '2024-12-09 20:58:49', '', 'MMT/IMPS/434420749445/BULD45757891/PRADEEPDIW/IDIB000B781', 6534.00, 172550.18, 'pending'),
(487, 'S97142586', '2024-12-09', '2024-12-09', '2024-12-09 20:58:50', '', 'MMT/IMPS/434420749619/BULD45757891/BANDANAROY/SBIN0009705', 19800.00, 152750.18, 'pending'),
(488, 'S92531585', '2024-11-18', '2024-11-18', '2024-11-18 15:44:16', '', 'INF/INFT/038326629751/HandLoanforLabo/Aarushconstruct', 280000.00, 18798.85, 'pending'),
(489, 'S97326765', '2024-12-09', '2024-12-09', '2024-12-09 21:20:26', '', 'MMT/IMPS/434421797437/Selfkotak/KKBK0000811', 32000.00, 120750.18, 'pending'),
(490, 'S1465723', '2024-11-19', '2024-11-19', '2024-11-19 14:46:58', '', 'INF/INFT/038336781751/Salary         /Juni', 60000.00, 127423.85, 'Matched'),
(491, 'S19000689', '2024-11-21', '2024-11-21', '2024-11-21 13:58:22', '', 'INF/INFT/038357464881/1stpaymentforso/Grassroots', 44840.00, 121874.85, 'pending'),
(492, 'S19310987', '2024-11-21', '2024-11-21', '2024-11-21 14:40:26', '', 'UPI/432666504141/Friend/shriramchits@ax//ICIba5874a31a344dfeb2014fe3b322384b/', 33500.00, 126454.45, 'pending'),
(493, 'S23582280', '2024-11-21', '2024-11-21', '2024-11-21 22:18:45', '', 'UPI/432668564507/Salary/8867360378@axl//ICI76833989e2614d92b61284cf1cd3cf7a/', 8000.00, 118454.45, 'pending'),
(494, 'S23668504', '2024-11-21', '2024-11-21', '2024-11-21 22:39:55', '', 'MMT/IMPS/432622153084/BULD44982912/RASMONIMUR/PUNB0034020', 4000.00, 114454.45, 'pending'),
(495, 'S26531035', '2024-11-22', '2024-11-22', '2024-11-22 10:30:51', '', 'MMT/IMPS/432710596338/BULD44985067/SAGARSARKA/YESB0000452', 8662.00, 120792.45, 'pending'),
(496, 'S30183751', '2024-11-22', '2024-11-22', '2024-11-22 17:10:34', '', 'UPI/432771596960/Salary/prasenjitadak82//ICIa6dc49ec8de344fcb3504b936b506c8d/', 10000.00, 123392.45, 'pending'),
(497, 'S30568729', '2024-11-22', '2024-11-22', '2024-11-22 17:35:39', '', 'UPI/432771713885/Salary/rakhikarmakar6@//ICI8fd632ef228a44a3aa639912facf2108/', 8000.00, 115392.45, 'pending'),
(498, 'S63095422', '2024-11-26', '2024-11-26', '2024-11-26 21:47:11', '', 'MMT/IMPS/433121524335/Selfkotak/KKBK0000811', 12000.00, 180593.45, 'pending'),
(499, 'S63099713', '2024-11-26', '2024-11-26', '2024-11-26 21:47:49', '', 'MMT/IMPS/433121525747/SelfPNB/PUNB0588100', 12000.00, 168593.45, 'pending'),
(500, 'S89474506', '2024-11-29', '2024-11-29', '2024-11-29 14:56:00', '', 'MMT/IMPS/433414999766/ForCreditCardpa/MyAxisBank/UTIB0000734', 45000.00, 123593.45, 'pending'),
(501, 'S11913744', '2024-12-01', '2024-12-01', '2024-12-01 20:15:39', '', 'MMT/IMPS/433620548724/Salary/SoniAXIS/UTIB0000734', 41001.00, 193137.45, 'pending'),
(502, 'S11933750', '2024-12-01', '2024-12-01', '2024-12-01 20:17:58', '', 'INF/INFT/038456635211/Aarushconstruct', 50000.00, 143137.45, 'pending'),
(503, 'S12027408', '2024-12-01', '2024-12-01', '2024-12-01 20:30:15', '', 'MMT/IMPS/433620578920/Rent/NewFlat/KARB0000083', 33500.00, 109637.45, 'pending'),
(504, 'S12114084', '2024-12-01', '2024-12-01', '2024-12-01 20:41:47', '', 'MMT/IMPS/433620600620/MyAxisBank/UTIB0000734', 20000.00, 89637.45, 'pending'),
(505, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'MESPOS/Serv Fee_OCT24/EP049242', 50.00, 196172.45, 'pending'),
(506, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'SGST202412035739008059', 4.50, 196167.95, 'pending'),
(507, 'S32045452', '2024-12-03', '2024-12-03', '2024-12-03 14:08:09', '', 'CGST202412035739008064', 4.50, 196163.45, 'pending'),
(508, 'S34977478', '2024-12-03', '2024-12-03', '2024-12-03 18:01:35', '', 'MMT/IMPS/433818507136/Formaterialbill/BipinKumar/SBIN0001238', 160000.00, 49663.45, 'pending'),
(509, 'S39537408', '2024-12-04', '2024-12-04', '2024-12-04 08:40:25', '', 'ATD/Auto Debit CC1xx1726', 9362.15, 222176.30, 'pending'),
(510, 'S40011913', '2024-12-04', '2024-12-04', '2024-12-04 09:50:45', '', 'MMT/IMPS/433909799193/KSRajeshwari/BARB0VJCHEM', 100000.00, 122176.30, 'pending'),
(511, 'S51071370', '2024-12-05', '2024-12-05', '2024-12-05 07:15:15', '', 'INF/INFT/038498200491/ForloanEMI     /Aarushconstruct', 120000.00, 140127.30, 'pending'),
(512, 'S51469932', '2024-12-05', '2024-12-05', '2024-12-05 07:42:54', '', 'ACH/HDFC BANK LIMITED/ICIC0000000013399486/0000125631456', 30396.00, 109731.30, 'pending'),
(513, 'S59349420', '2024-12-05', '2024-12-05', '2024-12-05 20:00:04', '', 'MMT/IMPS/434020062300/Salary/RSHomeMano/HDFC0003678', 70100.00, 156610.90, 'pending'),
(514, 'S59395615', '2024-12-05', '2024-12-05', '2024-12-05 20:04:49', '', 'MMT/IMPS/434020074205/Salary/ChandiniHo/HDFC0001472', 14825.00, 141785.90, 'pending'),
(515, 'S66669315', '2024-12-06', '2024-12-06', '2024-12-06 15:40:00', '', 'IMPS Chg Sep-24+GST', 35.40, 212250.50, 'pending'),
(516, 'S80871315', '2024-12-07', '2024-12-07', '2024-12-07 21:55:15', '', 'MMT/IMPS/434221833895/ForCreditCardpa/Selfkotak/KKBK0000811', 230000.00, 32550.50, 'pending'),
(517, 'S97140554', '2024-12-09', '2024-12-09', '2024-12-09 20:58:36', '', 'MMT/IMPS/434420749171/BULD45757891/SURJEETKUM/SBIN0011223', 5643.00, 309729.18, 'pending'),
(518, 'S97140657', '2024-12-09', '2024-12-09', '2024-12-09 20:58:37', '', 'MMT/IMPS/434420748285/BULD45757891/AJMALHUSSA/IPOS0000001', 18810.00, 290919.18, 'pending'),
(519, 'S97141720', '2024-12-09', '2024-12-09', '2024-12-09 20:58:39', '', 'MMT/IMPS/434420748321/BULD45757891/SHIVANIVER/IDIB000B818', 16038.00, 274881.18, 'pending'),
(520, 'S97141093', '2024-12-09', '2024-12-09', '2024-12-09 20:58:40', '', 'MMT/IMPS/434420749252/BULD45757891/MANISHABIS/UBIN0561291', 20790.00, 254091.18, 'pending'),
(521, 'S97141677', '2024-12-09', '2024-12-09', '2024-12-09 20:58:41', '', 'MMT/IMPS/434420748382/BULD45757891/PHILIPVENG/HDFC0001239', 19800.00, 234291.18, 'pending'),
(522, 'S97141945', '2024-12-09', '2024-12-09', '2024-12-09 20:58:42', '', 'MMT/IMPS/434420748417/BULD45757891/PROTIMAMID/PUNB0047820', 12770.00, 221521.18, 'pending'),
(523, 'S97142838', '2024-12-09', '2024-12-09', '2024-12-09 20:58:44', '', 'MMT/IMPS/434420749473/BULD45757891/PRIYAVARMA/PUNB0198520', 17820.00, 203701.18, 'pending'),
(524, 'S97143366', '2024-12-09', '2024-12-09', '2024-12-09 20:58:46', '', 'MMT/IMPS/434420749525/BULD45757891/PHULIBHUIY/CNRB0005557', 19800.00, 183901.18, 'pending'),
(525, 'S97143716', '2024-12-09', '2024-12-09', '2024-12-09 20:58:48', '', 'MMT/IMPS/434420749424/BULD45757891/SUMANAROY/SBIN0009977', 4817.00, 179084.18, 'pending'),
(526, 'S97143078', '2024-12-09', '2024-12-09', '2024-12-09 20:58:49', '', 'MMT/IMPS/434420749445/BULD45757891/PRADEEPDIW/IDIB000B781', 6534.00, 172550.18, 'pending'),
(527, 'S97142586', '2024-12-09', '2024-12-09', '2024-12-09 20:58:50', '', 'MMT/IMPS/434420749619/BULD45757891/BANDANAROY/SBIN0009705', 19800.00, 152750.18, 'pending'),
(528, 'S97326765', '2024-12-09', '2024-12-09', '2024-12-09 21:20:26', '', 'MMT/IMPS/434421797437/Selfkotak/KKBK0000811', 32000.00, 120750.18, 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_config`
--
ALTER TABLE `account_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allotment`
--
ALTER TABLE `allotment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allotment_old`
--
ALTER TABLE `allotment_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_master`
--
ALTER TABLE `customer_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_payouts`
--
ALTER TABLE `employee_payouts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`,`service_type`);

--
-- Indexes for table `emp_addresses`
--
ALTER TABLE `emp_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `emp_documents`
--
ALTER TABLE `emp_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `emp_info`
--
ALTER TABLE `emp_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_info_16-12`
--
ALTER TABLE `emp_info_16-12`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_info_old`
--
ALTER TABLE `emp_info_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `expensesmatched`
--
ALTER TABLE `expensesmatched`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses_claim`
--
ALTER TABLE `expenses_claim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `matched`
--
ALTER TABLE `matched`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_refund` (`employee_id`,`allotment_id`),
  ADD KEY `allotment_id` (`allotment_id`);

--
-- Indexes for table `service_master`
--
ALTER TABLE `service_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_vendors`
--
ALTER TABLE `sp_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `gstin` (`gstin`);

--
-- Indexes for table `vendor_payments`
--
ALTER TABLE `vendor_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_payments_new`
--
ALTER TABLE `vendor_payments_new`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purchase_invoice_number` (`purchase_invoice_number`),
  ADD UNIQUE KEY `bill_id` (`bill_id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vouchers_new`
--
ALTER TABLE `vouchers_new`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `voucher_number` (`voucher_number`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_config`
--
ALTER TABLE `account_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `allotment`
--
ALTER TABLE `allotment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `allotment_old`
--
ALTER TABLE `allotment_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer_master`
--
ALTER TABLE `customer_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1261;

--
-- AUTO_INCREMENT for table `employee_payouts`
--
ALTER TABLE `employee_payouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `emp_addresses`
--
ALTER TABLE `emp_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `emp_documents`
--
ALTER TABLE `emp_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `emp_info`
--
ALTER TABLE `emp_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `emp_info_16-12`
--
ALTER TABLE `emp_info_16-12`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `emp_info_old`
--
ALTER TABLE `emp_info_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expense_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `expensesmatched`
--
ALTER TABLE `expensesmatched`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expenses_claim`
--
ALTER TABLE `expenses_claim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `matched`
--
ALTER TABLE `matched`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_master`
--
ALTER TABLE `service_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sp_vendors`
--
ALTER TABLE `sp_vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `vendor_payments`
--
ALTER TABLE `vendor_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vendor_payments_new`
--
ALTER TABLE `vendor_payments_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vouchers_new`
--
ALTER TABLE `vouchers_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=529;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_payouts`
--
ALTER TABLE `employee_payouts`
  ADD CONSTRAINT `employee_payouts_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `emp_info_16-12` (`id`);

--
-- Constraints for table `refunds`
--
ALTER TABLE `refunds`
  ADD CONSTRAINT `refunds_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `emp_info_16-12` (`id`),
  ADD CONSTRAINT `refunds_ibfk_2` FOREIGN KEY (`allotment_id`) REFERENCES `allotment` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
