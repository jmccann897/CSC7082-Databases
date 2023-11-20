-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 08:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodation`
--

CREATE TABLE `accommodation` (
  `accommodation_id` int(11) NOT NULL,
  `accommodation_name` varchar(255) NOT NULL,
  `accommodation_description` text NOT NULL,
  `address_id` int(11) NOT NULL,
  `accommodation_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation`
--

INSERT INTO `accommodation` (`accommodation_id`, `accommodation_name`, `accommodation_description`, `address_id`, `accommodation_type_id`) VALUES
(2, 'St George Ski & Holiday', 'St.George Ski & Holiday - Half Board is a luxurious and modern 4-star hotel in the ski area of Bansko. The large indoor pool overlooks the garden, through floor-to-ceiling windows. A large free parking, free high-speed WiFi and free shuttles to Gondola ski lift are provided.', 10, 4),
(3, 'Saint George Palace Aparthotel', 'Apart Hotel Saint George Palace Bansko is an elegant 4-star apartments complex at the foothills of the Pirin Mountains, on the border with Pirin National Park, one of the UNESCO sites in Bulgaria. It offers a large Relax area with massage services and panoramic views of Bansko, Pirin and Rila mountains.', 11, 5),
(4, 'London living 2 BR Flat 2 mins to Clapahm Junction', 'London living 2 BR Flat 2 mins to Clapahm Junction is situated in the Wandsworth district of London, 400 metres from Clapham Junction, 4.2 km from South Kensington Underground Station and 4.3 km from Stamford Bridge - Chelsea FC. This apartment is 4.9 km from Royal Albert Hall and 5 km from Natural History Museum.', 12, 5),
(5, 'Absolute Clapham', 'Located in London, Absolute Clapham provides free WiFi, 1.1 km from Clapham Junction and 4.5 km from O2 Academy Brixton.', 13, 5),
(6, 'Lugaris Beach', 'The Lugaris Beach apartments feature contemporary design, floor-to-ceiling windows and free high-speed internet access. The private kitchen is equipped with an oven, Nespresso machine, and fridge. Each apartment also has a living room, flat-screen TV with international channels and washer-dryer. A welcome pack with basics such as coffee, tea, milk, sugar, salt and oil is included.', 14, 5),
(7, 'Riu Plaza The Gresham Dublin', 'Situated in the heart of Dublin city centre in a historic building, The Gresham Hotel benefits from its own restaurant \'Toddy\'s\', and a bar. The hotel offers free WiFi and spacious rooms overlooking O’Connell Street. Dublin 3Arena is 1 mile away.', 15, 4),
(8, 'Maldron Hotel Belfast City', 'Boasting a bar and on-site dining, Maldron Hotel Belfast City is located in Belfast, 200 metres from the Grand Opera House. The property is a 10-minute walk from The Waterfront Hall and an 18-minute walk from Odyssey Arena. The property offers a 24-hour front desk.', 16, 4);

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_accommodation_facilities`
--

