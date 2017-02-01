-- Database: `manmandir`
--
CREATE DATABASE IF NOT EXISTS `manmandir` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `manmandir`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `date` varchar(1000) NOT NULL,
  `particulars` varchar(10000) NOT NULL,
  `debit` varchar(100) NOT NULL,
  `credit` varchar(1000) NOT NULL,
  `balance` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `date`, `particulars`, `debit`, `credit`, `balance`) VALUES
(1, '2016-11-08', 'Amount Added', '', '30000', 30000),
(2, '2016-11-08', 'Balance paid By Chetan Kulkarni', '', '100', 30100),
(3, '2016-11-08', 'Amt Returned to Chetan Kulkarni ', '100', '', 30000),
(4, '2016-11-14', 'Purchased From sp', '1', '', 29999),
(5, '2016-11-14', 'Purchased From sp', '100', '', 29899),
(6, '2016-11-14', 'Purchased From sp', '1000', '', 28899),
(7, '2016-11-07', 'Purchased From sp', '100', '', 28799),
(8, '2016-11-14', 'Purchased From sp', '1', '', 28798),
(9, '2016-11-14', 'Purchased From kk', '201', '', 28597),
(10, '2016-11-15', 'Purchased From sp', '10', '', 28587),
(11, '2016-11-14', 'Purchased From sp', '10', '', 28577),
(12, '2016-11-15', 'Purchased From sp', '90', '', 28487),
(13, '2016-11-17', 'Amount Added', '', '1000', 29487),
(14, '2016-11-21', 'Purchased From sp', '100', '', 29387),
(15, '2016-11-21', 'Sold to pratap', '', '250', 29637),
(16, '2016-11-21', 'Sold to pratap', '', '250', 29887),
(17, '2016-11-21', 'Sold to Chetan Kulkarni', '', '250', 30137),
(18, '2016-11-21', 'Sold to Chetan Kulkarni', '', '220', 30357),
(19, '2016-11-21', 'Sold to Chetan Kulkarni', '', '220', 30577),
(20, '2016-11-21', '(Veriable expense)    ncjn', '37', '', 30540);

-- --------------------------------------------------------

--
-- 
--

