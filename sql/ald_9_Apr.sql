-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2013 at 05:29 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ald`
--

-- --------------------------------------------------------

--
-- Table structure for table `food_nutrition_master`
--

CREATE TABLE IF NOT EXISTS `food_nutrition_master` (
  `FNM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FNM_Name` varchar(45) NOT NULL,
  `FNM_Description` varchar(200) DEFAULT '0',
  `PFC_ID` int(11) DEFAULT NULL,
  `FNM_Measure_Unit` int(11) DEFAULT NULL,
  `FNM_Weight` decimal(12,2) DEFAULT '0.00',
  `FNM_Volume` decimal(12,2) DEFAULT '0.00',
  `Total_Fat` decimal(12,2) DEFAULT '0.00',
  `Sat_Fat` decimal(12,2) DEFAULT '0.00',
  `Trans_Fat` decimal(12,2) DEFAULT '0.00',
  `Chol` decimal(12,2) DEFAULT '0.00',
  `Sodium` decimal(12,2) DEFAULT '0.00',
  `Total_Carb` decimal(12,2) DEFAULT '0.00',
  `Diet_Fibre` decimal(12,2) DEFAULT '0.00',
  `Sugar` decimal(12,2) DEFAULT '0.00',
  `Protein` decimal(12,2) DEFAULT '0.00',
  `Calcium` decimal(12,2) DEFAULT '0.00',
  `Potassium` decimal(12,2) DEFAULT '0.00',
  `Alcohol` decimal(12,2) DEFAULT '0.00',
  `Phosphorus` decimal(12,2) DEFAULT '0.00',
  `Calories` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`FNM_ID`),
  KEY `PFC_ID_idx` (`PFC_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Master table for Food and its Nutritional content' AUTO_INCREMENT=90 ;

--
-- Dumping data for table `food_nutrition_master`
--