CREATE TABLE `accommodation_accommodation_facilities` (
  `accommodation_accommodation_facilities_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `accommodation_facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation_accommodation_facilities`
--

INSERT INTO `accommodation_accommodation_facilities` (`accommodation_accommodation_facilities_id`, `accommodation_id`, `accommodation_facilities_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 1),
(6, 3, 2),
(7, 3, 3),
(8, 3, 4),
(9, 4, 2),
(10, 5, 2),
(11, 6, 1),
(12, 6, 2),
(13, 7, 2),
(14, 7, 4),
(15, 8, 2),
(16, 8, 3),
(17, 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_facilities`
--

CREATE TABLE `accommodation_facilities` (
  `accommodation_facilities_id` int(11) NOT NULL,
  `accommodation_facilities_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation_facilities`
--

INSERT INTO `accommodation_facilities` (`accommodation_facilities_id`, `accommodation_facilities_name`) VALUES
(1, 'swimming pool'),
(2, 'wifi'),
(3, 'breakfast'),
(4, 'restaurant');

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_facilities_icon`
--

CREATE TABLE `accommodation_facilities_icon` (
  `accommodation_facilities_icon_id` int(11) NOT NULL,
  `accommodation_facilities_id` int(11) NOT NULL,
  `icon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_image`
--

CREATE TABLE `accommodation_image` (
  `accommodation_image_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation_image`
--

INSERT INTO `accommodation_image` (`accommodation_image_id`, `image_id`, `accommodation_id`) VALUES
(1, 4, 2),
(2, 5, 3),
(3, 6, 4),
(4, 7, 5),
(5, 4, 6),
(6, 5, 7),
(7, 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_type`
--

CREATE TABLE `accommodation_type` (
  `accommodation_type_id` int(11) NOT NULL,
  `accommodation_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation_type`
--

INSERT INTO `accommodation_type` (`accommodation_type_id`, `accommodation_type_name`) VALUES
(4, 'hotel'),
(5, 'apartment'),
(6, 'bnb');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `street_name_and_number` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `street_name_and_number`, `postcode`, `city_id`, `region_id`) VALUES
(10, '12 Asanitsa Street', 'RFHC+J9', 7, 3),
(11, '5 Kosherinta Street', 'RF9G+48', 7, 3),
(12, '266 Lavender Hill', 'SW11 1LJ', 5, 2),
(13, '121 Bennerley Road', 'SW11 6DX', 5, 2),
(14, 'Passeig Calvell 45', '08005', 8, 4),
(15, '23 Upper O\'Connell Street', 'D01 C3W7', 4, 1),
(16, '20 Brunswick Street', 'BT2 7GE', 3, 2),
(17, '17 Gortfin Street', 'BT12 7BN', 3, 2),
(18, '407 Coultry Rd', 'D09 Y6K1', 4, 1),
(19, 'C. de Sta. Mónica, 2', '08001', 8, 4),
(20, '64 Northcote Road', 'SW11 6QL', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `booking_reference` varchar(255) NOT NULL,
  `booking_made_date` date NOT NULL,
  `booking_start_date` date NOT NULL,
  `booking_duration_nights` int(11) NOT NULL,
  `number_adults` int(11) NOT NULL,
  `number_children` int(11) NOT NULL,
  `guest_name` varchar(255) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_reference`, `booking_made_date`, `booking_start_date`, `booking_duration_nights`, `number_adults`, `number_children`, `guest_name`, `total_price`, `currency_id`, `customer_id`) VALUES
(1, '1234567891', '2023-10-23', '2024-03-18', 5, 2, 0, 'Catherine McGrade', '0.00', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `booking_line_item`
--

CREATE TABLE `booking_line_item` (
  `booking_line_item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_description` text NOT NULL,
  `line_cost` double(10,2) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `card_id` int(11) NOT NULL,
  `cardholder_name` varchar(255) NOT NULL,
  `card_long_number` varbinary(255) NOT NULL,
  `card_start_date` date NOT NULL,
  `card_end_date` date NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`card_id`, `cardholder_name`, `card_long_number`, `card_start_date`, `card_end_date`, `card_type`, `customer_id`) VALUES
(7, 'Josh McCann', 0xf01317f6ba1bdf79cde771a17537c9cdda4fff4aa540df2fc456a5e2b4209c74, '2021-09-01', '2029-09-01', 'visa', 2);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(3, 'Belfast'),
(4, 'Dublin'),
(5, 'London'),
(6, 'Sofia'),
(7, 'Bansko'),
(8, 'Barcelona');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_shorthand` varchar(255) NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_shorthand`, `currency_name`, `currency_symbol`) VALUES
(1, 'GBP', 'Pound Sterling', '£'),
(2, 'USD', 'United States Dollar', '$'),
(3, 'EUR', 'Euro', '€');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `customer_email` varchar(355) NOT NULL,
  `telephone_number` varchar(255) NOT NULL,
  `salt_for_password` varchar(255) NOT NULL,
  `hashed_password` varchar(255) NOT NULL,
  `region_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `customer_email`, `telephone_number`, `salt_for_password`, `hashed_password`, `region_id`, `address_id`) VALUES
(2, 'Josh', 'McCann', 'jmccann897@qub.ac.uk', '07934400548', '6cf123', '6cf12342908718613a5c1ad96252055a969c8baace335b', 1, 17),
(3, 'Catherine', 'McGrade', 'c.mcgrade032@qub.ac.uk', '12345678910', 'a00381', 'a0038114111101d9ea617c25833a11a89bdb582f74fda2', 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `icon`
--

CREATE TABLE `icon` (
  `icon_id` int(11) NOT NULL,
  `icon_url` text NOT NULL,
  `icon_short_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `icon`
--

INSERT INTO `icon` (`icon_id`, `icon_url`, `icon_short_description`) VALUES
(5, 'ireland_flag.png', 'icon for ireland flag'),
(6, 'UK_flag.png', 'icon for UK flag'),
(7, 'Bulgaria_flag.png', 'icon for Bulgaria flag'),
(8, 'Spain_flag.png', 'icon for Spain flag');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int(11) NOT NULL,
  `image_url` text NOT NULL,
  `image_short_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `image_url`, `image_short_description`) VALUES
(4, 'hotel_image_1.png', 'main image for hotel_1'),
(5, 'hotel_image_2.png', 'main image for hotel_2'),
(6, 'hotel_image_3.png', 'main image for hotel_3'),
(7, 'hotel_image_4.png', 'main image for hotel_4');

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `payment_type_id` int(11) NOT NULL,
  `payment_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`payment_type_id`, `payment_type_name`) VALUES
(1, 'Visa'),
(2, 'Mastercard'),
(3, 'Paypal'),
(4, 'Credit Card');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(255) NOT NULL,
  `icon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`, `icon_id`) VALUES
(1, 'Ireland', 5),
(2, 'United Kingdom', 6),
(3, 'Bulgaria', 7),
(4, 'Spain', 8);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `date_forsale_from` date NOT NULL,
  `date_forsale_to` date NOT NULL,
  `quantity_rooms` int(11) NOT NULL,
  `price_night` decimal(10,2) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_name`, `date_forsale_from`, `date_forsale_to`, `quantity_rooms`, `price_night`, `currency_id`, `room_type_id`, `accommodation_id`) VALUES
(12, 'Low Season Double', '2023-10-01', '2024-04-30', 5, '90.24', 3, 25, 2),
(13, 'High Season Double', '2024-05-01', '2024-09-30', 5, '100.00', 3, 25, 2),
(14, 'Low Season 2B Apartment', '2023-10-01', '2024-04-30', 1, '151.06', 3, 6, 3),
(15, 'High Season 2B Apartment', '2024-05-01', '2024-09-30', 1, '160.00', 3, 6, 3),
(16, 'Low Season 1B Apartment', '2023-10-01', '2024-04-30', 1, '140.00', 1, 9, 5),
(17, 'High Season 1B Apartment', '2024-05-01', '2024-09-30', 1, '150.00', 1, 9, 5),
(18, 'Low Season Standard Double', '2023-10-01', '2024-04-30', 5, '194.40', 3, 18, 7),
(19, 'High Season Standard Double', '2024-05-01', '2024-09-30', 5, '200.00', 3, 18, 7),
(20, 'Low Season Standard Twin', '2023-10-01', '2024-04-30', 5, '194.40', 3, 19, 7),
(21, 'High Season Standard Twin', '2024-05-01', '2024-09-30', 5, '200.00', 3, 19, 7),
(22, 'Low Season Deluxe Double', '2023-10-01', '2024-04-30', 5, '106.20', 1, 23, 8),
(23, 'High Season Deluxe Double', '2024-05-01', '2024-09-30', 3, '115.00', 1, 23, 8);

-- --------------------------------------------------------

--
-- Table structure for table `room_booking`
--

CREATE TABLE `room_booking` (
  `room_booking_id` int(11) NOT NULL,
  `running_total` decimal(10,2) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `room_facilities_id` int(11) NOT NULL,
  `room_facilities_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities_icon`
--

CREATE TABLE `room_facilities_icon` (
  `room_facilities_icon_id` int(11) NOT NULL,
  `room_facilities_id` int(11) NOT NULL,
  `icon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room_room_facilities`
--

CREATE TABLE `room_room_facilities` (
  `room_room_facilities_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(11) NOT NULL,
  `room_type_name` varchar(255) NOT NULL,
  `room_type_description` text NOT NULL,
  `number_of_guests` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type_name`, `room_type_description`, `number_of_guests`) VALUES
(1, 'one bedroom apartment', 'one double bed and 1 sofa bed', 2),
(2, 'one bedroom apartment', 'one double bed and 1 sofa bed', 3),
(3, 'one bedroom apartment', 'one double bed and 1 sofa bed', 4),
(4, 'studio', 'one double bed', 2),
(5, 'one bedroom apartment', 'two single beds', 2),
(6, 'two bedroom apartment', 'two double beds', 4),
(7, 'three bedroom apartment', 'three double beds', 6),
(8, 'two bedroom apartment', 'two double beds and sofa bed', 5),
(9, 'one bedroom apartment', 'one double bed', 2),
(10, 'apartment with terrace', 'one double bed', 2),
(11, 'businesss apartment', 'one double bed and sofa bed', 2),
(12, 'businesss apartment', 'one double bed and sofa bed', 3),
(13, 'businesss apartment with sea view', 'one double bed and sofa bed', 2),
(14, 'businesss apartment with sea view', 'one double bed and sofa bed', 3),
(15, 'businesss apartment with sea view', 'one double bed and sofa bed', 4),
(16, 'two bed apartment', 'one double bed, two single beds and sofa bed', 4),
(17, 'two bed apartment', 'one double bed, two single beds and sofa bed', 5),
(18, 'standard queen room', 'one double bed', 2),
(19, 'standard twin room', 'two single beds', 2),
(20, 'deluxe family queen room', 'one double bed and sofa bed', 3),
(21, 'superior family room', 'two single beds and one sofa bed', 3),
(22, 'deluxe twin room', 'two single beds', 2),
(23, 'deluxe double room', 'one double bed', 2),
(24, 'deluxe family room', 'two double beds', 3),
(25, 'studio (2 adults)', 'one double bed and 1 futon bed', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD PRIMARY KEY (`accommodation_id`),
  ADD KEY `FK_address_address_id` (`address_id`),
  ADD KEY `FK_accommodation_type_accommodation_type_id` (`accommodation_type_id`);

--
-- Indexes for table `accommodation_accommodation_facilities`
--
ALTER TABLE `accommodation_accommodation_facilities`
  ADD PRIMARY KEY (`accommodation_accommodation_facilities_id`),
  ADD KEY `FK_accommodation_accommodation_id_three` (`accommodation_id`),
  ADD KEY `FK_accommodation_facilities_accommodation_facilities_id_two` (`accommodation_facilities_id`);

--
-- Indexes for table `accommodation_facilities`
--
ALTER TABLE `accommodation_facilities`
  ADD PRIMARY KEY (`accommodation_facilities_id`);

--
-- Indexes for table `accommodation_facilities_icon`
--
ALTER TABLE `accommodation_facilities_icon`
  ADD PRIMARY KEY (`accommodation_facilities_icon_id`),
  ADD KEY `FK_accommodation_facilities_accommodation_facilities_id` (`accommodation_facilities_id`),
  ADD KEY `FK_icon_icon_id` (`icon_id`);

--
-- Indexes for table `accommodation_image`
--
ALTER TABLE `accommodation_image`
  ADD PRIMARY KEY (`accommodation_image_id`),
  ADD KEY `FK_accommodation_accommodation_id_two` (`accommodation_id`),
  ADD KEY `FK_image_image_id` (`image_id`);

--
-- Indexes for table `accommodation_type`
--
ALTER TABLE `accommodation_type`
  ADD PRIMARY KEY (`accommodation_type_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `FK_city_city_id` (`city_id`),
  ADD KEY `FK_region_region_id` (`region_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `FK_customer_customer_id` (`customer_id`),
  ADD KEY `FK_currency_currency_id` (`currency_id`);

--
-- Indexes for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  ADD PRIMARY KEY (`booking_line_item_id`),
  ADD KEY `FK_booking_booking_id_two` (`booking_id`),
  ADD KEY `FK_payment_type_payment_type_id` (`payment_type_id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `FK_customer_customer_id_two` (`customer_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `FK_region_region` (`region_id`),
  ADD KEY `FK_address_address_id_two` (`address_id`);

--
-- Indexes for table `icon`
--
ALTER TABLE `icon`
  ADD PRIMARY KEY (`icon_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`payment_type_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`),
  ADD KEY `FK_icon_icon_id_four` (`icon_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `FK_accommodation_accommodation_id` (`accommodation_id`),
  ADD KEY `FK_room_type_room_type_id` (`room_type_id`),
  ADD KEY `FK_currency_currency_id_three` (`currency_id`);

--
-- Indexes for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD PRIMARY KEY (`room_booking_id`),
  ADD KEY `FK_room_room_id` (`room_id`),
  ADD KEY `FK_booking_booking_id` (`booking_id`),
  ADD KEY `FK_currency_currency_id_two` (`currency_id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`room_facilities_id`);

--
-- Indexes for table `room_facilities_icon`
--
ALTER TABLE `room_facilities_icon`
  ADD PRIMARY KEY (`room_facilities_icon_id`),
  ADD KEY `FK_room_facilities_room_facilities_id_two` (`room_facilities_id`),
  ADD KEY `FK_icon_icon_id_two` (`icon_id`);

--
-- Indexes for table `room_room_facilities`
--
ALTER TABLE `room_room_facilities`
  ADD PRIMARY KEY (`room_room_facilities_id`),
  ADD KEY `FK_room_room_id_two` (`room_id`),
  ADD KEY `FK_room_facilities_room_facilities_id` (`room_facilities_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodation`
--
ALTER TABLE `accommodation`
  MODIFY `accommodation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `accommodation_accommodation_facilities`
--
ALTER TABLE `accommodation_accommodation_facilities`
  MODIFY `accommodation_accommodation_facilities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `accommodation_facilities`
--
ALTER TABLE `accommodation_facilities`
  MODIFY `accommodation_facilities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `accommodation_facilities_icon`
--
ALTER TABLE `accommodation_facilities_icon`
  MODIFY `accommodation_facilities_icon_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accommodation_image`
--
ALTER TABLE `accommodation_image`
  MODIFY `accommodation_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `accommodation_type`
--
ALTER TABLE `accommodation_type`
  MODIFY `accommodation_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  MODIFY `booking_line_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `icon`
--
ALTER TABLE `icon`
  MODIFY `icon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `payment_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `room_booking`
--
ALTER TABLE `room_booking`
  MODIFY `room_booking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `room_facilities_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_facilities_icon`
--
ALTER TABLE `room_facilities_icon`
  MODIFY `room_facilities_icon_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_room_facilities`
--
ALTER TABLE `room_room_facilities`
  MODIFY `room_room_facilities_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD CONSTRAINT `FK_accommodation_type_accommodation_type_id` FOREIGN KEY (`accommodation_type_id`) REFERENCES `accommodation_type` (`accommodation_type_id`),
  ADD CONSTRAINT `FK_address_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `accommodation_accommodation_facilities`
--
ALTER TABLE `accommodation_accommodation_facilities`
  ADD CONSTRAINT `FK_accommodation_accommodation_id_three` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation` (`accommodation_id`),
  ADD CONSTRAINT `FK_accommodation_facilities_accommodation_facilities_id_two` FOREIGN KEY (`accommodation_facilities_id`) REFERENCES `accommodation_facilities` (`accommodation_facilities_id`);

--
-- Constraints for table `accommodation_facilities_icon`
--
ALTER TABLE `accommodation_facilities_icon`
  ADD CONSTRAINT `FK_accommodation_facilities_accommodation_facilities_id` FOREIGN KEY (`accommodation_facilities_id`) REFERENCES `accommodation_facilities` (`accommodation_facilities_id`),
  ADD CONSTRAINT `FK_icon_icon_id` FOREIGN KEY (`icon_id`) REFERENCES `icon` (`icon_id`);

--
-- Constraints for table `accommodation_image`
--
ALTER TABLE `accommodation_image`
  ADD CONSTRAINT `FK_accommodation_accommodation_id_two` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation` (`accommodation_id`),
  ADD CONSTRAINT `FK_image_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`);

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_city_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `FK_region_region_id` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_currency_currency_id` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_customer_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  ADD CONSTRAINT `FK_booking_booking_id_two` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_payment_type_payment_type_id` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`payment_type_id`);

--
-- Constraints for table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `FK_customer_customer_id_two` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_address_address_id_two` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `FK_region_region` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`);

--
-- Constraints for table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `FK_icon_icon_id_four` FOREIGN KEY (`icon_id`) REFERENCES `icon` (`icon_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `FK_accommodation_accommodation_id` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation` (`accommodation_id`),
  ADD CONSTRAINT `FK_currency_currency_id_three` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_room_type_room_type_id` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD CONSTRAINT `FK_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_currency_currency_id_two` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_room_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `room_facilities_icon`
--
ALTER TABLE `room_facilities_icon`
  ADD CONSTRAINT `FK_icon_icon_id_two` FOREIGN KEY (`icon_id`) REFERENCES `icon` (`icon_id`),
  ADD CONSTRAINT `FK_room_facilities_room_facilities_id_two` FOREIGN KEY (`room_facilities_id`) REFERENCES `room_facilities` (`room_facilities_id`);

--
-- Constraints for table `room_room_facilities`
--
ALTER TABLE `room_room_facilities`
  ADD CONSTRAINT `FK_room_facilities_room_facilities_id` FOREIGN KEY (`room_facilities_id`) REFERENCES `room_facilities` (`room_facilities_id`),
  ADD CONSTRAINT `FK_room_room_id_two` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
