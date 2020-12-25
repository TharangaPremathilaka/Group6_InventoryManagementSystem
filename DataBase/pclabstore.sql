-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2020 at 12:18 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pclabstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `sq` varchar(500) DEFAULT NULL,
  `sa` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `bno` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `amt` double DEFAULT NULL,
  `pdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `bno`, `cname`, `amt`, `pdate`) VALUES
(1, '1', '', 0, '2020-12-16'),
(2, '33', 'sdfsfd', 17, '2020-12-20'),
(3, '446', 'sdfasdfdfg', 16, '2020-12-20'),
(4, '422', 'asdasd', 11.25, '2020-12-20'),
(5, '555', 'Dhammavansa', 17, '2020-12-20'),
(6, '555', 'Dhammavansa', 17, '2020-12-20'),
(7, '77', 'afasdf', 5, '2020-12-20'),
(8, '888', 'sdfsdf', 1.25, '2020-12-20'),
(9, '999', 'Anura', 16.5, '2020-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `cash`
--

CREATE TABLE `cash` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mno` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cash`
--

INSERT INTO `cash` (`id`, `name`, `address`, `mno`, `password`, `email`, `pdate`) VALUES
(1, 'Dhammadssi', 'Elathalawa', '0777555222', '12', '12@gmail.com', '2020-12-15'),
(3, 'dfdgdfg', 'zsdfgsdfg', '456456', '11', '11@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Computer Items'),
(2, 'Mobile Items'),
(3, 'wertertddd');

-- --------------------------------------------------------

--
-- Table structure for table `customersystem`
--

CREATE TABLE `customersystem` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customersystem`
--

INSERT INTO `customersystem` (`Id`, `Name`, `Mobile`) VALUES
(1, 'Assdd', '2334123123'),
(32424, 'sdfsfd', '324324');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Barcode` varchar(100) DEFAULT NULL,
  `Price` double(11,2) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `ProductName`, `Description`, `Barcode`, `Price`, `Quantity`, `Category`) VALUES
(1, 'Phone', 'Phone', '12345', 10.50, 100, NULL),
(2, 'Mouse', 'Mouse', '23456', 12.55, 100, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `pname` varchar(300) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `mrp` double(11,2) DEFAULT NULL,
  `retailpack` int(11) DEFAULT NULL,
  `whole` int(11) DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `expdate2` date DEFAULT NULL,
  `expdate3` date DEFAULT NULL,
  `pack` int(11) DEFAULT NULL,
  `discount` decimal(11,0) DEFAULT NULL,
  `gravity` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `barcode`, `pname`, `available`, `mrp`, `retailpack`, `whole`, `expdate`, `expdate2`, `expdate3`, `pack`, `discount`, `gravity`) VALUES
(1, NULL, 'Key board', 83, 1.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, 'Mouse', 43, 1.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'dhamma', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `usersystem`
--

CREATE TABLE `usersystem` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usersystem`
--

INSERT INTO `usersystem` (`Id`, `Name`, `Mobile`) VALUES
(1, 'Anura', '5646584654'),
(2, 'anura2', '454555'),
(33, 'asd', 'asd'),
(44, 'rgdsgf', '2342347'),
(55, 'SADasd', '123123'),
(443, 'erwr', 'sdfsf'),
(4532, 'weae', 'asdd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash`
--
ALTER TABLE `cash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customersystem`
--
ALTER TABLE `customersystem`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersystem`
--
ALTER TABLE `usersystem`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cash`
--
ALTER TABLE `cash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customersystem`
--
ALTER TABLE `customersystem`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32425;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usersystem`
--
ALTER TABLE `usersystem`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4533;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
