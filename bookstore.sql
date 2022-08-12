-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 04:12 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$F.LemnLA9kL2vtn1e4YfbeyL1XJYGUJr6qE/6vC7QNdr2oCnakFNi'),
(2, 'kriji', 'kriji@gmail.com', 'kriji123');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`, `author`, `description`, `price`, `image`) VALUES
(14, 'Mansoon', 'Subin Bhattarai', ' Monsoon can be taken as a metaphor for love, how love can be unpredictable and with ups and downs.\r\n', 450, './assets/image/book7.png'),
(15, 'Mansoon', 'Buddhi Sagar', 'Monsoon can be taken as a metaphor for love, how love can be unpredictable and with ups and downs.', 450, './assets/image/book7.png'),
(16, 'Harry Potter', 'JK Rowling', 'There is a door at the end of a silent corridor. And it’s haunting Harry Pottter’s dreams. Why else would he be waking in the middle of the night, screaming in terror?', 320, './assets/image/book9.png'),
(17, 'One Indian Girl', 'Chetan Bhagat', 'a story of a girl called Radhika Mehta who is a hot-shot banker working in the prestigious Investment Bank, Goldman Sachs.', 450, 'assets/image/book3.png'),
(18, 'One Indian Girl', 'Chetan Bhagat', 'a story of a girl called Radhika Mehta who is a hot-shot banker working in the prestigious Investment Bank, Goldman Sachs.', 450, 'assets/image/book3.png'),
(19, 'One Indian Girl', 'Chetan Bhagat', 'a story of a girl called Radhika Mehta who is a hot-shot banker working in the prestigious Investment Bank, Goldman Sachs.', 450, 'assets/image/book3.png'),
(20, 'One Indian Girl', 'Chetan Bhagat', 'a story of a girl called Radhika Mehta who is a hot-shot banker working in the prestigious Investment Bank, Goldman Sachs.', 450, 'assets/image/book3.png'),
(21, 'One Indian Girl', 'Chetan Bhagat', 'a story of a girl called Radhika Mehta who is a hot-shot banker working in the prestigious Investment Bank, Goldman Sachs.', 450, 'assets/image/book3.png'),
(22, 'One Indian Girl', 'Chetan Bhagat', 'a story of a girl called Radhika Mehta who is a hot-shot banker working in the prestigious Investment Bank, Goldman Sachs.', 450, 'assets/image/book3.png'),
(23, 'The girl in the room 105', 'Chetan Bhagat', 'A story about a IIT coaching class tutor who goes to wish his ex-girlfriend on her birthday and finds her murdered.', 499, 'assets/image/book4.png'),
(24, 'The Alchemist', 'Paulo Coelho', 'a classic novel in which a boy named Santiago embarks on a journey seeking treasure in the Egyptian pyramids after having a recurring dream about it and on the way meets mentors, falls in love, and most importantly, learns the true importance of who he is', 499, 'assets/image/book5.png'),
(25, 'Summer Love', 'Subin Bhattarai', 'Atit is curious to find out the entrance topper Saaya, who also has the same way back to home as Atit has. At that time, they fall in love but as the college finishes, Atit has to go to Dhangadi and Saaya; Norway. But as time passed, ', 499, 'assets/image/book8.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `order_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_item`
--

CREATE TABLE `tbl_order_item` (
  `id` int(11) NOT NULL,
  `oder_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
