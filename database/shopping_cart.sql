-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2024 at 07:10 PM
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
-- Database: `shopping_cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `member_id` int(11) NOT NULL,
  `m_user` varchar(20) NOT NULL,
  `m_pass` varchar(20) NOT NULL,
  `m_level` varchar(50) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `m_email` varchar(100) NOT NULL,
  `lineid` varchar(100) NOT NULL,
  `m_tel` varchar(20) NOT NULL,
  `m_address` varchar(200) NOT NULL,
  `m_img` varchar(250) NOT NULL,
  `date_save` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`member_id`, `m_user`, `m_pass`, `m_level`, `m_name`, `m_email`, `lineid`, `m_tel`, `m_address`, `m_img`, `date_save`) VALUES
(1, 'admin', 'admin', 'admin', 'นายนำชัย ฮังกาสี', 'devtai@gmail.com', '0991231211', '09830009', 'กรุงเทพมหานคร', '39521278220240824_180802.jpg', '2021-06-01 19:04:28'),
(2, '123456', '123456', 'admin', 'dasd', 'sadas@asdsda.com', '', '90', 'asdaa', '21378480720240824_214430.png', '2024-08-24 14:44:30'),
(3, 'aas', 'aas', 'admin', 'Kasfwfs', 'sasdasds@asdsda.com', '', '120901', 'asdas', '204538016820240914_190243.png', '2024-08-24 14:45:34'),
(4, 'member', 'member', 'member', 'นายนำชัย ฮังกาสี2', 'sadas@asdsda.com', '345', '0120901', 'asdsa', '47081500120240915_231243.png', '2024-09-13 15:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL,
  `p_detail` text NOT NULL,
  `p_img` varchar(200) NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_qty` varchar(11) NOT NULL,
  `p_unit` varchar(20) NOT NULL,
  `p_view` int(10) NOT NULL DEFAULT 0,
  `datesave` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `type_id`, `p_detail`, `p_img`, `p_price`, `p_qty`, `p_unit`, `p_view`, `datesave`) VALUES
(1, 'ปากกาลูกลื่น', 2, 'เหมาะสำหรับทุกการใช้งาน: ไม่ว่าจะเป็นการเขียนบันทึก การเซ็นเอกสาร หรือการจดบันทึกในที่ประชุม ปากกาลูกลื่นของเราตอบโจทย์ทุกการใช้งาน', '9996243120240824_181423.jpeg', 10, '12', 'ชิ้น', 5, '2021-06-26 16:38:28'),
(2, 'สมุดปกหนา', 1, 'สมุดปกหนา เหมาะสำหรับใช้ เขียนบันทึก ', '102974820120240824_181926.jpg', 20, '10', 'ชิ้น', 8, '2021-06-26 16:46:13'),
(3, 'ดินสอ 2B', 3, 'ดินสอดีต้องดินสอเรา', '172381448420240824_182153.jpeg', 7, '10', 'ชิ้น', 20, '2021-06-26 16:46:35'),
(4, 'ยางลบ', 4, 'ลบได้ ลบดี ลบหมด ยางลบKAB SHOP', '125077840220240909_185645.jpeg', 8, '10', 'ชิ้น', 17, '2021-06-26 16:46:51'),
(6, 'ปากกาลูกลื่น', 2, 'asdasd', '177520722920240914_171228.jpeg', 2, '2', 'ชิ้น', 3, '2024-09-14 10:12:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_id`, `type_name`) VALUES
(1, 'สมุดเขียน'),
(2, 'ปากกา'),
(3, 'ดินสอ'),
(4, 'ยางลบ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
