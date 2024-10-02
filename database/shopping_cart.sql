-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2024 at 12:37 PM
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
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL COMMENT 'ลำดับที่',
  `orderID` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'เลขที่ใบสั่งซื้อ',
  `pro_id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสสินค้า',
  `orderPrice` float NOT NULL COMMENT 'ราคาสินค้า',
  `orderQty` int(11) NOT NULL COMMENT 'จำนวนที่สั่งซื้อ',
  `Total` float NOT NULL COMMENT 'ราคารวม'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `orderID`, `pro_id`, `orderPrice`, `orderQty`, `Total`) VALUES
(1, 0000000002, 0000000009, 250, 1, 250),
(2, 0000000005, 0000000009, 250, 1, 250),
(3, 0000000005, 0000000002, 20, 1, 20),
(4, 0000000006, 0000000009, 250, 1, 250),
(5, 0000000006, 0000000004, 8, 1, 8),
(6, 0000000006, 0000000002, 20, 1, 20),
(7, 0000000008, 0000000008, 290, 1, 290),
(8, 0000000010, 0000000008, 290, 1, 290),
(9, 0000000011, 0000000002, 20, 1, 20),
(10, 0000000012, 0000000008, 290, 1, 290),
(11, 0000000014, 0000000008, 290, 1, 290),
(12, 0000000015, 0000000002, 20, 1, 20),
(13, 0000000016, 0000000002, 20, 1, 20),
(14, 0000000017, 0000000002, 20, 1, 20),
(15, 0000000018, 0000000002, 20, 1, 20),
(16, 0000000019, 0000000002, 20, 1, 20),
(17, 0000000020, 0000000002, 20, 1, 20),
(18, 0000000021, 0000000009, 250, 1, 250),
(19, 0000000021, 0000000002, 20, 1, 20),
(20, 0000000022, 0000000009, 250, 1, 250),
(21, 0000000023, 0000000008, 290, 1, 290),
(22, 0000000024, 0000000008, 290, 1, 290),
(23, 0000000025, 0000000010, 12, 1, 12),
(24, 0000000026, 0000000004, 8, 1, 8),
(25, 0000000027, 0000000008, 290, 1, 290),
(26, 0000000028, 0000000002, 20, 1, 20),
(27, 0000000029, 0000000001, 10, 1, 10),
(28, 0000000029, 0000000004, 8, 1, 8),
(29, 0000000029, 0000000002, 20, 1, 20),
(30, 0000000029, 0000000003, 7, 1, 7),
(31, 0000000030, 0000000001, 10, 1, 10),
(32, 0000000030, 0000000004, 8, 1, 8),
(33, 0000000031, 0000000002, 20, 1, 20),
(34, 0000000037, 0000000003, 7, 1, 7),
(35, 0000000037, 0000000002, 20, 1, 20);

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
(4, 'member', 'member', 'member', 'นายนำชัย ฮังกาสี2', 'sadas@asdsda.com', '345', '0120901', 'asdsa', '47081500120240915_231243.png', '2024-09-13 15:42:53'),
(44, '6', '6', 'member', 'นายนำชัย ฮังกาสี55', 'sadas@asdsda.com', '', '0983738651', ' grsrsrt', '212491687520240916_141213.jpg', '2024-09-16 07:12:13');

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
(1, 'ปากกาลูกลื่น', 2, 'เหมาะสำหรับทุกการใช้งาน: ไม่ว่าจะเป็นการเขียนบันทึก การเซ็นเอกสาร หรือการจดบันทึกในที่ประชุม ปากกาลูกลื่นของเราตอบโจทย์ทุกการใช้งาน', '9996243120240824_181423.jpeg', 10, '10', 'ชิ้น', 9, '2021-06-26 16:38:28'),
(2, 'สมุดปกหนา', 1, 'สมุดปกหนา เหมาะสำหรับใช้ เขียนบันทึก ', '102974820120240824_181926.jpg', 20, '4', 'ชิ้น', 41, '2021-06-26 16:46:13'),
(3, 'ดินสอ 2B', 3, 'ดินสอดีต้องดินสอเรา', '172381448420240824_182153.jpeg', 7, '8', 'ชิ้น', 75, '2021-06-26 16:46:35'),
(4, 'ยางลบ', 4, 'ลบได้ ลบดี ลบหมด ยางลบKAB SHOP', '125077840220240909_185645.jpeg', 8, '7', 'ชิ้น', 47, '2021-06-26 16:46:51'),
(6, 'ปากกาลูกลื่น', 2, 'asdasd', '177520722920240914_171228.jpeg', 2, '2', 'ชิ้น', 9, '2024-09-14 10:12:28'),
(8, 'ทดสอบ', 1, 'ทอดสอบ', '170253278120240930_231610.png', 290, '1', 'ชิ้น', 23, '2024-09-30 16:16:10'),
(9, 'ทอดสอบ', 1, 'ทอดสอบ', '15082693520240930_231632.png', 250, '1', 'ชิ้น', 9, '2024-09-30 16:16:32'),
(10, 'ทดสอบ', 1, 'ลอง', '17126767920241002_154847.jpg', 12, '11', 'ชิ้น', 2, '2024-09-30 16:19:33');

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

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `orderID` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'เลขที่ใบสั่งซื้อ',
  `cus_name` varchar(60) NOT NULL COMMENT 'ชื่อ-นามสกุล',
  `address` text NOT NULL COMMENT 'ที่อยู่การจัดส่งสินค้า',
  `telephone` varchar(10) NOT NULL COMMENT 'เบอร์โทรศัพท์',
  `total_price` float NOT NULL COMMENT 'ราคารวมสุทธิ',
  `order_status` varchar(1) NOT NULL COMMENT '0=ยกเลิก,1=ยังไม่ชำระเงิน,2=ชำระเงินแล้ว',
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'วันที่สั่งซื้อ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`orderID`, `cus_name`, `address`, `telephone`, `total_price`, `order_status`, `reg_date`) VALUES
(0000000003, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 270, '1', '2024-10-01 11:50:33'),
(0000000004, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 270, '1', '2024-10-01 11:54:00'),
(0000000005, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 270, '1', '2024-10-01 12:00:21'),
(0000000006, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 278, '1', '2024-10-01 12:00:59'),
(0000000007, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 20, '1', '2024-10-01 12:03:58'),
(0000000008, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 290, '1', '2024-10-01 12:05:43'),
(0000000009, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 290, '1', '2024-10-01 12:06:49'),
(0000000010, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 290, '1', '2024-10-01 12:07:38'),
(0000000011, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 20, '1', '2024-10-01 12:08:01'),
(0000000012, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 290, '1', '2024-10-01 12:09:03'),
(0000000013, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 290, '1', '2024-10-01 12:19:31'),
(0000000014, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 290, '1', '2024-10-01 12:20:02'),
(0000000015, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 20, '1', '2024-10-01 12:20:44'),
(0000000016, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 20, '1', '2024-10-01 12:22:07'),
(0000000017, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 20, '1', '2024-10-01 12:22:45'),
(0000000018, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 20, '1', '2024-10-01 12:23:08'),
(0000000019, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 20, '1', '2024-10-01 12:32:27'),
(0000000020, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 20, '1', '2024-10-01 12:35:26'),
(0000000021, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 270, '1', '2024-10-01 12:36:39'),
(0000000022, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 250, '1', '2024-10-01 12:38:30'),
(0000000023, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 290, '1', '2024-10-01 12:39:12'),
(0000000024, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 290, '1', '2024-10-01 12:40:33'),
(0000000025, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 12, '1', '2024-10-01 12:47:45'),
(0000000026, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 8, '1', '2024-10-01 14:25:41'),
(0000000027, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 290, '1', '2024-10-01 14:33:42'),
(0000000028, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 20, '1', '2024-10-01 15:41:58'),
(0000000029, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 45, '1', '2024-10-01 15:58:13'),
(0000000030, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 18, '1', '2024-10-01 16:38:46'),
(0000000031, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 20, '1', '2024-10-01 16:48:11'),
(0000000032, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 0, '1', '2024-10-01 16:48:25'),
(0000000033, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 0, '1', '2024-10-01 16:52:32'),
(0000000034, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 290, '1', '2024-10-01 17:08:15'),
(0000000035, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 0, '1', '2024-10-01 17:08:22'),
(0000000036, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 0, '1', '2024-10-01 17:08:58'),
(0000000037, 'นายนำชัย ฮังกาสี2', 'asdsa ', '0120901', 27, '1', '2024-10-02 08:47:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`orderID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับที่', AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `orderID` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'เลขที่ใบสั่งซื้อ', AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
