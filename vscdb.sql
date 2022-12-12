-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2022 at 06:14 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vscdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `id` int(11) NOT NULL,
  `username` varchar(8) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`id`, `username`, `fullname`, `password`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contactus_tbl`
--

CREATE TABLE `contactus_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_tbl`
--

CREATE TABLE `product_tbl` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_des` text NOT NULL,
  `p_img` text NOT NULL,
  `p_price` float NOT NULL,
  `p_cat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_tbl`
--

INSERT INTO `product_tbl` (`p_id`, `p_name`, `p_des`, `p_img`, `p_price`, `p_cat`) VALUES
(1001, 'Ostovet', 'OSTOVET Liquid is a cattle feed supplement high-bioavailable Calcium, Vitamin D3, Vitamin B12, and Phosphorus for lactating cattle.\r\n\r\nRECOMMENDED FOR Veterinarians, hospitals and Registered Veterinary Practitioners.\r\n\r\n\r\nOSTOVET Liquid is fortified with Calcium, Phosphorus, Vitamins D3 and Vitamin B12 for ensuring optimum milk yield and good health of cattle. \r\n\r\nFEATURES FACTS\r\n\r\n=>Enriched with bioactive peptides, organic mineral, and vitamins\r\n=>Higher milk production\r\n=>Better Growth\r\n=>Stronger Bones\r\n=>Improves Health\r\n=>Improves overall health', 'calcium.jpg', 750, ''),
(1002, 'Agimin i', 'AGRIMIN i Bolus helps the uterus for timely involution and prepares it for the subsequent reproductive cycle.\r\n\r\nRECOMMENDED FOR Veterinarians, Hospitals, and Registered Veterinary Practitioners.\r\n\r\n \r\n\r\nWHY CHOOSE AGRIMIN I BOLUS?\r\n\r\nAGRIMIN i  Bolus ensures on-time uterine involution, improves uterine tonicity, and repairs the epithelial lining of the uterus and improves conception rate.\r\n\r\n\r\nFEATURES FACTS\r\n\r\nHelps in the timely onset of oestrus after calving..\r\nImproves uterine involution..\r\nRepairs & maintains the uterine epithelial lining', 'Agrimin i bolus7 s.png', 499, ''),
(1003, 'pedigree', 'Pedigree Puppy & Adult is a complete and balanced meal that is 100 vegetarian. It is packed with protein from soyabean and vegetable oil and essential vitamins and minerals from vegetables. Not only does it support digestive health and natural defences, it also supports strong muscles, bones and teeth as well as coat health. Dogs require 2x Calcium, 2.5x Iron & 9x Vitamin B12 than human beings, which your dog can get from this variant of the Pedigree puppy and dog food range.\r\n\r\nPedigree Best Vegetarian dog food is available in 1.2 kg and 3 kg packs.', 'pedigree.jpg', 999, ''),
(1004, 'Milkogen', 'MILKOGEN is an excellent Homeopathic Veterinary Medicine used in Cows and Buffaloes for increasing milk yield naturally. It is a natural replacer of oxytocin hormone without any contraindications or side effects but with a definite increase in the milk yield. It increases the milk quantity and fat percentage of the milk to the full potential of an animal.\r\n\r\nThis unique formulation was brought up by the leading Homeopathic Veterinary Medicine producing company Goel Vet Pharma Pvt Ltd. The company is certified under WHO GMP practices which highlight its hygienic manufacturing facilities. It gained the trust of thousands of doctors and farmers who are prescribing this medicine with excellent measurable results on the milk yield of an animal.', 'milkogen.jpg', 1000, ''),
(1005, 'whiskas.cat food', 'Whiskas Ocean Fish cat food is a nutritionally complete and balanced recipe that has carefully been created to cater to the requirements of an adult cat’s system. Flavorful pockets, filled with not only the best ocean fish and poultry ingredients but also loads of other essential nutrients that will help your cat lead a healthy, active and long life.', 'whiskas.jpg', 650, '');

-- --------------------------------------------------------

--
-- Table structure for table `reg_tbl`
--

CREATE TABLE `reg_tbl` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `c_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg_tbl`
--

INSERT INTO `reg_tbl` (`id`, `username`, `fullname`, `email`, `phone`, `password`, `c_password`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '9998887776', 'admin', ''),
(4, 'himal', 'himal', 'himal@gmail.com', '9823467543', 'lloo', 'lloo'),
(5, 'akash', 'akash', 'a1@gmail.com', '1234567890', 'akash', 'akash');

-- --------------------------------------------------------

--
-- Table structure for table `visit_tbl`
--

CREATE TABLE `visit_tbl` (
  `v_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `date` varchar(15) NOT NULL,
  `doctor` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `description` text NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visit_tbl`
--

INSERT INTO `visit_tbl` (`v_id`, `name`, `email`, `date`, `doctor`, `address`, `description`, `status`) VALUES
(2, 'dixit', 'd2@gmail.com', '2022-05-19', 'piyush', 'surendranagar', 'my dog is not eating food', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus_tbl`
--
ALTER TABLE `contactus_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tbl`
--
ALTER TABLE `product_tbl`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `reg_tbl`
--
ALTER TABLE `reg_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visit_tbl`
--
ALTER TABLE `visit_tbl`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactus_tbl`
--
ALTER TABLE `contactus_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_tbl`
--
ALTER TABLE `product_tbl`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `reg_tbl`
--
ALTER TABLE `reg_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visit_tbl`
--
ALTER TABLE `visit_tbl`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
