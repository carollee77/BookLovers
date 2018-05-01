-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2018 at 03:22 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_acct_tbl`
--

CREATE TABLE `admin_acct_tbl` (
  `row_id` int(10) NOT NULL,
  `adm_username` varchar(20) NOT NULL,
  `adm_password` varchar(10) NOT NULL,
  `adm_email` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_acct_tbl`
--

INSERT INTO `admin_acct_tbl` (`row_id`, `adm_username`, `adm_password`, `adm_email`) VALUES
(1, 'admin', 'abcd1234', 'email@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `backup_trn_tbl`
--

CREATE TABLE `backup_trn_tbl` (
  `row_id` int(10) NOT NULL,
  `prd_id` varchar(10) NOT NULL COMMENT 'To store product  id',
  `username` varchar(10) NOT NULL,
  `bck_archive` varchar(15) NOT NULL,
  `bck_pname` varchar(30) NOT NULL,
  `bck_qty` int(10) NOT NULL,
  `bck_price` decimal(10,2) NOT NULL,
  `bck_fname` varchar(30) NOT NULL COMMENT 'To store First name',
  `bck_lname` varchar(30) NOT NULL COMMENT 'To store Last name',
  `bck_odate` varchar(15) NOT NULL COMMENT 'To store Order date',
  `bck_ddate` varchar(15) NOT NULL COMMENT 'To store deliver date',
  `bck_email` varchar(50) NOT NULL,
  `bck_baddress` text NOT NULL COMMENT 'Area to which product is to be delivered',
  `bck_saddress` text NOT NULL,
  `bck_country` varchar(40) NOT NULL,
  `bck_mobile` varchar(13) NOT NULL COMMENT 'To store mobile no',
  `bck_phone` varchar(20) NOT NULL COMMENT 'To store phone no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Table holds details of order placed';

-- --------------------------------------------------------

--
-- Table structure for table `country_tbl`
--

CREATE TABLE `country_tbl` (
  `row_id` int(10) NOT NULL,
  `country_name` varchar(40) NOT NULL COMMENT 'To store Country names'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country_tbl`
--

INSERT INTO `country_tbl` (`row_id`, `country_name`) VALUES
(1, 'United States'),
(2, 'United Kingdom'),
(3, 'Afghanistan'),
(4, 'Albania'),
(5, 'Algeria'),
(6, 'American Samoa'),
(7, 'Andorra'),
(8, 'Angola'),
(9, 'Anguilla'),
(10, 'Antarctica'),
(11, 'Antigua and Barbuda'),
(12, 'Argentina'),
(13, 'Armenia'),
(14, 'Aruba'),
(15, 'Australia'),
(16, 'Austria'),
(17, 'Azerbaijan'),
(18, 'Bahamas'),
(19, 'Bahrain'),
(20, 'Bangladesh'),
(21, 'Barbados'),
(22, 'Belarus'),
(23, 'Belgium'),
(24, 'Belize'),
(25, 'Benin'),
(26, 'Bermuda'),
(27, 'Bhutan'),
(28, 'Bolivia'),
(29, 'Bosnia and Herzegovi'),
(30, 'Botswana'),
(31, 'Bouvet Island'),
(32, 'Brazil'),
(33, 'British Indian Ocean'),
(34, 'Brunei Darussalam'),
(38, 'Burkina Faso'),
(37, 'Bulgaria'),
(39, 'Burundi'),
(40, 'Cambodia'),
(41, 'Cameroon'),
(42, 'Canada'),
(43, 'Cape Verde'),
(44, 'Cayman Islands'),
(45, 'Central African Republic'),
(46, 'Chad'),
(47, 'Chile'),
(48, 'China'),
(49, 'Christmas Island'),
(50, 'Cocos (Keeling) Islands'),
(51, 'Colombia'),
(52, 'Comoros'),
(53, 'Congo'),
(54, 'Congo, The Democratic Republic of The'),
(55, 'Cook Islands'),
(56, 'Costa Rica'),
(57, 'Cote D''ivoire'),
(58, 'Croatia'),
(59, 'Cuba'),
(60, 'Cyprus'),
(61, 'Czech Republic'),
(62, 'Denmark'),
(63, 'Djibouti'),
(64, 'Dominica'),
(65, 'Dominican Republic'),
(66, 'Ecuador'),
(67, 'Egypt'),
(68, 'El Salvador'),
(69, 'Equatorial Guinea'),
(70, 'Eritrea'),
(71, 'Estonia'),
(72, 'Ethiopia'),
(73, 'Falkland Islands (Malvinas)'),
(74, 'Faroe Islands'),
(75, 'Fiji'),
(76, 'Finland'),
(77, 'France'),
(78, 'French Guiana'),
(79, 'French Polynesia'),
(80, 'French Southern Territories'),
(81, 'Gabon'),
(82, 'Gambia'),
(83, 'Georgia'),
(84, 'Germany'),
(85, 'Ghana'),
(86, 'Gibraltar'),
(87, 'Greece'),
(88, 'Greenland'),
(89, 'Grenada'),
(90, 'Guadeloupe'),
(91, 'Guam'),
(92, 'Guatemala'),
(93, 'Guinea'),
(94, 'Guinea-bissau'),
(95, 'Guyana'),
(96, 'Haiti'),
(97, 'Heard Island and Mcdonald Islands'),
(98, 'Holy See (Vatican City State)'),
(99, 'Honduras'),
(100, 'Hong Kong'),
(101, 'Hungary'),
(102, 'Iceland'),
(103, 'India'),
(104, 'Indonesia'),
(105, 'Iran, Islamic Republic'),
(106, 'Iraq'),
(107, 'Ireland'),
(108, 'Israel'),
(109, 'Italy'),
(110, 'Jamaica'),
(111, 'Japan'),
(112, 'Jordan'),
(113, 'Kazakhstan'),
(114, 'Kenya'),
(115, 'Kiribati'),
(116, 'Korea, Democratic People''s Republic of'),
(117, 'Korea, Republic of'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People''s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macao'),
(130, 'Macedonia, The Former Yugoslav Republic '),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States of'),
(144, 'Moldova, Republic of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montserrat'),
(148, 'Morocco'),
(149, 'Mozambique'),
(150, 'Myanmar'),
(151, 'Namibia'),
(152, 'Nauru'),
(153, 'Nepal'),
(154, 'Netherlands'),
(155, 'Netherlands Antilles'),
(156, 'New Caledonia'),
(157, 'New Zealand'),
(158, 'Nicaragua'),
(159, 'Niger'),
(160, 'Nigeria'),
(161, 'Niue'),
(162, 'Norfolk Island'),
(163, 'Northern Mariana Islands'),
(164, 'Norway'),
(165, 'Oman'),
(166, 'Pakistan'),
(167, 'Palau'),
(168, 'Palestinian Territory, Occupied'),
(169, 'Panama'),
(170, 'Papua New Guinea'),
(171, 'Paraguay'),
(172, 'Peru'),
(173, 'Philippines'),
(174, 'Pitcairn'),
(175, 'Poland'),
(176, 'Portugal'),
(177, 'Puerto Rico'),
(178, 'Qatar'),
(179, 'Reunion'),
(180, 'Romania'),
(181, 'Russian Federation'),
(182, 'Rwanda'),
(183, 'Saint Helena'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Pierre and Miquelon'),
(187, 'Saint Vincent and The Grenadines'),
(188, 'Samoa'),
(189, 'San Marino'),
(190, 'Sao Tome and Principe'),
(191, 'Saudi Arabia'),
(192, 'Senegal'),
(193, 'Serbia and Montenegro'),
(194, 'Seychelles'),
(195, 'Sierra Leone'),
(196, 'Singapore'),
(197, 'Slovakia'),
(198, 'Slovenia'),
(199, 'Solomon Islands'),
(200, 'Somalia'),
(201, 'South Africa'),
(202, 'South Georgia and The South Sandwich Isl'),
(203, 'Spain'),
(204, 'Sri Lanka'),
(205, 'Sudan'),
(206, 'Suriname'),
(207, 'Svalbard and Jan Mayen'),
(208, 'Swaziland'),
(209, 'Sweden'),
(210, 'Switzerland'),
(211, 'Syrian Arab Republic'),
(212, 'Taiwan, Province of China'),
(213, 'Tajikistan'),
(214, 'Tanzania, United Republic of'),
(215, 'Thailand'),
(216, 'Timor-leste'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States Minor Outlying Islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Venezuela'),
(236, 'Viet Nam'),
(237, 'Virgin Islands, British'),
(238, 'Virgin Islands, U.S.'),
(239, 'Wallis and Futuna'),
(240, 'Western Sahara'),
(241, 'Yemen'),
(242, 'Zambia'),
(243, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `orders_tbl`
--

CREATE TABLE `orders_tbl` (
  `row_id` int(10) NOT NULL,
  `prd_id` varchar(10) NOT NULL COMMENT 'To store product  id',
  `username` varchar(10) NOT NULL,
  `ord_pname` varchar(30) NOT NULL,
  `ord_qty` int(10) NOT NULL,
  `ord_price` decimal(10,2) NOT NULL,
  `ord_fname` varchar(30) NOT NULL COMMENT 'To store First name',
  `ord_lname` varchar(30) NOT NULL COMMENT 'To store Last name',
  `ord_odate` varchar(15) NOT NULL COMMENT 'To store Order date',
  `ord_ddate` varchar(15) NOT NULL COMMENT 'To store deliver date',
  `ord_email` varchar(50) NOT NULL,
  `ord_baddress` text NOT NULL COMMENT 'Area to which product is to be delivered',
  `ord_saddress` text NOT NULL,
  `ord_country` varchar(40) NOT NULL,
  `ord_mobile` varchar(13) NOT NULL COMMENT 'To store mobile no',
  `ord_phone` varchar(20) NOT NULL COMMENT 'To store phone no',
  `ord_deliverystatus` varchar(10) NOT NULL,
  `ord_sid` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Table holds details of order placed';

--
-- Dumping data for table `orders_tbl`
--

INSERT INTO `orders_tbl` (`row_id`, `prd_id`, `username`, `ord_pname`, `ord_qty`, `ord_price`, `ord_fname`, `ord_lname`, `ord_odate`, `ord_ddate`, `ord_email`, `ord_baddress`, `ord_saddress`, `ord_country`, `ord_mobile`, `ord_phone`, `ord_deliverystatus`, `ord_sid`) VALUES
(24, '1', 'booklovers', 'Longman Active Study Dictionar', 1, '80.00', 'Carol', 'Lee', '29-04-2018', '30-04-2018', 'manlee77@yahoo.com.hk', 'ABC building', 'ABC building', 'Hong Kong', '852-12345678', '852-1234-5678', 'Waiting', 'uRKpRvRX'),
(25, '1', 'booklovers', 'Longman Active Study Dictionar', 1, '80.00', 'carol', 'Lee', '29-04-2018', '30-04-2018', 'ca@ca.com', 'ABC', 'ABC', 'Hong Kong', '852-23456789', '852-2345-6789', 'Waiting', 'dll5tRt2'),
(26, '4', 'booklovers', 'Win Win', 2, '160.00', 'May', 'Wong', '30-04-2018', '01-05-2018', 'may@may.com', 'ABC', 'ABC', 'Hong Kong', '852-22222222', '852-2222-2222', 'Waiting', 'SAWztDl');

-- --------------------------------------------------------

--
-- Table structure for table `product_tbl`
--

CREATE TABLE `product_tbl` (
  `row_id` int(10) NOT NULL COMMENT ' ',
  `username` varchar(20) NOT NULL COMMENT 'unique usee name',
  `prd_id` varchar(10) NOT NULL COMMENT 'to store Product No',
  `prd_sname` varchar(30) NOT NULL COMMENT 'To store product short name',
  `prd_lname` varchar(50) NOT NULL COMMENT 'To store product long name',
  `prd_photo` varchar(30) NOT NULL COMMENT 'To store photo url',
  `prd_size` varchar(20) NOT NULL COMMENT 'To store product size / Dimension',
  `prd_uom` varchar(20) NOT NULL COMMENT 'To store Unit Of Measure',
  `prd_qty` int(10) NOT NULL COMMENT 'To store product  quantity',
  `prd_color` varchar(50) NOT NULL COMMENT 'To store product  Color',
  `prd_brand` varchar(20) NOT NULL COMMENT 'To store product Brand',
  `prd_feature` text NOT NULL COMMENT 'To store product Feature',
  `prd_cat` varchar(30) NOT NULL COMMENT 'To store product category',
  `prd_sub_cat` varchar(30) NOT NULL COMMENT 'To store product  sub category',
  `prd_sdis` text NOT NULL COMMENT 'To store product  Short Discription',
  `prd_ldis` text NOT NULL COMMENT 'To store product Long Discription',
  `prd_qtyavb` int(10) NOT NULL COMMENT ' product Quantity avaiable',
  `prd_status` varchar(11) NOT NULL COMMENT 'To store product  status Active/Inactive',
  `prd_delivery_mode` varchar(30) NOT NULL COMMENT 'To store mode of delivery',
  `prd_delivery_leadtime` int(10) NOT NULL COMMENT 'To store how much time required to delive the product',
  `prd_sep` text NOT NULL COMMENT 'To store product  sepicification'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Table holds details of Product Management';

--
-- Dumping data for table `product_tbl`
--

INSERT INTO `product_tbl` (`row_id`, `username`, `prd_id`, `prd_sname`, `prd_lname`, `prd_photo`, `prd_size`, `prd_uom`, `prd_qty`, `prd_color`, `prd_brand`, `prd_feature`, `prd_cat`, `prd_sub_cat`, `prd_sdis`, `prd_ldis`, `prd_qtyavb`, `prd_status`, `prd_delivery_mode`, `prd_delivery_leadtime`, `prd_sep`) VALUES
(1, 'handmade', 'S00000001', 'Baby Bear', 'Baby Bear', '1.jpg', '', 'Centi meters', 1, '', '', '"Color: Pink/ Light Blue/ Light Brown, Size:\r\nSmall ?8 cm Tall, Medium ?5 cm Tall, Large \r\n30 cm Tall"', 'Hand Made Soft Toy', 'Teddy Bear', '', 'Hand made', 2, 'Available', 'Road Way', 1, ''),
(30, 'handmade', 'S00000002', 'Stand Bear', 'Stand Bear', '229.jpg', '', 'null', 1, '', '', 'Publisher: John Robbins (Wintellect), ISBN: net-1', 'Hand Made Soft Toy', 'Teddy Bear', 'Publisher: John Robbins (Wintellect), ISBN: net-1', 'Publisher: John Robbins (Wintellect), ISBN: net-1', 2, 'Available', 'Courier', 1, ''),
(31, 'handmade', 'A00000026', 'Zebra Earrings', 'Zebra Earrings', '230.jpg', '', 'null', 1, '', '', 'Publisher: Linda Chapman, ISBN: 9781444015522', 'Accessories', 'Earrings', 'Publisher: Linda Chapman, ISBN: 9781444015522', 'Publisher: Linda Chapman, ISBN: 9781444015522', 1, 'Available', 'Road Way', 2, ''),
(32, 'handmade', 'A00000019', 'Flower Charms & Brooch', 'Flower Charms & Brooch', '231.jpg', '', 'null', 1, '', '', 'Publisher: Random House Childrens Books, ISBN: 9781524713348', 'Accessories', 'Brooch', 'Publisher: Random House Childrens Books, ISBN: 9781524713348', 'Publisher: Random House Childrens Books, ISBN: 9781524713348', 3, 'Available', 'Air way', 2, ''),
(33, 'handmade', 'A00000020', 'Tower Pendant', 'Tower Pendant', '232.jpg', '', 'null', 1, '', '', 'Publisher: Arun Sharma, ISBN: 70483493', 'Accessories', 'Pendant', 'Publisher: Arun Sharma, ISBN: 70483493', 'Publisher: Arun Sharma, ISBN: 70483493', 5, 'Available', 'Road Way', 1, ''),
(34, 'handmade', 'S00000003', 'Brown Color Bear', 'Brown Color Bear', '233.jpg', '', 'null', 1, '', '', 'Publisher: Unknown, ISBN: 8', 'Hand Made Soft Toy', 'Teddy Bear', 'Publisher: Unknown, ISBN: 8', 'Publisher: Unknown, ISBN: 8', 3, 'Available', 'Road Way', 1, ''),
(35, 'handmade', 'S00000004', 'Snow Bear', 'Snow Bear', '234.jpg', '', 'null', 1, '', '', 'Publisher: S.C.Garg, ISBN: 74601342', 'Hand Made Soft Toy', 'Teddy Bear', 'Publisher: S.C.Garg, ISBN: 74601342', 'Publisher: S.C.Garg, ISBN: 74601342', 4, 'Available', 'Road Way', 1, ''),
(36, 'handmade', 'A00000002', 'Flowers Pendant', 'Flowers Pendant', '235.jpg', '', 'null', 1, '', '', 'Publisher: Martin Ince, ISBN: 1843535890', 'Accessories', 'Pendant', 'Publisher: Martin Ince, ISBN: 1843535890', 'Publisher: Martin Ince, ISBN: 1843535890', 3, 'Available', 'Road Way', 1, ''),
(37, 'handmade', 'A00000004', 'Ever Green Tree Pendant', 'Ever Green Tree Pendant', '236.jpg', '', 'null', 1, '', '', 'Publisher: M N ARORA, ISBN: 812910945', 'Accessories', 'Pendant', 'Publisher: M N ARORA, ISBN: 812910945', 'Publisher: M N ARORA, ISBN: 812910945', 3, 'Available', 'Road Way', 1, ''),
(38, 'handmade', 'A00000003', 'Melody Charms & Brooch', 'Melody Charms & Brooch', '237.jpg', '', 'null', 1, '', '', 'Publisher: ANDREW S.TANENBAUM, ISBN: 8120321758', 'Accessories', 'Brooch', 'Publisher: ANDREW S.TANENBAUM, ISBN: 8120321758', 'Publisher: ANDREW S.TANENBAUM, ISBN: 8120321758', 4, 'Available', 'Road Way', 1, ''),
(39, 'handmade', 'A00000025', 'Earrings', 'Earrings', '238.jpg', '', 'null', 1, '', '', 'Publisher: Kathy Kristof, ISBN: 8170944821', 'Accessories', 'Earrings', 'Publisher: Kathy Kristof, ISBN: 8170944821', 'Publisher: Kathy Kristof, ISBN: 8170944821', 3, 'Available', 'Road Way', 1, ''),
(40, 'booklovers', '1', 'Longman', 'Longman Active Study Dictionary of English', '239.jpg', '', 'null', 1, '', '', 'Publisher: Raj Anand Moot Court Competition, ISBN: 818028025X', 'Dictionary', 'Dictionary', 'Publisher: Raj Anand Moot Court Competition, ISBN: 818028025X', 'Publisher: Raj Anand Moot Court Competition, ISBN: 818028025X', 10, 'Unavailable', 'Road Way', 1, ''),
(41, 'booklovers', '2', 'Longman', 'Longman Active Study Dictionary of English', '201.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Longman, ISBN: 0-582-06329-9', 'Dictionary', 'Dictionary', 'Publisher: Longman, ISBN: 0-582-06329-9', 'Publisher: Longman, ISBN: 0-582-06329-9', 10, 'Available', 'Road Way', 1, ''),
(42, 'booklovers', '3', 'Longman', 'The Complete Uxbridge English Dictionary', '202.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Windmill Books, ISBN: 9781784756499', 'Dictionary', 'Dictionary', 'Publisher: Windmill Books, ISBN: 9781784756499', 'Publisher: Windmill Books, ISBN: 9781784756499', 10, 'Available', 'Road Way', 1, ''),
(43, 'booklovers', '4', 'Longman', 'Win Win', '203.jpg', '', 'Centi meters', 1, '', '', 'Publisher: John Murray, ISBN: 9781473627024', 'Psychology', 'Psychology', 'Publisher: John Murray, ISBN: 9781473627024', 'Publisher: John Murray, ISBN: 9781473627024', 8, 'Available', 'Road Way', 1, ''),
(44, 'booklovers', '5', 'Longman', 'Collins Gem German School Dictionary', '204.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Collins, ISBN: 9780007569328', 'Dictionary', 'Dictionary', 'Publisher: Collins, ISBN: 9780007569328', 'Publisher: Collins, ISBN: 9780007569328', 10, 'Available', 'Road Way', 1, ''),
(45, 'booklovers', '6', 'Longman', 'Taipei', '205.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Rightman Publish Limited, ISBN: 9789888298433', 'Travel', 'Travel', 'Publisher: Rightman Publish Limited, ISBN: 9789888298433', 'Publisher: Rightman Publish Limited, ISBN: 9789888298433', 10, 'Available', 'Road Way', 1, ''),
(46, 'booklovers', '7', 'Longman', 'Camb Essential Eng Dictionary 2ed', '206.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Cambridge University Press, ISBN: 9780521170925', 'Dictionary', 'Dictionary', 'Publisher: Cambridge University Press, ISBN: 9780521170925', 'Publisher: Cambridge University Press, ISBN: 9780521170925', 10, 'Available', 'Road Way', 1, ''),
(47, 'booklovers', '8', 'Longman', 'Getting There: A Book of Mentors', '207.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Harry N. Abrams, ISBN: 9780521654074', 'Commence', 'Commence', 'Publisher: Harry N. Abrams, ISBN: 9780521654074', 'Publisher: Harry N. Abrams, ISBN: 9780521654074', 10, 'Available', 'Road Way', 1, ''),
(48, 'booklovers', '9', 'Longman', 'Visual Basic 2005', '208.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Pearson, ISBN: VB111', 'Computer', 'Computer', 'Publisher: Pearson, ISBN: VB111', 'Publisher: Pearson, ISBN: VB111', 10, 'Available', 'Road Way', 1, ''),
(49, 'booklovers', '10', 'Longman', 'Java & Xml', '209.jpg', '', 'Centi meters', 1, '', '', 'Publisher: TATA Mcgerw Hill, ISBN: JJ123', 'Computer', 'Computer', 'Publisher: TATA Mcgerw Hill, ISBN: JJ123', 'Publisher: TATA Mcgerw Hill, ISBN: JJ123', 10, 'Available', 'Road Way', 1, ''),
(50, 'booklovers', '11', 'Longman', 'High Street Heroes: The Story of British', '210.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Houghton Mifflin Company, ISBN: 9780618042135', 'Commence', 'Commence', 'Publisher: Houghton Mifflin Company, ISBN: 9780618042135', 'Publisher: Houghton Mifflin Company, ISBN: 9780618042135', 10, 'Available', 'Road Way', 1, ''),
(51, 'booklovers', '12', 'Longman', 'Who''s That Ant? Whose Dead End?', '211.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Strategic Book Publishing, ISBN: 9781681812557', 'Commence', 'Commence', 'Publisher: Strategic Book Publishing, ISBN: 9781681812557', 'Publisher: Strategic Book Publishing, ISBN: 9781681812557', 10, 'Available', 'Road Way', 1, ''),
(52, 'booklovers', '13', 'Longman', 'My Secret Unicorn: The Magic Spell', '212.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Linda Chapman, ISBN: 9780241354223', 'Childern', 'Childern', 'Publisher: Linda Chapman, ISBN: 9780241354223', 'Publisher: Linda Chapman, ISBN: 9780241354223', 10, 'Available', 'Road Way', 1, ''),
(53, 'booklovers', '14', 'Longman', 'Confident Digital Content (Confident Series)', '213.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Kogan Page, ISBN: 9780749480943', 'Business', 'Business', 'Publisher: Kogan Page, ISBN: 9780749480943', 'Publisher: Kogan Page, ISBN: 9780749480943', 10, 'Available', 'Road Way', 1, ''),
(54, 'booklovers', '15', 'Longman', 'Who Am I?', '214.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Berkeley Book, New York, ISBN: 9780425183403', 'Psychology', 'Psychology', 'Publisher: Berkeley Book, New York, ISBN: 9780425183403', 'Publisher: Berkeley Book, New York, ISBN: 9780425183403', 10, 'Available', 'Road Way', 1, ''),
(55, 'booklovers', '16', 'Longman', 'Macua', '215.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Rightman Publish Limited, ISBN: 9789888298204', 'Travel', 'Travel', 'Publisher: Rightman Publish Limited, ISBN: 9789888298204', 'Publisher: Rightman Publish Limited, ISBN: 9789888298204', 10, 'Available', 'Road Way', 1, ''),
(56, 'booklovers', '17', 'Longman', 'Perl and CGI', '216.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Pearson, ISBN: pc2343', 'Others', 'Others', 'Publisher: Pearson, ISBN: pc2343', 'Publisher: Pearson, ISBN: pc2343', 10, 'Available', 'Road Way', 1, ''),
(57, 'booklovers', '18', 'Longman', 'A Biological Survey for the Nation', '217.jpg', '', 'Centi meters', 1, '', '', 'Publisher: National Research Council, ISBN: 0-309-5860', 'Others', 'Others', 'Publisher: National Research Council, ISBN: 0-309-5860', 'Publisher: National Research Council, ISBN: 0-309-5860', 10, 'Available', 'Road Way', 1, ''),
(58, 'booklovers', '19', 'Longman', 'Book of Tea', '218.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Kakuzo Okakura, ISBN: 9781409366299', 'Cooking', 'Cooking', 'Publisher: Kakuzo Okakura, ISBN: 9781409366299', 'Publisher: Kakuzo Okakura, ISBN: 9781409366299', 10, 'Available', 'Road Way', 1, ''),
(59, 'booklovers', '20', 'Longman', 'Coffee : Scrumptious Drinks', '219.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Chronicle Books, ISBN: cofee1', 'Others', 'Others', 'Publisher: Chronicle Books, ISBN: cofee1', 'Publisher: Chronicle Books, ISBN: cofee1', 10, 'Available', 'Road Way', 1, ''),
(60, 'booklovers', '21', 'Longman', 'Stone Soup', '220.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Marcia Brown, ISBN: soup45', 'Others', 'Others', 'Publisher: Marcia Brown, ISBN: soup45', 'Publisher: Marcia Brown, ISBN: soup45', 10, 'Available', 'Road Way', 1, ''),
(61, 'booklovers', '22', 'Longman', 'Pasta Perfection', '221.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Belina Jeffer, ISBN: p12', 'Others', 'Others', 'Publisher: Belina Jeffer, ISBN: p12', 'Publisher: Belina Jeffer, ISBN: p12', 10, 'Available', 'Road Way', 1, ''),
(62, 'booklovers', '23', 'Longman', 'Bhartiya Vynjano ka khajana', '222.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Sanjeev Kapoor, ISBN: vya12', 'Others', 'Others', 'Publisher: Sanjeev Kapoor, ISBN: vya12', 'Publisher: Sanjeev Kapoor, ISBN: vya12', 10, 'Available', 'Road Way', 1, ''),
(63, 'booklovers', '24', 'Longman', 'Descriptious du Cafeier', '223.jpg', '', 'Centi meters', 1, '', '', 'Publisher: International resource institute, ISBN: caffee2', 'Others', 'Others', 'Publisher: International resource institute, ISBN: caffee2', 'Publisher: International resource institute, ISBN: caffee2', 10, 'Available', 'Road Way', 1, ''),
(64, 'booklovers', '25', 'Longman', 'Your Income-Tax 2010', '224.jpg', '', 'Centi meters', 1, '', '', 'Publisher: J K Lasser Institute, ISBN: it-3433', 'Others', 'Others', 'Publisher: J K Lasser Institute, ISBN: it-3433', 'Publisher: J K Lasser Institute, ISBN: it-3433', 10, 'Available', 'Road Way', 1, ''),
(65, 'booklovers', '26', 'Longman', 'Your Income-Tax Professional Edition', '225.jpg', '', 'Centi meters', 1, '', '', 'Publisher: J K Lasser Institute, ISBN: it-121', 'Others', 'Others', 'Publisher: J K Lasser Institute, ISBN: it-121', 'Publisher: J K Lasser Institute, ISBN: it-121', 10, 'Available', 'Road Way', 1, ''),
(66, 'booklovers', '27', 'Longman', 'J K Lesser''s Tax Savings in your Pocket', '226.jpg', '', 'Centi meters', 1, '', '', 'Publisher: John Wiley and Sons, ISBN: it-122', 'Others', 'Others', 'Publisher: John Wiley and Sons, ISBN: it-122', 'Publisher: John Wiley and Sons, ISBN: it-122', 10, 'Available', 'Road Way', 1, ''),
(67, 'booklovers', '28', 'Longman', 'Cook It Step by Step', '227.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Dorling Kindersley, ISBN: 9781409366225', 'Cooking', 'Cooking', 'Publisher: Dorling Kindersley, ISBN: 9781409366225', 'Publisher: Dorling Kindersley, ISBN: 9781409366225', 10, 'Available', 'Road Way', 1, ''),
(68, 'booklovers', '29', 'Longman', 'Step-by-Step Breads (HB)', '228.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Dorling Kindersley, ISBN: 9781405368254', 'Cooking', 'Cooking', 'Publisher: Dorling Kindersley, ISBN: 9781405368254', 'Publisher: Dorling Kindersley, ISBN: 9781405368254', 10, 'Available', 'Road Way', 1, ''),
(69, 'booklovers', '30', 'Longman', 'Debugging Microsoft .NET 2.0 Applications', '229.jpg', '', 'Centi meters', 1, '', '', 'Publisher: John Robbins (Wintellect), ISBN: net-1', 'Others', 'Others', 'Publisher: John Robbins (Wintellect), ISBN: net-1', 'Publisher: John Robbins (Wintellect), ISBN: net-1', 10, 'Available', 'Road Way', 1, ''),
(70, 'booklovers', '31', 'Longman', 'Early Reader: Mr Monkey and the Fairy', '230.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Linda Chapman, ISBN: 9781444015522', 'Childern', 'Childern', 'Publisher: Linda Chapman, ISBN: 9781444015522', 'Publisher: Linda Chapman, ISBN: 9781444015522', 10, 'Available', 'Road Way', 1, ''),
(71, 'booklovers', '32', 'Longman', 'Pizza Pig', '231.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Random House Childrens Books, ISBN: 9781524713348', 'Childern', 'Childern', 'Publisher: Random House Childrens Books, ISBN: 9781524713348', 'Publisher: Random House Childrens Books, ISBN: 9781524713348', 10, 'Available', 'Road Way', 1, ''),
(72, 'booklovers', '33', 'Longman', 'HOW TO PREPARE FOR QUANTITATIVE APTITUDE ', '232.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Arun Sharma, ISBN: 70483493', 'Others', 'Others', 'Publisher: Arun Sharma, ISBN: 70483493', 'Publisher: Arun Sharma, ISBN: 70483493', 10, 'Available', 'Road Way', 1, ''),
(73, 'booklovers', '34', 'Longman', 'Physics', '233.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Unknown, ISBN: 8', 'Others', 'Others', 'Publisher: Unknown, ISBN: 8', 'Publisher: Unknown, ISBN: 8', 10, 'Available', 'Road Way', 1, ''),
(74, 'booklovers', '35', 'Longman', 'Thermal Physics', '234.jpg', '', 'Centi meters', 1, '', '', 'Publisher: S.C.Garg, ISBN: 74601342', 'Others', 'Others', 'Publisher: S.C.Garg, ISBN: 74601342', 'Publisher: S.C.Garg, ISBN: 74601342', 10, 'Available', 'Road Way', 1, ''),
(75, 'booklovers', '36', 'Longman', 'The Rough Guide to the Earth?', '235.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Martin Ince, ISBN: 1843535890', 'Others', 'Others', 'Publisher: Martin Ince, ISBN: 1843535890', 'Publisher: Martin Ince, ISBN: 1843535890', 10, 'Available', 'Road Way', 1, ''),
(76, 'booklovers', '37', 'Longman', 'A TEXTBOOK OF COST AND MANAGEMENT ACC.', '236.jpg', '', 'Centi meters', 1, '', '', 'Publisher: M N ARORA, ISBN: 812910945', 'Text Book', 'Text Book', 'Publisher: M N ARORA, ISBN: 812910945', 'Publisher: M N ARORA, ISBN: 812910945', 10, 'Available', 'Road Way', 1, ''),
(77, 'booklovers', '38', 'Longman', 'Computer Networks, 4th Ed', '237.jpg', '', 'Centi meters', 1, '', '', 'Publisher: ANDREW S.TANENBAUM, ISBN: 8120321758', 'Others', 'Others', 'Publisher: ANDREW S.TANENBAUM, ISBN: 8120321758', 'Publisher: ANDREW S.TANENBAUM, ISBN: 8120321758', 10, 'Available', 'Road Way', 1, ''),
(78, 'booklovers', '39', 'Longman', 'Investing for Beginners', '238.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Kathy Kristof, ISBN: 8170944821', 'Business', 'Business', 'Publisher: Kathy Kristof, ISBN: 8170944821', 'Publisher: Kathy Kristof, ISBN: 8170944821', 10, 'Available', 'Road Way', 1, ''),
(79, 'booklovers', '40', 'Longman', 'Games Lawyers need to Play - Moot C', '239.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Raj Anand Moot Court Competition, ISBN: 818028025X', 'Others', 'Others', 'Publisher: Raj Anand Moot Court Competition, ISBN: 818028025X', 'Publisher: Raj Anand Moot Court Competition, ISBN: 818028025X', 10, 'Available', 'Road Way', 1, ''),
(80, 'booklovers', '41', 'Longman', 'An ABC of Indian Culture : A Personal Pad', '240.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Peggy Holroyde, ISBN: 818820417X', 'Others', 'Others', 'Publisher: Peggy Holroyde, ISBN: 818820417X', 'Publisher: Peggy Holroyde, ISBN: 818820417X', 10, 'Available', 'Road Way', 1, ''),
(81, 'booklovers', '42', 'Longman', 'HOW TO PREPARE FOR THE CAT, 2/E', '241.jpg', '', 'Centi meters', 1, '', '', 'Publisher: MUNEER, MUHAMED, ISBN: 70528462', 'Others', 'Others', 'Publisher: MUNEER, MUHAMED, ISBN: 70528462', 'Publisher: MUNEER, MUHAMED, ISBN: 70528462', 10, 'Available', 'Road Way', 1, ''),
(82, 'booklovers', '43', 'Longman', 'Safe and Simple Steps to Fruitful Meditation', '242.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Dr. N. K. Srinivasan, ISBN: 8122308910', 'Others', 'Others', 'Publisher: Dr. N. K. Srinivasan, ISBN: 8122308910', 'Publisher: Dr. N. K. Srinivasan, ISBN: 8122308910', 10, 'Available', 'Road Way', 1, ''),
(83, 'booklovers', '44', 'Longman', 'STATISTICS FOR BUSINESS AND ECONOMICS', '243.jpg', '', 'Centi meters', 1, '', '', 'Publisher: J S CHANDAN, ISBN: 8125904182', 'Others', 'Others', 'Publisher: J S CHANDAN, ISBN: 8125904182', 'Publisher: J S CHANDAN, ISBN: 8125904182', 10, 'Available', 'Road Way', 1, ''),
(84, 'booklovers', '45', 'Longman', 'Himalayan Vignettes : The Garhwal and Sikkim', '244.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Kekoo Naoroji, ISBN: 8188204234', 'Others', 'Others', 'Publisher: Kekoo Naoroji, ISBN: 8188204234', 'Publisher: Kekoo Naoroji, ISBN: 8188204234', 10, 'Available', 'Road Way', 1, ''),
(85, 'booklovers', '46', 'Longman', 'Insight Guide Iceland', '245.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Perrottet, Tony (Edt), ISBN: 887291767', 'Others', 'Others', 'Publisher: Perrottet, Tony (Edt), ISBN: 887291767', 'Publisher: Perrottet, Tony (Edt), ISBN: 887291767', 10, 'Available', 'Road Way', 1, ''),
(86, 'booklovers', '47', 'Longman', 'SPIDER MAN', '246.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Marvel Comics, ISBN: 785123415', 'Others', 'Others', 'Publisher: Marvel Comics, ISBN: 785123415', 'Publisher: Marvel Comics, ISBN: 785123415', 10, 'Available', 'Road Way', 1, ''),
(87, 'booklovers', '48', 'Longman', 'The Missing', '247.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Chris Mooning, ISBN: 141030852', 'Others', 'Others', 'Publisher: Chris Mooning, ISBN: 141030852', 'Publisher: Chris Mooning, ISBN: 141030852', 10, 'Available', 'Road Way', 1, ''),
(88, 'booklovers', '49', 'Longman', 'Moxibustion Treatment', '248.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Metrobook, ISBN: 9789865719272', 'Medical', 'Medical', 'Publisher: Metrobook, ISBN: 9789865719272', 'Publisher: Metrobook, ISBN: 9789865719272', 10, 'Available', 'Road Way', 1, ''),
(89, 'booklovers', '50', 'Longman', 'Bill and Dave: How Hewlett and Packard Buil', '249.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Michael S. Malone, ISBN: 143102397', 'Others', 'Others', 'Publisher: Michael S. Malone, ISBN: 143102397', 'Publisher: Michael S. Malone, ISBN: 143102397', 10, 'Available', 'Road Way', 1, ''),
(90, 'booklovers', '51', 'Longman', 'PAKISTAN`S DRIFT INTO EXTREMISM', '250.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Hassan Abbas, ISBN: 8182741580', 'Others', 'Others', 'Publisher: Hassan Abbas, ISBN: 8182741580', 'Publisher: Hassan Abbas, ISBN: 8182741580', 10, 'Available', 'Road Way', 1, ''),
(91, 'booklovers', '52', 'Longman', 'Learning SQL on SQL Server 2005 : The Simplest Way', '251.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Sikha Saha Bagui, Richard Walsh Earp, ISBN: 9788184040', 'Others', 'Others', 'Publisher: Sikha Saha Bagui, Richard Walsh Earp, ISBN: 9788184040', 'Publisher: Sikha Saha Bagui, Richard Walsh Earp, ISBN: 9788184040', 10, 'Available', 'Road Way', 1, ''),
(92, 'booklovers', '53', 'Longman', 'Paris for One Quick Reads', '252.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Penguin Books, ISBN: 9781405918930', 'Fiction', 'Fiction', 'Publisher: Penguin Books, ISBN: 9781405918930', 'Publisher: Penguin Books, ISBN: 9781405918930', 10, 'Available', 'Road Way', 1, ''),
(93, 'booklovers', '54', 'Longman', 'The Music Shop', '253.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Black Swan, ISBN: 9780552779456', 'Fiction', 'Fiction', 'Publisher: Black Swan, ISBN: 9780552779456', 'Publisher: Black Swan, ISBN: 9780552779456', 10, 'Available', 'Road Way', 1, ''),
(94, 'booklovers', '55', 'Longman', 'Year of the Death of Ricardo Reis (Panther)', '254.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Vintage Classics, ISBN: 9781860465024', 'Fiction', 'Fiction', 'Publisher: Vintage Classics, ISBN: 9781860465024', 'Publisher: Vintage Classics, ISBN: 9781860465024', 10, 'Available', 'Road Way', 1, ''),
(95, 'booklovers', '56', 'Longman', 'Zuckerman Unbound', '255.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Philip Roth, ISBN: 9781860465033', 'Fiction', 'Fiction', 'Publisher: Philip Roth, ISBN: 9781860465033', 'Publisher: Philip Roth, ISBN: 9781860465033', 10, 'Available', 'Road Way', 1, ''),
(96, 'booklovers', '57', 'Longman', 'Wolf in White Van', '256.jpg', '', 'Centi meters', 1, '', '', 'Publisher: Picador, ISBN: 9781250081223', 'Fiction', 'Fiction', 'Publisher: Picador, ISBN: 9781250081223', 'Publisher: Picador, ISBN: 9781250081223', 10, 'Available', 'Road Way', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `prod_category_tbl`
--

CREATE TABLE `prod_category_tbl` (
  `row_id` int(10) NOT NULL,
  `cat_category` varchar(30) NOT NULL COMMENT 'To store category',
  `cat_sub_category` varchar(30) NOT NULL COMMENT 'To store sub Category',
  `cat_descreption` text NOT NULL COMMENT 'To store category description'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prod_category_tbl`
--

INSERT INTO `prod_category_tbl` (`row_id`, `cat_category`, `cat_sub_category`, `cat_descreption`) VALUES
(1, 'Electronics', 'Camera', 'Sony\r\nNicon\r\nKodak\r\n'),
(2, 'Electronics', 'Mobile', 'Nokia\r\nSamsung\r\nMotorola\r\nBlackbery\r\nicube\r\niphone\r\nCDMA\r\n'),
(3, 'Electronics', 'TV', 'Panasonic\r\nSony\r\nVidiocon\r\nSamsung\r\nLG\r\nOnoida'),
(4, 'Electronics', 'Electric Geysers', ''),
(95, 'Computer Parts', 'Keyboard', ''),
(5, 'Electronics', 'Laptops', 'Dell\r\nSony\r\nlenovo\r\nSamsung\r\nacer\r\n'),
(6, 'Electronics', 'DVD Player', 'Ponier\r\nPanasonic\r\nSamsung\r\nSony'),
(7, 'Electronics', 'Battery & UPS', ''),
(8, 'Electronics', 'Washing Machine', 'LG\r\nGodreg\r\nVideocon\r\n'),
(9, 'Electronics', 'Refrigrators', 'LG\r\ngodereg\r\nVieocon\r\nWirlpool'),
(10, 'Electronics', 'Electric Cooker', 'LG\r\nShrada Sky shop\r\n'),
(11, 'Electronics', 'Fan', 'Usha\r\nKaithan\r\nOrient\r\n'),
(12, 'Electronics', 'Generator', 'LG\r\n'),
(13, 'Garments', 'Kids wear', 'All types of dress'),
(14, 'Garments', 'Mens wear', 'All types of dress'),
(15, 'Garments', 'Womens wear', 'All types of dress'),
(16, 'Garments', 'Youth Trends', 'new Arrival '),
(17, 'Garments', 'Wallets', 'For men'),
(18, 'Garments', 'Hand Bags', ''),
(19, 'Garments', 'Purss', ''),
(20, 'Garments', 'Toddlers', ''),
(21, 'Foot ware', 'Kids', ''),
(22, 'Foot ware', 'Ladies', 'Addidas\r\nReebok\r\nwoodlands\r\nSparx\r\npuma\r\nnike'),
(23, 'Foot ware', 'Mens', 'Addidas\r\nReebok\r\nwoodlands\r\nSparx\r\npuma\r\nnike'),
(24, 'Foot ware', 'Canvas', 'Addidas\r\nReebok\r\nwoodlands\r\nSparx\r\npuma\r\nnike'),
(25, 'Foot ware', 'Shoe', 'Addidas\r\nReebok\r\nwoodlands\r\nSparx\r\npuma\r\nnike'),
(26, 'Foot ware', 'Sandlas', ''),
(27, 'Foot ware', 'Sports Shoe', 'Addidas\r\nReebok\r\nwoodlands\r\nSparx\r\npuma\r\nnike'),
(28, 'Foot ware', 'Slipprs', ''),
(29, 'Entertainment', 'Play stations', 'LG\r\nSony'),
(30, 'Entertainment', 'Musics', 'CD\r\nDVD\r\n'),
(31, 'Electronics', 'ipod', 'Sony\r\n'),
(32, 'Entertainment', 'Games', ''),
(33, 'Stationary', 'Note Books', 'Navneeth'),
(34, 'Stationary', 'Scale', 'Nataraj\r\nCamlin'),
(35, 'Stationary', 'School bags', ''),
(36, 'Stationary', 'Cases & pouchs', ''),
(37, 'Stationary', 'Pencil', ''),
(38, 'Stationary', 'Pen', ''),
(39, 'Stationary', 'Colour Pencils', ''),
(40, 'Electronics', 'Colour Pen', ''),
(41, 'Stationary', 'Eraser', ''),
(42, 'Stationary', 'Paint colors', ''),
(43, 'Stationary', 'Paint Brush', ''),
(44, 'Stationary', 'Sharpner', ''),
(45, 'Stationary', 'Drawing Sheets', ''),
(46, 'Stationary', 'Mathmetical Equipments', ''),
(47, 'Stationary', 'Biological Equpiments', ''),
(48, 'Musical Instruments', 'Guitar', ''),
(49, 'Musical Instruments', 'Harmonica', ''),
(50, 'Musical Instruments', 'Piano', ''),
(51, 'Musical Instruments', 'Brass', ''),
(52, 'Musical Instruments', 'Wood Wind', ''),
(53, 'Musical Instruments', 'Accordion', ''),
(54, 'Musical Instruments', 'Pro audio Equipment', ''),
(55, 'Musical Instruments', 'String', ''),
(56, 'Crafts', 'Art Supplies', ''),
(57, 'Crafts', 'Beads & Jewelary MAking', ''),
(58, 'Crafts', 'Glass & Mosaics', ''),
(59, 'Crafts', 'Home arts', ''),
(60, 'Crafts', 'Needle Crafts', ''),
(61, 'Crafts', 'Fabric Atrs', ''),
(62, 'Garments', 'Wollen Cloths', ''),
(63, 'Garments', 'Inner wear', ''),
(64, 'Garments', 'Winter Ware', ''),
(65, 'Watches', 'Mens Watches', ''),
(66, 'Watches ', 'Ladies Watches', ''),
(67, 'Watches', 'Unisex Watches', ''),
(68, 'Watches', 'Kids Watches', ''),
(69, 'Watches', 'Wall Clocks', ''),
(70, 'Food & Beverages', 'Soda Ash', ''),
(71, 'Food & Beverages', 'Petha', ''),
(72, 'Food & Beverages', 'Gulab Jamun', ''),
(73, 'Food & Beverages', 'Rasmail', ''),
(74, 'Food & Beverages', 'Basundi', ''),
(75, 'Food & Beverages', 'Dadam Puri', ''),
(76, 'Food & Beverages', 'Chiroti', ''),
(77, 'Food & Beverages', 'Peda', ''),
(78, 'Food & Beverages', 'Ice Cream', ''),
(79, 'Furniture', 'Antique Furniture', ''),
(80, 'Furniture', 'Bamboo Furniture', ''),
(81, 'Furniture', 'Home Furniture', ''),
(82, 'Furniture', 'Office Furniture', ''),
(83, 'Furniture', 'School Furniture', ''),
(84, 'Furniture', 'Wood Furniture', ''),
(85, 'Mechanical Components', 'Nuts', ''),
(86, 'Mechanical Components', 'Bolts', ''),
(87, 'Mechanical Components', 'Nails', ''),
(88, 'Mechanical Components', 'Screws', ''),
(89, 'Mechanical Components', 'Pins', ''),
(90, 'Jewelary', 'Ethnic Jewelary', ''),
(91, 'Jewelary', 'Reginal Jewelary', ''),
(92, 'Jewelary', 'Tribal Jewelary', ''),
(93, 'Jewelary', 'Fashion Jewelary', ''),
(94, 'Jewelary', 'Wintage & Antique', ''),
(96, 'Computer Parts', 'Monoitor', ''),
(97, 'Computer Parts', 'Printer', ''),
(98, 'Computer Parts', 'Scanners', ''),
(99, 'Computer Parts', 'Software', ''),
(100, 'Computer Parts', 'Mouse', ''),
(101, 'Computer Parts', 'Projectors', ''),
(102, 'Computer Parts', 'CPU', ''),
(103, 'Computer Parts', 'Hard Disk', ''),
(104, 'Computer Parts', 'Pen Drive', ''),
(105, 'Computer Parts', 'Speakers', ''),
(106, 'Computer Parts', 'RAM', ''),
(107, 'Computer Parts', 'Joy Stick', ''),
(108, 'Computer Parts', 'Mother Bord', ''),
(109, 'Computer Parts', 'Floppy Disk', ''),
(110, 'Computer Parts', 'Graphic Card', ''),
(111, 'Stationary', 'College Bags', ''),
(114, 'Electronics', 'Trimmer', 'An Electric Trimmer used for shave.'),
(115, 'Jewelary', 'Ring', 'Hand Ring'),
(116, 'Garments', 'Hat', 'Hat'),
(117, 'Hand Made Soft Toy', 'Teddy Bear', 'Hand Made Teddy Bear'),
(118, 'Accessories', 'Earrings', 'Earrings'),
(119, 'Accessories', 'Pendant', 'Pendant'),
(120, 'Accessories', 'Brooch', 'Brooch'),
(121, 'Dictionary', 'Dictionary', 'Dictionary'),
(122, 'Commence', 'Commence', 'Commence'),
(123, 'Business', 'Business', 'Business'),
(124, 'Childern', 'Childern', 'Childern'),
(125, 'Travel', 'Travel', 'Travel'),
(126, 'Psychology', 'Psychology', 'Psychology'),
(127, 'Computer', 'Computer', 'Computer'),
(128, 'Cooking', 'Cooking', 'Cooking'),
(129, 'Text Book', 'Text Book', 'Text Book'),
(130, 'Fiction', 'Fiction', 'Fiction'),
(131, 'Medical', 'Medical', 'Medical'),
(132, 'Others', 'Others', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `prod_price_tbl`
--

CREATE TABLE `prod_price_tbl` (
  `row_id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `prd_id` varchar(10) NOT NULL,
  `price_actual` decimal(10,2) NOT NULL,
  `price_discount` decimal(10,2) NOT NULL,
  `price_discount_type` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To Store Price Details';

--
-- Dumping data for table `prod_price_tbl`
--

INSERT INTO `prod_price_tbl` (`row_id`, `username`, `prd_id`, `price_actual`, `price_discount`, `price_discount_type`) VALUES
(1, 'handmade', 'S00000001', '100.00', '99.00', 'Yes'),
(27, 'handmade', 'S00000002', '200.00', '180.00', 'Yes'),
(28, 'handmade', 'A00000026', '250.00', '240.00', 'Yes'),
(29, 'handmade', 'A00000019', '215.00', '210.00', 'Yes'),
(30, 'handmade', 'A00000020', '198.00', '190.00', 'Yes'),
(31, 'handmade', 'S00000003', '220.00', '200.00', 'Yes'),
(32, 'handmade', 'S00000004', '280.00', '260.00', 'Yes'),
(33, 'handmade', 'A00000002', '120.00', '100.00', 'Yes'),
(34, 'handmade', 'A00000004', '120.00', '100.00', 'Yes'),
(35, 'handmade', 'A00000003', '88.00', '8.00', 'Yes'),
(36, 'handmade', 'A00000025', '80.00', '65.00', 'Yes'),
(37, 'booklovers', '1', '100.00', '80.00', 'Yes'),
(38, 'booklovers', '2', '100.00', '80.00', 'Yes'),
(39, 'booklovers', '3', '100.00', '80.00', 'Yes'),
(40, 'booklovers', '4', '100.00', '80.00', 'Yes'),
(41, 'booklovers', '5', '100.00', '80.00', 'Yes'),
(42, 'booklovers', '6', '100.00', '80.00', 'Yes'),
(43, 'booklovers', '7', '100.00', '80.00', 'Yes'),
(44, 'booklovers', '8', '100.00', '80.00', 'Yes'),
(45, 'booklovers', '9', '100.00', '80.00', 'Yes'),
(46, 'booklovers', '10', '100.00', '80.00', 'Yes'),
(47, 'booklovers', '11', '100.00', '80.00', 'Yes'),
(48, 'booklovers', '12', '100.00', '80.00', 'Yes'),
(49, 'booklovers', '13', '100.00', '80.00', 'Yes'),
(50, 'booklovers', '14', '100.00', '80.00', 'Yes'),
(51, 'booklovers', '15', '100.00', '80.00', 'Yes'),
(52, 'booklovers', '16', '100.00', '80.00', 'Yes'),
(53, 'booklovers', '17', '100.00', '80.00', 'Yes'),
(54, 'booklovers', '18', '100.00', '80.00', 'Yes'),
(55, 'booklovers', '19', '100.00', '80.00', 'Yes'),
(56, 'booklovers', '20', '100.00', '80.00', 'Yes'),
(57, 'booklovers', '21', '100.00', '80.00', 'Yes'),
(58, 'booklovers', '22', '100.00', '80.00', 'Yes'),
(59, 'booklovers', '23', '100.00', '80.00', 'Yes'),
(60, 'booklovers', '24', '100.00', '80.00', 'Yes'),
(61, 'booklovers', '25', '100.00', '80.00', 'Yes'),
(62, 'booklovers', '26', '100.00', '80.00', 'Yes'),
(63, 'booklovers', '27', '100.00', '80.00', 'Yes'),
(64, 'booklovers', '28', '100.00', '80.00', 'Yes'),
(65, 'booklovers', '29', '100.00', '80.00', 'Yes'),
(66, 'booklovers', '30', '100.00', '80.00', 'Yes'),
(67, 'booklovers', '31', '100.00', '80.00', 'Yes'),
(68, 'booklovers', '32', '100.00', '80.00', 'Yes'),
(69, 'booklovers', '33', '100.00', '80.00', 'Yes'),
(70, 'booklovers', '34', '100.00', '80.00', 'Yes'),
(71, 'booklovers', '35', '100.00', '80.00', 'Yes'),
(72, 'booklovers', '36', '100.00', '80.00', 'Yes'),
(73, 'booklovers', '37', '100.00', '80.00', 'Yes'),
(74, 'booklovers', '38', '100.00', '80.00', 'Yes'),
(75, 'booklovers', '39', '100.00', '80.00', 'Yes'),
(76, 'booklovers', '40', '100.00', '80.00', 'Yes'),
(77, 'booklovers', '41', '100.00', '80.00', 'Yes'),
(78, 'booklovers', '42', '100.00', '80.00', 'Yes'),
(79, 'booklovers', '43', '100.00', '80.00', 'Yes'),
(80, 'booklovers', '44', '100.00', '80.00', 'Yes'),
(81, 'booklovers', '45', '100.00', '80.00', 'Yes'),
(82, 'booklovers', '46', '100.00', '80.00', 'Yes'),
(83, 'booklovers', '47', '100.00', '80.00', 'Yes'),
(84, 'booklovers', '48', '100.00', '80.00', 'Yes'),
(85, 'booklovers', '49', '100.00', '80.00', 'Yes'),
(86, 'booklovers', '50', '100.00', '80.00', 'Yes'),
(87, 'booklovers', '51', '100.00', '80.00', 'Yes'),
(88, 'booklovers', '52', '100.00', '80.00', 'Yes'),
(89, 'booklovers', '53', '100.00', '80.00', 'Yes'),
(90, 'booklovers', '54', '100.00', '80.00', 'Yes'),
(91, 'booklovers', '55', '100.00', '80.00', 'Yes'),
(92, 'booklovers', '56', '100.00', '80.00', 'Yes'),
(93, 'booklovers', '57', '100.00', '80.00', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `shop_cart_tbl`
--

CREATE TABLE `shop_cart_tbl` (
  `row_id` int(10) NOT NULL,
  `s_id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `prd_id` varchar(20) NOT NULL,
  `cart_name` varchar(50) NOT NULL,
  `cart_img` varchar(10) NOT NULL,
  `cart_qty` int(10) NOT NULL COMMENT 'to store Quantity',
  `cart_qtyavb` int(10) NOT NULL COMMENT 'to store quatity avaiable',
  `cart_qtyordered` int(10) NOT NULL,
  `cart_act` decimal(10,2) NOT NULL,
  `cart_dis` decimal(10,2) NOT NULL,
  `cart_price` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Temporary table for transaction';

--
-- Dumping data for table `shop_cart_tbl`
--

INSERT INTO `shop_cart_tbl` (`row_id`, `s_id`, `username`, `prd_id`, `cart_name`, `cart_img`, `cart_qty`, `cart_qtyavb`, `cart_qtyordered`, `cart_act`, `cart_dis`, `cart_price`) VALUES
(1, 'bLY7WF7y', 'booklovers', '1', 'Longman Active Study Dictionary of English', '2.jpg', 1, 10, 1, '100.00', '80.00', '80.00');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_tbl`
--

CREATE TABLE `vendor_tbl` (
  `row_id` int(10) NOT NULL,
  `log_sal` varchar(5) NOT NULL COMMENT 'To store Salutation',
  `log_fname` varchar(30) NOT NULL COMMENT 'To store First name',
  `log_lname` varchar(30) NOT NULL COMMENT 'To store Last name',
  `log_gender` varchar(6) NOT NULL,
  `log_email` varchar(50) NOT NULL COMMENT 'To Store Email ID',
  `username` varchar(20) NOT NULL COMMENT 'To Store Unique user name',
  `log_password` varchar(20) NOT NULL COMMENT 'To store Password',
  `log_url` varchar(40) NOT NULL COMMENT 'To Store Users URL',
  `log_security_question` varchar(30) NOT NULL COMMENT 'To Store Security Question',
  `log_security_answer` varchar(20) NOT NULL COMMENT 'To Store Security Question''s Answer',
  `log_address` text NOT NULL COMMENT 'To store address',
  `log_country` varchar(40) NOT NULL COMMENT 'To Store Country',
  `log_mobile` varchar(13) NOT NULL COMMENT 'To store mobile no',
  `log_phone` varchar(20) NOT NULL COMMENT 'To store phone no',
  `log_about_us` text NOT NULL COMMENT 'Tostore User details',
  `log_regdate` date NOT NULL COMMENT 'To Store Regstration Date'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Table holds details of login details';

--
-- Dumping data for table `vendor_tbl`
--

INSERT INTO `vendor_tbl` (`row_id`, `log_sal`, `log_fname`, `log_lname`, `log_gender`, `log_email`, `username`, `log_password`, `log_url`, `log_security_question`, `log_security_answer`, `log_address`, `log_country`, `log_mobile`, `log_phone`, `log_about_us`, `log_regdate`) VALUES
(1, 'Ms', 'Natalie', 'Cheng', 'Female', 'somemail@gmail.com', 'handmade', 'abcd1234', 'http://localhost:8080/eshop/handmade', 'My birth place', 'hong kong', 'Address1\r\nAddress2\r\nAddress3\r\nAddress4', 'Hong Kong', '1-1', '1-1-1', 'Hong Kong - based Carol & Natalie Production \r\nCompany is a provider of handmade accessories \r\nand soft toys products.', '2016-03-31'),
(23, 'Ms', 'Carol', 'Lee', 'Female', 'test-carollee@test.com', 'booklovers', 'abcd1234', 'http://localhost:8080/eshop/booklovers', 'My birth place', 'hongkong', 'hongkong', 'Hong Kong', '852-66666666', '852-11111-1111111', 'Hong Kong Based\r\nBook Lovers online bookstore', '2018-04-05'),
(24, 'Ms', 'Carol', 'Lee', 'Female', 'manlee77@yahoo.com.hk', 'carollee', '12345678', 'http://localhost/booklovers/carollee', 'My birth place', 'hk', 'ABC', 'Hong Kong', '852-12345678', '852-1234-5678', 'Sell Book', '2018-04-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_acct_tbl`
--
ALTER TABLE `admin_acct_tbl`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `backup_trn_tbl`
--
ALTER TABLE `backup_trn_tbl`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `country_tbl`
--
ALTER TABLE `country_tbl`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `orders_tbl`
--
ALTER TABLE `orders_tbl`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `product_tbl`
--
ALTER TABLE `product_tbl`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `prod_category_tbl`
--
ALTER TABLE `prod_category_tbl`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `prod_price_tbl`
--
ALTER TABLE `prod_price_tbl`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `shop_cart_tbl`
--
ALTER TABLE `shop_cart_tbl`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `vendor_tbl`
--
ALTER TABLE `vendor_tbl`
  ADD PRIMARY KEY (`row_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_acct_tbl`
--
ALTER TABLE `admin_acct_tbl`
  MODIFY `row_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backup_trn_tbl`
--
ALTER TABLE `backup_trn_tbl`
  MODIFY `row_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `country_tbl`
--
ALTER TABLE `country_tbl`
  MODIFY `row_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT for table `orders_tbl`
--
ALTER TABLE `orders_tbl`
  MODIFY `row_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `product_tbl`
--
ALTER TABLE `product_tbl`
  MODIFY `row_id` int(10) NOT NULL AUTO_INCREMENT COMMENT ' ', AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `prod_category_tbl`
--
ALTER TABLE `prod_category_tbl`
  MODIFY `row_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `prod_price_tbl`
--
ALTER TABLE `prod_price_tbl`
  MODIFY `row_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `shop_cart_tbl`
--
ALTER TABLE `shop_cart_tbl`
  MODIFY `row_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `vendor_tbl`
--
ALTER TABLE `vendor_tbl`
  MODIFY `row_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
