-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2013 at 10:03 AM
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
-- Table structure for table `food_cusine_r`
--

CREATE TABLE IF NOT EXISTS `food_cusine_r` (
  `FTR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Food_1_ID` int(11) DEFAULT NULL,
  `Food_2_ID` int(11) DEFAULT NULL,
  `R` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`FTR_ID`),
  KEY `fk_ftr_1_idx` (`Food_1_ID`),
  KEY `fk_ftr_2_idx` (`Food_2_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `food_ingredients_r`
--

CREATE TABLE IF NOT EXISTS `food_ingredients_r` (
  `FTR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Food_1_ID` int(11) DEFAULT NULL,
  `Food_2_ID` int(11) DEFAULT NULL,
  `R` float DEFAULT NULL,
  PRIMARY KEY (`FTR_ID`),
  KEY `fk_ftr_1_idx` (`Food_1_ID`),
  KEY `fk_ftr_2_idx` (`Food_2_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `food_nutrition_master`
--

CREATE TABLE IF NOT EXISTS `food_nutrition_master` (
  `FNM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FNM_Name` varchar(45) NOT NULL,
  `FNM_Description` varchar(200) DEFAULT '0',
  `PFC_ID` int(11) DEFAULT NULL,
  `FNM_Measure_Unit` int(11) NOT NULL,
  `Total_Fat` decimal(6,3) DEFAULT '0.000',
  `Total_Fat_Unit` varchar(5) DEFAULT '0',
  `Sat_Fat` decimal(6,3) DEFAULT '0.000',
  `Sat_Fat_Unit` varchar(5) DEFAULT '0',
  `Trans_Fat` decimal(6,3) DEFAULT '0.000',
  `Trans_Fat_Unit` varchar(5) DEFAULT '0',
  `Chol` decimal(6,3) DEFAULT '0.000',
  `Chol_Unit` varchar(5) DEFAULT '0',
  `Sodium` decimal(6,3) DEFAULT '0.000',
  `Sodium_Unit` varchar(5) DEFAULT '0',
  `Total_Carb` decimal(6,3) DEFAULT '0.000',
  `Total_Carb_Unit` varchar(5) DEFAULT '0',
  `Diet_Fibre` decimal(6,3) DEFAULT '0.000',
  `Diet_Fibre_Unit` varchar(5) DEFAULT '0',
  `Sugar` decimal(6,3) DEFAULT '0.000',
  `Sugar_Unit` varchar(5) DEFAULT '0',
  `Protein` decimal(6,3) DEFAULT '0.000',
  `Protein_Unit` varchar(5) DEFAULT '0',
  `Calcium` decimal(6,3) DEFAULT '0.000',
  `Calcium_Unit` varchar(5) DEFAULT '0',
  `Potassium` decimal(6,3) DEFAULT '0.000',
  `Potassium_Unit` varchar(5) DEFAULT '0',
  `Alcohol` decimal(6,3) DEFAULT '0.000',
  `Alcohol_Unit` varchar(5) DEFAULT '0',
  `Calories` decimal(6,3) DEFAULT '0.000',
  `Calories_Unit` varchar(5) DEFAULT '0',
  PRIMARY KEY (`FNM_ID`),
  KEY `PFC_ID_idx` (`PFC_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Master table for Food and its Nutritional content' AUTO_INCREMENT=30 ;

--
-- Dumping data for table `food_nutrition_master`
--

INSERT INTO `food_nutrition_master` (`FNM_ID`, `FNM_Name`, `FNM_Description`, `PFC_ID`, `FNM_Measure_Unit`, `Total_Fat`, `Total_Fat_Unit`, `Sat_Fat`, `Sat_Fat_Unit`, `Trans_Fat`, `Trans_Fat_Unit`, `Chol`, `Chol_Unit`, `Sodium`, `Sodium_Unit`, `Total_Carb`, `Total_Carb_Unit`, `Diet_Fibre`, `Diet_Fibre_Unit`, `Sugar`, `Sugar_Unit`, `Protein`, `Protein_Unit`, `Calcium`, `Calcium_Unit`, `Potassium`, `Potassium_Unit`, `Alcohol`, `Alcohol_Unit`, `Calories`, `Calories_Unit`) VALUES
(1, 'Corona Extra Pale Lager (4.6% alc.)', '0', 1, 1, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 14.000, 'g', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 13.100, 'g', 148.000, '0'),
(2, 'Corona Light Pale Lager (3.2% alc.)', '0', 1, 1, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 5.000, 'g', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 11.300, 'g', 99.000, '0'),
(3, 'Heineken Heineken (5% alc.)', '0', 1, 1, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 7.000, 'mg', 11.300, 'g', 0.000, '0', 0.000, '0', 1.500, 'g', 0.000, '0', 0.000, '0', 14.000, 'g', 148.000, '0'),
(4, 'Pabst Blue Ribbon (3.9% alc.)', '0', 1, 1, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 8.300, 'g', 0.000, '0', 0.000, '0', 0.700, 'g', 0.000, '0', 0.000, '0', 11.000, 'g', 113.000, '0'),
(5, 'Pabst Regular', '0', 2, 1, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 12.100, 'g', 0.000, '0', 0.000, '0', 0.400, 'g', 0.000, '0', 0.000, '0', 1.000, 'g', 57.000, '0'),
(6, 'St. Pauli Girl Non-Alcoholic Beer (0.5% alc.)', '0', 2, 1, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 6.000, 'mg', 21.000, 'g', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 1.400, 'g', 96.000, '0'),
(7, 'Texas Select NA (Non-Alcoholic) Malt Beverage', '0', 2, 1, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 12.100, 'g', 0.000, '0', 0.000, '0', 0.400, 'g', 0.000, '0', 0.000, '0', 1.100, 'g', 58.000, '0'),
(8, 'Woodchuck Draft, Amber (5% alc.)', '0', 3, 4, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 12.300, 'g', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 12.300, 'g', 135.000, '0'),
(9, 'HardCore Crisp Hard Cider (6% alc.)', '0', 3, 1, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 15.000, 'mg', 21.000, 'g', 0.000, '0', 16.000, 'g', 0.000, '0', 0.000, '0', 240.000, 'mg', 15.100, 'g', 190.000, '0'),
(10, 'Sutter Home Chenin Blanc', '0', 4, 6, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 8.500, 'g', 0.000, '0', 0.000, '0', 0.500, 'g', 0.000, '0', 0.000, '0', 12.700, 'g', 125.000, '0'),
(11, 'Champagne', '0', 4, 5, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 1.200, 'g', 0.000, '0', 0.000, '0', 0.200, 'g', 0.000, '0', 0.000, '0', 10.300, 'g', 78.000, '0'),
(12, 'Bacardi Silver Mojito (5% alc.)', '0', 5, 1, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 9.000, 'mg', 35.700, 'g', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 14.200, 'g', 238.000, '0'),
(13, 'Bacardi Breezer (3.2% alc.), Passionfruit; Ca', '0', 5, 1, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 39.000, 'g', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 9.000, 'g', 220.000, '0'),
(14, 'Angostura Mixers, Bloody Mary, non-alcoholic', '0', 6, 7, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 560.000, 'mg', 4.000, 'g', 0.000, '0', 1.000, 'g', 0.000, '0', 20.000, 'mg', 0.000, '0', 0.000, '0', 20.000, '0'),
(15, 'Baja Bob''s Tropical Trouble Hurricane Cocktai', '0', 6, 7, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 45.000, 'mg', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0'),
(16, 'Bacardi Bahama Mama Classic Cocktail (10% alc', '0', 7, 8, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 27.000, 'mg', 6.000, 'g', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 3.600, 'g', 49.000, '0'),
(17, 'Fuzzy Navel', '0', 8, 8, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 7.000, 'g', 0.000, '0', 7.000, 'g', 0.000, '0', 0.000, '0', 0.000, '0', 13.000, 'g', 120.000, '0'),
(18, 'Baileys Irish Cream Liqueur (17% alc.)', '0', 9, 8, 5.900, 'g', 3.600, 'g', 0.000, '0', 18.000, 'mg', 36.000, 'mg', 11.300, 'g', 0.000, '0', 9.000, 'g', 1.400, 'g', 0.000, '0', 0.000, '0', 6.100, 'g', 147.000, '0'),
(19, 'Brandy, 100 proof', '0', 10, 8, 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '0', 0.000, '', 0.000, '0', 0.800, 'mg', 17.700, 'g', 123.000, '0'),
(20, 'Corn Flake Crust Breakfast Bar, with Fruit', '0', 11, 9, 32.000, 'g', 0.600, 'g', 0.000, '0', 0.000, '0', 71.000, 'mg', 31.000, 'mg', 0.900, 'g', 14.900, 'g', 1.900, 'g', 17.400, 'mg', 83.700, 'mg', 0.000, '0', 160.000, '0'),
(21, 'Hostess Fruit and Grain, Banana Nut, Low-Fat', '0', 11, 10, 2.500, 'g', 0.000, '0', 0.500, 'g', 0.000, '0', 115.000, 'mg', 25.000, 'g', 0.500, 'g', 17.000, 'g', 2.000, 'g', 0.000, '0', 0.000, '0', 0.000, '0', 130.000, '0'),
(22, 'Kellogg''s Crunch, Raisin Bran', '0', 11, 11, 2.000, 'g', 0.000, '0', 0.000, '0', 0.000, '0', 85.000, 'mg', 22.000, 'g', 1.000, 'g', 9.000, 'g', 1.000, 'g', 0.000, '0', 0.000, '0', 0.000, '0', 110.000, '0'),
(23, 'Fruit-filled Nonfat Granola Bar', '0', 12, 11, 0.300, 'g', 0.100, 'g', 0.000, '0', 0.000, '0', 5.000, 'mg', 22.000, 'g', 2.100, 'g', 15.700, 'g', 1.700, 'g', 0.900, 'g', 0.000, '62.5', 0.000, '0', 97.000, '0'),
(24, 'Dixie Diners'' Club Nutlettes, Apple Berry', '0', 12, 12, 2.000, 'g', 1.000, 'g', 0.000, '0', 0.000, '0', 3.000, 'mg', 16.000, 'g', 10.000, 'g', 2.000, 'g', 8.000, 'g', 50.000, 'mg', 362.000, 'mg', 0.000, '0', 87.000, ''),
(25, 'Barbara''s Bakery Blueberry Apple Fruit & Yogu', '0', 13, 9, 3.000, 'g', 0.000, '0', 0.000, '0', 0.000, '0', 125.000, 'mg', 29.000, 'g', 1.000, 'g', 15.000, 'g', 3.000, 'g', 250.000, 'mg', 0.000, '0', 0.000, '0', 150.000, '0'),
(26, 'Bariatrix Caramel Delight Protein Bar', '0', 13, 9, 3.500, 'g', 2.500, 'g', 0.000, '0', 5.000, 'g', 220.000, 'mg', 16.000, 'g', 3.000, 'g', 5.000, 'g', 15.000, 'g', 40.000, 'mg', 140.000, 'mg', 0.000, '0', 150.000, '0'),
(27, 'Apex Iced Chocolate Brownie Delight Bar', '0', 14, 13, 8.000, 'g', 3.000, 'g', 0.000, '0', 20.000, 'mg', 160.000, 'mg', 27.000, 'g', 1.000, 'g', 16.000, 'g', 13.000, 'g', 50.000, 'mg', 0.000, '0', 0.000, '0', 230.000, '0'),
(28, 'Balance Bar Blueberry Acai Bare Energy Balanc', '0', 14, 14, 7.000, 'g', 3.000, 'g', 0.000, '0', 0.000, '0', 190.000, 'mg', 22.000, 'g', 4.000, 'g', 11.000, 'g', 15.000, 'g', 200.000, 'mg', 0.000, '0', 0.000, '0', 200.000, '0'),
(29, 'Barbara''s Bakery Corn Flakes, dry', '0', 15, 15, 1.000, 'g', 0.000, '0', 0.000, '0', 0.000, '0', 80.000, 'mg', 25.000, 'g', 0.500, 'g', 3.000, 'g', 2.000, 'g', 20.000, 'mg', 100.000, 'mg', 0.000, '0', 100.000, '0');

-- --------------------------------------------------------

--
-- Table structure for table `food_nutrition_r`
--

CREATE TABLE IF NOT EXISTS `food_nutrition_r` (
  `FTR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Food_1_ID` int(11) DEFAULT NULL,
  `Food_2_ID` int(11) DEFAULT NULL,
  `R` float DEFAULT NULL,
  PRIMARY KEY (`FTR_ID`),
  KEY `fk_ftr_1_idx` (`Food_1_ID`),
  KEY `fk_ftr_2_idx` (`Food_2_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `UID`) VALUES
('rishabh', 'pass', 1),
('shashank', 'word', 2);

-- --------------------------------------------------------

--
-- Table structure for table `major_food_category`
--

CREATE TABLE IF NOT EXISTS `major_food_category` (
  `MFC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MFC_Name` varchar(100) NOT NULL,
  `MFC_Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`MFC_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Major Food Category' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `major_food_category`
--

INSERT INTO `major_food_category` (`MFC_ID`, `MFC_Name`, `MFC_Description`) VALUES
(1, 'Alcoholic Drinks', 'Alcoholic Drinks'),
(2, 'Bars, Breakfast Cereals', 'Bars, Breakfast Cereals'),
(3, 'Sugar, Honey, Syrups, Toppings', 'Sugar, Honey, Syrups, Toppings');

-- --------------------------------------------------------

--
-- Table structure for table `measure_serving`
--

CREATE TABLE IF NOT EXISTS `measure_serving` (
  `MS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MS_Name` varchar(45) DEFAULT NULL,
  `MS_Measure` varchar(45) DEFAULT NULL,
  `MS_Measure_Unit` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`MS_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Type of measurement used' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `measure_serving`
--

INSERT INTO `measure_serving` (`MS_ID`, `MS_Name`, `MS_Measure`, `MS_Measure_Unit`) VALUES
(1, 'Pint', '12', 'oz'),
(2, 'Bowl', NULL, NULL),
(3, 'Serving', NULL, NULL),
(4, 'Glass', '7.1', 'oz'),
(5, 'Champaign Glass', '4.1', 'oz'),
(6, 'Glass', '5.1', 'oz'),
(7, 'Glass', '4.1', 'oz'),
(8, 'Shot Glass', '1.5', 'oz'),
(9, 'Bar', '1.5', 'oz'),
(10, 'Bar', '1.3', 'oz'),
(11, 'Bar', '1', 'oz'),
(12, 'Bar', '1.1', 'oz'),
(13, 'Bar', '1.9', 'oz'),
(14, 'Bar', '1.8', 'oz'),
(15, 'Cup', '1.1', 'oz');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Primary Food Category' AUTO_INCREMENT=25 ;

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
(24, 'Toppings', NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_master`
--

CREATE TABLE IF NOT EXISTS `restaurant_master` (
  `R_ID` int(11) NOT NULL AUTO_INCREMENT,
  `R_Name` varchar(45) NOT NULL,
  `R_Cuisine` varchar(45) NOT NULL,
  `R_Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`R_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_menu`
--

CREATE TABLE IF NOT EXISTS `restaurant_menu` (
  `RM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RM_Item_ID` int(11) NOT NULL,
  `RM_Rest_ID` int(11) NOT NULL,
  PRIMARY KEY (`RM_ID`),
  KEY `RM_FK_idx` (`RM_Rest_ID`),
  KEY `RM_FK_2_idx` (`RM_Item_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_restaurant_r`
--

CREATE TABLE IF NOT EXISTS `restaurant_restaurant_r` (
  `RRR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `R1_ID` int(11) DEFAULT NULL,
  `R2_ID` int(11) DEFAULT NULL,
  `R` float DEFAULT NULL,
  PRIMARY KEY (`RRR_ID`),
  KEY `rr_fk1_idx` (`R1_ID`),
  KEY `rr_fk2_idx` (`R2_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Sub-division of Food Category' AUTO_INCREMENT=10 ;

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
(9, 'Syrups, Desert,Toppings', NULL, 3);

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
  `UFH_Date` date NOT NULL,
  `UFH_Meal_Type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`UFH_ID`),
  KEY `UFH_FNM_ID_idx` (`UFH_FNM_ID`),
  KEY `UFH_User_ID_idx` (`UFH_User_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='food history of any user' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user_food_history`
--

INSERT INTO `user_food_history` (`UFH_ID`, `UFH_User_ID`, `UFH_FNM_ID`, `UFH_Quantity`, `UFH_Date`, `UFH_Meal_Type`) VALUES
(2, 1, 2, 1, '0000-00-00', 'Lunch'),
(3, 1, 5, 1, '0000-00-00', 'Breakfast'),
(4, 1, 5, 1, '0000-00-00', 'Breakfast'),
(5, 1, 5, 1, '0000-00-00', 'Breakfast'),
(6, 1, 2, 1, '0000-00-00', 'Snacks');

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
-- Table structure for table `user_rating`
--

CREATE TABLE IF NOT EXISTS `user_rating` (
  `UR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UR_UserID` int(11) DEFAULT NULL,
  `Ur_Rating` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`UR_ID`),
  KEY `UR_FK_idx` (`UR_UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `R` float NOT NULL,
  PRIMARY KEY (`UURT_ID`),
  KEY `FK_1_idx` (`USER_1_ID`),
  KEY `FK_2_idx` (`USER_2_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food_cusine_r`
--
ALTER TABLE `food_cusine_r`
  ADD CONSTRAINT `fk_ftr_1` FOREIGN KEY (`Food_1_ID`) REFERENCES `food_nutrition_master` (`FNM_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ftr_2` FOREIGN KEY (`Food_2_ID`) REFERENCES `food_nutrition_master` (`FNM_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `food_nutrition_master`
--
ALTER TABLE `food_nutrition_master`
  ADD CONSTRAINT `PFC_ID` FOREIGN KEY (`PFC_ID`) REFERENCES `primary_food_category` (`PFC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_nutrition_r`
--
ALTER TABLE `food_nutrition_r`
  ADD CONSTRAINT `fk_fnr_1` FOREIGN KEY (`Food_1_ID`) REFERENCES `food_nutrition_master` (`FNM_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fnr_2` FOREIGN KEY (`Food_2_ID`) REFERENCES `food_nutrition_master` (`FNM_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `primary_food_category`
--
ALTER TABLE `primary_food_category`
  ADD CONSTRAINT `SFC_ID` FOREIGN KEY (`SFC_ID`) REFERENCES `sub_food_category` (`SFC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurant_menu`
--
ALTER TABLE `restaurant_menu`
  ADD CONSTRAINT `RM_FK_1` FOREIGN KEY (`RM_Rest_ID`) REFERENCES `restaurant_master` (`R_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `RM_FK_2` FOREIGN KEY (`RM_Item_ID`) REFERENCES `food_nutrition_master` (`FNM_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurant_restaurant_r`
--
ALTER TABLE `restaurant_restaurant_r`
  ADD CONSTRAINT `rr_fk1` FOREIGN KEY (`R1_ID`) REFERENCES `restaurant_master` (`R_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rr_fk2` FOREIGN KEY (`R2_ID`) REFERENCES `restaurant_master` (`R_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sub_food_category`
--
ALTER TABLE `sub_food_category`
  ADD CONSTRAINT `MFC_ID` FOREIGN KEY (`MFC_ID`) REFERENCES `major_food_category` (`MFC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_rating`
--
ALTER TABLE `user_rating`
  ADD CONSTRAINT `UR_FK` FOREIGN KEY (`UR_UserID`) REFERENCES `login` (`UID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_user_r_body`
--
ALTER TABLE `user_user_r_body`
  ADD CONSTRAINT `FK_UURB_1` FOREIGN KEY (`USER_1_ID`) REFERENCES `login` (`UID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_UURB_2` FOREIGN KEY (`USER_2_ID`) REFERENCES `login` (`UID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_user_r_taste`
--
ALTER TABLE `user_user_r_taste`
  ADD CONSTRAINT `FK_1` FOREIGN KEY (`USER_1_ID`) REFERENCES `login` (`UID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_2` FOREIGN KEY (`USER_2_ID`) REFERENCES `login` (`UID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