CREATE TABLE `backup` (
  `id` int(10) NOT NULL,
  `file` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 
--

INSERT INTO `backup` (`id`, `file`) VALUES
(0, 'H://wamp/www/retbilling2/backup/manmandir-Database-Backup-2016-11-14@11-02-15.sql'),
(0, 'H://wamp/www/retbilling2/backup/manmandir-Database-Backup-2016-11-17@04-38-09.sql'),
(0, 'H://wamp/www/retbilling2/backup/manmandir-Database-Backup-2016-11-17@04-37-55.sql'),
(0, 'C://wamp/www/manmandir/backup/manmandir-Database-Backup-2016-11-23@07-58-05.sql'),
(0, 'H://wamp/www/retbilling2/backup/manmandir-Database-Backup-2016-11-23@09-12-59.sql');

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--
CREATE TABLE `balance` (
  `yest` int(100) NOT NULL,
  `today` int(100) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`yest`, `today`, `date`) VALUES
(0, 28300, '2016-11-08'),
(29950, 28300, '2016-11-14'),
(28749, 28300, '2016-11-15'),
(28437, 28300, '2016-11-16'),
(28437, 28300, '2016-11-17'),
(28437, 28300, '2016-11-18'),
(28337, 28300, '2016-11-21'),
(28300, 28300, '2016-11-22'),
(28300, 28300, '2016-11-23');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--


CREATE TABLE `bank` (
  `id` int(100) NOT NULL,
  `date` date NOT NULL,
  `particulars` varchar(1000) NOT NULL,
  `tin_no` varchar(100) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `account_number` varchar(1000) NOT NULL,
  `check_no` varchar(1000) NOT NULL,
  `debit` varchar(100) NOT NULL,
  `credit` varchar(1000) NOT NULL,
  `balance` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `date`, `particulars`, `tin_no`, `bank_name`, `account_number`, `check_no`, `debit`, `credit`, `balance`) VALUES
(1, '2016-11-08', 'Amount Added by Cheque', '', 'union bank', '12345678901', '123456', '', '30000', '30000'),
(2, '2016-11-08', 'Amount paid through Cheque to sp', '96861037361', 'union bank', '12345678901', '12', '156', '', '29844'),
(3, '2016-11-08', 'Amount received by Cash From Chetan Kulkarni', '9686103736', 'union bank', '12345678901', '', '', '100', '29944'),
(4, '2016-11-17', 'Amount Added by Cheque', '', 'union bank', '12345678901', '1234442', '', '1000', '30944'),
(5, '2016-11-22', 'Amount received through Cheque From ramesh kumar', '8050727536', 'union bank', '12345678901', 'aas2e', '', '120', '31064');

-- --------------------------------------------------------

--
-- Table structure for table `barpro`
--


CREATE TABLE `barpro` (
  `bar_pro` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barpro`
--

INSERT INTO `barpro` (`bar_pro`) VALUES
('1');

-- --------------------------------------------------------

--
-- Table structure for table `billing_account`
--


CREATE TABLE `billing_account` (
  `id` int(100) NOT NULL,
  `bill_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `party_name` varchar(1000) NOT NULL,
  `tin_no` varchar(1000) NOT NULL,
  `mobile_no` varchar(1000) NOT NULL,
  `particulars` varchar(1000) NOT NULL,
  `grand_total` varchar(1000) NOT NULL,
  `Credit` varchar(1000) NOT NULL,
  `Debit` varchar(1000) NOT NULL,
  `balance` varchar(1000) NOT NULL,
  `advance` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_account`
--

INSERT INTO `billing_account` (`id`, `bill_no`, `date`, `party_name`, `tin_no`, `mobile_no`, `particulars`, `grand_total`, `Credit`, `Debit`, `balance`, `advance`) VALUES
(1, 1, '2016-11-17', 'Chetan Kulkarni', '12345678901', '9686103736', 'Balance 3.6', '3.600', '0', '0', '3.6', '0'),
(2, 2, '2016-11-17', 'Chetan Kulkarni', '12345678901', '9686103736', 'Balance 120', '120', '0', '0', '123.6', '0'),
(3, 3, '2016-11-17', 'Chetan Kulkarni', '12345678901', '9686103736', 'Balance 120', '120', '0', '0', '243.6', '0'),
(4, 4, '2016-11-17', 'pratap', '9686103736', '7868768768', 'Balance 120', '120', '0', '0', '120', '0'),
(5, 5, '2016-11-17', 'ramesh kumar', '7338385139', '8050727536', 'Balance 120', '120', '0', '0', '120', '0'),
(6, 6, '2016-11-17', 'Chetan Kulkarni', '12345678901', '7338385139', 'Balance 120', '120', '0', '0', '363.6', '0'),
(7, 6, '2016-11-17', 'Chetan Kulkarni', '12345678901', '7338385139', 'Balance 120', '120', '0', '0', '483.6', '0'),
(8, 7, '2016-11-17', 'Chetan Kulkarni', '12345678901', '7338385139', 'Balance 117', '117', '0', '0', '600.6', '0'),
(9, 8, '2016-11-17', 'Chetan Kulkarni', '12345678901', '7338385139', 'Balance 117', '117', '0', '0', '717.6', '0'),
(10, 9, '2016-11-21', 'pratap', '9686103736', '7868768768', 'All cleared', '250', '250', '0', '120', '0'),
(11, 10, '2016-11-21', 'pratap', '9686103736', '7868768768', 'All cleared', '250', '250', '0', '120', '0'),
(12, 11, '2016-11-21', 'Chetan Kulkarni', '12345678901', '7338385139', 'All cleared', '250', '250', '0', '717.6', '0'),
(13, 12, '2016-11-21', 'Chetan Kulkarni', '12345678901', '7338385139', 'All cleared', '220', '220', '0', '717.6', '0'),
(14, 13, '2016-11-21', 'Chetan Kulkarni', '12345678901', '7338385139', 'All cleared', '220', '220', '0', '717.6', '0'),
(15, 14, '2016-11-21', 'Chetan Kulkarni', '12345678901', '7338385139', 'Balance 250', '250', '0', '0', '967.6', '0'),
(16, 0, '2016-11-22', 'ramesh kumar', '7338385139', '8050727536', 'Balance cleared', '', '120', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--
CREATE TABLE `billing_details` (
  `cname` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `tinno` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `sales_person` varchar(100) NOT NULL,
  `billno` int(100) NOT NULL,
  `subtot` double NOT NULL,
  `tailor` varchar(100) NOT NULL,
  `vat` double NOT NULL,
  `vatamt` double NOT NULL,
  `discount` double NOT NULL,
  `disccamt` double NOT NULL,
  `total` double NOT NULL,
  `paid` double NOT NULL,
  `balance` double NOT NULL,
  `word` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_details`
--

INSERT INTO `billing_details` (`cname`, `mobile`, `tinno`, `date`, `sales_person`, `billno`, `subtot`, `tailor`, `vat`, `vatamt`, `discount`, `disccamt`, `total`, `paid`, `balance`, `word`) VALUES
('Chetan Kulkarni', '7338385139', '12345678901', '2016-11-17', 'pratap', 1, 3.6, '', 14.5, 102.6, 3, 3.6, 17.4, 0, 3.6, 'undefined'),
('Chetan Kulkarni', '9686103736', '12345678901', '2016-11-17', 'ramesh', 2, 120, '', 5.5, 113.4, 1, 1.2, 6.6, 0, 120, 'one hundred and twenty only '),
('Chetan Kulkarni', '9686103736', '12345678901', '2016-11-17', 'pratap', 3, 120, '', 14.5, 102.6, 0, 0, 17.4, 0, 120, 'one hundred and twenty only '),
('pratap', '7868768768', '9686103736', '2016-11-17', 'pratap', 4, 120, '', 14.5, 102.6, 0, 0, 17.4, 0, 120, ''),
('ramesh kumar', '8050727536', '7338385139', '2016-11-17', 'pratap', 5, 120, '', 5.5, 113.4, 0, 0, 6.6, 0, 120, 'one hundred and twenty only '),
('Chetan Kulkarni', '7338385139', '12345678901', '2016-11-17', 'pratap', 6, 120, '', 14.5, 102.6, 0, 0, 17.4, 0, 120, 'one hundred and twenty only '),
('Chetan Kulkarni', '7338385139', '12345678901', '2016-11-17', 'pratap', 6, 120, '', 14.5, 102.6, 0, 0, 17.4, 0, 120, 'one hundred and twenty only '),
('Chetan Kulkarni', '7338385139', '12345678901', '2016-11-17', 'pratap', 7, 117, '', 5.5, 113.4, 0, 0, 6.6, 0, 117, 'one hundred and seventeen only '),
('Chetan Kulkarni', '7338385139', '12345678901', '2016-11-17', 'pratap', 8, 117, '', 14.5, 102.6, 0, 0, 17.4, 0, 117, 'one hundred and seventeen only '),
('pratap', '7868768768', '9686103736', '2016-11-21', 'pratap', 9, 250, '', 5.5, 8.25, 0, 0, 141.75, 250, 0, 'two hundred and fifty only '),
('pratap', '7868768768', '9686103736', '2016-11-21', 'pratap', 10, 250, '', 14.5, 21.75, 0, 0, 128.25, 250, 0, 'two hundred and fifty only '),
('Chetan Kulkarni', '7338385139', '12345678901', '2016-11-21', 'pratap', 11, 250, '', 14.5, 21.75, 0, 0, 128.25, 250, 0, 'two hundred and fifty only '),
('Chetan Kulkarni', '7338385139', '12345678901', '2016-11-21', 'pratap', 12, 220, '', 14.5, 17.4, 0, 0, 102.6, 220, 0, 'two hundred and twenty only '),
('Chetan Kulkarni', '7338385139', '12345678901', '2016-11-21', 'pratap', 13, 220, '100', 14.5, 17.4, 0, 0, 102.6, 220, 0, 'two hundred and twenty only '),
('Chetan Kulkarni', '7338385139', '12345678901', '2016-11-21', 'pratap', 14, 250, '100', 14.5, 21.75, 0, 0, 128.25, 0, 250, 'two hundred and fifty only ');

-- --------------------------------------------------------

--
-- Table structure for table `credit`
--
CREATE TABLE `credit` (
  `id` int(100) NOT NULL,
  `orderno` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `party_name` varchar(1000) NOT NULL,
  `tin_no` varchar(1000) NOT NULL,
  `billno` varchar(1000) NOT NULL,
  `Debit` varchar(1000) NOT NULL,
  `credit` varchar(1000) NOT NULL,
  `balance` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit`
--

INSERT INTO `credit` (`id`, `orderno`, `date`, `party_name`, `tin_no`, `billno`, `Debit`, `credit`, `balance`) VALUES
(1, '', '2016-11-21', 'raja kumar', '786786786', '12', '', '100', '100');

-- --------------------------------------------------------

--
-- Table structure for table `credit_bill`
--


CREATE TABLE `credit_bill` (
  `id` int(100) NOT NULL,
  `mobile_no` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `party_name` varchar(1000) NOT NULL,
  `tin_no` varchar(1000) NOT NULL,
  `billno` varchar(1000) NOT NULL,
  `Debit` varchar(1000) NOT NULL,
  `credit` varchar(1000) NOT NULL,
  `balance` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cust_bildetails`
--


CREATE TABLE `cust_bildetails` (
  `billno` int(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `pid` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `qty` double NOT NULL,
  `rate_qty` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cust_bildetails`
--

INSERT INTO `cust_bildetails` (`billno`, `mobile`, `date`, `time`, `pid`, `model`, `qty`, `rate_qty`, `total`) VALUES
(1, '9686103736', '2016-11-17', '00:00:00', 'CS1001', 'PILLLAR TAP', 1, 120, 120),
(2, '9686103736', '2016-11-17', '00:00:00', 'CS1001', 'PILLLAR TAP', 1, 120, 120),
(3, '9686103736', '2016-11-17', '00:00:00', 'CS1001', 'PILLLAR TAP', 1, 120, 120),
(4, '7868768768', '2016-11-17', '00:00:00', 'CS1001', 'PILLLAR TAP', 1, 120, 120),
(5, '8050727536', '2016-11-17', '00:00:00', 'CS1001', 'PILLLAR TAP', 1, 120, 120),
(6, '7338385139', '2016-11-17', '00:00:00', 'CS1001', 'PILLLAR TAP', 1, 120, 120),
(6, '7338385139', '2016-11-17', '00:00:00', 'CS1001', 'PILLLAR TAP', 1, 120, 120),
(7, '7338385139', '2016-11-17', '00:00:00', 'CS1001', 'PILLLAR TAP', 1, 120, 120),
(8, '7338385139', '2016-11-17', '00:00:00', 'CS1001', 'PILLLAR TAP', 1, 120, 120),
(9, '7868768768', '2016-11-21', '00:00:00', 'Garments', 'Pants', 1, 150, 150),
(10, '7868768768', '2016-11-21', '00:00:00', 'Garments', 'Pants', 1, 150, 150),
(11, '7338385139', '2016-11-21', '00:00:00', 'Garments', 'Pants', 1, 150, 150),
(12, '7338385139', '2016-11-21', '00:00:00', 'CS1001', 'PILLLAR TAP', 1, 120, 120),
(13, '7338385139', '2016-11-21', '00:00:00', 'CS1001', 'PILLLAR TAP', 1, 120, 120),
(14, '7338385139', '2016-11-21', '00:00:00', 'Garments', 'Pants', 1, 150, 150);

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--


CREATE TABLE `dealers` (
  `dealer_name` varchar(100) NOT NULL,
  `tinno` varchar(100) NOT NULL,
  `mob` bigint(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `altmob` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealers`
--

INSERT INTO `dealers` (`dealer_name`, `tinno`, `mob`, `address`, `altmob`) VALUES
('sp', '96861037361', 9686103736, 'ranebennur-581115', ''),
('kk', '09876543211', 909099090, 'hubli', ''),
('rajeshweri', '889898989898', 989989898, 'jhcjhncscjshcc sdjshjh', ''),
('raja', 'hiuu87765675', 6767567576757, 'ygjhfhjfjh', ''),
('raja kumar', '786786786', 68768768768, 'hghjhjghgggf', ''),
('transport', '1213', 89898989, 'nnnn', '89898989');

-- --------------------------------------------------------

--
-- Table structure for table `debit`
--


CREATE TABLE `debit` (
  `id` int(100) NOT NULL,
  `orderno` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `party_name` varchar(1000) NOT NULL,
  `tin_no` varchar(1000) NOT NULL,
  `billno` varchar(1000) NOT NULL,
  `Debit` varchar(1000) NOT NULL,
  `credit` varchar(1000) NOT NULL,
  `balance` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debit`
--

INSERT INTO `debit` (`id`, `orderno`, `date`, `party_name`, `tin_no`, `billno`, `Debit`, `credit`, `balance`) VALUES
(1, '', '2016-11-14', 'sp', '96861037361', '123', '100', '', '100'),
(2, '', '2016-11-14', 'sp', '96861037361', '8787', '432', '', '532');

-- --------------------------------------------------------

--
-- Table structure for table `debit_bill`
--
CREATE TABLE `debit_bill` (
  `id` int(100) NOT NULL,
  `mobile_no` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `party_name` varchar(1000) NOT NULL,
  `tin_no` varchar(1000) NOT NULL,
  `billno` varchar(1000) NOT NULL,
  `Debit` varchar(1000) NOT NULL,
  `credit` varchar(1000) NOT NULL,
  `balance` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--


CREATE TABLE `delivery` (
  `cname` varchar(30) NOT NULL,
  `tin_no` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `billno` int(100) NOT NULL,
  `subtot` double NOT NULL,
  `vat` double NOT NULL,
  `vatamt` double NOT NULL,
  `discount` double NOT NULL,
  `disccamt` double NOT NULL,
  `total` double NOT NULL,
  `paid` double NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery1`
--


CREATE TABLE `delivery1` (
  `billno` int(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `pid` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `qty` double NOT NULL,
  `rate_qty` double NOT NULL,
  `lessamt` varchar(100) NOT NULL,
  `total` double NOT NULL,
  `tot` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `direct_stock_info`
--
CREATE TABLE `direct_stock_info` (
  `date` date NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `type_of_material` varchar(100) NOT NULL,
  `cp` int(10) NOT NULL,
  `sp` int(10) NOT NULL,
  `qty/metrs` int(5) NOT NULL,
  `total_amount` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `direct_stock_info`
--

INSERT INTO `direct_stock_info` (`date`, `product_name`, `type_of_material`, `cp`, `sp`, `qty/metrs`, `total_amount`) VALUES
('2016-11-17', 'manna', 'honna', 100, 110, 1, 100),
('2016-11-17', 'CS1001', 'PILLLAR TAP', 100, 110, 1, 100),
('2016-11-17', 'CS1001', 'PILLLAR TAP', 120, 130, 1, 120),
('2016-11-17', 'CS1001', 'PILLLAR TAP', 100, 110, 1, 100),
('2016-11-17', 'CS1001', 'PILLLAR TAP', 100, 120, 12, 1200),
('2016-11-17', 'CS1001', 'PILLLAR TAP', 100, 110, 20, 2000),
('2016-11-17', 'CS1001', 'PILLLAR TAP', 100, 110, 1, 100),
('2016-11-21', 'CS1001', 'PILLLAR TAP', 100, 150, 10, 1000),
('2016-11-21', 'Garments', 'Pants', 100, 150, 100, 10000),
('2016-11-21', 'textiles', 'lungi', 100, 150, 10, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `fixedexp`
--


CREATE TABLE `fixedexp` (
  `date` date NOT NULL,
  `exptype` varchar(25) NOT NULL,
  `amount` double NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--


CREATE TABLE `login` (
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `passwd` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`fname`, `lname`, `mobile`, `uname`, `passwd`) VALUES
('123', '123', '123', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `offers_on_points`
--


CREATE TABLE `offers_on_points` (
  `id` int(100) NOT NULL,
  `bill_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `party_name` varchar(1000) NOT NULL,
  `tin_no` varchar(1000) NOT NULL,
  `mobile_no` varchar(1000) NOT NULL,
  `grand_total` varchar(1000) NOT NULL,
  `points` varchar(1000) NOT NULL,
  `all_points` varchar(1000) NOT NULL,
  `earned_money` varchar(100) NOT NULL,
  `otp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offers_on_points`
--

INSERT INTO `offers_on_points` (`id`, `bill_no`, `date`, `party_name`, `tin_no`, `mobile_no`, `grand_total`, `points`, `all_points`, `earned_money`, `otp`) VALUES
(2, 3, '2016-11-17', 'Chetan Kulkarni', '12345678901', '7338385139', '137.4', '2', '4', '2', '3186'),
(3, 4, '2016-11-17', 'pratap', '9686103736', '7868768768', '137.4', '2', '2', '1', ''),
(4, 5, '2016-11-17', 'ramesh kumar', '7338385139', '8050727536', '126.6', '2', '2', '1', '1533'),
(5, 6, '2016-11-17', 'Chetan Kulkarni', '12345678901', '7338385139', '137.4', '2', '6', '3', '2137'),
(6, 9, '2016-11-21', 'pratap', '9686103736', '7868768768', '391.75', '7', '9', '4.5', ''),
(7, 10, '2016-11-21', 'pratap', '9686103736', '7868768768', '378.25', '7', '16', '8', ''),
(8, 11, '2016-11-21', 'Chetan Kulkarni', '12345678901', '7338385139', '378.25', '7', '13', '6.5', ''),
(9, 12, '2016-11-21', 'Chetan Kulkarni', '12345678901', '7338385139', '322.6', '6', '19', '9.5', ''),
(10, 13, '2016-11-21', 'Chetan Kulkarni', '12345678901', '7338385139', '322.6', '6', '25', '12.5', ''),
(11, 14, '2016-11-21', 'Chetan Kulkarni', '12345678901', '7338385139', '378.25', '7', '32', '16', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_count`
--


CREATE TABLE `order_count` (
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_count`
--

INSERT INTO `order_count` (`count`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--


CREATE TABLE `products` (
  `product_name` varchar(300) NOT NULL,
  `subproduct` varchar(100) NOT NULL,
  `barcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_name`, `subproduct`, `barcode`) VALUES
('PILLLAR TAP', '', 'CS1001'),
('PILLLAR TAP', '', 'CS4001'),
('GATE KICK ROYALTT', '', 'MS2901'),
('saree', '', 'power looms'),
('Garments', '111', 't-Shirts'),
('Garments', 'Pants', '100'),
('textiles', 'lungi', '221'),
('handloom', 'xxx', '1212');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--


CREATE TABLE `purchase` (
  `orderno` varchar(20000) NOT NULL,
  `lr_no` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `time` time NOT NULL,
  `billno` varchar(20) NOT NULL,
  `no_bills` varchar(100) NOT NULL,
  `partyname` varchar(30) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `email` varchar(300) NOT NULL,
  `cashdisc` float NOT NULL,
  `tradedisc` float NOT NULL,
  `grandtotal` varchar(30) NOT NULL,
  `totaltax` varchar(20) NOT NULL,
  `cst` float NOT NULL,
  `productamount` varchar(30) NOT NULL,
  `amountpaid` varchar(20) NOT NULL,
  `balance` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`orderno`, `lr_no`, `date`, `delivery_date`, `time`, `billno`, `no_bills`, `partyname`, `contactno`, `email`, `cashdisc`, `tradedisc`, `grandtotal`, `totaltax`, `cst`, `productamount`, `amountpaid`, `balance`) VALUES
('1', '8989', '2016-11-17', '2016-11-17', '10:09:55', '989898', '1222', 'sp', '9686103736', 'ranebennur-581115', 0, 0, '1852', '', 0, '1852.00', '0', '1852.000'),
('2', '7878787', '2016-11-17', '2016-11-17', '10:20:44', '676767', '1011', 'kk', '909099090', 'hubli', 0, 0, '101', '', 0, '101.00', '0', '101.000'),
('3', '7979', '2016-11-21', '2016-11-21', '15:13:10', '111', '10', 'sp', '9686103736', 'ranebennur-581115', 0, 0, '102', '1', 1.01, '101.00', '100', '2.000');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_account`
--
CREATE TABLE `purchase_account` (
  `id` int(100) NOT NULL,
  `orderno` int(11) NOT NULL,
  `date` date NOT NULL,
  `party_name` varchar(1000) NOT NULL,
  `tin_no` varchar(1000) NOT NULL,
  `billno` varchar(1000) NOT NULL,
  `particulars` varchar(1000) NOT NULL,
  `grand_total` varchar(1000) NOT NULL,
  `Debit` varchar(1000) NOT NULL,
  `credit` varchar(1000) NOT NULL,
  `balance` varchar(1000) NOT NULL,
  `advance` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_account`
--

INSERT INTO `purchase_account` (`id`, `orderno`, `date`, `party_name`, `tin_no`, `billno`, `particulars`, `grand_total`, `Debit`, `credit`, `balance`, `advance`) VALUES
(1, 1, '2016-11-17', 'sp', '96861037361', '989898', 'Balance 1732', '1732', '0', '0', '1732', '0'),
(2, 1, '2016-11-17', 'sp', '96861037361', '989898', 'All cleared', '0', '', '0', '1732', '0'),
(3, 2, '2016-11-17', 'kk', '9876543211', '676767', 'Balance 101', '101', '0', '0', '101', '0'),
(4, 3, '2016-11-21', 'sp', '96861037361', '111', 'Balance 2', '102', '100', '0', '1734', '0'),
(5, 3, '2016-11-21', 'sp', '96861037361', '111', 'All cleared', '0', '', '0', '1734', '0');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseinvoice`
--


CREATE TABLE `purchaseinvoice` (
  `partyname` varchar(30) NOT NULL,
  `orderno` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `tinno` varchar(20) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(300) NOT NULL,
  `model` varchar(100) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `approximaterate` varchar(20) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchaseinvoice`
--

INSERT INTO `purchaseinvoice` (`partyname`, `orderno`, `date`, `time`, `tinno`, `contact`, `email`, `model`, `quantity`, `approximaterate`, `status`) VALUES
('sp', '1', '2016-11-17', '00:00:00', '96861037361', '9686103736', 'ranebennur-581115', 'power looms', '12', '100', 'y'),
('sp', '1', '2016-11-17', '00:00:00', '96861037361', '9686103736', 'ranebennur-581115', 'hand looms', '1', '120', 'y'),
('sp', '1', '2016-11-17', '00:00:00', '96861037361', '9686103736', 'ranebennur-581115', 'local', '2', '200', 'y'),
('kk', '2', '2016-11-17', '00:00:00', '9876543211', '909099090', 'hubli', 'power looms', '1', '100', 'y'),
('sp', '3', '2016-11-21', '00:00:00', '96861037361', '9686103736', 'ranebennur-581115', 'power looms', '1', '100', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `purchaserow`
--

CREATE TABLE `purchaserow` (
  `orderno` varchar(2000) NOT NULL,
  `billno` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `tinno` varchar(30) NOT NULL,
  `model` varchar(100) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `rate` varchar(20) NOT NULL,
  `tax` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL,
  `tot` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchaserow`
--

INSERT INTO `purchaserow` (`orderno`, `billno`, `date`, `time`, `tinno`, `model`, `quantity`, `rate`, `tax`, `total`, `tot`) VALUES
('1', '989898', '2016-11-17', '10:12:55', '96861037361', 'power looms', '12', '100', '1', '1200.00', '1212.00'),
('1', '989898', '2016-11-17', '10:12:55', '96861037361', 'hand looms', '2', '120', '0', '240.00', '240.00'),
('1', '989898', '2016-11-17', '10:12:55', '96861037361', 'local', '2', '200', '0', '400.00', '400.00'),
('2', '676767', '2016-11-17', '10:20:44', '9876543211', 'power looms', '1', '100', '1', '100.00', '101.00'),
('3', '111', '2016-11-21', '03:15:26', '96861037361', 'power looms', '1', '100', '1', '100.00', '101.00');

-- --------------------------------------------------------

--
-- Table structure for table `quatation`
--
CREATE TABLE `quatation` (
  `partyname` varchar(30) NOT NULL,
  `orderno` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `tinno` varchar(20) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `approximaterate` varchar(20) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `taxamt` varchar(100) NOT NULL,
  `t5` varchar(1000) NOT NULL,
  `t14` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `return1`
--


CREATE TABLE `return1` (
  `billno` int(30) NOT NULL,
  `model` varchar(100) NOT NULL,
  `qty` double NOT NULL,
  `rate` double NOT NULL,
  `vat` double NOT NULL,
  `vatamt` double NOT NULL,
  `amtref` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return1`
--

INSERT INTO `return1` (`billno`, `model`, `qty`, `rate`, `vat`, `vatamt`, `amtref`) VALUES
(1, 'CS4001', 1, 200, 14.5, 25.327510917031, 225.32751091703);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `billno` int(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `service` varchar(100) NOT NULL,
  `nc` varchar(3000) NOT NULL,
  `quantity` int(10) NOT NULL,
  `rate` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `servicebilling`
--

CREATE TABLE `servicebilling` (
  `billno` int(20) NOT NULL,
  `date` varchar(15) NOT NULL,
  `partyname` varchar(20) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `city` varchar(30) NOT NULL,
  `grandtotal` double NOT NULL,
  `amtpaid` double NOT NULL,
  `balance` double NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'pending',
  `word` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `type_of_material` varchar(100) NOT NULL,
  `cp` int(10) NOT NULL,
  `sp` int(10) NOT NULL,
  `open` int(5) NOT NULL,
  `close` int(5) NOT NULL,
  `tax` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `date`, `product_name`, `type_of_material`, `cp`, `sp`, `open`, `close`, `tax`) VALUES
(1, '2016-11-23', 'manna', 'honna', 100, 110, 1, 1, 0),
(2, '2016-11-23', 'CS1001', 'PILLLAR TAP', 100, 120, 12, 12, 0),
(3, '2016-11-23', 'CS1001', 'PILLLAR TAP', 100, 150, 12, 12, 0),
(4, '2016-11-23', 'Garments', 'Pants', 100, 150, 96, 96, 0),
(5, '2016-11-23', 'textiles', 'lungi', 100, 150, 10, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock1`
--

CREATE TABLE `stock1` (
  `date` date NOT NULL,
  `model` varchar(100) NOT NULL,
  `cp` int(10) NOT NULL,
  `sp` int(10) NOT NULL,
  `open` int(5) NOT NULL,
  `close` int(5) NOT NULL,
  `tax` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock1`
--

INSERT INTO `stock1` (`date`, `model`, `cp`, `sp`, `open`, `close`, `tax`) VALUES
('2016-11-21', 'power looms', 100, 0, 14, 14, 1),
('2016-11-17', 'hand looms', 120, 0, 2, 2, 0),
('2016-11-17', 'local', 200, 0, 2, 2, 0),
('2016-11-21', 'power looms', 100, 0, 14, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `varyexp`
--

CREATE TABLE `varyexp` (
  `date` date NOT NULL,
  `amount` double NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `varyexp`
--

INSERT INTO `varyexp` (`date`, `amount`, `description`) VALUES
('2016-10-17', 100, 'cash for tae   '),
('2016-11-21', 37, '   ncjn');
