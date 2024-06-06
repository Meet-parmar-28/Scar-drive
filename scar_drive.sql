-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2023 at 05:18 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scar123`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL DEFAULT 'NOT_FOUND',
  `s_cost` int(10) NOT NULL DEFAULT 0,
  `m_cost` int(10) NOT NULL DEFAULT 0,
  `city` varchar(50) NOT NULL DEFAULT 'UNKNOWN',
  `bspace` varchar(100) NOT NULL,
  `seat` int(23) NOT NULL DEFAULT 0,
  `engine` varchar(100) NOT NULL DEFAULT 'NOT_FOUND',
  `ownername` varchar(200) NOT NULL DEFAULT 'NO DATA',
  `utility` varchar(255) NOT NULL,
  `descrip` text NOT NULL,
  `status` varchar(256) DEFAULT NULL,
  `loclink1` varchar(2000) NOT NULL DEFAULT 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d119058.47792292511!2d72.97686459575851!3d21.169208445371!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be060e07393bc51%3A0xf96e044991e337e9!2sUKA%20TARSADIA%20UNIVERSITY.!5e0!3m2!1sen!2sin!4v1680356891011!5m2!1sen!2sin',
  `loclink2` varchar(2000) NOT NULL DEFAULT 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d119058.47792292511!2d72.97686459575851!3d21.169208445371!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be060e07393bc51%3A0xf96e044991e337e9!2sUKA%20TARSADIA%20UNIVERSITY.!5e0!3m2!1sen!2sin!4v1680356891011!5m2!1sen!2sin',
  `wishlist` int(10) NOT NULL DEFAULT 0,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `price`, `s_cost`, `m_cost`, `city`, `bspace`, `seat`, `engine`, `ownername`, `utility`, `descrip`, `status`, `loclink1`, `loclink2`, `wishlist`, `images`) VALUES
(7, 'Mahindra-Thar', '1800000', 10000, 50000, 'Surat', '130', 2, '2184 Cc Diesel    & 1984 Cc Petrol', 'Scar', 'Drive-Terrain: 4x4  |  Tyre-Profile: All Terrain Tyre  |  Ground Clearance : 226mm', 'Safety-Rating : 4 Star\r\nCylinder : 4\r\nMilage : 15.00 Km/L Diesel  & 13.00 Km/L Petrol\r\nPower : 130 Bhp Diesel & 150 Bhp Petrol\r\nTorque : 300 Nm Diesel & 320nm Petrol\r\nFuel-Tank-Capacity : 57L\r\nLength : 4039mm\r\nHeight : 1920mm\r\nWidth : 1855mm\r\nWheel-Base : 2450mm\r\nBody-Type : SUV\r\nAirbags : 2\r\nABS(Advance-Break-System) : Yes\r\nInfotainment-System : 7 Inch\r\nMusic-System : 6 Speaker\r\nSteering : Hydraulic Power Steering', 'automatic', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3720.408224506348!2d72.82905717448514!3d21.17593628270886!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be04e3f6df483c9%3A0xd6a0ea8aedbd8e24!2sMahindra%20President%20Motors!5e0!3m2!1sen!2sin!4v1681655494532!5m2!1sen!2sin\" width=\"800\" height=\"600\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3720.408224506348!2d72.82905717448514!3d21.17593628270886!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be04e3f6df483c9%3A0xd6a0ea8aedbd8e24!2sMahindra%20President%20Motors!5e0!3m2!1sen!2sin!4v1681655494532!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', 0, 'thar-main.webp'),
(8, 'Mahindra-XUV700', '2700000', 12000, 25000, 'Surat', '200', 2, '2184 Cc Diesel    & 1984 Cc Petrol', 'Scar', 'ADAS |  Lan Assist |  Adrenox', 'Safety-Rating : 5 Star\r\nCylinder : 4\r\nEngine : 2200 Cc Diesel    & 2000 Cc Petrol\r\nMilage : 1501 Km/L Diesel      & 13.85 Km/L Petrol\r\nPower : 185 Bhp Diesel      & 200 Bhp Petrol\r\nTorque : 420 Nm Diesel      & 380nm Petrol\r\nFuel-Tank-Capacity : 70L\r\nLength : 3695mm\r\nHeight : 1710mm\r\nWidth : 1890mm\r\nWheel-Base : 2750mm\r\nBody-Type : SUV\r\nAirbags : 10\r\nABS(Advance-Break-System) : Yes\r\nImfotainment-System : 10.25 Inch\r\nMusic-System : 12 Speaker(Sony System)\r\nSteering : Electronic  Power Steering', 'automatic', 'https://www.google.com/maps/dir/21.1941908,72.8869927/MAHINDRA+PRESIDENT+MOTORS+-+VARACHHA,+G-01,02+SKY+ZONE+BUSINESS+HUB,+Surat+-+Kamrej+Hwy,+near+SHYAMDHAM+MANDIR,+Surat,+Gujarat+395006/@21.2156815,72.8766876,14z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3be045323a6be07f:0xc7c74c03a0192bd4!2m2!1d72.9093494!2d21.2372294', 'https://www.google.com/maps/dir//Mahindra+President+Motors,+Umiya+Nagar+Society,+Udhana+-+Magdalla+Rd,+near+Shree+Chosath+Joganiya,+Udhana,+Surat,+Gujarat+394210/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be04e3f6df483c9:0xd6a0ea8aedbd8e24?sa=X&ved=2ahUKEwiOweG5_av-AhWDbGwGHQXkAVYQ48ADegQIDRAJ', 0, 'xuv700-main.webp'),
(9, 'Tata-Harrier', '2400000', 22000, 40000, 'Surat', '425', 2, '2000Cc Diesel   ', 'Scar', 'Land Rover DNA  |  Fiat Multijet Engine | ', 'Safety-Rating : 5 star\r\nCylinder: 4\r\nMilage : 16 km/l\r\nPower : 170 bhp\r\nTorque : 350nm\r\nFuel-Tank-Capacity:50L \r\nLength : 4598 mm\r\nHeight : 1706 mm\r\nWidth : 1894 mm\r\nWheel-Base : 2741 Mm \r\nBody-Type : SUV\r\nAirbags : 6\r\nABS(Advance-Break-System) : yes \r\nImfotainment-System : 8.8 inch\r\nMusic-System : 9 speaker JBL audio\r\nSteering : hydraulic ', 'automatic', 'https://www.google.com/maps/dir/21.1941908,72.8869927/MAHINDRA+PRESIDENT+MOTORS+-+VARACHHA,+G-01,02+SKY+ZONE+BUSINESS+HUB,+Surat+-+Kamrej+Hwy,+near+SHYAMDHAM+MANDIR,+Surat,+Gujarat+395006/@21.2156815,72.8766876,14z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3be045323a6be07f:0xc7c74c03a0192bd4!2m2!1d72.9093494!2d21.2372294', 'https://www.google.com/maps/dir//Mahindra+President+Motors,+Umiya+Nagar+Society,+Udhana+-+Magdalla+Rd,+near+Shree+Chosath+Joganiya,+Udhana,+Surat,+Gujarat+394210/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be04e3f6df483c9:0xd6a0ea8aedbd8e24?sa=X&ved=2ahUKEwiOweG5_av-AhWDbGwGHQXkAVYQ48ADegQIDRAJ', 0, 'harrier-main.webp');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `proid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `images`, `proid`) VALUES
(1, '1.jpg', 1),
(2, '2.jpg', 1),
(3, '3.jpg', 1),
(4, '4.jpg', 1),
(5, '5.jpg', 1),
(6, '6.jpg', 1),
(7, '6.jpg', 2),
(8, '7.jpg', 2),
(9, '8.jpg', 2),
(10, '9.jpg', 2),
(11, 'vehicle-7.webp', 3),
(12, 'vehicle-8.webp', 3),
(13, 'vehicle-9.webp', 3),
(14, 'car-3.webp', 4),
(15, 'car-6.webp', 4),
(16, 'car-8.webp', 4),
(17, 'vehicle-7.webp', 5),
(18, 'vehicle-8.webp', 5),
(19, 'vehicle-9.webp', 5),
(20, 'baleno-exterior-right-front-three-quarter-2.webp', 6),
(21, 'thar-exterior-right-front-three-quarter-11.webp', 7),
(22, 'thar-exterior-right-front-three-quarter-11.webp', 8),
(23, 'download.jpg', 9),
(24, 'download (2).jpg', 9),
(25, 'download.jpg', 10),
(26, 'download (2).jpg', 10),
(27, 'WhatsApp Image 2022-10-17 at 12.14.36 PM.jpeg', 11),
(28, 'WhatsApp Image 2022-10-17 at 12.14.36 PM.jpeg', 12),
(29, 'Screenshot 2023-03-14 085726.png', 13),
(30, 'Screenshot 2023-03-14 085726.png', 14),
(31, 'Screenshot 2023-03-14 090248.png', 15),
(32, 'Screenshot 2023-03-14 085726.png', 16),
(33, 'Screenshot 2023-03-14 085952.png', 17),
(34, 'Screenshot 2023-03-14 085952.png', 18),
(35, 'Screenshot 2023-03-14 085952.png', 19),
(36, 'quantam_break_01.jpg', 20),
(37, 'cod_4.jpg', 21),
(38, 'control_01.jpg', 22),
(39, 'control_01.jpg', 23),
(40, 'control_01.jpg', 24),
(41, 'control_01.jpg', 25),
(42, 'control_01.jpg', 26),
(43, 'control_01.jpg', 27),
(44, 'control_01.jpg', 28),
(45, 'control_01.jpg', 29),
(46, 'cod_6.jpg', 30),
(47, 'cod_6.jpg', 1),
(48, 'cod_2.png', 2),
(49, 'cod_2.png', 3),
(50, 'cod_4.jpg', 4),
(51, 'control_01.jpg', 5),
(52, 'statue of unity.jpg', 6),
(53, 'interior thar.jpg', 7),
(54, 'thar ex.webp', 7),
(55, 'interior xuv700.jpg', 8),
(56, 'xuv 700-ex.webp', 8),
(57, 'harrier ex.jpg', 9),
(58, 'interior harirer.webp', 9);

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `id` int(11) NOT NULL,
  `ownername` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `ownername`, `email`, `password`) VALUES
(16, 'suresh reyna', 'suresh@gmail.com', '202cb962ac59075b964b07152d234b70'),
(20, 'sir', 'sir@gmail.com', 'dcff57c9a964f83fbf81cc75ec2e413a'),
(22, 'utu', 'utu@gmail.com', '037b2d56dd15afa9e43a0de04eaf2c85');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(19, 'het', 'hello@gmail.com', 'f30aa7a662c728b7407c54ae6bfd27d1'),
(20, 'sir', 'sir@gmail.com', 'dcff57c9a964f83fbf81cc75ec2e413a'),
(21, 'utu', 'utu@gmail.com', '037b2d56dd15afa9e43a0de04eaf2c85');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `name` varchar(220) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
