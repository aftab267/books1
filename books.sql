-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2022 at 03:17 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`) VALUES
(427, 'HUMAYUN AHMED'),
(428, 'jafar Iqubal'),
(429, 'Selina Jahan'),
(430, 'Sunil Gongopaday'),
(433, 'Shahajahan Tapan');

-- --------------------------------------------------------

--
-- Table structure for table `book_info`
--

CREATE TABLE `book_info` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `publication_date` date NOT NULL,
  `language_name` varchar(255) NOT NULL,
  `syllabus_id` int(11) NOT NULL,
  `book_price` decimal(10,2) NOT NULL,
  `book_image` varchar(255) NOT NULL,
  `author_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_info`
--

INSERT INTO `book_info` (`book_id`, `book_name`, `author_id`, `series_id`, `subject_id`, `publisher_id`, `publication_date`, `language_name`, `syllabus_id`, `book_price`, `book_image`, `author_image`) VALUES
(23, 'Harry Potter caroused child  one', 427, 1, 1, 4, '2021-10-02', 'Bangla', 2, '500.00', '7187815dikhVDjL.jpg', '9835download (3).jpg'),
(26, 'Harry Potter caroused child', 428, 1, 1, 3, '2021-08-04', 'bangla', 2, '300.00', '9521math-book-blue-covers-word-260nw-229009651.jpg', '9386images (3).jpg'),
(27, 'Harry Potter caroused', 0, 1, 0, 0, '2022-01-27', 'bangla4', 0, '700.00', '6209math-primer-book-500x500.jpg', '6193images.jpg'),
(28, 'Ram', 0, 1, 5, 0, '0000-00-00', 'English', 0, '300.00', '9091math-book-blue-covers-word-260nw-229009651.jpg', '8214images (5).jpg'),
(29, 'Harry Potter caroused child', 0, 1, 1, 2, '2021-10-02', 'bangla3', 0, '400.00', '9055download (4).jpg', '3733images (4).jpg'),
(30, 'Carnel', 0, 4, 1, 7, '2022-01-11', 'English', 1, '10000.00', '8057download (1).jpg', '7939images (3).jpg'),
(39, 'Carnel', 0, 1, 1, 1, '2022-01-19', 'English', 1, '225.00', '6994download (1).jpg', '5319download (2).jpg'),
(40, 'Carnel', 0, 5, 8, 10, '2022-01-20', 'English', 6, '600.00', '4911download (1).jpg', '5250download (2).jpg'),
(44, 'Harry Potter and the Philosophers Stone', 0, 5, 8, 10, '2022-01-20', 'English', 6, '225.00', '3023Untitled-1.jpg', '6993Untitled-1.jpg'),
(46, '', 0, 0, 0, 0, '0000-00-00', '', 0, '0.00', '', ''),
(47, 'Carnel', 0, 1, 1, 1, '2022-01-06', 'English', 1, '225.00', '9782download (4).jpg', '5949images (3).jpg'),
(48, '', 427, 0, 0, 0, '0000-00-00', '', 0, '0.00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `publisher_name`, `address`, `phone`, `email`) VALUES
(1, 'Panjeri Pablication', '6 kolabagan', '01711241125', 'aftab267@gmail.com'),
(2, 'boibichitra', '6 kolabagan', '01711241125', 'aftab267@gmail.com'),
(3, 'Arif Publication', '6 kolabagan road', '01711241125', 'aftab267@gmail.com'),
(4, 'Rokomari Publication', '6 kolabagan', '017112411256', 'aftab267@gmail.com'),
(7, 'Jaico Publication', '18 sobanbagh', '01711254878', 'ad@gmail.com'),
(8, 'boibichitra', '6 kolabagan', '01711241125', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `series_id` int(11) NOT NULL,
  `series_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`series_id`, `series_name`) VALUES
(1, 'Goosbump'),
(4, 'Tofel'),
(5, 'harry potter'),
(6, 'Tom Gates'),
(7, 'Fairy Teles Series');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`) VALUES
(1, 'Chemistry  '),
(3, 'Physics course book'),
(4, 'Biology'),
(5, 'Marketing'),
(8, 'Story Book');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `syllabus_id` int(11) NOT NULL,
  `syllabus_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`syllabus_id`, `syllabus_name`) VALUES
(1, 'Class 1'),
(2, 'Class 2'),
(4, 'O-level'),
(5, 'A-level'),
(6, 'Story Book');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `book_info`
--
ALTER TABLE `book_info`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`series_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`syllabus_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT for table `book_info`
--
ALTER TABLE `book_info`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `syllabus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
