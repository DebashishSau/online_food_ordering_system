-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2021 at 02:12 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online food ordering system 3`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `qty` int(25) NOT NULL,
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `qty`, `cid`, `pid`) VALUES
(1, 10, 1, 25),
(169, 9, 5, 28);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `phonenumber` int(10) NOT NULL,
  `address` text NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `name`, `email`, `pwd`, `phonenumber`, `address`, `img`) VALUES
(1, 'aman singh azad', 'aman@gmail.com', '$2y$10$LdebVs8yLck6.CMPyNT8xeL81QuAvFrAysvQH4dYxnLgzb4g1kPsm', 1226248366, 'abc mumbai', 'profilpic/1575574781_chef-2.jpg'),
(2, 'debashish sau', 'debashish@gmail.com', '$2y$10$yKE/py71fQ12ivGhGVikuOITG.Jvo59L.0tPYdxtFyWWKjtYEjeMa', 2147483647, 'xyz surat', 'profilpic/1575632563_chef-3.jpg'),
(3, 'aryan pandey', 'aryan@testest.com', '$2y$10$KLQebJQlKmWQMIpVvwCMquKZS2LBPLPMiChBzu83e4UrCjHgbiBE6', 2147483647, 'begusarai', 'profilpic/1575719736_32.jpg'),
(4, 'prabhakar kumar', 'prabhakar@test.com', '$2y$10$2shlcwaEggL3JVqVbv9JiO7pOquK1635foHo8z/s.woGqOnzltc8S', 2147483647, 'puducherry', 'profilpic/default-avatar.jpg'),
(5, 'Swapnanil ', 'Swapnanil @gmail.com', 'helloworld', 666666, 'dubai', 'progiler.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phno` int(10) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(120) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `name`, `phno`, `email`, `password`, `type`) VALUES
(1, 'admin', 2147483647, 'admin@food.com', '$2y$10$bhZgfD5jh22aUimjxwvkZue8BsM2SVgCAvJmJFARKfp16XVcA2UnK', 'admin'),
(2, 'ghazi', 2147483647, 'ghazi@empl.com', '$2y$10$bhZgfD5jh22aUimjxwvkZue8BsM2SVgCAvJmJFARKfp16XVcA2UnK', 'employe'),
(3, 'aman', 2147483647, 'aman@food.com', '$2y$10$bhZgfe5jh22aUimjxwvkZue8BsM2SVgCAvJmJFARKfp16XVcA2UnK', 'admin'),
(4, 'debs', 2147483647, 'debs@empl.com', '$2y$10$bhZgfb5jh22aUimjxwvkZue8BsM2SVgCAvJmJFARKfp16XVcA2UnK', 'employe');

-- --------------------------------------------------------

--
-- Table structure for table `myorders`
--

CREATE TABLE `myorders` (
  `oid` int(11) NOT NULL,
  `qty` int(25) NOT NULL,
  `status` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `myorders`
--

INSERT INTO `myorders` (`oid`, `qty`, `status`, `pid`, `cid`) VALUES
(1, 10, 1, 25, 1),
(97, 9, 0, 28, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` text NOT NULL,
  `price` int(10) NOT NULL,
  `file` text NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `name`, `description`, `price`, `file`, `type`) VALUES
(25, 'Mutton Whopper Double Patty', 'Two much mutton as delicious flame-grilled patties, farm-fresh veggies and mayo is what makes this Mutton Double Whopper a feast for the beast.', 389, '1575672841_63.jpg', 'breakfast'),
(26, 'Chicken Whopper Double Patty', 'Our signature Whopper with 7 layers between the buns. Flame Grilled chicken Double Patty, fresh onion, crispy lettuce, juicy tomatoes, tangy gherkins, creamy and smoky sauces with xxl buns. It’s Not A Burger, it’s a Whopper.', 219, '1575673264_47.jpg', 'breakfast'),
(27, 'Mutton Whopper', 'Flame grilled signature Mutton patty Whopper', 259, '1575673319_25.jpg', 'breakfast'),
(28, 'Veg Whopper Combo', 'Our signature Whopper with 7 layers between the buns. Extra crunchy veg Patty, fresh onion, crispy lettuce, juicy tomatoes, tangy gherkins, creamy and smoky sauces with xxl buns. It’s Not A Burger, it’s a Whopper + Fries + Pepsi', 276, '1575673361_61.jpg', 'lunch'),
(29, 'Fiery Chicken - Combo', ' Too Hot to Handle. Our Spicy & Crunchy Chicken Patty topped with crispy lettuce, juicy tomatoes and creamy sauce with our unique corn dust buns. An indulgent treat from our Kings Collection! Comes with fries + Pepsi', 306, '1575673417_62.jpg', 'lunch'),
(31, 'Lite Whopper Jr Veg Combo', 'Our signature Whopper with 7 layers between the buns in a convenient size. Extra crunchy veg Patty, fresh onion, crispy lettuce, juicy tomatoes, tangy gherkins, creamy and smoky sauces. Comes with Fries + Pepsi', 236, '1575673511_63.jpg', 'lunch'),
(32, 'Mutton Whopper - Combo', 'Make room for our fully loaded Whopper with a juicy, flame-grilled Mutton Patty, tangy pickles, fresh veggies, mayo and ketchup served in fresh 5\" buns. Comes with Fries + Exclusive Pepsi can.', 386, '1575673945_42.jfif', 'breakfast'),
(33, 'Cheese Melt down combo', 'Cheese oozing spicy veg patty, veggies and creamy sauce. An indulgent treat from our Kings Collection! Comes with Fries + Pepsi', 296, '1575673983_42.jfif', 'breakfast');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vid` int(10) UNSIGNED NOT NULL,
  `oid` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  `regnumber` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vid`, `oid`, `status`, `regnumber`) VALUES
(1, 1, 1, 'fsffs2332'),
(3, 97, 1, 'gsd2323');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `myorders`
--
ALTER TABLE `myorders`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `myorders`
--
ALTER TABLE `myorders`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON UPDATE CASCADE;

--
-- Constraints for table `myorders`
--
ALTER TABLE `myorders`
  ADD CONSTRAINT `myorders_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `cart` (`pid`),
  ADD CONSTRAINT `myorders_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `cart` (`cid`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `myorders` (`oid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