INSERT INTO `food_nutrition_master` (`FNM_ID`, `FNM_Name`, `FNM_Description`, `PFC_ID`, `FNM_Measure_Unit`, `FNM_Weight`, `FNM_Volume`, `Total_Fat`, `Sat_Fat`, `Trans_Fat`, `Chol`, `Sodium`, `Total_Carb`, `Diet_Fibre`, `Sugar`, `Protein`, `Calcium`, `Potassium`, `Alcohol`, `Phosphorus`, `Calories`) VALUES
(1, 'Corona Extra Pale Lager (4.6% alc.)', '0', 1, 1, 0.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 14000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 13100.00, 0.00, 148.00),
(2, 'Corona Light Pale Lager (3.2% alc.)', '0', 1, 1, 0.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11300.00, 0.00, 99.00),
(3, 'Heineken Heineken (5% alc.)', '0', 1, 1, 0.00, 12.00, 0.00, 0.00, 0.00, 0.00, 7.00, 11300.00, 0.00, 0.00, 1500.00, 0.00, 0.00, 14000.00, 0.00, 148.00),
(4, 'Pabst Blue Ribbon (3.9% alc.)', '0', 1, 1, 0.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 8300.00, 0.00, 0.00, 700.00, 0.00, 0.00, 11000.00, 0.00, 113.00),
(5, 'Pabst Regular', '0', 2, 1, 0.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 12100.00, 0.00, 0.00, 400.00, 0.00, 0.00, 1000.00, 0.00, 57.00),
(6, 'St. Pauli Girl Non-Alcoholic Beer (0.5% alc.)', '0', 2, 1, 0.00, 12.00, 0.00, 0.00, 0.00, 0.00, 6.00, 21000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1000.00, 0.00, 96.00),
(7, 'Texas Select NA (Non-Alcoholic) Malt Beverage', '0', 2, 1, 0.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 12100.00, 0.00, 0.00, 400.00, 0.00, 0.00, 1100.00, 0.00, 58.00),
(8, 'Woodchuck Draft, Amber (5% alc.)', '0', 3, 4, 0.00, 7.10, 0.00, 0.00, 0.00, 0.00, 0.00, 12300.00, 0.00, 0.00, 0.00, 0.00, 0.00, 12300.00, 0.00, 135.00),
(9, 'HardCore Crisp Hard Cider (6% alc.)', '0', 3, 1, 0.00, 12.00, 0.00, 0.00, 0.00, 0.00, 15.00, 21000.00, 0.00, 16000.00, 0.00, 0.00, 240.00, 15100.00, 0.00, 190.00),
(10, 'Sutter Home Chenin Blanc', '0', 4, 4, 0.00, 5.10, 0.00, 0.00, 0.00, 0.00, 0.00, 8500.00, 0.00, 0.00, 500.00, 0.00, 0.00, 12700.00, 0.00, 125.00),
(11, 'Champagne', '0', 4, 3, 0.00, 4.10, 0.00, 0.00, 0.00, 0.00, 0.00, 1200.00, 0.00, 0.00, 200.00, 0.00, 0.00, 10300.00, 0.00, 78.00),
(12, 'Bacardi Silver Mojito (5% alc.)', '0', 5, 1, 0.00, 12.00, 0.00, 0.00, 0.00, 0.00, 9.00, 35700.00, 0.00, 0.00, 0.00, 0.00, 0.00, 14200.00, 0.00, 238.00),
(13, 'Bacardi Breezer (3.2% alc.), Passionfruit; Ca', '0', 5, 1, 0.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 39000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 9000.00, 0.00, 220.00),
(14, 'Angostura Mixers, Bloody Mary, non-alcoholic', '0', 6, 4, 0.00, 4.10, 0.00, 0.00, 0.00, 0.00, 560.00, 4000.00, 0.00, 1000.00, 0.00, 20.00, 0.00, 0.00, 0.00, 20.00),
(15, 'Baja Bob''s Tropical Trouble Hurricane Cocktai', '0', 6, 4, 0.00, 4.10, 0.00, 0.00, 0.00, 0.00, 45.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(16, 'Bacardi Bahama Mama Classic Cocktail (10% alc', '0', 7, 2, 0.00, 1.50, 0.00, 0.00, 0.00, 0.00, 27.00, 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3600.00, 0.00, 49.00),
(17, 'Fuzzy Navel', '0', 8, 2, 0.00, 1.50, 0.00, 0.00, 0.00, 0.00, 0.00, 7000.00, 0.00, 7000.00, 0.00, 0.00, 0.00, 1300.00, 0.00, 120.00),
(18, 'Baileys Irish Cream Liqueur (17% alc.)', '0', 9, 2, 0.00, 1.50, 5900.00, 3600.00, 0.00, 18.00, 36.00, 11300.00, 0.00, 9000.00, 1400.00, 0.00, 0.00, 6100.00, 0.00, 147.00),
(19, 'Brandy, 100 proof', '0', 10, 2, 0.00, 1.50, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.80, 17700.00, 0.00, 123.00),
(20, 'Corn Flake Crust Breakfast Bar, with Fruit', '0', 11, 5, 1.50, 0.00, 32000.00, 600.00, 0.00, 0.00, 71.00, 31.00, 900.00, 14900.00, 1900.00, 17.40, 83.70, 0.00, 0.00, 160.00),
(21, 'Hostess Fruit and Grain, Banana Nut, Low-Fat', '0', 11, 5, 1.30, 0.00, 2500.00, 0.00, 500.00, 0.00, 115.00, 25000.00, 500.00, 17000.00, 2000.00, 0.00, 0.00, 0.00, 0.00, 130.00),
(22, 'Kellogg''s Crunch, Raisin Bran', '0', 11, 5, 1.00, 0.00, 2000.00, 0.00, 0.00, 0.00, 85.00, 22000.00, 1000.00, 9000.00, 1000.00, 0.00, 0.00, 0.00, 0.00, 110.00),
(23, 'Fruit-filled Nonfat Granola Bar', '0', 12, 5, 1.00, 0.00, 300.00, 100.00, 0.00, 0.00, 5.00, 22000.00, 2100.00, 15700.00, 1700.00, 900.00, 62.50, 0.00, 0.00, 97.00),
(24, 'Dixie Diners'' Club Nutlettes, Apple Berry', '0', 12, 5, 1.10, 0.00, 2000.00, 1000.00, 0.00, 0.00, 3.00, 16000.00, 10000.00, 2000.00, 8000.00, 50.00, 362.00, 0.00, 0.00, 87.00),
(25, 'Barbara''s Bakery Blueberry Apple Fruit & Yogu', '0', 13, 5, 1.50, 0.00, 3000.00, 0.00, 0.00, 0.00, 125.00, 29000.00, 1000.00, 15000.00, 3000.00, 250.00, 0.00, 0.00, 0.00, 150.00),
(26, 'Bariatrix Caramel Delight Protein Bar', '0', 13, 5, 1.50, 0.00, 3500.00, 2500.00, 0.00, 5000.00, 220.00, 16000.00, 3000.00, 5000.00, 15000.00, 40.00, 140.00, 0.00, 0.00, 150.00),
(27, 'Apex Iced Chocolate Brownie Delight Bar', '0', 14, 5, 1.90, 0.00, 8000.00, 3000.00, 0.00, 20.00, 160.00, 27000.00, 1000.00, 16000.00, 13000.00, 50.00, 0.00, 0.00, 0.00, 230.00),
(28, 'Balance Bar Blueberry Acai Bare Energy Balanc', '0', 14, 5, 1.80, 0.00, 7000.00, 3000.00, 0.00, 0.00, 190.00, 22000.00, 4000.00, 11000.00, 15000.00, 200.00, 0.00, 0.00, 0.00, 200.00),
(29, 'Barbara''s Bakery Corn Flakes, dry', '0', 15, 6, 1.10, 0.00, 1000.00, 0.00, 0.00, 0.00, 80.00, 25000.00, 500.00, 3000.00, 2000.00, 20.00, 100.00, 0.00, 0.00, 100.00),
(30, 'Pizza Hut Bread Stick', '0', 25, 7, 1.50, 0.00, 5000.00, 1000.00, 0.00, 0.00, 260.00, 19000.00, 1000.00, 2000.00, 5000.00, 0.00, 0.00, 0.00, 0.00, 140.00),
(31, 'Pizza Hut Cheese only 6" Personal Pan Pizza', '0', 25, 8, 7.30, 0.00, 24000.00, 10000.00, 500.00, 55.00, 1320.00, 68000.00, 4000.00, 7000.00, 26000.00, 0.00, 0.00, 0.00, 0.00, 590.00),
(32, 'Pizza hut Meat Lovers 14" pan pizza', '0', 25, 8, 43.20, 0.00, 224000.00, 80000.00, 4000.00, 440.00, 9120.00, 280000.00, 16000.00, 24000.00, 152000.00, 0.00, 0.00, 0.00, 0.00, 3760.00),
(33, 'pizza hut pepperoni 6" personal pan pizza', '0', 25, 8, 7.10, 0.00, 27000.00, 10000.00, 500.00, 60.00, 1560.00, 67000.00, 4000.00, 7000.00, 25000.00, 0.00, 0.00, 0.00, 0.00, 620.00),
(34, 'Pizza hut pepperoni 14" hand tossed Style Piz', '0', 25, 8, 30.40, 0.00, 104000.00, 48000.00, 0.00, 280.00, 6320.00, 272000.00, 8000.00, 16000.00, 104000.00, 0.00, 0.00, 0.00, 0.00, 2480.00),
(35, 'Pizza hut pepperoni 14" Thin and Crispy Pizza', '0', 25, 8, 24.00, 0.00, 104000.00, 48000.00, 0.00, 280.00, 7280.00, 224000.00, 8000.00, 40000.00, 96000.00, 0.00, 0.00, 0.00, 0.00, 2240.00),
(36, 'KFC Grilled Chicken Breast', '0', 29, 9, 5.40, 0.00, 7000.00, 2000.00, 0.00, 135.00, 730.00, 0.00, 0.00, 0.00, 40000.00, 0.00, 0.00, 0.00, 0.00, 220.00),
(37, 'KFC Hot Chicken Wing(8 pieces)', '0', 29, 10, 6.40, 0.00, 32000.00, 4000.00, 0.00, 160.00, 1120.00, 32000.00, 0.00, 0.00, 32000.00, 0.00, 0.00, 0.00, 0.00, 560.00),
(38, 'KFC Original Recipe Chicken Breast with Skin ', '0', 29, 9, 5.70, 0.00, 21000.00, 5000.00, 0.00, 110.00, 1080.00, 11000.00, 0.00, 0.00, 34000.00, 0.00, 0.00, 0.00, 0.00, 360.00),
(39, 'KFC Cole Slaw', '0', 28, 10, 4.00, 0.00, 10000.00, 1500.00, 0.00, 5.00, 150.00, 20000.00, 2000.00, 17000.00, 1000.00, 0.00, 0.00, 0.00, 0.00, 180.00),
(40, 'KFC Biscuit', '0', 30, 10, 1.90, 0.00, 8000.00, 6000.00, 0.00, 0.00, 530.00, 23000.00, 1000.00, 2000.00, 4000.00, 0.00, 0.00, 0.00, 0.00, 180.00),
(41, 'McDonald''s Big Mac Burger', '0', 26, 11, 7.60, 0.00, 29000.00, 10000.00, 1000.00, 75.00, 970.00, 46000.00, 3000.00, 9000.00, 25000.00, 250.00, 0.00, 0.00, 0.00, 550.00),
(42, 'McDonald''s Cheeseburger', '0', 26, 11, 4.00, 0.00, 12000.00, 6000.00, 500.00, 40.00, 680.00, 33000.00, 2000.00, 7000.00, 15000.00, 200.00, 0.00, 0.00, 0.00, 300.00),
(43, 'McDonald''s French Fries(medium)', '0', 27, 10, 4.10, 0.00, 19000.00, 2500.00, 0.00, 0.00, 270.00, 48000.00, 5000.00, 0.00, 4000.00, 20000.00, 0.00, 0.00, 0.00, 380.00),
(44, 'McDonald''s Hamburger', '0', 26, 11, 3.50, 0.00, 9000.00, 3500.00, 500.00, 25.00, 480.00, 31000.00, 2000.00, 6000.00, 12000.00, 100.00, 0.00, 0.00, 0.00, 250.00),
(45, 'McDonald''s McChicken Burger', '0', 26, 11, 5.00, 0.00, 16000.00, 3000.00, 0.00, 35.00, 800.00, 40000.00, 2000.00, 5000.00, 14000.00, 100.00, 0.00, 0.00, 0.00, 360.00),
(46, 'Burger King French Fries, Salted(medium)', '0', 27, 10, 5.40, 0.00, 17700.00, 2800.00, 0.00, 0.00, 572.00, 58000.00, 4000.00, 0.00, 4000.00, 0.00, 0.00, 0.00, 0.00, 403.00),
(47, 'Burger King Onion Rings(medium)', '0', 28, 10, 4.10, 0.00, 20600.00, 3700.00, 0.00, 0.00, 1079.00, 52700.00, 4100.00, 5800.00, 4100.00, 0.00, 0.00, 0.00, 0.00, 412.00),
(48, 'Burger King Original Chicken Sandwich', '0', 26, 12, 7.70, 0.00, 39000.00, 7000.00, 500.00, 65.00, 1390.00, 46000.00, 3000.00, 4000.00, 24000.00, 0.00, 0.00, 0.00, 0.00, 630.00),
(49, 'Burger King Fire-Grilled Whopper, with Cheese', '0', 26, 11, 10.60, 0.00, 42000.00, 15000.00, 1000.00, 85.00, 1380.00, 59000.00, 3000.00, 14000.00, 29000.00, 0.00, 0.00, 0.00, 0.00, 710.00),
(50, 'Burger King Fire-Grilled Whopper', '0', 26, 11, 9.80, 0.00, 35000.00, 10000.00, 1000.00, 65.00, 980.00, 57000.00, 3000.00, 13000.00, 25000.00, 0.00, 0.00, 0.00, 0.00, 630.00),
(51, 'Subway Oven Roasted Chicken on Wheat Bread Lo', '0', 26, 13, 8.20, 0.00, 5000.00, 1500.00, 0.00, 45.00, 640.00, 47000.00, 5000.00, 8000.00, 23000.00, 300.00, 0.00, 0.00, 0.00, 320.00),
(52, 'Subway Tuna on Wheat Bread 6" Sub', '0', 26, 13, 8.20, 0.00, 24000.00, 4000.00, 0.00, 35.00, 620.00, 44000.00, 5000.00, 6000.00, 20000.00, 300.00, 0.00, 0.00, 0.00, 470.00),
(53, 'Subway Turkey Breast & Black Forest Ham on Wh', '0', 26, 13, 7.70, 0.00, 4000.00, 1000.00, 0.00, 20.00, 820.00, 46000.00, 5000.00, 8000.00, 18000.00, 300.00, 0.00, 0.00, 0.00, 280.00),
(54, 'Subway BLT on Wheat Bread 6" Sub', '0', 26, 13, 5.40, 0.00, 9000.00, 4000.00, 0.00, 20.00, 680.00, 43000.00, 5000.00, 6000.00, 15000.00, 300.00, 0.00, 0.00, 0.00, 320.00),
(55, 'Panda Express Firecracker Chicken Breast', '0', 31, 14, 6.10, 0.00, 10000.00, 2000.00, 0.00, 65.00, 990.00, 12000.00, 3000.00, 5000.00, 25000.00, 0.00, 0.00, 0.00, 0.00, 240.00),
(56, 'Panda Express Kung Pao Chicken', '0', 31, 14, 5.80, 0.00, 14000.00, 2500.00, 0.00, 55.00, 900.00, 13000.00, 1000.00, 5000.00, 15000.00, 0.00, 0.00, 0.00, 0.00, 240.00),
(57, 'Panda Express Broccoli Beef', '0', 31, 14, 5.40, 0.00, 4000.00, 500.00, 0.00, 10.00, 660.00, 13000.00, 3000.00, 3000.00, 9000.00, 0.00, 0.00, 0.00, 0.00, 120.00),
(58, 'Panda Express Chow Mein Noodles', '0', 31, 10, 9.40, 0.00, 22000.00, 4000.00, 0.00, 0.00, 1060.00, 65000.00, 4000.00, 8000.00, 13000.00, 0.00, 0.00, 0.00, 0.00, 490.00),
(59, 'Panda Express Orange Chicken', '0', 31, 14, 5.70, 0.00, 21000.00, 4000.00, 0.00, 95.00, 620.00, 43000.00, 0.00, 18000.00, 15000.00, 0.00, 0.00, 0.00, 0.00, 420.00),
(60, 'Panda Express Peppercorn Shrimp', '0', 31, 14, 5.10, 0.00, 5000.00, 1000.00, 0.00, 95.00, 800.00, 18000.00, 1000.00, 11000.00, 12000.00, 0.00, 0.00, 0.00, 0.00, 170.00),
(61, 'Panda Express Fried Rice', '0', 31, 10, 9.30, 0.00, 16000.00, 3000.00, 0.00, 150.00, 820.00, 82000.00, 1000.00, 3000.00, 12000.00, 0.00, 0.00, 0.00, 0.00, 530.00),
(62, 'Panda Express Steamed Rice', '0', 31, 10, 8.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 86000.00, 0.00, 0.00, 7000.00, 0.00, 0.00, 0.00, 0.00, 380.00),
(63, 'Panda Express Golden Treasure Shrimp', '0', 31, 14, 5.00, 0.00, 19000.00, 3000.00, 0.00, 115.00, 500.00, 39000.00, 2000.00, 15000.00, 16000.00, 0.00, 0.00, 0.00, 0.00, 390.00),
(64, 'Panda Express Shanghai Angus Beef Steak', '0', 31, 14, 5.40, 0.00, 7000.00, 2000.00, 0.00, 50.00, 910.00, 19000.00, 1000.00, 13000.00, 21000.00, 0.00, 0.00, 0.00, 0.00, 220.00),
(65, 'P.F. Chang''s Gluten Free Pepper Steak', '0', 31, 10, 0.00, 0.00, 39000.00, 8000.00, 0.00, 0.00, 3050.00, 27000.00, 3000.00, 0.00, 52000.00, 0.00, 0.00, 0.00, 0.00, 670.00),
(66, 'P.F. Chang''s Chicken Fried Rice', '0', 31, 10, 0.00, 0.00, 25000.00, 4500.00, 0.00, 0.00, 2050.00, 206000.00, 6000.00, 0.00, 57000.00, 0.00, 0.00, 0.00, 0.00, 1240.00),
(67, 'P.F. Chang''s Shrimp Fried Rice', '0', 31, 10, 0.00, 0.00, 21000.00, 3500.00, 0.00, 0.00, 2160.00, 204000.00, 6000.00, 0.00, 44000.00, 0.00, 0.00, 0.00, 0.00, 1140.00),
(68, 'P.F. Chang''s Spicy Chicken Lunch, with White ', '0', 31, 10, 0.00, 0.00, 22000.00, 3500.00, 0.00, 0.00, 770.00, 110000.00, 2000.00, 0.00, 44000.00, 0.00, 0.00, 0.00, 0.00, 810.00),
(69, 'P.F. Chang''s Beef Fried Rice', '0', 31, 10, 0.00, 0.00, 28000.00, 6000.00, 0.00, 0.00, 2180.00, 203000.00, 5000.00, 0.00, 53000.00, 0.00, 0.00, 0.00, 0.00, 1240.00),
(70, 'P.F. Chang''s Lo Mein Noodles, with Chicken', '0', 31, 10, 0.00, 0.00, 18000.00, 2500.00, 0.00, 0.00, 3040.00, 98000.00, 7000.00, 0.00, 42000.00, 0.00, 0.00, 0.00, 0.00, 710.00),
(71, 'P.F. Chang''s Mandarin Chicken, without rice', '0', 31, 10, 0.00, 0.00, 14000.00, 2500.00, 0.00, 0.00, 2930.00, 46000.00, 6000.00, 0.00, 48000.00, 0.00, 0.00, 0.00, 0.00, 490.00),
(72, 'P.F. Chang''s Vegetarian Fried Rice', '0', 31, 10, 0.00, 0.00, 19000.00, 5000.00, 0.00, 0.00, 2210.00, 201000.00, 11000.00, 0.00, 28000.00, 0.00, 0.00, 0.00, 0.00, 1090.00),
(73, 'P.F. Chang''s Ginger Chicken, with Broccoli', '0', 31, 10, 0.00, 0.00, 11000.00, 2000.00, 0.00, 0.00, 2330.00, 38000.00, 8000.00, 0.00, 59000.00, 0.00, 0.00, 0.00, 0.00, 470.00),
(74, 'Olive Garden Breadstick with Garlic-Butter Sp', '0', 32, 10, 0.00, 0.00, 2000.00, 0.00, 0.00, 0.00, 400.00, 28000.00, 2000.00, 0.00, 6000.00, 0.00, 0.00, 0.00, 0.00, 150.00),
(75, 'Olive Garden Garden-Fresh Salad without Dress', '0', 32, 15, 0.00, 0.00, 4000.00, 500.00, 0.00, 0.00, 530.00, 19000.00, 4000.00, 0.00, 4000.00, 0.00, 0.00, 0.00, 0.00, 130.00),
(76, 'Olive Garden Garden-Fresh Salad with Dressing', '0', 32, 15, 0.00, 0.00, 20000.00, 3500.00, 0.00, 0.00, 1530.00, 23000.00, 4000.00, 0.00, 5000.00, 0.00, 0.00, 0.00, 0.00, 290.00),
(77, 'Olive Garden Grilled Chicken Caesar Salad', '0', 32, 15, 0.00, 0.00, 40000.00, 8000.00, 0.00, 0.00, 1230.00, 19000.00, 5000.00, 0.00, 43000.00, 0.00, 0.00, 0.00, 0.00, 610.00),
(78, 'Olive Garden Lasagna Classico Dinner Entree', '0', 32, 14, 0.00, 0.00, 47000.00, 25000.00, 0.00, 0.00, 2830.00, 39000.00, 19000.00, 0.00, 68000.00, 0.00, 0.00, 0.00, 0.00, 850.00),
(79, 'Olive Garden Spaghetti with Meat Sauce Dinner', '0', 32, 14, 0.00, 0.00, 22000.00, 8000.00, 0.00, 0.00, 1340.00, 94000.00, 9000.00, 0.00, 36000.00, 0.00, 0.00, 0.00, 0.00, 710.00),
(80, 'Olive Garden Parmesan Crusted Bistecca Dinner', '0', 32, 14, 0.00, 0.00, 35000.00, 19000.00, 0.00, 0.00, 1480.00, 40000.00, 7000.00, 0.00, 55000.00, 0.00, 0.00, 0.00, 0.00, 690.00),
(81, 'Olive Garden Parmesan Crusted Tilapia Dinner ', '0', 32, 14, 0.00, 0.00, 25000.00, 10000.00, 0.00, 0.00, 910.00, 42000.00, 6000.00, 0.00, 50000.00, 0.00, 0.00, 0.00, 0.00, 590.00),
(82, 'Olive Garden Linguine alla Marinara Dinner En', '0', 32, 14, 0.00, 0.00, 6000.00, 1000.00, 0.00, 0.00, 900.00, 76000.00, 9000.00, 0.00, 18000.00, 0.00, 0.00, 0.00, 0.00, 430.00),
(83, 'Carrabba''s Caesar Salad, with Caesar Dressing', '0', 32, 15, 0.00, 0.00, 54000.00, 11000.00, 0.00, 41.00, 964.00, 11000.00, 4000.00, 3000.00, 14000.00, 0.00, 0.00, 0.00, 0.00, 591.00),
(84, 'Carrabba''s Chicken Marsala, small', '0', 32, 14, 0.00, 0.00, 20000.00, 11000.00, 0.00, 124.00, 732.00, 3000.00, 1000.00, 0.00, 33000.00, 0.00, 0.00, 0.00, 0.00, 342.00),
(85, 'Carrabba''s Grilled Chicken, without soup, sal', '0', 32, 14, 0.00, 0.00, 7000.00, 2000.00, 0.00, 135.00, 788.00, 1000.00, 0.00, 0.00, 52000.00, 0.00, 0.00, 0.00, 0.00, 287.00),
(86, 'Carrabba''s Chicken Parmesan, regular', '0', 32, 14, 0.00, 0.00, 28000.00, 10000.00, 0.00, 190.00, 1850.00, 23000.00, 7000.00, 9000.00, 70000.00, 0.00, 0.00, 0.00, 0.00, 626.00),
(87, 'Carrabba''s Spaghetti Meatball Pasta, without ', '0', 32, 14, 0.00, 0.00, 28000.00, 9000.00, 0.00, 106.00, 2058.00, 95000.00, 12000.00, 9000.00, 48000.00, 0.00, 0.00, 0.00, 0.00, 825.00),
(88, 'Carrabba''s Penne Franco Pasta, with Whole Gra', '0', 32, 10, 0.00, 0.00, 50000.00, 16000.00, 0.00, 16.00, 1673.00, 90000.00, 15000.00, 1000.00, 23000.00, 0.00, 0.00, 0.00, 0.00, 878.00),
(89, 'Carrabba''s Lasagne Pasta, without soup, salad', '0', 32, 10, 0.00, 0.00, 45000.00, 24000.00, 0.00, 139.00, 2457.00, 44000.00, 7000.00, 18000.00, 46000.00, 0.00, 0.00, 0.00, 0.00, 748.00);

-- --------------------------------------------------------

--
-- Table structure for table `health_guideline_master`
--

CREATE TABLE IF NOT EXISTS `health_guideline_master` (
  `HGM_Ailment_ID` int(11) NOT NULL AUTO_INCREMENT,
  `HGM_Ailment_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`HGM_Ailment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Guidelines and thresholds of the variosu diseases/health conditions' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`) VALUES
(1, 'rishabh', 'pass'),
(2, 'shashank', 'word'),
(3, 'vaibhav', 'vaibhav'),
(4, 'foodie', 'foodie'),
(5, 'phoodie', 'phoodie'),
(6, 'user1', 'user1'),
(7, 'user2', 'user2'),
(8, 'user3', 'user3'),
(9, 'dummy', 'dummy');

-- --------------------------------------------------------

--
-- Table structure for table `major_food_category`
--

CREATE TABLE IF NOT EXISTS `major_food_category` (
  `MFC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MFC_Name` varchar(100) NOT NULL,
  `MFC_Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`MFC_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Major Food Category' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `major_food_category`
--

INSERT INTO `major_food_category` (`MFC_ID`, `MFC_Name`, `MFC_Description`) VALUES
(1, 'Alcoholic Drinks', 'Alcoholic Drinks'),
(2, 'Bars, Breakfast Cereals', 'Bars, Breakfast Cereals'),
(3, 'Sugar, Honey, Syrups, Toppings', 'Sugar, Honey, Syrups, Toppings'),
(4, 'Fast Food, Fair Food, Eating Out, Restaurants', 'Fast Food, Fair Food, Eating Out, Restaurants');

-- --------------------------------------------------------

--
-- Table structure for table `measure_serving`
--

CREATE TABLE IF NOT EXISTS `measure_serving` (
  `MS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MS_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MS_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Type of measurement used' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `measure_serving`
--

INSERT INTO `measure_serving` (`MS_ID`, `MS_Name`) VALUES
(1, 'Pint'),
(2, 'Shot Glass'),
(3, 'Chanpaign Glass'),
(4, 'Glass'),
(5, 'Bar'),
(6, 'Cup'),
(7, 'Bread Stick'),
(8, 'Pizza'),
(9, 'Piece'),
(10, 'Serving'),
(11, 'Burger'),
(12, 'Sandwich'),
(13, 'Sub'),
(14, 'Entree'),
(15, 'Salad');

-- --------------------------------------------------------

--
-- Table structure for table `primary_food_category`
--

CREATE TABLE IF NOT EXISTS `primary_food_category` (
  `PFC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PFC_Name` varchar(45) NOT NULL,
  `PFC_Description` varchar(200) DEFAULT NULL,
  `SFC_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PFC_ID`),
  KEY `SFC_ID_idx` (`SFC_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Primary Food Category' AUTO_INCREMENT=33 ;

--
-- Dumping data for table `primary_food_category`
--

INSERT INTO `primary_food_category` (`PFC_ID`, `PFC_Name`, `PFC_Description`, `SFC_ID`) VALUES
(1, 'Alcoholic Ales and Beers', NULL, 1),
(2, 'Non-Alcoholic Ales and Beers', NULL, 1),
(3, 'Ciders', NULL, 2),
(4, 'Wines', NULL, 2),
(5, 'Alcoholic Sodas, Coolers', NULL, 3),
(6, 'Cocktail Mixers, Flavouring', NULL, 3),
(7, 'Cocktails', NULL, 3),
(8, 'Shooters', NULL, 3),
(9, 'Liqueurs', NULL, 4),
(10, 'Liquors & Spirits', NULL, 4),
(11, 'Breakfast Bars', NULL, 5),
(12, 'Granola Bars', NULL, 5),
(13, 'Diet Bars', NULL, 5),
(14, 'Sports Bars', NULL, 5),
(15, 'Breakfast Cereals, Ready to Eat', NULL, 6),
(16, 'Breakfast Cereals, To be Cooked', NULL, 6),
(17, 'Jams', NULL, 7),
(18, 'Nut Spreads', NULL, 7),
(19, 'Seed Spreads', NULL, 7),
(20, 'Honey', NULL, 8),
(21, 'Sugar Substitutes', NULL, 8),
(22, 'Sugars', NULL, 8),
(23, 'Syrups', NULL, 9),
(24, 'Toppings', NULL, 9),
(25, 'Pizzas', NULL, 10),
(26, 'Sandwiches and Burgers', NULL, 10),
(27, 'Chips and Fries', NULL, 10),
(28, 'Sides', NULL, 10),
(29, 'Chicken', NULL, 10),
(30, 'Breakfast', NULL, 10),
(31, 'Chinese', NULL, 11),
(32, 'Italian', NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_master`
--

CREATE TABLE IF NOT EXISTS `restaurant_master` (
  `RMA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RMA_Name` varchar(45) DEFAULT NULL,
  `RMA_Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RMA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `restaurant_master`
--

INSERT INTO `restaurant_master` (`RMA_ID`, `RMA_Name`, `RMA_Type`) VALUES
(1, 'McDonalds', NULL),
(2, 'Pizza Hut', NULL),
(3, 'KFC', NULL),
(4, 'Subway', NULL),
(5, 'Burger King', NULL),
(6, 'Panda Express', NULL),
(7, 'P.F. Chang''s', NULL),
(8, 'Olive Garden', NULL),
(9, 'Carrabba''s', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_menu`
--

CREATE TABLE IF NOT EXISTS `restaurant_menu` (
  `RM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RM_Restaurant_ID` int(11) DEFAULT NULL,
  `FNM_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`RM_ID`),
  KEY `RM_Restaurant_ID_idx` (`RM_Restaurant_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `restaurant_menu`
--

INSERT INTO `restaurant_menu` (`RM_ID`, `RM_Restaurant_ID`, `FNM_ID`) VALUES
(1, 1, 41),
(2, 1, 42),
(3, 1, 43),
(4, 1, 44),
(5, 1, 45),
(6, 2, 30),
(7, 2, 31),
(8, 2, 32),
(9, 2, 33),
(10, 2, 34),
(11, 2, 35),
(12, 3, 36),
(13, 3, 37),
(14, 3, 38),
(15, 3, 39),
(16, 3, 40),
(17, 4, 51),
(18, 4, 52),
(19, 4, 53),
(20, 4, 54),
(21, 5, 46),
(22, 5, 47),
(23, 5, 48),
(24, 5, 49),
(25, 5, 50),
(26, 6, 55),
(27, 6, 56),
(28, 6, 57),
(29, 6, 58),
(30, 6, 59),
(31, 6, 60),
(32, 6, 61),
(33, 6, 62),
(34, 6, 63),
(35, 6, 64),
(36, 7, 65),
(37, 7, 66),
(38, 7, 67),
(39, 7, 68),
(40, 7, 69),
(41, 7, 70),
(42, 7, 71),
(43, 7, 72),
(44, 7, 73),
(45, 8, 74),
(46, 8, 75),
(47, 8, 76),
(48, 8, 77),
(49, 8, 78),
(50, 8, 79),
(51, 8, 80),
(52, 8, 81),
(53, 8, 82),
(54, 9, 83),
(55, 9, 84),
(56, 9, 85),
(57, 9, 86),
(58, 9, 87),
(59, 9, 88),
(60, 9, 89);

-- --------------------------------------------------------

--
-- Table structure for table `sub_food_category`
--

CREATE TABLE IF NOT EXISTS `sub_food_category` (
  `SFC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SFC_Name` varchar(100) NOT NULL,
  `SFC_Description` varchar(200) DEFAULT NULL,
  `MFC_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SFC_ID`),
  KEY `MFC_ID_idx` (`MFC_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Sub-division of Food Category' AUTO_INCREMENT=12 ;

--
-- Dumping data for table `sub_food_category`
--

INSERT INTO `sub_food_category` (`SFC_ID`, `SFC_Name`, `SFC_Description`, `MFC_ID`) VALUES
(1, 'Ales & Beers', 'Ales & Beers', 1),
(2, 'Ciders, Wines', 'Ciders, Wines', 1),
(3, 'Coolers, Cocktails, Shooters', 'Coolers, Cocktails, Shooters', 1),
(4, 'Liqueurs, Liquor & Spirits', 'Liquor & Spirits', 1),
(5, 'Bars: Breakfast, Granola', 'Bars: Breakfast, Granola', 2),
(6, 'Breakfast Cereals', 'Breakfast Cereals', 2),
(7, 'Jam & Nut Spreads', NULL, 3),
(8, 'Sugar, Honey', NULL, 3),
(9, 'Syrups, Desert,Toppings', NULL, 3),
(10, 'Fast-Food Chains and Restaurants', NULL, 4),
(11, 'International Foods', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_ailment`
--

CREATE TABLE IF NOT EXISTS `user_ailment` (
  `UA_User_ID` int(11) NOT NULL,
  `UA_Ailment_ID` int(11) NOT NULL,
  PRIMARY KEY (`UA_User_ID`),
  KEY `UA_User_ID_idx` (`UA_User_ID`),
  KEY `UA_Ailment_ID_idx` (`UA_Ailment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Ailments of various users';

-- --------------------------------------------------------

--
-- Table structure for table `user_chol_history`
--

CREATE TABLE IF NOT EXISTS `user_chol_history` (
  `UCH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UCH_User_ID` int(11) DEFAULT NULL,
  `UCH_Total` decimal(10,5) DEFAULT '0.00000',
  `UCH_HDL` decimal(10,5) DEFAULT '0.00000',
  `UCH_LDL` decimal(10,5) DEFAULT '0.00000',
  `UCH_TG` decimal(10,5) DEFAULT '0.00000',
  PRIMARY KEY (`UCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_food_history`
--

CREATE TABLE IF NOT EXISTS `user_food_history` (
  `UFH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UFH_User_ID` int(11) DEFAULT NULL,
  `UFH_FNM_ID` int(11) DEFAULT NULL,
  `UFH_Quantity` int(11) DEFAULT '1',
  `UFH_Meal_Type` varchar(10) DEFAULT NULL,
  `UFH_Date` date DEFAULT NULL,
  PRIMARY KEY (`UFH_ID`),
  KEY `UFH_FNM_ID_idx` (`UFH_FNM_ID`),
  KEY `UFH_User_ID_idx` (`UFH_User_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='food history of any user' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_food_history`
--

INSERT INTO `user_food_history` (`UFH_ID`, `UFH_User_ID`, `UFH_FNM_ID`, `UFH_Quantity`, `UFH_Meal_Type`, `UFH_Date`) VALUES
(1, 1, 30, 1, 'Breakfast', '2012-05-23'),
(2, 1, 77, 1, 'Breakfast', '0000-00-00'),
(3, 1, 59, 1, 'Lunch', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_health_history`
--

CREATE TABLE IF NOT EXISTS `user_health_history` (
  `UHH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UHH_User_ID` varchar(45) DEFAULT NULL,
  `UHH_Date` date NOT NULL,
  `UHH_Weight` int(11) NOT NULL,
  `UHH_BP_Upper` int(11) DEFAULT '120',
  `UHH_BP_Lower` int(11) DEFAULT '80',
  `UHH_Sugar_Fasting` int(11) DEFAULT '140',
  `UHH_Sugar_PP` int(11) DEFAULT '180',
  PRIMARY KEY (`UHH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='THe health History of a user' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `UI_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UI_username` varchar(45) NOT NULL,
  `UI_Age` int(11) DEFAULT '0',
  `UI_Gender` varchar(10) DEFAULT NULL,
  `UI_Height` int(11) DEFAULT '0',
  PRIMARY KEY (`UI_ID`),
  KEY `UI_username_idx` (`UI_username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Stores th eprofile information of users' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_rating`
--

CREATE TABLE IF NOT EXISTS `user_rating` (
  `UR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UR_UserID` int(11) DEFAULT NULL,
  `UR_Rating` decimal(4,2) DEFAULT NULL,
  `UR_FNM_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`UR_ID`),
  KEY `UR_FK_idx` (`UR_UserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=229 ;

--
-- Dumping data for table `user_rating`
--

INSERT INTO `user_rating` (`UR_ID`, `UR_UserID`, `UR_Rating`, `UR_FNM_ID`) VALUES
(0, NULL, NULL, NULL),
(1, 1, 4.50, 45),
(2, 2, 4.50, 45),
(3, 1, 4.50, 55),
(4, 3, 4.00, 37),
(5, 2, 4.00, 51),
(6, 2, 3.50, 76),
(7, 2, 1.50, 32),
(8, 3, 1.00, 35),
(10, 3, 4.50, 30),
(11, 3, 4.50, 31),
(12, 3, 2.00, 32),
(13, 3, 1.50, 33),
(14, 3, 1.50, 34),
(15, 3, 4.00, 41),
(16, 3, 0.50, 42),
(17, 3, 2.00, 43),
(18, 3, 1.00, 44),
(19, 3, 4.50, 45),
(20, 3, 4.50, 40),
(21, 3, 5.00, 39),
(22, 3, 4.00, 38),
(23, 9, 5.00, 37),
(24, 3, 4.00, 36),
(25, 3, 1.50, 64),
(26, 3, 4.50, 55),
(27, 3, 2.50, 56),
(28, 3, 1.50, 57),
(29, 3, 4.00, 58),
(30, 3, 1.00, 59),
(31, 3, 2.00, 60),
(32, 3, 4.50, 63),
(33, 3, 3.50, 62),
(34, 3, 1.50, 73),
(35, 3, 3.50, 72),
(36, 3, 4.00, 71),
(37, 3, 4.50, 70),
(38, 3, 1.50, 69),
(39, 3, 4.00, 68),
(40, 3, 4.50, 67),
(41, 3, 4.00, 66),
(42, 3, 1.00, 65),
(43, 3, 2.00, 82),
(44, 3, 3.50, 81),
(45, 3, 1.50, 80),
(46, 3, 1.00, 78),
(47, 3, 4.50, 79),
(48, 3, 4.50, 77),
(49, 3, 4.50, 76),
(50, 3, 2.50, 75),
(51, 3, 4.50, 74),
(52, 3, 1.00, 89),
(53, 3, 3.00, 88),
(54, 3, 1.50, 87),
(55, 3, 4.00, 86),
(56, 3, 5.00, 83),
(57, 3, 4.50, 84),
(58, 3, 4.50, 85),
(59, 3, 4.50, 51),
(60, 3, 2.00, 52),
(61, 3, 2.00, 53),
(62, 3, 4.50, 54),
(63, 3, 1.50, 50),
(64, 3, 1.00, 49),
(65, 3, 4.00, 48),
(66, 3, 4.50, 47),
(67, 3, 5.00, 46),
(68, 4, 1.50, 41),
(69, 4, 4.50, 42),
(70, 4, 5.00, 43),
(71, 4, 5.00, 44),
(72, 4, 1.00, 45),
(73, 4, 4.50, 34),
(74, 4, 4.50, 33),
(75, 4, 4.50, 32),
(76, 4, 2.00, 31),
(77, 4, 1.50, 30),
(78, 4, 1.00, 35),
(79, 4, 0.50, 40),
(80, 4, 5.00, 39),
(81, 4, 2.00, 38),
(82, 4, 2.00, 37),
(83, 4, 2.50, 36),
(84, 4, 1.50, 51),
(85, 4, 5.00, 52),
(86, 4, 4.50, 53),
(87, 4, 0.50, 54),
(88, 4, 1.50, 46),
(89, 4, 2.00, 47),
(90, 4, 2.50, 48),
(91, 4, 5.00, 49),
(92, 4, 4.00, 50),
(93, 4, 4.50, 64),
(94, 4, 4.50, 60),
(95, 4, 4.50, 56),
(96, 4, 4.50, 57),
(97, 4, 1.00, 55),
(98, 4, 2.00, 58),
(99, 4, 4.00, 59),
(100, 4, 0.50, 63),
(101, 4, 0.50, 61),
(102, 4, 1.00, 62),
(103, 4, 5.00, 73),
(104, 4, 1.00, 72),
(105, 4, 2.00, 71),
(106, 4, 4.50, 70),
(107, 4, 3.50, 68),
(108, 4, 4.50, 67),
(109, 4, 1.50, 66),
(110, 4, 4.50, 65),
(111, 4, 3.00, 82),
(112, 4, 4.50, 81),
(113, 4, 4.50, 79),
(114, 9, 4.50, 79),
(115, 4, 4.00, 77),
(116, 4, 3.00, 76),
(117, 4, 4.50, 75),
(118, 4, 2.00, 74),
(119, 4, 5.00, 89),
(120, 4, 2.00, 88),
(121, 4, 4.00, 87),
(122, 4, 1.50, 86),
(123, 4, 4.00, 85),
(124, 4, 3.00, 84),
(125, 4, 3.00, 83),
(126, 5, 3.50, 89),
(127, 5, 0.50, 83),
(128, 5, 1.50, 84),
(129, 5, 2.50, 85),
(130, 5, 2.50, 86),
(131, 5, 4.50, 87),
(132, 5, 3.50, 88),
(133, 5, 1.50, 82),
(134, 5, 4.50, 81),
(135, 5, 4.00, 80),
(136, 5, 4.00, 74),
(137, 5, 3.00, 75),
(138, 5, 4.50, 76),
(139, 5, 4.50, 77),
(140, 5, 2.50, 78),
(141, 5, 1.50, 79),
(142, 5, 4.00, 73),
(143, 5, 4.50, 72),
(144, 5, 1.50, 71),
(145, 5, 2.00, 70),
(146, 5, 4.50, 65),
(147, 5, 2.00, 66),
(148, 5, 2.50, 67),
(149, 5, 4.00, 68),
(150, 5, 3.50, 69),
(151, 5, 4.50, 64),
(152, 5, 4.50, 63),
(153, 5, 1.50, 62),
(154, 5, 3.00, 61),
(155, 5, 4.00, 60),
(156, 5, 1.50, 55),
(157, 5, 2.00, 56),
(158, 5, 4.50, 57),
(159, 5, 4.50, 58),
(160, 5, 2.00, 59),
(161, 5, 4.50, 50),
(162, 5, 2.00, 49),
(163, 5, 4.50, 48),
(164, 5, 1.50, 46),
(165, 5, 3.00, 54),
(166, 5, 4.00, 53),
(167, 5, 4.00, 52),
(168, 5, 2.00, 51),
(169, 6, 2.50, 54),
(170, 6, 1.50, 53),
(171, 6, 3.00, 52),
(172, 6, 4.50, 51),
(173, 6, 2.00, 64),
(174, 6, 3.50, 63),
(175, 6, 4.00, 62),
(176, 6, 4.50, 61),
(177, 6, 1.50, 55),
(178, 6, 5.00, 56),
(179, 6, 4.50, 57),
(180, 6, 3.00, 58),
(181, 6, 3.00, 82),
(182, 6, 4.50, 81),
(183, 6, 2.00, 80),
(184, 6, 4.50, 77),
(185, 6, 1.50, 75),
(186, 6, 2.50, 74),
(187, 7, 0.50, 45),
(188, 7, 2.50, 44),
(189, 7, 4.50, 43),
(190, 7, 4.50, 42),
(191, 7, 3.50, 41),
(192, 7, 4.00, 73),
(193, 7, 2.00, 72),
(194, 7, 4.00, 70),
(195, 7, 3.50, 68),
(196, 7, 1.50, 65),
(197, 7, 4.00, 66),
(198, 7, 3.00, 67),
(199, 7, 3.00, 82),
(200, 7, 2.00, 81),
(201, 7, 1.50, 80),
(202, 7, 3.50, 79),
(203, 7, 3.00, 74),
(204, 7, 4.00, 75),
(205, 7, 5.00, 76),
(206, 7, 3.50, 77),
(207, 7, 1.50, 78),
(208, 8, 3.50, 40),
(209, 8, 1.00, 39),
(210, 8, 3.00, 38),
(211, 8, 4.50, 37),
(212, 8, 2.00, 36),
(213, 8, 2.00, 30),
(214, 8, 4.50, 31),
(215, 8, 3.50, 32),
(216, 8, 2.00, 33),
(217, 8, 3.00, 34),
(218, 8, 2.00, 35),
(219, 8, 4.50, 78),
(220, 8, 2.00, 74),
(221, 8, 2.50, 75),
(222, 8, 5.00, 76),
(223, 8, 3.00, 77),
(224, 8, 1.50, 87),
(225, 8, 2.00, 86),
(226, 8, 3.00, 85),
(227, 8, 3.50, 84),
(228, 8, 2.00, 83);

-- --------------------------------------------------------

--
-- Table structure for table `user_user_r_body`
--

CREATE TABLE IF NOT EXISTS `user_user_r_body` (
  `UURB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_1_ID` int(11) DEFAULT NULL,
  `USER_2_ID` int(11) DEFAULT NULL,
  `R` float DEFAULT NULL,
  PRIMARY KEY (`UURB_ID`),
  KEY `FK_UURB_1_idx` (`USER_1_ID`),
  KEY `FK_UURB_2_idx` (`USER_2_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_user_r_taste`
--

CREATE TABLE IF NOT EXISTS `user_user_r_taste` (
  `UURT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_1_ID` int(11) NOT NULL,
  `USER_2_ID` int(11) NOT NULL,
  `R` decimal(7,5) NOT NULL,
  PRIMARY KEY (`UURT_ID`),
  KEY `FK_1_idx` (`USER_1_ID`),
  KEY `FK_2_idx` (`USER_2_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `user_user_r_taste`
--

INSERT INTO `user_user_r_taste` (`UURT_ID`, `USER_1_ID`, `USER_2_ID`, `R`) VALUES
(1, 1, 2, 0.00000),
(2, 1, 3, 0.00000),
(3, 1, 4, 0.00000),
(4, 1, 5, 0.00000),
(5, 1, 6, 0.00000),
(6, 1, 7, 0.00000),
(7, 2, 3, 0.00000),
(8, 2, 4, -0.99972),
(9, 2, 5, 0.00000),
(10, 2, 6, 0.00000),
(11, 2, 7, 0.00000),
(12, 2, 8, 0.00000),
(13, 3, 4, -0.57501),
(14, 3, 5, -0.29195),
(15, 3, 6, 0.11327),
(16, 3, 7, 0.05813),
(17, 3, 8, 0.06794),
(18, 3, 9, 0.00000),
(19, 4, 5, 0.16940),
(20, 4, 6, -0.09150),
(21, 4, 7, 0.29179),
(22, 4, 8, -0.23427),
(23, 4, 9, 0.00000),
(24, 5, 6, -0.11305),
(25, 5, 7, -0.11437),
(26, 5, 8, 0.30180),
(27, 6, 7, -0.11296),
(28, 6, 8, 1.00000),
(29, 7, 8, 0.90912),
(30, 9, 4, 0.00000),
(31, 9, 5, 0.00000),
(32, 9, 7, 0.00000);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `restaurant_menu`
--
ALTER TABLE `restaurant_menu`
  ADD CONSTRAINT `RM_Restaurant_ID` FOREIGN KEY (`RM_Restaurant_ID`) REFERENCES `restaurant_master` (`RMA_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
