-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2024 at 12:38 PM
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
-- Database: `db_twowheels`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_username`, `admin_password`) VALUES
(2, 'admin@gmail.com', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_analyser`
--

CREATE TABLE `tbl_analyser` (
  `analyser_id` int(10) UNSIGNED NOT NULL,
  `analyser_name` varchar(50) NOT NULL,
  `analyser_contact` varchar(50) NOT NULL,
  `analyser_email` varchar(50) NOT NULL,
  `analyser_address` varchar(50) NOT NULL,
  `place_id` varchar(50) NOT NULL,
  `analyser_photo` varchar(50) NOT NULL,
  `analyser_proof` varchar(50) NOT NULL,
  `analyser_status` varchar(50) NOT NULL DEFAULT '0',
  `analyser_password` varchar(50) NOT NULL,
  `analyser_doj` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`) VALUES
(11, 'Honda'),
(12, 'TVS'),
(13, 'Hero'),
(14, 'Royal Enfield'),
(15, 'Bajaj'),
(16, 'Yamaha');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat`
--

CREATE TABLE `tbl_chat` (
  `chat_id` int(10) UNSIGNED NOT NULL,
  `chat_date` varchar(50) NOT NULL,
  `from_user_id` varchar(50) DEFAULT '0',
  `to_user_id` int(10) UNSIGNED DEFAULT 0,
  `from_seller_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `to_seller_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `chat_content` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE `tbl_complaint` (
  `complaint_id` int(50) NOT NULL,
  `complaint_description` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '0',
  `analyser_id` varchar(50) NOT NULL DEFAULT '0',
  `seller_id` varchar(50) NOT NULL DEFAULT '0',
  `complaint_date` varchar(50) NOT NULL,
  `complaint_reply` varchar(50) DEFAULT 'Not Yet Replied',
  `complaint_status` varchar(50) NOT NULL DEFAULT '0',
  `reply_date` varchar(50) NOT NULL DEFAULT '---'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_displacement`
--

CREATE TABLE `tbl_displacement` (
  `displacement_id` int(10) UNSIGNED NOT NULL,
  `displacement_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_displacement`
--

INSERT INTO `tbl_displacement` (`displacement_id`, `displacement_name`) VALUES
(11, '1000'),
(12, '750'),
(13, '100'),
(14, '150'),
(15, '125'),
(16, '400');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(10) UNSIGNED NOT NULL,
  `district_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `district_name`) VALUES
(11, 'Thrissur'),
(12, 'Idukki'),
(13, 'Kozhikode'),
(14, 'Ernakulam'),
(15, 'Kasargod'),
(16, 'Malapuram'),
(17, 'Wayanad'),
(18, 'Thiruvanathapuram'),
(19, 'Kannur'),
(20, 'Kottayam'),
(21, 'Alapuzha'),
(22, 'Pathanamthitta'),
(23, 'Kollam'),
(24, 'Palakkad');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `feedback_id` int(10) UNSIGNED NOT NULL,
  `feedback_description` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '0',
  `seller_id` varchar(50) NOT NULL DEFAULT '0',
  `analyser_id` varchar(50) NOT NULL DEFAULT '0',
  `feedback_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newvehicle`
--

CREATE TABLE `tbl_newvehicle` (
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `vehicle_name` varchar(50) NOT NULL,
  `type_id` varchar(50) NOT NULL,
  `displacement_id` varchar(50) NOT NULL,
  `vehicle_photo` varchar(50) NOT NULL,
  `vehicle_price` varchar(50) NOT NULL,
  `vehicle_transmission` varchar(50) NOT NULL,
  `vehicle_power` varchar(50) NOT NULL,
  `vehicle_torque` varchar(50) NOT NULL,
  `vehicle_maxspeed` varchar(50) NOT NULL,
  `vehicle_fueltank` varchar(50) NOT NULL,
  `vehicle_weight` varchar(50) NOT NULL,
  `vehicle_height` varchar(50) NOT NULL,
  `brand_id` varchar(50) NOT NULL,
  `vehicle_date` varchar(50) NOT NULL,
  `vehicle_mileage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_newvehicle`
--

INSERT INTO `tbl_newvehicle` (`vehicle_id`, `vehicle_name`, `type_id`, `displacement_id`, `vehicle_photo`, `vehicle_price`, `vehicle_transmission`, `vehicle_power`, `vehicle_torque`, `vehicle_maxspeed`, `vehicle_fueltank`, `vehicle_weight`, `vehicle_height`, `brand_id`, `vehicle_date`, `vehicle_mileage`) VALUES
(12, 'Activa', '10', '15', 'photo_1064.jpeg', ' 87,697', 'CVT', ' 8.19', '10.7', '110', '5.3', '109', '1.17', '11', '2024-03-11', '45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `vehicle_id` varchar(50) NOT NULL,
  `payment_status` varchar(50) NOT NULL DEFAULT '0',
  `request_status` varchar(50) NOT NULL DEFAULT '0',
  `payment_date` varchar(50) NOT NULL DEFAULT '0',
  `payment_amount` varchar(50) NOT NULL DEFAULT '0',
  `request_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE `tbl_place` (
  `place_id` int(10) UNSIGNED NOT NULL,
  `place_name` varchar(50) NOT NULL,
  `district_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`place_id`, `place_name`, `district_id`) VALUES
(17, 'Kunnamkulam', '11'),
(18, 'Kattapana', '12'),
(19, 'Mukkam', '13'),
(20, 'Kochi', '14'),
(21, 'Ulloor', '15'),
(22, 'Ponnani', '16'),
(23, 'Eriyad', '17'),
(24, 'Paravur', '18'),
(25, 'Payyanur', '19'),
(26, 'Marampilly', '20'),
(27, 'Kuttanad', '21'),
(28, 'Thiruvalla', '22'),
(29, 'Kottarakara', '23'),
(30, 'Nenmara', '24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rating_id` int(10) UNSIGNED NOT NULL,
  `rating_value` varchar(50) NOT NULL,
  `rating_feedback` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '0',
  `seller_id` varchar(50) NOT NULL DEFAULT '0',
  `analyser_id` varchar(50) NOT NULL DEFAULT '0',
  `user_name` varchar(50) DEFAULT NULL,
  `vehicle_id` varchar(50) NOT NULL,
  `rating_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `review_id` int(10) UNSIGNED NOT NULL,
  `review_description` varchar(50) NOT NULL,
  `analyser_id` varchar(50) NOT NULL,
  `review_date` varchar(50) NOT NULL,
  `review_caption` varchar(50) NOT NULL DEFAULT 'REVIEW',
  `vehicle_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seller`
--

CREATE TABLE `tbl_seller` (
  `seller_id` int(10) UNSIGNED NOT NULL,
  `seller_name` varchar(20) NOT NULL,
  `seller_contact` varchar(50) NOT NULL,
  `seller_email` varchar(50) NOT NULL,
  `seller_address` varchar(50) NOT NULL,
  `seller_photo` varchar(50) NOT NULL,
  `seller_proof` varchar(50) NOT NULL,
  `place_id` varchar(50) NOT NULL,
  `seller_status` varchar(50) NOT NULL DEFAULT '0',
  `seller_doj` varchar(50) NOT NULL,
  `seller_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_id`, `type_name`) VALUES
(10, 'Scooty'),
(11, 'Gear'),
(12, 'Gearless'),
(13, 'Adventure');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usedvehicle`
--

CREATE TABLE `tbl_usedvehicle` (
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `vehicle_name` varchar(50) NOT NULL,
  `type_id` varchar(50) NOT NULL,
  `displacement_id` varchar(50) NOT NULL,
  `brand_id` varchar(50) NOT NULL,
  `vehicle_photo` varchar(50) NOT NULL,
  `vehicle_rc` varchar(50) NOT NULL,
  `vehicle_status` varchar(50) NOT NULL DEFAULT '0',
  `vehicle_date` varchar(50) NOT NULL,
  `vehicle_price` varchar(50) NOT NULL,
  `vehicle_year` varchar(50) NOT NULL,
  `vehicle_audometer` varchar(50) NOT NULL,
  `seller_id` int(30) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_address` varchar(50) NOT NULL,
  `place_id` varchar(50) NOT NULL,
  `user_photo` varchar(50) NOT NULL,
  `user_proof` varchar(50) NOT NULL,
  `user_doj` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_status` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vg`
--

CREATE TABLE `tbl_vg` (
  `vg_id` int(10) UNSIGNED NOT NULL,
  `vg_caption` varchar(50) NOT NULL,
  `usedvehicle_id` varchar(50) NOT NULL DEFAULT '0',
  `newvehicle_id` varchar(50) NOT NULL DEFAULT '0',
  `vg_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_analyser`
--
ALTER TABLE `tbl_analyser`
  ADD PRIMARY KEY (`analyser_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `tbl_displacement`
--
ALTER TABLE `tbl_displacement`
  ADD PRIMARY KEY (`displacement_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `tbl_newvehicle`
--
ALTER TABLE `tbl_newvehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_seller`
--
ALTER TABLE `tbl_seller`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_usedvehicle`
--
ALTER TABLE `tbl_usedvehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_vg`
--
ALTER TABLE `tbl_vg`
  ADD PRIMARY KEY (`vg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_analyser`
--
ALTER TABLE `tbl_analyser`
  MODIFY `analyser_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  MODIFY `chat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `complaint_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_displacement`
--
ALTER TABLE `tbl_displacement`
  MODIFY `displacement_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `feedback_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_newvehicle`
--
ALTER TABLE `tbl_newvehicle`
  MODIFY `vehicle_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `place_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rating_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_seller`
--
ALTER TABLE `tbl_seller`
  MODIFY `seller_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_usedvehicle`
--
ALTER TABLE `tbl_usedvehicle`
  MODIFY `vehicle_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_vg`
--
ALTER TABLE `tbl_vg`
  MODIFY `vg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
