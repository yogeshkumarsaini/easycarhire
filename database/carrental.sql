-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2023 at 03:28 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '0e7517141fb53f21ee439b355b5a1d0a', '2022-12-13 15:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `FromAddress` varchar(255) DEFAULT NULL,
  `ToAddress` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `FromAddress`, `ToAddress`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(26, 815387979, 'yogeshsaini@gmail.com', 10, '2023-06-02', '2023-06-02', 'Noida', 'Shamli', '', 1, '2023-05-31 12:36:21', '2023-05-31 12:44:13'),
(27, 345181072, 'yogeshsaini@gmail.com', 11, '2023-06-02', '2023-06-02', 'Shamli', 'Muzaffarnagar', '', 2, '2023-05-31 12:36:58', '2023-05-31 12:44:17'),
(28, 863770881, 'sahil@gmail.com', 17, '2023-06-01', '2023-06-01', 'Muzaffarnagar', 'Punjab', '', 1, '2023-05-31 12:48:31', '2023-05-31 12:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(8, 'Maruti Suzuki', '2022-12-13 07:15:08', NULL),
(9, 'Toyota', '2022-12-13 07:16:45', NULL),
(10, 'Tata', '2022-12-13 07:17:53', NULL),
(11, 'Mahindra', '2022-12-13 07:18:31', NULL),
(12, 'Renault', '2022-12-13 07:20:06', NULL),
(13, 'Chevrolet', '2022-12-13 07:21:18', NULL),
(14, 'Nissan', '2022-12-13 07:22:27', NULL),
(15, 'Ford', '2022-12-13 07:23:20', NULL),
(16, 'Honda', '2022-12-13 07:24:23', NULL),
(17, 'Audi', '2022-12-13 12:36:47', NULL),
(19, 'Hyundai', '2022-12-13 12:40:19', NULL),
(21, 'BMW', '2023-05-31 07:22:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, '36D Block, New Delhi', 'easycarhire@gmail.com', ' 9876543210');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(3, 'Lucky', 'lucky@gmail.com', '9494678021', 'Does your easy car hire have a branch in Chandigarh?', '2023-05-31 13:05:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																																								<p class=\"MsoNormal\" style=\"text-align: justify;\">Welcome to Easy Car Hire. The following terms and conditions\r\n(the \"Agreement\") govern your use of our car rental services. Please\r\nread this Agreement carefully before making a reservation or renting a car from\r\nus. By using our services, you agree to be bound by this Agreement.<o:p></o:p></p><ol style=\"margin-top:0cm\" start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align: justify;\">Reservations\r\n     and Rentals: You must be at least 21 years old to make a reservation or\r\n     rent a car from us. You must have a valid driver\'s license, a credit card\r\n     in your name, and proof of insurance. You must also comply with all\r\n     applicable laws and regulations.<o:p></o:p></li>\r\n <li class=\"MsoNormal\" style=\"text-align: justify;\">Rental\r\n     Period: The rental period begins at the time you pick up the rental car\r\n     and ends when you return it to us. You must return the car at the time and\r\n     location specified in your reservation. Late returns may result in\r\n     additional fees.<o:p></o:p></li>\r\n <li class=\"MsoNormal\" style=\"text-align: justify;\">Rental\r\n     Fees and Charges: You will be charged for the rental of the car, plus\r\n     applicable taxes, fees, and optional services. You are responsible for any\r\n     tolls, fines, or other charges incurred during the rental period.\r\n     Additional fees may apply for late returns, additional drivers, or other\r\n     services.<o:p></o:p></li>\r\n <li class=\"MsoNormal\" style=\"text-align: justify;\">Payment:\r\n     You must provide a valid credit card in your name at the time of rental.\r\n     We may authorize the card for the estimated rental charges and a security\r\n     deposit. We will charge your card for the actual rental charges at the end\r\n     of the rental period. We accept major credit cards.<o:p></o:p></li>\r\n <li class=\"MsoNormal\" style=\"text-align: justify;\">Insurance:\r\n     You are responsible for obtaining and maintaining insurance coverage for\r\n     the rental car during the rental period. We offer optional insurance\r\n     products, but you are not required to purchase them.<o:p></o:p></li>\r\n <li class=\"MsoNormal\" style=\"text-align: justify;\">Prohibited\r\n     Use: You may not use the rental car for any illegal or prohibited purpose.\r\n     You may not allow any unauthorized person to drive the car. You may not\r\n     use the car to tow or transport hazardous materials.<o:p></o:p></li>\r\n <li class=\"MsoNormal\" style=\"text-align: justify;\">Condition\r\n     of the Car: You must return the car in the same condition as when you\r\n     received it, except for ordinary wear and tear. You are responsible for\r\n     any damage to the car during the rental period, regardless of fault. We\r\n     will inspect the car upon return and charge you for any damage.<o:p></o:p></li>\r\n <li class=\"MsoNormal\" style=\"text-align: justify;\">Termination:\r\n     We may terminate this Agreement and repossess the rental car at any time,\r\n     without notice, if you breach any term of this Agreement or if we have\r\n     reason to believe that the car is being used improperly or illegally.<o:p></o:p></li>\r\n <li class=\"MsoNormal\" style=\"text-align: justify;\">Limitation\r\n     of Liability: We are not liable for any damages or injuries arising from\r\n     the use of the rental car, except for our own negligence. We are not\r\n     liable for any indirect, incidental, or consequential damages.<o:p></o:p></li>\r\n <li class=\"MsoNormal\" style=\"text-align: justify;\">Governing\r\n     Law and Jurisdiction: the laws of the state in which you rent the car\r\n     govern This Agreement. Any disputes arising from this Agreement will be\r\n     resolved in the courts of that state.<o:p></o:p></li>\r\n <li class=\"MsoNormal\" style=\"text-align: justify;\">Entire\r\n     Agreement: This Agreement constitutes the entire agreement between you and\r\n     Easy Car Hire, and supersedes all prior agreements and understandings,\r\n     whether written or oral.<o:p></o:p></li>\r\n</ol><p class=\"MsoNormal\" style=\"text-align: justify;\">If you have any questions or concerns about this Agreement,\r\nplease contact us at <a href=\"mailto:info@easycarhire.com\" target=\"_new\">info@easycarhire.com</a>.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align: justify;\">\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align: justify;\"><o:p>&nbsp;</o:p></p>\r\n										\r\n										\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '										<p class=\"MsoNormal\" style=\"text-align: justify;\">At Easy Car Hire, we understand the importance of protecting\r\nyour privacy. This Privacy Policy outlines how we collect, use, and disclose\r\nyour personal information in connection with our car rental services.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Collection of Personal Information:<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">We collect personal information when you make a reservation,\r\nrent a car, or otherwise interact with us. This information may include your\r\nname, address, phone number, email address, driver\'s license information, and\r\ncredit card information. We may also collect information about your rental\r\nhistory, location data, and other information related to your use of our\r\nservices.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Use of Personal Information:<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">We use your personal information to provide and improve our\r\ncar rental services, process reservations and payments, communicate with you,\r\nand comply with legal obligations. We may also use your information for\r\nmarketing purposes, such as sending you promotional offers and newsletters. You\r\ncan opt-out of receiving marketing communications from us at any time.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Disclosure of Personal Information:<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">We may disclose your personal information to third-party\r\nservice providers who assist us in providing our car rental services. We may\r\nalso disclose your information to government authorities or law enforcement\r\nagencies as required by law. In the event of a merger, acquisition, or sale of\r\nassets, we may transfer your personal information to the acquiring entity.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Security of Personal Information:<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">We take reasonable measures to protect your personal\r\ninformation from unauthorized access, disclosure, or destruction. We use\r\nindustry-standard security technologies and procedures to safeguard your\r\ninformation.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Retention of Personal Information:<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">We retain your personal information for as long as necessary\r\nto provide our car rental services and fulfill our legal obligations. We may\r\nalso retain your information for marketing purposes, unless you opt-out.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Your Rights:<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">You have the right to access, correct, or delete your\r\npersonal information. You also have the right to object to the processing of\r\nyour information or to restrict its use. To exercise these rights, please\r\ncontact us using the information below.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Updates to this Privacy Policy:<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">We may update this Privacy Policy from time to time to\r\nreflect changes in our practices or legal requirements. We encourage you to\r\nreview this Policy periodically.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Contact Us:<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">If you have any questions or concerns about this Privacy\r\nPolicy or our privacy practices, please contact us at privacy@easycarhire.com.<o:p></o:p></p>\r\n										'),
(3, 'About Us ', 'aboutus', '<p class=\"MsoNormal\">At Easy Car Hire, we understand that renting a car can be a\r\ndaunting task, which is why we aim to simplify the process for our customers.\r\nWe offer a wide range of vehicles to choose from, including compact cars, SUVs,\r\nluxury sedans, and more. Our fleet is regularly maintained to ensure that you\r\nreceive a safe and reliable vehicle every time you rent from us.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Our team of dedicated professionals is committed to\r\nproviding excellent customer service. We understand that each customer has\r\nunique needs and preferences, which is why we strive to provide personalized\r\nservice tailored to your specific requirements. Whether you need a car for a\r\nday, a week, or even longer, we are here to make your rental experience as\r\nseamless and stress-free as possible.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">At Easy Car Hire, we believe in transparency and honesty,\r\nwhich is why we have no hidden fees or charges. Our pricing is straightforward\r\nand easy to understand, with no surprises at checkout. We also offer flexible\r\nrental options, including one-way rentals and long-term rentals, to accommodate\r\nyour travel plans.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><o:p>&nbsp;</o:p><span style=\"font-size: 1em;\">Thank you for choosing Easy Car Hire. We look forward to\r\nserving you and making your rental experience a pleasant one.</span></p><p class=\"MsoNormal\"><o:p></o:p></p>'),
(11, 'FAQs', 'faqs', '																																								<p class=\"MsoNormal\" style=\"text-align: justify;\">Welcome to the Easy Car Hire FAQs page. Here, you will find\r\nanswers to some of the most commonly asked questions about our car rental\r\nservices. If you cannot find the information you are looking for, please do not\r\nhesitate to contact us.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Q: What do I need to rent a car from Easy Car Hire? <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">A: You will need a valid driver\'s license, a credit card in\r\nyour name, and proof of insurance. Some locations may have additional\r\nrequirements, so please check with us when making your reservation.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Q: How old do I need to be to rent a car from Easy Car Hire?\r\n<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">A: The minimum age to rent a car from us is 21 years old.\r\nHowever, there may be additional age restrictions vehicle types or locations.\r\nPlease check with us when making your reservation.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Q: Do you offer one-way rentals? <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">A: Yes, we offer one-way rentals between most locations.\r\nAdditional fees may apply, so please check with us when making your\r\nreservation.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Q: Can I add an additional driver to my rental? <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">A: Yes, you can add additional drivers to your rental for an\r\nadditional fee. All drivers must meet our rental requirements and be present at\r\nthe time of rental.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Q: What happens if I return my rental car late? <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">A: Late returns may result in additional fees. Please\r\ncontact us as soon as possible if you think you will be returning your rental\r\ncar late.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Q: Can I modify or cancel my reservation?<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;A: Yes, you can\r\nmodify or cancel your reservation online or by contacting us. Please note that\r\nfees may apply, depending on the type of modification or cancellation.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Q: What should I do if I have an accident in my rental car? <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">A: Please contact us immediately if you are involved in an\r\naccident. We will provide you with instructions on how to proceed.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><br></p><p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-weight: bold;\"><span style=\"font-size: large;\">We hope these FAQs have been helpful. If you have any\r\nfurther questions, please don\'t hesitate to contact us.</span><span style=\"font-size: small;\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><o:p>&nbsp;</o:p></p>\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(8, 'yogeshsaini@gmail.com', '2023-05-31 12:58:00'),
(9, 'sahil@gmail.com', '2023-05-31 12:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(2, 'yogeshsaini@gmail.com', 'I am delighted to share my exceptional experience with EasyCarHire, the most efficient and reliable car rental system I have ever come across. From start to finish, EasyCarHire impressed me with their seamless and user-friendly platform, outstanding customer service, and unmatched value for money.', '2023-05-31 12:43:16', 0),
(3, 'sahil@gmail.com', 'First and foremost, the EasyCarHire platform provided me with a hassle-free and straightforward booking process. Their website is intuitively designed, making it incredibly easy to navigate and find the perfect car for my needs. With just a few clicks, I was able to compare prices, vehicle models, and select the rental duration that suited me best. The entire process was swift, efficient, and hassle-free, saving me valuable time and effort.', '2023-05-31 12:49:05', 0),
(4, 'sahil@gmail.com', 'First and foremost, the EasyCarHire platform provided me with a hassle-free and straightforward booking process. Their website is intuitively designed, making it incredibly easy to navigate and find the perfect car for my needs. ', '2023-05-31 12:52:03', 1),
(5, 'yogeshsaini@gmail.com', 'I am delighted to share my exceptional experience with EasyCarHire, the most efficient and reliable car rental system I have ever come across.  It impressed me with their user-friendly platform, outstanding customer service.', '2023-05-31 12:54:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(4, 'Yogesh Kumar Saini', 'yogeshsaini@gmail.com', '25d55ad283aa400af464c76d713c07ad', '8430151085', '01/01/2000', 'Kaka Nagar, Shamli', 'Shamli', 'India', '2023-05-31 12:35:26', '2023-05-31 12:40:22'),
(5, 'Sahil Sharma', 'sahil@gmail.com', '25d55ad283aa400af464c76d713c07ad', '6006254094', '05/07/2001', 'Shiv Colony, Muzaffarnagar', 'Muazaffarnagar', 'India', '2023-05-31 12:45:59', '2023-05-31 12:47:50'),
(6, 'Mansi', 'mansi@gmail.com', '25d55ad283aa400af464c76d713c07ad', '8989787897', NULL, NULL, NULL, NULL, '2023-06-01 05:15:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerKm` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerKm`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(2, 'BMW 5 Series', 2, 'BMW 5 Series price starts at ? 55.4 Lakh and goes upto ? 68.39 Lakh. The price of Petrol version for 5 Series ranges between ? 55.4 Lakh - ? 60.89 Lakh and the price of Diesel version for 5 Series ranges between ? 60.89 Lakh - ? 68.39 Lakh.', 1000, 'Petrol', 2018, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2022-12-13 15:36:02', '2022-12-13 15:36:02'),
(10, 'Maruti A-Star', 8, 'A Maruti A Star has 1 Petrol Engine on offer. The Petrol engine is 998 cc. It is available with Manual & Automatic transmission. Depending upon the variant and fuel type the A Star has a mileage of 16.98 to 19.0 kmpl & Ground clearance of A Star is 170mm. The A Star is a 5 seater 3 cylinder car and has length of 3500mm, width of 1600mm and a wheelbase of 2360mm.', 10, 'Petrol', 2013, 5, 'Maruti A-Star 11.jpg', 'Maruti A-Star 21.jpg', 'Maruti A-Star 31.jpg', 'Maruti A-Star 41.jpg', '', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-13 13:12:53', '2023-05-31 11:38:50'),
(11, 'Toyota Etios Liva', 9, 'The Toyota Etios Liva has 1 Diesel Engine and 1 Petrol Engine on offer. The Diesel engine is 1364 cc while the Petrol engine is 1197 cc . It is available with Manual transmission. Depending upon the variant and fuel type the Etios Liva has a mileage of 17.71 to 23.59 kmpl & Ground clearance of Etios Liva is 170mm. The Etios Liva is a 5 seater 4 cylinder car (https://www.cardekho.com/new-4-cylinder+cars) and has length of 3775mm, width of 1695mm and a wheelbase of 2460mm.', 12, 'Diesel', 2013, 5, 'Toyota Etios Liva 11.jpg', 'Toyota Etios Liva 21.jpg', 'Toyota Etios Liva 31.jpg', 'Toyota Etios Liva 41.jpg', '', 1, NULL, 1, NULL, 1, 1, 1, NULL, NULL, 1, 1, 1, '2022-12-13 13:30:06', '2023-05-31 11:43:40'),
(12, 'Tata Nano LX', 10, 'Tata Nano LX has left the 624cc, two-cylinder, rear-mounted petrol engine unaltered. As per company claims, the unit has been tweaked for a minor bump in real-world fuel efficiency, rest it’s all same and puts out the identical 37 Bhp @ 5,500 rpm and 51 Nm of torque @ 4,000 rpm. So, the only addition that you’ll notice in this regard is the availability of a 5-speed AMT gearbox, alongside the regular 4-speed manual. This AMT gearbox, like most manufacturers, has been sourced from Magneti Marelli.', 8, 'Petrol', 2013, 4, 'Tata Nano LX 12.jpg', 'Tata Nano LX 2.jpg', 'Tata Nano LX 3.jpg', 'Tata Nano LX 4.jpg', '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-13 13:55:06', '2023-05-31 11:44:03'),
(13, 'Mahindra Verito 1.5 D2', 11, 'Mahindra Verito facelift has a powerful and high performance engine, which is fuel efficient and very reliable. The 1.5 litre common rail direct injection diesel engine has 4 cylinders and eight valves that can displace close to 1461cc . Mahindra Verito can cross the 100 kmph barrier from a standstill in just about 18.4 seconds, while this 1.5 L engine can take this premium sedan to a top speed of 144 kmph, which is remarkable . The mileage is said to be between 17 to 21 kmpl .', 14, 'Diesel', 2013, 5, 'Mahindra Verito 11.jpg', 'Mahindra Verito 21.jpg', 'Mahindra Verito 31.jpg', 'Mahindra Verito 41.jpg', 'Mahindra Verito 51.jpg', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-13 14:13:37', '2023-05-31 12:23:38'),
(14, 'Renault Duster 4WD', 12, 'Duster was offered with 2 engines and in 2 trim levels. The 1.6-litre 16-valve base engine (75 kW/145 Nm) is a proven unit, but relatively thirsty, with a claimed combined-cycle consumption figure of 7.5L/100 km, which translates to around 9.0 L/100 km in the real world. It was offered exclusively in 4×2 guise and in Expression and Dynamique trim. The 1.5-litre dCi engine (80 kW/240 Nm) proved popular from the start, particularly as it boasted an impressive economy figure of 5.5 L/100 km, which meant consumption of below 7.0 L/100 km was achievable.', 15, 'Diesel', 2013, 5, 'Renault Duste 11.jpg', 'Renault Duste 2.jpg', 'Renault Duste  3.jpg', 'Renault Duste 4.jpg', 'Renault Duste 5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, '2022-12-13 14:36:21', '2023-05-31 12:23:55'),
(15, 'Maruti Swift', 8, 'The Maruti Swift  has 1 Diesel Engine and 1 Petrol Engine on offer. The Diesel engine is 1248 cc while the Petrol engine is 1197 cc . It is available with Manual transmission. Depending upon the variant and fuel type the Swift 2011-2014 has a mileage of 18.6 to 22.9 kmpl & Ground clearance of Swift 2011-2014 is 170mm. The Swift 2011-2014 is a 5 seater 4 cylinder car and has length of 3850mm, width of 1695mm and a wheelbase of 2430mm.', 14, 'Petrol', 2014, 5, 'Maruti Swift 11.jpg', 'Maruti Swift 2.jpg', 'Maruti Swift 3.jpg', 'Maruti Swift 4.jpg', '', 1, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, 1, '2022-12-13 14:46:32', '2023-05-31 12:24:14'),
(16, 'Maruti Wagon R', 8, 'Maruti Suzuki has launched the BS6 Wagon R S-CNG in India. Maruti claims a fuel economy of 32.52km per kg. The CNG Wagon R’s continuation in the BS6 era is part of the carmaker’s ‘Mission Green Million’ initiative announced at Auto Expo 2020.\r\n\r\nPreviously, the carmaker had updated the 1.0-litre powertrain to meet BS6 emission norms. It develops 68PS of power and 90Nm of torque, same as the BS4 unit. However, the updated motor now returns 21.79 kmpl, which is a little less than the BS4 unit’s 22.5kmpl claimed figure. Barring the CNG variants, the prices of the Wagon R 1.0-litre have been hiked by Rs 8,000.', 15, 'Petrol', 2019, 5, 'Maruti Wagon R.jpg', 'Maruti Wagon R2.jpg', 'Maruti Wagon R3.jpg', 'Maruti Wagon R4.jpg', 'Maruti Wagon R5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-12-13 14:57:41', '2023-05-31 12:24:39'),
(17, 'Audi Q8', 17, 'As per ARAI, the mileage of Q8 is 0 kmpl. Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.', 30, 'Petrol', 2017, 5, 'Audi Q811.jpg', 'Audi Q821.jpg', 'AudiQ831.jpg', 'Audi Q841.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-12-13 15:00:59', '2023-05-31 12:27:36'),
(18, 'Nissan Kicks', 14, 'Latest Update: Nissan has launched the Kicks 2020 with a new turbocharged petrol engine. You can read more about it here.\r\n\r\nNissan Kicks Price and Variants: The Kicks is available in four variants: XL, XV, XV Premium, and XV Premium(O).', 22, 'Petrol', 2020, 5, 'Nissan Kicks 1.jpg', 'Nissan Kicks2.jpg', 'Nissan Kicks3.jpg', 'Nissan Kicks4.jpg', '', 1, NULL, NULL, 1, NULL, 1, 1, 1, NULL, NULL, NULL, 1, '2022-12-13 15:04:47', '2023-05-31 12:28:35'),
(19, 'Nissan GT-R', 14, ' The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', 25, 'Petrol', 2019, 7, 'Nissan GT-R1.jpg', 'Nissan GT-R2.jpg', 'Nissan GT-R3.jpg', 'Nissan GT-R4.jpeg', 'Nissan GT-R5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-12-13 15:07:29', '2023-05-31 12:29:19'),
(20, 'Nissan Sunny', 14, 'Value for money product and it was so good It is more spacious than other sedans It looks like a luxurious car.', 22, 'CNG', 2018, 5, 'Nissan-Sunny1.jpg', 'Nissan-Sunny2.jpg', 'Nissan Sunny3.jpg', 'Nissan Sunny4.jpg', 'Nissan Sunny5.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-12-13 15:28:36', '2023-05-31 12:29:49'),
(21, 'Toyota Fortuner', 9, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control. Toyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 28, 'Petrol', 2020, 7, 'Toyota Fortuner1.jpg', 'Toyota Fortuner2.jpg', 'Toyota Fortuner4.jpg', 'Toyota Fortuner5.jpg', '', 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 1, 1, '2022-12-13 15:31:38', '2023-05-31 12:30:09'),
(22, 'Maruti Vitara Brezza', 8, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti’s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 25, 'Petrol', 2018, 7, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', '', 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, '2022-12-13 15:35:09', '2023-05-31 12:30:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
