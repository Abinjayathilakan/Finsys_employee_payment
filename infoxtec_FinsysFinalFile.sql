-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 02, 2023 at 08:28 AM
-- Server version: 5.7.43-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infoxtec_FinsysFinalFile`
--

-- --------------------------------------------------------

--
-- Table structure for table `app1_accounts`
--

CREATE TABLE `app1_accounts` (
  `accountsid` int(11) NOT NULL,
  `acctype` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `gst` varchar(100) DEFAULT NULL,
  `deftaxcode` varchar(100) NOT NULL,
  `balance` double DEFAULT NULL,
  `asof` date NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_accounts1`
--

CREATE TABLE `app1_accounts1` (
  `accounts1id` int(11) NOT NULL,
  `acctype` varchar(100) DEFAULT NULL,
  `detype` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `gst` varchar(100) DEFAULT NULL,
  `deftaxcode` varchar(100) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `dbbalance` double DEFAULT NULL,
  `asof` date DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_accounts1`
--

INSERT INTO `app1_accounts1` (`accounts1id`, `acctype`, `detype`, `name`, `description`, `gst`, `deftaxcode`, `balance`, `dbbalance`, `asof`, `status`, `cid_id`) VALUES
(1, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(2, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(3, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(4, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(5, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(6, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(7, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(8, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(9, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(10, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(11, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(12, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(13, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(14, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(15, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(16, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(17, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(18, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(19, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(20, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(21, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(22, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(23, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(24, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(25, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(26, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(27, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(28, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(29, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(30, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(31, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(32, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(33, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(34, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(35, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(36, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(37, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(38, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(39, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(40, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(41, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(42, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(43, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(44, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(45, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(46, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(47, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(48, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(49, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(50, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(51, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(52, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(53, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(54, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(55, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(56, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(57, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(58, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(59, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(60, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(61, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(62, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(63, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(64, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(65, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(66, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(67, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(68, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(69, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(70, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(71, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(72, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(73, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(74, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(75, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(76, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(77, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(78, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(79, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(80, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(81, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(82, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(83, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(84, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(85, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(86, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(87, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(88, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(89, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(90, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(91, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(92, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(93, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(94, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(95, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(96, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(97, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(98, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(99, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(100, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(101, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(102, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(103, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(104, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(105, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(106, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(107, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(108, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(109, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(110, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(111, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(112, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(113, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(114, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(115, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(116, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(117, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(118, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(119, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(120, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(121, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(122, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(123, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(124, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(125, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(126, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(127, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(128, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(129, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(130, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(131, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(132, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(133, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(134, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(135, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(136, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(137, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(138, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(139, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(140, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(141, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(142, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(143, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(144, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(145, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(146, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(147, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(148, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(149, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(150, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(151, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(152, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(153, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(154, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(155, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(156, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(157, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(158, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(159, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(160, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(161, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(162, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(163, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(164, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-10-10', 'Active', 1),
(165, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(166, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-10', 'Active', 1),
(167, 'Bank', NULL, 'SBI', '', NULL, '', 0, 0, '2023-10-10', 'Active', 2),
(168, 'Bank', NULL, 'SBI', 'fghjh', 'Paid Insurance', '0% IGST', 0, 0, '2023-10-10', 'Active', 2),
(169, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', -124356, 0, '2023-10-11', 'Active', 2),
(170, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(171, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(172, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(173, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(174, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(175, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(176, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(177, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(178, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(179, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(180, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(181, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(182, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(183, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', -138200, 0, '2023-10-11', 'Active', 2),
(184, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(185, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(186, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(187, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(188, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(189, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(190, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', -3538, 0, '2023-10-11', 'Active', 2),
(191, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(192, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', -4464, 0, '2023-10-11', 'Active', 2),
(193, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(194, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(195, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(196, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(197, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(198, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', -3538, 0, '2023-10-11', 'Active', 2),
(199, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(200, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(201, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(202, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(203, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 1755.5, 0, '2023-10-11', 'Active', 2),
(204, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(205, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(206, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 3142, 0, '2023-10-11', 'Active', 2),
(207, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(208, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(209, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(210, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(211, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(212, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 1755.5, 0, '2023-10-11', 'Active', 2),
(213, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(214, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(215, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(216, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(217, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(218, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(219, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(220, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(221, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(222, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(223, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(224, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 8000, 0, '2023-10-11', 'Active', 2),
(225, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(226, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(227, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(228, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(229, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', -111356, 0, '2023-10-11', 'Active', 2),
(230, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(231, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(232, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(233, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(234, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(235, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(236, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(237, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(238, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', -138200, 0, '2023-10-11', 'Active', 2),
(239, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(240, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(241, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(242, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(243, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(244, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(245, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(246, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(247, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(248, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(249, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(250, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(251, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(252, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(253, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(254, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(255, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(256, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(257, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(258, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(259, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(260, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(261, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(262, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(263, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(264, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 8000, 0, '2023-10-11', 'Active', 2),
(265, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(266, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(267, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(268, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(269, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(270, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(271, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(272, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(273, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(274, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(275, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(276, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(277, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(278, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(279, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(280, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(281, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(282, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(283, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(284, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(285, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(286, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(287, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(288, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(289, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(290, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(291, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(292, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(293, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(294, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(295, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(296, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(297, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(298, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(299, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(300, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(301, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(302, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(303, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(304, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(305, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(306, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(307, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(308, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(309, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(310, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(311, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(312, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(313, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(314, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(315, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(316, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(317, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(318, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(319, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(320, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(321, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(322, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(323, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-10-11', 'Active', 2);
INSERT INTO `app1_accounts1` (`accounts1id`, `acctype`, `detype`, `name`, `description`, `gst`, `deftaxcode`, `balance`, `dbbalance`, `asof`, `status`, `cid_id`) VALUES
(324, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(325, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(326, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(327, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(328, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(329, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(330, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(331, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(332, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-10-11', 'Active', 2),
(333, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(334, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-11', 'Active', 2),
(335, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(336, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(337, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(338, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(339, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(340, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(341, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(342, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(343, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(344, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(345, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(346, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(347, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(348, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(349, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', -4908, 0, '2023-10-16', 'Active', 55),
(350, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(351, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(352, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(353, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(354, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(355, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(356, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', -17.85, 0, '2023-10-16', 'Active', 55),
(357, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(358, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', -101.1, 0, '2023-10-16', 'Active', 55),
(359, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(360, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(361, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(362, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(363, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(364, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', -17.85, 0, '2023-10-16', 'Active', 55),
(365, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(366, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(367, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(368, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(369, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(370, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(371, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(372, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(373, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(374, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(375, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(376, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(377, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(378, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(379, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(380, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(381, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(382, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(383, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(384, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(385, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(386, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(387, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(388, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(389, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(390, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(391, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(392, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(393, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(394, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(395, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(396, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(397, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(398, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(399, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(400, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(401, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(402, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(403, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(404, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', -4908, 0, '2023-10-16', 'Active', 55),
(405, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(406, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(407, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(408, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(409, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(410, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(411, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(412, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(413, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(414, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(415, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(416, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(417, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(418, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(419, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(420, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(421, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(422, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(423, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(424, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(425, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(426, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(427, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(428, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(429, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(430, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(431, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(432, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(433, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(434, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(435, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(436, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(437, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(438, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(439, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(440, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(441, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(442, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(443, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(444, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(445, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(446, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(447, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(448, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(449, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(450, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(451, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(452, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(453, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(454, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(455, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(456, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(457, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(458, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(459, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(460, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(461, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(462, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(463, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(464, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(465, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(466, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(467, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(468, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(469, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(470, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(471, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(472, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(473, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(474, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(475, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(476, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(477, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(478, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(479, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(480, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(481, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(482, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(483, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(484, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(485, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(486, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(487, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(488, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(489, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(490, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(491, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(492, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(493, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(494, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(495, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(496, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(497, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(498, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-10-16', 'Active', 55),
(499, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(500, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-16', 'Active', 55),
(501, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(502, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(503, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(504, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(505, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(506, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(507, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(508, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(509, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(510, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(511, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(512, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(513, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(514, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(515, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(516, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(517, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(518, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(519, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(520, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(521, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(522, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(523, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(524, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(525, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(526, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(527, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(528, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(529, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(530, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(531, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(532, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(533, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(534, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(535, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(536, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(537, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(538, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(539, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(540, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(541, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(542, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(543, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(544, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(545, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(546, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(547, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(548, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(549, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(550, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(551, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(552, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(553, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(554, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(555, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(556, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(557, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(558, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(559, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(560, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(561, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(562, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(563, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(564, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(565, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(566, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(567, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(568, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(569, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(570, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(571, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(572, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(573, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(574, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(575, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(576, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(577, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(578, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(579, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(580, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(581, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(582, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(583, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(584, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(585, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(586, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(587, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(588, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(589, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(590, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(591, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(592, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(593, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(594, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(595, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(596, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(597, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(598, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(599, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(600, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(601, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(602, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(603, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(604, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(605, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(606, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(607, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(608, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(609, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(610, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(611, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(612, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(613, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(614, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(615, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(616, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(617, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(618, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(619, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(620, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(621, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(622, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(623, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(624, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(625, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(626, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(627, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(628, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(629, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(630, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(631, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(632, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(633, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(634, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(635, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(636, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(637, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(638, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(639, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(640, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(641, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(642, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(643, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-10-17', 'Active', 56);
INSERT INTO `app1_accounts1` (`accounts1id`, `acctype`, `detype`, `name`, `description`, `gst`, `deftaxcode`, `balance`, `dbbalance`, `asof`, `status`, `cid_id`) VALUES
(644, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(645, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(646, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(647, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(648, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(649, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(650, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(651, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(652, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(653, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(654, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(655, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(656, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(657, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(658, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(659, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(660, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(661, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(662, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(663, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(664, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-10-17', 'Active', 56),
(665, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(666, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-17', 'Active', 56),
(667, 'Bank', NULL, 'Abin', 'ghh', NULL, '5.0% GST', 13000, 0, '2023-10-18', 'Active', 40),
(668, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', -13000, 0, '2023-10-18', 'Active', 40),
(669, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(670, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(671, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(672, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(673, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(674, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(675, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(676, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(677, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(678, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(679, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(680, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(681, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(682, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', -8435, 0, '2023-10-18', 'Active', 40),
(683, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(684, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(685, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(686, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(687, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(688, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(689, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(690, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(691, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(692, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(693, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(694, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(695, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(696, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(697, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(698, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(699, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(700, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(701, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(702, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(703, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(704, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(705, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(706, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(707, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(708, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(709, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(710, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(711, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(712, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(713, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(714, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(715, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(716, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(717, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(718, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(719, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(720, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(721, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(722, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(723, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 135, 0, '2023-10-18', 'Active', 40),
(724, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 500, 0, '2023-10-18', 'Active', 40),
(725, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(726, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(727, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(728, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(729, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(730, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(731, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(732, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(733, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(734, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(735, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(736, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(737, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(738, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(739, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(740, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(741, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(742, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(743, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(744, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(745, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(746, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(747, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(748, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(749, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(750, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(751, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(752, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(753, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(754, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(755, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(756, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(757, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(758, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(759, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(760, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(761, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(762, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(763, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(764, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(765, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(766, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(767, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(768, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(769, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(770, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(771, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(772, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(773, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(774, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(775, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(776, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(777, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(778, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(779, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(780, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(781, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(782, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(783, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(784, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(785, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(786, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(787, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(788, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(789, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(790, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(791, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(792, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(793, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(794, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(795, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(796, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(797, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(798, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(799, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(800, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(801, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(802, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(803, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(804, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(805, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(806, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(807, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(808, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(809, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(810, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(811, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(812, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(813, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(814, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(815, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(816, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(817, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(818, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(819, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(820, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(821, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(822, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(823, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(824, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(825, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(826, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(827, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(828, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(829, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(830, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(831, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-10-18', 'Active', 40),
(832, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(833, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-18', 'Active', 40),
(834, 'Liability', 'Other Liability', 'Timber', 'kuyjgfhg', '', NULL, 2000, 1000, '2023-10-02', 'Active', 40),
(835, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', -74967, 0, '2023-10-18', 'Active', 57),
(836, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(837, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(838, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(839, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(840, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(841, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(842, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(843, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(844, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(845, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(846, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(847, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(848, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(849, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(850, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(851, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(852, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(853, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(854, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(855, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(856, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(857, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(858, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(859, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(860, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(861, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(862, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(863, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(864, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(865, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(866, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(867, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(868, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(869, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(870, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(871, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(872, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(873, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(874, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(875, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(876, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(877, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(878, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(879, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(880, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(881, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(882, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(883, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(884, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(885, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(886, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(887, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(888, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(889, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(890, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(891, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(892, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(893, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(894, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(895, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', -74967, 0, '2023-10-18', 'Active', 57),
(896, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(897, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(898, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(899, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(900, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(901, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(902, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(903, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(904, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(905, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(906, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(907, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(908, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(909, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(910, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(911, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(912, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(913, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(914, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(915, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(916, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(917, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(918, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(919, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(920, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(921, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(922, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(923, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(924, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(925, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(926, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(927, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(928, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(929, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(930, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(931, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(932, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(933, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(934, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(935, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(936, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(937, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(938, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(939, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(940, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(941, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(942, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(943, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(944, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(945, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(946, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(947, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(948, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(949, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(950, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(951, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(952, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(953, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(954, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(955, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(956, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(957, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(958, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(959, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(960, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(961, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(962, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(963, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(964, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(965, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-10-18', 'Active', 57);
INSERT INTO `app1_accounts1` (`accounts1id`, `acctype`, `detype`, `name`, `description`, `gst`, `deftaxcode`, `balance`, `dbbalance`, `asof`, `status`, `cid_id`) VALUES
(966, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(967, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(968, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(969, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(970, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(971, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(972, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(973, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(974, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(975, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(976, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(977, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(978, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(979, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(980, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(981, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(982, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(983, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(984, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(985, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(986, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(987, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(988, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(989, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(990, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(991, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(992, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(993, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(994, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(995, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(996, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(997, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(998, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-10-18', 'Active', 57),
(999, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(1000, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-18', 'Active', 57),
(1001, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1002, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1003, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1004, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1005, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1006, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1007, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1008, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1009, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1010, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1011, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1012, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1013, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1014, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1015, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', -4708, 0, '2023-10-19', 'Active', 58),
(1016, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1017, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1018, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1019, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1020, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1021, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1022, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1023, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1024, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', -107.7, 0, '2023-10-19', 'Active', 58),
(1025, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1026, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1027, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1028, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1029, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1030, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1031, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1032, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1033, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1034, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1035, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1036, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1037, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1038, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1039, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1040, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1041, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1042, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1043, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1044, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1045, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1046, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1047, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1048, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1049, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1050, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1051, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1052, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1053, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1054, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1055, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1056, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1057, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1058, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1059, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1060, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1061, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1062, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1063, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1064, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1065, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1066, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1067, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1068, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1069, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1070, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', -4708, 0, '2023-10-19', 'Active', 58),
(1071, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1072, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1073, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1074, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1075, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1076, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1077, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1078, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1079, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1080, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1081, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1082, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1083, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1084, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1085, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1086, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1087, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1088, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1089, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1090, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1091, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1092, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1093, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1094, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1095, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1096, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1097, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1098, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1099, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1100, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1101, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1102, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1103, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1104, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1105, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1106, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1107, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1108, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1109, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1110, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1111, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1112, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1113, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1114, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1115, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1116, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1117, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1118, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1119, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1120, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1121, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1122, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1123, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1124, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1125, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1126, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1127, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1128, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1129, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1130, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1131, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1132, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1133, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1134, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1135, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1136, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1137, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1138, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1139, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1140, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1141, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1142, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1143, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1144, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1145, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1146, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1147, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1148, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1149, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1150, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1151, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1152, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1153, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1154, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1155, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1156, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1157, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1158, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1159, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1160, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1161, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1162, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1163, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1164, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1165, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1166, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-19', 'Active', 58),
(1167, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1168, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1169, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1170, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1171, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1172, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1173, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1174, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1175, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1176, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1177, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1178, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1179, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1180, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1181, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', -1612, 0, '2023-10-19', 'Active', 59),
(1182, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1183, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1184, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1185, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1186, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1187, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1188, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1189, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1190, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', -43.98, 0, '2023-10-19', 'Active', 59),
(1191, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1192, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1193, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1194, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1195, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1196, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1197, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1198, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1199, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1200, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1201, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1202, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1203, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1204, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1205, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1206, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1207, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1208, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1209, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1210, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1211, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1212, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1213, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1214, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1215, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1216, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1217, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1218, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1219, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1220, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1221, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1222, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1223, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1224, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1225, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1226, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1227, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1228, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1229, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1230, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1231, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1232, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1233, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1234, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1235, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1236, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', -1612, 0, '2023-10-19', 'Active', 59),
(1237, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1238, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1239, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1240, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1241, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1242, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1243, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1244, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1245, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1246, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1247, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1248, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1249, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1250, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1251, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1252, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1253, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1254, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1255, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1256, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1257, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1258, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1259, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1260, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1261, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1262, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1263, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1264, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1265, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1266, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1267, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1268, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1269, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1270, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1271, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1272, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1273, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1274, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1275, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1276, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1277, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1278, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1279, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1280, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1281, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1282, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1283, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1284, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1285, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-10-19', 'Active', 59);
INSERT INTO `app1_accounts1` (`accounts1id`, `acctype`, `detype`, `name`, `description`, `gst`, `deftaxcode`, `balance`, `dbbalance`, `asof`, `status`, `cid_id`) VALUES
(1286, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1287, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1288, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1289, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1290, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1291, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1292, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1293, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1294, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1295, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1296, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1297, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1298, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1299, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1300, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1301, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1302, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1303, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1304, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1305, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1306, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1307, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1308, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1309, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1310, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1311, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1312, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1313, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1314, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1315, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1316, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1317, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1318, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1319, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1320, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1321, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1322, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1323, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1324, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1325, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1326, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1327, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1328, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1329, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1330, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1331, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1332, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-19', 'Active', 59),
(1333, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', -191520, 0, '2023-10-24', 'Active', 60),
(1334, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1335, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1336, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1337, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1338, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1339, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1340, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1341, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1342, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1343, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1344, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1345, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1346, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1347, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1348, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1349, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1350, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1351, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1352, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1353, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1354, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1355, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1356, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1357, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1358, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1359, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1360, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1361, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1362, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1363, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1364, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1365, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1366, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1367, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1368, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1369, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1370, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1371, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1372, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1373, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1374, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1375, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1376, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1377, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1378, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1379, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1380, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1381, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1382, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1383, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1384, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1385, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1386, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1387, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1388, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1389, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1390, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1391, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1392, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1393, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', -191520, 0, '2023-10-24', 'Active', 60),
(1394, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1395, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1396, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1397, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1398, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1399, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1400, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1401, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1402, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1403, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1404, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1405, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1406, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1407, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1408, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1409, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1410, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1411, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1412, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1413, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1414, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1415, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1416, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1417, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1418, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1419, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1420, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1421, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1422, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1423, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1424, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1425, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1426, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1427, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1428, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1429, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1430, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1431, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1432, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1433, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1434, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1435, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1436, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1437, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1438, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1439, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1440, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1441, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1442, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1443, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1444, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1445, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1446, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1447, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1448, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1449, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1450, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1451, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1452, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1453, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1454, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1455, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1456, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1457, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1458, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1459, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1460, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1461, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1462, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1463, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1464, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1465, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1466, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1467, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1468, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1469, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1470, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1471, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1472, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1473, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1474, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1475, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1476, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1477, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1478, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1479, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1480, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1481, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1482, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1483, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1484, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1485, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1486, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1487, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1488, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1489, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1490, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1491, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1492, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1493, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1494, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1495, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1496, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1497, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1498, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-24', 'Active', 60),
(1499, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1500, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1501, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1502, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1503, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1504, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1505, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1506, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1507, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1508, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1509, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1510, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1511, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1512, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1513, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', -56, 0, '2023-10-25', 'Active', 61),
(1514, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1515, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1516, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1517, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1518, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1519, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1520, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1521, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1522, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1523, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1524, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1525, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1526, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1527, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1528, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1529, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1530, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1531, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1532, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1533, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1534, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1535, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1536, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1537, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1538, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1539, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1540, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1541, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1542, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1543, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1544, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1545, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1546, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1547, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1548, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1549, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1550, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1551, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1552, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1553, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1554, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1555, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 56, 0, '2023-10-25', 'Active', 61),
(1556, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1557, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1558, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1559, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1560, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1561, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1562, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1563, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1564, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1565, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1566, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1567, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1568, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1569, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1570, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1571, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1572, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1573, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1574, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1575, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1576, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1577, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1578, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1579, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1580, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1581, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1582, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1583, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1584, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1585, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1586, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1587, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1588, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1589, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1590, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1591, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1592, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1593, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1594, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1595, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1596, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1597, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1598, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1599, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1600, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1601, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-10-25', 'Active', 61);
INSERT INTO `app1_accounts1` (`accounts1id`, `acctype`, `detype`, `name`, `description`, `gst`, `deftaxcode`, `balance`, `dbbalance`, `asof`, `status`, `cid_id`) VALUES
(1602, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1603, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1604, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1605, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1606, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1607, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1608, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1609, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1610, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1611, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1612, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1613, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1614, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1615, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1616, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1617, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1618, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1619, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1620, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1621, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1622, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1623, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1624, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1625, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1626, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1627, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1628, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1629, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1630, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1631, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1632, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1633, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1634, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1635, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1636, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1637, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1638, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1639, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1640, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1641, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1642, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1643, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1644, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1645, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1646, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1647, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1648, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1649, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1650, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1651, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1652, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1653, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1654, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1655, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1656, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1657, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1658, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1659, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1660, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1661, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1662, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1663, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1664, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-25', 'Active', 61),
(1665, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1666, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1667, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1668, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1669, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1670, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1671, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1672, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1673, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1674, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1675, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1676, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1677, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1678, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1679, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1680, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1681, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1682, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1683, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1684, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1685, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1686, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1687, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1688, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1689, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1690, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1691, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1692, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1693, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1694, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1695, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1696, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1697, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1698, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1699, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1700, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1701, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1702, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1703, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1704, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1705, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1706, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1707, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1708, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1709, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1710, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1711, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1712, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1713, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1714, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1715, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1716, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1717, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1718, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1719, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1720, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1721, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1722, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1723, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1724, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1725, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1726, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1727, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1728, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1729, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1730, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1731, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1732, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1733, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1734, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1735, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1736, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1737, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1738, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1739, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1740, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1741, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1742, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1743, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1744, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1745, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1746, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1747, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1748, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1749, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1750, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1751, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1752, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1753, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1754, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1755, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1756, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1757, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1758, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1759, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1760, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1761, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1762, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1763, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1764, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1765, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1766, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1767, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1768, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1769, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1770, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1771, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1772, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1773, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1774, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1775, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1776, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1777, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1778, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1779, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1780, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1781, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1782, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1783, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1784, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1785, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1786, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1787, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1788, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1789, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1790, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1791, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1792, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1793, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1794, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1795, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1796, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1797, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1798, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1799, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1800, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1801, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1802, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1803, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1804, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1805, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1806, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1807, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1808, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1809, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1810, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1811, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1812, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1813, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1814, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1815, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1816, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1817, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1818, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1819, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1820, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1821, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1822, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1823, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1824, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1825, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1826, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1827, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1828, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1829, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1830, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-28', 'Active', 62),
(1831, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1832, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1833, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1834, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1835, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1836, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1837, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1838, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1839, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1840, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1841, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1842, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1843, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1844, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1845, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1846, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1847, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1848, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1849, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1850, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1851, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1852, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1853, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1854, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1855, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1856, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1857, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1858, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1859, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1860, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1861, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1862, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1863, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1864, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1865, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1866, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1867, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1868, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1869, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1870, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1871, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1872, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1873, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1874, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1875, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1876, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1877, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1878, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1879, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1880, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1881, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1882, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1883, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1884, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1885, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1886, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1887, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1888, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1889, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1890, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1891, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1892, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1893, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1894, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1895, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1896, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1897, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1898, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1899, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1900, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1901, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1902, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1903, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1904, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1905, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1906, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1907, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1908, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1909, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1910, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1911, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1912, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1913, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1914, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1915, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1916, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1917, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-10-31', 'Active', 63);
INSERT INTO `app1_accounts1` (`accounts1id`, `acctype`, `detype`, `name`, `description`, `gst`, `deftaxcode`, `balance`, `dbbalance`, `asof`, `status`, `cid_id`) VALUES
(1918, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1919, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1920, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1921, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1922, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1923, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1924, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1925, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1926, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1927, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1928, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1929, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1930, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1931, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1932, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1933, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1934, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1935, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1936, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1937, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1938, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1939, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1940, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1941, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1942, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1943, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1944, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1945, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1946, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1947, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1948, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1949, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1950, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1951, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1952, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1953, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1954, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1955, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1956, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1957, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1958, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1959, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1960, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1961, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1962, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1963, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1964, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1965, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1966, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1967, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1968, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1969, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1970, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1971, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1972, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1973, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1974, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1975, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1976, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1977, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1978, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1979, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1980, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1981, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1982, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1983, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1984, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1985, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1986, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1987, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1988, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1989, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1990, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1991, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1992, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1993, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1994, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1995, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1996, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-31', 'Active', 63),
(1997, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(1998, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(1999, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2000, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2001, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2002, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2003, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2004, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2005, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2006, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2007, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2008, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2009, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2010, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2011, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', -2462, 0, '2023-10-31', 'Active', 64),
(2012, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2013, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2014, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2015, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2016, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2017, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2018, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2019, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2020, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', -71.7, 0, '2023-10-31', 'Active', 64),
(2021, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2022, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2023, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2024, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2025, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2026, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2027, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2028, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2029, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2030, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2031, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2032, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2033, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2034, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2035, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2036, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2037, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2038, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2039, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2040, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2041, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2042, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2043, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2044, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2045, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2046, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2047, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2048, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2049, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2050, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2051, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2052, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2053, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2054, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2055, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2056, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2057, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2058, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2059, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2060, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2061, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2062, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2063, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2064, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2065, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2066, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', -2462, 0, '2023-10-31', 'Active', 64),
(2067, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2068, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2069, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2070, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2071, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2072, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2073, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2074, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2075, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2076, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2077, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2078, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2079, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2080, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2081, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2082, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2083, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2084, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2085, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2086, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2087, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2088, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2089, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2090, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2091, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2092, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2093, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2094, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2095, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2096, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2097, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2098, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2099, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2100, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2101, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2102, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2103, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2104, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2105, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2106, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2107, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2108, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2109, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2110, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2111, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2112, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2113, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2114, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2115, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2116, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2117, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2118, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2119, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2120, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2121, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2122, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2123, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2124, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2125, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2126, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2127, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2128, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2129, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2130, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2131, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2132, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2133, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2134, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2135, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2136, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2137, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2138, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2139, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2140, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2141, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2142, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2143, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2144, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2145, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2146, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2147, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2148, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2149, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2150, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2151, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2152, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2153, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2154, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2155, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2156, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2157, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2158, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2159, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2160, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2161, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2162, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-10-31', 'Active', 64),
(2163, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2164, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2165, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2166, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2167, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2168, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2169, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2170, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2171, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2172, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2173, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2174, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2175, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2176, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2177, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', -9095, 0, '2023-11-01', 'Active', 65),
(2178, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2179, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2180, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2181, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2182, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2183, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2184, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', -163.85, 0, '2023-11-01', 'Active', 65),
(2185, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2186, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', -35.7, 0, '2023-11-01', 'Active', 65),
(2187, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2188, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2189, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2190, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2191, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2192, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', -163.85, 0, '2023-11-01', 'Active', 65),
(2193, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2194, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2195, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2196, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2197, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2198, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2199, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2200, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2201, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2202, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2203, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2204, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2205, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2206, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2207, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2208, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2209, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2210, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2211, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2212, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2213, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2214, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2215, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2216, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2217, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2218, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2219, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2220, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2221, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2222, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2223, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2224, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2225, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2226, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2227, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2228, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2229, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2230, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2231, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2232, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', -9095, 0, '2023-11-01', 'Active', 65),
(2233, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-11-01', 'Active', 65);
INSERT INTO `app1_accounts1` (`accounts1id`, `acctype`, `detype`, `name`, `description`, `gst`, `deftaxcode`, `balance`, `dbbalance`, `asof`, `status`, `cid_id`) VALUES
(2234, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2235, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2236, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2237, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2238, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2239, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2240, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2241, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2242, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2243, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2244, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2245, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2246, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2247, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2248, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2249, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2250, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2251, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2252, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2253, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2254, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2255, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2256, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2257, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2258, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2259, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2260, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2261, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2262, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2263, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2264, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2265, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2266, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2267, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2268, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2269, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2270, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2271, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2272, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2273, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2274, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2275, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2276, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2277, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2278, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2279, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2280, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2281, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2282, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2283, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2284, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2285, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2286, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2287, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2288, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2289, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2290, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2291, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2292, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2293, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2294, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2295, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2296, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2297, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2298, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2299, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2300, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2301, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2302, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2303, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2304, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2305, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2306, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2307, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2308, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2309, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2310, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2311, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2312, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2313, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2314, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2315, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2316, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2317, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2318, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2319, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2320, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2321, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2322, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2323, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2324, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2325, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2326, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2327, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2328, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-11-01', 'Active', 65),
(2329, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2330, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2331, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2332, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2333, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2334, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2335, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2336, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2337, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2338, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2339, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2340, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2341, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2342, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2343, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', -3927, 0, '2023-11-01', 'Active', 66),
(2344, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2345, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2346, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2347, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2348, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2349, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2350, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', -17.85, 0, '2023-11-01', 'Active', 66),
(2351, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2352, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', -119.5, 0, '2023-11-01', 'Active', 66),
(2353, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2354, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2355, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2356, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2357, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2358, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', -17.85, 0, '2023-11-01', 'Active', 66),
(2359, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2360, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2361, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2362, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2363, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2364, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2365, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2366, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2367, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2368, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2369, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2370, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2371, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2372, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2373, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2374, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2375, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2376, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2377, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2378, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2379, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2380, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2381, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2382, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2383, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2384, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2385, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2386, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2387, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2388, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2389, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2390, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2391, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2392, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2393, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2394, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2395, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2396, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2397, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2398, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', -3927, 0, '2023-11-01', 'Active', 66),
(2399, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2400, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2401, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2402, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2403, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2404, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2405, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2406, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2407, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2408, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2409, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2410, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2411, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2412, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2413, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2414, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2415, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2416, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2417, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2418, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2419, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2420, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2421, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2422, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2423, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2424, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2425, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2426, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2427, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2428, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2429, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2430, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2431, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2432, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2433, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2434, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2435, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2436, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2437, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2438, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2439, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2440, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2441, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2442, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2443, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2444, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2445, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2446, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2447, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2448, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2449, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2450, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2451, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2452, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2453, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2454, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2455, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2456, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2457, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2458, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2459, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2460, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2461, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2462, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2463, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2464, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2465, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2466, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2467, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2468, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2469, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2470, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2471, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2472, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2473, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2474, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2475, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2476, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2477, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2478, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2479, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2480, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2481, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2482, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2483, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2484, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2485, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2486, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2487, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2488, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2489, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2490, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2491, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2492, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2493, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2494, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-11-01', 'Active', 66),
(2495, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2496, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2497, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2498, 'Current Assets', 'Inventory', 'Inventory Asset', 'An account which tracks the value of goods in your inventory.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2499, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2500, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2501, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2502, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2503, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2504, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2505, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2506, 'Fixed Assets', 'Land', 'Land', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2507, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2508, 'Fixed Assets', 'Vehicles', 'Vehicles', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2509, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2510, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2511, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2512, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2513, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2514, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2515, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2516, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2517, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2518, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2519, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2520, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2521, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2522, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2523, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2524, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2525, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2526, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2527, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2528, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2529, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2530, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2531, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2532, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2533, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2534, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2535, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2536, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2537, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2538, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2539, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2540, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2541, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2542, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2543, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2544, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2545, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2546, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 67);
INSERT INTO `app1_accounts1` (`accounts1id`, `acctype`, `detype`, `name`, `description`, `gst`, `deftaxcode`, `balance`, `dbbalance`, `asof`, `status`, `cid_id`) VALUES
(2547, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2548, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2549, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2550, 'Cash', 'Cash', 'Petty Cash', ' It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2551, 'Cash', 'Cash', 'Undeposited Funds', ' Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2552, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2553, 'Income', 'Service/Fee Income', 'Consulting Income', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2554, 'Income', 'Sales of Product Income', 'Product Sales', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2555, 'Income', 'Sales of Product Income', 'Sales', 'The income from the sales in your business is recorded under the sales account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2556, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2557, 'Income', 'Sales of Product Income', 'Sales-Software', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2558, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2559, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2560, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2561, 'Income', 'Service/Fee Income', 'Services', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2562, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2563, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2564, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Cost of Goods Sold', ' An expense account which tracks the value of the goods sold.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2565, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2566, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2567, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2568, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2569, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2570, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2571, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2572, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2573, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2574, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2575, 'Expenses', 'Bank Charges', 'Bank Charges', 'Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2576, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2577, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2578, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', ' Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2579, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2580, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', ' Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2581, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2582, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2583, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2584, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2585, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2586, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2587, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2588, 'Expenses', 'Interest Paid', 'Interest Expenses', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2589, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', ' Expenses on food and entertainment are recorded into this account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2590, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2591, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2592, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2593, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2594, 'Expenses', 'Suppliers and Materials', 'Purchases', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2595, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2596, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2597, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2598, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2599, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2600, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2601, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2602, 'Expenses', 'Utilities', 'Utilities', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2603, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2604, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2605, 'Other Income', 'Interest Earned', 'Interest Income', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2606, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2607, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', ' Shipping charges made to the invoice will be recorded in this account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2608, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2609, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2610, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2611, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2612, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2613, 'Asset', 'Other Current Asset', 'Advance Tax', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2614, 'Expense', 'Expense', 'Automobile Expense', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2615, 'Expense', 'Expense', 'Bad Debt', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2616, 'Expense', 'Expense', 'Consultant Expense', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2617, 'Expense', 'Expense', 'Credit Card Charges', 'Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2618, 'Income', 'Income', 'Discount', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2619, 'Equity', 'Equity', 'Drawings', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2620, 'Asset', 'Other Current Asset', 'Employee Advance', ' Money paid out to an employee in advance can be tracked here till its repaid or shown to be spent for company purposes.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2621, 'Liability', 'Other Current Liability', 'Employee Reimbursements', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2622, 'Expense', 'Other Expense', 'Exchange Gain or Loss', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2623, 'Income', 'Income', 'General Income', 'A general category of account where you can record any income which cannot be recorded into any other category.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2624, 'Expense', 'Expense', 'Janitorial Expense', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2625, 'Income', 'Income', 'Late Fee Income', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2626, 'Expense', 'Expense', 'Lodging', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2627, 'Liability', 'Other Current Liability', 'Opening Balance Adjustments', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2628, 'Equity', 'Equity', 'Opening Balance Offset', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2629, 'Income', 'Income', 'Other Charges', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2630, 'Expense', 'Expense', 'Other Expenses', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2631, 'Equity', 'Equity', 'Owners Equity', 'The owners rights to the assets of a company can be quantified in the owners equity account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2632, 'Expense', 'Expense', 'Postage', ' Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2633, 'Expense', 'Expense', 'Printing and Stationery', 'Expenses incurred by the organization towards printing and stationery.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2634, 'Equity', 'Equity', 'Retained Earnings', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2635, 'Expense', 'Expense', 'Salaries and Employee Wages', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2636, 'Liability', 'Other Liability', 'Tag Adjustments', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2637, 'Liability', 'Other Current Liability', 'Tax Payable', ' The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2638, 'Expense', 'Expense', 'Telephone Expense', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2639, 'Expense', 'Expense', 'Uncategorized', ' This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2640, 'Liability', 'Other Current Liability', 'Unearned Revenue', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2641, 'Equity', 'Equity', 'Capital Stock', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2642, 'Liability', 'Long Term Liability', 'Construction Loans', ' An expense account that tracks the amount you repay for construction loans.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2643, 'Expense', 'Expense', 'Contract Assets', ' An asset account to track the amount that you receive from your customers while you are yet to complete rendering the services.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2644, 'Expense', 'Expense', 'Depreciation And Amortisation', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2645, 'Equity', 'Equity', 'Distributions', ' An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2646, 'Equity', 'Equity', 'Dividends Paid', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2647, 'Asset', 'Other Current Asset', 'GST TCS Receivable', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2648, 'Asset', 'Other Current Asset', 'GST TDS Receivable', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2649, 'Asset', 'Other Current Asset', 'Input Tax Credits', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2650, 'Equity', 'Equity', 'Investments', ' An equity account used to track the amount that you invest.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2651, 'Expense', 'Cost Of Goods Sold', 'Job Costing', ' An expense account to track the costs that you incur in performing a job or a task.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2652, 'Expense', 'Cost Of Goods Sold', 'Labor', ' An expense account that tracks the amount that you pay as labor.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2653, 'Expense', 'Cost Of Goods Sold', 'Materials', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2654, 'Expense', 'Expense', 'Merchandise', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2655, 'Liability', 'Long Term Liability', 'Mortgages', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2656, 'Expense', 'Expense', 'Raw Materials And Consumables', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2657, 'Asset', 'Other Current Asset', 'Reverse Charge Tax Input but not due', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2658, 'Asset', 'Other Current Asset', 'Sales to Customers (Cash)', '', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2659, 'Expense', 'Cost Of Goods Sold', 'Subcontractor', 'An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 0, 0, '2023-11-01', 'Active', 67),
(2660, 'Expense', 'Expense', 'Transportation Expense', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 0, 0, '2023-11-01', 'Active', 67);

-- --------------------------------------------------------

--
-- Table structure for table `app1_accountype`
--

CREATE TABLE `app1_accountype` (
  `accountypeid` int(11) NOT NULL,
  `accountname` varchar(100) NOT NULL,
  `accountbal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_accountype`
--

INSERT INTO `app1_accountype` (`accountypeid`, `accountname`, `accountbal`, `cid_id`) VALUES
(1, 'Deferred CGST', '', 1),
(2, 'Deferred GST Input Credit', '', 1),
(3, 'Deferred IGST', '', 1),
(4, 'Deferred Krishi Kalyan Cess Input Credit', '', 1),
(5, 'Deferred Service Tax Input Credit', '', 1),
(6, 'Deferred SGST', '', 1),
(7, 'Deferred VAT Input Credit', '', 1),
(8, 'GST Refund', '', 1),
(9, 'Inventory Asset', '', 1),
(10, 'Paid Insurance', '', 1),
(11, 'Service Tax Refund', '', 1),
(12, 'TDS Receivable', '', 1),
(13, 'Uncategorised Asset', '', 1),
(14, 'Accumulated Depreciation', '', 1),
(15, 'Buildings and Improvements', '', 1),
(16, 'Furniture and Equipments', '', 1),
(17, 'Land', '', 1),
(18, 'Leasehold Improvements', '', 1),
(19, 'Vehicles', '', 1),
(20, 'CGST Payable', '', 1),
(21, 'CST Payable', '', 1),
(22, 'CST Suspense', '', 1),
(23, 'GST Payable', '', 1),
(24, 'GST Suspense', '', 1),
(25, 'IGST Payable', '', 1),
(26, 'Input CGST', '', 1),
(27, 'Input CGST Tax RCM', '', 1),
(28, 'Input IGST', '', 1),
(29, 'Input IGST Tax RCM', '', 1),
(30, 'Input Krishi Kalyan Cess', '', 1),
(31, 'Input Krishi Kalyan Cess RCM', '', 1),
(32, 'Input Service Tax', '', 1),
(33, 'Input Service Tax RCM', '', 1),
(34, 'Input SGST', '', 1),
(35, 'Input SGST Tax RCM', '', 1),
(36, 'Input VAT 14 %', '', 1),
(37, 'Input VAT 4%', '', 1),
(38, 'Input VAT 5%', '', 1),
(39, 'Krishi Kalyan Cess Payable', '', 1),
(40, 'Krishi Kalyan Cess Suspense', '', 1),
(41, 'Output CGST', '', 1),
(42, 'Output CGST Tax RCM', '', 1),
(43, 'Output CST 2%', '', 1),
(44, 'Output IGST', '', 1),
(45, 'Output IGST Tax RCM', '', 1),
(46, 'Output Krishi Kalyan Cess', '', 1),
(47, 'Output Krishi Kalyan Cess RCM', '', 1),
(48, 'Output Service Tax', '', 1),
(49, 'Output Service Tax RCM', '', 1),
(50, 'Output SGST', '', 1),
(51, 'Output SGST Tax RCM', '', 1),
(52, 'Output VAT 14%', '', 1),
(53, 'Output VAT 4%', '', 1),
(54, 'Output VAT 5%', '', 1),
(55, 'Service Tax Payable', '', 1),
(56, 'Service Tax Suspense', '', 1),
(57, 'SGST Payable', '', 1),
(58, 'SGST Suspense', '', 1),
(59, 'Swachh Barath Cess Payable', '', 1),
(60, 'Swachh Barath Cess Suspense', '', 1),
(61, 'TDS Payable', '', 1),
(62, 'VAT Payable', '', 1),
(63, 'VAT Suspense', '', 1),
(64, 'SBI', '0', 2),
(65, 'SBI', '0', 2),
(66, 'Deferred CGST', '', 55),
(67, 'Deferred GST Input Credit', '', 55),
(68, 'Deferred IGST', '', 55),
(69, 'Deferred Krishi Kalyan Cess Input Credit', '', 55),
(70, 'Deferred Service Tax Input Credit', '', 55),
(71, 'Deferred SGST', '', 55),
(72, 'Deferred VAT Input Credit', '', 55),
(73, 'GST Refund', '', 55),
(74, 'Inventory Asset', '', 55),
(75, 'Paid Insurance', '', 55),
(76, 'Service Tax Refund', '', 55),
(77, 'TDS Receivable', '', 55),
(78, 'Uncategorised Asset', '', 55),
(79, 'Accumulated Depreciation', '', 55),
(80, 'Buildings and Improvements', '', 55),
(81, 'Furniture and Equipments', '', 55),
(82, 'Land', '', 55),
(83, 'Leasehold Improvements', '', 55),
(84, 'Vehicles', '', 55),
(85, 'CGST Payable', '', 55),
(86, 'CST Payable', '', 55),
(87, 'CST Suspense', '', 55),
(88, 'GST Payable', '', 55),
(89, 'GST Suspense', '', 55),
(90, 'IGST Payable', '', 55),
(91, 'Input CGST', '', 55),
(92, 'Input CGST Tax RCM', '', 55),
(93, 'Input IGST', '', 55),
(94, 'Input IGST Tax RCM', '', 55),
(95, 'Input Krishi Kalyan Cess', '', 55),
(96, 'Input Krishi Kalyan Cess RCM', '', 55),
(97, 'Input Service Tax', '', 55),
(98, 'Input Service Tax RCM', '', 55),
(99, 'Input SGST', '', 55),
(100, 'Input SGST Tax RCM', '', 55),
(101, 'Input VAT 14 %', '', 55),
(102, 'Input VAT 4%', '', 55),
(103, 'Input VAT 5%', '', 55),
(104, 'Krishi Kalyan Cess Payable', '', 55),
(105, 'Krishi Kalyan Cess Suspense', '', 55),
(106, 'Output CGST', '', 55),
(107, 'Output CGST Tax RCM', '', 55),
(108, 'Output CST 2%', '', 55),
(109, 'Output IGST', '', 55),
(110, 'Output IGST Tax RCM', '', 55),
(111, 'Output Krishi Kalyan Cess', '', 55),
(112, 'Output Krishi Kalyan Cess RCM', '', 55),
(113, 'Output Service Tax', '', 55),
(114, 'Output Service Tax RCM', '', 55),
(115, 'Output SGST', '', 55),
(116, 'Output SGST Tax RCM', '', 55),
(117, 'Output VAT 14%', '', 55),
(118, 'Output VAT 4%', '', 55),
(119, 'Output VAT 5%', '', 55),
(120, 'Service Tax Payable', '', 55),
(121, 'Service Tax Suspense', '', 55),
(122, 'SGST Payable', '', 55),
(123, 'SGST Suspense', '', 55),
(124, 'Swachh Barath Cess Payable', '', 55),
(125, 'Swachh Barath Cess Suspense', '', 55),
(126, 'TDS Payable', '', 55),
(127, 'VAT Payable', '', 55),
(128, 'VAT Suspense', '', 55),
(129, 'Deferred CGST', '', 56),
(130, 'Deferred GST Input Credit', '', 56),
(131, 'Deferred IGST', '', 56),
(132, 'Deferred Krishi Kalyan Cess Input Credit', '', 56),
(133, 'Deferred Service Tax Input Credit', '', 56),
(134, 'Deferred SGST', '', 56),
(135, 'Deferred VAT Input Credit', '', 56),
(136, 'GST Refund', '', 56),
(137, 'Inventory Asset', '', 56),
(138, 'Paid Insurance', '', 56),
(139, 'Service Tax Refund', '', 56),
(140, 'TDS Receivable', '', 56),
(141, 'Uncategorised Asset', '', 56),
(142, 'Accumulated Depreciation', '', 56),
(143, 'Buildings and Improvements', '', 56),
(144, 'Furniture and Equipments', '', 56),
(145, 'Land', '', 56),
(146, 'Leasehold Improvements', '', 56),
(147, 'Vehicles', '', 56),
(148, 'CGST Payable', '', 56),
(149, 'CST Payable', '', 56),
(150, 'CST Suspense', '', 56),
(151, 'GST Payable', '', 56),
(152, 'GST Suspense', '', 56),
(153, 'IGST Payable', '', 56),
(154, 'Input CGST', '', 56),
(155, 'Input CGST Tax RCM', '', 56),
(156, 'Input IGST', '', 56),
(157, 'Input IGST Tax RCM', '', 56),
(158, 'Input Krishi Kalyan Cess', '', 56),
(159, 'Input Krishi Kalyan Cess RCM', '', 56),
(160, 'Input Service Tax', '', 56),
(161, 'Input Service Tax RCM', '', 56),
(162, 'Input SGST', '', 56),
(163, 'Input SGST Tax RCM', '', 56),
(164, 'Input VAT 14 %', '', 56),
(165, 'Input VAT 4%', '', 56),
(166, 'Input VAT 5%', '', 56),
(167, 'Krishi Kalyan Cess Payable', '', 56),
(168, 'Krishi Kalyan Cess Suspense', '', 56),
(169, 'Output CGST', '', 56),
(170, 'Output CGST Tax RCM', '', 56),
(171, 'Output CST 2%', '', 56),
(172, 'Output IGST', '', 56),
(173, 'Output IGST Tax RCM', '', 56),
(174, 'Output Krishi Kalyan Cess', '', 56),
(175, 'Output Krishi Kalyan Cess RCM', '', 56),
(176, 'Output Service Tax', '', 56),
(177, 'Output Service Tax RCM', '', 56),
(178, 'Output SGST', '', 56),
(179, 'Output SGST Tax RCM', '', 56),
(180, 'Output VAT 14%', '', 56),
(181, 'Output VAT 4%', '', 56),
(182, 'Output VAT 5%', '', 56),
(183, 'Service Tax Payable', '', 56),
(184, 'Service Tax Suspense', '', 56),
(185, 'SGST Payable', '', 56),
(186, 'SGST Suspense', '', 56),
(187, 'Swachh Barath Cess Payable', '', 56),
(188, 'Swachh Barath Cess Suspense', '', 56),
(189, 'TDS Payable', '', 56),
(190, 'VAT Payable', '', 56),
(191, 'VAT Suspense', '', 56),
(192, 'Abin', '0', 40),
(193, 'Deferred CGST', '', 57),
(194, 'Deferred GST Input Credit', '', 57),
(195, 'Deferred IGST', '', 57),
(196, 'Deferred Krishi Kalyan Cess Input Credit', '', 57),
(197, 'Deferred Service Tax Input Credit', '', 57),
(198, 'Deferred SGST', '', 57),
(199, 'Deferred VAT Input Credit', '', 57),
(200, 'GST Refund', '', 57),
(201, 'Inventory Asset', '', 57),
(202, 'Paid Insurance', '', 57),
(203, 'Service Tax Refund', '', 57),
(204, 'TDS Receivable', '', 57),
(205, 'Uncategorised Asset', '', 57),
(206, 'Accumulated Depreciation', '', 57),
(207, 'Buildings and Improvements', '', 57),
(208, 'Furniture and Equipments', '', 57),
(209, 'Land', '', 57),
(210, 'Leasehold Improvements', '', 57),
(211, 'Vehicles', '', 57),
(212, 'CGST Payable', '', 57),
(213, 'CST Payable', '', 57),
(214, 'CST Suspense', '', 57),
(215, 'GST Payable', '', 57),
(216, 'GST Suspense', '', 57),
(217, 'IGST Payable', '', 57),
(218, 'Input CGST', '', 57),
(219, 'Input CGST Tax RCM', '', 57),
(220, 'Input IGST', '', 57),
(221, 'Input IGST Tax RCM', '', 57),
(222, 'Input Krishi Kalyan Cess', '', 57),
(223, 'Input Krishi Kalyan Cess RCM', '', 57),
(224, 'Input Service Tax', '', 57),
(225, 'Input Service Tax RCM', '', 57),
(226, 'Input SGST', '', 57),
(227, 'Input SGST Tax RCM', '', 57),
(228, 'Input VAT 14 %', '', 57),
(229, 'Input VAT 4%', '', 57),
(230, 'Input VAT 5%', '', 57),
(231, 'Krishi Kalyan Cess Payable', '', 57),
(232, 'Krishi Kalyan Cess Suspense', '', 57),
(233, 'Output CGST', '', 57),
(234, 'Output CGST Tax RCM', '', 57),
(235, 'Output CST 2%', '', 57),
(236, 'Output IGST', '', 57),
(237, 'Output IGST Tax RCM', '', 57),
(238, 'Output Krishi Kalyan Cess', '', 57),
(239, 'Output Krishi Kalyan Cess RCM', '', 57),
(240, 'Output Service Tax', '', 57),
(241, 'Output Service Tax RCM', '', 57),
(242, 'Output SGST', '', 57),
(243, 'Output SGST Tax RCM', '', 57),
(244, 'Output VAT 14%', '', 57),
(245, 'Output VAT 4%', '', 57),
(246, 'Output VAT 5%', '', 57),
(247, 'Service Tax Payable', '', 57),
(248, 'Service Tax Suspense', '', 57),
(249, 'SGST Payable', '', 57),
(250, 'SGST Suspense', '', 57),
(251, 'Swachh Barath Cess Payable', '', 57),
(252, 'Swachh Barath Cess Suspense', '', 57),
(253, 'TDS Payable', '', 57),
(254, 'VAT Payable', '', 57),
(255, 'VAT Suspense', '', 57),
(256, 'Deferred CGST', '', 58),
(257, 'Deferred GST Input Credit', '', 58),
(258, 'Deferred IGST', '', 58),
(259, 'Deferred Krishi Kalyan Cess Input Credit', '', 58),
(260, 'Deferred Service Tax Input Credit', '', 58),
(261, 'Deferred SGST', '', 58),
(262, 'Deferred VAT Input Credit', '', 58),
(263, 'GST Refund', '', 58),
(264, 'Inventory Asset', '', 58),
(265, 'Paid Insurance', '', 58),
(266, 'Service Tax Refund', '', 58),
(267, 'TDS Receivable', '', 58),
(268, 'Uncategorised Asset', '', 58),
(269, 'Accumulated Depreciation', '', 58),
(270, 'Buildings and Improvements', '', 58),
(271, 'Furniture and Equipments', '', 58),
(272, 'Land', '', 58),
(273, 'Leasehold Improvements', '', 58),
(274, 'Vehicles', '', 58),
(275, 'CGST Payable', '', 58),
(276, 'CST Payable', '', 58),
(277, 'CST Suspense', '', 58),
(278, 'GST Payable', '', 58),
(279, 'GST Suspense', '', 58),
(280, 'IGST Payable', '', 58),
(281, 'Input CGST', '', 58),
(282, 'Input CGST Tax RCM', '', 58),
(283, 'Input IGST', '', 58),
(284, 'Input IGST Tax RCM', '', 58),
(285, 'Input Krishi Kalyan Cess', '', 58),
(286, 'Input Krishi Kalyan Cess RCM', '', 58),
(287, 'Input Service Tax', '', 58),
(288, 'Input Service Tax RCM', '', 58),
(289, 'Input SGST', '', 58),
(290, 'Input SGST Tax RCM', '', 58),
(291, 'Input VAT 14 %', '', 58),
(292, 'Input VAT 4%', '', 58),
(293, 'Input VAT 5%', '', 58),
(294, 'Krishi Kalyan Cess Payable', '', 58),
(295, 'Krishi Kalyan Cess Suspense', '', 58),
(296, 'Output CGST', '', 58),
(297, 'Output CGST Tax RCM', '', 58),
(298, 'Output CST 2%', '', 58),
(299, 'Output IGST', '', 58),
(300, 'Output IGST Tax RCM', '', 58),
(301, 'Output Krishi Kalyan Cess', '', 58),
(302, 'Output Krishi Kalyan Cess RCM', '', 58),
(303, 'Output Service Tax', '', 58),
(304, 'Output Service Tax RCM', '', 58),
(305, 'Output SGST', '', 58),
(306, 'Output SGST Tax RCM', '', 58),
(307, 'Output VAT 14%', '', 58),
(308, 'Output VAT 4%', '', 58),
(309, 'Output VAT 5%', '', 58),
(310, 'Service Tax Payable', '', 58),
(311, 'Service Tax Suspense', '', 58),
(312, 'SGST Payable', '', 58),
(313, 'SGST Suspense', '', 58),
(314, 'Swachh Barath Cess Payable', '', 58),
(315, 'Swachh Barath Cess Suspense', '', 58),
(316, 'TDS Payable', '', 58),
(317, 'VAT Payable', '', 58),
(318, 'VAT Suspense', '', 58),
(319, 'Deferred CGST', '', 59),
(320, 'Deferred GST Input Credit', '', 59),
(321, 'Deferred IGST', '', 59),
(322, 'Deferred Krishi Kalyan Cess Input Credit', '', 59),
(323, 'Deferred Service Tax Input Credit', '', 59),
(324, 'Deferred SGST', '', 59),
(325, 'Deferred VAT Input Credit', '', 59),
(326, 'GST Refund', '', 59),
(327, 'Inventory Asset', '', 59),
(328, 'Paid Insurance', '', 59),
(329, 'Service Tax Refund', '', 59),
(330, 'TDS Receivable', '', 59),
(331, 'Uncategorised Asset', '', 59),
(332, 'Accumulated Depreciation', '', 59),
(333, 'Buildings and Improvements', '', 59),
(334, 'Furniture and Equipments', '', 59),
(335, 'Land', '', 59),
(336, 'Leasehold Improvements', '', 59),
(337, 'Vehicles', '', 59),
(338, 'CGST Payable', '', 59),
(339, 'CST Payable', '', 59),
(340, 'CST Suspense', '', 59),
(341, 'GST Payable', '', 59),
(342, 'GST Suspense', '', 59),
(343, 'IGST Payable', '', 59),
(344, 'Input CGST', '', 59),
(345, 'Input CGST Tax RCM', '', 59),
(346, 'Input IGST', '', 59),
(347, 'Input IGST Tax RCM', '', 59),
(348, 'Input Krishi Kalyan Cess', '', 59),
(349, 'Input Krishi Kalyan Cess RCM', '', 59),
(350, 'Input Service Tax', '', 59),
(351, 'Input Service Tax RCM', '', 59),
(352, 'Input SGST', '', 59),
(353, 'Input SGST Tax RCM', '', 59),
(354, 'Input VAT 14 %', '', 59),
(355, 'Input VAT 4%', '', 59),
(356, 'Input VAT 5%', '', 59),
(357, 'Krishi Kalyan Cess Payable', '', 59),
(358, 'Krishi Kalyan Cess Suspense', '', 59),
(359, 'Output CGST', '', 59),
(360, 'Output CGST Tax RCM', '', 59),
(361, 'Output CST 2%', '', 59),
(362, 'Output IGST', '', 59),
(363, 'Output IGST Tax RCM', '', 59),
(364, 'Output Krishi Kalyan Cess', '', 59),
(365, 'Output Krishi Kalyan Cess RCM', '', 59),
(366, 'Output Service Tax', '', 59),
(367, 'Output Service Tax RCM', '', 59),
(368, 'Output SGST', '', 59),
(369, 'Output SGST Tax RCM', '', 59),
(370, 'Output VAT 14%', '', 59),
(371, 'Output VAT 4%', '', 59),
(372, 'Output VAT 5%', '', 59),
(373, 'Service Tax Payable', '', 59),
(374, 'Service Tax Suspense', '', 59),
(375, 'SGST Payable', '', 59),
(376, 'SGST Suspense', '', 59),
(377, 'Swachh Barath Cess Payable', '', 59),
(378, 'Swachh Barath Cess Suspense', '', 59),
(379, 'TDS Payable', '', 59),
(380, 'VAT Payable', '', 59),
(381, 'VAT Suspense', '', 59),
(382, 'Deferred CGST', '', 60),
(383, 'Deferred GST Input Credit', '', 60),
(384, 'Deferred IGST', '', 60),
(385, 'Deferred Krishi Kalyan Cess Input Credit', '', 60),
(386, 'Deferred Service Tax Input Credit', '', 60),
(387, 'Deferred SGST', '', 60),
(388, 'Deferred VAT Input Credit', '', 60),
(389, 'GST Refund', '', 60),
(390, 'Inventory Asset', '', 60),
(391, 'Paid Insurance', '', 60),
(392, 'Service Tax Refund', '', 60),
(393, 'TDS Receivable', '', 60),
(394, 'Uncategorised Asset', '', 60),
(395, 'Accumulated Depreciation', '', 60),
(396, 'Buildings and Improvements', '', 60),
(397, 'Furniture and Equipments', '', 60),
(398, 'Land', '', 60),
(399, 'Leasehold Improvements', '', 60),
(400, 'Vehicles', '', 60),
(401, 'CGST Payable', '', 60),
(402, 'CST Payable', '', 60),
(403, 'CST Suspense', '', 60),
(404, 'GST Payable', '', 60),
(405, 'GST Suspense', '', 60),
(406, 'IGST Payable', '', 60),
(407, 'Input CGST', '', 60),
(408, 'Input CGST Tax RCM', '', 60),
(409, 'Input IGST', '', 60),
(410, 'Input IGST Tax RCM', '', 60),
(411, 'Input Krishi Kalyan Cess', '', 60),
(412, 'Input Krishi Kalyan Cess RCM', '', 60),
(413, 'Input Service Tax', '', 60),
(414, 'Input Service Tax RCM', '', 60),
(415, 'Input SGST', '', 60),
(416, 'Input SGST Tax RCM', '', 60),
(417, 'Input VAT 14 %', '', 60),
(418, 'Input VAT 4%', '', 60),
(419, 'Input VAT 5%', '', 60),
(420, 'Krishi Kalyan Cess Payable', '', 60),
(421, 'Krishi Kalyan Cess Suspense', '', 60),
(422, 'Output CGST', '', 60),
(423, 'Output CGST Tax RCM', '', 60),
(424, 'Output CST 2%', '', 60),
(425, 'Output IGST', '', 60),
(426, 'Output IGST Tax RCM', '', 60),
(427, 'Output Krishi Kalyan Cess', '', 60),
(428, 'Output Krishi Kalyan Cess RCM', '', 60),
(429, 'Output Service Tax', '', 60),
(430, 'Output Service Tax RCM', '', 60),
(431, 'Output SGST', '', 60),
(432, 'Output SGST Tax RCM', '', 60),
(433, 'Output VAT 14%', '', 60),
(434, 'Output VAT 4%', '', 60),
(435, 'Output VAT 5%', '', 60),
(436, 'Service Tax Payable', '', 60),
(437, 'Service Tax Suspense', '', 60),
(438, 'SGST Payable', '', 60),
(439, 'SGST Suspense', '', 60),
(440, 'Swachh Barath Cess Payable', '', 60),
(441, 'Swachh Barath Cess Suspense', '', 60),
(442, 'TDS Payable', '', 60),
(443, 'VAT Payable', '', 60),
(444, 'VAT Suspense', '', 60),
(445, 'Deferred CGST', '', 61),
(446, 'Deferred GST Input Credit', '', 61),
(447, 'Deferred IGST', '', 61),
(448, 'Deferred Krishi Kalyan Cess Input Credit', '', 61),
(449, 'Deferred Service Tax Input Credit', '', 61),
(450, 'Deferred SGST', '', 61),
(451, 'Deferred VAT Input Credit', '', 61),
(452, 'GST Refund', '', 61),
(453, 'Inventory Asset', '', 61),
(454, 'Paid Insurance', '', 61),
(455, 'Service Tax Refund', '', 61),
(456, 'TDS Receivable', '', 61),
(457, 'Uncategorised Asset', '', 61),
(458, 'Accumulated Depreciation', '', 61),
(459, 'Buildings and Improvements', '', 61),
(460, 'Furniture and Equipments', '', 61),
(461, 'Land', '', 61),
(462, 'Leasehold Improvements', '', 61),
(463, 'Vehicles', '', 61),
(464, 'CGST Payable', '', 61),
(465, 'CST Payable', '', 61),
(466, 'CST Suspense', '', 61),
(467, 'GST Payable', '', 61),
(468, 'GST Suspense', '', 61),
(469, 'IGST Payable', '', 61),
(470, 'Input CGST', '', 61),
(471, 'Input CGST Tax RCM', '', 61),
(472, 'Input IGST', '', 61),
(473, 'Input IGST Tax RCM', '', 61),
(474, 'Input Krishi Kalyan Cess', '', 61),
(475, 'Input Krishi Kalyan Cess RCM', '', 61),
(476, 'Input Service Tax', '', 61),
(477, 'Input Service Tax RCM', '', 61),
(478, 'Input SGST', '', 61),
(479, 'Input SGST Tax RCM', '', 61),
(480, 'Input VAT 14 %', '', 61),
(481, 'Input VAT 4%', '', 61),
(482, 'Input VAT 5%', '', 61),
(483, 'Krishi Kalyan Cess Payable', '', 61),
(484, 'Krishi Kalyan Cess Suspense', '', 61),
(485, 'Output CGST', '', 61),
(486, 'Output CGST Tax RCM', '', 61),
(487, 'Output CST 2%', '', 61),
(488, 'Output IGST', '', 61),
(489, 'Output IGST Tax RCM', '', 61),
(490, 'Output Krishi Kalyan Cess', '', 61),
(491, 'Output Krishi Kalyan Cess RCM', '', 61),
(492, 'Output Service Tax', '', 61),
(493, 'Output Service Tax RCM', '', 61),
(494, 'Output SGST', '', 61),
(495, 'Output SGST Tax RCM', '', 61),
(496, 'Output VAT 14%', '', 61),
(497, 'Output VAT 4%', '', 61),
(498, 'Output VAT 5%', '', 61),
(499, 'Service Tax Payable', '', 61),
(500, 'Service Tax Suspense', '', 61),
(501, 'SGST Payable', '', 61),
(502, 'SGST Suspense', '', 61),
(503, 'Swachh Barath Cess Payable', '', 61),
(504, 'Swachh Barath Cess Suspense', '', 61),
(505, 'TDS Payable', '', 61),
(506, 'VAT Payable', '', 61),
(507, 'VAT Suspense', '', 61),
(508, 'Deferred CGST', '', 62),
(509, 'Deferred GST Input Credit', '', 62),
(510, 'Deferred IGST', '', 62),
(511, 'Deferred Krishi Kalyan Cess Input Credit', '', 62),
(512, 'Deferred Service Tax Input Credit', '', 62),
(513, 'Deferred SGST', '', 62),
(514, 'Deferred VAT Input Credit', '', 62),
(515, 'GST Refund', '', 62),
(516, 'Inventory Asset', '', 62),
(517, 'Paid Insurance', '', 62),
(518, 'Service Tax Refund', '', 62),
(519, 'TDS Receivable', '', 62),
(520, 'Uncategorised Asset', '', 62),
(521, 'Accumulated Depreciation', '', 62),
(522, 'Buildings and Improvements', '', 62),
(523, 'Furniture and Equipments', '', 62),
(524, 'Land', '', 62),
(525, 'Leasehold Improvements', '', 62),
(526, 'Vehicles', '', 62),
(527, 'CGST Payable', '', 62),
(528, 'CST Payable', '', 62),
(529, 'CST Suspense', '', 62),
(530, 'GST Payable', '', 62),
(531, 'GST Suspense', '', 62),
(532, 'IGST Payable', '', 62),
(533, 'Input CGST', '', 62),
(534, 'Input CGST Tax RCM', '', 62),
(535, 'Input IGST', '', 62),
(536, 'Input IGST Tax RCM', '', 62),
(537, 'Input Krishi Kalyan Cess', '', 62),
(538, 'Input Krishi Kalyan Cess RCM', '', 62),
(539, 'Input Service Tax', '', 62),
(540, 'Input Service Tax RCM', '', 62),
(541, 'Input SGST', '', 62),
(542, 'Input SGST Tax RCM', '', 62),
(543, 'Input VAT 14 %', '', 62),
(544, 'Input VAT 4%', '', 62),
(545, 'Input VAT 5%', '', 62),
(546, 'Krishi Kalyan Cess Payable', '', 62),
(547, 'Krishi Kalyan Cess Suspense', '', 62),
(548, 'Output CGST', '', 62),
(549, 'Output CGST Tax RCM', '', 62),
(550, 'Output CST 2%', '', 62),
(551, 'Output IGST', '', 62),
(552, 'Output IGST Tax RCM', '', 62),
(553, 'Output Krishi Kalyan Cess', '', 62),
(554, 'Output Krishi Kalyan Cess RCM', '', 62),
(555, 'Output Service Tax', '', 62),
(556, 'Output Service Tax RCM', '', 62),
(557, 'Output SGST', '', 62),
(558, 'Output SGST Tax RCM', '', 62),
(559, 'Output VAT 14%', '', 62),
(560, 'Output VAT 4%', '', 62),
(561, 'Output VAT 5%', '', 62),
(562, 'Service Tax Payable', '', 62),
(563, 'Service Tax Suspense', '', 62),
(564, 'SGST Payable', '', 62),
(565, 'SGST Suspense', '', 62),
(566, 'Swachh Barath Cess Payable', '', 62),
(567, 'Swachh Barath Cess Suspense', '', 62),
(568, 'TDS Payable', '', 62),
(569, 'VAT Payable', '', 62),
(570, 'VAT Suspense', '', 62),
(571, 'Deferred CGST', '', 63),
(572, 'Deferred GST Input Credit', '', 63),
(573, 'Deferred IGST', '', 63),
(574, 'Deferred Krishi Kalyan Cess Input Credit', '', 63),
(575, 'Deferred Service Tax Input Credit', '', 63),
(576, 'Deferred SGST', '', 63),
(577, 'Deferred VAT Input Credit', '', 63),
(578, 'GST Refund', '', 63),
(579, 'Inventory Asset', '', 63),
(580, 'Paid Insurance', '', 63),
(581, 'Service Tax Refund', '', 63),
(582, 'TDS Receivable', '', 63),
(583, 'Uncategorised Asset', '', 63),
(584, 'Accumulated Depreciation', '', 63),
(585, 'Buildings and Improvements', '', 63),
(586, 'Furniture and Equipments', '', 63),
(587, 'Land', '', 63),
(588, 'Leasehold Improvements', '', 63),
(589, 'Vehicles', '', 63),
(590, 'CGST Payable', '', 63),
(591, 'CST Payable', '', 63),
(592, 'CST Suspense', '', 63),
(593, 'GST Payable', '', 63),
(594, 'GST Suspense', '', 63),
(595, 'IGST Payable', '', 63),
(596, 'Input CGST', '', 63),
(597, 'Input CGST Tax RCM', '', 63),
(598, 'Input IGST', '', 63),
(599, 'Input IGST Tax RCM', '', 63),
(600, 'Input Krishi Kalyan Cess', '', 63),
(601, 'Input Krishi Kalyan Cess RCM', '', 63),
(602, 'Input Service Tax', '', 63),
(603, 'Input Service Tax RCM', '', 63),
(604, 'Input SGST', '', 63),
(605, 'Input SGST Tax RCM', '', 63),
(606, 'Input VAT 14 %', '', 63),
(607, 'Input VAT 4%', '', 63),
(608, 'Input VAT 5%', '', 63),
(609, 'Krishi Kalyan Cess Payable', '', 63),
(610, 'Krishi Kalyan Cess Suspense', '', 63),
(611, 'Output CGST', '', 63),
(612, 'Output CGST Tax RCM', '', 63),
(613, 'Output CST 2%', '', 63),
(614, 'Output IGST', '', 63),
(615, 'Output IGST Tax RCM', '', 63),
(616, 'Output Krishi Kalyan Cess', '', 63),
(617, 'Output Krishi Kalyan Cess RCM', '', 63),
(618, 'Output Service Tax', '', 63),
(619, 'Output Service Tax RCM', '', 63),
(620, 'Output SGST', '', 63),
(621, 'Output SGST Tax RCM', '', 63),
(622, 'Output VAT 14%', '', 63),
(623, 'Output VAT 4%', '', 63),
(624, 'Output VAT 5%', '', 63),
(625, 'Service Tax Payable', '', 63),
(626, 'Service Tax Suspense', '', 63),
(627, 'SGST Payable', '', 63),
(628, 'SGST Suspense', '', 63),
(629, 'Swachh Barath Cess Payable', '', 63),
(630, 'Swachh Barath Cess Suspense', '', 63),
(631, 'TDS Payable', '', 63),
(632, 'VAT Payable', '', 63),
(633, 'VAT Suspense', '', 63),
(634, 'Deferred CGST', '', 64),
(635, 'Deferred GST Input Credit', '', 64),
(636, 'Deferred IGST', '', 64),
(637, 'Deferred Krishi Kalyan Cess Input Credit', '', 64),
(638, 'Deferred Service Tax Input Credit', '', 64),
(639, 'Deferred SGST', '', 64),
(640, 'Deferred VAT Input Credit', '', 64),
(641, 'GST Refund', '', 64),
(642, 'Inventory Asset', '', 64),
(643, 'Paid Insurance', '', 64),
(644, 'Service Tax Refund', '', 64),
(645, 'TDS Receivable', '', 64),
(646, 'Uncategorised Asset', '', 64),
(647, 'Accumulated Depreciation', '', 64),
(648, 'Buildings and Improvements', '', 64),
(649, 'Furniture and Equipments', '', 64),
(650, 'Land', '', 64),
(651, 'Leasehold Improvements', '', 64),
(652, 'Vehicles', '', 64),
(653, 'CGST Payable', '', 64),
(654, 'CST Payable', '', 64),
(655, 'CST Suspense', '', 64),
(656, 'GST Payable', '', 64),
(657, 'GST Suspense', '', 64),
(658, 'IGST Payable', '', 64),
(659, 'Input CGST', '', 64),
(660, 'Input CGST Tax RCM', '', 64),
(661, 'Input IGST', '', 64),
(662, 'Input IGST Tax RCM', '', 64),
(663, 'Input Krishi Kalyan Cess', '', 64),
(664, 'Input Krishi Kalyan Cess RCM', '', 64),
(665, 'Input Service Tax', '', 64),
(666, 'Input Service Tax RCM', '', 64),
(667, 'Input SGST', '', 64),
(668, 'Input SGST Tax RCM', '', 64),
(669, 'Input VAT 14 %', '', 64),
(670, 'Input VAT 4%', '', 64),
(671, 'Input VAT 5%', '', 64),
(672, 'Krishi Kalyan Cess Payable', '', 64),
(673, 'Krishi Kalyan Cess Suspense', '', 64),
(674, 'Output CGST', '', 64),
(675, 'Output CGST Tax RCM', '', 64),
(676, 'Output CST 2%', '', 64),
(677, 'Output IGST', '', 64),
(678, 'Output IGST Tax RCM', '', 64),
(679, 'Output Krishi Kalyan Cess', '', 64),
(680, 'Output Krishi Kalyan Cess RCM', '', 64),
(681, 'Output Service Tax', '', 64),
(682, 'Output Service Tax RCM', '', 64),
(683, 'Output SGST', '', 64),
(684, 'Output SGST Tax RCM', '', 64),
(685, 'Output VAT 14%', '', 64),
(686, 'Output VAT 4%', '', 64),
(687, 'Output VAT 5%', '', 64),
(688, 'Service Tax Payable', '', 64),
(689, 'Service Tax Suspense', '', 64),
(690, 'SGST Payable', '', 64),
(691, 'SGST Suspense', '', 64),
(692, 'Swachh Barath Cess Payable', '', 64),
(693, 'Swachh Barath Cess Suspense', '', 64),
(694, 'TDS Payable', '', 64),
(695, 'VAT Payable', '', 64),
(696, 'VAT Suspense', '', 64),
(697, 'Deferred CGST', '', 65),
(698, 'Deferred GST Input Credit', '', 65),
(699, 'Deferred IGST', '', 65),
(700, 'Deferred Krishi Kalyan Cess Input Credit', '', 65),
(701, 'Deferred Service Tax Input Credit', '', 65),
(702, 'Deferred SGST', '', 65),
(703, 'Deferred VAT Input Credit', '', 65),
(704, 'GST Refund', '', 65),
(705, 'Inventory Asset', '', 65),
(706, 'Paid Insurance', '', 65),
(707, 'Service Tax Refund', '', 65),
(708, 'TDS Receivable', '', 65),
(709, 'Uncategorised Asset', '', 65),
(710, 'Accumulated Depreciation', '', 65),
(711, 'Buildings and Improvements', '', 65),
(712, 'Furniture and Equipments', '', 65),
(713, 'Land', '', 65),
(714, 'Leasehold Improvements', '', 65),
(715, 'Vehicles', '', 65),
(716, 'CGST Payable', '', 65),
(717, 'CST Payable', '', 65),
(718, 'CST Suspense', '', 65),
(719, 'GST Payable', '', 65),
(720, 'GST Suspense', '', 65),
(721, 'IGST Payable', '', 65),
(722, 'Input CGST', '', 65),
(723, 'Input CGST Tax RCM', '', 65),
(724, 'Input IGST', '', 65),
(725, 'Input IGST Tax RCM', '', 65),
(726, 'Input Krishi Kalyan Cess', '', 65),
(727, 'Input Krishi Kalyan Cess RCM', '', 65),
(728, 'Input Service Tax', '', 65),
(729, 'Input Service Tax RCM', '', 65),
(730, 'Input SGST', '', 65),
(731, 'Input SGST Tax RCM', '', 65),
(732, 'Input VAT 14 %', '', 65),
(733, 'Input VAT 4%', '', 65),
(734, 'Input VAT 5%', '', 65),
(735, 'Krishi Kalyan Cess Payable', '', 65),
(736, 'Krishi Kalyan Cess Suspense', '', 65),
(737, 'Output CGST', '', 65),
(738, 'Output CGST Tax RCM', '', 65),
(739, 'Output CST 2%', '', 65),
(740, 'Output IGST', '', 65),
(741, 'Output IGST Tax RCM', '', 65),
(742, 'Output Krishi Kalyan Cess', '', 65),
(743, 'Output Krishi Kalyan Cess RCM', '', 65),
(744, 'Output Service Tax', '', 65),
(745, 'Output Service Tax RCM', '', 65),
(746, 'Output SGST', '', 65),
(747, 'Output SGST Tax RCM', '', 65),
(748, 'Output VAT 14%', '', 65),
(749, 'Output VAT 4%', '', 65),
(750, 'Output VAT 5%', '', 65),
(751, 'Service Tax Payable', '', 65),
(752, 'Service Tax Suspense', '', 65),
(753, 'SGST Payable', '', 65),
(754, 'SGST Suspense', '', 65),
(755, 'Swachh Barath Cess Payable', '', 65),
(756, 'Swachh Barath Cess Suspense', '', 65),
(757, 'TDS Payable', '', 65),
(758, 'VAT Payable', '', 65),
(759, 'VAT Suspense', '', 65),
(760, 'Deferred CGST', '', 66),
(761, 'Deferred GST Input Credit', '', 66),
(762, 'Deferred IGST', '', 66),
(763, 'Deferred Krishi Kalyan Cess Input Credit', '', 66),
(764, 'Deferred Service Tax Input Credit', '', 66),
(765, 'Deferred SGST', '', 66),
(766, 'Deferred VAT Input Credit', '', 66),
(767, 'GST Refund', '', 66),
(768, 'Inventory Asset', '', 66),
(769, 'Paid Insurance', '', 66),
(770, 'Service Tax Refund', '', 66),
(771, 'TDS Receivable', '', 66),
(772, 'Uncategorised Asset', '', 66),
(773, 'Accumulated Depreciation', '', 66),
(774, 'Buildings and Improvements', '', 66),
(775, 'Furniture and Equipments', '', 66),
(776, 'Land', '', 66),
(777, 'Leasehold Improvements', '', 66),
(778, 'Vehicles', '', 66),
(779, 'CGST Payable', '', 66),
(780, 'CST Payable', '', 66),
(781, 'CST Suspense', '', 66),
(782, 'GST Payable', '', 66),
(783, 'GST Suspense', '', 66),
(784, 'IGST Payable', '', 66),
(785, 'Input CGST', '', 66),
(786, 'Input CGST Tax RCM', '', 66),
(787, 'Input IGST', '', 66),
(788, 'Input IGST Tax RCM', '', 66),
(789, 'Input Krishi Kalyan Cess', '', 66),
(790, 'Input Krishi Kalyan Cess RCM', '', 66),
(791, 'Input Service Tax', '', 66),
(792, 'Input Service Tax RCM', '', 66),
(793, 'Input SGST', '', 66),
(794, 'Input SGST Tax RCM', '', 66),
(795, 'Input VAT 14 %', '', 66),
(796, 'Input VAT 4%', '', 66),
(797, 'Input VAT 5%', '', 66),
(798, 'Krishi Kalyan Cess Payable', '', 66),
(799, 'Krishi Kalyan Cess Suspense', '', 66),
(800, 'Output CGST', '', 66),
(801, 'Output CGST Tax RCM', '', 66),
(802, 'Output CST 2%', '', 66),
(803, 'Output IGST', '', 66),
(804, 'Output IGST Tax RCM', '', 66),
(805, 'Output Krishi Kalyan Cess', '', 66),
(806, 'Output Krishi Kalyan Cess RCM', '', 66),
(807, 'Output Service Tax', '', 66),
(808, 'Output Service Tax RCM', '', 66),
(809, 'Output SGST', '', 66),
(810, 'Output SGST Tax RCM', '', 66),
(811, 'Output VAT 14%', '', 66),
(812, 'Output VAT 4%', '', 66),
(813, 'Output VAT 5%', '', 66),
(814, 'Service Tax Payable', '', 66),
(815, 'Service Tax Suspense', '', 66),
(816, 'SGST Payable', '', 66),
(817, 'SGST Suspense', '', 66),
(818, 'Swachh Barath Cess Payable', '', 66),
(819, 'Swachh Barath Cess Suspense', '', 66),
(820, 'TDS Payable', '', 66),
(821, 'VAT Payable', '', 66),
(822, 'VAT Suspense', '', 66),
(823, 'Deferred CGST', '', 67),
(824, 'Deferred GST Input Credit', '', 67),
(825, 'Deferred IGST', '', 67),
(826, 'Deferred Krishi Kalyan Cess Input Credit', '', 67),
(827, 'Deferred Service Tax Input Credit', '', 67),
(828, 'Deferred SGST', '', 67),
(829, 'Deferred VAT Input Credit', '', 67),
(830, 'GST Refund', '', 67),
(831, 'Inventory Asset', '', 67),
(832, 'Paid Insurance', '', 67),
(833, 'Service Tax Refund', '', 67),
(834, 'TDS Receivable', '', 67),
(835, 'Uncategorised Asset', '', 67),
(836, 'Accumulated Depreciation', '', 67),
(837, 'Buildings and Improvements', '', 67),
(838, 'Furniture and Equipments', '', 67),
(839, 'Land', '', 67),
(840, 'Leasehold Improvements', '', 67),
(841, 'Vehicles', '', 67),
(842, 'CGST Payable', '', 67),
(843, 'CST Payable', '', 67),
(844, 'CST Suspense', '', 67),
(845, 'GST Payable', '', 67),
(846, 'GST Suspense', '', 67),
(847, 'IGST Payable', '', 67),
(848, 'Input CGST', '', 67),
(849, 'Input CGST Tax RCM', '', 67),
(850, 'Input IGST', '', 67),
(851, 'Input IGST Tax RCM', '', 67),
(852, 'Input Krishi Kalyan Cess', '', 67),
(853, 'Input Krishi Kalyan Cess RCM', '', 67),
(854, 'Input Service Tax', '', 67),
(855, 'Input Service Tax RCM', '', 67),
(856, 'Input SGST', '', 67),
(857, 'Input SGST Tax RCM', '', 67),
(858, 'Input VAT 14 %', '', 67),
(859, 'Input VAT 4%', '', 67),
(860, 'Input VAT 5%', '', 67),
(861, 'Krishi Kalyan Cess Payable', '', 67),
(862, 'Krishi Kalyan Cess Suspense', '', 67),
(863, 'Output CGST', '', 67),
(864, 'Output CGST Tax RCM', '', 67),
(865, 'Output CST 2%', '', 67),
(866, 'Output IGST', '', 67),
(867, 'Output IGST Tax RCM', '', 67),
(868, 'Output Krishi Kalyan Cess', '', 67),
(869, 'Output Krishi Kalyan Cess RCM', '', 67),
(870, 'Output Service Tax', '', 67),
(871, 'Output Service Tax RCM', '', 67),
(872, 'Output SGST', '', 67),
(873, 'Output SGST Tax RCM', '', 67),
(874, 'Output VAT 14%', '', 67),
(875, 'Output VAT 4%', '', 67),
(876, 'Output VAT 5%', '', 67),
(877, 'Service Tax Payable', '', 67),
(878, 'Service Tax Suspense', '', 67),
(879, 'SGST Payable', '', 67),
(880, 'SGST Suspense', '', 67),
(881, 'Swachh Barath Cess Payable', '', 67),
(882, 'Swachh Barath Cess Suspense', '', 67),
(883, 'TDS Payable', '', 67),
(884, 'VAT Payable', '', 67),
(885, 'VAT Suspense', '', 67);

-- --------------------------------------------------------

--
-- Table structure for table `app1_addac`
--

CREATE TABLE `app1_addac` (
  `id` bigint(20) NOT NULL,
  `acname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `dateadded` date NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_addtax1`
--

CREATE TABLE `app1_addtax1` (
  `addtax1id` int(11) NOT NULL,
  `taxname` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_advancepayment`
--

CREATE TABLE `app1_advancepayment` (
  `advancepaymentid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `paymentdate` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `memo` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_attendance`
--

CREATE TABLE `app1_attendance` (
  `atid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `employee` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_attendance`
--

INSERT INTO `app1_attendance` (`atid`, `date`, `employee`, `status`, `cid_id`) VALUES
(1, '2023-10-10', '3', 'Absent', 2),
(2, '2023-10-14', '3', 'Present', 2),
(3, '2023-10-14', ' Sreedevi Nair', 'Absent', 2),
(4, '2023-10-06', ' Sreedevi Nair', 'Absent', 2),
(5, '2023-10-04', ' Haritha Nair', 'Absent', 2),
(6, '2023-09-14', ' Haritha Nair', 'Absent', 2),
(7, '2023-10-14', ' Haritha Nair', 'Absent', 2),
(8, '2023-10-22', ' reshna t', 'Absent', 46);

-- --------------------------------------------------------

--
-- Table structure for table `app1_balance_sheet`
--

CREATE TABLE `app1_balance_sheet` (
  `id` bigint(20) NOT NULL,
  `details` varchar(100) DEFAULT NULL,
  `acctype` varchar(100) DEFAULT NULL,
  `account` varchar(100) DEFAULT NULL,
  `transactions` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `details1` varchar(255) DEFAULT NULL,
  `details2` varchar(255) NOT NULL,
  `amount` double DEFAULT NULL,
  `payments` double DEFAULT NULL,
  `payments1` double DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `bill_pymnt_id` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `debit_id` int(11) DEFAULT NULL,
  `expnc_id` int(11) DEFAULT NULL,
  `inv_pymnt_id` int(11) DEFAULT NULL,
  `invc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_balance_sheet`
--

INSERT INTO `app1_balance_sheet` (`id`, `details`, `acctype`, `account`, `transactions`, `date`, `details1`, `details2`, `amount`, `payments`, `payments1`, `bill_id`, `bill_pymnt_id`, `cid_id`, `debit_id`, `expnc_id`, `inv_pymnt_id`, `invc_id`) VALUES
(1, 'Nirmal Raj', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Billed', '2023-10-12', '1001', '1', NULL, 12096, 10800, 1, NULL, 2, NULL, NULL, NULL, NULL),
(2, 'Nirmal Raj', 'Current Assets', 'Input CGST', 'Billed', '2023-10-12', '1001', '1', NULL, 648, NULL, 1, NULL, 2, NULL, NULL, NULL, NULL),
(3, 'Nirmal Raj', 'Current Assets', 'Input SGST', 'Billed', '2023-10-12', '1001', '1', NULL, 648, NULL, 1, NULL, 2, NULL, NULL, NULL, NULL),
(4, 'Nirmal Raj', 'Current Liabilities', 'TDS Payable', 'Billed', '2023-10-12', '1001', '1', NULL, 0, NULL, 1, NULL, 2, NULL, NULL, NULL, NULL),
(5, '1 Nayana Vimal', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-13', '1001', 'OR9994520', NULL, 7056, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1),
(6, '1 Nayana Vimal', 'Current Liabilities', 'Output CGST', 'Invoice', '2023-10-13', '1001', 'OR9994520', 7056, 378, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1),
(7, '1 Nayana Vimal', 'Current Liabilities', 'Output SGST', 'Invoice', '2023-10-13', '1001', 'OR9994520', 7056, 378, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1),
(8, '1 Nayana Vimal', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-13', '1001', 'OR9994520', 7056, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1),
(9, '1 Nayana Vimal', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-01', '1002', 'OR8594048', NULL, 12744, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2),
(10, '1 Nayana Vimal', 'Current Liabilities', 'Output CGST', 'Invoice', '2023-10-01', '1002', 'OR8594048', 12744, 972, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2),
(11, '1 Nayana Vimal', 'Current Liabilities', 'Output SGST', 'Invoice', '2023-10-01', '1002', 'OR8594048', 12744, 972, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2),
(12, '1 Nayana Vimal', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-01', '1002', 'OR8594048', 12744, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2),
(13, '1 Nayana Vimal', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-01', '1003', 'OR4279110', NULL, 12744, NULL, NULL, NULL, 2, NULL, NULL, NULL, 3),
(14, '1 Nayana Vimal', 'Current Liabilities', 'Output CGST', 'Invoice', '2023-10-01', '1003', 'OR4279110', 12744, 972, NULL, NULL, NULL, 2, NULL, NULL, NULL, 3),
(15, '1 Nayana Vimal', 'Current Liabilities', 'Output SGST', 'Invoice', '2023-10-01', '1003', 'OR4279110', 12744, 972, NULL, NULL, NULL, 2, NULL, NULL, NULL, 3),
(16, '1 Nayana Vimal', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-01', '1003', 'OR4279110', 12744, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 3),
(17, '1 Nayana Vimal', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-01', '1004', 'OR7782638', NULL, 12744, NULL, NULL, NULL, 2, NULL, NULL, NULL, 4),
(18, '1 Nayana Vimal', 'Current Liabilities', 'Output CGST', 'Invoice', '2023-10-01', '1004', 'OR7782638', 12744, 972, NULL, NULL, NULL, 2, NULL, NULL, NULL, 4),
(19, '1 Nayana Vimal', 'Current Liabilities', 'Output SGST', 'Invoice', '2023-10-01', '1004', 'OR7782638', 12744, 972, NULL, NULL, NULL, 2, NULL, NULL, NULL, 4),
(20, '1 Nayana Vimal', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-01', '1004', 'OR7782638', 12744, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 4),
(21, 'AJAY PJ', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-10-13', '43', '', NULL, 3318, NULL, NULL, NULL, 40, 1, NULL, NULL, NULL),
(22, 'AJAY PJ', 'Current Assets', 'Input CGST', 'Vendor Credits', '2023-10-13', '43', '', NULL, 79, NULL, NULL, NULL, 40, 1, NULL, NULL, NULL),
(23, 'AJAY PJ', 'Current Assets', 'Input SGST', 'Vendor Credits', '2023-10-13', '43', '', NULL, 79, NULL, NULL, NULL, 40, 1, NULL, NULL, NULL),
(24, 'AJAY PJ', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-10-13', '43', '', NULL, 3318, NULL, NULL, NULL, 40, 2, NULL, NULL, NULL),
(25, 'AJAY PJ', 'Current Assets', 'Input CGST', 'Vendor Credits', '2023-10-13', '43', '', NULL, 79, NULL, NULL, NULL, 40, 2, NULL, NULL, NULL),
(26, 'AJAY PJ', 'Current Assets', 'Input SGST', 'Vendor Credits', '2023-10-13', '43', '', NULL, 79, NULL, NULL, NULL, 40, 2, NULL, NULL, NULL),
(27, 'hari b', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-10-16', '1001', '', NULL, 1027, NULL, NULL, NULL, 55, 3, NULL, NULL, NULL),
(28, 'hari b', 'Current Assets', 'Input IGST', 'Vendor Credits', '2023-10-16', '1001', '', NULL, 29.7, NULL, NULL, NULL, 55, 3, NULL, NULL, NULL),
(29, 'haripriya b', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Billed', '2023-10-16', '1002', '123456', NULL, 1234, 1190, 2, NULL, 55, NULL, NULL, NULL, NULL),
(30, 'haripriya b', 'Current Assets', 'Input CGST', 'Billed', '2023-10-16', '1002', '123456', NULL, 17.85, NULL, 2, NULL, 55, NULL, NULL, NULL, NULL),
(31, 'haripriya b', 'Current Assets', 'Input SGST', 'Billed', '2023-10-16', '1002', '123456', NULL, 17.85, NULL, 2, NULL, 55, NULL, NULL, NULL, NULL),
(32, 'haripriya b', 'Current Liabilities', 'TDS Payable', 'Billed', '2023-10-16', '1002', '123456', NULL, 0, NULL, 2, NULL, 55, NULL, NULL, NULL, NULL),
(33, 'haripriya b', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-10-16', '1000', '', NULL, 1323, NULL, NULL, NULL, 55, 4, NULL, NULL, NULL),
(34, 'haripriya b', 'Current Assets', 'Input IGST', 'Vendor Credits', '2023-10-16', '1000', '', NULL, 35.7, NULL, NULL, NULL, 55, 4, NULL, NULL, NULL),
(35, 'Varsha Raj', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Billed', '2023-10-16', '1003', '6', NULL, 11088, 9900, 3, NULL, 2, NULL, NULL, NULL, NULL),
(36, 'Varsha Raj', 'Current Assets', 'Input CGST', 'Billed', '2023-10-16', '1003', '6', NULL, 594, NULL, 3, NULL, 2, NULL, NULL, NULL, NULL),
(37, 'Varsha Raj', 'Current Assets', 'Input SGST', 'Billed', '2023-10-16', '1003', '6', NULL, 594, NULL, 3, NULL, 2, NULL, NULL, NULL, NULL),
(38, 'Varsha Raj', 'Current Liabilities', 'TDS Payable', 'Billed', '2023-10-16', '1003', '6', NULL, 0, NULL, 3, NULL, 2, NULL, NULL, NULL, NULL),
(39, 'hari b', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-10-16', '1003', '', NULL, 191, NULL, NULL, NULL, 55, 5, NULL, NULL, NULL),
(40, 'hari b', 'Current Assets', 'Input IGST', 'Vendor Credits', '2023-10-16', '1003', '', NULL, 2.7, NULL, NULL, NULL, 55, 5, NULL, NULL, NULL),
(41, 'Varsha Raj', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-10-16', '1', '', NULL, 10700, NULL, NULL, NULL, 2, 6, NULL, NULL, NULL),
(42, 'Varsha Raj', 'Current Assets', 'Input IGST', 'Vendor Credits', '2023-10-16', '1', '', NULL, 1140, NULL, NULL, NULL, 2, 6, NULL, NULL, NULL),
(43, 'Nayana Vimal', NULL, 'Account Receivable(Debtors)', 'Customer Payment', '2023-10-17', '1', '1001', NULL, 8000, NULL, NULL, NULL, 2, NULL, NULL, 1, NULL),
(44, 'Nayana Vimal', NULL, 'SBI', 'Customer Payment', '2023-10-17', '1', '1001', NULL, 8000, NULL, NULL, NULL, 2, NULL, NULL, 1, NULL),
(45, 'Anita TL', NULL, 'Account Receivable(Debtors)', 'Customer Payment', '2023-10-18', '2', '1002', NULL, 1000, NULL, NULL, NULL, 40, NULL, NULL, 2, NULL),
(46, 'Anita TL', NULL, 'Abin', 'Customer Payment', '2023-10-18', '2', '1002', NULL, 1000, NULL, NULL, NULL, 40, NULL, NULL, 2, NULL),
(47, 'Anita TL', NULL, 'Account Receivable(Debtors)', 'Customer Payment', '2023-10-26', '3', '1003', NULL, 60, NULL, NULL, NULL, 40, NULL, NULL, 3, NULL),
(48, 'Anita TL', NULL, 'Abin', 'Customer Payment', '2023-10-26', '3', '1003', NULL, 60, NULL, NULL, NULL, 40, NULL, NULL, 3, NULL),
(53, 'Niranjana Menon', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Billed', '2023-10-19', '1004', '3', NULL, 7952, 7100, 4, NULL, 2, NULL, NULL, NULL, NULL),
(54, 'Niranjana Menon', 'Current Assets', 'Input IGST', 'Billed', '2023-10-19', '1004', '3', NULL, 852, NULL, 4, NULL, 2, NULL, NULL, NULL, NULL),
(55, 'Niranjana Menon', 'Current Liabilities', 'TDS Payable', 'Billed', '2023-10-19', '1004', '3', NULL, 0, NULL, 4, NULL, 2, NULL, NULL, NULL, NULL),
(56, 'hari S', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-10-19', 'DN 1000', '', NULL, 4708, NULL, NULL, NULL, 58, 7, NULL, NULL, NULL),
(57, 'hari S', 'Current Assets', 'Input IGST', 'Vendor Credits', '2023-10-19', 'DN 1000', '', NULL, 107.7, NULL, NULL, NULL, 58, 7, NULL, NULL, NULL),
(58, 'kavya s', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-10-19', 'DN 1000', '', NULL, 1612, NULL, NULL, NULL, 59, 8, NULL, NULL, NULL),
(59, 'kavya s', 'Current Assets', 'Input IGST', 'Vendor Credits', '2023-10-19', 'DN 1000', '', NULL, 43.98, NULL, NULL, NULL, 59, 8, NULL, NULL, NULL),
(60, 'Niranjana Menon', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-10-20', '3', '', NULL, 15960, NULL, NULL, NULL, 2, 9, NULL, NULL, NULL),
(61, 'Niranjana Menon', 'Current Assets', 'Input CGST', 'Vendor Credits', '2023-10-20', '3', '', NULL, 380, NULL, NULL, NULL, 2, 9, NULL, NULL, NULL),
(62, 'Niranjana Menon', 'Current Assets', 'Input SGST', 'Vendor Credits', '2023-10-20', '3', '', NULL, 380, NULL, NULL, NULL, 2, 9, NULL, NULL, NULL),
(63, 'Nirmal Raj', 'Current Asset', 'Petty Cash', 'Expense', '2023-10-21', '1001', '7', NULL, 8000, NULL, NULL, NULL, 2, NULL, 1, NULL, NULL),
(64, '5 Seema Das', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-01', '1005', 'OR6897247', NULL, 2685, NULL, NULL, NULL, 57, NULL, NULL, NULL, 5),
(65, '5 Seema Das', 'Current Liabilities', 'Output CGST', 'Invoice', '2023-10-01', '1005', 'OR6897247', 2685, 42.5, NULL, NULL, NULL, 57, NULL, NULL, NULL, 5),
(66, '5 Seema Das', 'Current Liabilities', 'Output SGST', 'Invoice', '2023-10-01', '1005', 'OR6897247', 2685, 42.5, NULL, NULL, NULL, 57, NULL, NULL, NULL, 5),
(67, '5 Seema Das', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-01', '1005', 'OR6897247', 2685, NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, 5),
(72, '9 Meera KL', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-05', '1007', 'OR1331436', NULL, 31488, NULL, NULL, NULL, 57, NULL, NULL, NULL, 7),
(73, '9 Meera KL', 'Current Liabilities', 'Output IGST', 'Invoice', '2023-10-05', '1007', 'OR1331436', 31488, 4788, NULL, NULL, NULL, 57, NULL, NULL, NULL, 7),
(74, '9 Meera KL', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-05', '1007', 'OR1331436', 31488, NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, 7),
(75, '10 Rohit sharma', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-24', '1008', 'OR1950447', NULL, 57000, NULL, NULL, NULL, 60, NULL, NULL, NULL, 8),
(76, '10 Rohit sharma', 'Current Liabilities', 'Output CGST', 'Invoice', '2023-10-24', '1008', 'OR1950447', 57000, 1350, NULL, NULL, NULL, 60, NULL, NULL, NULL, 8),
(77, '10 Rohit sharma', 'Current Liabilities', 'Output SGST', 'Invoice', '2023-10-24', '1008', 'OR1950447', 57000, 1350, NULL, NULL, NULL, 60, NULL, NULL, NULL, 8),
(78, '10 Rohit sharma', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-24', '1008', 'OR1950447', 57000, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, 8),
(83, 'ROSILINT DAVIS', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Payment', '2023-10-25', '3', 'opt', NULL, 56, NULL, NULL, 3, 61, NULL, NULL, NULL, NULL),
(84, 'ROSILINT DAVIS', 'Current Asset', 'Undeposited Funds', 'Vendor Payment', '2023-10-25', '3', 'opt', NULL, 56, NULL, NULL, 3, 61, NULL, NULL, NULL, NULL),
(85, 'Rajeev Raj', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Payment', '2023-10-31', '4', '88', NULL, 80, NULL, NULL, 4, 40, NULL, NULL, NULL, NULL),
(86, 'Rajeev Raj', 'Current Asset', 'Petty Cash', 'Vendor Payment', '2023-10-31', '4', '88', NULL, 80, NULL, NULL, 4, 40, NULL, NULL, NULL, NULL),
(87, '8 SAMAL agh', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-26', '1010', 'OR4351462', NULL, 193712.4, NULL, NULL, NULL, 33, NULL, NULL, NULL, 10),
(88, '8 SAMAL agh', 'Current Liabilities', 'Output IGST', 'Invoice', '2023-10-26', '1010', 'OR4351462', 193712.4, 9224.4, NULL, NULL, NULL, 33, NULL, NULL, NULL, 10),
(89, '8 SAMAL agh', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-26', '1010', 'OR4351462', 193712.4, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, 10),
(90, '8 SAMAL agh', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-26', '1011', 'OR4898558', NULL, 193712.4, NULL, NULL, NULL, 33, NULL, NULL, NULL, 11),
(91, '8 SAMAL agh', 'Current Liabilities', 'Output IGST', 'Invoice', '2023-10-26', '1011', 'OR4898558', 193712.4, 9224.4, NULL, NULL, NULL, 33, NULL, NULL, NULL, 11),
(92, '8 SAMAL agh', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-26', '1011', 'OR4898558', 193712.4, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, 11),
(93, '8 SAMAL agh', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-26', '1012', 'OR4029151', NULL, 193712.4, NULL, NULL, NULL, 33, NULL, NULL, NULL, 12),
(94, '8 SAMAL agh', 'Current Liabilities', 'Output IGST', 'Invoice', '2023-10-26', '1012', 'OR4029151', 193712.4, 9224.4, NULL, NULL, NULL, 33, NULL, NULL, NULL, 12),
(95, '8 SAMAL agh', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-26', '1012', 'OR4029151', 193712.4, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, 12),
(96, '8 SAMAL agh', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-26', '1013', 'OR2350773', NULL, 20147.56, NULL, NULL, NULL, 33, NULL, NULL, NULL, 13),
(97, '8 SAMAL agh', 'Current Liabilities', 'Output IGST', 'Invoice', '2023-10-26', '1013', 'OR2350773', 20147.56, 2158.56, NULL, NULL, NULL, 33, NULL, NULL, NULL, 13),
(98, '8 SAMAL agh', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-26', '1013', 'OR2350773', 20147.56, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, 13),
(99, '11 Neethu Soman', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-26', '1014', 'OR9392858', NULL, 6720, NULL, NULL, NULL, 2, NULL, NULL, NULL, 14),
(100, '11 Neethu Soman', 'Current Liabilities', 'Output CGST', 'Invoice', '2023-10-26', '1014', 'OR9392858', 6720, 360, NULL, NULL, NULL, 2, NULL, NULL, NULL, 14),
(101, '11 Neethu Soman', 'Current Liabilities', 'Output SGST', 'Invoice', '2023-10-26', '1014', 'OR9392858', 6720, 360, NULL, NULL, NULL, 2, NULL, NULL, NULL, 14),
(102, '11 Neethu Soman', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-26', '1014', 'OR9392858', 6720, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 14),
(103, '1 Nayana Vimal', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-26', '1015', 'OR4988546', NULL, 9912, NULL, NULL, NULL, 2, NULL, NULL, NULL, 15),
(104, '1 Nayana Vimal', 'Current Liabilities', 'Output CGST', 'Invoice', '2023-10-26', '1015', 'OR4988546', 9912, 756, NULL, NULL, NULL, 2, NULL, NULL, NULL, 15),
(105, '1 Nayana Vimal', 'Current Liabilities', 'Output SGST', 'Invoice', '2023-10-26', '1015', 'OR4988546', 9912, 756, NULL, NULL, NULL, 2, NULL, NULL, NULL, 15),
(106, '1 Nayana Vimal', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-26', '1015', 'OR4988546', 9912, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 15),
(107, '1 Nayana Vimal', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-09-02', '1016', 'OR4498783', NULL, 10752, NULL, NULL, NULL, 2, NULL, NULL, NULL, 16),
(108, '1 Nayana Vimal', 'Current Liabilities', 'Output CGST', 'Invoice', '2023-09-02', '1016', 'OR4498783', 10752, 576, NULL, NULL, NULL, 2, NULL, NULL, NULL, 16),
(109, '1 Nayana Vimal', 'Current Liabilities', 'Output SGST', 'Invoice', '2023-09-02', '1016', 'OR4498783', 10752, 576, NULL, NULL, NULL, 2, NULL, NULL, NULL, 16),
(110, '1 Nayana Vimal', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-09-02', '1016', 'OR4498783', 10752, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 16),
(111, '10 Rohit sharma', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-26', '1017', 'OR8835106', NULL, 48000, NULL, NULL, NULL, 60, NULL, NULL, NULL, 17),
(112, '10 Rohit sharma', 'Current Liabilities', 'Output CGST', 'Invoice', '2023-10-26', '1017', 'OR8835106', 48000, 0, NULL, NULL, NULL, 60, NULL, NULL, NULL, 17),
(113, '10 Rohit sharma', 'Current Liabilities', 'Output SGST', 'Invoice', '2023-10-26', '1017', 'OR8835106', 48000, 0, NULL, NULL, NULL, 60, NULL, NULL, NULL, 17),
(114, '10 Rohit sharma', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-26', '1017', 'OR8835106', 48000, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, 17),
(115, '10 Rohit sharma', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-26', '1018', 'OR5648213', NULL, 12600, NULL, NULL, NULL, 60, NULL, NULL, NULL, 18),
(116, '10 Rohit sharma', 'Current Liabilities', 'Output CGST', 'Invoice', '2023-10-26', '1018', 'OR5648213', 12600, 0, NULL, NULL, NULL, 60, NULL, NULL, NULL, 18),
(117, '10 Rohit sharma', 'Current Liabilities', 'Output SGST', 'Invoice', '2023-10-26', '1018', 'OR5648213', 12600, 0, NULL, NULL, NULL, 60, NULL, NULL, NULL, 18),
(118, '10 Rohit sharma', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-26', '1018', 'OR5648213', 12600, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, 18),
(119, '10 Rohit sharma', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-26', '1019', 'OR4291997', NULL, 73920, NULL, NULL, NULL, 60, NULL, NULL, NULL, 19),
(120, '10 Rohit sharma', 'Current Liabilities', 'Output CGST', 'Invoice', '2023-10-26', '1019', 'OR4291997', 73920, 3960, NULL, NULL, NULL, 60, NULL, NULL, NULL, 19),
(121, '10 Rohit sharma', 'Current Liabilities', 'Output SGST', 'Invoice', '2023-10-26', '1019', 'OR4291997', 73920, 3960, NULL, NULL, NULL, 60, NULL, NULL, NULL, 19),
(122, '10 Rohit sharma', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-26', '1019', 'OR4291997', 73920, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, 19),
(123, '18 sreyas mohan', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-08-12', '1023', 'OR6400439', NULL, 9912, NULL, NULL, NULL, 2, NULL, NULL, NULL, 23),
(124, '18 sreyas mohan', 'Current Liabilities', 'Output CGST', 'Invoice', '2023-08-12', '1023', 'OR6400439', 9912, 756, NULL, NULL, NULL, 2, NULL, NULL, NULL, 23),
(125, '18 sreyas mohan', 'Current Liabilities', 'Output SGST', 'Invoice', '2023-08-12', '1023', 'OR6400439', 9912, 756, NULL, NULL, NULL, 2, NULL, NULL, NULL, 23),
(126, '18 sreyas mohan', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-08-12', '1023', 'OR6400439', 9912, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 23),
(127, 'Niranjana Menon', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Billed', '2023-10-28', '1005', '8', NULL, 12600, 12000, 5, NULL, 2, NULL, NULL, NULL, NULL),
(128, 'Niranjana Menon', 'Current Assets', 'Input CGST', 'Billed', '2023-10-28', '1005', '8', NULL, 300, NULL, 5, NULL, 2, NULL, NULL, NULL, NULL),
(129, 'Niranjana Menon', 'Current Assets', 'Input SGST', 'Billed', '2023-10-28', '1005', '8', NULL, 300, NULL, 5, NULL, 2, NULL, NULL, NULL, NULL),
(130, 'Niranjana Menon', 'Current Liabilities', 'TDS Payable', 'Billed', '2023-10-28', '1005', '8', NULL, 0, NULL, 5, NULL, 2, NULL, NULL, NULL, NULL),
(131, '20 Sreekala sreehari', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-28', '1024', 'OR2564000', NULL, 14968, NULL, NULL, NULL, 2, NULL, NULL, NULL, 24),
(132, '20 Sreekala sreehari', 'Current Liabilities', 'Output CGST', 'Invoice', '2023-10-28', '1024', 'OR2564000', 14968, 1134, NULL, NULL, NULL, 2, NULL, NULL, NULL, 24),
(133, '20 Sreekala sreehari', 'Current Liabilities', 'Output SGST', 'Invoice', '2023-10-28', '1024', 'OR2564000', 14968, 1134, NULL, NULL, NULL, 2, NULL, NULL, NULL, 24),
(134, '20 Sreekala sreehari', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-28', '1024', 'OR2564000', 14968, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 24),
(135, 'Sreekala sreehari', NULL, 'Account Receivable(Debtors)', 'Customer Payment', '2023-10-28', '4', 'PL-02', NULL, 5000, NULL, NULL, NULL, 2, NULL, NULL, 4, NULL),
(136, 'Sreekala sreehari', NULL, NULL, 'Customer Payment', '2023-10-28', '4', 'PL-02', NULL, 5000, NULL, NULL, NULL, 2, NULL, NULL, 4, NULL),
(137, '26 jithin lal', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Invoice', '2023-10-31', '1027', 'OR2844548', NULL, 12544, NULL, NULL, NULL, 2, NULL, NULL, NULL, 27),
(138, '26 jithin lal', 'Current Liabilities', 'Output CGST', 'Invoice', '2023-10-31', '1027', 'OR2844548', 12544, 672, NULL, NULL, NULL, 2, NULL, NULL, NULL, 27),
(139, '26 jithin lal', 'Current Liabilities', 'Output SGST', 'Invoice', '2023-10-31', '1027', 'OR2844548', 12544, 672, NULL, NULL, NULL, 2, NULL, NULL, NULL, 27),
(140, '26 jithin lal', 'Current Assets', 'TDS Receivable', 'Invoice', '2023-10-31', '1027', 'OR2844548', 12544, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 27),
(141, 'Niranjana Menon', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Billed', '2023-10-31', '1006', '2', NULL, 11760, 11200, 6, NULL, 2, NULL, NULL, NULL, NULL),
(142, 'Niranjana Menon', 'Current Assets', 'Input CGST', 'Billed', '2023-10-31', '1006', '2', NULL, 280, NULL, 6, NULL, 2, NULL, NULL, NULL, NULL),
(143, 'Niranjana Menon', 'Current Assets', 'Input SGST', 'Billed', '2023-10-31', '1006', '2', NULL, 280, NULL, 6, NULL, 2, NULL, NULL, NULL, NULL),
(144, 'Niranjana Menon', 'Current Liabilities', 'TDS Payable', 'Billed', '2023-10-31', '1006', '2', NULL, 0, NULL, 6, NULL, 2, NULL, NULL, NULL, NULL),
(145, 'Haripriya Nair', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Billed', '2023-10-31', '1007', '7', NULL, 10752, 9600, 7, NULL, 2, NULL, NULL, NULL, NULL),
(146, 'Haripriya Nair', 'Current Assets', 'Input CGST', 'Billed', '2023-10-31', '1007', '7', NULL, 576, NULL, 7, NULL, 2, NULL, NULL, NULL, NULL),
(147, 'Haripriya Nair', 'Current Assets', 'Input SGST', 'Billed', '2023-10-31', '1007', '7', NULL, 576, NULL, 7, NULL, 2, NULL, NULL, NULL, NULL),
(148, 'Haripriya Nair', 'Current Liabilities', 'TDS Payable', 'Billed', '2023-10-31', '1007', '7', NULL, 0, NULL, 7, NULL, 2, NULL, NULL, NULL, NULL),
(149, 'Haripriya Nair', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-10-31', '2', '', NULL, 10752, NULL, NULL, NULL, 2, 10, NULL, NULL, NULL),
(150, 'Haripriya Nair', 'Current Assets', 'Input IGST', 'Vendor Credits', '2023-10-31', '2', '', NULL, 1152, NULL, NULL, NULL, 2, 10, NULL, NULL, NULL),
(151, 'anurag s', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-10-31', 'DM 1008', '', NULL, 4717, NULL, NULL, NULL, 64, 11, NULL, NULL, NULL),
(152, 'anurag s', 'Current Assets', 'Input IGST', 'Vendor Credits', '2023-10-31', 'DM 1008', '', NULL, 137.4, NULL, NULL, NULL, 64, 11, NULL, NULL, NULL),
(153, 'anu s', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Billed', '2023-11-01', '1008', '12345678', NULL, 1346, 1190, 8, NULL, 65, NULL, NULL, NULL, NULL),
(154, 'anu s', 'Current Assets', 'Input CGST', 'Billed', '2023-11-01', '1008', '12345678', NULL, 29.75, NULL, 8, NULL, 65, NULL, NULL, NULL, NULL),
(155, 'anu s', 'Current Assets', 'Input SGST', 'Billed', '2023-11-01', '1008', '12345678', NULL, 29.75, NULL, 8, NULL, 65, NULL, NULL, NULL, NULL),
(156, 'anu s', 'Current Liabilities', 'TDS Payable', 'Billed', '2023-11-01', '1008', '12345678', NULL, 0, NULL, 8, NULL, 65, NULL, NULL, NULL, NULL),
(157, 'lalu r', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Billed', '2023-11-01', '1009', '123456', NULL, 1318, 1190, 9, NULL, 65, NULL, NULL, NULL, NULL),
(158, 'lalu r', 'Current Assets', 'Input CGST', 'Billed', '2023-11-01', '1009', '123456', NULL, 17.85, NULL, 9, NULL, 65, NULL, NULL, NULL, NULL),
(159, 'lalu r', 'Current Assets', 'Input SGST', 'Billed', '2023-11-01', '1009', '123456', NULL, 17.85, NULL, 9, NULL, 65, NULL, NULL, NULL, NULL),
(160, 'lalu r', 'Current Liabilities', 'TDS Payable', 'Billed', '2023-11-01', '1009', '123456', NULL, 0, NULL, 9, NULL, 65, NULL, NULL, NULL, NULL),
(161, 'lalu r', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-11-01', 'DN 1002', '', NULL, 5108, NULL, NULL, NULL, 65, 12, NULL, NULL, NULL),
(162, 'lalu r', 'Current Assets', 'Input CGST', 'Vendor Credits', '2023-11-01', 'DN 1002', '', NULL, 116.25, NULL, NULL, NULL, 65, 12, NULL, NULL, NULL),
(163, 'lalu r', 'Current Assets', 'Input SGST', 'Vendor Credits', '2023-11-01', 'DN 1002', '', NULL, 116.25, NULL, NULL, NULL, 65, 12, NULL, NULL, NULL),
(164, 'Rajeev Raj', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Payment', '2023-10-28', '5', '77', NULL, 7800, NULL, NULL, 5, 40, NULL, NULL, NULL, NULL),
(165, 'Rajeev Raj', 'Current Asset', 'cheque', 'Vendor Payment', '2023-10-28', '5', '77', NULL, 7800, NULL, NULL, 5, 40, NULL, NULL, NULL, NULL),
(166, 'Raj s', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-11-01', '1002', '', NULL, 1323, NULL, NULL, NULL, 65, 13, NULL, NULL, NULL),
(167, 'Raj s', 'Current Assets', 'Input IGST', 'Vendor Credits', '2023-11-01', '1002', '', NULL, 35.7, NULL, NULL, NULL, 65, 13, NULL, NULL, NULL),
(168, 'hari s', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Billed', '2023-11-01', '1010', '12345', NULL, 1323, 1190, 10, NULL, 66, NULL, NULL, NULL, NULL),
(169, 'hari s', 'Current Assets', 'Input CGST', 'Billed', '2023-11-01', '1010', '12345', NULL, 17.85, NULL, 10, NULL, 66, NULL, NULL, NULL, NULL),
(170, 'hari s', 'Current Assets', 'Input SGST', 'Billed', '2023-11-01', '1010', '12345', NULL, 17.85, NULL, 10, NULL, 66, NULL, NULL, NULL, NULL),
(171, 'hari s', 'Current Liabilities', 'TDS Payable', 'Billed', '2023-11-01', '1010', '12345', NULL, 0, NULL, 10, NULL, 66, NULL, NULL, NULL, NULL),
(172, 'hari s', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-11-01', 'DN 1002', '', NULL, 3829, NULL, NULL, NULL, 66, 14, NULL, NULL, NULL),
(173, 'hari s', 'Current Assets', 'Input IGST', 'Vendor Credits', '2023-11-01', 'DN 1002', '', NULL, 155.2, NULL, NULL, NULL, 66, 14, NULL, NULL, NULL),
(174, 'Haripriya Nair', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-11-01', '5', '', NULL, 12384, NULL, NULL, NULL, 2, 15, NULL, NULL, NULL),
(175, 'Haripriya Nair', 'Current Assets', 'Input IGST', 'Vendor Credits', '2023-11-01', '5', '', NULL, 1584, NULL, NULL, NULL, 2, 15, NULL, NULL, NULL),
(176, 'Haripriya Nair', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Billed', '2023-11-01', '1011', '4', NULL, 25200, 23200, 11, NULL, 2, NULL, NULL, NULL, NULL),
(177, 'Haripriya Nair', 'Current Assets', 'Input CGST', 'Billed', '2023-11-01', '1011', '4', NULL, 1000, NULL, 11, NULL, 2, NULL, NULL, NULL, NULL),
(178, 'Haripriya Nair', 'Current Assets', 'Input SGST', 'Billed', '2023-11-01', '1011', '4', NULL, 1000, NULL, 11, NULL, 2, NULL, NULL, NULL, NULL),
(179, 'Haripriya Nair', 'Current Liabilities', 'TDS Payable', 'Billed', '2023-11-01', '1011', '4', NULL, 0, NULL, 11, NULL, 2, NULL, NULL, NULL, NULL),
(180, 'Haripriya Nair', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Vendor Credits', '2023-11-01', '7', '', NULL, 25244, NULL, NULL, NULL, 2, 16, NULL, NULL, NULL),
(181, 'Haripriya Nair', 'Current Assets', 'Input IGST', 'Vendor Credits', '2023-11-01', '7', '', NULL, 1944, NULL, NULL, NULL, 2, 16, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app1_bankaccount`
--

CREATE TABLE `app1_bankaccount` (
  `id` bigint(20) NOT NULL,
  `holder_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `account_number` varchar(15) NOT NULL,
  `ifsc_code` varchar(11) NOT NULL,
  `swift_code` varchar(11) NOT NULL,
  `bank_name` varchar(10) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `holder_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_bankaccount`
--

INSERT INTO `app1_bankaccount` (`id`, `holder_name`, `is_active`, `account_number`, `ifsc_code`, `swift_code`, `bank_name`, `branch_name`, `holder_id`) VALUES
(1, 'Nithya', 1, '563456767785434', 'SBI00745', 'Nill', 'DCB', 'kollam', 1),
(2, 'Nithya', 1, '563456767785434', 'SBI00745', 'Nill', 'DCB', 'kollam', 2),
(3, 'ABIN P J', 1, '576754633432', 'SBIN005454', '63457', 'SBI', 'Mundur', 3),
(4, 'AADHI', 1, '57467673635', 'FEDL77432', '3544', 'FEDERAL', 'Kongad', 4);

-- --------------------------------------------------------

--
-- Table structure for table `app1_bankaccountholder`
--

CREATE TABLE `app1_bankaccountholder` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `account_type` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_bankaccountholder`
--

INSERT INTO `app1_bankaccountholder` (`id`, `name`, `alias`, `phone_number`, `email`, `account_type`) VALUES
(1, 'Nithya', 'nil', '9995797678', 'nithya@gmail.com', 'BA'),
(2, 'Nithya', 'nil', '9995797678', 'nithya@gmail.com', 'BA'),
(3, 'ABIN', 'zxcv', '08943735902', 'ajayjayathilakan0@gmail.com', 'BA'),
(4, 'AADHI', 'ASDFG', '+919633292997', 'aBIN@gmail.com', 'BA');

-- --------------------------------------------------------

--
-- Table structure for table `app1_bankconfiguration`
--

CREATE TABLE `app1_bankconfiguration` (
  `id` bigint(20) NOT NULL,
  `set_cheque_book_range` tinyint(1) NOT NULL,
  `enable_cheque_printing` tinyint(1) NOT NULL,
  `set_cheque_printing_configuration` tinyint(1) NOT NULL,
  `holder_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_bankconfiguration`
--

INSERT INTO `app1_bankconfiguration` (`id`, `set_cheque_book_range`, `enable_cheque_printing`, `set_cheque_printing_configuration`, `holder_id`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 1, 1, 2),
(3, 1, 1, 1, 3),
(4, 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `app1_bankingdetails`
--

CREATE TABLE `app1_bankingdetails` (
  `id` bigint(20) NOT NULL,
  `pan_it_number` varchar(10) NOT NULL,
  `registration_type` varchar(20) NOT NULL,
  `gstin_un` varchar(15) NOT NULL,
  `set_alter_gst_details` tinyint(1) NOT NULL,
  `holder_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_bankingdetails`
--

INSERT INTO `app1_bankingdetails` (`id`, `pan_it_number`, `registration_type`, `gstin_un`, `set_alter_gst_details`, `holder_id`) VALUES
(1, '6787897665', 'unregistered', '', 0, 1),
(2, '6787897665', 'unregistered', '', 0, 2),
(3, '74568768', 'unknown', '34625367', 1, 3),
(4, '734535', 'unknown', '34625367', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `app1_bankings_g`
--

CREATE TABLE `app1_bankings_g` (
  `id` bigint(20) NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `ifsccode` varchar(20) NOT NULL,
  `branchname` varchar(100) NOT NULL,
  `openingbalance` int(11) NOT NULL,
  `date` date NOT NULL,
  `balance` int(11) NOT NULL,
  `cash_balance` int(11) NOT NULL,
  `cid_id` int(11) NOT NULL,
  `account_number` int(11) NOT NULL,
  `term` longtext NOT NULL,
  `bank_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_bankings_g`
--

INSERT INTO `app1_bankings_g` (`id`, `bankname`, `ifsccode`, `branchname`, `openingbalance`, `date`, `balance`, `cash_balance`, `cid_id`, `account_number`, `term`, `bank_status`) VALUES
(1, 'SBI', 'SBI067EG', 'kollam', 40000, '2023-08-18', -147597, 0, 2, 0, '', 'Active'),
(5, 'Cannara', 'CDG56545', 'Tvm', 90008, '2023-10-04', 98018, -5210, 2, 2147483647, '', ''),
(6, 'STATE BANK OF INDIA', 'SBIN0009157', 'mercy college', 15000, '2023-10-17', 24000, 0, 56, 1254687, '', ''),
(7, 'AXIS BANK', 'AXISB764664', 'mercy college', 15000, '2023-10-17', 5000, 0, 56, 2147483647, '', ''),
(8, 'IDFC Bank', 'IDFC097', 'Kottarakkara', 8800, '2023-10-01', -8800, 6300, 2, 2147483647, 'DEBIT', ''),
(9, 'AXIS BANK', 'AXISB764664', 'palakkad', 15000, '2023-10-28', 15000, 0, 56, 2147483647, 'DEBIT', 'Active'),
(10, 'BOI Bank', 'BOI097', 'Kottarakkara', -9000, '2023-09-29', 4640, 0, 2, 2147483647, 'CREDIT', 'In-Active');

-- --------------------------------------------------------

--
-- Table structure for table `app1_banking_payment`
--

CREATE TABLE `app1_banking_payment` (
  `bnkpymid` int(11) NOT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `vendor` varchar(100) DEFAULT NULL,
  `amount_received` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `received_through` varchar(100) NOT NULL,
  `paym_ref_no` varchar(100) NOT NULL,
  `bnk_ref_no` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `des` varchar(100) DEFAULT NULL,
  `running_bal` varchar(100) NOT NULL,
  `paid_through` varchar(100) NOT NULL,
  `ref_no` varchar(100) DEFAULT NULL,
  `account` varchar(100) DEFAULT NULL,
  `expenseaccount` varchar(100) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `pym_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `accounts1id_id` int(11) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_bankstatement`
--

CREATE TABLE `app1_bankstatement` (
  `bankstatementid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `debit` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_bank_transactions`
--

CREATE TABLE `app1_bank_transactions` (
  `id` bigint(20) NOT NULL,
  `bank_type` longtext NOT NULL,
  `from_trans` longtext NOT NULL,
  `to_trans` longtext NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `adj_date` date DEFAULT NULL,
  `desc` longtext NOT NULL,
  `type` longtext NOT NULL,
  `cash_adjust` longtext NOT NULL,
  `cash_cash` int(11) DEFAULT NULL,
  `cash_description` longtext NOT NULL,
  `cash_date` date DEFAULT NULL,
  `banking_id` bigint(20) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_bank_transactions`
--

INSERT INTO `app1_bank_transactions` (`id`, `bank_type`, `from_trans`, `to_trans`, `amount`, `adj_date`, `desc`, `type`, `cash_adjust`, `cash_cash`, `cash_description`, `cash_date`, `banking_id`, `cid_id`) VALUES
(1, '', 'SBI', '', 40000, '2023-08-18', '', 'OPENING BAL', '', NULL, '', NULL, 1, 2),
(2, '', 'Cannara', '', 90008, '2023-10-04', '', 'OPENING BAL', '', NULL, '', NULL, 5, 2),
(3, 'FROM Cannara', 'Cannara', 'Cash', 790, '2023-10-17', '', 'CASH WITHDRAW', 'ADD CASH', 790, '', '2023-10-17', 5, 2),
(4, 'FROM Cash', 'Cash', 'Cannara', 6000, '2023-10-17', '', 'CASH DEPOSIT', 'REDUCE CASH', 6000, '', '2023-10-17', 5, 2),
(5, 'ADJ INCR', 'Cannara', 'Cannara', 40000, '2023-10-17', '', 'BANK ADJ INCREASE', 'REDUCE CASH', -40000, '', '2023-10-17', 5, 2),
(6, '', 'STATE BANK OF INDIA', '', 15000, '2023-10-17', '', 'OPENING BAL', '', NULL, '', NULL, 6, 56),
(7, 'TO Cannara', 'SBI', 'Cannara', 77000, '2023-10-17', '', 'FROM BANK TRANSFER', '', NULL, '', NULL, 1, 2),
(8, 'FROM SBI', 'SBI', 'Cannara', 77000, '2023-10-17', '', 'TO BANK TRANSFER', '', NULL, '', NULL, 5, 2),
(9, 'ADJ RDC', 'Cannara', 'Cannara', 89000, '2023-10-17', '', 'BANK ADJ REDUCE', 'ADD CASH', 89000, '', '2023-10-17', 5, 2),
(10, '', '', '', NULL, NULL, '', '', 'ADD CASH', 800000, '', '2023-10-17', NULL, 2),
(11, '', 'AXIS BANK', '', 15000, '2023-10-17', '', 'OPENING BAL', '', NULL, '', NULL, 7, 56),
(12, '', 'IDFC Bank', '', 8800, '2023-10-01', '', 'OPENING BAL', '', NULL, '', NULL, 8, 2),
(13, 'FROM IDFC Bank', 'IDFC Bank', 'Cash', 7000, '2023-10-13', '', 'CASH WITHDRAW', 'ADD CASH', 7000, '', '2023-10-13', 8, 2),
(14, 'FROM Cash', 'Cash', 'IDFC Bank', 700, '2023-10-07', '', 'CASH DEPOSIT', 'REDUCE CASH', 700, '', '2023-10-07', 8, 2),
(15, 'TO IDFC Bank', 'SBI', 'SBI', 7000, '2023-10-08', '', 'FROM BANK TRANSFER', '', NULL, '', NULL, 1, 2),
(16, 'FROM SBI', 'IDFC Bank', 'IDFC Bank', 800, '2023-10-05', '', 'TO BANK TRANSFER', '', NULL, '', NULL, 8, 2),
(17, 'ADJ INCR', 'IDFC Bank', 'IDFC Bank', 500, '2023-10-20', '', 'BANK ADJ INCREASE', 'REDUCE CASH', -500, '', '2023-10-20', 8, 2),
(20, '', 'AXIS BANK', '', 15000, '2023-10-28', '', 'OPENING BAL', '', NULL, '', NULL, 9, 56),
(21, '', 'BOI Bank', '', 9000, '2023-09-29', '', 'OPENING BAL', '', NULL, '', NULL, 10, 2),
(22, 'FROM BOI Bank', 'BOI Bank', 'Cash', 9000, '2023-10-01', '', 'CASH WITHDRAW', 'ADD CASH', 9000, '', '2023-10-01', 10, 2),
(23, 'FROM Cash', 'Cash', 'BOI Bank', 9000, '2023-10-14', '', 'CASH DEPOSIT', 'REDUCE CASH', 9000, '', '2023-10-14', 10, 2),
(24, 'TO BOI Bank', 'SBI', 'BOI Bank', 7000, '2023-10-20', '', 'FROM BANK TRANSFER', '', NULL, '', NULL, 1, 2),
(25, 'FROM SBI', 'SBI', 'BOI Bank', 7000, '2023-10-20', '', 'TO BANK TRANSFER', '', NULL, '', NULL, 10, 2),
(31, 'FROM SBI', 'SBI', 'Cash', 600, '2023-10-01', '', 'CASH WITHDRAW', 'ADD CASH', 600, '', '2023-10-01', 1, 2),
(32, 'FROM Cash', 'Cash', 'SBI', 600, '2023-10-01', '', 'CASH DEPOSIT', 'REDUCE CASH', 600, '', '2023-10-01', 1, 2),
(33, 'TO BOI Bank', 'SBI', 'SBI', 4000, '2023-10-22', '', 'FROM BANK TRANSFER', '', NULL, '', NULL, 1, 2),
(34, 'FROM SBI', 'SBI', 'BOI Bank', 400, '2023-10-22', '', 'TO BANK TRANSFER', '', NULL, '', NULL, 10, 2),
(35, 'ADJ RDC', 'SBI', 'SBI', 999, '2023-10-14', '', 'BANK ADJ REDUCE', 'ADD CASH', 999, '', '2023-10-14', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_bills`
--

CREATE TABLE `app1_bills` (
  `billid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `paymacnt` varchar(100) NOT NULL,
  `paymdate` varchar(100) NOT NULL,
  `paymmethod` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `totamt` varchar(100) NOT NULL,
  `category1` varchar(100) NOT NULL,
  `descrptin1` varchar(100) NOT NULL,
  `catqty1` varchar(100) NOT NULL,
  `catprice1` varchar(100) NOT NULL,
  `cattotal1` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `category3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `category4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `payornot` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_bundle`
--

CREATE TABLE `app1_bundle` (
  `bundleid` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `product1` varchar(100) DEFAULT NULL,
  `product2` varchar(100) DEFAULT NULL,
  `product3` varchar(100) DEFAULT NULL,
  `product4` varchar(100) DEFAULT NULL,
  `hsn1` varchar(100) DEFAULT NULL,
  `hsn2` varchar(100) DEFAULT NULL,
  `hsn3` varchar(100) DEFAULT NULL,
  `hsn4` varchar(100) DEFAULT NULL,
  `description1` varchar(255) DEFAULT NULL,
  `description2` varchar(255) DEFAULT NULL,
  `description3` varchar(255) DEFAULT NULL,
  `description4` varchar(255) DEFAULT NULL,
  `qty1` int(11) DEFAULT NULL,
  `qty2` int(11) DEFAULT NULL,
  `qty3` int(11) DEFAULT NULL,
  `qty4` int(11) DEFAULT NULL,
  `price1` double DEFAULT NULL,
  `price2` double DEFAULT NULL,
  `price3` double DEFAULT NULL,
  `price4` double DEFAULT NULL,
  `total1` double DEFAULT NULL,
  `total2` double DEFAULT NULL,
  `total3` double DEFAULT NULL,
  `total4` double DEFAULT NULL,
  `tax1` double DEFAULT NULL,
  `tax2` double DEFAULT NULL,
  `tax3` double DEFAULT NULL,
  `tax4` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_challan`
--

CREATE TABLE `app1_challan` (
  `id` bigint(20) NOT NULL,
  `chal_no` varchar(100) NOT NULL,
  `challan_date` date NOT NULL,
  `challan_type` varchar(100) NOT NULL,
  `billto` longtext NOT NULL,
  `taxamount` double NOT NULL,
  `igst` double NOT NULL,
  `cgst` double NOT NULL,
  `sgst` double NOT NULL,
  `subtotal` double NOT NULL,
  `grand` double NOT NULL,
  `pl` varchar(100) NOT NULL,
  `note` longtext NOT NULL,
  `file` varchar(100) NOT NULL,
  `status` varchar(150) NOT NULL,
  `ref` longtext NOT NULL,
  `shipping` int(11) NOT NULL,
  `adjustment` double NOT NULL,
  `cid_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `is_converted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_challan`
--

INSERT INTO `app1_challan` (`id`, `chal_no`, `challan_date`, `challan_type`, `billto`, `taxamount`, `igst`, `cgst`, `sgst`, `subtotal`, `grand`, `pl`, `note`, `file`, `status`, `ref`, `shipping`, `adjustment`, `cid_id`, `customer_id`, `is_converted`) VALUES
(1, 'DL-01', '2023-10-17', 'Supply of Liquid Gas', 'Nayana Vimal\r\nNS Fashion\r\nNayana N S Fashion complex\r\nkollam\r\nKerala\r\n690978\r\nindia', 415, 0, 207.5, 207.5, 8300, 9715, 'Kerala', '', 'default.png', 'Draft', '6', 1000, 0, 2, 1, 0),
(2, 'DL-02', '2023-10-28', 'Job Work', 'Sreekala sreehari\r\nsree motors\r\nsree motors ns hospital kollam\r\n\r\nkollam\r\nKerala\r\n691567\r\nindia', 333, 0, 166.5, 166.5, 11100, 11433, 'Kerala', '', 'default.png', 'Saved', '2', 0, 0, 2, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `app1_challanitem`
--

CREATE TABLE `app1_challanitem` (
  `id` bigint(20) NOT NULL,
  `product` longtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `hsn` longtext NOT NULL,
  `tax` int(11) NOT NULL,
  `total` double NOT NULL,
  `desc` longtext NOT NULL,
  `rate` double NOT NULL,
  `discount` double NOT NULL,
  `cid_id` int(11) NOT NULL,
  `dl_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_challanitem`
--

INSERT INTO `app1_challanitem` (`id`, `product`, `quantity`, `hsn`, `tax`, `total`, `desc`, `rate`, `discount`, `cid_id`, `dl_id`) VALUES
(1, 'Cleaning Items', 7, '567575', 5, 8300, '', 1200, 100, 2, 1),
(2, 'Hair products', 8, '787899', 3, 11100, 'sales cost', 1400, 100, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_cheqs`
--

CREATE TABLE `app1_cheqs` (
  `chequeid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `bankacc` varchar(100) NOT NULL,
  `mailaddr` varchar(100) NOT NULL,
  `paydate` varchar(100) NOT NULL,
  `chequeno` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `category1` varchar(100) NOT NULL,
  `descrptin1` varchar(100) NOT NULL,
  `catqty1` varchar(100) NOT NULL,
  `catprice1` varchar(100) NOT NULL,
  `cattotal1` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `category3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `category4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_company`
--

CREATE TABLE `app1_company` (
  `cid` int(11) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `caddress` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `cimg` varchar(100) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `industry` varchar(100) NOT NULL,
  `ctype` varchar(100) NOT NULL,
  `abt` varchar(100) NOT NULL,
  `paid` varchar(100) NOT NULL,
  `gst_number` varchar(100) DEFAULT NULL,
  `gst_type` varchar(100) DEFAULT NULL,
  `pan_number` varchar(100) DEFAULT NULL,
  `cash` int(11) NOT NULL,
  `id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_company`
--

INSERT INTO `app1_company` (`cid`, `cname`, `caddress`, `city`, `state`, `pincode`, `cemail`, `phone`, `cimg`, `bname`, `industry`, `ctype`, `abt`, `paid`, `gst_number`, `gst_type`, `pan_number`, `cash`, `id_id`) VALUES
(1, 'Amalcs0006@', 'Amalcs0006@', 'Amalcs0006@', 'Kerala', '656565', 'Amalcs0006@gmail.com', '7452415263', 'images/altostech_tMUhmdu.png', 'Amalcs0006@', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', NULL, NULL, NULL, 0, 1),
(2, 'cotra pvt ltd', 'infopark Phase 1', 'Kochi', 'Kerala', '897654', 'cotra@gmail.com', '9988776655', 'images/images.png', 'cotra pvt ltd', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', NULL, NULL, NULL, 809326, 2),
(3, 'mdigitz', 'Ernakulam', 'kakkanad', 'Kerala', '685505', 'mdigitz@gmail.com', '9547894569', 'images/bundle.png', 'mdigitz', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', NULL, NULL, NULL, 0, 3),
(4, 'sri mallika sweets', 'D.KALYANAKUMAR,126,VEERAMUDAYAN CROSS STREET, MAHALAKSHMI NAGAR, MUTHUPATTI,MADURAI', 'Madurai', 'Tamil Nadu', '625003', 'srimallika@gmail.com', '09025427405', 'images/images_1.jpg', 'sri mallika sweets', 'Manufacturing', 'One Person Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 4),
(5, 'fdhgjh', 'gfhgfjhgj', 'gfhgfhjghj', 'Andaman and Nicobar Islads', '43456477', 'salubaiju259@gmail.com', '9074081916', 'images/CRCRCRR-300x300.jpg', 'rtjyui', 'Accounting Services', 'Public Limited Company', 'No', 'Cash', NULL, NULL, NULL, 0, 5),
(6, 'rock', '1427 228TH ST BOTHELL WA 98021-7407 USA', 'washington', 'Mizoram', '671313', 'sarunkumarvv1729@yandex.com', '9526023303', 'images/excavator.png', 'rock', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', NULL, NULL, NULL, 0, 7),
(7, 'abcd', 'ekm', 'tcr', 'Kerala', '690546', 'abcd@gmail.com', '9878445678', 'images/aa427a67d5dc8bc31629fbe50cc62abd.jpg', 'Abc', 'Information Tecnology', 'Partnership Firm Company', 'Yes', 'Cheque', NULL, NULL, NULL, 0, 8),
(8, 'sri  sweets', 'Chalikkadavu Bridge', 'Muvattupuzha', 'Kerala', '686673', 'srirooparaju@gmail.com', '09025427405', 'images/add_purchase_order16-1.PNG', 'sri  sweets', 'Restaurant/Bar and similar', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 10),
(9, 'Altos', 'Infopark Phase I', 'kakkanad', 'Kerala', '686512', 'gokulbiju1432@gmail.com', '7907645194', 'images/fish.png', 'Compnay Co', 'Information Tecnology', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 11),
(10, 'infox', 'infopark,kochi', 'ernakulam', 'Kerala', '671313', 'arun@email.com', '9526557994', 'images/gloves.png', 'infox', 'Information Tecnology', 'Private Limited Company', 'No', 'Cheque', NULL, NULL, NULL, 0, 12),
(11, 'Sweet PVT LMTD', 'eravu', 'kochi', 'Kerala', '680659', 'sweet@gmail.com', '9875451232', 'images/cherry.jpg', 'Sweet Corn', 'Restaurant/Bar and similar', 'Private Limited Company', 'Yes', 'Bank Transfer', NULL, NULL, NULL, 0, 13),
(12, 'Altos', 'Altos Technology', 'Kochi', 'Kerala', '907890', 'altos@gmail.com', '896745324', 'images/default1.jpg', 'Altos', 'Information Tecnology', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 14),
(13, 'kk ltd', 'kannur', 'kannur', 'Kerala', '65050', 'kkttd123@gmail.com', '09876543210', 'images/service.png', 'sss', 'Information Tecnology', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 15),
(14, 'Sri Roopa', '126,VEERAMUDAYAN CROSS STREET, MAHALAKSHMI NAGAR, MUTHUPATTI,MADURAI', 'kochi', 'kerala', '11111', 'kausalliya16@gmail.com', '09025427405', 'images/add_purchase_order16-2.PNG', 'roopa', 'Manufacturing', 'Public Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 23),
(15, 'Altos tech', 'kakanadu', 'kochi', 'Kerala', '673307', 'jishnupb098@gmail.com', '8111819411', 'images/logo.png', 'Altos technologies', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', NULL, NULL, NULL, 0, 28),
(16, 'fghj', 'dfgh', 'fghjk', 'Chandigarh', '658898', 'j@gmail.com', '9874563210', 'images/clk.jpg', 'dfghj', 'Information Tecnology', 'Public Limited Company', 'Yes', 'Cheque', NULL, NULL, NULL, 0, 30),
(17, 'Dripstone', 'Kochi', 'Kochi', 'Kerala', '682021', 'dripstone@gmail.com', '9400788397', '/images/default.png', 'Dripstone', 'Information Tecnology', 'One Person Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 32),
(18, 'Hitech', 'hjlkl', 'ghjgjk', 'Kerala', '658231', 'hi@gmail.com', '9685740120', 'images/ap.jpg', 'Sweet Corn', 'Manufacturing', 'Public Limited Company', 'No', 'Cash', NULL, NULL, NULL, 0, 33),
(19, 'Infox', 'Technologies', 'Kakkanad', 'Kerala', '688456', 'infox@gmail.com', '048424567843', 'images/Screenshot_70.png', 'iNFOX Technologies', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', NULL, NULL, NULL, 0, 34),
(20, 'vi', 'vi', 'vi', 'Chhattisgarh', '5623232', 'vi@gmail.com', '65652323', 'images/Screenshot_13.png', 'vi', 'Information Tecnology', 'Joint-Venture Company', 'No', 'Cheque', NULL, NULL, NULL, 0, 36),
(21, 'ai', 'ai', 'thrissur', 'Haryana', '6653232', 'ai@gmail.com', '54512121212', 'images/Screenshot_13_Q4GDyuU.png', 'ai', 'Manufacturing', 'Partnership Firm Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 37),
(22, 'Sweet PVT LMTD', 'kochi', 'Ernakulam', 'Kerala', '680654', 'sweet@gmail.com', '9875451232', 'images/1.jpg', 'Sweet Corn', 'Restaurant/Bar and similar', 'Public Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 38),
(23, 'anitha', 'SK street,kochi,', 'ernakulam', 'Kerala', '625003', 'anitha@gmail.com', '9025427405', 'images/3d.jpg', 'anitha', 'Information Tecnology', 'Private Limited Company', 'Yes', 'Cheque', NULL, NULL, NULL, 0, 39),
(24, 'altos technologies', 'chalikkadavu', 'Muvattupuzha', 'Kerala', '686673', 'manjutraders@gmail.com', '07902514506', 'images/Capture_D5flLfO.PNG', 'altos technologies', 'Information Tecnology', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 40),
(25, 'Sweet PVT LMTD', 'eravu', 'THRISSUR', 'Kerala', '658231', 'sweet@gmail.com', '8086084101', 'images/cherry_aV4qcPW.jpg', 'Sweet Corn', 'Accounting Services', 'Joint-Venture Company', 'Yes', 'Credit card/Debit card', NULL, NULL, NULL, 0, 41),
(26, 'acc', 'acc co. paravoor', 'kollam', 'Kerala', '691578', 'acc@gmail.com', '325728854', '/images/default.png', 'Acc Company', 'Manufacturing', 'One Person Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 43),
(27, 'abc', 'abc', 'abc', 'Kerala', '789789', '', '123456789', '/images/default.png', 'abcd', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', NULL, NULL, NULL, 0, 45),
(28, 'Empuraan', 'Kochi', 'kochi', 'Kerala', '686105', 'empuraan@gmail.com', '7845612339', 'images/Fashion-Shopping-2.jpg', 'Empuraan', 'Accounting Services', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 1000, 50),
(29, 'Altos Technologies', 'Mekozhoor', 'Pathanamthitta', 'Kerala', '689678', 'aruntbalan@gmail.com', '9544799483', 'images/6.jpg', 'Sangeetha Soman', 'Accounting Services', 'Public Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 52),
(30, 'Test', 'abcd', 'kochi', 'Kerala', '564534', 'test@mail.com', '8978675645', '/images/default.png', 'test', 'Manufacturing', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 54),
(31, 'Altos Technologies', 'Mekozhoor', 'Pathanamthitta', 'Kerala', '689678', 'aruntbalan@gmail.com', '9544799483', 'images/7.jpg', 'Adhrith', 'Accounting Services', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 55),
(32, 'Test', 'abcd', 'Kochi', 'Kerala', '788990', 'test@mail.com', '9876543212', '/images/default.png', 'Test Pvt Ltd', 'Manufacturing', 'Joint-Venture Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 60),
(33, 'company1', 'company', 'kozhikkode', 'Kerala', '656322', 'dompany1@gmail.com', '9874568123', 'images/peakpx_1.jpg', 'companyname', 'Consultants, doctors, Lawyers and similar', 'Private Limited Company', 'No', 'Cheque', NULL, NULL, NULL, 0, 61),
(34, 'altos', 'jhgfds', 'bhvgfcds', 'Karnataka', '560048', 'j@gmail.com', '9526620250', 'images/BASE_-ZOHO.txt', 'dfghj', 'Manufacturing', 'Partnership Firm Company', 'No', 'Cheque', NULL, NULL, NULL, 0, 63),
(35, 'fghj', 'ghj', 'jjj', 'Dadra and Nagar Haveli', '987745', 'j@gmail.com', '9526620250', 'images/Account_Receivable_Summary_Report.docx', 'dfghj', 'Information Tecnology', 'Partnership Firm Company', 'No', 'Credit card/Debit card', NULL, NULL, NULL, 0, 65),
(36, 'Testing@1234', 'Testing@1234', 'Testing@1234', 'Haryana', '625845', 'comapny1234@gmail.com', '98574859685', 'images/altostech_y0IOEPG.png', 'Testing@1234', 'Accounting Services', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 66),
(37, 'tr', 'tre', 'tre', 'Rajasthan', '560048', 'j@gmail.com', '9526620250', 'images/Account_Receivable_Summary_Report_Jhm6dxM.docx', 'dfghj', 'Information Tecnology', 'Joint-Venture Company', 'Yes', 'Cheque', NULL, NULL, NULL, 0, 67),
(38, 'altos', 'kochi', 'vvv', 'Kerala', '670048', 'aksh@gmail.com', '07778889990', '/images/default.png', 'saijuss', 'Information Tecnology', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 70),
(39, 'asdf', 'adf', 'asd', 'Goa', '1233', 'sdf@gmail.com', '9496830853', 'images/books2.jpg', 'wee', 'Information Tecnology', 'Partnership Firm Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 71),
(40, 'Madyz', 'STAMFORD BRIDGE', 'Palakkad', 'Kerala', '678592', 'ajay@gmail.com', '08943735902', '/images/default.png', 'Blind', 'Restaurant/Bar and similar', 'One Person Company', 'Yes', 'Bank Transfer', NULL, NULL, NULL, 0, 73),
(41, 'HS Motors', 'HS Motors NH Road Near NH Hospital ', 'kollam', 'Kerala', '691578', 'developersaltos@gmail.com', '9995798756', '/images/default.png', 'Industrial', 'Accounting Services', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 74),
(42, 'abcdef company', 'thodupuzha', 'new city', 'Kerala', '685585', 'abcdef@gmail.com', '123456789', 'images/Finsys_-_Google_Chrome_18-05-2023_22_19_14.png', 'abcdef', 'Information Tecnology', 'Private Limited Company', 'No', 'Bank Transfer', NULL, NULL, NULL, 0, 77),
(43, 'Altos Technology', 'Infopark phase1', 'kottayam', 'Kerala', '686539', 'altos@gmail.com', '8606486856', '/images/default.png', 'krish', 'Information Tecnology', 'Public Limited Company', 'No', 'Cheque', NULL, NULL, NULL, 0, 78),
(44, 'Altos Technology', 'Infopark phase1', 'kochi', 'Kerala', '686539', 'altos@gmail.com', '8606486886', '/images/default.png', 'divya', 'Information Tecnology', 'Private Limited Company', 'No', 'Credit card/Debit card', NULL, NULL, NULL, 0, 80),
(45, 'ABC org', '123 Street', 'Ernakulam', 'Kerala', '682002', 'abc@gmail.com', '9594818264', '/images/default.png', 'IT', 'Manufacturing', 'One Person Company', 'No', 'Cash', NULL, NULL, NULL, 0, 81),
(46, 'dream', 'Palakkad', 'palakkad', 'Kerala', '678905', 'reshnasuresh@gmail.com', '1234567899', '/images/default.png', 'dreams company', 'Accounting Services', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 880990, 82),
(47, 'altos', 'kakanadu', 'kochi', 'Kerala', '67307', 'altos@gmai.com', '8956235689', 'images/images.png', 'altos', 'Accounting Services', 'Private Limited Company', 'No', 'Cash', NULL, NULL, NULL, 0, 83),
(48, 'Hariz', 'Hariz Pvt. Ltd Technopark Tvm', 'Trivandrum', 'Kerala', '691675', 'haripriya@gmail.com', '9995798365', '/images/default.png', 'Hariz', 'Accounting Services', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 84),
(49, 'neww', 'koottanad', 'palakkad', 'Kerala', '1234567', 'reshnat@gmail.com', '1234567890', '/images/default.png', 'new company', 'Manufacturing', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 85),
(50, 'Reliance', 'flat 103 E, Tower1 DD Diamond valley, Edachira, Kakkanad', 'Thalassery', 'Kerala', '8998777', 'rijinp@gmail.com', '09809801245', '/images/default.png', 'Reliance', 'Information Tecnology', 'Public Limited Company', 'No', 'Cash', NULL, NULL, NULL, 0, 87),
(51, 'company2', 'company add', 'city', '', '673002', 'company2@gmail.com', '988566060', 'images/download.jfif', 'companyname', 'Information Tecnology', 'Public Limited Company', 'No', 'Credit card/Debit card', NULL, NULL, NULL, 0, 88),
(52, 'altos', 'falak(ho),cheliya(Po),koyilandy,kozhikode', 'kozhikode', 'Kerala', '673306', 'akdfjiuyu@gmail.com', '9946844014', '/images/default.png', 'jjfkjtk', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', NULL, NULL, NULL, 0, 89),
(53, 'rtt', 'asd', 'hjklk', 'Delhi', '4566', 'abcd@gmail.com', '912345678', 'images/books2_41dYXAH.jpg', 'rtt', 'Information Tecnology', 'Partnership Firm Company', 'Yes', 'Cheque', NULL, NULL, NULL, 0, 90),
(54, 'Testing12345', 'Testing12345', 'Testing12345', 'Himachal Predesh', '857496', 'Testing12345@gmail.com', '8574965241', 'images/altostech_VI7RcPQ.png', 'Testing12345', 'Information Tecnology', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 91),
(55, 'Altos Technology', 'Infopark phase1', 'kottayam', 'Kerala', '686539', 'altos@gmail.com', '8606486856', '/images/default.png', 'divya', 'Information Tecnology', 'Public Limited Company', 'No', 'Cheque', NULL, NULL, NULL, 0, 92),
(56, 'Clown', 'CLOWN LLP PVT LTD', 'PALAKKAD', 'Kerala', '687002', 'muhammedasgyww@gmail.com', '1023654879', '/images/default.png', 'IDBI', 'Consultants, doctors, Lawyers and similar', 'Partnership Firm Company', 'No', 'Cash', NULL, NULL, NULL, 0, 93),
(57, 'test1', 'test', 'Tvm', 'Kerala', '432312', 'test1@mail.com', '3434343434', 'images/finsys.png', 'test', 'Information Tecnology', 'Public Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 94),
(58, 'Altos Technology', 'Infopark phase1', 'kochi', 'Jammu and Kashmir', '686539', 'altos@gmail.com', '8606486887', '/images/default.png', 'krish', 'Information Tecnology', 'Public Limited Company', 'No', 'Cheque', NULL, NULL, NULL, 0, 95),
(59, 'Altos Technology', 'Infopark phase1', 'kochi', 'Kerala', '686539', 'altos@gmail.com', '8606486858', '/images/default.png', 'divya', 'Information Tecnology', 'Private Limited Company', 'No', 'Cheque', NULL, NULL, NULL, 0, 96),
(60, 'Al bertoz', 'Al bertoz, bertoz road ', 'bertoz city', 'Kerala', '690504', 'Nothing@gmail.com', '9207083153', 'images/UtPLor.jpg', 'Al bertoz', 'Manufacturing', 'Joint-Venture Company', 'No', 'Bank Transfer', NULL, NULL, NULL, 0, 99),
(61, 'altos', 'kochi', '680563', 'Kerala', '680563', 'altos@gmail.com', '8075955676', 'images/Capture1.PNG', 'altos it solution', 'Information Tecnology', 'Private Limited Company', 'Yes', 'Cash', NULL, NULL, NULL, 0, 100),
(62, 'kk', 'Vadath house. Kinginimattom (PO) Kolenchery  Ernakulam', 'Kolenchery', 'Kerala', '682311', 'keerthanavadath@gmail.com', '9526897622', '/images/default.png', 'kk', 'Accounting Services', 'Public Limited Company', 'No', 'Cash', NULL, NULL, NULL, 0, 101),
(63, 'RD pvt ltd', 'Thakazhy', 'Alappzha', 'Kerala', '688562', 'rd@gmail.com', '9605361877', '/images/default.png', 'RD pvt ltd', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', NULL, NULL, NULL, 0, 102),
(64, 'Altos Technology', 'Infopark phase1', 'kochi', 'Karnataka', '686539', 'altos@gmail.com', '8606486887', '/images/default.png', 'krish', 'Information Tecnology', 'Public Limited Company', 'No', 'Credit card/Debit card', NULL, NULL, NULL, 0, 103),
(65, 'Altos Technology', 'Infopark phase1', 'vbnm', 'Kerala', '123343', 'altos@gmail.com', '8606486884', '/images/default.png', 'devi', 'Information Tecnology', 'Private Limited Company', 'No', 'Credit card/Debit card', NULL, NULL, NULL, 0, 104),
(66, 'Altos Technology', 'Infopark phase1', 'kottayam', 'Bihar', '686539', 'altos@gmail.com', '8606486856', '/images/default.png', 'nakul', 'Information Tecnology', 'Private Limited Company', 'No', 'Cheque', NULL, NULL, NULL, 0, 105),
(67, 'kk', 'ernakulam', 'Kolenchery', 'Kerala', '682311', 'jethi@gmail.com', '9526897622', 'images/recurring_expense__32.pdf', 'kk', 'Consultants, doctors, Lawyers and similar', 'Public Limited Company', 'Yes', 'Cheque', NULL, NULL, NULL, 0, 107);

-- --------------------------------------------------------

--
-- Table structure for table `app1_credit`
--

CREATE TABLE `app1_credit` (
  `creditnoteid` int(11) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `biladdr` varchar(100) NOT NULL,
  `creditdate` varchar(100) NOT NULL,
  `creditno` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `invnum` varchar(100) NOT NULL,
  `invperiod` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `descrip` varchar(100) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `subtot` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `grndtot` int(11) DEFAULT NULL,
  `taxamnt` int(11) DEFAULT NULL,
  `product1` varchar(100) NOT NULL,
  `descrip1` varchar(100) NOT NULL,
  `qty1` int(11) DEFAULT NULL,
  `price1` varchar(100) NOT NULL,
  `tax1` varchar(100) NOT NULL,
  `total1` int(11) DEFAULT NULL,
  `product2` varchar(100) NOT NULL,
  `descrip2` varchar(100) NOT NULL,
  `qty2` int(11) DEFAULT NULL,
  `price2` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `total2` int(11) DEFAULT NULL,
  `product3` varchar(100) NOT NULL,
  `descrip3` varchar(100) NOT NULL,
  `qty3` int(11) DEFAULT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` int(11) DEFAULT NULL,
  `tax3` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_creditperiod`
--

CREATE TABLE `app1_creditperiod` (
  `id` bigint(20) NOT NULL,
  `newperiod` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_creditperiod`
--

INSERT INTO `app1_creditperiod` (`id`, `newperiod`, `cid_id`) VALUES
(1, 20, NULL),
(2, 20, NULL),
(3, 4, NULL),
(4, 20, 40),
(5, 89, NULL),
(6, 77, NULL),
(7, 35, 40),
(8, 65, NULL),
(9, 17, 40);

-- --------------------------------------------------------

--
-- Table structure for table `app1_currencies`
--

CREATE TABLE `app1_currencies` (
  `currencyid` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `decimal_places` varchar(255) NOT NULL,
  `format` varchar(255) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_customer`
--

CREATE TABLE `app1_customer` (
  `customerid` int(11) NOT NULL,
  `title` varchar(10) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `gsttype` varchar(100) DEFAULT NULL,
  `gstin` varchar(100) NOT NULL,
  `panno` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `shipstreet` varchar(100) DEFAULT NULL,
  `shipcity` varchar(100) DEFAULT NULL,
  `shipstate` varchar(100) DEFAULT NULL,
  `shippincode` varchar(100) DEFAULT NULL,
  `shipcountry` varchar(100) DEFAULT NULL,
  `opening_balance` double DEFAULT NULL,
  `opening_balance_due` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `opnbalance_status` varchar(100) NOT NULL,
  `status` varchar(150) NOT NULL,
  `receivables` double DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL,
  `credit_limit` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_customer`
--

INSERT INTO `app1_customer` (`customerid`, `title`, `firstname`, `lastname`, `company`, `location`, `gsttype`, `gstin`, `panno`, `email`, `website`, `mobile`, `street`, `city`, `state`, `pincode`, `country`, `shipstreet`, `shipcity`, `shipstate`, `shippincode`, `shipcountry`, `opening_balance`, `opening_balance_due`, `date`, `opnbalance_status`, `status`, `receivables`, `file`, `cid_id`, `credit_limit`) VALUES
(1, 'Mr', 'Nayana', 'Vimal', 'NS Fashion', 'Kollam', 'unregistered Business', '', 'APPCK5645H', 'nayana@gmail.com', 'www.nayana.in', '9995678909', 'Nayana N S Fashion complex', 'kollam', 'Kerala', '690978', 'india', 'Nayana N S Fashion complex', 'kollam', 'Kerala', '690978', 'india', 9000, 1000, '2023-10-10', 'Paid', 'Active', 1000, 'default.jpg', 2, NULL),
(2, 'Mrs', 'Anita', 'TL', 'AA Company', 'kongad', 'unregistered Business', '', 'ACCC5555', 'ajayjayathilakan0@gmail.com', '', '0894373590', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 1000, 0, '2023-10-11', 'Paid', 'Active', 0, 'default.jpg', 40, NULL),
(3, 'Mr', 'renu', 'lal', 'abc', 'fghj', 'Unregistered Business', '', 'AREFTD1234H', 'renu@gmail.com', 'www.abc.com ', '9098788767', 'sxdfcgvh', 'kochi', 'Kerala', '123343', 'india ', 'sxdfcgvh', 'kochi', 'Kerala', '123343', 'india ', 1000, 1000, '2023-10-16', 'Default', 'Active', NULL, 'default.jpg', 55, NULL),
(4, 'Mr', 'REENA', 'NM', 'ABCD', 'kerala', 'unregistered Business', '', 'APZAF7865F', 'Reena@gmail.com', 'www.abcd.com', '9123456789', 'asdf1234567890', 'KOTTAKKAL', 'Kerala', '786867', 'India', 'asdf1234567890', 'KOTTAKKAL', 'Kerala', '786867', 'India', 100000, 100000, '2023-10-17', 'Default', 'Active', 100000, 'default.jpg', 53, NULL),
(5, 'Mr', 'Seema', 'Das', 'dass', 'Kochi', 'SEZ', '', '', 'dass@mail.com', 'www.dass.com', '9876543332', 'abcd place', 'Kochi', 'Kerala', '322332', 'India', 'abcd place', 'Kochi', 'Kerala', '322332', 'India', NULL, NULL, NULL, 'Default', 'Active', 0, 'default.jpg', 57, NULL),
(6, 'Mr', 'Seetha', 'Raj', 'dream', 'pallippuram', 'GST-unregistered', '', 'APPCH6757H', 'seetha@gmail.com', 'www.seetha.in', '9999567564', 'fyugh guijkle', 'kollam', 'Kerala', '', '', 'fyugh guijkle', 'kollam', 'Kerala', '', '', 9000, 9000, '2023-10-19', 'Default', 'Active', 16455, 'default.jpg', 2, NULL),
(7, 'Mr', 'XDFGH', 'DXFCVG', 'ZXDCFV', 'ZSDFG', 'Unregistered Business', '', 'AREFTD1234H', 'abc@gmail.com', 'www.abc.com ', '9098788767', 'CFGVHB', 'kottayam', 'Jammu and Kashmir', '686539', 'india ', 'CFGVHB', 'kottayam', 'Jammu and Kashmir', '686539', 'india ', 1000, 1000, '2023-10-19', 'Default', 'Active', NULL, 'default.jpg', 59, NULL),
(8, 'Miss', 'SAMAL', 'agh', 'dffg', 'abcd@gamil.com', 'Unregistered Business', '29AGHK2345', 'APPCK12', 'ksva@gmail.com', 'www.abc.com', '9123456789', 'ass', 'as', 'Jammu and Kashmir', '12344', 'India', 'ass', 'as', 'Jammu and Kashmir', '12344', 'India', 10000, 10000, '2023-10-20', 'Default', 'Active', NULL, 'default.jpg', 33, NULL),
(9, 'Miss', 'Meera', 'KL', 'KL', 'Kozhikode', 'Tax Deductor', '18AABCU9603R1ZM', 'ASDFG5656T', 'kl@gmail.com', 'www.kl.com', '3454567666', 'abcd', 'Kochi', 'Kerala', '898989', 'India', 'abcd', 'Kochi', 'Kerala', '898989', 'India', 9000, 9000, '2023-10-20', 'Default', 'Active', 9000, 'default.jpg', 57, NULL),
(10, 'Mr', 'Rohit', 'sharma', 'chitters', 'lulu mall', 'Overseas', '', 'APPCK7465F', 'XCHITTER@GAIL.COM', 'www.chitter.com', '7356284633', 'qudratic side,emncvopcs', 'regoshepheric', 'Delhi', '690504', 'india', 'qudratic side,emncvopcs', 'regoshepheric', 'Delhi', '690504', 'india', 4000, 4000, '2023-10-24', 'Default', 'Active', NULL, 'default.jpg', 60, NULL),
(11, 'Mr', 'Neethu', 'Soman', 'Rajathi', 'Ernakulam', 'Consumer', '', 'APPCK5545G', 'neethu@gmail.com', 'www.neethu.in', '9995678786', 'Rajathi Shopping Complex ', 'Ernakulam', 'Kerala', '696765', 'india', 'Rajathi Shopping Complex ', 'Ernakulam', 'Kerala', '696765', 'india', 9000, 9000, '2023-10-25', 'Default', 'Active', 15510, 'default.jpg', 2, 9000),
(12, 'Mrs', 'ROSILINT', 'DAVIS', 'altos', 'kochi', 'Registered Business - Composition', '32AADFC4545F1Z1', 'ABCTY1234D', 'akhilakd5299@gmail.com', 'https://chat.openai.com/', '7025306368', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'Kerala', '680563', 'India', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'Kerala', '680563', 'India', 561222, 561222, '2023-10-25', 'Default', 'Active', NULL, 'default.jpg', 61, NULL),
(13, 'Mr', 'Praveen', 'P', 'Praveen Ltd', 'Ernakulam', 'Registered Business - Composition', '78HGJGY7898T8Z9', 'APPCK7465P', 'Praveenpradeepkumr@gmail.com', '', '9898767898', '123 street Thoppumpady', 'Ernakulam', 'Kerala', '682002', 'India', '123 street Thoppumpady', 'Ernakulam', 'Kerala', '682002', 'India', -2000, 2000, '2023-10-26', 'Default', 'Active', 2000, 'default.jpg', 45, 860000),
(14, 'Mr', 'Vijay', 'Vinod', 'Vijay Ltd', 'Allapuzha', 'unregistered Business', '', 'APPCK7465A', 'vijay@gmail.com', '', '9898768876', '123 Street Allapey Road', 'Allapuzha', 'Kerala', '787656', 'India', '123 Street Allapey Road', 'Allapuzha', 'Kerala', '787656', 'India', -2000, -2000, '2023-10-26', 'Default', 'Active', -2000, 'default.jpg', 45, 200000),
(15, 'Mr', 'Sreehari', 'dev', 'SS Company', 'kollam', 'unregistered Business', '', 'APPCH7867H', 'nayana@gmail.com', 'www.sreehari.in', '9999675676', 'SS Company Paravoor', 'kollam', 'Kerala', '678767', 'india', 'SS Company Paravoor', 'kollam', 'Andaman Nicobar', '678767', 'india', 9000, 9000, '2023-10-26', 'Default', 'Active', 9000, 'default.jpg', 2, NULL),
(16, 'Mr', 'kausalya', 'murali', 'KK Production', 'kollam', 'unregistered Business', '', 'APPGJ7867H', 'nayana@gmail.com', 'www.kausalya.in', '9995676765', 'KK Production Store Market Puthoor\nKottarakkara', 'kollam', 'Kerala', '786756', 'india', 'KK Production Store Market Puthoor\nKottarakkara', 'kollam', 'Andaman Nicobar', '786756', 'india', 9000, 9000, '2023-10-26', 'Default', 'Active', 9000, 'default.jpg', 2, NULL),
(17, 'Mr', 'Aadhi', 'Hari', 'Aadhi motors', 'pattam', 'unregistered Business', '', 'AVBHJ0987H', 'nayana@gmail.com', 'www.aadhi.in', '7356144323', 'Aadhi motors', 'pattam', 'Kerala', '678767', 'india', 'Aadhi motors', 'pattam', 'Andaman Nicobar', '678767', 'india', 9000, 9000, '2023-10-26', 'Default', 'Active', 9000, 'default.jpg', 2, NULL),
(18, 'Mr', 'sreyas', 'mohan', 'World Portion', 'Ernakulam', 'Registered Business - Regular', '32AAPPA5656Z1P1', 'APPCG5656G', 'sreyas@gmail.com', '', '9995645342', 'World Pltd Infopark Kochi', 'Ernakulam', 'Kerala', '678786', 'India', 'World Pltd Infopark Kochi', 'Ernakulam', 'Kerala', '678786', 'India', 8900, 8900, '2023-10-27', 'Default', 'Active', 8900, 'default.jpg', 2, 0),
(19, 'Mr', 'Anoop', 'Das', 'Anoop motors', 'kochi ', 'unregistered Business', '', 'APPCK7865H', 'anopp@gmail.com', 'www.anoop.in', '9995678787', 'Anoop motors NH Block kannur', 'kannur', 'Kerala', '698767', 'india', 'Anoop motors NH Block kannur', 'kannur', 'Kerala', '698767', 'india', 5000, 5000, '2023-10-27', 'Default', 'Active', 5000, 'default.jpg', 2, 80000),
(20, 'Mr', 'Sreekala', 'sreehari', 'sree motors', 'kollam', 'Registered Business - Composition', '32AAFGH7857A1Z1', 'APPCH6867G', 'sree@gmail.com', 'www.gmail.com', '9995678789', 'sree motors ns hospital kollam\n', 'kollam', 'Kerala', '691567', 'india', 'sree motors ns hospital kollam\n', 'kollam', 'Kerala', '691567', 'india', 8900, 0, '2023-10-28', 'Paid', 'Active', 3900, 'default.jpg', 2, NULL),
(21, 'Mr', 'Vyshak', 'Murali', 'Vyshak Ltd', 'Kollam', 'unregistered Business', '', 'IOSJO2290H', 'Vyshak@gmail.com', '', '9890987890', '123 Street Kottayam', 'Kottayam', 'Kerala', '898789', 'India', '123 Street Kottayam', 'Kottayam', 'Kerala', '898789', 'India', -3000000, -3000000, '2023-10-28', 'Default', 'Active', -3000000, 'default.jpg', 45, NULL),
(22, 'Mr', 'Anu', 'A', 'Anu Ltd', 'Ernakulam', 'unregistered Business', '', 'UIJUIJ9892J', 'anu@gmail.com', '', '9878909899', '12345 Street Maradu', 'Ernakulam', 'Kerala', '898498', 'India', '12345 Street Maradu', 'Ernakulam', 'Kerala', '898498', 'India', -35000, -35000, '2023-10-28', 'Default', 'Active', -35000, 'default.jpg', 45, NULL),
(23, 'Mr', 'Priya', 'S', 'Priya Ltd', 'Kannur', 'Registered Business - Composition', '89UJUHY8982H7Z9', 'BJBBI9080K', 'Priya@gmail.com', '', '8989748937', '123 Street Ponani, ', 'Kannur', 'Kerala', '890002', 'India', '123 Street Ponani, ', 'Kannur', 'Kerala', '890002', 'India', -789000, -789000, '2023-10-30', 'Default', 'Active', -789000, 'default.jpg', 45, 100000000),
(24, 'Mr', 'Tom', 'T', 'Tom Ltd', 'Ernakulam', 'Consumer', '', 'HJAKI6783K', 'tom@gmail.com', '', '7890456738', '123 Street Malayatoor', 'Ernakulam', 'Kerala', '456789', 'India', '123 Street Malayatoor', 'Ernakulam', 'Kerala', '456789', 'India', -200000, -200000, '2023-10-30', 'Default', 'Active', NULL, 'default.jpg', 45, 200000),
(25, 'Mr', 'Nivedh', 'kumar', 'Nivya Fashion', 'kochi', 'unregistered Business', '', 'APPCK8978H', 'nived@gmail.com', 'www.nivedh.in', '9999578987', 'Nivya Fashion Design RP Mall Kollam', 'kollam', 'Kerala', '691576', 'india', 'Nivya Fashion Design RP Mall Kollam', 'kollam', 'Kerala', '691576', 'india', 10000, 0, '2023-10-31', 'Default', 'Active', 0, 'default.jpg', 2, 0),
(26, 'Mr', 'jithin', 'lal', 'ABS Fruits', 'kollam', 'unregistered Business', '', 'APPCJ7876G', 'jithin@gmail.com', 'www.jithin.in', '9995678787', 'ABS Fruits Near Kalluvathukkal Junction', 'kollam', 'Kerala', '691565', 'india', 'ABS Fruits Near Kalluvathukkal Junction', 'kollam', 'Kerala', '691565', 'india', 8000, 8000, '2023-10-31', 'Default', 'Active', 8000, 'default.jpg', 2, 0),
(27, 'Mr', 'mohan', 'das', 'mohn pvt ltd', '', 'unregistered Business', '', 'APPCK3333F', '', '', '', 'ssssssss', '', '', '', '', 'ssssssss', '', '', '', '', 23000, 23000, '2023-10-31', 'Default', 'Active', NULL, 'default.jpg', 63, NULL),
(28, 'Mr', 'renu', 'lal', 'ZXDCFV', 'fghj', 'Unregistered Business', '', 'AREFTD1234H', 'renu@gmail.com', 'www.abc.com ', '9098788767', 'wsdrftgyhujik', 'kottayam', 'Karnataka', '686539', 'india ', 'wsdrftgyhujik', 'kottayam', 'Karnataka', '686539', 'india ', 1000, 1000, '2023-11-01', 'Default', 'Active', NULL, 'default.jpg', 65, NULL),
(29, 'Mr', 'riya', 'mol', 'abc', 'bjnmk', 'Unregistered Business', '', 'AREFTD1234H', 'anu@gmail.com', 'www.abc.com ', '9098788767', 'sxdcfgvhbjnkm', 'kochi', 'Ladakh', '686539', 'india ', 'sxdcfgvhbjnkm', 'kochi', 'Ladakh', '686539', 'india ', 1000, 1000, '2023-11-01', 'Default', 'Active', NULL, 'default.jpg', 66, NULL),
(30, 'Mr', 'raam', 's', 'rs', 'Kolenchery', 'unregistered Business', '', 'ABCTY1234D', 'JETHI@GMAIL.COM', 'www.jethi.com', '9988776655', 'kolenchery', 'kolenchery', 'Kerala', '682311', 'india', 'kolenchery', 'kolenchery', 'Kerala', '682311', 'india', 23000, 23000, '2023-11-01', 'Default', 'Active', NULL, 'default.jpg', 67, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `app1_customize`
--

CREATE TABLE `app1_customize` (
  `customizeid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `pcolour` varchar(255) NOT NULL,
  `scolour` varchar(255) NOT NULL,
  `fonts` varchar(255) NOT NULL,
  `lastedited` varchar(255) NOT NULL,
  `selected` varchar(255) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_cust_statment`
--

CREATE TABLE `app1_cust_statment` (
  `id` bigint(20) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `Date` date DEFAULT NULL,
  `Transactions` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `Details2` varchar(255) DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  `Payments` double DEFAULT NULL,
  `Balance` double DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `inv_id` int(11) DEFAULT NULL,
  `pay_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_cust_statment`
--

INSERT INTO `app1_cust_statment` (`id`, `customer`, `Date`, `Transactions`, `Details`, `Details2`, `Amount`, `Payments`, `Balance`, `cid_id`, `inv_id`, `pay_id`) VALUES
(1, 'Nayana Vimal', '2023-10-10', 'Customer Opening Balance', NULL, NULL, 9000, NULL, NULL, 2, NULL, NULL),
(2, 'Anita TL', '2023-10-11', 'Customer Opening Balance', NULL, NULL, 1000, NULL, NULL, 40, NULL, NULL),
(3, 'renu lal', '2023-10-16', 'Customer Opening Balance', NULL, NULL, 1000, NULL, NULL, 55, NULL, NULL),
(4, 'Nayana Vimal', '2023-10-17', 'Payment Received', NULL, NULL, NULL, 8000, NULL, 2, NULL, 1),
(5, 'REENA NM', '2023-10-17', 'Customer Opening Balance', NULL, NULL, 100000, NULL, NULL, 53, NULL, NULL),
(6, 'Anita TL', '2023-10-18', 'Payment Received', NULL, NULL, NULL, 1000, NULL, 40, NULL, 2),
(7, 'Anita TL', '2023-10-26', 'Payment Received', NULL, NULL, NULL, 60, NULL, 40, NULL, 3),
(8, 'Seetha Raj', '2023-10-19', 'Customer Opening Balance', NULL, NULL, 9000, NULL, NULL, 2, NULL, NULL),
(9, 'XDFGH DXFCVG', '2023-10-19', 'Customer Opening Balance', NULL, NULL, 1000, NULL, NULL, 59, NULL, NULL),
(10, 'Seetha Raj', '2023-10-20', 'Invoice', NULL, NULL, 7455, NULL, NULL, 2, NULL, NULL),
(11, 'SAMAL agh', '2023-10-20', 'Customer Opening Balance', NULL, NULL, 10000, NULL, NULL, 33, NULL, NULL),
(12, 'Meera KL', '2023-10-20', 'Customer Opening Balance', NULL, NULL, 9000, NULL, NULL, 57, NULL, NULL),
(13, 'Rohit sharma', '2023-10-24', 'Customer Opening Balance', NULL, NULL, 4000, NULL, NULL, 60, NULL, NULL),
(14, 'Neethu Soman', '2023-10-25', 'Customer Opening Balance', NULL, NULL, 9000, NULL, 9000, 2, NULL, NULL),
(15, 'ROSILINT DAVIS', '2023-10-25', 'Customer Opening Balance', NULL, NULL, 561222, NULL, NULL, 61, NULL, NULL),
(16, 'Praveen P', '2023-10-26', 'Customer Opening Balance', NULL, NULL, 2000, NULL, 2000, 45, NULL, NULL),
(17, 'Neethu Soman', '2023-10-26', 'Invoice', NULL, NULL, 6510, NULL, NULL, 2, NULL, NULL),
(18, 'Vijay Vinod', '2023-10-26', 'Customer Opening Balance', NULL, NULL, -2000, NULL, -2000, 45, NULL, NULL),
(19, 'Sreehari dev', '2023-10-26', 'Customer Opening Balance', NULL, NULL, 9000, NULL, NULL, 2, NULL, NULL),
(20, 'kausalya murali', '2023-10-26', 'Customer Opening Balance', NULL, NULL, 9000, NULL, NULL, 2, NULL, NULL),
(21, 'Aadhi Hari', '2023-10-26', 'Customer Opening Balance', NULL, NULL, 9000, NULL, NULL, 2, NULL, NULL),
(22, 'sreyas mohan', '2023-10-27', 'Customer Opening Balance', NULL, NULL, 8900, NULL, 8900, 2, NULL, NULL),
(23, 'Anoop Das', '2023-10-27', 'Customer Opening Balance', NULL, NULL, 5000, NULL, 5000, 2, NULL, NULL),
(24, 'Sreekala sreehari', '2023-10-28', 'Customer Opening Balance', NULL, NULL, 8900, NULL, 8900, 2, NULL, NULL),
(25, 'Vyshak Murali', '2023-10-28', 'Customer Opening Balance', NULL, NULL, -3000000, NULL, NULL, 45, NULL, NULL),
(26, 'Sreekala sreehari', '2023-10-28', 'Payment Received', NULL, NULL, NULL, 5000, 3900, 2, NULL, 4),
(27, 'Anu A', '2023-10-28', 'Customer Opening Balance', NULL, NULL, -35000, NULL, NULL, 45, NULL, NULL),
(28, 'Priya S', '2023-10-30', 'Customer Opening Balance', NULL, NULL, -789000, NULL, NULL, 45, NULL, NULL),
(29, 'Tom T', '2023-10-30', 'Customer Opening Balance', NULL, NULL, -200000, NULL, NULL, 45, NULL, NULL),
(30, 'Nivedh kumar', '2023-10-31', 'Customer Opening Balance', NULL, NULL, 0, NULL, NULL, 2, NULL, NULL),
(31, 'jithin lal', '2023-10-31', 'Customer Opening Balance', NULL, NULL, 8000, NULL, NULL, 2, NULL, NULL),
(32, 'mohan das', '2023-10-31', 'Customer Opening Balance', NULL, NULL, 23000, NULL, NULL, 63, NULL, NULL),
(33, 'renu lal', '2023-11-01', 'Customer Opening Balance', NULL, NULL, 1000, NULL, NULL, 65, NULL, NULL),
(34, 'riya mol', '2023-11-01', 'Customer Opening Balance', NULL, NULL, 1000, NULL, NULL, 66, NULL, NULL),
(35, 'raam s', '2023-11-01', 'Customer Opening Balance', NULL, NULL, 23000, NULL, 23000, 67, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app1_debitnotecomments`
--

CREATE TABLE `app1_debitnotecomments` (
  `commentid` int(11) NOT NULL,
  `comment` varchar(250) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `debid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_debitnotecomments`
--

INSERT INTO `app1_debitnotecomments` (`commentid`, `comment`, `cid_id`, `debid_id`) VALUES
(1, 'Paid', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `app1_delayedcharge`
--

CREATE TABLE `app1_delayedcharge` (
  `delayedchargeid` int(11) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `delayedchargedate` varchar(100) NOT NULL,
  `delayedchargeno` varchar(100) NOT NULL,
  `prodorser` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `prodorser1` varchar(100) NOT NULL,
  `description1` varchar(100) NOT NULL,
  `qty1` varchar(100) NOT NULL,
  `rate1` varchar(100) NOT NULL,
  `total1` varchar(100) NOT NULL,
  `tax1` varchar(100) NOT NULL,
  `prodorser2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `rate2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `prodorser3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `rate3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_employee`
--

CREATE TABLE `app1_employee` (
  `employeeid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `joiningdate` varchar(100) NOT NULL,
  `employeenumber` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `gmail` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `providebankdetails` varchar(20) NOT NULL,
  `bankaccountnumber` varchar(100) NOT NULL,
  `ifsccode` varchar(100) NOT NULL,
  `hrareceived` varchar(20) NOT NULL,
  `totalrentpaid` varchar(100) NOT NULL,
  `livein` varchar(100) NOT NULL,
  `applicabletaxregime` varchar(100) NOT NULL,
  `pannumber` varchar(100) NOT NULL,
  `aadhaarnumber` varchar(100) NOT NULL,
  `universalaccountnumber` varchar(100) NOT NULL,
  `pfaccountnumber` varchar(100) NOT NULL,
  `epsaccountnumber` varchar(100) NOT NULL,
  `praccountnumber` varchar(100) NOT NULL,
  `esinumber` varchar(100) NOT NULL,
  `esidispensaryname` varchar(100) NOT NULL,
  `basic` varchar(100) NOT NULL,
  `da` varchar(100) NOT NULL,
  `othincome1` varchar(100) NOT NULL,
  `othincome2` varchar(100) NOT NULL,
  `othincome3` varchar(100) NOT NULL,
  `othincome4` varchar(100) NOT NULL,
  `othincome5` varchar(100) NOT NULL,
  `othamount1` varchar(100) NOT NULL,
  `othamount2` varchar(100) NOT NULL,
  `othamount3` varchar(100) NOT NULL,
  `othamount4` varchar(100) NOT NULL,
  `othamount5` varchar(100) NOT NULL,
  `provifund` varchar(100) NOT NULL,
  `proftax` varchar(100) NOT NULL,
  `esi` varchar(100) NOT NULL,
  `deduc1` varchar(100) NOT NULL,
  `deduc2` varchar(100) NOT NULL,
  `deduc3` varchar(100) NOT NULL,
  `deduc4` varchar(100) NOT NULL,
  `deducamt1` varchar(100) NOT NULL,
  `deducamt2` varchar(100) NOT NULL,
  `deducamt3` varchar(100) NOT NULL,
  `deducamt4` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_employeeloan`
--

CREATE TABLE `app1_employeeloan` (
  `id` bigint(20) NOT NULL,
  `LoanAmount` int(11) DEFAULT NULL,
  `LoanDate` varchar(100) NOT NULL,
  `ExperyDate` varchar(100) NOT NULL,
  `MonthlyCut_percentage` int(11) DEFAULT NULL,
  `MonthlyCut_Amount` int(11) DEFAULT NULL,
  `Note` longtext NOT NULL,
  `File` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `action` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `balance_loan` int(11) DEFAULT NULL,
  `loan_term` varchar(100) NOT NULL,
  `loan_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_employeeloan`
--

INSERT INTO `app1_employeeloan` (`id`, `LoanAmount`, `LoanDate`, `ExperyDate`, `MonthlyCut_percentage`, `MonthlyCut_Amount`, `Note`, `File`, `status`, `action`, `company_id`, `employee_id`, `balance_loan`, `loan_term`, `loan_value`) VALUES
(1, 5900, '2023-10-13', '2024-01-14', 40, 4000, '', '', 'Inactive', 0, 2, 13, 5900, '3MONTH', 3),
(2, 8000, '2023-09-15', '2023-12-16', 35, 3500, '', '', 'Active', 0, 2, 15, 8000, '3MONTH', 3),
(6, 23000, '2023-08-12', '2024-02-13', 33, 6000, '', '', 'Active', 0, 2, 7, 23000, '6MONTH', 6);

-- --------------------------------------------------------

--
-- Table structure for table `app1_employee_loan_tran`
--

CREATE TABLE `app1_employee_loan_tran` (
  `id` bigint(20) NOT NULL,
  `loan_trans_date` varchar(100) NOT NULL,
  `particular` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `intrest` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `balance_loan` int(11) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `emploee_loan_id` bigint(20) NOT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_employee_loan_tran`
--

INSERT INTO `app1_employee_loan_tran` (`id`, `loan_trans_date`, `particular`, `amount`, `intrest`, `total_amount`, `payment_type`, `balance_loan`, `cid_id`, `emploee_loan_id`, `employee_id`) VALUES
(1, '2023-10-13', 'LOAN ISSUED', 10000, 0, 10000, '', 10000, 2, 1, 13),
(2, '2023-10-13', 'EMI PAID ', 4000, 0, 4000, 'CASH', 6000, 2, 1, 13),
(3, '2023-11-23', 'EMI PAID', 4000, 100, 4100, 'CASH', 2000, 2, 1, 13),
(4, '2023-12-23', 'EMI PAID', 2000, 0, 2000, 'CASH', -100, 2, 1, 13),
(5, '2023-12-22', 'ADDITIONAL LOAN ISSUED', 8000, 0, 8000, '', 5900, 2, 1, 13),
(6, '2023-09-15', 'LOAN ISSUED', 10000, 0, 10000, '', 10000, 2, 2, 15),
(7, '2023-09-30', 'EMI PAID ', 3500, 0, 3500, 'CASH', 6500, 2, 2, 15),
(8, '2023-10-15', 'EMI PAID ', 3500, 100, 3600, 'CASH', 3000, 2, 2, 15),
(10, '2023-11-24', 'ADDITIONAL LOAN ISSUED', 8000, 0, 8000, '', 8000, 2, 2, 15),
(22, '2023-08-12', 'LOAN ISSUED', 18000, 0, 18000, '', 18000, 2, 6, 7),
(23, '2023-09-29', 'ADDITIONAL LOAN ISSUED', 5000, 0, 5000, '', 23000, 2, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `app1_estimate`
--

CREATE TABLE `app1_estimate` (
  `estimateid` int(11) NOT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `billingaddress` varchar(100) DEFAULT NULL,
  `estimatedate` date DEFAULT NULL,
  `expirationdate` date DEFAULT NULL,
  `estimateno` varchar(100) DEFAULT NULL,
  `placeofsupply` varchar(100) DEFAULT NULL,
  `taxamount` varchar(100) NOT NULL,
  `reference_number` varchar(100) NOT NULL,
  `note` longtext,
  `IGST` varchar(100) DEFAULT NULL,
  `CGST` varchar(100) DEFAULT NULL,
  `SGST` varchar(100) DEFAULT NULL,
  `TCS` varchar(100) DEFAULT NULL,
  `shipping_charge` varchar(100) DEFAULT NULL,
  `subtotal` varchar(100) DEFAULT NULL,
  `estimatetotal` varchar(100) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `file_share` varchar(100) NOT NULL,
  `status` varchar(150) NOT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_estimate`
--

INSERT INTO `app1_estimate` (`estimateid`, `customer`, `email`, `billingaddress`, `estimatedate`, `expirationdate`, `estimateno`, `placeofsupply`, `taxamount`, `reference_number`, `note`, `IGST`, `CGST`, `SGST`, `TCS`, `shipping_charge`, `subtotal`, `estimatetotal`, `file`, `file_share`, `status`, `cid_id`) VALUES
(1, 'NIL', '', '', '2023-10-13', '2023-10-13', '1001', 'Kerala', '405.00', '', '', '0', '202.5', '202.5', NULL, '0', '8100.00', '8505.00', 'default.jpg', '', 'Draft', 2),
(2, '2 Anita TL', 'ajayjayathilakan0@gmail.com', 'PADMA NIVAS THEKKEKARA', '2023-10-13', '2023-10-13', '1002', 'Kerala', '884.80', '66', '', '0', '442.4', '442.4', NULL, '0', '3160.00', '4044.80', 'default.jpg', '', 'Draft', 40),
(3, '6 Seetha Raj', 'seetha@gmail.com', 'fyugh guijkle\r\nkollam\r\nKerala\r\n\r\n', '2023-10-20', '2023-10-20', '1003', 'Kerala', '1242.00', '5', '', '0', '621', '621', NULL, '0', '6900.00', '8140', 'default.jpg', '', 'Draft', 2),
(4, '5 Seema Das', 'dass@mail.com', 'abcd place\r\nKochi\r\nKerala\r\nIndia\r\n322332', '2023-10-21', '2023-11-10', '1004', 'Ladakh', '36.00', '1555', '', '36.00', '0.00', '0.00', NULL, '0', '1200.00', '1236.00', 'default.jpg', '', 'Draft', 57),
(5, '9 Meera KL', 'kl@gmail.com', 'abcd\r\nKochi\r\nKerala\r\nIndia\r\n898989', '2023-09-06', '2023-10-09', '1005', 'Kerala', '1200.00', '766', '', '0', '600', '600', NULL, '900', '10000.00', '12100.00', 'default.jpg', '', 'Draft', 57),
(6, '6 Seetha Raj', 'seetha@gmail.com', 'fyugh guijkle\r\nkollam\r\nKerala\r\n\r\n', '2023-10-24', '2023-10-24', '1006', 'Kerala', '360.00', '8', '', '0', '180', '180', NULL, '0', '7200.00', '7560', 'default.jpg', '', 'Draft', 2),
(7, '1 Nayana Vimal', 'nayana@gmail.com', 'Nayana N S Fashion complex\r\nkollam\r\nKerala\r\nindia\r\n690978', '2023-10-24', '2023-10-24', '1007', 'Kerala', '540.00', '9', '', '0', '270', '270', NULL, '0', '10800.00', '11340', 'default.jpg', '', 'Draft', 2),
(8, '6 Seetha Raj', 'seetha@gmail.com', 'fyugh guijkle\r\nkollam\r\nKerala\r\n\r\n', '2023-10-25', '2023-10-25', '1008', 'Kerala', '756.00', '3', '', '0', '378', '378', NULL, '0', '6300.00', '7056.00', 'default.jpg', '', 'Draft', 2),
(9, '11 Neethu Soman', 'neethu@gmail.com', 'Rajathi Shopping Complex \r\nErnakulam\r\nKerala\r\nindia\r\n696765', '2023-10-25', '2023-10-25', '1009', 'Kerala', '1008.00', '5', '', '0', '504', '504', NULL, '0', '8400.00', '9408.00', 'default.jpg', '', 'Draft', 2),
(10, '19 Anoop Das', 'anopp@gmail.com', 'Anoop motors NH Block kannur\r\nkannur\r\nKerala\r\nindia\r\n698767', '2023-10-27', '2023-10-27', '1010', 'Kerala', '2268.00', '6', '', '0', '1134', '1134', NULL, '0', '12600.00', '14868.00', 'default.jpg', '', 'Draft', 2),
(11, '19 Anoop Das', 'anopp@gmail.com', 'Anoop motors NH Block kannur\r\nkannur\r\nKerala\r\nindia\r\n698767', '2023-10-28', '2023-10-28', '1011', 'Kerala', '1500.00', '5', '', '0', '750', '750', NULL, '0', '12500.00', '14000.00', 'default.jpg', '', 'Draft', 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_estimate_item`
--

CREATE TABLE `app1_estimate_item` (
  `id` bigint(20) NOT NULL,
  `item` varchar(255) NOT NULL,
  `hsn` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `rate` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `estimate_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_estimate_item`
--

INSERT INTO `app1_estimate_item` (`id`, `item`, `hsn`, `description`, `quantity`, `rate`, `tax`, `discount`, `total`, `cid_id`, `estimate_id`) VALUES
(1, 'Cleaning Items', '567575', '', '9', '900', '5', '0', '8100', 2, 1),
(2, 'mose', '345633', '', '4', '800', '28', '40', '3160', 40, 2),
(3, 'Hair products', '787899', '', '6', '1200', '18', '300', '6900', 2, 3),
(4, 'Item2', '666666', '', '2', '500', '3', '400', '600', 57, 4),
(5, 'Item2', '666666', '', '22', '500', '12', '1000', '10000', 57, 5),
(6, 'Item2', '666666', '', '2', '500', '3', '400', '600', 57, 4),
(7, 'Bag', '786756', '', '6', '1200', '5', '0', '7200', 2, 6),
(8, 'Hair products', '787899', '', '9', '1200', '5', '0', '10800', 2, 7),
(9, 'Cleaning Items', '567575', '', '7', '900', '12', '0', '6300', 2, 8),
(10, 'Bag', '786756', '', '7', '1200', '12', '0', '8400', 2, 9),
(11, 'Hair products', '787899', '', '9', '1400', '18', '0', '12600', 2, 10),
(12, 'Hair products', '787899', '', '9', '1400', '12', '100', '12500', 2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `app1_etransporter`
--

CREATE TABLE `app1_etransporter` (
  `etransporterid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tid` varchar(255) NOT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_ewayinv`
--

CREATE TABLE `app1_ewayinv` (
  `ewayinvid` int(11) NOT NULL,
  `transaction_stype` varchar(255) NOT NULL,
  `transporter` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `transport_mode` varchar(255) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `vehicle_no` varchar(255) NOT NULL,
  `transport_doc_no` varchar(255) NOT NULL,
  `transport_doc_date` varchar(255) NOT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_expences`
--

CREATE TABLE `app1_expences` (
  `expencesid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `paymdate` varchar(100) NOT NULL,
  `paymmethod` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `totamt` varchar(100) NOT NULL,
  `category1` varchar(100) NOT NULL,
  `descrptin1` varchar(100) NOT NULL,
  `catqty1` varchar(100) NOT NULL,
  `catprice1` varchar(100) NOT NULL,
  `cattotal1` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `category3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `category4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_expenseaccount`
--

CREATE TABLE `app1_expenseaccount` (
  `expenseid` int(11) NOT NULL,
  `account` varchar(100) NOT NULL,
  `begbal` varchar(100) NOT NULL,
  `endbal` varchar(100) NOT NULL,
  `enddate` varchar(100) DEFAULT NULL,
  `dat` varchar(100) DEFAULT NULL,
  `serchar` varchar(100) NOT NULL,
  `expacc` varchar(100) DEFAULT NULL,
  `type1` varchar(100) DEFAULT NULL,
  `memo1` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `expaccountypid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_e_waybills`
--

CREATE TABLE `app1_e_waybills` (
  `ewbillid` int(11) NOT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `document_type` varchar(200) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_email` varchar(254) DEFAULT NULL,
  `gsttype` varchar(100) DEFAULT NULL,
  `gstin` varchar(100) NOT NULL,
  `transaction_subtype` varchar(200) DEFAULT NULL,
  `transaction_type` varchar(150) DEFAULT NULL,
  `transaction_hsn` int(11) DEFAULT NULL,
  `delivery_address` longtext,
  `placeof_supply` varchar(100) DEFAULT NULL,
  `vehicle_number` varchar(100) DEFAULT NULL,
  `kilometer` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `igst` double DEFAULT NULL,
  `cgst` double DEFAULT NULL,
  `sgst` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `shipping_charge` double DEFAULT NULL,
  `adjustment` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `note` longtext,
  `file` varchar(100) NOT NULL,
  `status` varchar(150) NOT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `transportation_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_e_waybills`
--

INSERT INTO `app1_e_waybills` (`ewbillid`, `invoice_no`, `bill_date`, `document_type`, `customer_name`, `customer_email`, `gsttype`, `gstin`, `transaction_subtype`, `transaction_type`, `transaction_hsn`, `delivery_address`, `placeof_supply`, `vehicle_number`, `kilometer`, `sub_total`, `igst`, `cgst`, `sgst`, `tax_amount`, `shipping_charge`, `adjustment`, `grand_total`, `note`, `file`, `status`, `cid_id`, `cust_id`, `transportation_id`) VALUES
(1, 'INV01', '2023-10-14', 'Delivery Challan', ' Nayana Vimal', ' nayana@gmail.com', ' unregistered Business', '', 'Supply', 'Goods', 899876, 'nayana@gmail.com\r\n9995678909\r\nNayana N S Fashion complex\r\nkollam\r\nKerala', 'Kerala', 'KL09FF5655', 43, 16700, 0, 1218, 1218, 2436, 100, -40, 19196, '', 'default.png', 'Billed', 2, 1, 1),
(2, 'INV02', '2023-10-14', 'Delivery Challan', ' Nayana Vimal', ' nayana@gmail.com', ' unregistered Business', '', 'Supply', 'Goods', 675643, 'nayana@gmail.com\r\n9995678909\r\nNayana N S Fashion complex\r\nkollam\r\nKerala', 'Kerala', '', 144, 10800, 0, 648, 648, 1296, 0, 0, 12096, '', 'default.png', 'Draft', 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_e_waybill_item`
--

CREATE TABLE `app1_e_waybill_item` (
  `id` bigint(20) NOT NULL,
  `item` varchar(100) DEFAULT NULL,
  `hsn` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_e_waybill_item`
--

INSERT INTO `app1_e_waybill_item` (`id`, `item`, `hsn`, `qty`, `price`, `total`, `discount`, `tax`, `bill_id`, `cid_id`) VALUES
(1, 'Hair products', '787899', 8, '1200', 9500, '100', '12', 1, 2),
(2, 'Cleaning Items', '567575', 8, '900', 7200, '0', '18', 1, 2),
(3, 'Bag', '786756', 9, '1200', 10800, '0', '12', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_holidays`
--

CREATE TABLE `app1_holidays` (
  `hid` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_holidays`
--

INSERT INTO `app1_holidays` (`hid`, `start_date`, `end_date`, `name`, `cid_id`) VALUES
(1, '2023-10-01', '2023-10-01', 'sunday', 2),
(2, '2023-10-08', '2023-10-08', 'sunday', 2),
(4, '2023-10-13', '2023-10-13', 'dddd', 33),
(5, '2023-10-12', '2023-10-12', 'leave', 2),
(6, '2023-10-17', '2023-10-17', 'sunday', 2),
(8, '2023-09-02', '2023-09-04', 'Holiday', 2),
(9, '2023-08-01', '2023-08-01', 'sunday', 2),
(10, '2023-07-02', '2023-07-02', 'sunday', 2),
(12, '2023-07-16', '2023-07-16', 'sunday', 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_incomeaccount`
--

CREATE TABLE `app1_incomeaccount` (
  `incomeid` int(11) NOT NULL,
  `dat1` varchar(100) DEFAULT NULL,
  `intear` varchar(100) NOT NULL,
  `incacc` varchar(100) DEFAULT NULL,
  `type2` varchar(100) DEFAULT NULL,
  `memo2` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `expenceincomeid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_inventory`
--

CREATE TABLE `app1_inventory` (
  `inventoryid` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `initialqty` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `stockalrt` varchar(100) NOT NULL,
  `invacnt` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `salesprice` varchar(10) NOT NULL,
  `incomeacnt` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `purchaseinfo` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `expacnt` varchar(100) NOT NULL,
  `purtax` varchar(100) NOT NULL,
  `revcharge` varchar(100) NOT NULL,
  `presupplier` varchar(100) NOT NULL,
  `cxq` double DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_invoice`
--

CREATE TABLE `app1_invoice` (
  `invoiceid` int(11) NOT NULL,
  `customername` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `invoiceno` varchar(100) NOT NULL,
  `terms` varchar(100) NOT NULL,
  `invoicedate` date NOT NULL,
  `duedate` varchar(100) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `placosupply` varchar(100) NOT NULL,
  `amtrecvd` int(11) DEFAULT NULL,
  `baldue` double DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `invoice_orderno` varchar(255) DEFAULT NULL,
  `status` varchar(150) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `IGST` varchar(100) DEFAULT NULL,
  `CGST` varchar(100) DEFAULT NULL,
  `SGST` varchar(100) DEFAULT NULL,
  `taxamount` varchar(100) DEFAULT NULL,
  `shipping_charge` varchar(100) DEFAULT NULL,
  `gsttype` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_invoice`
--

INSERT INTO `app1_invoice` (`invoiceid`, `customername`, `email`, `invoiceno`, `terms`, `invoicedate`, `duedate`, `bname`, `placosupply`, `amtrecvd`, `baldue`, `subtotal`, `grandtotal`, `invoice_orderno`, `status`, `note`, `file`, `IGST`, `CGST`, `SGST`, `taxamount`, `shipping_charge`, `gsttype`, `cid_id`) VALUES
(1, '1 Nayana Vimal', 'nayana@gmail.com', '1001', '0', '2023-10-13', '13-10-2023', 'Nayana N S Fashion complex\r\nkollam\r\nKerala\r\nindia\r\n690978', 'Kerala', NULL, 7056, 6300, 7056, 'OR9994520', 'Draft', '', 'default.jpg', '0', '378', '378', '756.00', '0', NULL, 2),
(2, '1 Nayana Vimal', 'nayana@gmail.com', '1002', '0', '2023-10-01', '13-10-2023', 'Nayana N S Fashion complex\r\nkollam\r\nKerala\r\nindia\r\n690978', 'Kerala', NULL, 12744, 10800, 12744, 'OR8594048', 'Draft', '', 'default.jpg', '0', '972', '972', '1944.00', '0', NULL, 2),
(3, '1 Nayana Vimal', 'nayana@gmail.com', '1003', '0', '2023-10-01', '13-10-2023', 'Nayana N S Fashion complex\r\nkollam\r\nKerala\r\nindia\r\n690978', 'Kerala', NULL, 12744, 10800, 12744, 'OR4279110', 'Draft', '', 'default.jpg', '0', '972', '972', '1944.00', '0', NULL, 2),
(4, '1 Nayana Vimal', 'nayana@gmail.com', '1004', '0', '2023-10-01', '13-10-2023', 'Nayana N S Fashion complex\r\nkollam\r\nKerala\r\nindia\r\n690978', 'Kerala', NULL, 12744, 10800, 12744, 'OR7782638', 'Draft', '', 'default.jpg', '0', '972', '972', '1944.00', '0', NULL, 2),
(5, '5 Seema Das', 'dass@mail.com', '1005', '30', '2023-10-01', '', 'abcd place\r\nKochi\r\nKerala\r\nIndia\r\n322332', 'Kerala', NULL, 2685, 1700, 2685, 'OR6897247', 'Draft', '', 'default.jpg', '0', '42.5', '42.5', '85.00', '900', NULL, 57),
(7, '9 Meera KL', 'kl@gmail.com', '1007', '60', '2023-10-05', '', 'abcd\r\nKochi\r\nKerala\r\nIndia\r\n898989', 'Karnataka', NULL, 31488, 26600, 31488, 'OR1331436', 'Draft', '', 'default.jpg', '4788.00', '0.00', '0.00', '4788.00', '100', NULL, 57),
(8, '10 Rohit sharma', 'XCHITTER@GAIL.COM', '1008', '15', '2023-10-24', '12-12-2023', 'qudratic side,emncvopcs\r\nregoshepheric\r\nDelhi\r\nindia\r\n690504', 'Kerala', NULL, 57000, 54000, 57000, 'OR1950447', 'Draft', '', 'default.jpg', '0', '1350', '1350', '2700.00', '0300', NULL, 60),
(9, '6 Seetha Raj', 'seetha@gmail.com', '1009', '0', '2023-10-24', '', 'fyugh guijkle\r\nkollam\r\nKerala\r\n\r\n', 'Kerala', NULL, 1260, 1200, 1260, 'OR7927896', 'Draft', '', 'default.jpg', '0', '30', '30', '60.00', '0', NULL, 2),
(10, '8 SAMAL agh', 'ksva@gmail.com', '1010', '60', '2023-10-26', '14-10-2023', 'as', 'Jammu and Kashmir', NULL, 193712.4, 184488, 193712.4, 'OR4351462', 'Draft', '', 'default.jpg', '9224.40', '0.00', '0.00', '9224.40', '0', NULL, 33),
(11, '8 SAMAL agh', 'ksva@gmail.com', '1011', '15', '2023-10-26', '14-10-2023', 'as', 'Jammu and Kashmir', NULL, 193712.4, 184488, 193712.4, 'OR4898558', 'Draft', '', 'default.jpg', '9224.40', '0.00', '0.00', '9224.40', '0', NULL, 33),
(12, '8 SAMAL agh', 'ksva@gmail.com', '1012', '15', '2023-10-26', '14-10-2023', 'as', 'Karnataka', NULL, 193712.4, 184488, 193712.4, 'OR4029151', 'Draft', 's', 'default.jpg', '9224.40', '0.00', '0.00', '9224.40', '0', NULL, 33),
(13, '8 SAMAL agh', 'abcd@gmail.com', '1013', '30', '2023-10-26', '28-11-2023', '', 'Delhi', NULL, 20147.56, 17988, 20147.56, 'OR2350773', 'Draft', '', 'default.jpg', '2158.56', '0.00', '0.00', '2158.56', '0', NULL, 33),
(14, '11 Neethu Soman', 'neethu@gmail.com', '1014', '0', '2023-10-26', '13-10-2023', 'Rajathi Shopping Complex \r\nErnakulam\r\nKerala\r\nindia\r\n696765', 'Kerala', NULL, 6720, 6000, 6720, 'OR9392858', 'Draft', '', 'default.jpg', '0', '360', '360', '720.00', '0', NULL, 2),
(15, '1 Nayana Vimal', 'nayana@gmail.com', '1015', '0', '2023-10-26', '', 'Nayana N S Fashion complex\r\nkollam\r\nKerala\r\nindia\r\n690978', 'Kerala', NULL, 9912, 8400, 9912, 'OR4988546', 'Draft', '', 'default.jpg', '0', '756', '756', '1512.00', '0', NULL, 2),
(16, '1 Nayana Vimal', 'nayana@gmail.com', '1016', '0', '2023-09-02', '13-10-2023', 'Nayana N S Fashion complex\r\nkollam\r\nKerala\r\nindia\r\n690978', 'Kerala', NULL, 10752, 9600, 10752, 'OR4498783', 'Draft', '', 'default.jpg', '0', '576', '576', '1152.00', '0', NULL, 2),
(17, '10 Rohit sharma', 'XCHITTER@GAIL.COM', '1017', '15', '2023-10-26', '05-11-2023', 'qudratic side,emncvopcs\r\nregoshepheric\r\nDelhi\r\nindia\r\n690504', 'Kerala', NULL, 48000, 48000, 48000, 'OR8835106', 'Draft', '', 'default.jpg', '0', '0', '0', '0.00', '0', NULL, 60),
(18, '10 Rohit sharma', 'XCHITTER@GAIL.COM', '1018', '15', '2023-10-26', '', 'qudratic side,emncvopcs\r\nregoshepheric\r\nDelhi\r\nindia\r\n690504', 'Kerala', NULL, 12600, 12600, 12600, 'OR5648213', 'Draft', '', 'default.jpg', '0', '0', '0', '0.00', '0', NULL, 60),
(19, '10 Rohit sharma', 'XCHITTER@GAIL.COM', '1019', '30', '2023-10-26', '', 'qudratic side,emncvopcs\r\nregoshepheric\r\nDelhi\r\nindia\r\n690504', 'Kerala', NULL, 73920, 66000, 73920, 'OR4291997', 'Draft', '', 'default.jpg', '0', '3960', '3960', '7920.00', '0', NULL, 60),
(20, 'Vijay Vinod', 'vijay@gmail.com', '1902', '40', '2023-10-13', '2023-11-22', '123 Street Allapey Road\r\nAllapuzha\r\nKerala\r\nIndia\r\n787656', 'Kerala', 0, 22420, 19000, 22420, '', 'Draft', '', 'default.jpg', '0', '1710', '1710', '3420.00', '0', NULL, 45),
(21, 'Praveen P', 'Praveenpradeepkumr@gmail.com', '1903', '60', '2023-10-29', '2023-12-28', '123 street Thoppumpady\r\nErnakulam\r\nKerala\r\nIndia\r\n682002', 'Kerala', 0, 2099790, 1999800, 2099790, '', 'Draft', '', 'default.jpg', '0', '49995', '49995', '99990.00', '0', NULL, 45),
(22, 'sreyas mohan', 'sreyas@gmail.com', '1904', '30', '2023-10-01', '2023-10-31', 'World Pltd Infopark Kochi\r\nErnakulam\r\nKerala\r\nIndia\r\n678786', 'Kerala', 850, 16000, 7100, 16850, '', 'Draft', '', 'default.jpg', '0', '1278', '1278', '852.00', '100', NULL, 2),
(23, '18 sreyas mohan', 'sreyas@gmail.com', '1023', '0', '2023-08-12', '', 'World Pltd Infopark Kochi\r\nErnakulam\r\nKerala\r\nIndia\r\n678786', 'Kerala', NULL, 9912, 8400, 9912, 'OR6400439', 'Draft', '', 'default.jpg', '0', '756', '756', '1512.00', '0', NULL, 2),
(24, '20 Sreekala sreehari', 'sree@gmail.com', '1024', '0', '2023-10-28', '', 'sree motors ns hospital kollam\r\n\r\nkollam\r\nKerala\r\nindia\r\n691567', 'Kerala', NULL, 14968, 12600, 14968, 'OR2564000', 'Draft', '', 'default.jpg', '0', '1134', '1134', '2268.00', '100', NULL, 2),
(25, 'Vijay Vinod', 'vijay@gmail.com', '1008', '30', '2023-10-30', '2023-11-29', '123 Street Allapey Road\r\nAllapuzha\r\nKerala\r\nIndia\r\n787656', 'Kerala', 60000, 1929.2, 55160, 61929.2, '', 'Draft', '', 'default.jpg', '0', '3309.6', '3309.6', '6619.20', '100', NULL, 45),
(26, 'jithin lal', 'jithin@gmail.com', 'sl07', '0', '2023-10-01', '2023-10-01', 'ABS Fruits Near Kalluvathukkal Junction\r\nkollam\r\nKerala\r\nindia\r\n691565', 'Kerala', 0, 11760, 11200, 11760, '', 'Draft', '', 'default.jpg', '0', '280', '280', '560.00', '0', NULL, 2),
(27, '26 jithin lal', 'jithin@gmail.com', '1027', '0', '2023-10-31', '', 'ABS Fruits Near Kalluvathukkal Junction\r\nkollam\r\nKerala\r\nindia\r\n691565', 'Kerala', NULL, 12544, 11200, 12544, 'OR2844548', 'Draft', '', 'default.jpg', '0', '672', '672', '1344.00', '0', NULL, 2),
(28, 'Vyshak Murali', 'Vyshak@gmail.com', '1003', '30', '2023-10-14', '2023-11-13', '123 Street Kottayam\r\nKottayam\r\nKerala\r\nIndia\r\n898789', 'Kerala', 0, 6300000, 6000000, 6300000, '', 'Draft', '', 'default.jpg', '0', '150000', '150000', '300000.00', '0', NULL, 45),
(29, '22 Anu A', 'anu@gmail.com', '1009', '0', '2023-10-08', '2023-10-08', '12345 Street Maradu\r\nErnakulam\r\nKerala\r\nIndia\r\n898498', 'Kerala', 0, 1507002.75, 1360955, 1507002.75, '', 'Draft', '', 'default.jpg', '0', '73023.88', '73023.88', '146047.75', '0', NULL, 45),
(30, '26 jithin lal', 'jithin@gmail.com', 'SL06', '0', '2023-09-21', '2023-09-21', 'ABS Fruits Near Kalluvathukkal Junction\r\nkollam\r\nKerala\r\nindia\r\n691565', 'Kerala', 0, 12096, 10800, 12096, '', 'Draft', '', 'default.jpg', '0', '648', '648', '1296.00', '0', NULL, 2),
(31, '30 raam s', 'JETHI@GMAIL.COM', '1011', '0', '2023-11-08', '2023-11-08', 'kolenchery\r\nkolenchery\r\nKerala\r\nindia\r\n682311', 'Kerala', 0, 6128.5, 5950, 6128.5, '', 'Draft', '', 'default.jpg', '0', '89.25', '89.25', '178.50', '0', NULL, 67);

-- --------------------------------------------------------

--
-- Table structure for table `app1_invoice_item`
--

CREATE TABLE `app1_invoice_item` (
  `id` bigint(20) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `tax` varchar(100) NOT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_invoice_item`
--

INSERT INTO `app1_invoice_item` (`id`, `product`, `hsn`, `qty`, `price`, `total`, `tax`, `discount`, `cid_id`, `invoice_id`) VALUES
(1, 'Cleaning Items', '567575', 7, '900', 6300, '12', '0', 2, 1),
(2, 'Select Item', '787899', 9, '1200', 10800, '18', '0', 2, 2),
(3, 'Select Item', '787899', 9, '1200', 10800, '18', '0', 2, 3),
(4, 'Select Item', '787899', 9, '1200', 10800, '18', '0', 2, 4),
(5, 'Item2', '666666', 5, '500', 1700, '5', '800', 57, 5),
(7, 'Item2', '666666', 55, '500', 26600, '18', '900', 57, 7),
(8, 'Tshirts', '369438', 300, '180', 54000, '5', '0', 60, 8),
(9, 'Bag', '786756', 1, '1200', 1200, '5', '0', 2, 9),
(10, 'Hair products', '787899', 5, '1200', 6000, '12', '0', 2, 14),
(11, 'Hair products', '787899', 7, '1200', 8400, '18', '0', 2, 15),
(12, 'Hair products', '787899', 8, '1200', 9600, '12', '0', 2, 16),
(13, 'tws', '123456', 55, '1200', 66000, '12', '0', 60, 19),
(14, 'PEN', '897367', 19, '1000', 19000, '18', '0', 45, 20),
(15, 'PEN', '897367', 2000, '1000', 1999800, '5', '200', 45, 21),
(16, 'Kettle', '767554', 8, '900', 7100, '12', '100', 2, 22),
(17, 'Hair products', '787899', 7, '1200', 8400, '18', '0', 2, 23),
(18, 'Hair products', '787899', 9, '1400', 12600, '18', '0', 2, 24),
(19, 'PEN', '897367', 10, '3000', 29900, '12', '100', 45, 25),
(20, 'WATER', '898767', 10, '2545', 25260, '12', '190', 45, 25),
(21, 'Hair products', '787899', 8, '1400', 11200, '5', '0', 2, 26),
(22, 'Hair products', '787899', 8, '1400', 11200, '12', '0', 2, 27),
(23, 'PEN', '897367', 2000, '3000', 6000000, '5', '0', 45, 28),
(24, 'PEN', '897367', 200, '3000', 600000, '18', '0', 45, 29),
(25, 'WATER', '898767', 299, '2545', 760955, '5', '0', 45, 29),
(26, 'Bottle Jam', '78877', 9, '1200', 10800, '12', '0', 2, 30),
(27, 'book', '445566', 2, '3000', 5950, '3', '50', 67, 31);

-- --------------------------------------------------------

--
-- Table structure for table `app1_itemstock`
--

CREATE TABLE `app1_itemstock` (
  `id` bigint(20) NOT NULL,
  `items` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `transactions` varchar(100) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  `details1` varchar(100) NOT NULL,
  `stocks` varchar(100) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `debit_id` int(11) DEFAULT NULL,
  `inv_id` int(11) DEFAULT NULL,
  `stock_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_itemstock`
--

INSERT INTO `app1_itemstock` (`id`, `items`, `date`, `qty`, `amount`, `transactions`, `details`, `details1`, `stocks`, `bill_id`, `cid_id`, `debit_id`, `inv_id`, `stock_id`) VALUES
(1, 'Hair products', '2023-10-12', 9, 10800, 'Billed', '1001', '1', 'Stock Changed', 1, 2, NULL, NULL, NULL),
(2, 'Cleaning Items', '2023-10-13', 7, NULL, 'Invoice', '1001', '', '', NULL, 2, NULL, 1, NULL),
(3, 'Select Item', '2023-10-01', 9, NULL, 'Invoice', '1002', '', '', NULL, 2, NULL, 2, NULL),
(4, 'Select Item', '2023-10-01', 9, NULL, 'Invoice', '1003', '', '', NULL, 2, NULL, 3, NULL),
(5, 'Select Item', '2023-10-01', 9, NULL, 'Invoice', '1004', '', '', NULL, 2, NULL, 4, NULL),
(6, 'book', '2023-10-16', 10, NULL, 'Vendor Credits', '1001', '', '', NULL, 55, 3, NULL, NULL),
(7, 'book', '2023-10-16', 12, 1190, 'Billed', '1002', '123456', 'Stock Changed', 2, 55, NULL, NULL, NULL),
(8, 'book', '2023-10-16', 12, NULL, 'Vendor Credits', '1000', '', '', NULL, 55, 4, NULL, NULL),
(9, 'Bag', '2023-10-16', 9, 9900, 'Billed', '1003', '6', 'Stock Changed', 3, 2, NULL, NULL, NULL),
(10, 'book', '2023-10-16', 12, NULL, 'Vendor Credits', '1003', '', '', NULL, 55, 5, NULL, NULL),
(11, 'Bag', '2023-10-16', 8, NULL, 'Vendor Credits', '1', '', '', NULL, 2, 6, NULL, NULL),
(12, 'Bag', '2023-10-19', 6, 7100, 'Billed', '1004', '3', 'Stock Changed', 4, 2, NULL, NULL, NULL),
(13, 'pencil', '2023-10-19', 12, NULL, 'Vendor Credits', 'DN 1000', '', '', NULL, 58, 7, NULL, NULL),
(14, 'pencil ', '2023-10-19', 12, NULL, 'Vendor Credits', 'DN 1000', '', '', NULL, 59, 8, NULL, NULL),
(15, 'Bag', '2023-10-20', 8, NULL, 'Vendor Credits', '3', '', '', NULL, 2, 9, NULL, NULL),
(16, 'Item2', '2023-10-01', 5, NULL, 'Invoice', '1005', '', '', NULL, 57, NULL, 5, NULL),
(18, 'Item2', '2023-10-05', 55, NULL, 'Invoice', '1007', '', '', NULL, 57, NULL, 7, NULL),
(19, 'Tshirts', '2023-10-24', 300, NULL, 'Invoice', '1008', '', '', NULL, 60, NULL, 8, NULL),
(20, 'Bag', '2023-10-24', 1, NULL, 'Invoice', '1009', '', '', NULL, 2, NULL, 9, NULL),
(21, 'Hair products', '2023-10-26', 5, NULL, 'Invoice', '1014', '', '', NULL, 2, NULL, 14, NULL),
(22, 'Hair products', '2023-10-26', 7, NULL, 'Invoice', '1015', '', '', NULL, 2, NULL, 15, NULL),
(23, 'Hair products', '2023-09-02', 8, NULL, 'Invoice', '1016', '', '', NULL, 2, NULL, 16, NULL),
(24, 'shoes', '2023-10-26', 60, NULL, 'Invoice', '1017', '', '', NULL, 60, NULL, 17, NULL),
(25, 'Tshirts', '2023-10-26', 70, NULL, 'Invoice', '1018', '', '', NULL, 60, NULL, 18, NULL),
(26, 'tws', '2023-10-26', 55, NULL, 'Invoice', '1019', '', '', NULL, 60, NULL, 19, NULL),
(27, 'Hair products', '2023-10-27', 7, NULL, 'Invoice', '1023', '', '', NULL, 2, NULL, 23, NULL),
(28, 'Bag', '2023-10-28', 8, 12000, 'Billed', '1005', '8', 'Stock Changed', 5, 2, NULL, NULL, NULL),
(29, 'Hair products', '2023-10-28', 9, NULL, 'Invoice', '1024', '', '', NULL, 2, NULL, 24, NULL),
(30, 'Hair products', '2023-10-31', 8, NULL, 'Invoice', '1027', '', '', NULL, 2, NULL, 27, NULL),
(31, 'Hair products', '2023-10-31', 8, 11200, 'Billed', '1006', '2', 'Stock Changed', 6, 2, NULL, NULL, NULL),
(32, 'Kettle', '2023-10-31', 8, 9600, 'Billed', '1007', '7', 'Stock Changed', 7, 2, NULL, NULL, NULL),
(33, 'Kettle', '2023-10-31', 8, NULL, 'Vendor Credits', '2', '', '', NULL, 2, 10, NULL, NULL),
(34, 'pen', '2023-10-31', 12, NULL, 'Vendor Credits', 'DM 1008', '', '', NULL, 64, 11, NULL, NULL),
(35, 'pencil', '2023-11-01', 12, 1190, 'Billed', '1008', '12345678', 'Stock Changed', 8, 65, NULL, NULL, NULL),
(36, 'pencil', '2023-11-01', 12, 1190, 'Billed', '1009', '123456', 'Stock Changed', 9, 65, NULL, NULL, NULL),
(37, 'pencil', '2023-11-01', 13, NULL, 'Vendor Credits', 'DN 1002', '', '', NULL, 65, 12, NULL, NULL),
(38, 'book', '2023-11-01', 13, NULL, 'Vendor Credits', 'DN 1002', '', '', NULL, 65, 12, NULL, NULL),
(39, 'pencil', '2023-11-01', 12, NULL, 'Vendor Credits', '1002', '', '', NULL, 65, 13, NULL, NULL),
(40, 'pencil', '2023-11-01', 12, 1190, 'Billed', '1010', '12345', 'Stock Changed', 10, 66, NULL, NULL, NULL),
(41, 'book', '2023-11-01', 12, NULL, 'Vendor Credits', 'DN 1002', '', '', NULL, 66, 14, NULL, NULL),
(42, 'Kettle', '2023-11-01', 5, NULL, 'Vendor Credits', '5', '', '', NULL, 2, 15, NULL, NULL),
(43, 'Hair products', '2023-11-01', 8, 11200, 'Billed', '1011', '4', 'Stock Changed', 11, 2, NULL, NULL, NULL),
(44, 'Bag', '2023-11-01', 8, 12000, 'Billed', '1011', '4', 'Stock Changed', 11, 2, NULL, NULL, NULL),
(45, 'Bag', '2023-11-01', 8, NULL, 'Vendor Credits', '7', '', '', NULL, 2, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app1_itemtable`
--

CREATE TABLE `app1_itemtable` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `item_type` varchar(100) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `hsn` varchar(100) DEFAULT NULL,
  `tax_reference` varchar(100) DEFAULT NULL,
  `purchase_cost` int(11) DEFAULT NULL,
  `sales_cost` varchar(100) DEFAULT NULL,
  `itmdate` date DEFAULT NULL,
  `acount_pur` varchar(100) DEFAULT NULL,
  `account_sal` varchar(100) DEFAULT NULL,
  `pur_desc` varchar(100) DEFAULT NULL,
  `sale_desc` varchar(100) DEFAULT NULL,
  `intra_st` varchar(100) DEFAULT NULL,
  `inter_st` varchar(100) DEFAULT NULL,
  `inventry` varchar(100) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `stockin` int(11) DEFAULT NULL,
  `stockout` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `stock_rate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_itemtable`
--

INSERT INTO `app1_itemtable` (`id`, `name`, `item_type`, `unit`, `hsn`, `tax_reference`, `purchase_cost`, `sales_cost`, `itmdate`, `acount_pur`, `account_sal`, `pur_desc`, `sale_desc`, `intra_st`, `inter_st`, `inventry`, `stock`, `stockin`, `stockout`, `amount`, `status`, `cid_id`, `stock_rate`) VALUES
(1, 'Hair products', 'goods', 'NOS-NUMBER', '787899', 'non taxable', 1400, '1400', NULL, 'Cost of Goods Sold', 'Sales', 'Purchase cost', 'sales cost', '18', '18', 'Inventory Assets', 216, 25, 44, 33200, 'Active', 2, 0),
(2, 'Cleaning Items', 'Goods', 'BTL-BOTTLES', '567575', 'taxable', 900, '1200', '2023-10-12', 'Purchases-Software for Resale', 'Account Charges', '', '', '18', '18', 'Inventory Assets', 875, 900, 7, 0, 'Active', 2, 8900),
(3, 'Bag', 'Goods', 'NOS-NUMBER', '786756', 'taxable', 1500, '1500', '2023-10-12', 'Freight and Shipping Cost', 'General Income', 'Purchase cost', 'sales cost', '12', '12', 'Inventory Assets', 880, 931, 25, 41000, 'Active', 2, 1500),
(4, 'mose', 'goods', 'GRS-GROSS', '', 'non taxable', 800, '700', NULL, 'Cost of Goods Sold', 'Sales', '7utr', 'ghfd', '12', '12', 'Inventory Assets', 30, 30, 0, 0, 'Active', 40, 0),
(5, 'book', 'Goods', 'BOX-BOX', '123455', 'taxable', 100, '100', '2023-10-16', 'Cost of Goods Sold', 'Sales', 'dfgvbhjn', 'vbhnj', '5', '12', 'Inventory Assets', 78, 112, 34, 1190, 'Active', 55, 9),
(6, 'pencil', 'Goods', 'BOX-BOX', '123456', 'Taxable', 300, '200', '2023-10-19', 'Cost of Goods Sold', 'Sales', 'dfghj', 'wsedrtfgyh', '5', '5', 'Inventory Assets', 9988, 10000, 12, 0, 'Active', 58, 0),
(7, 'pencil ', 'Goods', 'BOX-BOX', '456786', 'Taxable', 300, '200', '2023-10-19', 'Cost of Goods Sold', 'Sales', 'fvgbhnj', 'sdfvgbh', '5', '5', 'Inventory Assets', 9988, 10000, 12, 0, 'Active', 59, 0),
(8, 'BOOK', 'Goods', 'BOX-BOX', '456789', 'Taxable', 100, '30', '2023-10-19', 'Cost of Goods Sold', 'Sales', 'seertfgy', 'sdrfgh', '5', '5', 'Inventory Assets', 100, 100, 0, 0, 'Active', 59, 0),
(9, 'pp', 'goods', 'DRM-DRUM', '20002', 'non taxable', 1500, '1000', NULL, 'Cost of Goods Sold', 'Sales', 'vnv n vnngvn', 'vnn', '0', '5', '', 0, 0, 0, 0, 'Active', 33, 0),
(10, 'Item1', 'goods', 'GYD-GROSS YARDS', '323223', 'non taxable', 0, '0', NULL, 'Cost of Goods Sold', 'Sales', '', '', 'Choose...', 'Choose...', '', 0, 0, 0, 0, 'Active', 57, 0),
(11, 'Item2', 'goods', 'GRS-GROSS', '666666', 'non taxable', 500, '500', NULL, 'Cost of Goods Sold', 'Sales', 'thhg', 'hg', '0', '0', 'Inventory Assets', -71, 0, 125, 0, 'Active', 57, 0),
(12, 'Tshirts', 'Goods', 'BDL-BUNDLES', '369438', 'taxable', 180, '250', '2023-10-24', 'Cost of Sales', 'Sales', 'nice material', 'durble', '12', '5', NULL, 0, 0, 300, 0, 'Active', 60, 0),
(13, 'item1', 'Goods', 'BOX-BOX', '5958946', 'Taxable', 2300, '9000', '2023-10-25', 'Equipment Rental for Jobs', 'Sales', 'okay', 'opoih', '18', '5', 'Inventory Assets', 789, 789, 0, 0, 'Active', 61, 0),
(14, 'PEN', 'goods', 'NOS-NUMBER', '897367', 'non taxable', 1000, '3000', NULL, 'Cost of Goods Sold', 'Sales', 'Good', 'Good', '5', '28', 'Inventory Assets', 3000, 0, 0, 0, 'Active', 45, 0),
(15, 'shoes', 'Goods', 'BOX-BOX', '749573', 'taxable', 800, '1350', '2023-10-26', 'Cost of Goods Sold', 'Sales', '', '', '5', '12', NULL, 0, 0, 0, 0, 'Active', 60, 0),
(16, 'tws', 'Goods', 'BAG-BAGS', '123456', 'taxable', 1200, '2000', '2023-10-26', 'Cost of Sales', 'Sales', 'hhh', 'fff', '12', '12', NULL, 0, 0, 55, 0, 'Active', 60, 0),
(17, 'Kettle', 'goods', 'BTL-BOTTLES', '767554', 'non taxable', 1200, '1200', NULL, 'goods', 'Sales', 'purchase cost', 'sales cost', '18', '18', 'Inventory Assets', 7995, 8, 13, 9600, 'Active', 2, 0),
(18, 'WATER', 'goods', 'TON-TONNES', '898767', 'non taxable', 1000, '2545', NULL, 'Cost of Goods Sold', 'Sales', '', '', ' ', ' ', 'Inventory Assets', 1000, 0, 0, 0, 'Active', 45, 0),
(19, 'Bottle Jam', 'goods', 'BOX-BOX', '78877', 'non taxable', 900, '1200', NULL, 'Cost of Goods Sold', 'Sales', 'purchase cost', 'sales cost', '12', '12', 'Inventory Assets', 900, 0, 0, 0, 'Active', 2, 0),
(20, 'pen', 'goods', 'BOX-BOX', '333444', 'non taxable', 200, '300', NULL, 'Cost of Goods Sold', 'Sales', '', '', '12', '12', 'Inventory Assets', 1000, 0, 0, 0, 'Active', 63, 0),
(21, 'pen', 'Goods', 'BOX-BOX', '1234546', 'Taxable', 200, '100', '2023-10-31', 'Cost of Goods Sold', 'Sales', 'dfghj', 'derftgyhuji', '5', '5', 'Inventory Assets', 9988, 10000, 12, 0, 'Active', 64, 0),
(22, 'pencil', 'Goods', 'BOX-BOX', '898765', 'Taxable', 100, '100', '2023-11-01', 'Cost of Goods Sold', 'Sales', 'sdfvgbhnj', 'dfgbhn', '5', '5', 'Inventory Assets', 9999, 10024, 25, 2380, 'Active', 65, 0),
(23, 'book', 'Goods', 'BOX-BOX', '123456', 'Taxable', 200, '100', '2023-11-01', 'Cost of Goods Sold', 'Sales', 'sdfcvgb', 'wsedrftgbh', '5', '5', 'Inventory Assets', 87, 100, 13, 0, 'Active', 65, 0),
(24, 'book', 'Goods', 'BOX-BOX', '123456', 'Taxable', 200, '1000', '2023-11-01', 'Cost of Goods Sold', 'Sales', 'sdrtfgyhujk', 'sdfghj', '5', '5', 'Inventory Assets', 9988, 10000, 12, 0, 'Active', 66, 0),
(25, 'pencil', 'Goods', 'BOX-BOX', '123456', 'Taxable', 100, '100', '2023-11-01', 'Cost of Goods Sold', 'Sales', 'drftgyhujik', 'zsxdfcgvbhnj', '5', '12', 'Inventory Assets', 10012, 10012, 0, 1190, 'Active', 66, 0),
(26, 'book', 'goods', 'BDL-BUNDLES', '445566', 'non taxable', 2000, '3000', NULL, 'goods', 'Sales', 'ddhfghf', 'dgdhdh', ' ', ' ', 'Inventory Assets', 33, 0, 0, 0, 'Active', 67, 0);

-- --------------------------------------------------------

--
-- Table structure for table `app1_item_stock`
--

CREATE TABLE `app1_item_stock` (
  `id` bigint(20) NOT NULL,
  `item` varchar(255) NOT NULL,
  `qtyin` int(11) DEFAULT NULL,
  `qtyout` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `bitm_id` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `ditm_id` bigint(20) DEFAULT NULL,
  `initm_id` bigint(20) DEFAULT NULL,
  `itm_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_loan_account`
--

CREATE TABLE `app1_loan_account` (
  `id` bigint(20) NOT NULL,
  `account_name` longtext NOT NULL,
  `account_number` longtext NOT NULL,
  `lenderbank` longtext NOT NULL,
  `recieced_bank` longtext NOT NULL,
  `intrest` longtext NOT NULL,
  `term` longtext NOT NULL,
  `loan_amount` longtext NOT NULL,
  `processing` longtext NOT NULL,
  `paid` longtext NOT NULL,
  `status` longtext NOT NULL,
  `desc` longtext NOT NULL,
  `balance` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `recieved_amount` int(11) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_loan_account`
--

INSERT INTO `app1_loan_account` (`id`, `account_name`, `account_number`, `lenderbank`, `recieced_bank`, `intrest`, `term`, `loan_amount`, `processing`, `paid`, `status`, `desc`, `balance`, `date`, `recieved_amount`, `cid_id`) VALUES
(1, 'Arun', '456787876712', 'cash', 'cash', '3', 'YEAR', '100000', '700', 'cash', 'Active', 'Cash deposit', 100000, '2023-10-01', 99300, 2),
(2, 'Nayana', '1234567654567876', 'cash', 'cash', '7%', 'MONTH', '80000', '8000', 'cash', 'Active', 'loan received', 58100, '2023-10-12', 72000, 2),
(3, 'ASHIQ', '32994247326', 'AXIS BANK', 'STATE BANK OF INDIA', '10%', 'YEAR', '10000', '1000', 'STATE BANK OF INDIA', 'Active', 'dfg', 10000, '2023-10-17', 9000, 56),
(4, 'Arun', '45667776767', 'SBI', 'cash', '3%', '1 year', '89000', '100', 'cash', 'Active', 'received loan', 89000, '2023-10-01', 88900, 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_loan_duration`
--

CREATE TABLE `app1_loan_duration` (
  `id` bigint(20) NOT NULL,
  `term` longtext NOT NULL,
  `term_value` int(11) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_loan_duration`
--

INSERT INTO `app1_loan_duration` (`id`, `term`, `term_value`, `cid_id`) VALUES
(1, '1 YEAR', 12, 2),
(2, '6 MONTH', 6, 2),
(3, '3 MONTH', 3, 2),
(4, '2 MONTH', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_loan_transaction`
--

CREATE TABLE `app1_loan_transaction` (
  `id` bigint(20) NOT NULL,
  `bank_type` longtext NOT NULL,
  `from_trans` longtext NOT NULL,
  `to_trans` longtext NOT NULL,
  `loan_amount` int(11) DEFAULT NULL,
  `loan_desc` longtext,
  `loan_date` date DEFAULT NULL,
  `loan_intrest` longtext NOT NULL,
  `balance` int(11) NOT NULL,
  `type` longtext NOT NULL,
  `cid_id` int(11) NOT NULL,
  `loan_id` bigint(20) DEFAULT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_loan_transaction`
--

INSERT INTO `app1_loan_transaction` (`id`, `bank_type`, `from_trans`, `to_trans`, `loan_amount`, `loan_desc`, `loan_date`, `loan_intrest`, `balance`, `type`, `cid_id`, `loan_id`, `total`) VALUES
(1, 'OPENING BAL', 'cash', 'cash', 100000, 'Cash deposit', '2023-10-01', '0', 0, 'LOAN APPROVED', 2, 1, 0),
(2, 'PROCESSING FEE', 'cash', 'cash', 700, 'Cash deposit', '2023-10-01', '0', 0, 'LOAN ADJ', 2, 1, 0),
(3, 'OPENING BAL', 'cash', 'cash', 80000, 'loan received', '2023-10-12', '0', 80000, 'LOAN APPROVED', 2, 2, 0),
(4, 'PROCESSING FEE', 'cash', 'cash', 8000, 'loan received', '2023-10-12', '0', 72000, 'LOAN ADJ', 2, 2, 0),
(5, 'EMI PAID', 'CASH', 'cash', 8900, 'cash', '2023-10-08', '800', 71100, 'LOAN ADJ', 2, 2, 0),
(6, 'EMI PAID', 'CASH', 'cash', 6000, 'cash', '2023-10-13', '800', 65100, 'LOAN ADJ', 2, 2, 0),
(7, 'EMI PAID', 'CASH', 'cash', 7000, 'cash', '2023-10-05', '90', 58100, 'LOAN ADJ', 2, 2, 0),
(8, 'OPENING BAL', 'AXIS BANK', 'STATE BANK OF INDIA', 10000, 'dfg', '2023-10-17', '0', 0, 'LOAN APPROVED', 56, 3, 10000),
(9, 'PROCESSING FEE', 'AXIS BANK', 'STATE BANK OF INDIA', 1000, 'dfg', '2023-10-17', '0', 0, 'LOAN ADJ', 56, 3, 1000),
(10, 'OPENING BAL', 'SBI', 'cash', 89000, 'received loan', '2023-10-01', '0', 0, 'LOAN APPROVED', 2, 4, 89000),
(11, 'PROCESSING FEE', 'SBI', 'cash', 100, 'received loan', '2023-10-01', '0', 0, 'LOAN ADJ', 2, 4, 100);

-- --------------------------------------------------------

--
-- Table structure for table `app1_mailingaddress`
--

CREATE TABLE `app1_mailingaddress` (
  `id` bigint(20) NOT NULL,
  `mailing_name` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `country` varchar(2) NOT NULL,
  `state` varchar(2) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `holder_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_mailingaddress`
--

INSERT INTO `app1_mailingaddress` (`id`, `mailing_name`, `address`, `country`, `state`, `pin`, `holder_id`) VALUES
(1, 'Nithya@gmail.com', 'Nithya sree dharsha building\r\nkollam', 'IN', 'KL', '678789', 1),
(2, 'Nithya@gmail.com', 'Nithya sree dharsha building\r\nkollam', 'IN', 'KL', '678789', 2),
(3, 'abin', 'PADMA NIVAS THEKKEKARA', 'IN', 'KL', '885655', 3),
(4, 'AADHI', 'Kochi', 'IN', 'KL', '755665', 4);

-- --------------------------------------------------------

--
-- Table structure for table `app1_man_journal_comment`
--

CREATE TABLE `app1_man_journal_comment` (
  `id` bigint(20) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `proj_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_mjournal`
--

CREATE TABLE `app1_mjournal` (
  `id` bigint(20) NOT NULL,
  `date` varchar(100) NOT NULL,
  `mj_no` varchar(100) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `j_type` varchar(100) DEFAULT NULL,
  `currency` varchar(100) NOT NULL,
  `attach` varchar(100) NOT NULL,
  `s_totaldeb` varchar(100) NOT NULL,
  `s_totalcre` varchar(100) NOT NULL,
  `total_deb` varchar(100) NOT NULL,
  `total_cre` varchar(100) NOT NULL,
  `difference` varchar(100) NOT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_mjournal`
--

INSERT INTO `app1_mjournal` (`id`, `date`, `mj_no`, `ref_no`, `notes`, `j_type`, `currency`, `attach`, `s_totaldeb`, `s_totalcre`, `total_deb`, `total_cre`, `difference`, `comments`, `status`, `cid_id`) VALUES
(1, '2023-10-22', '1', '1', 'fgghhh fgfg', 'Cash based journal', 'INR-Indian Rupee', '', '9000.00', '9000.00', '9000.00', '9000.00', '0.00', '', 'Draft', 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_mjournal1`
--

CREATE TABLE `app1_mjournal1` (
  `id` bigint(20) NOT NULL,
  `account` varchar(100) DEFAULT NULL,
  `desc` longtext,
  `contact` varchar(100) DEFAULT NULL,
  `debit` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `mjrnl_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_mjournal1`
--

INSERT INTO `app1_mjournal1` (`id`, `account`, `desc`, `contact`, `debit`, `credit`, `cid_id`, `mjrnl_id`) VALUES
(1, 'Subcontractor', 'fgh', 'Hari  Krishnan', 9000, 9000, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `app1_noninventory`
--

CREATE TABLE `app1_noninventory` (
  `noninventoryid` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sku` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `descr` varchar(100) NOT NULL,
  `saleprice` varchar(100) NOT NULL,
  `income` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `purchasedescr` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `expenseaccount` varchar(100) NOT NULL,
  `purchasetax` varchar(100) NOT NULL,
  `revcharge` varchar(100) NOT NULL,
  `presupplier` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_openingbalance`
--

CREATE TABLE `app1_openingbalance` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `holder_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_openingbalance`
--

INSERT INTO `app1_openingbalance` (`id`, `date`, `amount`, `holder_id`) VALUES
(1, '2023-10-20', 0.00, 1),
(2, '2023-10-20', 0.00, 2),
(3, '2023-10-31', 8000.00, 3),
(4, '2023-10-31', 7500.00, 4);

-- --------------------------------------------------------

--
-- Table structure for table `app1_otp_password`
--

CREATE TABLE `app1_otp_password` (
  `id` bigint(20) NOT NULL,
  `otp_psw` int(11) NOT NULL,
  `user_ckeck_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_paydowncreditcard`
--

CREATE TABLE `app1_paydowncreditcard` (
  `paycreditcardid` int(11) NOT NULL,
  `ccno` varchar(100) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `dateofpayment` varchar(100) NOT NULL,
  `discription` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_payment`
--

CREATE TABLE `app1_payment` (
  `paymentid` int(11) NOT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `paymdate` date DEFAULT NULL,
  `pmethod` varchar(100) DEFAULT NULL,
  `refno` varchar(100) DEFAULT NULL,
  `depto` varchar(100) DEFAULT NULL,
  `amtreceived` double NOT NULL,
  `amtapply` double DEFAULT NULL,
  `amtcredit` double DEFAULT NULL,
  `referno` varchar(255) NOT NULL,
  `balance` double NOT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `status` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_payment`
--

INSERT INTO `app1_payment` (`paymentid`, `customer`, `email`, `paymdate`, `pmethod`, `refno`, `depto`, `amtreceived`, `amtapply`, `amtcredit`, `referno`, `balance`, `cid_id`, `status`) VALUES
(1, 'Nayana Vimal', '', '2023-10-17', 'Cheque', '1001', 'SBI', 8000, 8000, 0, '', 1000, 2, 'Draft'),
(2, 'Anita TL', 'aBIN@gmail.com', '2023-10-18', 'Cheque', '1002', 'Abin', 8000, 1000, 7000, '4', 0, 40, 'Draft'),
(3, 'Anita TL', 'ajayjayathilakan0@gmail.com', '2023-10-26', 'Cash', '1003', 'Abin', 5000, 60, 4940, '354', 0, 40, 'Draft'),
(4, 'Sreekala sreehari', 'sree@gmail.com', '2023-10-28', 'Cheque', 'PL-02', NULL, 5000, 5000, 3900, '4', 3900, 2, 'Saved');

-- --------------------------------------------------------

--
-- Table structure for table `app1_paymentitems`
--

CREATE TABLE `app1_paymentitems` (
  `id` bigint(20) NOT NULL,
  `invdate` varchar(100) NOT NULL,
  `invno` varchar(100) NOT NULL,
  `duedate` varchar(100) NOT NULL,
  `invamount` varchar(100) NOT NULL,
  `balamount` double DEFAULT NULL,
  `paymentamount` varchar(100) NOT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_paymentitems`
--

INSERT INTO `app1_paymentitems` (`id`, `invdate`, `invno`, `duedate`, `invamount`, `balamount`, `paymentamount`, `cid_id`, `payment_id`) VALUES
(1, '2023-10-10', 'Customer opening balance', '2023-10-10', '9000', 1000, '8000', 2, 1),
(2, '2023-10-11', 'Customer opening balance', '2023-10-11', '1000', 0, '1000', 40, 2),
(3, '2023-10-11', 'Customer opening balance', '2023-10-11', '1000', 0, '60', 40, 3),
(4, '10/28/2023', '', '10/28/2023', '8900', 3900, '5000', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `app1_paymentmethod`
--

CREATE TABLE `app1_paymentmethod` (
  `id` bigint(20) NOT NULL,
  `newmethod` varchar(100) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_paymentmethod`
--

INSERT INTO `app1_paymentmethod` (`id`, `newmethod`, `cid_id`) VALUES
(1, 'upi id', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app1_paymentterms`
--

CREATE TABLE `app1_paymentterms` (
  `id` bigint(20) NOT NULL,
  `term` varchar(100) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_paymentterms`
--

INSERT INTO `app1_paymentterms` (`id`, `term`, `days`, `cid_id`) VALUES
(1, 'NET 40', 40, 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_paymnt_made_comments`
--

CREATE TABLE `app1_paymnt_made_comments` (
  `commentid` int(11) NOT NULL,
  `comment` varchar(250) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `empid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_payrollcomments`
--

CREATE TABLE `app1_payrollcomments` (
  `commentid` int(11) NOT NULL,
  `comment` varchar(250) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `empid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_payrollemployee`
--

CREATE TABLE `app1_payrollemployee` (
  `employeeid` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `employees` varchar(100) DEFAULT NULL,
  `joindate` varchar(100) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `salarydetails` varchar(100) DEFAULT NULL,
  `effectivefrom` varchar(100) DEFAULT NULL,
  `hours` varchar(100) DEFAULT NULL,
  `rate` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `employeeno` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `function` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `dateofbirth` varchar(100) DEFAULT NULL,
  `bloodgroup` varchar(100) DEFAULT NULL,
  `fathersmothersname` varchar(100) DEFAULT NULL,
  `spousename` varchar(100) DEFAULT NULL,
  `generalphone` varchar(100) DEFAULT NULL,
  `bankdetails` varchar(100) DEFAULT NULL,
  `acno` varchar(100) DEFAULT NULL,
  `ifsccode` varchar(100) DEFAULT NULL,
  `bankname` varchar(100) DEFAULT NULL,
  `branchname` varchar(100) DEFAULT NULL,
  `transactiontype` varchar(100) DEFAULT NULL,
  `pannumber` varchar(100) DEFAULT NULL,
  `universalaccountnumber` varchar(100) DEFAULT NULL,
  `pfaccountnumber` varchar(100) DEFAULT NULL,
  `praccountnumber` varchar(100) DEFAULT NULL,
  `esinumber` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `tempstreet` varchar(100) DEFAULT NULL,
  `tempcity` varchar(100) DEFAULT NULL,
  `tempstate` varchar(100) DEFAULT NULL,
  `temppincode` varchar(100) DEFAULT NULL,
  `tempcountry` varchar(100) DEFAULT NULL,
  `payhead` varchar(100) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `adharnumber` varchar(250) DEFAULT NULL,
  `istds` varchar(100) DEFAULT NULL,
  `tdstype` varchar(100) DEFAULT NULL,
  `tds` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `age` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_payrollemployee`
--

INSERT INTO `app1_payrollemployee` (`employeeid`, `title`, `firstname`, `lastname`, `alias`, `location`, `email`, `mobile`, `employees`, `joindate`, `image`, `salarydetails`, `effectivefrom`, `hours`, `rate`, `amount`, `employeeno`, `designation`, `function`, `gender`, `dateofbirth`, `bloodgroup`, `fathersmothersname`, `spousename`, `generalphone`, `bankdetails`, `acno`, `ifsccode`, `bankname`, `branchname`, `transactiontype`, `pannumber`, `universalaccountnumber`, `pfaccountnumber`, `praccountnumber`, `esinumber`, `street`, `city`, `state`, `pincode`, `country`, `tempstreet`, `tempcity`, `tempstate`, `temppincode`, `tempcountry`, `payhead`, `file`, `adharnumber`, `istds`, `tdstype`, `tds`, `cid_id`, `age`, `is_active`) VALUES
(1, 'Miss', 'reshna', 't', 'Chinju', 'ktd', 'reshna@gmail.com', '1234567890', 'Fixed', '2023-10-11', '/images/default.png', 'No', '', '0', '0', '0', '12', 'dev', 'dev', 'Female', '2023-10-11', 'O+ve', 'suresh', 'nil', '1234567890', 'No', '', '', '', '', 'Unknown', 'ABCDE1234A', '1234567890', '1234567', '1234567', '1234567', 'hjhj', 'palakkad', 'Kerala', '12345', 'kerala', 'hjhj', 'palakkad', 'Kerala', '12345', 'kerala', 'Cash', '', '2345 6678 9089', 'No', 'Amount', '0', 46, NULL, 1),
(2, 'Miss', 'reshna', 't', 'Chinju', 'ktd', 'Chinju@gmail.com', '1234567890', 'Fixed', '2023-10-11', '/images/default.png', 'No', '', '0', '0', '0', '12', 'dev', 'dev', 'Female', '2023-10-11', 'O-ve', 'suresh', 'nil', '1234567890', 'No', '', '', '', '', 'Unknown', 'ABCDE1234A', '1234567890', '1234567', '1234567', '1234567', 'new', 'palakkad', 'Kerala', '12345', 'kerala', 'new', 'palakkad', 'Kerala', '12345', 'kerala', 'Cash', '', '2345 6678 9089', 'Yes', 'Percentage', '12', 46, NULL, 1),
(3, 'Miss', 'Sreedevi', 'Nair', 'nill', 'Malappuram', 'sreedevi@gmail.com', '9995678987', 'Fixed', '2023-10-01', '/images/default.png', 'No', '', '0', '0', '0', 'ALT0123', 'Project Manager', 'nill', 'Female', '2011-02-02', 'O+ve', 'Ramdas', 'nill', '7456786545', 'No', '', '', '', '', 'Others', 'ABCDE1534G', '2346787765', '64789964256', 'R56677878654', '367V677', 'SR Bhavan', 'malappuram', 'Kerala', '786756', 'india', 'SR Bhavan', 'malappuram', 'Kerala', '786756', 'india', 'Cash', 'payrollemployee/Screenshot_52.png', '3457 4356 6434', 'No', 'Amount', '0', 2, NULL, 1),
(4, 'Miss', 'Chinju', 'T', 'nil', 'Koottanad', 'reshna@gmail.com', '1234567890', 'Fixed', '2023-10-11', 'images/Screenshot_16.png', 'No', '', '0', '0', '0', 'ALT01', 'developer', 'dev', 'Female', '2023-10-11', 'B+ve', 'suresh', 'nil', '1234567890', 'No', '', '', '', '', 'Others', 'ABCDE1234A', '1234567890', '1234567', '1234567', '1234567', 'kottanad', 'palakkad', 'Kerala', '123456', 'india', 'kottanad', 'palakkad', 'Kerala', '123456', 'india', 'Cash', 'payrollemployee/Screenshot_16.png', '2345 6678 9089', 'No', 'Amount', '0', 46, NULL, 1),
(5, 'Miss', 'Anita', 'Mundur', 'ABC', 'Palakkad', 'ajayjayathilakan0@gmail.com', '8943735902', 'Fixed', '2023-11-01', '/images/default.png', 'No', '', '0', '0', '0', '76', 'myth', 'tewd', 'Female', '2023-10-10', 'AB-ve', 'Gouri', 'sunitha', '8943735902', 'No', '', '', '', '', 'Unknown', 'ABCDE5678K', '2545738647', '7435642736', '35885368356', '5436632', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'Cash', '', '5645 6565 5678', 'No', 'Amount', '0', 40, NULL, 1),
(6, 'Mrs', 'abc', 'd', 'dfgch', 'fvbgfcn', 'ajayjayathilakan0@gmail.com', '8943735902', 'Timebased', '2023-10-08', '/images/default.png', 'No', '', '0', '0', '0', '43', 'sdvxfbg', 'fdvfbxgf', 'Male', '2023-10-02', 'O+ve', 'fdg', 'sfgb', '9633292997', 'No', '', '', '', '', 'Unknown', 'ABCDE4323F', '3435', '754236', '5436', '7546', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'Cash', '', '1234 1234 1234', 'No', 'Amount', '0', 40, NULL, 1),
(7, 'Mr', 'Haritha', 'Nair', 'nill', 'kollam', 'hsharitha24@gmail.com', '9995678767', 'Fixed', '2023-03-08', '/images/default.png', 'Yes', '2023-09-15', '0', '0', '25000', 'ALT0123', 'Accountant', 'nill', 'Female', '1997-07-14', 'O+ve', 'Hareendran', 'nill', '7356144354', 'No', '', '', '', '', 'Unknown', 'ABCDE1234A', '55767877', '64789964257', '565676767', '5657678', 'Haritha Bhavan Kollam', 'kollam', 'Kerala', '691456', 'india', 'Haritha Bhavan Kollam', 'kollam', 'Kerala', '691456', 'india', 'BankThrough', 'payrollemployee/Screenshot_1512.png', '3457 4356 6434', 'No', 'Amount', '0', 2, NULL, 1),
(8, 'Miss', 'Anita', 'Mundur', 'erer', 'Palakkad', 'abin@gmail.com', '9633292997', 'Timebased', '2023-10-08', '/images/default.png', 'No', '', '0', '0', '0', '54', 'hdtfgf', 'tewd', 'Female', '2023-11-03', 'O+ve', 'rthhtr', 'rttr', '32463443', 'No', '', '', '', '', 'Unknown', 'ABCDE5678K', '7355636583', '257172', '133545', '5436632', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'Cash', '', '5645 6565 5678', 'No', 'Amount', '0', 40, NULL, 1),
(9, 'Mrs', 'Abin', 'Mundur', 'fddfdf', 'Benguluru', 'ajayjayathilakan0@gmail.com', '9633292997', 'Fixed', '2023-10-02', '/images/default.png', 'No', '', '0', '0', '0', '1', 'techy', 'tewd', 'Male', '2018-01-30', 'A+ve', 'jayathilakan', 'jay', '9633292997', 'No', '', '', '', '', 'Unknown', 'ABCDE5678Q', '6453768477', '5865633586', '74258392', '546325', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'Cash', '', '5645 6565 5678', 'No', 'Amount', '0', 40, NULL, 1),
(10, 'Mrs', 'Abin', 'Mundur', 'fddfdf', 'Benguluru', 'ajayjayathilakan0@gmail.com', '9633292997', 'Fixed', '2023-10-02', '/images/default.png', 'No', '', '0', '0', '0', '1', 'techy', 'tewd', 'Male', '2018-01-30', 'A+ve', 'jayathilakan', 'jay', '9633292997', 'No', '', '', '', '', 'Unknown', 'ABCDE5678Q', '6453768477', '5865633586', '74258392', '546325', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'Cash', '', '5645 6565 5678', 'No', 'Amount', '0', 40, NULL, 1),
(11, 'Miss', 'abin', 'pj', 'gg', '77', 'ajayjayathilakan0@gmail.com', '8943735902', 'Fixed', '2023-10-02', '/images/default.png', 'No', '', '0', '0', '0', '77', 'ghh', 'hghg', 'Male', '2023-09-27', 'O+ve', 'ghjhg', 'ghhg', '5674547', 'No', '', '', '', '', 'Unknown', 'ABCDE1234F', '6365336', '957647', '432643', '75385663', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'Cash', '', '1234 1234 1234', 'No', 'Amount', '0', 40, NULL, 1),
(12, 'Mr', 'Rajan', 'ces', 'ABC', 'KOCHI', 'aBIN@gmail.com', '9633292997', 'Fixed', '2023-10-12', 'images/ABIN_-_construction.png', 'Yes', '2023-10-08', '0', '0', '10000', '76', 'techy', 'tewd', 'Male', '2022-02-15', 'AB+ve', 'fggfgf', 'fdgfgfd', '8943735902', 'No', '', '', '', '', 'Unknown', 'ABCDE5678K', '7355636583', '257172', '42357386', '56865', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'Cash', 'payrollemployee/ABIN_-_construction.png', '5645 6565 5678', 'No', 'Amount', '0', 40, NULL, 1),
(13, 'Mr', 'Anans', 'Suhaib', 'nill', 'kochi', 'anas@gmail.com', '9996787676', 'Fixed', '2023-10-01', '/images/default.png', 'Yes', '2023-10-08', '0', '0', '90000', 'ALT098', 'HR', 'nill', 'Male', '1989-08-11', 'O+ve', 'shuhaib', 'nill', '8976565456', 'No', '', '', '', '', 'Unknown', 'ACHKJ7878G', '5678788787', '567678878', '56778989898', '565789898', 'Anas villa kattuchantha', 'kollam', 'Kerala', '687879', 'india', 'Anas villa kattuchantha', 'kollam', 'Kerala', '687879', 'india', 'BankThrough', '', '3557 6566 6567', 'No', 'Amount', '0', 2, NULL, 1),
(14, 'Mrs', 'vbfd', 'dfgh', 'dfgh', 'dfg', 'fdsg@gmail.com', '456363', 'Fixed', '2023-10-27', '/images/default.png', 'No', '', '0', '0', '0', '45643636', 'sdaf', 'sadf', 'Male', '2023-10-27', 'A+ve', 'sdf', 'asd', 'asd', 'No', '', '', '', '', 'Unknown', 'FSCDN6543E', '234234', '234234', '324234', '324234', 'safds', 'sdf', 'Karnataka', '234242', 'sadf', 'safds', 'sdf', 'Karnataka', '234242', 'sadf', 'Cash', '', '1234 1234 1234', 'No', 'Amount', '0', 56, NULL, 1),
(15, 'Mr', 'praveen', 'sankar', 'nill', 'palakkad', 'praveen@gmail.com', '9995678787', 'Temporary', '2023-08-01', '/images/default.png', 'Yes', '2023-10-06', '0', '0', '15000', 'ALT098', 'Accoutant', 'nill', 'Male', '1985-02-07', 'O+ve', 'Aanandh', 'nill', '7457678764', 'No', '', '', '', '', 'Cheque', 'ABNJK6768H', '5476766565', '56677788787', '5467676776', '7687989876767', 'Nila Building RK Tower pothencode', 'palakkad', 'Kerala', '678677', 'india', 'Nila Building RK Tower pothencode', 'palakkad', 'Kerala', '678677', 'india', 'Cash', '', '1235 5645 6555', 'No', 'Amount', '0', 2, NULL, 1),
(16, 'Miss', 'asdf', 'sad', 'asd', 'as', 'asd@gmail.com', '5464565666', 'Fixed', '2023-10-28', '/images/default.png', 'No', '', '0', '0', '0', '345345', 'asdf', 'sadf', 'Male', '2023-10-28', 'A+ve', 'asdf', 'asdf', '4354354353', 'Yes', '324234234234', 'asfas234234', 'afasf', '23453245', 'Others', 'FSCDF5432D', '46434536546', '3464364536', '4564646', '346435643', 'sdfg', 'sdfg', 'Kerala', '464544', 'dsfgsdfg', 'sdfg', 'sdfg', 'Kerala', '464544', 'dsfgsdfg', 'Cash', '', '1234 1234 1234', 'Yes', 'Percentage', '120', 56, NULL, 1),
(17, 'Mrs', 'Rajan', 'ces', 'fgdf', 'htrttr', 'ajayjayathilakan0@gmail.com', '8943735902', 'Fixed', '2023-10-12', '/images/default.png', 'No', '', '0', '0', '0', '77', 'techy', 'HGFFG', 'Male', '2023-10-02', 'B+ve', 'Gouri', 'jay', '8943735902', 'No', '', '', '', '', 'Unknown', 'ABCDE5678K', '5466465564642', '6435564', '42357386', '546325', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'Cash', '', '5645 6565 5678', 'No', 'Amount', '0', 40, NULL, 1),
(18, 'Mrs', 'reshna', 't', 'Chinju', 'ktd', 'Chinju@gmail.com', '1234567890', 'Fixed', '2023-10-30', '/images/default.png', 'No', '', '0', '0', '0', '1', 'nnn', 'dev', 'Female', '2023-10-30', 'O+ve', 'suresh', 'nil', '1234567890', 'No', '', '', '', '', 'Unknown', 'ABCDE1234A', '1234567890', '1234567', '1234567', '1234567', 'Koottanad', 'palakkad', 'Kerala', '12345', 'kerala', 'Koottanad', 'palakkad', 'Kerala', '12345', 'kerala', 'Cash', '', '2345 6678 9089', 'No', 'Amount', '0', 46, NULL, 1),
(19, 'Miss', 'Reshna', 'T', 'Chinju', 'KTd', 'resh@gmail.com', '1234567890', 'Fixed', '2023-10-30', 'images/Screenshot_121.png', 'No', '', '0', '0', '0', '12', 'Sdfghjk', 'dev', 'Female', '2023-10-30', 'O+ve', 'suresh', 'nil', '1234567890', 'No', '', '', '', '', 'Unknown', 'ABCDE1234A', '1234567890', '1234567', '1234567', '1234567', 'new', 'palakkad', 'Kerala', '12345', 'kerala', 'new', 'palakkad', 'Kerala', '12345', 'kerala', 'Cash', 'payrollemployee/Screenshot_121.png', '2345 6678 9089', 'No', 'Amount', '0', 46, NULL, 1),
(20, 'Miss', 'dghfh', 'fdgh', 'dfgh', 'dfh', 'dfg@gmail.com', '3245354535', 'Fixed', '2023-10-30', 'images/Screenshot_5.png', 'Yes', '2023-10-30', '0', '0', '10000', '432354', 'sdf', 'sdf', 'Male', '2023-10-30', 'O+ve', 'dfg', 'sdf', '4353465346', 'Yes', '32554875458', 'sbin0028', 'sdf', 'szdf', 'ATM', 'GDBFN7645F', '34523543245', '3245325', '3425325', '35325235', 'sdf', 'sdf', 'Kerala', '345345', 'dfg', 'sdf', 'sdf', 'Kerala', '345345', 'dfg', 'BankThrough', 'payrollemployee/Screenshot_3.png', '1234 1234 1234', 'No', 'Amount', '0', 56, NULL, 1),
(23, 'Mrs', 'Akash', 'Das', 'ABC', 'MUNDUR', 'akash@gmail.com', '8943735902', 'Fixed', '2023-10-10', '/images/default.png', 'Yes', '17', '0', '0', '17000', '54', 'hdtfgf', 'tewd', 'Male', '2007-06-05', 'B+ve', 'Gouri', 'fzdgnhm', '4656545644', 'No', '', '', '', '', 'Unknown', 'ABCDE5678Q', '5466465564642', '4645655656', '24538697', '5436632', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'BankThrough', '', '5645 6565 5678', 'No', 'Amount', '0', 40, '16', 1),
(24, 'Miss', 'Lekha', 'TR', 'ddsa', 'Benguluru', 'ajayjayathilakan0@gmail.com', '8943735902', 'Fixed', '2023-10-09', '/images/default.png', 'No', '', '0', '0', '0', '534264565656', 'techy', 'tewd', 'Male', '2020-12-28', 'O+ve', 'vxcbfgnhjmb,', 'jay', '9633292997', 'No', '', '', '', '', 'Unknown', 'ABCDE5678K', '6453768477', '5746q35241', '35885368356', '56865', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'Cash', '', '5645 6565 5678', 'No', 'Amount', '0', 40, '2', 1),
(25, 'Miss', 'Akash', 'ces', 'ABC', 'KOCHI', 'ajayjayathilakan0@gmail.com', '8943735902', 'Fixed', '2023-11-17', '/images/default.png', 'Yes', '20', '0', '0', '10000', '63656565', 'HHH', 'HGFFG', 'Male', '2019-02-04', 'O+ve', 'jayathilakan', 'fdgfgfd', '9633292997', 'No', '', '', '', '', 'Unknown', 'ABCDE5678K', '75322', '5865633586', '35885368356', '54524622664', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'BankThrough', '', '5645 6565 5678', 'No', 'Amount', '0', 40, '4', 1),
(26, 'Miss', 'chinnu', 'kpz', 'ABC', 'KOCHI', 'aBIN@gmail.com', '9633292997', 'Fixed', '2023-11-23', '/images/default.png', 'Yes', '60', '0', '0', '20000', '54', 'hdtfgf', 'dfsfds', 'Female', '2020-06-17', 'O+ve', 'gfgf', 'gtr', '8943735902', 'No', '', '', '', '', 'Unknown', 'ABCDE5678K', '75322', '7435642736', '133545', '37554', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'BankThrough', '', '5645 6565 5678', 'No', 'Amount', '0', 40, '3', 1),
(27, 'Miss', 'Rajan', 'OL', 'dfxbgnc', 'kongad', 'aBIN@gmail.com', '9633292997', 'Fixed', '2023-11-29', '/images/default.png', 'No', '', '0', '0', '0', '534264565656', 'techy', 'HGFFG', 'Male', '2021-05-11', 'A-ve', 'fggfgf', 'fdgfgfd', '8943735902', 'No', '', '', '', '', 'Unknown', 'ABCDE5678M', '7355636583', '257172', '24538697', '56865', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'Cash', '', '5645 6565 5678', 'No', 'Amount', '0', 40, '2', 1),
(28, 'Mr', 'Thomas', 'OL', 'ddsa', 'Benguluru', 'thf@gmail.com', '9633292997', 'Fixed', '2023-11-16', '/images/default.png', 'No', '', '0', '0', '0', '85', 'HHH', 'tewd', 'Male', '2022-05-09', 'O+ve', 'fggfgf', 'HGHG', '8943735902', 'No', '', '', '', '', 'Unknown', 'ABCDE5678Q', '5466465564642', '5746q35241', '55656', '37554', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'Cash', '', '5645 6565 5678', 'No', 'Amount', '0', 40, '1', 1),
(29, 'Mrs', 'kittu', 'TL', 'ddsa', 'kongad', 'aBIN@gmail.com', '9633292997', 'Timebased', '2023-11-29', '/images/default.png', 'Yes', '15', '9', '7000', '63000', '76', 'HHH', 'dfsfds', 'Female', '2021-06-15', 'O+ve', 'hfgbdc', 'jay', '9633292997', 'No', '', '', '', '', 'Unknown', 'ABCDE5678M', '75322', '5865633586', '133545', '5436632', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'Kochi', 'Ernakulam', 'Kerala', '678592', 'India', 'BankThrough', '', '5645 6565 5678', 'No', 'Amount', '0', 40, '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `app1_payslip`
--

CREATE TABLE `app1_payslip` (
  `payslipid` int(11) NOT NULL,
  `empname` varchar(100) NOT NULL,
  `employeenumber` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `fper` varchar(100) NOT NULL,
  `tper` varchar(100) NOT NULL,
  `paydate` varchar(100) NOT NULL,
  `basic` varchar(100) NOT NULL,
  `da` varchar(100) NOT NULL,
  `ear1` varchar(100) NOT NULL,
  `earr1` varchar(100) NOT NULL,
  `ear2` varchar(100) NOT NULL,
  `earr2` varchar(100) NOT NULL,
  `ear3` varchar(100) NOT NULL,
  `earr3` varchar(100) NOT NULL,
  `ear4` varchar(100) NOT NULL,
  `earr4` varchar(100) NOT NULL,
  `ear5` varchar(100) NOT NULL,
  `earr5` varchar(100) NOT NULL,
  `ear6` varchar(100) NOT NULL,
  `earr6` varchar(100) NOT NULL,
  `ear7` varchar(100) NOT NULL,
  `earr7` varchar(100) NOT NULL,
  `provi` varchar(100) NOT NULL,
  `prof` varchar(100) NOT NULL,
  `esi` varchar(100) NOT NULL,
  `ded1` varchar(100) NOT NULL,
  `dedu1` varchar(100) NOT NULL,
  `ded2` varchar(100) NOT NULL,
  `dedu2` varchar(100) NOT NULL,
  `ded3` varchar(100) NOT NULL,
  `dedu3` varchar(100) NOT NULL,
  `ded4` varchar(100) NOT NULL,
  `dedu4` varchar(100) NOT NULL,
  `ded5` varchar(100) NOT NULL,
  `dedu5` varchar(100) NOT NULL,
  `ded6` varchar(100) NOT NULL,
  `dedu6` varchar(100) NOT NULL,
  `gros` varchar(100) NOT NULL,
  `tded` varchar(100) NOT NULL,
  `netsal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_pricelist`
--

CREATE TABLE `app1_pricelist` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `types` varchar(10) NOT NULL,
  `item_rate` varchar(100) NOT NULL,
  `description` longtext,
  `currency` varchar(255) NOT NULL,
  `upordown` varchar(100) NOT NULL,
  `percentage` varchar(100) DEFAULT NULL,
  `roundoffto` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_pricelist_individual`
--

CREATE TABLE `app1_pricelist_individual` (
  `id` bigint(20) NOT NULL,
  `itemname` varchar(100) DEFAULT NULL,
  `itemrate` int(11) DEFAULT NULL,
  `customrate` varchar(100) DEFAULT NULL,
  `pricelist1_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_profit_loss`
--

CREATE TABLE `app1_profit_loss` (
  `id` bigint(20) NOT NULL,
  `details` varchar(255) DEFAULT NULL,
  `transactions` varchar(255) DEFAULT NULL,
  `acctype` varchar(100) DEFAULT NULL,
  `accname` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `details0` varchar(255) DEFAULT NULL,
  `details1` varchar(255) DEFAULT NULL,
  `details2` varchar(255) NOT NULL,
  `payments` double DEFAULT NULL,
  `payments1` double DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `expnc_id` int(11) DEFAULT NULL,
  `inv_id` int(11) DEFAULT NULL,
  `pbill_id` int(11) DEFAULT NULL,
  `pdebit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_profit_loss`
--

INSERT INTO `app1_profit_loss` (`id`, `details`, `transactions`, `acctype`, `accname`, `date`, `details0`, `details1`, `details2`, `payments`, `payments1`, `cid_id`, `expnc_id`, `inv_id`, `pbill_id`, `pdebit_id`) VALUES
(1, 'Nirmal Raj', 'Billed', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-12', NULL, '1001', '1', 12096, 10800, 2, NULL, NULL, 1, NULL),
(2, '1 Nayana Vimal', 'Invoice', 'Income', 'Sales', '2023-10-13', NULL, '1001', '', 7056, NULL, 2, NULL, 1, NULL, NULL),
(3, '1 Nayana Vimal', 'Invoice', 'Income', 'Sales', '2023-10-01', NULL, '1002', '', 12744, NULL, 2, NULL, 2, NULL, NULL),
(4, '1 Nayana Vimal', 'Invoice', 'Income', 'Sales', '2023-10-01', NULL, '1003', '', 12744, NULL, 2, NULL, 3, NULL, NULL),
(5, '1 Nayana Vimal', 'Invoice', 'Income', 'Sales', '2023-10-01', NULL, '1004', '', 12744, NULL, 2, NULL, 4, NULL, NULL),
(6, 'AJAY PJ', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-13', NULL, '43', '', 3318, NULL, 40, NULL, NULL, NULL, 1),
(7, 'AJAY PJ', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-13', NULL, '43', '', 3318, NULL, 40, NULL, NULL, NULL, 2),
(8, 'hari b', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-16', NULL, '1001', '', 990, NULL, 55, NULL, NULL, NULL, 3),
(9, 'haripriya b', 'Billed', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-16', NULL, '1002', '123456', 1234, 1190, 55, NULL, NULL, 2, NULL),
(10, 'haripriya b', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-16', NULL, '1000', '', 1323, NULL, 55, NULL, NULL, NULL, 4),
(11, 'Varsha Raj', 'Billed', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-16', NULL, '1003', '6', 11088, 9900, 2, NULL, NULL, 3, NULL),
(12, 'hari b', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-16', NULL, '1003', '', 90, NULL, 55, NULL, NULL, NULL, 5),
(13, 'Varsha Raj', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-16', NULL, '1', '', 10700, NULL, 2, NULL, NULL, NULL, 6),
(14, 'Niranjana Menon', 'Billed', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-19', NULL, '1004', '3', 7952, 7100, 2, NULL, NULL, 4, NULL),
(15, 'hari S', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-19', NULL, 'DN 1000', '', 3590, NULL, 58, NULL, NULL, NULL, 7),
(16, 'kavya s', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-19', NULL, 'DN 1000', '', 1612, NULL, 59, NULL, NULL, NULL, 8),
(17, 'Niranjana Menon', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-20', NULL, '3', '', 15200, NULL, 2, NULL, NULL, NULL, 9),
(18, 'Nirmal Raj', 'Expense', 'Expense', 'Office Supplies', '2023-10-21', 'Petty Cash', '1001', '7', 8000, NULL, 2, 1, NULL, NULL, NULL),
(19, '5 Seema Das', 'Invoice', 'Income', 'Sales', '2023-10-01', NULL, '1005', '', 2685, NULL, 57, NULL, 5, NULL, NULL),
(21, '9 Meera KL', 'Invoice', 'Income', 'Sales', '2023-10-05', NULL, '1007', '', 31488, NULL, 57, NULL, 7, NULL, NULL),
(22, '10 Rohit sharma', 'Invoice', 'Income', 'Sales', '2023-10-24', NULL, '1008', '', 57000, NULL, 60, NULL, 8, NULL, NULL),
(24, '8 SAMAL agh', 'Invoice', 'Income', 'Sales', '2023-10-26', NULL, '1010', '', 193712.4, NULL, 33, NULL, 10, NULL, NULL),
(25, '8 SAMAL agh', 'Invoice', 'Income', 'Sales', '2023-10-26', NULL, '1011', '', 193712.4, NULL, 33, NULL, 11, NULL, NULL),
(26, '8 SAMAL agh', 'Invoice', 'Income', 'Sales', '2023-10-26', NULL, '1012', '', 193712.4, NULL, 33, NULL, 12, NULL, NULL),
(27, '8 SAMAL agh', 'Invoice', 'Income', 'Sales', '2023-10-26', NULL, '1013', '', 20147.56, NULL, 33, NULL, 13, NULL, NULL),
(28, '11 Neethu Soman', 'Invoice', 'Income', 'Sales', '2023-10-26', NULL, '1014', '', 6720, NULL, 2, NULL, 14, NULL, NULL),
(29, '1 Nayana Vimal', 'Invoice', 'Income', 'Sales', '2023-10-26', NULL, '1015', '', 9912, NULL, 2, NULL, 15, NULL, NULL),
(30, '1 Nayana Vimal', 'Invoice', 'Income', 'Sales', '2023-09-02', NULL, '1016', '', 10752, NULL, 2, NULL, 16, NULL, NULL),
(31, '10 Rohit sharma', 'Invoice', 'Income', 'Sales', '2023-10-26', NULL, '1017', '', 48000, NULL, 60, NULL, 17, NULL, NULL),
(32, '10 Rohit sharma', 'Invoice', 'Income', 'Sales', '2023-10-26', NULL, '1018', '', 12600, NULL, 60, NULL, 18, NULL, NULL),
(33, '10 Rohit sharma', 'Invoice', 'Income', 'Sales', '2023-10-26', NULL, '1019', '', 73920, NULL, 60, NULL, 19, NULL, NULL),
(34, '18 sreyas mohan', 'Invoice', 'Income', 'Sales', '2023-08-12', NULL, '1023', '', 8400, NULL, 2, NULL, 23, NULL, NULL),
(35, 'Niranjana Menon', 'Billed', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-28', NULL, '1005', '8', 12600, 12000, 2, NULL, NULL, 5, NULL),
(36, '20 Sreekala sreehari', 'Invoice', 'Income', 'Sales', '2023-10-28', NULL, '1024', '', 14968, NULL, 2, NULL, 24, NULL, NULL),
(37, '26 jithin lal', 'Invoice', 'Income', 'Sales', '2023-10-31', NULL, '1027', '', 12544, NULL, 2, NULL, 27, NULL, NULL),
(38, 'Niranjana Menon', 'Billed', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-31', NULL, '1006', '2', 11760, 11200, 2, NULL, NULL, 6, NULL),
(39, 'Haripriya Nair', 'Billed', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-31', NULL, '1007', '7', 10752, 9600, 2, NULL, NULL, 7, NULL),
(40, 'Haripriya Nair', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-31', NULL, '2', '', 10752, NULL, 2, NULL, NULL, NULL, 10),
(41, 'anurag s', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-10-31', NULL, 'DM 1008', '', 4580, NULL, 64, NULL, NULL, NULL, 11),
(42, 'anu s', 'Billed', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-11-01', NULL, '1008', '12345678', 1346, 1190, 65, NULL, NULL, 8, NULL),
(43, 'lalu r', 'Billed', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-11-01', NULL, '1009', '123456', 1318, 1190, 65, NULL, NULL, 9, NULL),
(44, 'lalu r', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-11-01', NULL, 'DN 1002', '', 5108, NULL, 65, NULL, NULL, NULL, 12),
(45, 'Raj s', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-11-01', NULL, '1002', '', 1323, NULL, 65, NULL, NULL, NULL, 13),
(46, 'hari s', 'Billed', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-11-01', NULL, '1010', '12345', 1323, 1190, 66, NULL, NULL, 10, NULL),
(47, 'hari s', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-11-01', NULL, 'DN 1002', '', 3580, NULL, 66, NULL, NULL, NULL, 14),
(48, 'Haripriya Nair', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-11-01', NULL, '5', '', 10800, NULL, 2, NULL, NULL, NULL, 15),
(49, 'Haripriya Nair', 'Billed', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-11-01', NULL, '1011', '4', 25200, 23200, 2, NULL, NULL, 11, NULL),
(50, 'Haripriya Nair', 'Vendor Credits', 'Cost of Goods Sold', 'Cost of Goods Sold', '2023-11-01', NULL, '7', '', 23200, NULL, 2, NULL, NULL, NULL, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_purchasebill`
--

CREATE TABLE `app1_purchasebill` (
  `billid` int(11) NOT NULL,
  `vendor_name` varchar(100) DEFAULT NULL,
  `vendor_mail` varchar(100) DEFAULT NULL,
  `billing_address` longtext,
  `bill_no` int(11) NOT NULL,
  `sourceofsupply` varchar(100) DEFAULT NULL,
  `destiofsupply` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `deliverto` longtext,
  `date` date DEFAULT NULL,
  `deliver_date` date DEFAULT NULL,
  `credit_period` varchar(100) DEFAULT NULL,
  `due_date` varchar(100) DEFAULT NULL,
  `sub_total` varchar(100) DEFAULT NULL,
  `sgst` varchar(100) DEFAULT NULL,
  `cgst` varchar(100) DEFAULT NULL,
  `igst` varchar(100) DEFAULT NULL,
  `discount` varchar(100) NOT NULL,
  `tcs` varchar(100) DEFAULT NULL,
  `tcs_amount` double DEFAULT NULL,
  `round_off` varchar(100) DEFAULT NULL,
  `tax_amount` varchar(100) DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `balance_due` varchar(100) DEFAULT NULL,
  `amtrecvd` varchar(100) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `total_discount` varchar(100) DEFAULT NULL,
  `ship_charge` varchar(100) DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `balance_amount` double DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `status` varchar(150) NOT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_purchasebill`
--

INSERT INTO `app1_purchasebill` (`billid`, `vendor_name`, `vendor_mail`, `billing_address`, `bill_no`, `sourceofsupply`, `destiofsupply`, `branch`, `reference`, `contact_name`, `deliverto`, `date`, `deliver_date`, `credit_period`, `due_date`, `sub_total`, `sgst`, `cgst`, `igst`, `discount`, `tcs`, `tcs_amount`, `round_off`, `tax_amount`, `grand_total`, `balance_due`, `amtrecvd`, `note`, `file`, `total_discount`, `ship_charge`, `paid_amount`, `balance_amount`, `payment_type`, `status`, `cid_id`) VALUES
(1, 'Nirmal Raj', 'nirmal@gmail.com', 'Nirmal Raj ,NR Fashion Zoon Kattakkada\r\nKollam\r\nKerala\r\n691456\r\nIndia', 1001, 'Kerala', '[KL] Kerala', 'nill', '1', 'Nayana Vimal', 'nayana@gmail.com\r\n9995678909\r\nNayana N S Fashion complex\r\nkollam\r\nKerala', '2023-10-12', '2023-10-12', '0', '12-10-2023', '10800', '648', '648', '0', '0', '0', 0, '0', '1296', 12096, '12096', '0', '', 'default.png', '0', '0', 12096, 0, 'Cash', 'Billed', 2),
(2, 'haripriya b', 'haripriyabnair120@gmail.com', 'sdfghjk\r\nkollam\r\nKerala\r\n345676\r\nindia', 1002, 'Kerala', '[JK] Jammu and Kashmir', 'sbi', '123456', 'renu lal', 'renu@gmail.com\r\n9098788767\r\nsxdfcgvh\r\nkochi\r\nKerala', '2023-10-16', '2023-10-18', '15', '31-10-2023', '1190', '17.85', '17.85', '0', '0', '', 0, '-2', '35.7', 1234, '1236', '0', '', 'default.png', '10', '10', 1234, 0, 'Cash', 'Billed', 55),
(3, 'Varsha Raj', 'varsha@gmail.com', 'VR Fashion \r\nBanglore\r\n[KA] Karnataka\r\n697867\r\nindia', 1003, 'Kerala', '[KL] Kerala', 'Nill', '6', 'Nayana Vimal', 'nayana@gmail.com\r\n9995678909\r\nNayana N S Fashion complex\r\nkollam\r\nKerala', '2023-10-16', '2023-10-16', '0', '16-10-2023', '9900', '594', '594', '0', '0', '', 0, '0', '1188', 11088, '11088', '0', '', 'default.png', '900', '0', 11088, 0, 'Cash', 'Billed', 2),
(4, 'Niranjana Menon', 'niranjana12@gmail.com', 'NM Motors pvt  ltd\r\nkollam\r\nKerala\r\n691567\r\nindia', 1004, '[KA] Karnataka', '[KA] Karnataka', 'nill', '3', 'Nayana Vimal', 'nayana@gmail.com\r\n9995678909\r\nNayana N S Fashion complex\r\nkollam\r\nKerala', '2023-10-19', '2023-10-19', '0', '19/10/2023', '7100', '0.00', '0.00', '852.00', '0', '', 0, '0', '852', 7952, '7952', '0', '', 'default.png', '100', '0', 7952, 0, '3', 'Billed', 2),
(5, 'Niranjana Menon', 'niranjana12@gmail.com', 'NM Motors pvt  ltd\r\nkollam\r\nKerala\r\n691567\r\nindia', 1005, 'Kerala', '[KL] Kerala', 'nill', '8', 'sreyas mohan', 'sreyas@gmail.com\r\n9995645342\r\nWorld Pltd Infopark Kochi\r\nErnakulam\r\nKerala', '2023-10-28', '2023-10-28', '0', '28/10/2023', '12000', '300', '300', '0', '0', '', 0, '0', '600', 12600, '12600', '0', '', 'default.png', '0', '0', 600, 12000, 'IDFC Bank', 'Billed', 2),
(6, 'Niranjana Menon', 'niranjana12@gmail.com', 'NM Motors pvt  ltd\r\nkollam\r\nKerala\r\n691567\r\nindia', 1006, 'Kerala', '[KL] Kerala', 'Nill', '2', 'jithin lal', 'jithin@gmail.com\r\n9995678787\r\nABS Fruits Near Kalluvathukkal Junction\r\nkollam\r\nKerala', '2023-10-31', '2023-10-31', '0', '31/10/2023', '11200', '280', '280', '0', '0', '', 0, '0', '560', 11760, '11760', '0', '', 'default.png', '0', '0', 0, 11760, 'BOI Bank', 'Billed', 2),
(7, 'Haripriya Nair', 'hariz@gmail.com', 'Hariz Fashion Near RP Mall Kochi\r\nkochi\r\n[DL] Delhi\r\n691567\r\nindia', 1007, 'Kerala', '[JK] Jammu and Kashmir', 'nill', '7', 'jithin lal', 'jithin@gmail.com\r\n9995678787\r\nABS Fruits Near Kalluvathukkal Junction\r\nkollam\r\nKerala', '2023-10-31', '2023-10-31', '0', '31/10/2023', '9600', '576', '576', '0', '0', '', 0, '0', '1152', 10752, '10752', '0', '', 'default.png', '0', '0', 10752, 0, 'CASH', 'Billed', 2),
(8, 'anu s', '', 'sedrftvgbh', 1008, 'Kerala', '[KA] Karnataka', 'sbi', '12345678', 'renu lal', 'renu@gmail.com\r\n9098788767\r\nwsdrftgyhujik\r\nkottayam\r\nKarnataka', '2023-11-01', '2023-11-01', '15', '16/11/2023', '1190', '29.75', '29.75', '0', '0', '', 0, '-4', '59.5', 1346, '1350', '0', '', 'default.png', '10', '100', 1346, 0, 'CASH', 'Billed', 65),
(9, 'lalu r', 'lalu@gmail.com', 'ZSDXCFVGBNM\r\nkollam\r\nKerala\r\n123445\r\nindia', 1009, 'Kerala', '[LD] Lakshadweep', 'sbi', '123456', 'renu lal', 'renu@gmail.com\r\n9098788767\r\nwsdrftgyhujik\r\nkottayam\r\nKarnataka', '2023-11-01', '2023-11-01', '15', '16/11/2023', '1190', '17.85', '17.85', '0', '0', '', 0, '-8', '35.7', 1318, '1326', '0', '', 'default.png', '10', '100', 1318, 0, 'CASH', 'Billed', 65),
(10, 'hari s', 'hari@gmail.com', 'sdfghjk\r\nkollam\r\nHimachal Predesh\r\n123455\r\nindia', 1010, 'Bihar', '[DD] Damn anad Diu', 'sbi', '12345', 'riya mol', 'anu@gmail.com\r\n9098788767\r\nsxdcfgvhbjnkm\r\nkochi\r\nLadakh', '2023-11-01', '2023-11-01', '15', '16/11/2023', '1190', '17.85', '17.85', '0', '0', '', 0, '-3', '35.7', 1323, '1326', '0', '', 'default.png', '10', '100', 1323, 0, 'CASH', 'Billed', 66),
(11, 'Haripriya Nair', 'hariz@gmail.com', 'Hariz Fashion Near RP Mall Kochi\r\nkochi\r\n[DL] Delhi\r\n691567\r\nindia', 1011, 'Kerala', '[HR] Haryana', '', '4', 'sreyas mohan', 'sreyas@gmail.com\r\n9995645342\r\nWorld Pltd Infopark Kochi\r\nErnakulam\r\nKerala', '2023-11-01', '2023-11-01', '0', '01/11/2023', '23200', '1000', '1000', '0', '0', '', 0, '0', '2000', 25200, '25200', '0', '', 'default.png', '0', '0', 0, 25200, 'Cannara', 'Billed', 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_purchasebill_item`
--

CREATE TABLE `app1_purchasebill_item` (
  `id` bigint(20) NOT NULL,
  `items` varchar(100) DEFAULT NULL,
  `hsn` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_purchasebill_item`
--

INSERT INTO `app1_purchasebill_item` (`id`, `items`, `hsn`, `quantity`, `rate`, `tax`, `amount`, `discount`, `bill_id`, `cid_id`) VALUES
(1, 'Hair products', '787899', 9, '1200', '12', '10800', '0', 1, 2),
(2, 'book', '123455', 12, '100', '3', '1190', '10', 2, 55),
(3, 'Bag', '786756', 9, '1200', '12', '9900', '900', 3, 2),
(4, 'Bag', '786756', 6, '1200', '12', '7100', '100', 4, 2),
(5, 'Bag', '786756', 8, '1500', '5', '12000', '0', 5, 2),
(6, 'Hair products', '787899', 8, '1400', '5', '11200', '0', 6, 2),
(7, 'Kettle', '767554', 8, '1200', '12', '9600', '0', 7, 2),
(8, 'pencil', '898765', 12, '100', '5', '1190', '10', 8, 65),
(9, 'pencil', '898765', 12, '100', '3', '1190', '10', 9, 65),
(10, 'pencil', '123456', 12, '100', '3', '1190', '10', 10, 66),
(11, 'Hair products', '787899', 8, '1400', '5', '11200', '0', 11, 2),
(12, 'Bag', '786756', 8, '1500', '12', '12000', '0', 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_purchasedebit`
--

CREATE TABLE `app1_purchasedebit` (
  `pdebitid` int(11) NOT NULL,
  `debit_no` varchar(100) DEFAULT NULL,
  `vendor` varchar(100) DEFAULT NULL,
  `address` longtext,
  `debitdate` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `supply` varchar(150) DEFAULT NULL,
  `billno` varchar(100) DEFAULT NULL,
  `subtotal` varchar(100) DEFAULT NULL,
  `sgst` varchar(100) DEFAULT NULL,
  `cgst` varchar(100) DEFAULT NULL,
  `igst` varchar(100) DEFAULT NULL,
  `taxamount` varchar(100) DEFAULT NULL,
  `grandtotal` varchar(100) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `amtrecvd` varchar(100) DEFAULT NULL,
  `balance_amount` double DEFAULT NULL,
  `balance_due` varchar(100) DEFAULT NULL,
  `discount` varchar(100) NOT NULL,
  `paid_amount` double DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `round_off` varchar(100) DEFAULT NULL,
  `ship_charge` varchar(100) DEFAULT NULL,
  `status` varchar(150) NOT NULL,
  `tcs` varchar(100) DEFAULT NULL,
  `tcs_amount` double DEFAULT NULL,
  `total_discount` varchar(100) DEFAULT NULL,
  `adjustment` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_purchasedebit`
--

INSERT INTO `app1_purchasedebit` (`pdebitid`, `debit_no`, `vendor`, `address`, `debitdate`, `email`, `supply`, `billno`, `subtotal`, `sgst`, `cgst`, `igst`, `taxamount`, `grandtotal`, `cid_id`, `amtrecvd`, `balance_amount`, `balance_due`, `discount`, `paid_amount`, `payment_type`, `round_off`, `ship_charge`, `status`, `tcs`, `tcs_amount`, `total_discount`, `adjustment`) VALUES
(1, '43', 'AJAY PJ', 'PADMA NIVAS THEKKEKARA\r\nPalakkad\r\nKerala\r\n678592\r\nIndia', '2023-10-13', 'ajayjayathilakan0@gmail.com', 'Kerala', 'No Bill', '3160', '79', '79', '0', '158', '3318', 40, '0', 318, '3318', '0', 3000, 'Paypal/Other service', '0', '0', 'Draft', '', 0, '40', 0),
(2, '43', 'AJAY PJ', 'PADMA NIVAS THEKKEKARA\r\nPalakkad\r\nKerala\r\n678592\r\nIndia', '2023-10-13', 'ajayjayathilakan0@gmail.com', 'Kerala', 'No Bill', '3160', '79', '79', '0', '158', '3318', 40, '0', 318, '3318', '0', 3000, 'Paypal/Other service', '0', '0', 'Draft', '', 0, '40', 0),
(3, '1001', 'hari b', 'DFGHJ\r\nDHJ\r\n Jharkhand\r\n123456\r\nINDIA', '2023-10-16', 'hari@gmail.com', '[JH] Jharkhand', '', '990', '0.00', '0.00', '29.70', '29.7', '1027', 55, '0', 27, '1030', '0', 1000, 'Cheque', '-3', '10', 'Draft', '', 0, '10', 0),
(4, '1000', 'haripriya b', 'sdfghjk\r\nkollam\r\nKerala\r\n345676\r\nindia', '2023-10-16', 'haripriyabnair120@gmail.com', '[HP] Himachal Predesh', '1002', '1190', '0.00', '0.00', '35.70', '35.7', '1323', 55, '0', 1000, '1326', '0', 323, 'Cheque', '-3', '100', 'Draft', '', 0, '10', 0),
(5, '1003', 'hari b', 'DFGHJ\r\nDHJ\r\n[JH] Jharkhand\r\n123456\r\nINDIA', '2023-10-16', 'hari@gmail.com', '[JH] Jharkhand', '', '90', '0.00', '0.00', '2.70', '2.7', '191', 55, '0', -1133, '193', '0', 1324, 'Cheque', '-2', '100', 'Draft', '', 0, '10', 0),
(6, '1', 'Varsha Raj', 'VR Fashion \r\nBanglore\r\n[KA] Karnataka\r\n697867\r\nindia', '2023-10-16', 'varsha@gmail.com', '[KA] Karnataka', '1003', '9500', '0.00', '0.00', '1140.00', '1140', '10700', 2, '0', 0, '10740', '0', 10700, 'Cash', '-40', '100', 'Save', '', 0, '100', 0),
(7, 'DN 1000', 'hari S', 'SZDXFCGVBHJ\r\nSDRFTGYHU\r\n[DL] Delhi\r\n123456\r\nINDIA', '2023-10-19', 'hari@gmail.com', '[KA] Karnataka', '', '3590', '0.00', '0.00', '107.70', '107.7', '4708', 58, '0', 0, '4698', '0', 4708, 'Cheque', '10', '1000', 'Save', '', 0, '10', NULL),
(8, 'DN 1000', 'kavya s', 'Srtyukbvd\r\nkollam\r\n[JK] Jammu and Kashmir\r\n123456\r\nIndia ', '2023-10-19', 'kavya@gmail.com', '[HR] Haryana', '', '1466', '0.00', '0.00', '43.98', '43.98', '1612', 59, '0', 0, '1620', '0', 1612, 'Cash', '-8', '110', 'Save', '', 0, '10', NULL),
(9, '3', 'Niranjana Menon', 'NM Motors pvt  ltd\r\nkollam\r\nKerala\r\n691567\r\nindia', '2023-10-20', 'niranjana12@gmail.com', 'Kerala', '1004', '15200', '380', '380', '0', '760', '15960', 2, '0', 10080, '15960', '0', 5880, 'Cheque', '0', '0', 'Save', '', 0, '0', NULL),
(10, '2', 'Haripriya Nair', 'Hariz Fashion Near RP Mall Kochi\r\nkochi\r\n[DL] Delhi\r\n691567\r\nindia', '2023-10-31', 'hariz@gmail.com', '[DL] Delhi', '1007', '9600', '0.00', '0.00', '1152.00', '1152', '10752', 2, '0', 0, '10752', '0', 10752, 'Cash', '0', '0', 'Save', '', 0, '0', NULL),
(11, 'DM 1008', 'anurag s', 'drtfyghuj\r\nkollam \r\nKerala\r\n123456\r\nindia', '2023-10-31', 'anurag@gmail.com', '[HP] Himachal Predesh', '', '4580', '0.00', '0.00', '137.40', '137.4', '4717', 64, '0', 2255, '4727', '0', 2462, 'Creadit Card/Debit Card', '-10', '10', 'Save', '', 0, '20', NULL),
(12, 'DN 1002', 'lalu r', 'ZSDXCFVGBNM\r\nkollam\r\nKerala\r\n123445\r\nindia', '2023-11-01', 'lalu@gmail.com', 'Kerala', '1009', '3880', '116.25', '116.25', '0', '232.5', '5108', 65, '0', 0, '5113', '0', 5108, 'Cheque', '-5', '1000', 'Save', '', 0, '20', NULL),
(13, '1002', 'Raj s', 'sdfcgvhbjn\r\nkollam \r\n[LA] Ladakh\r\n123445\r\nIndia', '2023-11-01', 'raj@gmail.com', '[LA] Ladakh', '', '1190', '0.00', '0.00', '35.70', '35.7', '1323', 65, '0', 0, '1326', '0', 1323, 'Cheque', '-3', '100', 'Save', '', 0, '10', NULL),
(14, 'DN 1002', 'hari s', 'sdfghjk\r\nkollam\r\nHimachal Predesh\r\n123455\r\nindia', '2023-11-01', 'hari@gmail.com', '[KA] Karnataka', '1010', '3580', '0.00', '0.00', '155.20', '155.2', '3829', 66, '0', 3225, '3835', '0', 604, 'Cheque', '-6', '100', 'Save', '', 0, '20', NULL),
(15, '5', 'Haripriya Nair', 'Hariz Fashion Near RP Mall Kochi\r\nkochi\r\n[DL] Delhi\r\n691567\r\nindia', '2023-11-01', 'hariz@gmail.com', '[DL] Delhi', '1007', '10800', '0.00', '0.00', '1584.00', '1584', '12384', 2, '0', 12000, '12384', '0', 384, 'Cash', '0', '0', 'Save', '', 0, '0', NULL),
(16, '7', 'Haripriya Nair', 'Hariz Fashion Near RP Mall Kochi\r\nkochi\r\n[DL] Delhi\r\n691567\r\nindia', '2023-11-01', 'hariz@gmail.com', '[DL] Delhi', '1011', '23200', '0.00', '0.00', '1944.00', '1944', '25244', 2, '0', 25000, '25244', '0', 244, 'Cheque', '0', '100', 'Save', '', 0, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app1_purchasedebit1`
--

CREATE TABLE `app1_purchasedebit1` (
  `id` bigint(20) NOT NULL,
  `items` varchar(100) DEFAULT NULL,
  `hsn` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `pdebit_id` int(11) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_purchasedebit1`
--

INSERT INTO `app1_purchasedebit1` (`id`, `items`, `hsn`, `quantity`, `price`, `tax`, `total`, `cid_id`, `pdebit_id`, `discount`) VALUES
(2, 'book', '123455', 10, '100', '3', '990', NULL, 3, '10'),
(3, 'book', '123455', 12, '100', '3', '1190', 55, 4, '10'),
(5, 'Bag', '786756', 8, '1200', '12', '9500', 2, 6, '100'),
(6, 'book', '123455', 1, '100', '3', '90', NULL, 5, '10'),
(7, 'pencil', '123456', 12, '300', '3', '3590', 58, 7, '10'),
(8, 'pencil ', '123456', 12, '123', '3', '1466', 59, 8, '10'),
(9, 'Bag', '787867', 8, '700', '5', '5600', 2, 9, '0'),
(10, 'Hair products', '787899', 8, '1200', '5', '9600', NULL, 9, '0'),
(11, 'Kettle', '767554', 8, '1200', '12', '9600', 2, 10, '0'),
(12, 'pen', '1234546', 12, '200', '3', '2390', 64, 11, '10'),
(13, 'pen', '1234546', 11, '200', '3', '2190', NULL, 11, '10'),
(14, 'pencil', '898765', 13, '100', '12', '1290', 65, 12, '10'),
(15, 'book', '123456', 13, '200', '3', '2590', 65, 12, '10'),
(16, 'pencil', '898765', 12, '100', '3', '1190', 65, 13, '10'),
(17, 'book', '123456', 12, '200', '5', '2390', 66, 14, '10'),
(18, 'pencil', '123456', 12, '100', '3', '1190', NULL, 14, '10'),
(22, 'Bag', '786756', 8, '1500', '5', '12000', NULL, 16, '0');

-- --------------------------------------------------------

--
-- Table structure for table `app1_purchaseorder`
--

CREATE TABLE `app1_purchaseorder` (
  `porderid` int(11) NOT NULL,
  `vendor_name` varchar(100) DEFAULT NULL,
  `vendor_mail` varchar(100) DEFAULT NULL,
  `billing_address` longtext,
  `puchaseorder_no` int(11) NOT NULL,
  `sourceofsupply` varchar(100) DEFAULT NULL,
  `destiofsupply` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `deliverto` longtext,
  `date` date DEFAULT NULL,
  `deliver_date` date DEFAULT NULL,
  `credit_period` varchar(100) DEFAULT NULL,
  `due_date` varchar(100) DEFAULT NULL,
  `sub_total` varchar(100) DEFAULT NULL,
  `sgst` varchar(100) DEFAULT NULL,
  `cgst` varchar(100) DEFAULT NULL,
  `igst` varchar(100) DEFAULT NULL,
  `discount` varchar(100) NOT NULL,
  `tcs` varchar(100) DEFAULT NULL,
  `tcs_amount` varchar(100) DEFAULT NULL,
  `round_off` varchar(100) DEFAULT NULL,
  `tax_amount` varchar(100) DEFAULT NULL,
  `balance_due` varchar(100) DEFAULT NULL,
  `grand_total` varchar(100) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `total_discount` varchar(100) DEFAULT NULL,
  `ship_charge` varchar(100) DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `balance_amount` double DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `status` varchar(150) NOT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_purchaseorder`
--

INSERT INTO `app1_purchaseorder` (`porderid`, `vendor_name`, `vendor_mail`, `billing_address`, `puchaseorder_no`, `sourceofsupply`, `destiofsupply`, `branch`, `reference`, `contact_name`, `deliverto`, `date`, `deliver_date`, `credit_period`, `due_date`, `sub_total`, `sgst`, `cgst`, `igst`, `discount`, `tcs`, `tcs_amount`, `round_off`, `tax_amount`, `balance_due`, `grand_total`, `note`, `file`, `total_discount`, `ship_charge`, `paid_amount`, `balance_amount`, `payment_type`, `status`, `cid_id`) VALUES
(1, 'Nirmal Raj', 'nirmal@gmail.com', 'Nirmal Raj ,NR Fashion Zoon Kattakkada\r\nKollam\r\nKerala\r\n691456\r\nIndia', 1001, 'Kerala', '[KL] Kerala', 'nill', '1', 'Nayana Vimal', 'nayana@gmail.com\r\n9995678909\r\nNayana N S Fashion complex\r\nkollam\r\nKerala', '2023-10-12', '2023-10-12', '0', '12-10-2023', '10800', '648', '648', '0', '', '0', '0', '0', '1296', '12096', '12096', '', 'default.png', '0', '0', 12096, 0, 'Cash', 'Billed', 2),
(2, 'haripriya b', 'haripriyabnair120@gmail.com', 'sdfghjk\r\nkollam\r\nKerala\r\n345676\r\nindia', 1002, 'Kerala', '[JH] Jharkhand', 'sbi', '123456', 'renu lal', 'renu@gmail.com\r\n9098788767\r\nsxdfcgvh\r\nkochi\r\nKerala', '2023-10-16', '2023-10-19', '15', '31-10-2023', '990', '14.85', '14.85', '0', '', '0', '0', '-3', '29.7', '1120', '1117', '', 'default.png', '10', '100', 1117, 0, 'Cheque', 'Draft', 55),
(3, 'kavya s', 'kavya@gmail.com', 'Srtyukbvd\r\nkollam\r\n[JK] Jammu and Kashmir\r\n123456\r\nIndia ', 1003, 'Kerala', '[KA] Karnataka', 'DFGVH', '123456', 'XDFGH DXFCVG', 'abc@gmail.com\r\n9098788767\r\nCFGVHB\r\nkottayam\r\nJammu and Kashmir', '2023-10-19', '2023-10-19', '15', '03/11/2023', '4490', '67.35', '67.35', '0', '', '0', '0', '-8', '134.7', '4725', '4717', '', 'default.png', '10', '100', 4717, 0, 'Cash', 'Draft', 59),
(4, 'ROSILINT DAVIS', 'akhilakd5299@gmail.com', 'PELLISSERY HOUSE AMMADAM P O\r\nTHRISSUR\r\nKerala\r\n680563\r\nIndia', 1004, 'Kerala', '[KL] Kerala', 'kochi', '1', 'ROSILINT DAVIS', 'akhilakd5299@gmail.com\r\n7025306368\r\nPELLISSERY HOUSE AMMADAM P O\r\nTHRISSUR\r\nKerala', '2023-10-25', '2023-10-25', '0', '25/10/2023', '179310', '0', '0', '0', '', '0', '0', '54', '0', '179377', '179431', 'nil', 'purchase/purchaseorder/Capture1.PNG', '90', '67', 179431, 0, 'Cash', 'Draft', 61),
(5, 'anu s', '', 'edrftgyhuj', 1005, 'Kerala', '[BR] Bihar', 'sbi', '5678945678', 'renu lal', 'renu@gmail.com\r\n9098788767\r\nwsdrftgyhujik\r\nkottayam\r\nKarnataka', '2023-11-01', '2023-11-01', '15', '16/11/2023', '1190', '29.75', '29.75', '0', '', '0', '0', '-5', '59.5', '1350', '1345', '', 'default.png', '10', '100', 1345, 0, 'CASH', 'Draft', 65);

-- --------------------------------------------------------

--
-- Table structure for table `app1_purchaseorder_item`
--

CREATE TABLE `app1_purchaseorder_item` (
  `id` bigint(20) NOT NULL,
  `items` varchar(100) DEFAULT NULL,
  `hsn` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `rate` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `porder_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_purchaseorder_item`
--

INSERT INTO `app1_purchaseorder_item` (`id`, `items`, `hsn`, `quantity`, `rate`, `tax`, `amount`, `discount`, `cid_id`, `porder_id`) VALUES
(1, 'Hair products', '787899', '9', '1200', '12', '10800', '0', 2, 1),
(2, 'book', '123455', '10', '100', '3', '990', '10', 55, 2),
(3, 'pencil ', '456786', '15', '300', '3', '4490', '10', 59, 3),
(4, 'item1', '5958946', '78', '2300', '0', '179310', '90', 61, 4),
(5, 'pencil', '898765', '12', '100', '5', '1190', '10', 65, 5);

-- --------------------------------------------------------

--
-- Table structure for table `app1_purchasepayment`
--

CREATE TABLE `app1_purchasepayment` (
  `pymntid` int(11) NOT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `vendor` varchar(100) NOT NULL,
  `paymentdate` date DEFAULT NULL,
  `paymentmethod` varchar(100) DEFAULT NULL,
  `depositeto` varchar(100) NOT NULL,
  `amtreceived` varchar(100) DEFAULT NULL,
  `paymentamount` varchar(100) DEFAULT NULL,
  `amtcredit` varchar(100) NOT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  `cash` varchar(100) DEFAULT NULL,
  `cheque_number` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gst_number` varchar(100) DEFAULT NULL,
  `gst_treatment` varchar(100) DEFAULT NULL,
  `paid_through` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `upi_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_purchasepayment`
--

INSERT INTO `app1_purchasepayment` (`pymntid`, `reference`, `vendor`, `paymentdate`, `paymentmethod`, `depositeto`, `amtreceived`, `paymentamount`, `amtcredit`, `cid_id`, `account_number`, `cash`, `cheque_number`, `email`, `gst_number`, `gst_treatment`, `paid_through`, `status`, `upi_id`) VALUES
(3, 'opt', 'ROSILINT DAVIS', '2023-10-25', 'Cheque', 'Undeposited Funds', '56', '56', '89', 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Draft', NULL),
(4, '88', 'Rajeev Raj', '2023-10-31', 'Cash', 'Petty Cash', '88', '80', '20.00', 40, 'SBI', NULL, NULL, 'rajive@gmail.com', '354SDFFHG5', 'Registered Business - Composition', 'bank', 'Save', NULL),
(5, '77', 'Rajeev Raj', '2023-10-28', 'Cheque', '', NULL, NULL, '7800', 40, NULL, NULL, '4775857857', 'rajive@gmail.com', '354SDFFHG5', 'Registered Business - Composition', 'cheque', 'Save', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app1_purchasepayment1`
--

CREATE TABLE `app1_purchasepayment1` (
  `id` bigint(20) NOT NULL,
  `billdate` date DEFAULT NULL,
  `billno` varchar(100) DEFAULT NULL,
  `billamount` varchar(100) DEFAULT NULL,
  `duedate` varchar(100) DEFAULT NULL,
  `amountdue` varchar(100) DEFAULT NULL,
  `payments` varchar(100) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `pymnt_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_purchasepayment1`
--

INSERT INTO `app1_purchasepayment1` (`id`, `billdate`, `billno`, `billamount`, `duedate`, `amountdue`, `payments`, `cid_id`, `pymnt_id`) VALUES
(3, '2023-10-25', 'Vendor Opening Balance', '960000', '2023-10-25', '960000', '56', 61, 3),
(4, '2023-10-11', 'Vendor Opening Balance', '555', '2023-10-11', '80.0', '60', 40, 4),
(5, '2023-10-31', 'Vendor Opening Balance', '7890', '2023-10-31', '7890', '90', 40, 5);

-- --------------------------------------------------------

--
-- Table structure for table `app1_purchase_expense`
--

CREATE TABLE `app1_purchase_expense` (
  `expenseid` int(11) NOT NULL,
  `expense_no` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `expenseaccount` varchar(100) DEFAULT NULL,
  `expensetype` varchar(100) DEFAULT NULL,
  `hsn_sac` varchar(100) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `paidthrough` varchar(100) DEFAULT NULL,
  `vendor` varchar(100) DEFAULT NULL,
  `sourceofsupply` varchar(100) DEFAULT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_purchase_expense`
--

INSERT INTO `app1_purchase_expense` (`expenseid`, `expense_no`, `date`, `expenseaccount`, `expensetype`, `hsn_sac`, `amount`, `paidthrough`, `vendor`, `sourceofsupply`, `customer`, `tax`, `reference`, `note`, `file`, `cid_id`) VALUES
(1, 1001, '2023-10-21', 'Office Supplies', 'Goods', '234344', 8000, 'Petty Cash', 'Nirmal Raj', 'Kerala', 'Seetha Raj', '28', '7', 'gfh', 'default.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_recinvoice`
--

CREATE TABLE `app1_recinvoice` (
  `recinvoiceid` int(11) NOT NULL,
  `customername` varchar(100) NOT NULL,
  `profilename` varchar(100) NOT NULL,
  `recinvoiceno` varchar(100) NOT NULL,
  `terms` varchar(100) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` varchar(100) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `placosupply` varchar(100) NOT NULL,
  `ordernumber` int(11) DEFAULT NULL,
  `repeate_every` varchar(100) NOT NULL,
  `amtrecvd` int(11) DEFAULT NULL,
  `taxamount` int(11) DEFAULT NULL,
  `baldue` double NOT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `recinvoice_orderno` varchar(255) DEFAULT NULL,
  `status` varchar(150) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `IGST` varchar(100) DEFAULT NULL,
  `CGST` varchar(100) DEFAULT NULL,
  `SGST` varchar(100) DEFAULT NULL,
  `TCS` varchar(100) DEFAULT NULL,
  `gsttype` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_recinvoice`
--

INSERT INTO `app1_recinvoice` (`recinvoiceid`, `customername`, `profilename`, `recinvoiceno`, `terms`, `startdate`, `enddate`, `bname`, `placosupply`, `ordernumber`, `repeate_every`, `amtrecvd`, `taxamount`, `baldue`, `subtotal`, `grandtotal`, `recinvoice_orderno`, `status`, `note`, `file`, `IGST`, `CGST`, `SGST`, `TCS`, `gsttype`, `cid_id`, `discount`, `email`) VALUES
(1, 'Seetha Raj', 'invoi1', '1001', '0', '2023-10-01', '19/10/2023', 'Seetha Raj\r\ndream\r\nfyugh guijkle\r\nkollam\r\nKerala\r\n\r\n', 'Kerala', 0, 'month ', 0, 1008, 0, 8400, 9308, '0', 'Draft', '', 'default.jpg', '0', '504', '504', '0', 'GST-unregistered', 2, 100, 'seetha@gmail.com'),
(2, 'Seetha Raj', 'invoice03', '1002', '0', '2023-10-20', '20/10/2023', 'seetha@gmail.com\r\n9999567564\r\nfyugh guijkle\r\nkollam\r\nKerala', 'Kerala', 0, '1 WEEK', 0, 355, 0, 7100, 7455, '0', 'Approved', '', 'default.jpg', '0', '177.5', '177.5', 'False', 'GST-unregistered', 2, 0, 'seetha@gmail.com'),
(3, 'Seetha Raj', 'invoice01', '1003', 'recpt', '2023-10-24', '', 'seetha@gmail.com\r\n9999567564\r\nfyugh guijkle\r\nkollam\r\nKerala', 'Kerala', 0, '', 0, 1008, 0, 8400, 9408, '0', 'Draft', '', 'default.jpg', '0', '504', '504', 'False', 'GST-unregistered', 2, 0, 'seetha@gmail.com'),
(4, 'Nayana Vimal', 'invoice04', '1004', 'recpt', '2023-10-24', '', 'nayana@gmail.com\r\n9995678909\r\nNayana N S Fashion complex\r\nkollam\r\nKerala', 'Andaman Nicobar', 0, 'year ', 0, 1140, 0, 9500, 10640, '0', 'Draft', '', 'default.jpg', '1140.00', '0.00', '0.00', 'False', 'unregistered Business', 2, 0, 'nayana@gmail.com'),
(5, 'SAMAL agh', 'asd', '1005', '45', '2023-10-26', '10/12/2023', 'ksva@gmail.com\r\n9123456789\r\nass\r\nas\r\nJammu and Kashmir', 'Andaman Nicobar', 0, '1 WEEK', 0, 540, 0, 17988, 18528, '12', 'Draft', 'qq', 'default.jpg', '539.64', '0.00', '0.00', 'False', 'Unregistered Business', 33, 0, 'ksva@gmail.com'),
(6, 'Neethu Soman', 'invo09', '1012', '0', '2023-10-26', '26/10/2023', 'False', 'Andaman Nicobar', 0, 'year', 0, 310, 0, 6200, 6510, '', 'Approved', '', 'default.jpg', '310.00', '0.00', '0.00', 'False', 'Consumer', 2, 0, 'neethu@gmail.com'),
(7, 'Nayana Vimal', 'invoice07', '1014', '60', '2023-10-26', '25/12/2023', 'False', 'Kerala', 0, 'month', 0, 1140, 0, 9500, 10640, '', 'Draft', '', 'default.jpg', '0', '570', '570', 'False', 'unregistered Business', 2, 0, 'nayana@gmail.com'),
(8, 'Rohit sharma', 'hukkum', '1008', '15', '2023-10-26', '', 'XCHITTER@GAIL.COM\r\n7356284633\r\nqudratic side,emncvopcs\r\nregoshepheric\r\nDelhi', 'Kerala', 0, '2 MONTH', 0, 0, 0, 9000, 9000, '36', 'Draft', '', 'default.jpg', '0', '0', '0', 'False', 'Overseas', 60, 0, 'XCHITTER@GAIL.COM'),
(10, 'Vijay Vinod', 'Vijay Vinod', '1902', '40', '2023-10-13', '2023-11-22', '123 Street Allapey Road\r\nAllapuzha\r\nKerala\r\nIndia\r\n787656', 'Kerala', 0, '0', 0, 3420, 22420, 19000, 22420, '9', 'Draft', '', 'default.jpg', '0', '1710', '1710', '0', 'unregistered Business', 45, 0, 'vijay@gmail.com'),
(11, 'Praveen P', 'Praveen P', '1903', '60', '2023-10-29', '2023-12-28', '123 street Thoppumpady\r\nErnakulam\r\nKerala\r\nIndia\r\n682002', 'Kerala', 0, '0', 0, 99990, 2099790, 1999800, 2099790, '11', 'Draft', '', 'default.jpg', '0', '49995', '49995', '0', 'unregistered Business', 45, 0, 'Praveenpradeepkumr@gmail.com'),
(12, 'kausalya murali', 'invoice04', '1012', '90', '2023-10-27', '25/01/2024', 'nayana@gmail.com\r\n9995676765\r\nKK Production Store Market Puthoor\r\nKottarakkara\r\nkollam\r\nKerala', 'Andaman Nicobar', 0, '1 WEEK', 0, 972, 0, 8100, 9072, '', 'Draft', '', 'default.jpg', '972.00', '0.00', '0.00', 'False', 'unregistered Business', 2, 0, 'nayana@gmail.com'),
(13, 'sreyas mohan', 'sreyas mohan', '1904', '30', '2023-10-01', '2023-10-31', 'World Pltd Infopark Kochi\r\nErnakulam\r\nKerala\r\nIndia\r\n678786', 'Kerala', 0, '0', 850, 852, 16000, 7100, 16850, '13', 'Draft', '', 'default.jpg', '0', '1278', '1278', '0', 'unregistered Business', 2, 0, 'sreyas@gmail.com'),
(14, 'kausalya murali', 'invoice09', '1014', '', '2023-10-27', '26/11/2023', 'nayana@gmail.com\r\n9995676765\r\nKK Production Store Market Puthoor\r\nKottarakkara\r\nkollam\r\nKerala', 'Jharkhand', 0, '2 MONTH', 0, 300, 0, 6000, 6300, '', 'Draft', '', 'default.jpg', '300.00', '0.00', '0.00', 'False', 'unregistered Business', 2, 0, 'nayana@gmail.com'),
(15, 'Tom T', 'Tom T', '1007', '30', '2023-10-29', '2023-11-28', '123 Street Malayatoor\r\nErnakulam\r\nKerala\r\nIndia\r\n456789', 'Kerala', 0, '0', 0, 53820, 352820, 299000, 352820, '15', 'Draft', '', 'default.jpg', '0', '26910', '26910', '0', 'unregistered Business', 45, 0, 'tom@gmail.com'),
(16, 'Priya S', 'Priya S', '1006', '0', '2023-10-08', '2023-10-08', '123 Street Ponani, \r\nKannur\r\nKerala\r\nIndia\r\n890002', 'Kerala', 0, '0', 0, 90000, 3090000, 3000000, 3090000, '16', 'Draft', '', 'default.jpg', '0', '45000', '45000', '0', 'unregistered Business', 45, 0, 'Priya@gmail.com'),
(17, 'jithin lal', 'jithin lal', 'SL07', '0', '2023-10-31', '2023-10-31', 'ABS Fruits Near Kalluvathukkal Junction\r\nkollam\r\nKerala\r\nindia\r\n691565', 'Kerala', 0, '0', 0, 6894, 45194, 38300, 45194, '17', 'Draft', '', 'default.jpg', '0', '3447', '3447', '0', 'unregistered Business', 2, 0, 'jithin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `app1_recinvoice_item`
--

CREATE TABLE `app1_recinvoice_item` (
  `id` bigint(20) NOT NULL,
  `product` varchar(100) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `tax` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `items` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `recinvoice_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_recinvoice_item`
--

INSERT INTO `app1_recinvoice_item` (`id`, `product`, `discount`, `qty`, `price`, `total`, `tax`, `hsn`, `items`, `cid_id`, `recinvoice_id`) VALUES
(1, '', 100, 6, '1200', 7100, '5', '787899', 'Hair products', 2, 1),
(2, '', 100, 6, '1200', 7100, '5', '787899', 'Hair products', 2, 2),
(3, '', 100, 6, '1200', 7100, '5', '787899', 'Hair products', 2, 3),
(4, '', 100, 6, '1200', 7100, '5', '787899', 'Hair products', 2, 6),
(5, '', 100, 6, '1200', 7100, '5', '787899', 'Hair products', 2, 7),
(6, '', 0, 50, '180', 9000, '0', '369438', 'Tshirts', 60, 8),
(8, 'PEN', 0, 19, '1000', 19000, '18', '897367', NULL, 45, 10),
(9, 'PEN', 200, 2000, '1000', 1999800, '5', '897367', NULL, 45, 11),
(11, 'Kettle', 100, 8, '900', 7100, '12', '767554', NULL, 2, 13),
(13, 'PEN', 1000, 100, '3000', 299000, '18', '897367', NULL, 45, 15),
(14, 'PEN', 0, 1000, '3000', 3000000, '3', '897367', NULL, 45, 16),
(15, 'Cleaning Items', 0, 8, '1200', 9600, '18', '567575', NULL, 2, 17),
(16, 'Cleaning Items', 0, 8, '1200', 9600, '18', '567575', NULL, 2, 17),
(17, 'Cleaning Items', 0, 8, '1200', 9600, '18', '567575', NULL, 2, 17),
(18, 'Cleaning Items', 100, 8, '1200', 9500, '18', '567575', NULL, 2, 17);

-- --------------------------------------------------------

--
-- Table structure for table `app1_recon1`
--

CREATE TABLE `app1_recon1` (
  `recon1id` int(11) NOT NULL,
  `accounttype` varchar(100) NOT NULL,
  `beginningbalance` varchar(100) NOT NULL,
  `endingbalance` varchar(100) NOT NULL,
  `endingdate` varchar(100) NOT NULL,
  `edat` varchar(100) DEFAULT NULL,
  `serchar` varchar(100) NOT NULL,
  `expacc` varchar(100) NOT NULL,
  `idat1` varchar(100) DEFAULT NULL,
  `intear` varchar(100) NOT NULL,
  `incacc` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_recordpay`
--

CREATE TABLE `app1_recordpay` (
  `recordpayid` int(11) NOT NULL,
  `textname` varchar(100) NOT NULL,
  `paymentdate` varchar(100) NOT NULL,
  `recordamount` varchar(100) NOT NULL,
  `recordmemo` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_recterm`
--

CREATE TABLE `app1_recterm` (
  `id` bigint(20) NOT NULL,
  `term_name` varchar(100) NOT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_recterm`
--

INSERT INTO `app1_recterm` (`id`, `term_name`, `cid_id`) VALUES
(1, 'net 95', 2),
(2, 'NET 2', 57),
(3, '5', 57),
(4, '25', 57),
(5, '60', 2),
(6, '70', 2),
(7, '90', 2),
(8, '65', 2),
(9, '10', 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_recurringbill_item`
--

CREATE TABLE `app1_recurringbill_item` (
  `id` bigint(20) NOT NULL,
  `item` varchar(100) DEFAULT NULL,
  `hsn` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_recurringbill_item`
--

INSERT INTO `app1_recurringbill_item` (`id`, `item`, `hsn`, `qty`, `price`, `total`, `discount`, `tax`, `bill_id`, `cid_id`) VALUES
(1, ' ', '323444', 20, '4', 70, '10', '12', 1, 40),
(2, 'mose', '4545', 50, '800', 39950, '50', '12', 2, 40),
(3, 'Hair products', '787899', 9, '1200', 10700, '100', '3', 3, 2),
(4, 'Hair products', '787899', 9, '1200', 10700, '100', '3', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_recurring_bill`
--

CREATE TABLE `app1_recurring_bill` (
  `rbillid` int(11) NOT NULL,
  `billno` varchar(100) DEFAULT NULL,
  `profile_name` varchar(100) DEFAULT NULL,
  `source_supply` varchar(100) DEFAULT NULL,
  `vendor_name` varchar(100) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `repeat_every` varchar(100) DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` varchar(100) DEFAULT NULL,
  `payment_terms` varchar(100) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `igst` double DEFAULT NULL,
  `cgst` double DEFAULT NULL,
  `sgst` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `shipping_charge` double DEFAULT NULL,
  `adjustment` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `status` varchar(150) NOT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_recurring_bill`
--

INSERT INTO `app1_recurring_bill` (`rbillid`, `billno`, `profile_name`, `source_supply`, `vendor_name`, `customer_name`, `repeat_every`, `payment_method`, `start_date`, `end_date`, `payment_terms`, `sub_total`, `igst`, `cgst`, `sgst`, `tax_amount`, `shipping_charge`, `adjustment`, `grand_total`, `note`, `paid_amount`, `balance`, `file`, `status`, `cid_id`) VALUES
(1, '2', 'jeg', 'Jharkhand', 'AJAY PJ', 'Anita TL', '1 Month', 'cheque', '2023-10-13', '02-11-2023', '20', 70, 8.4, 0, 0, 8.4, 0, 0, 78.4, 'c v', 0, 78.4, 'default.png', 'Billed', 40),
(2, '77', 'kjhg', 'Karnataka', 'AJAY PJ', 'Anita TL', '3 Months', 'cheque', '2023-11-02', '17-11-2023', '35', 39950, 4794, 0, 0, 4794, 0, 0, 44744, '', 0, 44744, 'default.png', 'Billed', 40),
(3, '1', 'invoice01', 'Kerala', 'Niranjana Menon', 'Nayana Vimal', '1 Month', 'cheque', '2023-10-19', '19-10-2023', '0', 21400, 0, 321, 321, 642, 100, -42, 22100, '', 1021, 21079, 'default.png', 'Billed', 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_recurring_expense`
--

CREATE TABLE `app1_recurring_expense` (
  `recur_expenseid` int(11) NOT NULL,
  `profile_name` varchar(100) DEFAULT NULL,
  `repeat_every` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `expenseaccount` varchar(100) DEFAULT NULL,
  `expensetype` varchar(100) DEFAULT NULL,
  `hsn` varchar(100) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `paidthrough` varchar(100) DEFAULT NULL,
  `vendor` varchar(100) DEFAULT NULL,
  `gst_treat` varchar(100) DEFAULT NULL,
  `gstin` varchar(100) DEFAULT NULL,
  `destinofsupply` varchar(100) DEFAULT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `rev_charge` varchar(50) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_repeatevery`
--

CREATE TABLE `app1_repeatevery` (
  `id` bigint(20) NOT NULL,
  `repeat` varchar(100) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_repeatevry`
--

CREATE TABLE `app1_repeatevry` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_repeatevry`
--

INSERT INTO `app1_repeatevry` (`id`, `name`, `cid_id`) VALUES
(1, 'month', 2),
(2, '3 month', 2),
(3, '50', 57),
(4, 'year', 2),
(5, 'year', 2),
(6, '5 month', 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_retainerinvoiceitems`
--

CREATE TABLE `app1_retainerinvoiceitems` (
  `id` bigint(20) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `retainer_invoice_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_retainerinvoiceitems`
--

INSERT INTO `app1_retainerinvoiceitems` (`id`, `description`, `amount`, `retainer_invoice_id`) VALUES
(1, 'sales invoice', 9000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `app1_retainerinvoices`
--

CREATE TABLE `app1_retainerinvoices` (
  `id` bigint(20) NOT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `billing_address` varchar(100) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `invoice_number` varchar(100) DEFAULT NULL,
  `reference_number` int(11) DEFAULT NULL,
  `place_of_supply` varchar(100) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `customer_notes` varchar(100) DEFAULT NULL,
  `terms_conditions` varchar(100) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_retainerinvoices`
--

INSERT INTO `app1_retainerinvoices` (`id`, `customer`, `email`, `billing_address`, `invoice_date`, `expiry_date`, `invoice_number`, `reference_number`, `place_of_supply`, `total_amount`, `customer_notes`, `terms_conditions`, `comments`, `attachment`, `status`, `cid_id`) VALUES
(1, 'Seetha Raj', 'seetha@gmail.com', 'Seetha Raj\r\ndream\r\nfyugh guijkle\r\nkollam\r\nKerala\r\n\r\n', '2023-10-20', '2023-10-14', 'RINV-001', 5, 'Kerala', 9000, '', '', NULL, '', 'Draft', 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_salescreditnote`
--

CREATE TABLE `app1_salescreditnote` (
  `screditid` int(11) NOT NULL,
  `credit_no` int(11) NOT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `address` longtext,
  `creditdate` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `supply` varchar(150) DEFAULT NULL,
  `billno` varchar(100) DEFAULT NULL,
  `subtotal` varchar(100) DEFAULT NULL,
  `shipping_charge` varchar(100) DEFAULT NULL,
  `taxamount` varchar(100) DEFAULT NULL,
  `grandtotal` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_salescreditnote`
--

INSERT INTO `app1_salescreditnote` (`screditid`, `credit_no`, `customer`, `address`, `creditdate`, `email`, `supply`, `billno`, `subtotal`, `shipping_charge`, `taxamount`, `grandtotal`, `description`, `cid_id`) VALUES
(1, 1001, '1 Nayana Vimal', 'Nayana N S Fashion complex\r\nkollam\r\nKerala\r\nindia\r\n690978', '2023-10-10', 'nayana@gmail.com', 'Kerala', 'Select Invoice', '10700.00', NULL, '1284.00', '11984', NULL, 2),
(2, 1002, '5 Seema Das', 'abcd place\r\nKochi\r\nKerala\r\nIndia\r\n322332', '2023-10-21', 'dass@mail.com', 'Ladakh', 'Select Invoice', '2000.00', NULL, '560.00', '2600.00', NULL, 57),
(3, 1003, '6 Seetha Raj', 'fyugh guijkle\r\nkollam\r\nKerala\r\n\r\n', '2023-10-24', 'seetha@gmail.com', 'Kerala', 'Select Invoice', '5400.00', '0', '270.00', '5670.00', '', 2),
(4, 1004, '10 Rohit sharma', 'qudratic side,emncvopcs\r\nregoshepheric\r\nDelhi\r\nindia\r\n690504', '2023-10-26', 'XCHITTER@GAIL.COM', 'Kerala', 'Select Invoice', '2700.00', '0', '0.00', '2700.00', '', 60),
(5, 1005, '10 Rohit sharma', 'qudratic side,emncvopcs\r\nregoshepheric\r\nDelhi\r\nindia\r\n690504', '2023-10-26', 'vishnuasok41@gmail.com', 'Kerala', 'Select Invoice', '5400.00', '0', '0.00', '5400.00', '', 60),
(6, 1006, '19 Anoop Das', 'Anoop motors NH Block kannur\r\nkannur\r\nKerala\r\nindia\r\n698767', '2023-10-27', 'anopp@gmail.com', 'Kerala', 'Select Invoice', '11200.00', '0', '1344.00', '12544', '', 2),
(7, 1007, '19 Anoop Das', 'Anoop motors NH Block kannur\r\nkannur\r\nKerala\r\nindia\r\n698767', '2023-10-28', 'anopp@gmail.com', 'Kerala', 'Select Invoice', '13400.00', '0', '2412.00', '15812.00', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_salescreditnote1`
--

CREATE TABLE `app1_salescreditnote1` (
  `id` bigint(20) NOT NULL,
  `items` varchar(100) DEFAULT NULL,
  `hsn` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `scredit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_salescreditnote1`
--

INSERT INTO `app1_salescreditnote1` (`id`, `items`, `hsn`, `quantity`, `price`, `tax`, `discount`, `total`, `scredit_id`) VALUES
(1, 'Cleaning Items', '567575', 6, '900', '5', '0', '5400', 3),
(2, 'Hair products', '787899', 8, '1400', '12', '0', '11200', 6),
(3, 'Bag', '786756', 9, '1500', '18', '100', '13400', 7);

-- --------------------------------------------------------

--
-- Table structure for table `app1_salesorder`
--

CREATE TABLE `app1_salesorder` (
  `id` bigint(20) NOT NULL,
  `salename` varchar(100) DEFAULT NULL,
  `saleemail` varchar(254) DEFAULT NULL,
  `saleaddress` varchar(150) DEFAULT NULL,
  `saledate` date DEFAULT NULL,
  `shipmentdate` date DEFAULT NULL,
  `saleno` varchar(20) DEFAULT NULL,
  `placeofsupply` varchar(100) DEFAULT NULL,
  `reference_number` varchar(100) NOT NULL,
  `note` longtext,
  `subtotal` varchar(100) DEFAULT NULL,
  `IGST` varchar(100) DEFAULT NULL,
  `CGST` varchar(100) DEFAULT NULL,
  `SGST` varchar(100) DEFAULT NULL,
  `taxamount` varchar(100) DEFAULT NULL,
  `shipping_charge` varchar(100) DEFAULT NULL,
  `salestotal` varchar(100) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `status` varchar(150) NOT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `adjust` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `inv_status` int(11) NOT NULL,
  `paidoff` varchar(255) DEFAULT NULL,
  `pay_method` varchar(255) DEFAULT NULL,
  `salcrd_status` int(11) NOT NULL,
  `term_days` int(11) DEFAULT NULL,
  `upi_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_salesorder`
--

INSERT INTO `app1_salesorder` (`id`, `salename`, `saleemail`, `saleaddress`, `saledate`, `shipmentdate`, `saleno`, `placeofsupply`, `reference_number`, `note`, `subtotal`, `IGST`, `CGST`, `SGST`, `taxamount`, `shipping_charge`, `salestotal`, `file`, `status`, `cid_id`, `adjust`, `balance`, `cheque_no`, `inv_status`, `paidoff`, `pay_method`, `salcrd_status`, `term_days`, `upi_no`) VALUES
(1, '19 Anoop Das', 'anopp@gmail.com', 'Anoop motors NH Block kannur\r\nkannur\r\nKerala\r\nindia\r\n698767', '2023-10-01', '2023-10-01', 'SL01', 'Ladakh', '1', '', '9700.00', '1164.00', '0.00', '0.00', '1164.00', '100', '10900.00', 'default.jpg', 'Approved', 2, '-64', '10000.00', '345677675476', 0, '900', 'cheque', 0, 0, ''),
(3, '18 sreyas mohan', 'sreyas@gmail.com', 'World Pltd Infopark Kochi\r\nErnakulam\r\nKerala\r\nIndia\r\n678786', '2023-09-15', '2023-09-15', 'SL02', 'Kerala', '3', '', '10700.00', '0', '642', '642', '1284.00', '100', '12000.00', 'default.jpg', 'Approved', 2, '-84', '10000.00', '', 0, '2000', 'IDFC Bank', 0, 0, ''),
(5, '21 Vyshak Murali', 'Vyshak@gmail.com', '123 Street Kottayam\r\nKottayam\r\nKerala\r\nIndia\r\n898789', '2023-10-14', '2023-11-13', '1003', 'Kerala', '4', '', '6000000.00', '0', '150000', '150000', '300000.00', '0', '6300000.00', 'default.jpg', 'Draft', 45, '0', '6300000.00', '989999', 1, '0', 'cheque', 0, 30, ''),
(13, '23 Priya S', 'Priya@gmail.com', '123 Street Ponani, \r\nKannur\r\nKerala\r\nIndia\r\n890002', '2023-10-08', '2023-10-08', '1006', 'Kerala', '5', '', '3000000.00', '0', '45000', '45000', '90000.00', '0', '3090000.00', 'default.jpg', 'Approved', 45, '0', '3090000.00', '', 0, '0', 'cash', 1, 0, ''),
(14, '24 Tom T', 'tom@gmail.com', '123 Street Malayatoor\r\nErnakulam\r\nKerala\r\nIndia\r\n456789', '2023-10-29', '2023-11-28', '1007', 'Kerala', '6', '', '299000.00', '0', '26910', '26910', '53820.00', '0', '352820.00', 'default.jpg', 'Approved', 45, '0', '352820.00', '', 0, '0', 'cash', 1, 30, ''),
(15, '14 Vijay Vinod', 'vijay@gmail.com', '123 Street Allapey Road\r\nAllapuzha\r\nKerala\r\nIndia\r\n787656', '2023-10-30', '2023-11-29', '1008', 'Kerala', '7', '', '55160.00', '0', '3309.6', '3309.6', '6619.20', '100', '61929.20', 'default.jpg', 'Approved', 45, '50', '1929.20', '', 1, '60000', 'cash', 0, 30, ''),
(16, '25 Nivedh kumar', 'nived@gmail.com', 'Nivya Fashion Design RP Mall Kollam\r\nkollam\r\nKerala\r\nindia\r\n691576', '2023-09-01', '2023-10-01', 'SL03', 'Kerala', '8', '', '21900.00', '0', '1314', '1314', '2628.00', '100', '24544.00', 'default.jpg', 'Approved', 2, '-84', '22544.00', '', 0, '2000', 'upi', 0, 30, '6677889866'),
(17, '26 jithin lal', 'jithin@gmail.com', 'ABS Fruits Near Kalluvathukkal Junction\r\nkollam\r\nKerala\r\nindia\r\n691565', '2023-09-21', '2023-09-21', 'SL06', 'Kerala', '9', '', '10800.00', '0', '648', '648', '1296.00', '0', '12096.00', 'default.jpg', 'Approved', 2, '0', '12096.00', '', 1, '0', 'cash', 0, 0, ''),
(19, '22 Anu A', 'anu@gmail.com', '12345 Street Maradu\r\nErnakulam\r\nKerala\r\nIndia\r\n898498', '2023-10-08', '2023-10-08', '1009', 'Kerala', '11', '', '1360955.00', '0', '73023.88', '73023.88', '146047.75', '0', '1507002.75', 'default.jpg', 'Draft', 45, '0', '1507002.75', '', 1, '0', 'upi', 0, 0, '893039'),
(20, '26 jithin lal', 'jithin@gmail.com', 'ABS Fruits Near Kalluvathukkal Junction\r\nkollam\r\nKerala\r\nindia\r\n691565', '2023-10-31', '2023-10-31', 'SL07', 'Kerala', '12', '', '47800.00', '0', '4302', '4302', '8604.00', '0', '56404.00', 'default.jpg', 'Draft', 2, '0', '56404.00', '', 0, '0', 'cash', 1, 0, ''),
(21, '26 jithin lal', 'jithin@gmail.com', 'ABS Fruits Near Kalluvathukkal Junction\r\nkollam\r\nKerala\r\nindia\r\n691565', '2023-10-20', '2023-10-20', 'SL05', 'Kerala', '13', '', '11200.00', '0', '1008', '1008', '2016.00', '100', '13316.00', 'default.jpg', 'Approved', 2, '0', '13316.00', '', 0, '0', 'cash', 0, 0, ''),
(22, '28 renu lal', 'renu@gmail.com', 'wsdrftgyhujik\r\nkottayam\r\nKarnataka\r\nindia \r\n686539', '2023-11-16', '2023-12-16', '1014', 'Karnataka', '14', '', '2380.00', '428.40', '0.00', '0.00', '428.40', '100', '2903.40', 'default.jpg', 'Approved', 65, '-5', '2885.40', '', 0, '18', 'cash', 0, 30, ''),
(23, '30 raam s', 'JETHI@GMAIL.COM', 'kolenchery\r\nkolenchery\r\nKerala\r\nindia\r\n682311', '2023-11-08', '2023-11-08', '1011', 'Kerala', '15', '', '5950.00', '0', '89.25', '89.25', '178.50', '0', '6128.50', 'default.jpg', 'Approved', 67, '0', '6128.50', '', 1, '0', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `app1_salesrecpts`
--

CREATE TABLE `app1_salesrecpts` (
  `salesrecptsid` int(11) NOT NULL,
  `salename` varchar(100) NOT NULL,
  `saleemail` varchar(254) NOT NULL,
  `saleaddress` varchar(150) NOT NULL,
  `saledate` varchar(10) NOT NULL,
  `saleno` varchar(20) NOT NULL,
  `salesplace` varchar(100) NOT NULL,
  `salepay` varchar(10) NOT NULL,
  `salerefno` varchar(10) NOT NULL,
  `saledeposit` varchar(150) NOT NULL,
  `salepro` varchar(100) NOT NULL,
  `salehsn` varchar(100) NOT NULL,
  `saledescription` varchar(100) NOT NULL,
  `saleqty` varchar(100) NOT NULL,
  `saleprice` varchar(100) NOT NULL,
  `saaletotal` varchar(100) NOT NULL,
  `salesubtotal` varchar(100) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `saletaxamount` varchar(100) NOT NULL,
  `salegrandtotal` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `categoryhsn2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `tax1` int(11) DEFAULT NULL,
  `category3` varchar(100) NOT NULL,
  `categoryhsn3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `tax2` int(11) DEFAULT NULL,
  `category4` varchar(100) NOT NULL,
  `categoryhsn4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `tax3` int(11) DEFAULT NULL,
  `offline` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_sales_item`
--

CREATE TABLE `app1_sales_item` (
  `id` bigint(20) NOT NULL,
  `product` varchar(100) DEFAULT NULL,
  `hsn` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `salesorder_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_sales_item`
--

INSERT INTO `app1_sales_item` (`id`, `product`, `hsn`, `qty`, `price`, `total`, `discount`, `tax`, `cid_id`, `salesorder_id`) VALUES
(1, 'Item2', '666666', 5, '500', 1700, '800', '5', 57, 1),
(13, 'Kettle', '767554', 9, '1200', 10700, '100', '12', 2, 3),
(15, 'PEN', '897367', 2000, '3000', 6000000, '0', '5', 45, 5),
(25, 'PEN', '897367', 1000, '3000', 3000000, '0', '3', 45, 13),
(26, 'PEN', '897367', 100, '3000', 299000, '1000', '18', 45, 14),
(27, 'PEN', '897367', 10, '3000', 29900, '100', '12', 45, 15),
(28, 'WATER', '898767', 10, '2545', 25260, '190', '12', 45, 15),
(29, 'Kettle', '767554', 9, '1200', 10700, '100', '12', 2, 16),
(30, 'Hair products', '787899', 8, '1400', 11200, '0', '12', 2, 16),
(31, 'Bottle Jam', '78877', 9, '1200', 10800, '0', '12', 2, 17),
(33, 'PEN', '897367', 200, '3000', 600000, '0', '18', 45, 19),
(34, 'WATER', '898767', 299, '2545', 760955, '0', '5', 45, 19),
(35, 'Cleaning Items', '567575', 8, '1200', 9600, '0', '18', 2, 20),
(36, 'Cleaning Items', '567575', 8, '1200', 9600, '0', '18', 2, 20),
(37, 'Cleaning Items', '567575', 8, '1200', 9600, '0', '18', 2, 20),
(38, 'Cleaning Items', '567575', 8, '1200', 9500, '100', '18', 2, 20),
(39, 'Cleaning Items', '567575', 8, '1200', 9500, '100', '18', 2, 20),
(40, 'Hair products', '787899', 8, '1400', 11200, '0', '18', 2, 21),
(41, 'pencil', '898765', 10, '100', 990, '10', '18', 65, 22),
(42, 'pencil', '898765', 14, '100', 1390, '10', '18', 65, 22),
(43, 'book', '445566', 2, '3000', 5950, '50', '3', 67, 23);

-- --------------------------------------------------------

--
-- Table structure for table `app1_service`
--

CREATE TABLE `app1_service` (
  `serviceid` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `sac` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `categ` varchar(100) NOT NULL,
  `descr` varchar(100) NOT NULL,
  `saleprice` varchar(100) NOT NULL,
  `income` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `abatement` varchar(100) NOT NULL,
  `sertype` varchar(100) NOT NULL,
  `purchasedescr` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `expenseaccount` varchar(100) NOT NULL,
  `purchasetax` varchar(100) NOT NULL,
  `revcharge` varchar(100) NOT NULL,
  `presupplier` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_sign`
--

CREATE TABLE `app1_sign` (
  `sid` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `conformpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_stockadjust`
--

CREATE TABLE `app1_stockadjust` (
  `id` bigint(20) NOT NULL,
  `mode` varchar(100) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `account` varchar(100) DEFAULT NULL,
  `reason` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `attach` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `item1` varchar(100) DEFAULT NULL,
  `qty1` varchar(100) DEFAULT NULL,
  `qty_hand1` varchar(100) NOT NULL,
  `new_qty1` varchar(100) NOT NULL,
  `item2` varchar(100) DEFAULT NULL,
  `qty2` varchar(100) DEFAULT NULL,
  `qty_hand2` varchar(100) NOT NULL,
  `new_qty2` varchar(100) NOT NULL,
  `item3` varchar(100) DEFAULT NULL,
  `qty3` varchar(100) DEFAULT NULL,
  `qty_hand3` varchar(100) NOT NULL,
  `new_qty3` varchar(100) NOT NULL,
  `item4` varchar(100) DEFAULT NULL,
  `qty4` varchar(100) DEFAULT NULL,
  `qty_hand4` varchar(100) NOT NULL,
  `new_qty4` varchar(100) NOT NULL,
  `item5` varchar(100) DEFAULT NULL,
  `qty5` varchar(100) DEFAULT NULL,
  `qty_hand5` varchar(100) NOT NULL,
  `new_qty5` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_stockreason`
--

CREATE TABLE `app1_stockreason` (
  `reasonid` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_suplrcredit`
--

CREATE TABLE `app1_suplrcredit` (
  `suppliercreditid` int(11) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `mailaddr` varchar(100) NOT NULL,
  `paymdate` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `ccatego` varchar(100) NOT NULL,
  `cdescrip` varchar(100) NOT NULL,
  `cqty` varchar(100) NOT NULL,
  `cprice` varchar(100) NOT NULL,
  `ctotal` varchar(100) NOT NULL,
  `ccatego2` varchar(100) NOT NULL,
  `cdescrip2` varchar(100) NOT NULL,
  `cqty2` varchar(100) NOT NULL,
  `cprice2` varchar(100) NOT NULL,
  `ctotal2` varchar(100) NOT NULL,
  `ccatego3` varchar(100) NOT NULL,
  `cdescrip3` varchar(100) NOT NULL,
  `cqty3` varchar(100) NOT NULL,
  `cprice3` varchar(100) NOT NULL,
  `ctotal3` varchar(100) NOT NULL,
  `ccatego4` varchar(100) NOT NULL,
  `cdescrip4` varchar(100) NOT NULL,
  `cqty4` varchar(100) NOT NULL,
  `cprice4` varchar(100) NOT NULL,
  `ctotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `creditamount` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_supplier`
--

CREATE TABLE `app1_supplier` (
  `supplierid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `billingrate` varchar(100) NOT NULL,
  `terms` varchar(100) NOT NULL,
  `addterms` varchar(100) NOT NULL,
  `openingbalance` varchar(100) NOT NULL,
  `accountno` varchar(100) NOT NULL,
  `gsttype` varchar(100) NOT NULL,
  `gstin` varchar(100) NOT NULL,
  `taxregistrationno` varchar(100) NOT NULL,
  `effectivedate` varchar(100) NOT NULL,
  `defaultexpenceaccount` varchar(100) NOT NULL,
  `tds` varchar(200) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_timeact`
--

CREATE TABLE `app1_timeact` (
  `timeactid` int(11) NOT NULL,
  `timdate` varchar(10) NOT NULL,
  `timename` varchar(20) NOT NULL,
  `timecust` varchar(20) NOT NULL,
  `timecheck` varchar(10) NOT NULL,
  `timebill` varchar(20) NOT NULL,
  `timecheckk` varchar(10) NOT NULL,
  `timestart` varchar(6) NOT NULL,
  `timeend` varchar(6) NOT NULL,
  `tyme` varchar(6) NOT NULL,
  `timedes` varchar(50) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_timeactsale`
--

CREATE TABLE `app1_timeactsale` (
  `timeactsaleid` int(11) NOT NULL,
  `timdatesale` varchar(10) NOT NULL,
  `timenamesale` varchar(20) NOT NULL,
  `timecustsale` varchar(20) NOT NULL,
  `timechecksale` varchar(10) NOT NULL,
  `timebillsale` varchar(20) NOT NULL,
  `timecheckksale` varchar(10) NOT NULL,
  `timestartsale` varchar(6) NOT NULL,
  `timeendsale` varchar(6) NOT NULL,
  `tymesale` varchar(6) NOT NULL,
  `timedessale` varchar(50) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_transportation`
--

CREATE TABLE `app1_transportation` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_transportation`
--

INSERT INTO `app1_transportation` (`id`, `name`, `type`, `cid_id`) VALUES
(1, 'Car', 'Road', 2),
(2, 'Train', 'Rail', 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_unittable`
--

CREATE TABLE `app1_unittable` (
  `id` bigint(20) NOT NULL,
  `unit_symbol` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app1_vendor`
--

CREATE TABLE `app1_vendor` (
  `vendorid` int(11) NOT NULL,
  `title` varchar(10) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) NOT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `gsttype` varchar(100) DEFAULT NULL,
  `gstin` varchar(100) NOT NULL,
  `panno` varchar(100) DEFAULT NULL,
  `sourceofsupply` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `openingbalance` varchar(100) DEFAULT NULL,
  `opblnc_due` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `paymentterms` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `shipstreet` varchar(100) DEFAULT NULL,
  `shipcity` varchar(100) DEFAULT NULL,
  `shipstate` varchar(100) DEFAULT NULL,
  `shippincode` varchar(100) DEFAULT NULL,
  `shipcountry` varchar(100) DEFAULT NULL,
  `opening_balance_type` varchar(10) DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_vendor`
--

INSERT INTO `app1_vendor` (`vendorid`, `title`, `firstname`, `lastname`, `companyname`, `email`, `website`, `mobile`, `gsttype`, `gstin`, `panno`, `sourceofsupply`, `currency`, `openingbalance`, `opblnc_due`, `date`, `paymentterms`, `street`, `city`, `state`, `pincode`, `country`, `shipstreet`, `shipcity`, `shipstate`, `shippincode`, `shipcountry`, `opening_balance_type`, `attachment`, `is_active`, `cid_id`) VALUES
(1, 'Mrs', 'AJAY', 'PJ', 'AJ VENDOR', 'ajayjayathilakan0@gmail.com', '', '8943735902', 'unregistered Business', '', 'AAVG346554G', '[JK] Jammu and Kashmir', 'INR - Indian Rupee', '555', '0.0', '2023-10-11', '60', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', 'India', 'Debit', '', 1, 40),
(2, 'Mr', 'Nirmal', 'Raj', 'NR Fashion', 'nirmal@gmail.com', 'www.nirmal.in', '9995678976', 'Unregistered Business', '', 'APPCK7868G', '[KL] Kerala', 'INR - Indian Rupee', '9000', '9000', '2023-10-12', 'Due on Receipt', 'Nirmal Raj ,NR Fashion Zoon Kattakkada', 'Kollam', 'Kerala', '691456', 'India', 'Nirmal Raj ,NR Fashion Zoon Kattakkada', 'Kollam', 'Kerala', '691456', 'India', 'Debit', '', 1, 2),
(3, 'Mr', 'hari', 'b', 'abc', 'hari@gmail.com', 'www.abc.com ', '4567899999', 'unregistered Business', '', 'APJHU1234F', '[JH] Jharkhand', '1000000', '100000', '100000', '2023-10-16', '15', 'DFGHJ', 'DHJ', '[JH] Jharkhand', '123456', 'INDIA', 'DFGHJ', 'DHJ', '[JH] Jharkhand', '123456', 'INDIA', NULL, '', 1, 55),
(4, 'Ms', 'haripriya', 'b', 'tcs', 'haripriyabnair120@gmail.com', 'www.tcs.com ', '9188755408', 'Registered Business - Regular', '29ASDFR2345G7U8', 'APLKR1234F', '[HP] Himachal Predesh', 'INR - Indian Rupee', '1000000', '1000000', '2023-10-16', 'Net 60', 'sdfghjk', 'kollam', 'Kerala', '345676', 'india', 'sdfghjk', 'kollam', 'Kerala', '345676', 'india', 'Credit', '', 1, 55),
(5, 'Mr', 'Varsha', 'Raj', 'VR Fashion', 'varsha@gmail.com', 'www.varsha.in', '9995797898', 'unregistered Business', '', 'APPCKH6767H', '[KA] Karnataka', '', '9000', '9000', '2023-10-16', '0', 'VR Fashion ', 'Banglore', '[KA] Karnataka', '697867', 'india', 'VR Fashion ', 'Banglore', '[KA] Karnataka', '697867', 'india', NULL, '', 1, 2),
(6, 'Mr', 'Niranjana', 'Menon', 'NM Motors', 'niranjana12@gmail.com', 'www.niranjana.com', '9995786754', 'unregistered Business', '', 'APPCK6756H', '[KL] Kerala', 'INR - Indian Rupee', '800', '800', NULL, '0', 'NM Motors pvt  ltd', 'kollam', 'Kerala', '691567', 'india', 'NM Motors pvt  ltd', 'kollam', 'Kerala', '691567', 'india', NULL, '', 1, 2),
(7, 'Mr', 'hari', 'lal', 'dfghj', 'hari@gmail.com', 'www.xyz.com ', '9098777777', 'unregistered Business', '', 'ADRFT1234E', '[KA] Karnataka', '100000000', '100000', '100000', '2023-10-19', '15', 'SZDXFCGVBHJ', 'SDRFTGYHU', '[DL] Delhi', '123456', 'INDIA', 'SZDXFCGVBHJ', 'SDRFTGYHU', '[DL] Delhi', '123456', 'INDIA', NULL, '', 1, 58),
(8, 'Ms', 'kavya', 's', 'xyz', 'kavya@gmail.com', 'www.xyz.com ', '8987677899', 'unregistered Business', '', 'ASEDF1234G', '[HR] Haryana', '100000000', '10000', '10000', '2023-10-19', '15', 'Srtyukbvd', 'kollam', '[JK] Jammu and Kashmir', '123456', 'India ', 'Srtyukbvd', 'kollam', '[JK] Jammu and Kashmir', '123456', 'India ', NULL, '', 1, 59),
(9, 'Mr', 'anu', 's', 'sdfg', 'anu@gmail.com', 'www.abc.com ', '6788888776', 'unregistered Business', '', 'ASWDE3456S', '[HP] Himachal Predesh', '10000', '10000', '10000', '2023-10-19', '15', 'SDFGH', 'XDFG', '[LD] Lakshadweep', '123445', 'INDIAN ', 'SDFGH', 'XDFG', '[LD] Lakshadweep', '123445', 'INDIAN ', NULL, '', 1, 59),
(10, 'Mrs', 'ROSILINT', 'DAVIS', 'akhilakd5299@gmail.com', 'akhilakd5299@gmail.com', 'https://web.whatsapp.com/', '7025306368', 'Registered Business - Composition', '22AAAAAOOOOA1Z5', 'ABCTY1234D', '[KL] Kerala', 'INR - Indian Rupee', '960000', '959944.0', '2023-10-25', 'Net 60', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'Kerala', '680563', 'India', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'Kerala', '680563', 'India', 'Debit', '', 1, 61),
(11, 'Mr', 'akhil', 'DAVIS', 'akhilakd5299@gmail.com', 'akhilakd5299@gmail.com', 'www.altos.in', '7025306368', 'Registered Business - Composition', '32AADFC4545F1Z1', 'ABCTY1234D', '[KL] Kerala', 'INR - Indian Rupee', '56000', '56000', '2023-10-25', 'Net 60', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'Kerala', '680563', 'India', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'Kerala', '680563', 'India', 'Debit', '', 1, 61),
(12, 'Miss', 'Revathi', 'ty', 'RR Vendor', 'rev@gmail.com', '', '8943735902', 'Registered Business - Composition', '45DFFGT55GGT', 'ASS42DVD', '[AS] Assam', 'INR - Indian Rupee', '17890', '17890', '2023-10-31', 'Due on Receipt', 'OLD TRAFORD', 'Palakkad', 'Kerala', '678592', 'India', 'OLD TRAFORD', 'Palakkad', 'Kerala', '678592', 'India', 'Debit', '', 1, 40),
(13, 'Mr', 'Abin', ' Ces', 'ABS Vendor', 'abin@gmail.com', '', '8943735902', 'Special Economic Zone (SEZ)', '56AXCFFR33', 'MSNRF435', '[KL] Kerala', 'INR - Indian Rupee', '4670', '4670', '2023-10-31', 'Net 30', 'KONGAD', 'Palakkad', 'Kerala', '678592', 'India', 'KONGAD', 'Palakkad', 'Kerala', '678592', 'India', 'Credit', '', 1, 40),
(14, 'Mr', 'Haripriya', 'Nair', 'Hariz Fashion', 'hariz@gmail.com', 'www.hariz.in', '9995787876', 'unregistered Business', '', 'APPCH6757H', '[DL] Delhi', 'Indian Rupee', '9000', '9000', '2023-10-31', '0', 'Hariz Fashion Near RP Mall Kochi', 'kochi', '[DL] Delhi', '691567', 'india', 'Hariz Fashion Near RP Mall Kochi', 'kochi', '[DL] Delhi', '691567', 'india', NULL, '', 1, 2),
(15, 'Mrs', 'Rajeev', 'Raj', 'rajiv vendor', 'rajive@gmail.com', '', '63456454', 'Registered Business - Composition', '354SDFFHG5', 'CVB6GFDSD', '[JK] Jammu and Kashmir', 'INR - Indian Rupee', '7890', '7800.0', '2023-10-31', 'Due on Receipt', 'Kochi TUSKERS', 'Ernakulam', 'Kerala', '678592', 'India', 'Kochi TUSKERS', 'Ernakulam', 'Kerala', '678592', 'India', 'Credit', '', 1, 40),
(16, 'Mr', 'anurag', 's', 'asd', 'anurag@gmail.com', 'www.abc.com ', '1234567788', 'unregistered Business', '', 'APLOI1234A', '[HP] Himachal Predesh', '100000000', '10000', '10000', '2023-10-31', '15', 'drtfyghuj', 'kollam ', 'Kerala', '123456', 'india', 'drtfyghuj', 'kollam ', 'Kerala', '123456', 'india', NULL, '', 1, 64),
(17, 'Mr', 'hari', 'b', 'abc', 'hari@gmail.com', 'www.amazon.in ', '8909876555', 'unregistered Business', '', 'APLIK1234G', '[JH] Jharkhand', 'INR - Indian Rupee', '100000', '100000', '2023-11-01', 'Net 60', 'QWERTYUIO', 'kiwi ', 'Jharkhand', '123456', 'india', 'QWERTYUIO', 'kiwi ', 'Jharkhand', '123456', 'india', 'Debit', '', 1, 65),
(18, 'Ms', 'anu', 's', 'tcs', 'anu@gmail.com', 'www.tcs.in', '8987676565', 'unregistered Business', '', '', '[MH] Maharashtra', 'INR - Indian Rupee', '1000000', '1000000', '2023-11-01', 'Net 45', 'drftvgbyhnj', 'kollam', 'Kerala', '987876', 'india', 'drftvgbyhnj', 'kollam', 'Kerala', '987876', 'india', 'Debit', '', 1, 65),
(19, 'Mr', 'lalu', 'r', 'abc', 'lalu@gmail.com', 'www.tcs.in ', '3456789456', 'unregistered Business', '', 'ARGTY1234F', '[KL] Kerala', 'INR - Indian Rupee', '100000', '100000', '2023-11-01', 'Net 60', 'ZSDXCFVGBNM', 'kollam', 'Kerala', '123445', 'india', 'ZSDXCFVGBNM', 'kollam', 'Kerala', '123445', 'india', 'Credit', '', 1, 65),
(20, 'Mr', 'Raj', 's', 'abc', 'raj@gmail.com', 'www.abc.com ', '2989876778', 'unregistered Business', '', 'ADEFR1234E', '[LA] Ladakh', '1000000', '100000', '100000', '2023-11-01', '15', 'sdfcgvhbjn', 'kollam ', '[LA] Ladakh', '123445', 'India', 'sdfcgvhbjn', 'kollam ', '[LA] Ladakh', '123445', 'India', NULL, '', 1, 65),
(21, 'Mr', 'hari', 's', 'abc', 'hari@gmail.com', 'www.abc.com ', '5678987899', 'unregistered Business', '', 'ARGYH1234F', '[KA] Karnataka', 'INR - Indian Rupee', '1000000', '1000000', '2023-11-01', 'Net 60', 'sdfghjk', 'kollam', 'Himachal Predesh', '123455', 'india', 'sdfghjk', 'kollam', 'Himachal Predesh', '123455', 'india', 'Debit', '', 1, 66),
(22, 'Ms', 'priya', 'b', 'abc', 'priya@gmail.com', 'www.abc.com ', '6789098765', 'unregistered Business', '', 'ADEFT1234R', '[JH] Jharkhand', 'INR - Indian Rupee', '10000000', '10000000', '2023-11-01', 'Net 60', 'sdfgvhbjnkml,', 'kollam', 'Kerala', '234567', 'India', 'sdfgvhbjnkml,', 'kollam', 'Kerala', '234567', 'India', 'Credit', '', 1, 66);

-- --------------------------------------------------------

--
-- Table structure for table `app1_vendor_statment`
--

CREATE TABLE `app1_vendor_statment` (
  `id` bigint(20) NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `transactions` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `details2` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `payments` double DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL,
  `paymnt_id` int(11) DEFAULT NULL,
  `pbill_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app1_vendor_statment`
--

INSERT INTO `app1_vendor_statment` (`id`, `vendor`, `date`, `transactions`, `details`, `details2`, `amount`, `balance`, `payments`, `cid_id`, `paymnt_id`, `pbill_id`) VALUES
(1, 'Nirmal Raj', '2023-10-12', 'Billed', '1001', '1', NULL, 0, 12096, 2, NULL, 1),
(2, 'haripriya b', '2023-10-16', 'Billed', '1002', '123456', NULL, 0, 1234, 55, NULL, 2),
(3, 'Varsha Raj', '2023-10-16', 'Billed', '1003', '6', NULL, 0, 11088, 2, NULL, 3),
(6, 'Niranjana Menon', '2023-10-19', 'Billed', '1004', '3', NULL, 0, 7952, 2, NULL, 4),
(7, 'ROSILINT DAVIS', '2023-10-25', 'Payable', 'opt', NULL, NULL, NULL, 56, 61, 3, NULL),
(8, 'Rajeev Raj', '2023-10-31', 'Payable', '88', NULL, NULL, NULL, 80, 40, 4, NULL),
(9, 'Niranjana Menon', '2023-10-28', 'Billed', '1005', '8', NULL, 12000, 12600, 2, NULL, 5),
(10, 'Niranjana Menon', '2023-10-31', 'Billed', '1006', '2', NULL, 11760, 11760, 2, NULL, 6),
(11, 'Haripriya Nair', '2023-10-31', 'Billed', '1007', '7', NULL, 0, 10752, 2, NULL, 7),
(12, 'anu s', '2023-11-01', 'Billed', '1008', '12345678', NULL, 0, 1346, 65, NULL, 8),
(13, 'lalu r', '2023-11-01', 'Billed', '1009', '123456', NULL, 0, 1318, 65, NULL, 9),
(14, 'Rajeev Raj', '2023-10-28', 'Payable', '77', NULL, NULL, NULL, 7800, 40, 5, NULL),
(15, 'hari s', '2023-11-01', 'Billed', '1010', '12345', NULL, 0, 1323, 66, NULL, 10),
(16, 'Haripriya Nair', '2023-11-01', 'Billed', '1011', '4', NULL, 25200, 25200, 2, NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add company', 7, 'add_company'),
(26, 'Can change company', 7, 'change_company'),
(27, 'Can delete company', 7, 'delete_company'),
(28, 'Can view company', 7, 'view_company'),
(29, 'Can add sign', 8, 'add_sign'),
(30, 'Can change sign', 8, 'change_sign'),
(31, 'Can delete sign', 8, 'delete_sign'),
(32, 'Can view sign', 8, 'view_sign'),
(33, 'Can add accounts1', 9, 'add_accounts1'),
(34, 'Can change accounts1', 9, 'change_accounts1'),
(35, 'Can delete accounts1', 9, 'delete_accounts1'),
(36, 'Can view accounts1', 9, 'view_accounts1'),
(37, 'Can add accountype', 10, 'add_accountype'),
(38, 'Can change accountype', 10, 'change_accountype'),
(39, 'Can delete accountype', 10, 'delete_accountype'),
(40, 'Can view accountype', 10, 'view_accountype'),
(41, 'Can add addac', 11, 'add_addac'),
(42, 'Can change addac', 11, 'change_addac'),
(43, 'Can delete addac', 11, 'delete_addac'),
(44, 'Can view addac', 11, 'view_addac'),
(45, 'Can add bank account holder', 12, 'add_bankaccountholder'),
(46, 'Can change bank account holder', 12, 'change_bankaccountholder'),
(47, 'Can delete bank account holder', 12, 'delete_bankaccountholder'),
(48, 'Can view bank account holder', 12, 'view_bankaccountholder'),
(49, 'Can add challan', 13, 'add_challan'),
(50, 'Can change challan', 13, 'change_challan'),
(51, 'Can delete challan', 13, 'delete_challan'),
(52, 'Can view challan', 13, 'view_challan'),
(53, 'Can add estimate', 14, 'add_estimate'),
(54, 'Can change estimate', 14, 'change_estimate'),
(55, 'Can delete estimate', 14, 'delete_estimate'),
(56, 'Can view estimate', 14, 'view_estimate'),
(57, 'Can add expenseaccount', 15, 'add_expenseaccount'),
(58, 'Can change expenseaccount', 15, 'change_expenseaccount'),
(59, 'Can delete expenseaccount', 15, 'delete_expenseaccount'),
(60, 'Can view expenseaccount', 15, 'view_expenseaccount'),
(61, 'Can add invoice', 16, 'add_invoice'),
(62, 'Can change invoice', 16, 'change_invoice'),
(63, 'Can delete invoice', 16, 'delete_invoice'),
(64, 'Can view invoice', 16, 'view_invoice'),
(65, 'Can add invoice_item', 17, 'add_invoice_item'),
(66, 'Can change invoice_item', 17, 'change_invoice_item'),
(67, 'Can delete invoice_item', 17, 'delete_invoice_item'),
(68, 'Can view invoice_item', 17, 'view_invoice_item'),
(69, 'Can add item model', 18, 'add_itemmodel'),
(70, 'Can change item model', 18, 'change_itemmodel'),
(71, 'Can delete item model', 18, 'delete_itemmodel'),
(72, 'Can view item model', 18, 'view_itemmodel'),
(73, 'Can add mjournal', 19, 'add_mjournal'),
(74, 'Can change mjournal', 19, 'change_mjournal'),
(75, 'Can delete mjournal', 19, 'delete_mjournal'),
(76, 'Can view mjournal', 19, 'view_mjournal'),
(77, 'Can add payment', 20, 'add_payment'),
(78, 'Can change payment', 20, 'change_payment'),
(79, 'Can delete payment', 20, 'delete_payment'),
(80, 'Can view payment', 20, 'view_payment'),
(81, 'Can add pricelist', 21, 'add_pricelist'),
(82, 'Can change pricelist', 21, 'change_pricelist'),
(83, 'Can delete pricelist', 21, 'delete_pricelist'),
(84, 'Can view pricelist', 21, 'view_pricelist'),
(85, 'Can add product model', 22, 'add_productmodel'),
(86, 'Can change product model', 22, 'change_productmodel'),
(87, 'Can delete product model', 22, 'delete_productmodel'),
(88, 'Can view product model', 22, 'view_productmodel'),
(89, 'Can add purchasebill', 23, 'add_purchasebill'),
(90, 'Can change purchasebill', 23, 'change_purchasebill'),
(91, 'Can delete purchasebill', 23, 'delete_purchasebill'),
(92, 'Can view purchasebill', 23, 'view_purchasebill'),
(93, 'Can add purchasedebit', 24, 'add_purchasedebit'),
(94, 'Can change purchasedebit', 24, 'change_purchasedebit'),
(95, 'Can delete purchasedebit', 24, 'delete_purchasedebit'),
(96, 'Can view purchasedebit', 24, 'view_purchasedebit'),
(97, 'Can add purchaseorder', 25, 'add_purchaseorder'),
(98, 'Can change purchaseorder', 25, 'change_purchaseorder'),
(99, 'Can delete purchaseorder', 25, 'delete_purchaseorder'),
(100, 'Can view purchaseorder', 25, 'view_purchaseorder'),
(101, 'Can add purchasepayment', 26, 'add_purchasepayment'),
(102, 'Can change purchasepayment', 26, 'change_purchasepayment'),
(103, 'Can delete purchasepayment', 26, 'delete_purchasepayment'),
(104, 'Can view purchasepayment', 26, 'view_purchasepayment'),
(105, 'Can add recinvoice', 27, 'add_recinvoice'),
(106, 'Can change recinvoice', 27, 'change_recinvoice'),
(107, 'Can delete recinvoice', 27, 'delete_recinvoice'),
(108, 'Can view recinvoice', 27, 'view_recinvoice'),
(109, 'Can add recurring_bill', 28, 'add_recurring_bill'),
(110, 'Can change recurring_bill', 28, 'change_recurring_bill'),
(111, 'Can delete recurring_bill', 28, 'delete_recurring_bill'),
(112, 'Can view recurring_bill', 28, 'view_recurring_bill'),
(113, 'Can add salescreditnote', 29, 'add_salescreditnote'),
(114, 'Can change salescreditnote', 29, 'change_salescreditnote'),
(115, 'Can delete salescreditnote', 29, 'delete_salescreditnote'),
(116, 'Can view salescreditnote', 29, 'view_salescreditnote'),
(117, 'Can add vendor_statment', 30, 'add_vendor_statment'),
(118, 'Can change vendor_statment', 30, 'change_vendor_statment'),
(119, 'Can delete vendor_statment', 30, 'delete_vendor_statment'),
(120, 'Can view vendor_statment', 30, 'view_vendor_statment'),
(121, 'Can add vendor', 31, 'add_vendor'),
(122, 'Can change vendor', 31, 'change_vendor'),
(123, 'Can delete vendor', 31, 'delete_vendor'),
(124, 'Can view vendor', 31, 'view_vendor'),
(125, 'Can add unittable', 32, 'add_unittable'),
(126, 'Can change unittable', 32, 'change_unittable'),
(127, 'Can delete unittable', 32, 'delete_unittable'),
(128, 'Can view unittable', 32, 'view_unittable'),
(129, 'Can add timeactsale', 33, 'add_timeactsale'),
(130, 'Can change timeactsale', 33, 'change_timeactsale'),
(131, 'Can delete timeactsale', 33, 'delete_timeactsale'),
(132, 'Can view timeactsale', 33, 'view_timeactsale'),
(133, 'Can add timeact', 34, 'add_timeact'),
(134, 'Can change timeact', 34, 'change_timeact'),
(135, 'Can delete timeact', 34, 'delete_timeact'),
(136, 'Can view timeact', 34, 'view_timeact'),
(137, 'Can add supplier', 35, 'add_supplier'),
(138, 'Can change supplier', 35, 'change_supplier'),
(139, 'Can delete supplier', 35, 'delete_supplier'),
(140, 'Can view supplier', 35, 'view_supplier'),
(141, 'Can add suplrcredit', 36, 'add_suplrcredit'),
(142, 'Can change suplrcredit', 36, 'change_suplrcredit'),
(143, 'Can delete suplrcredit', 36, 'delete_suplrcredit'),
(144, 'Can view suplrcredit', 36, 'view_suplrcredit'),
(145, 'Can add stockreason', 37, 'add_stockreason'),
(146, 'Can change stockreason', 37, 'change_stockreason'),
(147, 'Can delete stockreason', 37, 'delete_stockreason'),
(148, 'Can view stockreason', 37, 'view_stockreason'),
(149, 'Can add stockadjust', 38, 'add_stockadjust'),
(150, 'Can change stockadjust', 38, 'change_stockadjust'),
(151, 'Can delete stockadjust', 38, 'delete_stockadjust'),
(152, 'Can view stockadjust', 38, 'view_stockadjust'),
(153, 'Can add service', 39, 'add_service'),
(154, 'Can change service', 39, 'change_service'),
(155, 'Can delete service', 39, 'delete_service'),
(156, 'Can view service', 39, 'view_service'),
(157, 'Can add salesrecpts', 40, 'add_salesrecpts'),
(158, 'Can change salesrecpts', 40, 'change_salesrecpts'),
(159, 'Can delete salesrecpts', 40, 'delete_salesrecpts'),
(160, 'Can view salesrecpts', 40, 'view_salesrecpts'),
(161, 'Can add salesorder', 41, 'add_salesorder'),
(162, 'Can change salesorder', 41, 'change_salesorder'),
(163, 'Can delete salesorder', 41, 'delete_salesorder'),
(164, 'Can view salesorder', 41, 'view_salesorder'),
(165, 'Can add salescreditnote1', 42, 'add_salescreditnote1'),
(166, 'Can change salescreditnote1', 42, 'change_salescreditnote1'),
(167, 'Can delete salescreditnote1', 42, 'delete_salescreditnote1'),
(168, 'Can view salescreditnote1', 42, 'view_salescreditnote1'),
(169, 'Can add sales_item', 43, 'add_sales_item'),
(170, 'Can change sales_item', 43, 'change_sales_item'),
(171, 'Can delete sales_item', 43, 'delete_sales_item'),
(172, 'Can view sales_item', 43, 'view_sales_item'),
(173, 'Can add retainer invoices', 44, 'add_retainerinvoices'),
(174, 'Can change retainer invoices', 44, 'change_retainerinvoices'),
(175, 'Can delete retainer invoices', 44, 'delete_retainerinvoices'),
(176, 'Can view retainer invoices', 44, 'view_retainerinvoices'),
(177, 'Can add retainer invoice items', 45, 'add_retainerinvoiceitems'),
(178, 'Can change retainer invoice items', 45, 'change_retainerinvoiceitems'),
(179, 'Can delete retainer invoice items', 45, 'delete_retainerinvoiceitems'),
(180, 'Can view retainer invoice items', 45, 'view_retainerinvoiceitems'),
(181, 'Can add repeatevery', 46, 'add_repeatevery'),
(182, 'Can change repeatevery', 46, 'change_repeatevery'),
(183, 'Can delete repeatevery', 46, 'delete_repeatevery'),
(184, 'Can view repeatevery', 46, 'view_repeatevery'),
(185, 'Can add recurringbill_item', 47, 'add_recurringbill_item'),
(186, 'Can change recurringbill_item', 47, 'change_recurringbill_item'),
(187, 'Can delete recurringbill_item', 47, 'delete_recurringbill_item'),
(188, 'Can view recurringbill_item', 47, 'view_recurringbill_item'),
(189, 'Can add recurring_expense', 48, 'add_recurring_expense'),
(190, 'Can change recurring_expense', 48, 'change_recurring_expense'),
(191, 'Can delete recurring_expense', 48, 'delete_recurring_expense'),
(192, 'Can view recurring_expense', 48, 'view_recurring_expense'),
(193, 'Can add recordpay', 49, 'add_recordpay'),
(194, 'Can change recordpay', 49, 'change_recordpay'),
(195, 'Can delete recordpay', 49, 'delete_recordpay'),
(196, 'Can view recordpay', 49, 'view_recordpay'),
(197, 'Can add recon1', 50, 'add_recon1'),
(198, 'Can change recon1', 50, 'change_recon1'),
(199, 'Can delete recon1', 50, 'delete_recon1'),
(200, 'Can view recon1', 50, 'view_recon1'),
(201, 'Can add recinvoice_item', 51, 'add_recinvoice_item'),
(202, 'Can change recinvoice_item', 51, 'change_recinvoice_item'),
(203, 'Can delete recinvoice_item', 51, 'delete_recinvoice_item'),
(204, 'Can view recinvoice_item', 51, 'view_recinvoice_item'),
(205, 'Can add purchasepayment1', 52, 'add_purchasepayment1'),
(206, 'Can change purchasepayment1', 52, 'change_purchasepayment1'),
(207, 'Can delete purchasepayment1', 52, 'delete_purchasepayment1'),
(208, 'Can view purchasepayment1', 52, 'view_purchasepayment1'),
(209, 'Can add purchaseorder_item', 53, 'add_purchaseorder_item'),
(210, 'Can change purchaseorder_item', 53, 'change_purchaseorder_item'),
(211, 'Can delete purchaseorder_item', 53, 'delete_purchaseorder_item'),
(212, 'Can view purchaseorder_item', 53, 'view_purchaseorder_item'),
(213, 'Can add purchasedebit1', 54, 'add_purchasedebit1'),
(214, 'Can change purchasedebit1', 54, 'change_purchasedebit1'),
(215, 'Can delete purchasedebit1', 54, 'delete_purchasedebit1'),
(216, 'Can view purchasedebit1', 54, 'view_purchasedebit1'),
(217, 'Can add purchasebill_item', 55, 'add_purchasebill_item'),
(218, 'Can change purchasebill_item', 55, 'change_purchasebill_item'),
(219, 'Can delete purchasebill_item', 55, 'delete_purchasebill_item'),
(220, 'Can view purchasebill_item', 55, 'view_purchasebill_item'),
(221, 'Can add purchase_expense', 56, 'add_purchase_expense'),
(222, 'Can change purchase_expense', 56, 'change_purchase_expense'),
(223, 'Can delete purchase_expense', 56, 'delete_purchase_expense'),
(224, 'Can view purchase_expense', 56, 'view_purchase_expense'),
(225, 'Can add profit_loss', 57, 'add_profit_loss'),
(226, 'Can change profit_loss', 57, 'change_profit_loss'),
(227, 'Can delete profit_loss', 57, 'delete_profit_loss'),
(228, 'Can view profit_loss', 57, 'view_profit_loss'),
(229, 'Can add pricelist_individual', 58, 'add_pricelist_individual'),
(230, 'Can change pricelist_individual', 58, 'change_pricelist_individual'),
(231, 'Can delete pricelist_individual', 58, 'delete_pricelist_individual'),
(232, 'Can view pricelist_individual', 58, 'view_pricelist_individual'),
(233, 'Can add payslip', 59, 'add_payslip'),
(234, 'Can change payslip', 59, 'change_payslip'),
(235, 'Can delete payslip', 59, 'delete_payslip'),
(236, 'Can view payslip', 59, 'view_payslip'),
(237, 'Can add payrollemployee', 60, 'add_payrollemployee'),
(238, 'Can change payrollemployee', 60, 'change_payrollemployee'),
(239, 'Can delete payrollemployee', 60, 'delete_payrollemployee'),
(240, 'Can view payrollemployee', 60, 'view_payrollemployee'),
(241, 'Can add payrollcomments', 61, 'add_payrollcomments'),
(242, 'Can change payrollcomments', 61, 'change_payrollcomments'),
(243, 'Can delete payrollcomments', 61, 'delete_payrollcomments'),
(244, 'Can view payrollcomments', 61, 'view_payrollcomments'),
(245, 'Can add paymentmethod', 62, 'add_paymentmethod'),
(246, 'Can change paymentmethod', 62, 'change_paymentmethod'),
(247, 'Can delete paymentmethod', 62, 'delete_paymentmethod'),
(248, 'Can view paymentmethod', 62, 'view_paymentmethod'),
(249, 'Can add paymentitems', 63, 'add_paymentitems'),
(250, 'Can change paymentitems', 63, 'change_paymentitems'),
(251, 'Can delete paymentitems', 63, 'delete_paymentitems'),
(252, 'Can view paymentitems', 63, 'view_paymentitems'),
(253, 'Can add paydowncreditcard', 64, 'add_paydowncreditcard'),
(254, 'Can change paydowncreditcard', 64, 'change_paydowncreditcard'),
(255, 'Can delete paydowncreditcard', 64, 'delete_paydowncreditcard'),
(256, 'Can view paydowncreditcard', 64, 'view_paydowncreditcard'),
(257, 'Can add otp_password', 65, 'add_otp_password'),
(258, 'Can change otp_password', 65, 'change_otp_password'),
(259, 'Can delete otp_password', 65, 'delete_otp_password'),
(260, 'Can view otp_password', 65, 'view_otp_password'),
(261, 'Can add opening balance', 66, 'add_openingbalance'),
(262, 'Can change opening balance', 66, 'change_openingbalance'),
(263, 'Can delete opening balance', 66, 'delete_openingbalance'),
(264, 'Can view opening balance', 66, 'view_openingbalance'),
(265, 'Can add noninventory', 67, 'add_noninventory'),
(266, 'Can change noninventory', 67, 'change_noninventory'),
(267, 'Can delete noninventory', 67, 'delete_noninventory'),
(268, 'Can view noninventory', 67, 'view_noninventory'),
(269, 'Can add mjournal1', 68, 'add_mjournal1'),
(270, 'Can change mjournal1', 68, 'change_mjournal1'),
(271, 'Can delete mjournal1', 68, 'delete_mjournal1'),
(272, 'Can view mjournal1', 68, 'view_mjournal1'),
(273, 'Can add mailing address', 69, 'add_mailingaddress'),
(274, 'Can change mailing address', 69, 'change_mailingaddress'),
(275, 'Can delete mailing address', 69, 'delete_mailingaddress'),
(276, 'Can view mailing address', 69, 'view_mailingaddress'),
(277, 'Can add itemtable', 70, 'add_itemtable'),
(278, 'Can change itemtable', 70, 'change_itemtable'),
(279, 'Can delete itemtable', 70, 'delete_itemtable'),
(280, 'Can view itemtable', 70, 'view_itemtable'),
(281, 'Can add itemstock', 71, 'add_itemstock'),
(282, 'Can change itemstock', 71, 'change_itemstock'),
(283, 'Can delete itemstock', 71, 'delete_itemstock'),
(284, 'Can view itemstock', 71, 'view_itemstock'),
(285, 'Can add item_stock', 72, 'add_item_stock'),
(286, 'Can change item_stock', 72, 'change_item_stock'),
(287, 'Can delete item_stock', 72, 'delete_item_stock'),
(288, 'Can view item_stock', 72, 'view_item_stock'),
(289, 'Can add inventory', 73, 'add_inventory'),
(290, 'Can change inventory', 73, 'change_inventory'),
(291, 'Can delete inventory', 73, 'delete_inventory'),
(292, 'Can view inventory', 73, 'view_inventory'),
(293, 'Can add incomeaccount', 74, 'add_incomeaccount'),
(294, 'Can change incomeaccount', 74, 'change_incomeaccount'),
(295, 'Can delete incomeaccount', 74, 'delete_incomeaccount'),
(296, 'Can view incomeaccount', 74, 'view_incomeaccount'),
(297, 'Can add expences', 75, 'add_expences'),
(298, 'Can change expences', 75, 'change_expences'),
(299, 'Can delete expences', 75, 'delete_expences'),
(300, 'Can view expences', 75, 'view_expences'),
(301, 'Can add ewayinv', 76, 'add_ewayinv'),
(302, 'Can change ewayinv', 76, 'change_ewayinv'),
(303, 'Can delete ewayinv', 76, 'delete_ewayinv'),
(304, 'Can view ewayinv', 76, 'view_ewayinv'),
(305, 'Can add etransporter', 77, 'add_etransporter'),
(306, 'Can change etransporter', 77, 'change_etransporter'),
(307, 'Can delete etransporter', 77, 'delete_etransporter'),
(308, 'Can view etransporter', 77, 'view_etransporter'),
(309, 'Can add estimate_item', 78, 'add_estimate_item'),
(310, 'Can change estimate_item', 78, 'change_estimate_item'),
(311, 'Can delete estimate_item', 78, 'delete_estimate_item'),
(312, 'Can view estimate_item', 78, 'view_estimate_item'),
(313, 'Can add employee loan', 79, 'add_employeeloan'),
(314, 'Can change employee loan', 79, 'change_employeeloan'),
(315, 'Can delete employee loan', 79, 'delete_employeeloan'),
(316, 'Can view employee loan', 79, 'view_employeeloan'),
(317, 'Can add employee', 80, 'add_employee'),
(318, 'Can change employee', 80, 'change_employee'),
(319, 'Can delete employee', 80, 'delete_employee'),
(320, 'Can view employee', 80, 'view_employee'),
(321, 'Can add delayedcharge', 81, 'add_delayedcharge'),
(322, 'Can change delayedcharge', 81, 'change_delayedcharge'),
(323, 'Can delete delayedcharge', 81, 'delete_delayedcharge'),
(324, 'Can view delayedcharge', 81, 'view_delayedcharge'),
(325, 'Can add customize', 82, 'add_customize'),
(326, 'Can change customize', 82, 'change_customize'),
(327, 'Can delete customize', 82, 'delete_customize'),
(328, 'Can view customize', 82, 'view_customize'),
(329, 'Can add customer', 83, 'add_customer'),
(330, 'Can change customer', 83, 'change_customer'),
(331, 'Can delete customer', 83, 'delete_customer'),
(332, 'Can view customer', 83, 'view_customer'),
(333, 'Can add cust_statment', 84, 'add_cust_statment'),
(334, 'Can change cust_statment', 84, 'change_cust_statment'),
(335, 'Can delete cust_statment', 84, 'delete_cust_statment'),
(336, 'Can view cust_statment', 84, 'view_cust_statment'),
(337, 'Can add currencies', 85, 'add_currencies'),
(338, 'Can change currencies', 85, 'change_currencies'),
(339, 'Can delete currencies', 85, 'delete_currencies'),
(340, 'Can view currencies', 85, 'view_currencies'),
(341, 'Can add creditperiod', 86, 'add_creditperiod'),
(342, 'Can change creditperiod', 86, 'change_creditperiod'),
(343, 'Can delete creditperiod', 86, 'delete_creditperiod'),
(344, 'Can view creditperiod', 86, 'view_creditperiod'),
(345, 'Can add credit', 87, 'add_credit'),
(346, 'Can change credit', 87, 'change_credit'),
(347, 'Can delete credit', 87, 'delete_credit'),
(348, 'Can view credit', 87, 'view_credit'),
(349, 'Can add cheqs', 88, 'add_cheqs'),
(350, 'Can change cheqs', 88, 'change_cheqs'),
(351, 'Can delete cheqs', 88, 'delete_cheqs'),
(352, 'Can view cheqs', 88, 'view_cheqs'),
(353, 'Can add challanitem', 89, 'add_challanitem'),
(354, 'Can change challanitem', 89, 'change_challanitem'),
(355, 'Can delete challanitem', 89, 'delete_challanitem'),
(356, 'Can view challanitem', 89, 'view_challanitem'),
(357, 'Can add bundle', 90, 'add_bundle'),
(358, 'Can change bundle', 90, 'change_bundle'),
(359, 'Can delete bundle', 90, 'delete_bundle'),
(360, 'Can view bundle', 90, 'view_bundle'),
(361, 'Can add bills', 91, 'add_bills'),
(362, 'Can change bills', 91, 'change_bills'),
(363, 'Can delete bills', 91, 'delete_bills'),
(364, 'Can view bills', 91, 'view_bills'),
(365, 'Can add bankstatement', 92, 'add_bankstatement'),
(366, 'Can change bankstatement', 92, 'change_bankstatement'),
(367, 'Can delete bankstatement', 92, 'delete_bankstatement'),
(368, 'Can view bankstatement', 92, 'view_bankstatement'),
(369, 'Can add bankings_g', 93, 'add_bankings_g'),
(370, 'Can change bankings_g', 93, 'change_bankings_g'),
(371, 'Can delete bankings_g', 93, 'delete_bankings_g'),
(372, 'Can view bankings_g', 93, 'view_bankings_g'),
(373, 'Can add banking details', 94, 'add_bankingdetails'),
(374, 'Can change banking details', 94, 'change_bankingdetails'),
(375, 'Can delete banking details', 94, 'delete_bankingdetails'),
(376, 'Can view banking details', 94, 'view_bankingdetails'),
(377, 'Can add banking_payment', 95, 'add_banking_payment'),
(378, 'Can change banking_payment', 95, 'change_banking_payment'),
(379, 'Can delete banking_payment', 95, 'delete_banking_payment'),
(380, 'Can view banking_payment', 95, 'view_banking_payment'),
(381, 'Can add bank configuration', 96, 'add_bankconfiguration'),
(382, 'Can change bank configuration', 96, 'change_bankconfiguration'),
(383, 'Can delete bank configuration', 96, 'delete_bankconfiguration'),
(384, 'Can view bank configuration', 96, 'view_bankconfiguration'),
(385, 'Can add bank account', 97, 'add_bankaccount'),
(386, 'Can change bank account', 97, 'change_bankaccount'),
(387, 'Can delete bank account', 97, 'delete_bankaccount'),
(388, 'Can view bank account', 97, 'view_bankaccount'),
(389, 'Can add bank_transactions', 98, 'add_bank_transactions'),
(390, 'Can change bank_transactions', 98, 'change_bank_transactions'),
(391, 'Can delete bank_transactions', 98, 'delete_bank_transactions'),
(392, 'Can view bank_transactions', 98, 'view_bank_transactions'),
(393, 'Can add balance_sheet', 99, 'add_balance_sheet'),
(394, 'Can change balance_sheet', 99, 'change_balance_sheet'),
(395, 'Can delete balance_sheet', 99, 'delete_balance_sheet'),
(396, 'Can view balance_sheet', 99, 'view_balance_sheet'),
(397, 'Can add advancepayment', 100, 'add_advancepayment'),
(398, 'Can change advancepayment', 100, 'change_advancepayment'),
(399, 'Can delete advancepayment', 100, 'delete_advancepayment'),
(400, 'Can view advancepayment', 100, 'view_advancepayment'),
(401, 'Can add addtax1', 101, 'add_addtax1'),
(402, 'Can change addtax1', 101, 'change_addtax1'),
(403, 'Can delete addtax1', 101, 'delete_addtax1'),
(404, 'Can view addtax1', 101, 'view_addtax1'),
(405, 'Can add accounts', 102, 'add_accounts'),
(406, 'Can change accounts', 102, 'change_accounts'),
(407, 'Can delete accounts', 102, 'delete_accounts'),
(408, 'Can view accounts', 102, 'view_accounts'),
(409, 'Can add e_waybill_item', 103, 'add_e_waybill_item'),
(410, 'Can change e_waybill_item', 103, 'change_e_waybill_item'),
(411, 'Can delete e_waybill_item', 103, 'delete_e_waybill_item'),
(412, 'Can view e_waybill_item', 103, 'view_e_waybill_item'),
(413, 'Can add e_waybills', 104, 'add_e_waybills'),
(414, 'Can change e_waybills', 104, 'change_e_waybills'),
(415, 'Can delete e_waybills', 104, 'delete_e_waybills'),
(416, 'Can view e_waybills', 104, 'view_e_waybills'),
(417, 'Can add transportation', 105, 'add_transportation'),
(418, 'Can change transportation', 105, 'change_transportation'),
(419, 'Can delete transportation', 105, 'delete_transportation'),
(420, 'Can view transportation', 105, 'view_transportation'),
(421, 'Can add debitnotecomments', 106, 'add_debitnotecomments'),
(422, 'Can change debitnotecomments', 106, 'change_debitnotecomments'),
(423, 'Can delete debitnotecomments', 106, 'delete_debitnotecomments'),
(424, 'Can view debitnotecomments', 106, 'view_debitnotecomments'),
(425, 'Can add holidays', 107, 'add_holidays'),
(426, 'Can change holidays', 107, 'change_holidays'),
(427, 'Can delete holidays', 107, 'delete_holidays'),
(428, 'Can view holidays', 107, 'view_holidays'),
(429, 'Can add attendance', 108, 'add_attendance'),
(430, 'Can change attendance', 108, 'change_attendance'),
(431, 'Can delete attendance', 108, 'delete_attendance'),
(432, 'Can view attendance', 108, 'view_attendance'),
(433, 'Can add man_ journal_comment', 109, 'add_man_journal_comment'),
(434, 'Can change man_ journal_comment', 109, 'change_man_journal_comment'),
(435, 'Can delete man_ journal_comment', 109, 'delete_man_journal_comment'),
(436, 'Can view man_ journal_comment', 109, 'view_man_journal_comment'),
(437, 'Can add loan_account', 110, 'add_loan_account'),
(438, 'Can change loan_account', 110, 'change_loan_account'),
(439, 'Can delete loan_account', 110, 'delete_loan_account'),
(440, 'Can view loan_account', 110, 'view_loan_account'),
(441, 'Can add loan_transaction', 111, 'add_loan_transaction'),
(442, 'Can change loan_transaction', 111, 'change_loan_transaction'),
(443, 'Can delete loan_transaction', 111, 'delete_loan_transaction'),
(444, 'Can view loan_transaction', 111, 'view_loan_transaction'),
(445, 'Can add repeatevry', 112, 'add_repeatevry'),
(446, 'Can change repeatevry', 112, 'change_repeatevry'),
(447, 'Can delete repeatevry', 112, 'delete_repeatevry'),
(448, 'Can view repeatevry', 112, 'view_repeatevry'),
(449, 'Can add recterm', 113, 'add_recterm'),
(450, 'Can change recterm', 113, 'change_recterm'),
(451, 'Can delete recterm', 113, 'delete_recterm'),
(452, 'Can view recterm', 113, 'view_recterm'),
(453, 'Can add payment terms', 114, 'add_paymentterms'),
(454, 'Can change payment terms', 114, 'change_paymentterms'),
(455, 'Can delete payment terms', 114, 'delete_paymentterms'),
(456, 'Can view payment terms', 114, 'view_paymentterms'),
(457, 'Can add loan_duration', 115, 'add_loan_duration'),
(458, 'Can change loan_duration', 115, 'change_loan_duration'),
(459, 'Can delete loan_duration', 115, 'delete_loan_duration'),
(460, 'Can view loan_duration', 115, 'view_loan_duration'),
(461, 'Can add employee_loan_tran', 116, 'add_employee_loan_tran'),
(462, 'Can change employee_loan_tran', 116, 'change_employee_loan_tran'),
(463, 'Can delete employee_loan_tran', 116, 'delete_employee_loan_tran'),
(464, 'Can view employee_loan_tran', 116, 'view_employee_loan_tran'),
(465, 'Can add paymnt_made_comments', 117, 'add_paymnt_made_comments'),
(466, 'Can change paymnt_made_comments', 117, 'change_paymnt_made_comments'),
(467, 'Can delete paymnt_made_comments', 117, 'delete_paymnt_made_comments'),
(468, 'Can view paymnt_made_comments', 117, 'view_paymnt_made_comments');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$3JbDZw2gYIwx0J1BbqWesW$n+BkYuUEezr/xjECjw33xFSozmCzg4TFojpoIfcv1Jk=', '2023-10-10 17:23:07.056763', 0, 'Amalcs0006@', 'Amalcs0006@', 'Amalcs0006@', 'Amalcs0006@gmail.com', 0, 1, '2023-10-10 04:27:02.670109'),
(2, 'pbkdf2_sha256$260000$BbgzPfwefGPaK8PUHxVxUE$t7QYbYUJvwpc3JgwGDZADjA9rAMjkxTne588k8J3has=', '2023-11-01 05:28:00.758162', 0, 'Sanju123', 'Sanju', 'Paul', 'amalcs0006@gmail.com', 0, 1, '2022-11-14 10:39:24.895955'),
(3, 'pbkdf2_sha256$260000$R2AgPhuoWviYhV3f5omWDt$ckb2XR1T1djXKzEEM2s6Fdtk9E6rzrYg98IA5Prj6hg=', '2022-12-14 07:58:19.587528', 0, 'sruthys', 'sruthy', 's', 'sruthy@gmail.com', 0, 1, '2022-11-15 12:48:48.239872'),
(4, 'pbkdf2_sha256$260000$dpvAPzDmUctegzZ4kQhFAH$1apeHKw7pOEahDAYL4TvtfN/8KcR6LeqFL78Z2SYumQ=', '2022-12-02 09:33:09.062652', 0, 'mallika', 'mallika', 'k', 'mallika@gmail.com', 0, 1, '2022-11-15 13:09:50.934977'),
(5, 'pbkdf2_sha256$260000$avkjzQFeW5jfaXSlbDKrSp$Yb0TCYed7bWFHtf/2eAHxln/7PIHFE7d7pQvCNp6zOU=', '2022-12-11 13:31:33.224046', 0, 'salu', 'salu', 'baiju', 'salubaiju259@gmail.com', 0, 1, '2022-11-15 14:33:08.881942'),
(6, 'pbkdf2_sha256$260000$obJgUAdOPbNhnotSocWs07$iDpWTJkfn1ri3Zx0KmCZba+jsMq0G86gv6ozPXHILiQ=', '2023-06-16 07:24:54.798310', 0, 'saiju2000', 'Saiju', 'Sunny', 'saijusunny1301@gmail.com', 0, 1, '2022-11-18 04:11:37.810311'),
(7, 'pbkdf2_sha256$260000$ponNH5SS5iwRT1hLpTqtet$5XxwXVaKpjHMZBhVbjUAVhU1FzZ0C0aGeGTBHtHQsJQ=', '2022-11-21 14:44:02.451128', 0, 'dwayne', 'dwayne', 'johnson', 'sarunkumarvv1729@yandex.com', 0, 1, '2022-11-21 14:40:11.720432'),
(8, 'pbkdf2_sha256$260000$84a19pMbtlbudAC0XwnpHL$CeRl6rB78RSvPSNOqiMT5Jyp3kocs6Ry239xvA4xG48=', '2023-03-07 09:03:56.297125', 0, 'anusree', 'anusree', 'devi', 'anu@gmail.com', 0, 1, '2022-11-21 18:11:23.395072'),
(9, 'pbkdf2_sha256$260000$1oBgTcwFBtDKxq4gqye9Cg$ld7hfaXELesCWvrWctz01glK+rEFtE1QXriLMebQKBQ=', NULL, 0, 'emeric', 'Nancy', 'Kochouseph', 'nancykochouseph94@gmail.com', 0, 1, '2022-11-22 04:53:35.524350'),
(10, 'pbkdf2_sha256$260000$NWxzD1HLavWPVr3zV9pFTf$Np12pe1umw4pdr5mr1kbAwglX0m7FlEbMHOfK6JCIsA=', '2023-10-27 11:29:15.878893', 0, 'kausalliya', 'kavi', 'r', 'srirooparaju@gmail.com', 0, 1, '2022-11-22 07:12:34.020832'),
(11, 'pbkdf2_sha256$260000$vKLvIqxuCpGBWS35L4Gmhb$h42lSDlJ/KpAdoCLcgbqzorZrKh6gPmFSM4a7ZouaxM=', '2022-12-13 06:22:56.300157', 0, 'gokul', 'Gokul', 'Biju', 'gokulbiju21@gmail.com', 0, 1, '2022-11-22 13:07:57.549820'),
(12, 'pbkdf2_sha256$260000$885Ym019gDfKegdRmOE0rq$dAGSvEbvzyaLr+Z9oJxW4KOCvmVrwvTSpDU3aLxzrpA=', '2022-12-02 08:35:27.409783', 0, 'arun_kmr', 'Arun', 'kumar', 'arun@email.com', 0, 1, '2022-11-22 14:47:17.322256'),
(13, 'pbkdf2_sha256$260000$FnDv6JjqYgyThLSTkTOxPf$mvdl1m7Uf1kUuuHmRm90Y98nN4wkcoHOzZ+IO7m6tlo=', '2022-12-14 16:34:47.917702', 0, 'sony', 'Sony', 'Thomas', 'emeric@gmail.com', 0, 1, '2022-11-22 23:06:32.353050'),
(14, 'pbkdf2_sha256$260000$On4IqZ6dBxEqluW9PPgHxd$irSrz9vHrEUimTq9Bwo9f70Acv2r7nejXBBjODilHCg=', '2022-11-30 05:29:43.942025', 0, 'betsy', 'Betsy', 'George', 'betsy3699@gmail.com', 0, 1, '2022-11-24 07:54:13.731697'),
(15, 'pbkdf2_sha256$260000$klIhgHf5JYQygeWTMyEqh2$gDg7tn1lxsdCEhFffkIp8enVRpTUZKYA7tY8qfb1NLw=', '2022-11-26 13:17:37.130578', 0, 'sarov123', 'sarovok', 'joko', 'sarov123@gmail.com', 0, 1, '2022-11-26 13:16:26.132129'),
(16, 'pbkdf2_sha256$260000$K1odIuJ8by6ICpm4c1fc8Y$s+olXYoOXVF5FZ7otlxjbWK1XPvVbuVHtPp/8EGyn6k=', NULL, 0, 'sonu', 'Sony', 'Thomas', 'so@gmail.com', 0, 1, '2022-11-30 06:20:55.102327'),
(17, 'pbkdf2_sha256$260000$9gcsKjgYjx79fhk3hx0LIp$euqJfBTWtKgYtWm6XabQ1TfEugdqz+EYqA3OmvWrrRg=', NULL, 0, 'emeru', 'Sony', 'Thomas', 'thomas@gmail.com', 0, 1, '2022-11-30 06:26:49.505099'),
(18, 'pbkdf2_sha256$260000$QRieaa7tp40wJUAg1skpce$TaSEKMOY7VKuWFBjBmP+nMtcfldcg/IWlUxnSslcHSs=', '2023-01-24 04:17:22.313086', 0, 'nancy', 'Nancy', 'Sony', 'nancy@gmail.com', 0, 1, '2022-11-30 06:34:38.328108'),
(19, 'pbkdf2_sha256$260000$ocvlZOKY53FCTK0WeKRUfn$XcUvguolfenadAvNK/gCRMlynmWY5gGpgp5lqL/O/yk=', NULL, 0, 'Cyberants_1', 'CYBERANTS', 'DIGITAL', 'nimmykshyam@live.com', 0, 1, '2022-12-01 04:01:58.666015'),
(20, 'pbkdf2_sha256$260000$pjnef8MHhvV1bBMDJVuLhx$+nQJeD/7zkgjgBWTYBDCjvp5wnw1G/BtUJzzrxTYfkI=', NULL, 0, 'DIP', 'Dripstone', 'Entertainments', 'nimmykshyam.ns@gmail.com', 0, 1, '2022-12-01 04:05:45.017335'),
(21, 'pbkdf2_sha256$260000$DaWVUhzJ2CtTD605f5K7vK$WTbroJNhDb7s8cPHYM1j61aFLR7IdJ9UY+NHhCHtoAI=', NULL, 0, 'hari', 'hariharan', 'l', 'hariharan70006@gmail.com', 0, 1, '2022-12-02 12:55:52.109348'),
(22, 'pbkdf2_sha256$260000$CJwlyMfXSvMCVmYDk1vjXN$kRCaQCnmw4F1IjV0GSWtEsrAbCAh8f6pacYKsdagf+k=', NULL, 0, 'hariharan', 'hariharan', 'L', 'hari@gmail.com', 0, 1, '2022-12-02 13:11:17.260628'),
(23, 'pbkdf2_sha256$260000$ssrYXBwppvJx1fCTXkzrnH$J2aS74qelbogZMnN84Bc7HuKEt0b1KyTbbDyf/2hyZs=', '2023-03-30 06:29:56.772232', 0, 'roopa', 'Roopa', 'L', 'sriroopa@gmail.com', 0, 1, '2022-12-02 13:15:46.666591'),
(24, 'pbkdf2_sha256$260000$vTgk8KbL4Z7fDhfpGLXuS5$bQieMmBd+nbJ3/eN1K5MeYJtH5xNyKY38cIdbzvvVJs=', '2023-01-03 06:18:40.318331', 0, 'amru@123', 'Amrutha', 'K P', 'amru@gmail.com', 0, 1, '2022-12-05 07:32:24.826855'),
(25, 'pbkdf2_sha256$260000$NgFyJ09IoumuMqf8BsovLs$0l91iQHxvf74bCm+ZKsxMZz2CE506lOCiwZ0e+ufU2w=', '2023-01-03 06:19:23.054891', 0, 'Manju123@', 'Manjusha', 'Martin', 'manjusha@gmail.com', 0, 1, '2022-12-05 07:37:50.758961'),
(26, 'pbkdf2_sha256$260000$om5WzKJqp7Y0edmh7kNfDP$gbwDIGWEXbyfUmgok4WRkVGTuFK9vJeswJ8DA7vhGHQ=', '2023-01-04 15:22:11.105372', 0, 'ad', 'ad', 's', 'SA@gmail.com', 0, 1, '2022-12-05 17:10:14.221397'),
(27, 'pbkdf2_sha256$260000$bpC5zlCeRry0qQJT63Teon$gYFDJ+8hBN9J9Dz5HhGQBDRjnl3ri+wdDtSRf0ZFXz0=', NULL, 0, 'nnn', 'hhuh', 'jjk', 'jkk@gmail.com', 0, 1, '2022-12-09 10:00:10.771335'),
(28, 'pbkdf2_sha256$260000$65cQLK34e7OCbNFm1myATa$YP2rGkAIFDalOwMeD9IfQO0wIyhhhfYQz0pc+Nq1Zu8=', '2023-02-11 07:29:35.608824', 0, 'jishnu123', 'JISHNU', 'PRASAD', 'jishnupb098@gmail.com', 0, 1, '2022-12-10 10:54:48.574360'),
(29, 'pbkdf2_sha256$260000$nnr4RZjSPlAvO5V0xBnMjO$FMiUpAq2tO+xTFzP3NY5/0ZAaabJC5SjOAMJ1W+HBqU=', '2023-09-02 09:30:29.742011', 0, 'Jaseela', 'Jaseela', 'Kj', 'jaseelajabbar916@gmail.com', 0, 1, '2022-12-11 11:37:21.720547'),
(30, 'pbkdf2_sha256$260000$imC3ttgzpTdBjmMl3ZW80X$zEGzgrXBSpnba2hFcXzfUEuI9oZpy38HMtyGghHhXAw=', '2023-08-26 17:00:47.291092', 0, 'Ijaz', 'Ijaz', 'cm', 'jaseelajabbar1996@gmail.com', 0, 1, '2022-12-11 11:40:02.010469'),
(31, 'pbkdf2_sha256$260000$nKLzZrZAgH4A3CzuufJzm1$PPA8eqCYOb3v2AIaIwUhL0xU12SXGA0eDGbGt9RDSlE=', '2022-12-12 04:38:52.154602', 0, 'Finsys', 'Fin', 'Sys', 'finsys@gmail.com', 0, 1, '2022-12-12 04:37:12.452558'),
(32, 'pbkdf2_sha256$260000$7yozfH7GdGj51vzDEDMsIs$8pklRMDPtwqoXQruazVniSMBXFx0xCuN6ywYgeSDEAM=', '2022-12-12 04:47:44.757886', 0, 'Dripstone', 'Dripstone', 'Entertainments', 'dripstone@gmail.com', 0, 1, '2022-12-12 04:46:32.470364'),
(33, 'pbkdf2_sha256$260000$wg1GUznjXkl8KPyLrFEX8V$Gr3ka7dBshbVp8FnJg3ClhObCf7qjeNDgXpp+poZdcE=', '2022-12-14 16:38:05.087363', 0, 'kochu', 'Kochu', 'Ouseph', 'ko@gmail.com', 0, 1, '2022-12-14 16:35:47.575829'),
(34, 'pbkdf2_sha256$260000$o1MulMAVwP3hMGgbbVWhPn$c7CSRdkndsUpVWY7X9O+//JtoybP+WKJ45oo++uFNh8=', '2023-02-03 06:43:41.634227', 0, 'Anaswara123', 'Anaswara', 'Jayan', 'anaswara@gmail.com', 0, 1, '2022-12-21 10:17:45.680252'),
(35, 'pbkdf2_sha256$260000$TZfb6ppizDqWfKIBPhWRmp$5LlvYUJeXtpI41TiJc8KDQ5TQnZUxsoqRz1w62Xw1As=', '2023-01-04 15:16:45.989404', 0, 'ap', 'ap', ' da', 'vishnu@gmail.com', 0, 1, '2023-01-03 12:57:57.049109'),
(36, 'pbkdf2_sha256$260000$Aiez8mig3qTFcPsRMxr1T8$mO03LCt2lK/xDqg/JGVRaCT9Yr2Va0OLpFBNf1qeIDg=', '2023-02-25 17:23:42.788826', 0, 'vi', 'vi', 'vi', 'vi@gmail.com', 0, 1, '2023-01-04 15:05:29.294587'),
(37, 'pbkdf2_sha256$260000$N6jxa4ZpbFVS0aDPk1nknZ$dk2oByM4YmbGigfVCy0UlnAu5RDYU3pphY1chNrWrXA=', '2023-01-04 15:28:07.574506', 0, 'ai', 'ai', 'ali', 'ai@gmail.com', 0, 1, '2023-01-04 15:26:34.362283'),
(38, 'pbkdf2_sha256$260000$VBvou7CUYuRrVFz7bHB53n$eoaxzj1pNjl+sVtKnYM9w/+KBIAarFBgfvWmyD55RSU=', '2023-01-06 09:27:31.257212', 0, 'mittu', 'Mittu', 'Koshi', 'mittu@gmail.com', 0, 1, '2023-01-06 09:25:59.265903'),
(39, 'pbkdf2_sha256$260000$zUtSnTEOyB1y6o5zUZqhDV$+3FKoeS06KYxovA1FxmnvT55r6+Cvk5mwUgKG+wePa8=', '2023-01-23 06:44:58.112700', 0, 'anitha', 'anitha', 'a', 'anitha@gmail.com', 0, 1, '2023-01-07 03:48:58.655754'),
(40, 'pbkdf2_sha256$260000$82Dgt44UEcyxUngeQTDjP6$L70mWutnD872JSKca1F935deC49Izn4obu5HShoSw/Q=', '2023-03-04 13:08:48.604979', 0, 'manju', 'manju', 'p', 'manju@gmail.com', 0, 1, '2023-01-23 06:55:13.712237'),
(41, 'pbkdf2_sha256$260000$w4ZaEOeDzzo71g9I91ME4W$TXy7p57G4r3+gQb6xwBG0pnTwDdcTmbVbaLTdRceuK0=', '2023-01-24 04:29:09.428496', 0, 'nanu', 'Nancy', 'KOCHOUSEPH', 'nkochouseh@gmail.com', 0, 1, '2023-01-24 04:19:11.119186'),
(42, 'pbkdf2_sha256$260000$FDYeqQwRuejHjILPrvUDI0$QORxdR8zDXGHSfTl4zJuXDjkU/j/fZiI4JkSAXOej64=', '2023-02-03 07:40:40.676988', 0, 'newtest', 'newtest', 'newtest', 'amalcs0006@gmail.com', 0, 1, '2023-02-03 07:04:53.516383'),
(43, 'pbkdf2_sha256$260000$kQbeMjFgFolAITlJoX605S$mtvso8q9JqJas3Eubuplvh/AI87/Bl/4lIIt3miV5pg=', '2023-03-11 06:39:41.379384', 0, 'acc123', 'acc', 'co', 'acc123@gmail.com', 0, 1, '2023-03-11 06:34:15.285399'),
(44, 'pbkdf2_sha256$260000$gmg9ienU8jATD1nq3PaY0O$r4dk1Ih2FfzNhg3J03A9uYMukDRe5oNbVKxIvhptAxg=', '2023-04-06 15:52:53.133301', 0, 'nithya', 'Nithya', 'V', 'nithya@mail.com', 0, 1, '2023-04-06 15:51:41.829615'),
(45, 'pbkdf2_sha256$260000$FRFLRRp9Ri9keVhxm25YYg$MBFCDux7XmTjg2D3SczL5KPwCKoNq1+Slq3TfjAKC+c=', '2023-04-06 16:37:00.350891', 0, 'nithyav', 'Nithya', 'v', 'nithyav@mail.com', 0, 1, '2023-04-06 16:35:44.163626'),
(46, 'pbkdf2_sha256$260000$LWGergtj3cqPFTme9roEch$JbXBJg3JWPlkHYOUeBy+yJKsehZOe2/gR8niBkFDlBg=', '2023-05-25 05:54:17.394390', 0, 'sumayya', 'sumayya', 'sainudeen', 'sumayyasainudeen@gmail.com', 0, 1, '2023-05-25 05:53:04.774973'),
(47, 'pbkdf2_sha256$260000$lYsLTP5sgiNkyWEM5BeY5r$ghv8LH7btUOM9Ykmt4fKim92hXS7yG6Ac2lHeRi+McI=', '2023-07-24 11:07:38.537589', 0, 'nithyavijayan', 'Nithya', 'v', 'nithyavijayan@mail.com', 0, 1, '2023-05-31 05:55:29.321787'),
(48, 'pbkdf2_sha256$260000$0CtyDqYkn7iF8IpnYz2HJ4$7nrConwyfkdR45qBiVX6vofgoTQKLs+7nWI+7pVpxow=', '2023-06-01 09:57:35.191989', 0, 'nithyavij', 'Nithya', 'V', 'niyavijayan@gmail.com', 0, 1, '2023-06-01 09:56:43.427061'),
(49, 'pbkdf2_sha256$260000$lrRaeDJE7aTGqtE3awLof9$WMSRPa1B/K6BkR8v/8txL89MRtd1h6ZZAE8WV95i1RY=', NULL, 0, 'ddg@hu', 'fffg', 'ssssssssss', 'dd@gmail.com', 0, 1, '2023-06-16 07:53:08.376915'),
(50, 'pbkdf2_sha256$260000$YO0RM9e6NTiM3OmPm1zmZJ$aDXkpxWIU/h6N6v8J19VG1mIKAmkYnzXXRTBxOE6wgk=', '2023-10-18 04:59:32.251086', 0, 'alen123', 'Alen', 'Antony', 'test123@gmail.com', 0, 1, '2023-07-04 13:03:02.389298'),
(51, 'pbkdf2_sha256$260000$ezA5yQcfbIvouSG3XNz84M$w02W5yxNGDGluW1OpT4j9SC1Mp806Pa5wSX3+ymmKx4=', '2023-09-27 06:04:52.293789', 0, 'rijin', 'Rijin', 'P', 'rijin12p@gmail.com', 0, 1, '2023-07-24 09:38:28.922824'),
(52, 'pbkdf2_sha256$260000$q63Fh3UDopgfp0MDrVsuJr$iisNmItb/a10+IL5Gkde1XugeFmadhX5lnSxIY4uRD4=', '2023-09-25 08:26:50.680441', 0, 'sangeetha', 'Sangeetha', 'Soman', 'sangeethasoman7025@gmail.com', 0, 1, '2023-07-28 09:56:50.025630'),
(53, 'pbkdf2_sha256$260000$vBHO8q3c6JCQJtYRmED9d9$eVOZ6TZXSR24WYATp5XjrNX1+JosrmufTSNaLQmnCvM=', '2023-09-15 05:23:22.808864', 0, 'amal', 'amal', 'DAVIS', 'akhilakd5299@gmail.com', 0, 1, '2023-08-03 10:04:42.250001'),
(54, 'pbkdf2_sha256$260000$ZMUv1q76PrwwxLdVvmvCi9$SSPnXP5BpxBydhB5z5RLVq015FBNnaW3Vmv4zjrQamo=', '2023-08-10 10:16:39.340147', 0, 'nithyan', 'nithya', 'n', 'nithya@gmail.com', 0, 1, '2023-08-10 10:13:19.076045'),
(55, 'pbkdf2_sha256$260000$ldqL3akHFtwx9bXn3nUu3p$c37t8twIhF5/vKDxKw5BmczFHG2jSRQtAGBrvxvkVrA=', '2023-08-22 05:47:41.714596', 0, 'adhrith', 'Adhrith', 'Arun', 'aruntbalan@gmail.com', 0, 1, '2023-08-12 08:59:20.522216'),
(56, 'pbkdf2_sha256$260000$JhBar0MsbxLJgqg9Aj38Oi$nkjjPSb+oqXVZo48G+JxFDATkLPfgVvEwoMH8bZkbW4=', '2023-08-18 05:29:01.025973', 0, 'nasneen', 'Nasneen', 'O M', 'nazneen@gmail.com', 0, 1, '2023-08-18 05:28:32.781590'),
(57, 'pbkdf2_sha256$260000$tMKIgW8pUV88H57CXR0ni8$BkHEuIQmcItactOha5/n+rdVwwSZdjdqGOHS88h5k2Q=', '2023-09-27 06:04:35.608293', 0, 'paul', 'Paul', 'Fany', 'abc@gmail.com', 0, 1, '2023-08-21 10:04:50.989302'),
(58, 'pbkdf2_sha256$260000$bcaM1bIeNHSICPWY7gjUTu$lpm/aaNevKz0YQPRLzP+TcLmlEWu2TJD600t86fazRA=', '2023-09-05 06:59:27.513890', 0, 'athul', 'Athulmon', 'gp', 'athulmon1928@gamil.com', 0, 1, '2023-08-25 08:42:11.451542'),
(59, 'pbkdf2_sha256$260000$Oa7R6eBosvisbQmwYocQ2Y$aG5RtPNjkRqH2JnQ64Ypgz3eR0T1OfxoJMwP/yxJLzo=', '2023-09-01 06:46:40.647203', 0, 'Testing@123', 'test1', 'test1', 'firstnewone331@gmail.com', 0, 1, '2023-08-25 10:35:03.568521'),
(60, 'pbkdf2_sha256$260000$mpPyhEg3PJ639aNwX78Qx8$qx1V8j7cEh3W9h5i1rDXuNT3D1BxsfFCppiLrZlyhSE=', '2023-08-26 04:55:15.941196', 0, 'nithyavi', 'Nithya', 'V', 'nithyav@gmail.com', 0, 1, '2023-08-26 04:54:22.053802'),
(61, 'pbkdf2_sha256$260000$TlLObbvBzXu2dR92kCx9ow$DqpcWDYN0/j5fjuJapQK4NHhW5PGiJQx5WJ2xnMgGJE=', '2023-10-21 10:35:41.005796', 0, 'rizwan', 'Rizwan', 'O M', 'rizwannazam030@gmail.com', 0, 1, '2023-08-26 08:51:20.867795'),
(62, 'pbkdf2_sha256$260000$ieYIlyiKUms0mApYIICVtC$CKZzd4hJ8bKdocu/8p7I+Tf/QGvQyr194/lus14QjX0=', '2023-09-02 09:30:40.564041', 0, 'jesvya', 'jesviya', 'kj', 'jasism99@gmail.com', 0, 1, '2023-08-26 17:02:50.593176'),
(63, 'pbkdf2_sha256$260000$cxJGYWXjc5m3nFmwdBFlgo$jZDNykw+kuu6I5siWmhivROEYNmhnQ/kOAlvhq22b+o=', '2023-08-30 11:03:18.948576', 0, 'pqrs', 'pqrs', 'pq', 's@gmail.com', 0, 1, '2023-08-26 17:06:30.961060'),
(64, 'pbkdf2_sha256$260000$kEUnMUT9gVNtKVxLahydYP$jm9iZDBk0UrSoBNAA1cVDrzbNNs4A1LONWgMJLKNMWI=', '2023-08-30 10:17:09.736103', 0, 'thomas', 'Thomas', 's', 'thomass@gmail.com', 0, 1, '2023-08-30 10:11:46.594480'),
(65, 'pbkdf2_sha256$260000$0JK6yLj3Ccr0NSLhE4pLin$fBDloTDVFsd/f8MPBp7n3mLprqygzeKQa4knui1vb8A=', NULL, 0, 'tiger', 'tiger', 'ck', 'isha009mehrin@gmail.com', 0, 1, '2023-08-30 11:00:14.818788'),
(66, 'pbkdf2_sha256$260000$9r6Pz2jLaMLsP8M2KQvvMG$73TbghBubokIFautMsHEzFH2co0gR05hWg1LmhUUshw=', '2023-09-01 14:42:44.477710', 0, 'Testing@1234', 'Testing@1234', 'Testing@1234', 'Testing1234@gmail.com', 0, 1, '2023-09-01 07:10:40.772400'),
(67, 'pbkdf2_sha256$260000$NetZFCOcDmEMZA8Wx7HhXZ$1epNadg8oB/TRnAa6DzPAkRCvqAFd8VlevE1We9rNFE=', '2023-09-19 17:52:38.680509', 0, 'ramsy', 'ramsy', 'rs', 'ismayilcmakkar2014@gmail.com', 0, 1, '2023-09-02 09:34:40.955567'),
(68, 'pbkdf2_sha256$260000$ctgo1XQyj2TutSJAP06vZK$yvg1go+9/VIcww5qEbf7ZqNiVw5eIEq0veItscAAskc=', '2023-09-05 06:56:04.997049', 0, 'athul123', 'Athulmon', 'gp', 'a@gamil.com', 0, 1, '2023-09-05 06:53:32.336680'),
(69, 'pbkdf2_sha256$260000$czhkB0ctw6BMG1SV7r6LLp$f1oXGvtA6a29CCmOppXzivc2UutA4rU/+hniroV0fQo=', '2023-09-05 06:58:27.915906', 0, 'gokul123', 'gokul', 'krishna', 'g@gmail.com', 0, 1, '2023-09-05 06:57:35.043998'),
(70, 'pbkdf2_sha256$260000$hHKj6TKf1wlwo9WZt4YonN$Vd4eNenSHFyNvBn7VrvMJ5A1/3jxoWBzUViih+Cj3NE=', '2023-09-05 14:53:12.951741', 0, 'clown1', 'clown', '1', 'clown@gmail.com', 0, 1, '2023-09-05 08:34:14.686164'),
(71, 'pbkdf2_sha256$260000$VBRFmNIiJ3fDgO2pBeXjnk$NLtXf6hASI9aFhovO5RZEmGUmcvkBZQnDjumyWwXQco=', '2023-10-06 07:23:14.013792', 0, 'reena12', 'reena12', 'kk', 'reena@gmail.com', 0, 1, '2023-09-12 14:16:11.697488'),
(72, 'pbkdf2_sha256$260000$qGyPWvMK6gQgIk48PyBdr1$mATW64YPrhlF9ZzUGbc7DdpQLFJetGgLhp2II0n6Gdk=', '2023-10-28 11:35:33.468995', 0, 'abin', 'abin', 'Mundur', 'abin@gmail.com', 0, 1, '2023-09-12 15:30:06.942934'),
(73, 'pbkdf2_sha256$260000$nVcxG4FVij93iSpDxHuEjW$VRWMGsEwgxM36VtNkItffoWNKDDB8WUxOeCCVJ+lQgE=', '2023-11-02 04:03:45.945316', 0, 'Abi', 'Abin', 'pj', 'abinjayathilakan@gmail.com', 0, 1, '2023-09-12 15:33:14.704944'),
(74, 'pbkdf2_sha256$260000$XSwPAeJtnd2d5iYCh6W6Pa$2zS1/JqDafwNle5oUFQOsYtSuuEdNsK4DZBWz8bmKT8=', NULL, 0, 'haritha123', 'Haritha', 'Ltd', 'developersaltos@gmail.com', 0, 1, '2023-09-13 05:50:53.998513'),
(75, 'pbkdf2_sha256$260000$IhLNbH7EQegeU3dkHJYIn5$BRynQvOBmXX6ryvdMGrs41FQbVDNAhyunl7jkuNgc/0=', '2023-09-13 06:11:37.907668', 0, 'altos', 'altos', 'technologies', 'altos@gmail.com', 0, 1, '2023-09-13 06:08:33.115198'),
(76, 'pbkdf2_sha256$260000$cVrQhi0yOrgTJ29ZRf35vO$4jnc2VLTA0OwySUAT9bPpsPBd6gVWsf5GbEc4fWPtjQ=', '2023-09-13 06:18:49.957173', 0, 'a&a', 'a', 'a', 'a&a@gmail.com', 0, 1, '2023-09-13 06:14:05.347765'),
(77, 'pbkdf2_sha256$260000$ugYAQlz3JqyzyctWIypltF$Sk19TdIJCkdO136vms8mbZGTcm0RMgZex7ydyq7/pYI=', '2023-10-06 05:56:56.885027', 0, 'abcdef', 'abcdef', 'ghijk', 'abcdef@gmail.com', 0, 1, '2023-09-13 08:12:59.396685'),
(78, 'pbkdf2_sha256$260000$pBolHfSDAnPF6UEzfxwDl4$5/lbfm0MZI50Tq/E8PLvg8z2tCpQEqkdROuHCJKlA+k=', '2023-09-13 10:22:30.646437', 0, 'Hariom', 'Hari', 'b', 'hariom@gmail.com', 0, 1, '2023-09-13 10:20:50.655319'),
(79, 'pbkdf2_sha256$260000$heQAtQKeWxy7L8BwiNIYaY$xI26JAuw+qvd53Tbb1QlbCbKRXrPv/VODhLsiRIz2LE=', '2023-09-15 05:22:01.004410', 0, 'amala', 'ROSILINT', 'DAVIS', 'amald416@gmail.com', 0, 1, '2023-09-15 05:21:22.053554'),
(80, 'pbkdf2_sha256$260000$wUfJJaTCJExCtPpmorTeNF$8YTt1UUKmtqhGJMmsIUiPVsw3nDZWy6XncN6XGD/kjM=', '2023-09-16 11:07:46.685250', 0, 'divya', 'Divya', 'M', 'divya@gmail.com', 0, 1, '2023-09-16 03:55:43.388178'),
(81, 'pbkdf2_sha256$260000$SUUBLS74RRlQI3LgxlUIg1$0v4o8Igz5nlA7HmFRgbrGA/uADd22mKMjfhFPMLJkR8=', '2023-11-01 04:55:29.200120', 0, 'admin', 'Praveen', 'P', 'praveenpradeepkumar43@gmail.com', 0, 1, '2023-09-19 11:22:39.898818'),
(82, 'pbkdf2_sha256$260000$M8zvVOAuX9mEDpySjQn297$h2GSW2qZU3e1Sv7OLTC7mov9X6MulHX54aMDcVt5gS0=', '2023-10-30 09:50:58.418670', 0, 'reshna', 'Reshna', 'T', 'reshnasuresh@gmail.com', 0, 1, '2023-09-22 04:06:15.724550'),
(83, 'pbkdf2_sha256$260000$9rq7dInFxtAocBZCqDejvY$QtQHQ4z5NZcGSl9GTFmASEfquo+mbEywZFs7F12IK6M=', '2023-09-28 09:54:23.967479', 0, 'jishnu', 'jishnu', 'prasad', 'jishnu@gmail.com', 0, 1, '2023-09-26 04:15:49.399039'),
(84, 'pbkdf2_sha256$260000$XDmv89Op8Zlv9R4yGKO0K3$QBMWpsdzG6nSZqbJXCcqJfJa9Fd96cD32H/qGsRISIA=', '2023-10-14 15:06:15.127143', 0, 'Haripriya', 'Haripriya', 'Raj', 'haripriya@gmail.com', 0, 1, '2023-09-26 09:25:37.078695'),
(85, 'pbkdf2_sha256$260000$nLiLQu6ei2AYIX0s9kAwK6$WfI60Ea4xnkmSEJZ6eP+FR+cO1CEkaHdI0T0n5tQq9s=', '2023-09-27 04:06:37.628899', 0, 'Reshnaa', 'Reshna', 't', 'reshnat@gmail.com', 0, 1, '2023-09-27 04:04:27.837181'),
(86, 'pbkdf2_sha256$260000$TujLQxMaEVvDK0fcdAxDfC$aB2oiul1u4xZxl87IXyB+qwCAKeafnBgvQfzIURMkZ4=', '2023-09-27 05:56:45.258216', 0, 'chinju', 'chinju', 't', 'chinju@gmail.com', 0, 1, '2023-09-27 04:08:15.473957'),
(87, 'pbkdf2_sha256$260000$qSq3ZSzAYQP56siD6uWFgp$xFRlhqzBd7/eeklBGgesW5m8XTtUNiGi1nWvG6iOlBg=', '2023-09-27 06:17:02.575360', 0, 'Paulfany', 'Paul', 'Fany', 'abc12p@gmail.com', 0, 1, '2023-09-27 06:05:49.251609'),
(88, 'pbkdf2_sha256$260000$StcgwfLUoLGJcAuE56XVWX$Dlm4bcnbSwMMwsX0Bv/LJkIs3LJjQOmhcjepGNHlrDE=', '2023-10-21 10:40:24.218801', 0, 'elan', 'Elan', 'hamid', 'elan@gmail.com', 0, 1, '2023-09-27 07:30:13.382513'),
(89, 'pbkdf2_sha256$260000$JRtdzbX903BL2RjFz5VYNO$3YMm+Vc02gJ0zEyQ4DzZzIWeqFZ1FGt1KuaLh5kCDJ4=', '2023-10-04 08:13:30.857159', 0, 'mirna', 'mirna', 'kk', 'mirna@gmail.com', 0, 1, '2023-10-04 08:12:31.195409'),
(90, 'pbkdf2_sha256$260000$ogdwBBPtjpqZAYGoeQot47$JJqxRuBECUUekd/aM18Ur5VyQhO/kSi44d3EWHIHFJA=', '2023-10-27 06:31:57.660063', 0, 'jeena12', 'jeena', 'kk', 'abcd@gmail.com', 0, 1, '2023-10-06 07:25:51.465033'),
(91, 'pbkdf2_sha256$260000$NOcNxeOdRP1x4l5WjpwISD$GbI9gLz5StyK84fYVRD7egNlDZexkUdJAJyTmXpEOzA=', '2023-10-06 07:50:18.366121', 0, 'Testing12345', 'Testing12345', 'Testing12345', 'Testing12345@gmail.com', 0, 1, '2023-10-06 07:38:28.345377'),
(92, 'pbkdf2_sha256$260000$vQ9weMH8PAZHhOFGS5M1hs$/M3LxEblnOn+z7AnyME0aASPKAX/crDwCzeiuWH73QQ=', '2023-10-16 04:45:07.300650', 0, 'divyas', 'Divya', 's', 'divya1@gmail.com', 0, 1, '2023-10-16 04:44:15.642454'),
(93, 'pbkdf2_sha256$260000$DvI1BEgZ5HkVR3c1u3XFTN$mgYR+N22z047VulmOcjKa7hm26AULm236cVoAfkjeOQ=', '2023-10-30 08:25:45.044055', 0, 'Clown', 'Clown', 'Clown', 'sdfs@gmail.com', 0, 1, '2023-10-17 10:54:11.347038'),
(94, 'pbkdf2_sha256$260000$65oNNGQIkkSVQ37w3BsAHP$oWEY6bJ1qpz5mFXxUmRdxiQFOjPy3xaWHuGFoZtbRDA=', '2023-10-21 14:13:52.336957', 0, 'test1', 'Rakhi', 'd', 'test@mail.com', 0, 1, '2023-10-18 12:45:54.248824'),
(95, 'pbkdf2_sha256$260000$VV0M1agpaSpFmNiJV8IX5i$ApiJCXGF+rfeZe5vLw9DVrQhfR7it2fndcIUFIu/GcQ=', '2023-10-19 11:30:03.629135', 0, 'anu', 'Anu', 's', 'anub@gmail.com', 0, 1, '2023-10-19 11:29:01.492825'),
(96, 'pbkdf2_sha256$260000$TG7R4SdxULNJO09tzwqGdT$uefg8BUbUszjKzdoW0Qn7fBlPQVJwC+tnINeSfDIe2I=', '2023-10-19 14:02:23.270233', 0, 'divyag', 'Divya', 's', 'divyag@gmail.com', 0, 1, '2023-10-19 13:10:28.533936'),
(97, 'pbkdf2_sha256$260000$3QXauXOUBKYNl3LbIOkkCb$kfZfWuaAnL4iKagrPGykuQuZKJsxIfG+iNTu/hoXla4=', '2023-10-21 06:35:53.703508', 0, 'pauljo', 'paul', 'jo', 'pauljogeorge123@gmail.com', 0, 1, '2023-10-21 06:34:14.451710'),
(98, 'pbkdf2_sha256$260000$3BEt2ZdO54ytBh7UPksed7$h/SGoue1vjJCwCWibj0A13l8iUCt8+sxvGRH/+K1bEA=', '2023-10-31 04:57:03.247480', 0, 'abhi', 'Abhi', 'M', 'abhi@gmail.com', 0, 1, '2023-10-21 06:40:43.956929'),
(99, 'pbkdf2_sha256$260000$7nbwhWXQBOwiFWQee7nYki$awkOQmZ4awY2anlAFDCKR1r8yv0F8gplM6eJy3k6c0w=', '2023-10-28 09:58:31.983721', 0, 'vishnu124', 'Vishnu', 'Asok', 'vishnuasok41@gmail.com', 0, 1, '2023-10-24 09:48:34.463640'),
(100, 'pbkdf2_sha256$260000$IieXTQomgR40VkEAovm8ns$JNHuKPPtCvPUTyhciC/tz0b/XDPTpuaQv81TrFYBXXo=', '2023-10-26 07:09:32.755766', 0, 'karun', 'karun', 'kk', 'karun@gmail.com', 0, 1, '2023-10-25 12:44:05.353198'),
(101, 'pbkdf2_sha256$260000$N6DyKZM6HjsjIaGdWK2X5v$2iWchADN8p2BdT9+UAQbjUWt+4GkDJKGbjY+ITXfhIk=', '2023-11-01 14:32:17.541268', 0, 'Keerthana', 'Keerthana', 'Krishnan', 'keerthanavadath@gmail.com', 0, 1, '2023-10-28 07:51:29.866901'),
(102, 'pbkdf2_sha256$260000$qwodEwfobTz6Vj74eBKhFu$+O9gRbnUPW2bswz+9CkQ0xxkzs+F5b4+REt379sfmb8=', '2023-10-31 08:32:54.728081', 0, 'radha', 'radha', 'devi', 'radha@gmail.com', 0, 1, '2023-10-31 04:30:17.577121'),
(103, 'pbkdf2_sha256$260000$mq0VGU201FeSI5TPJ7yYYd$cJPsILz1MDPwZSZuQws0Bku/DaSoVVHcOpLPhYC+tdI=', '2023-10-31 11:20:05.820569', 0, 'vijaya', 'vijayamma', 'B', 'vijayamma@gmail.com', 0, 1, '2023-10-31 11:17:56.673176'),
(104, 'pbkdf2_sha256$260000$1YPH4c2atK7ViyC8d3P6vI$lkBEK3/GofbwlIfxyRcZDFQMN8g+hg759FdFgR1uyLU=', '2023-11-01 09:58:06.942819', 0, 'devi', 'Devi', 'Das', 'devi@gmail.com', 0, 1, '2023-11-01 05:20:59.505242'),
(105, 'pbkdf2_sha256$260000$isdObEwAhSyEPm6TAcmHQ6$6sP76pkrLPOuYmzHMfhIrlMF8ifXASo0d5BVgvOLgNA=', '2023-11-01 10:14:33.049596', 0, 'nakul', 'Nakul ', 's', 'nakul@gmail.com', 0, 1, '2023-11-01 10:13:14.468647'),
(106, 'pbkdf2_sha256$260000$XI6yKzvuixq2HTTsM7hSYT$8HFoTYoZJIK5INfK1br66d4RgmhuF0yjb0GFQveLKIk=', NULL, 0, 'arj', 'arjun', 'm', 'arun@gmail.com', 0, 1, '2023-11-01 10:32:42.295139'),
(107, 'pbkdf2_sha256$260000$nv91vrBxKPobefmZApIu4a$BHUlL60diW0rJGElm6CAWzh3lPV6hao+zUtwHIHURRE=', '2023-11-01 14:46:56.415673', 0, 'jethi', 'jethin', 'p', 'jethi@gmail.com', 0, 1, '2023-11-01 14:45:06.681087');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(102, 'app1', 'accounts'),
(9, 'app1', 'accounts1'),
(10, 'app1', 'accountype'),
(11, 'app1', 'addac'),
(101, 'app1', 'addtax1'),
(100, 'app1', 'advancepayment'),
(108, 'app1', 'attendance'),
(99, 'app1', 'balance_sheet'),
(97, 'app1', 'bankaccount'),
(12, 'app1', 'bankaccountholder'),
(96, 'app1', 'bankconfiguration'),
(94, 'app1', 'bankingdetails'),
(93, 'app1', 'bankings_g'),
(95, 'app1', 'banking_payment'),
(92, 'app1', 'bankstatement'),
(98, 'app1', 'bank_transactions'),
(91, 'app1', 'bills'),
(90, 'app1', 'bundle'),
(13, 'app1', 'challan'),
(89, 'app1', 'challanitem'),
(88, 'app1', 'cheqs'),
(7, 'app1', 'company'),
(87, 'app1', 'credit'),
(86, 'app1', 'creditperiod'),
(85, 'app1', 'currencies'),
(83, 'app1', 'customer'),
(82, 'app1', 'customize'),
(84, 'app1', 'cust_statment'),
(106, 'app1', 'debitnotecomments'),
(81, 'app1', 'delayedcharge'),
(80, 'app1', 'employee'),
(79, 'app1', 'employeeloan'),
(116, 'app1', 'employee_loan_tran'),
(14, 'app1', 'estimate'),
(78, 'app1', 'estimate_item'),
(77, 'app1', 'etransporter'),
(76, 'app1', 'ewayinv'),
(75, 'app1', 'expences'),
(15, 'app1', 'expenseaccount'),
(104, 'app1', 'e_waybills'),
(103, 'app1', 'e_waybill_item'),
(107, 'app1', 'holidays'),
(74, 'app1', 'incomeaccount'),
(73, 'app1', 'inventory'),
(16, 'app1', 'invoice'),
(17, 'app1', 'invoice_item'),
(18, 'app1', 'itemmodel'),
(71, 'app1', 'itemstock'),
(70, 'app1', 'itemtable'),
(72, 'app1', 'item_stock'),
(110, 'app1', 'loan_account'),
(115, 'app1', 'loan_duration'),
(111, 'app1', 'loan_transaction'),
(69, 'app1', 'mailingaddress'),
(109, 'app1', 'man_journal_comment'),
(19, 'app1', 'mjournal'),
(68, 'app1', 'mjournal1'),
(67, 'app1', 'noninventory'),
(66, 'app1', 'openingbalance'),
(65, 'app1', 'otp_password'),
(64, 'app1', 'paydowncreditcard'),
(20, 'app1', 'payment'),
(63, 'app1', 'paymentitems'),
(62, 'app1', 'paymentmethod'),
(114, 'app1', 'paymentterms'),
(117, 'app1', 'paymnt_made_comments'),
(61, 'app1', 'payrollcomments'),
(60, 'app1', 'payrollemployee'),
(59, 'app1', 'payslip'),
(21, 'app1', 'pricelist'),
(58, 'app1', 'pricelist_individual'),
(22, 'app1', 'productmodel'),
(57, 'app1', 'profit_loss'),
(23, 'app1', 'purchasebill'),
(55, 'app1', 'purchasebill_item'),
(24, 'app1', 'purchasedebit'),
(54, 'app1', 'purchasedebit1'),
(25, 'app1', 'purchaseorder'),
(53, 'app1', 'purchaseorder_item'),
(26, 'app1', 'purchasepayment'),
(52, 'app1', 'purchasepayment1'),
(56, 'app1', 'purchase_expense'),
(27, 'app1', 'recinvoice'),
(51, 'app1', 'recinvoice_item'),
(50, 'app1', 'recon1'),
(49, 'app1', 'recordpay'),
(113, 'app1', 'recterm'),
(47, 'app1', 'recurringbill_item'),
(28, 'app1', 'recurring_bill'),
(48, 'app1', 'recurring_expense'),
(46, 'app1', 'repeatevery'),
(112, 'app1', 'repeatevry'),
(45, 'app1', 'retainerinvoiceitems'),
(44, 'app1', 'retainerinvoices'),
(29, 'app1', 'salescreditnote'),
(42, 'app1', 'salescreditnote1'),
(41, 'app1', 'salesorder'),
(40, 'app1', 'salesrecpts'),
(43, 'app1', 'sales_item'),
(39, 'app1', 'service'),
(8, 'app1', 'sign'),
(38, 'app1', 'stockadjust'),
(37, 'app1', 'stockreason'),
(36, 'app1', 'suplrcredit'),
(35, 'app1', 'supplier'),
(34, 'app1', 'timeact'),
(33, 'app1', 'timeactsale'),
(105, 'app1', 'transportation'),
(32, 'app1', 'unittable'),
(31, 'app1', 'vendor'),
(30, 'app1', 'vendor_statment'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-10 03:48:48.658698'),
(2, 'auth', '0001_initial', '2023-10-10 03:48:50.757451'),
(3, 'admin', '0001_initial', '2023-10-10 03:48:51.390033'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-10 03:48:51.397667'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-10 03:48:51.405314'),
(6, 'app1', '0001_initial', '2023-10-10 03:50:57.209481'),
(7, 'app1', '0002_man_journal_comment', '2023-10-10 03:52:16.891746'),
(8, 'app1', '0003_e_waybill_item_e_waybills_transportation', '2023-10-10 03:52:20.610495'),
(9, 'app1', '0004_auto_20231009_1026', '2023-10-10 03:52:21.294022'),
(10, 'app1', '0005_e_waybill_item_e_waybills_man_journal_comment_transportation', '2023-10-10 03:52:25.284400'),
(11, 'app1', '0006_auto_20231009_1056', '2023-10-10 03:52:26.119646'),
(12, 'app1', '0007_auto_20231009_1641', '2023-10-10 03:52:36.911382'),
(13, 'app1', '0008_auto_20231010_0348', '2023-10-10 03:54:43.326732'),
(14, 'contenttypes', '0002_remove_content_type_name', '2023-10-10 03:54:43.606938'),
(15, 'auth', '0002_alter_permission_name_max_length', '2023-10-10 03:54:43.703658'),
(16, 'auth', '0003_alter_user_email_max_length', '2023-10-10 03:54:43.719244'),
(17, 'auth', '0004_alter_user_username_opts', '2023-10-10 03:54:43.732430'),
(18, 'auth', '0005_alter_user_last_login_null', '2023-10-10 03:54:43.750579'),
(19, 'auth', '0006_require_contenttypes_0002', '2023-10-10 03:54:43.753441'),
(20, 'auth', '0007_alter_validators_add_error_messages', '2023-10-10 03:54:43.765989'),
(21, 'auth', '0008_alter_user_username_max_length', '2023-10-10 03:54:43.806010'),
(22, 'auth', '0009_alter_user_last_name_max_length', '2023-10-10 03:54:43.820105'),
(23, 'auth', '0010_alter_group_name_max_length', '2023-10-10 03:54:43.915503'),
(24, 'auth', '0011_update_proxy_permissions', '2023-10-10 03:54:44.017281'),
(25, 'auth', '0012_alter_user_first_name_max_length', '2023-10-10 03:54:44.032442'),
(26, 'sessions', '0001_initial', '2023-10-10 03:54:44.290970'),
(27, 'app1', '0002_challan_adjustment', '2023-10-10 06:09:07.455566'),
(28, 'app1', '0003_alter_challan_adjustment', '2023-10-10 06:09:07.459156'),
(29, 'app1', '0004_auto_20230918_1225', '2023-10-10 06:09:07.462260'),
(30, 'app1', '0005_auto_20230919_1138', '2023-10-10 06:09:07.465021'),
(31, 'app1', '0006_recurring_bill_recurringbill_item_repeatevery', '2023-10-10 06:09:07.469465'),
(32, 'app1', '0007_mjournal_comments', '2023-10-10 16:13:01.959241'),
(33, 'app1', '0008_alter_mjournal_comments', '2023-10-10 16:13:01.975079'),
(34, 'app1', '0009_e_waybill_item_e_waybills_transportation', '2023-10-10 17:19:29.073976'),
(35, 'app1', '0010_auto_20231011_0400', '2023-10-11 04:00:51.724413'),
(36, 'app1', '0011_auto_20231011_0428', '2023-10-11 04:29:07.277179'),
(37, 'app1', '0012_man_journal_comment', '2023-10-11 04:31:26.918821'),
(38, 'app1', '0013_auto_20231012_0916', '2023-10-12 09:16:28.611638'),
(39, 'app1', '0014_loan_transaction_total', '2023-10-16 05:40:46.388758'),
(40, 'app1', '0015_bankings_g_account_number', '2023-10-17 09:07:48.264258'),
(41, 'app1', '0016_alter_attendance_status', '2023-10-18 12:39:48.320081'),
(42, 'app1', '0017_auto_20231019_0525', '2023-10-19 05:25:43.823125'),
(43, 'app1', '0018_auto_20231019_1107', '2023-10-19 11:07:46.638821'),
(44, 'app1', '0019_auto_20231020_0519', '2023-10-20 05:19:59.627878'),
(45, 'app1', '0020_customer_credit_limit', '2023-10-25 09:04:13.781218'),
(46, 'app1', '0021_auto_20231025_0933', '2023-10-25 09:34:04.635743'),
(47, 'app1', '0022_auto_20231025_1207', '2023-10-25 12:07:52.300026'),
(48, 'app1', '0023_auto_20231027_0900', '2023-10-27 09:00:31.038148'),
(49, 'app1', '0024_auto_20231028_1117', '2023-10-28 11:17:15.281198'),
(50, 'app1', '0025_auto_20231031_0556', '2023-10-31 05:56:19.678760'),
(51, 'app1', '0026_auto_20231031_1016', '2023-10-31 10:16:38.909209');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0aa92nttyo898y58av4i9og71d24ysj0', '.eJxVjE0OwiAQRq9iWBsyFErBpXvP0AzM1FYNJG1xY7y7NKmLLt_38z6iTCQuCs6ix7KOfVl47rdIKBCHMGB8ctoaemC6ZxlzWucpyG0i93aRt0z8uu7bg2DEZaxvGxhii1433sWIwfJgdANOOSbtjG1RWw-ajO-o6RhCFxVbrSG0A5LBKp3SO-ZXdZ0qpJwOHEr6w_cHMzRGWQ:1qwL1i:xC8LW30LebAtDFKXtRed2IMC3c85mHNPtLybshvKx6E', '2023-11-10 11:29:18.227893'),
('3d3ayfdisq9okuou3vwb719e0ml7i6ol', '.eJxVjEsOgjAURbdiOjZNA-XROnTuGkj7PoKaNgHqxLh3S4IDhud-zkeVidTF27MaQlnHoSw8D1ukvFWHMAZ8ctoaeoR0zxpzWucp6m2i93bRt0z8uu7bg2AMy1jfsTEABDaAiHOWIpMBIkPcexIEiUbAOWzb0BlEdj1Tw614x2g64Sqd0hvzq7pOFVJOB44l_eH7A7nySA0:1quCji:1ggylLrZK4QD9-t5Z8Mab_orFHUNdnYKGb1voJQ_D-Y', '2023-11-04 14:13:54.287140'),
('3h89yakhedpvnarv5smxq9ze1bbi5y35', '.eJxVjMsOgjAQRX_FdG2aYaC0uGTvN5CZPgQlbQLUjfHfLQkuWJ5zHx-RJyduFeBVDJS3ccirX4bdiSLFyTLZl4975J4UH0naFLdlYrlX5JGu8p6cn_ujezoYaR3LWgeHqINVARTUTassQdvVCq0mx-jBAGJowFTc6cAdGaMMKVfVjK3TXE6n-LZpLl-XAjHFE3OOf_j-AHA3Rl0:1qxkBG:c2tXTfwP44i0mDMgF9Ozf8C-jKCdecXKMq0uDOGlrW0', '2023-11-14 08:32:58.311776'),
('3hozq6096x96naianrl96txt3ckpnwys', '.eJxVjDsOgzAQRK8SuY4szPoDKelzBrReL4EE2RLgNFHuHiORgvLNvJmPyFMQNwdX0WPexj6vvPR7JByIU-iRXhz3JjwxPpKkFLdl8nJX5NGu8p4Cz93hng5GXMeyNtYOWDvDLaAiCLplA-AtuRo8AyNopsaYQTWNNcRK-yLqamCsKq2onE7xTWkuX5cCMcUT-xz_8P0BPfZGYA:1qwe5o:_0eBlo9haVH5UKDwYfHX0-A3AwzoooXd4DivSoLkblI', '2023-11-11 07:50:48.402478'),
('50vhpgzhx195gschs6njjn5vinwjzna5', '.eJxVjskOgjAURX_FdE0aOkBfXbr3G8jrJKh5TYC6Mf67JcFElnc6uW82YFnHoSxxHqbAzkyy5t9z6B-RtiDckW6Z-0zrPDm-VfieLvyaQ3xe9u4BMOIy1rXyvemlNEl0RqG20UFIIFoPKIQN0aACoRK62IFNsovgwba9bbV2ILWv0LL9kw2b6OXzszJP1aRMB-0K_cTnCwcxRYc:1qyE8J:uquwZyZrPO_5a5_JeFBJEoUlC_BjeKnSjxDMWyJyx-s', '2023-11-15 16:31:55.265462'),
('5tzb05utbk4u4hf2xca2wliyxyofn5w4', '.eJxVjssKwjAQRX9Fsi4hrzGtS_d-Q0lmoq3KBNrGjfjvplDBLu-5D-5b9KEsQ1_mNPUjiZPQyovmn8aAj8SrRffAtywx8zKNUa4RubmzvGRKz_OW3Q0MYR5qu9NtNAk1AUVPlo4OjKEO0NpkLKAGr4L14QpK-7ZSp5JDQkjOgfOmjpb1YT3YiJFfmJ919VAxZ97pWPgnPl_os0Yu:1qyCUn:ra3bWbRo81Wt83n9wHgEyf9qCmbTcIZ89lBlJe7Zwn8', '2023-11-15 14:47:01.771000'),
('7esowx0lme0ceha9c6fw5os7dmq2mape', '.eJxVjDsOwyAQBe9CHSEDXrKkTJ8zoF0-wUmEJWOqKHePkNy4nZn3vqIvUdwcXoSnvhffW9r8QMKhOEGm8E51mPii-lxlWOu-LSxHIg_b5GON6XM_2tNBoVbGGiwgWbI468xIgBlYQTbx6gJhVpYRNLKb0MzRuOSMTWgmMBA1gxK_P6ufOc4:1qxgoJ:qiAvPf4iPtErvmosZGcPQ9bXbf3_efz4tvSVUGP7AEE', '2023-11-14 04:57:03.249027'),
('7rbrf5lobizox44u78k6knnolmpgyv5c', '.eJxVjE0OwiAQRq9iWBtSBAZw6d4zNDNAbbWBpBQ3xrtLk7ro8n0_78PqFNjVuTPrsa5jX0tc-i1izrFDSOhfMW1NeGJ6ZO5zWpeJ-Dbhe1v4PYc43_btQTBiGds7wiDkECxZq4xRoMB7Cx3ozqAGCEIP2ssoFRIIgouU1giFGgl1Z2Ns0im9fZ6b69Qg5XRgqukP3x8jJUX3:1qwg5S:uC3py2b6c_0vCglrnQk5Kld18Mqksps245Oyo0wudO8', '2023-11-11 09:58:34.641573'),
('948ruot20aubcv7igpa9o12elkd9dml5', '.eJxVjE0OgyAQRq_SsG4IoCB06b5nMAMM1dYMiUo3Te9eTOzC5ft-3oeVKbKbU1c2QNnGoay4DHvEnGKn0EN4Ie1NfAI9Mg-ZtmXyfJ_wo135PUec-2N7EoywjvXdGUyttAKURpm0g6ia2CprhfIGRGtQekydThIdymiaRgEmI0RwOlppqnSid8hzdV0qUKYT-0J_-P4ANJtGPg:1qsFTY:lFxVcbB9MLOzAqYms2oxGoNp9JyS-vIC_IE4e6f25S0', '2023-10-30 04:45:08.423943'),
('9a06q341m4ia4lz3lvdrwirz785s4o3q', '.eJxVjssKwjAQRX9Fsi4hzcM0Lt37DWWSTGy1TKBt3Ij_bgoV7PK-DvfNeijr0JcF536M7MJaYVjz73oIT6Qtig-ge-Yh0zqPnm8VvqcLv-WI03XvHgADLENdO4EpWaN0p9tOKgfGuQjSKQSJWgQfvLUakzyHaECZoL0A76KMBpOzqULL9rAebNhIr5CnSj1VmzIdtC_0E58vL8FHZw:1qy8FB:wpDWs-HOiWWjVkxLKqWxqzw5WNtwytyMKvwTbwNH_xw', '2023-11-15 10:14:37.077759'),
('b4s1lorhyaah7tcanudi8kcvmwdxcj3j', '.eJxVjE0OwiAQRq9iWBvCgFJw6d4zNAMz2moDSSlujHeXJnXR5ft-3kfUkcTFwlH0WJehr4Xnfo2EBbELA8YXp7WhJ6ZHljGnZR6DXCdya4u8ZeLpum13ggHL0N5B2cBktIXoWXn0jlTQxM4YBAWO1Z18AHBk8cyusye0ugN2nk2nnG7SMb1jnprr0CDltONQ0x--PzRJRgs:1qsVf9:LX5EJEmEYI4U0SZzT2GnHz-BAYosHCQpqE9CPOXCWcE', '2023-10-30 22:02:11.506304'),
('b5u3g02cniaf1dgje4gjf1wu1s94v43k', '.eJxVjDkOgzAQRa8SuY4svIDHKelzBjTeAgkaS4DTRLl7jEQKyveX92FlCuwmr2zAso1DWeMy7AmT7JQ59K9IexGeSI_MfaZtmRzfJ_xoV37PIc79sT0JRlzH-la-M52UJonWKNQ2OggJROMBhbAhGlQgVEIXW7BJthE82KazjdYOpPZVOtHb57m6LhUo04ldoT98f7qeRYc:1qqTso:WZ1frzW7Qyww0LG1hKYnCM29kgKcA6y9G4PN7z6M5CY', '2023-10-25 07:43:54.066708'),
('etfxsxmzwdlqo40c5adam73bl5242e0o', '.eJxVjDkOwjAQRa-CXCPLS-KFkp4zRLZnTAJoLCUxDeLuOFIoUr6_vA-rE7CLF2c2hLqOQ11wHraIecEOYQzpibQ18Ah0LzwVWucp8m3C93bhtwL4uu7bg2AMy9jeLlhplE0CfIIOJRoZXeqyQNmZjFFCLzNm6YRxqBWEBML2TmkLWvdeNelE71RezXVqQIUOHCv94fsDTlNGbA:1qwGNz:gLtWWsKk3vuY9PjIKeClbGo-VjheRpljqYqLjagqwvU', '2023-11-10 06:31:59.941333'),
('gc37tbo3pf5frcnv9i2lnd1twsemx111', '.eJxVjksOgyAURbfSMDYE-QkdOu8aDLwH1dZAotJJ070XE5vU4f2d3DcZXNnGoaxhGSYkV2I1af5N7-AZ0p7gw6V7ppDTtkye7hV6pCu9ZQxzf3RPgNGtY10ba9uo0BqBnWKeoeSMtSC6qDRqABV5FzQXDgzzGDmiRGOFk0EyiyJUaNkPWt2QKb0gzxV6qW7K6aR9ST_x-QKb-EaC:1qtTbV:ULgeBVjvmBBr4o3igGmnPIfG-gmd4zuw0UVoN5vO8rM', '2023-11-02 14:02:25.558561'),
('hwjr30rw1h83aqsidloopa063n26z278', '.eJxVjDkOwjAQRe_iGlkTO-OFkp4zWDNecAA5UpYKcXewlCbte-__j9inJK7eXkSgfathX_MSOhLeihNkiq_cuklPao9Zxrlty8SyJ_Kwq7zPKb9vR3s6qLTW_xq9KREtRlucBeWNBs2IoBLoMVJiALYGUx6KG8mxBsXeeSICNSBl8f0BlVU5_A:1qu5aT:mRCHMPtP7wVovBniva7Zgewxtjtdl2oYr7raoolmFBo', '2023-11-04 06:35:53.704859'),
('jyh8ayql9xkx4dnqb3aqpk8t2zlblgwb', '.eJxVjE0OgjAQRq9iujZNARlalu49gTHNdDoISlpDwY3x7paExLB838_7iGXwotXFUVhc5t4uiSe7RkIXYhc6pCeHtfEPDPcoKYZ5GpxcJ3Jrk7xEz-N52-4EPaY-v9E0-mQ8ms6A7wiZGsBKG-iUK41SjqFRAGAI6qosGWpT68rVoIgajZSlQ3hTHLPrkCHEsGO3hD8kHplm9ja-5iGGJNrr7fsDoVhOSw:1qy3GP:NFtValc-CGQI8yYIiHsRmQfuQEtAJ-WjA55GAT49_RU', '2023-11-15 04:55:33.157200'),
('l7tcqdnte9k2wx3hctdm74a4nhdem4lr', '.eJxVjMsOgjAQRX_FdG2aoQXKuGTvN5DpS1AyTYC6Mf67JcEFy3Pu4yPy5MWtAriKgfI2DnkNy7A7UaQ4WUvuFXiP_JP4kaRLvC2TlXtFHukq78mHuT-6p4OR1rGsg-uCNh5ibQEMBDDkWgQ0VCE0AbuI1HqNpAwqiq3RtdbUVHU0FkGpcjrx26W5fF0KcOIT28x_-P4AaFZGBg:1qvuUp:R5eEf1AEH59UT71NsQ-pJvGDjCdgNdgEYiCdHtiiH4E', '2023-11-09 07:09:35.556193'),
('ntz652f7or50kb3m6uemgidedz8sqj46', '.eJxVjE0OgyAQRq_SsG4IMirSpfuewQwMVlszJCrdNL17IbELl-_7eR-RZhI3C1cxYNqnIW1hHUokLIhT6NC_ApeGnsiPKH3kfZ2dLBN5tJu8RwpLf2xPggm3Kb9x1EQNGVSKqGoC1J0GZTq03qBTNlCL5MgGQFOBVq0GqPWoLTSYb0U689vHJbsuGTjyiV3iP3x_YBxGkQ:1qwkfj:Oru7meD7DUCGuZlpo_wLZ1Zit2EAw2GAK-mih6Z7OIA', '2023-11-11 14:52:19.999877'),
('qh8f8z9n6rnnqmf4vpch4iu5lqt4qu2p', '.eJxVjDsOgzAQRK8SuY4szPoDKelzBrReL4EE2RLgNFHuHiORgvLNvJmPyFMQNwdX0WPexj6vvPR7JByIU-iRXhz3JjwxPpKkFLdl8nJX5NGu8p4Cz93hng5GXMeyNtYOWDvDLaAiCLplA-AtuRo8AyNopsaYQTWNNcRK-yLqamCsKq2onE7xTWkuX5cCMcUT-xz_8P0BPfZGYA:1qy9X9:TCjXSnXx4sMvM9F5EPgylImxwQWXUh9QFiBi4iRAbOc', '2023-11-15 11:37:15.429894'),
('r11lxippdibankdbbvwj0eqjxgvfpw45', '.eJxVjDsOgzAQRK8SuY4szPoDKelzBrReL4EE2RLgNFHuHiORgvLNvJmPyFMQNwdX0WPexj6vvPR7JByIU-iRXhz3JjwxPpKkFLdl8nJX5NGu8p4Cz93hng5GXMeyNtYOWDvDLaAiCLplA-AtuRo8AyNopsaYQTWNNcRK-yLqamCsKq2onE7xTWkuX5cCMcUT-xz_8P0BPfZGYA:1qyOvu:OkzcUP5kIy773Dwy5TBd_fVdPrYwBWcOicJAt_WYIYY', '2023-11-16 04:03:50.815623'),
('r2ns5ouc1wvw3epwb9hk1vugvzxl6baz', '.eJxVjMsOwiAQRX_FsDakAYYBl-77Dc3wstUGkra4Mf67NKmLLs99nA-rU2A3Y65soLqNQ13jMuwRM4adQkf-FfPehCflR-G-5G2ZHN8n_GhX3pcQ5_uxPQlGWsf2Vj4aEsbLZFElCIjKauOEdiik0glTJzQARaUVWLQOZScR0GkimQCadMpvX-bmujTIJZ_Y1fyH7w8NL0WF:1qu9P8:90Ux-Pyx_izAtQWPOwjIME9JJBN8y3QApAFtrzgUMTg', '2023-11-04 10:40:26.076793'),
('va9bu9eb59c9za5kw436g8mb7zn23ftj', '.eJxVjE0OwiAQRq9iWBtCiwyMS_eeoRkGaqsNJG1xY7y7NKmLLt_38z6ijEFcXXMWHZV16MoS526LhGvEIfTEr5i2JjwpPbLknNZ59HKbyL1d5D2HON327UEw0DLUN6F1FwyEPULomSJbIO0QeuVbVMpHsAoAkMHoto1g0DjtDShm64irdExvzlN1nSqknA7sS_rD9wc_DkY1:1qxOkR:YKaiBifcE84MfwBG8W-VDJIKrryaQnMkNQJI2j_AZ8Q', '2023-11-13 09:39:51.181086'),
('vgdigmfxjg8pjy5y5908w2bjvtcrm71y', '.eJxVjEEOwiAQRa9iWBsyFKTg0r1naAaY2moDSSlujHcXkrroZpL3_p__YWUO7CpAntmAZZuGkmkdmmNVsoN16F8UWxSeGB-J-xS3dXa8VfieZn5PgZbb3j0MTJin-g291cKCVqMGZyGMzvheazS6E_UaAAQCcYHQUVDKkgRJozRKmg6daKNzfPu01K1ThZjigV2Jf_j-ADtjRcg:1qxmn3:VELO-epFEbhAhju8P4Jv0b4DqDmU5HLkdgTUi-SeFuk', '2023-11-14 11:20:09.107175'),
('z95cv256h4hg37y67u57rpr7blx8xbt9', '.eJxVjskOgjAURX_FdE0aOkBfXbr3G8jrJKh5TYC6Mf67JcFElnc6uW82YFnHoSxxHqbAzkyy5t9z6B-RtiDckW6Z-0zrPDm-VfieLvyaQ3xe9u4BMOIy1rXyvemlNEl0RqG20UFIIFoPKIQN0aACoRK62IFNsovgwba9bbV2ILWv0LL9kw2b6OXzszJP1aRMB-0K_cTnCwcxRYc:1qqsuj:wLqArDCKLc6oGUNjv-7RKAV2lLDOoxX9sha8ZwRFirw', '2023-10-26 10:27:33.564818'),
('zruotryzz0qlubm9tiiz5o3az8ehone7', '.eJxVjE0OgyAQRq_SsG4IMirSpfuewQwMVlszJCrdNL17IbELl-_7eR-RZhI3C1cxYNqnIW1hHUokLIhT6NC_ApeGnsiPKH3kfZ2dLBN5tJu8RwpLf2xPggm3Kb9x1EQNGVSKqGoC1J0GZTq03qBTNlCL5MgGQFOBVq0GqPWoLTSYb0U689vHJbsuGTjyiV3iP3x_YBxGkQ:1qxNam:Mq2BzEbTPKCG9R5sM8ySMWZqutWsvPNl4QC8ffeCzlA', '2023-11-13 08:25:48.348364');

-- --------------------------------------------------------

--
-- Table structure for table `itemstable`
--

CREATE TABLE `itemstable` (
  `Itemid` int(11) NOT NULL,
  `Itemname` varchar(100) NOT NULL,
  `Pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `producttable`
--

CREATE TABLE `producttable` (
  `Pid` int(11) NOT NULL,
  `Pname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app1_accounts`
--
ALTER TABLE `app1_accounts`
  ADD PRIMARY KEY (`accountsid`),
  ADD KEY `app1_accounts_cid_id_ca072561_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_accounts1`
--
ALTER TABLE `app1_accounts1`
  ADD PRIMARY KEY (`accounts1id`),
  ADD KEY `app1_accounts1_cid_id_073c043d_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_accountype`
--
ALTER TABLE `app1_accountype`
  ADD PRIMARY KEY (`accountypeid`),
  ADD KEY `app1_accountype_cid_id_b591dd7d_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_addac`
--
ALTER TABLE `app1_addac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app1_addtax1`
--
ALTER TABLE `app1_addtax1`
  ADD PRIMARY KEY (`addtax1id`),
  ADD KEY `app1_addtax1_cid_id_90eebb52_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_advancepayment`
--
ALTER TABLE `app1_advancepayment`
  ADD PRIMARY KEY (`advancepaymentid`),
  ADD KEY `app1_advancepayment_cid_id_796af5b3_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_attendance`
--
ALTER TABLE `app1_attendance`
  ADD PRIMARY KEY (`atid`),
  ADD KEY `app1_attendance_cid_id_0dbac5c5_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_balance_sheet`
--
ALTER TABLE `app1_balance_sheet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_balance_sheet_bill_id_f43716ee_fk_app1_purchasebill_billid` (`bill_id`),
  ADD KEY `app1_balance_sheet_bill_pymnt_id_904d1aa1_fk_app1_purc` (`bill_pymnt_id`),
  ADD KEY `app1_balance_sheet_cid_id_4ea9abf0_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_balance_sheet_debit_id_0a4ac84e_fk_app1_purc` (`debit_id`),
  ADD KEY `app1_balance_sheet_expnc_id_93a7d5e7_fk_app1_purc` (`expnc_id`),
  ADD KEY `app1_balance_sheet_inv_pymnt_id_186cf926_fk_app1_paym` (`inv_pymnt_id`),
  ADD KEY `app1_balance_sheet_invc_id_457c4397_fk_app1_invoice_invoiceid` (`invc_id`);

--
-- Indexes for table `app1_bankaccount`
--
ALTER TABLE `app1_bankaccount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_bankaccount_holder_id_c63943f1_fk_app1_bankaccountholder_id` (`holder_id`);

--
-- Indexes for table `app1_bankaccountholder`
--
ALTER TABLE `app1_bankaccountholder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app1_bankconfiguration`
--
ALTER TABLE `app1_bankconfiguration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_bankconfigurati_holder_id_56a67bd6_fk_app1_bank` (`holder_id`);

--
-- Indexes for table `app1_bankingdetails`
--
ALTER TABLE `app1_bankingdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_bankingdetails_holder_id_1eb8ae08_fk_app1_bank` (`holder_id`);

--
-- Indexes for table `app1_bankings_g`
--
ALTER TABLE `app1_bankings_g`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_bankings_g_cid_id_59ab58bb_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_banking_payment`
--
ALTER TABLE `app1_banking_payment`
  ADD PRIMARY KEY (`bnkpymid`),
  ADD KEY `app1_banking_payment_accounts1id_id_cab1cd60_fk_app1_acco` (`accounts1id_id`),
  ADD KEY `app1_banking_payment_cid_id_3c562db5_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_bankstatement`
--
ALTER TABLE `app1_bankstatement`
  ADD PRIMARY KEY (`bankstatementid`),
  ADD KEY `app1_bankstatement_cid_id_00a3fc3b_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_bank_transactions`
--
ALTER TABLE `app1_bank_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_bank_transactions_banking_id_4c981767_fk_app1_bankings_g_id` (`banking_id`),
  ADD KEY `app1_bank_transactions_cid_id_fd31a24c_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_bills`
--
ALTER TABLE `app1_bills`
  ADD PRIMARY KEY (`billid`),
  ADD KEY `app1_bills_cid_id_d648c3f6_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_bundle`
--
ALTER TABLE `app1_bundle`
  ADD PRIMARY KEY (`bundleid`),
  ADD KEY `app1_bundle_cid_id_82c2ec98_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_challan`
--
ALTER TABLE `app1_challan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_challan_customer_id_3cf10fb1_fk_app1_customer_customerid` (`customer_id`),
  ADD KEY `app1_challan_cid_id_6ba57ec3_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_challanitem`
--
ALTER TABLE `app1_challanitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_challanitem_cid_id_dd40e241_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_challanitem_dl_id_37225417_fk_app1_challan_id` (`dl_id`);

--
-- Indexes for table `app1_cheqs`
--
ALTER TABLE `app1_cheqs`
  ADD PRIMARY KEY (`chequeid`),
  ADD KEY `app1_cheqs_cid_id_ff8a2ca6_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_company`
--
ALTER TABLE `app1_company`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `app1_company_id_id_84084c19_fk_auth_user_id` (`id_id`);

--
-- Indexes for table `app1_credit`
--
ALTER TABLE `app1_credit`
  ADD PRIMARY KEY (`creditnoteid`),
  ADD KEY `app1_credit_cid_id_40b75237_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_creditperiod`
--
ALTER TABLE `app1_creditperiod`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_creditperiod_cid_id_4b232f8a_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_currencies`
--
ALTER TABLE `app1_currencies`
  ADD PRIMARY KEY (`currencyid`),
  ADD KEY `app1_currencies_cid_id_b6e5db37_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_customer`
--
ALTER TABLE `app1_customer`
  ADD PRIMARY KEY (`customerid`),
  ADD KEY `app1_customer_cid_id_607bad1d_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_customize`
--
ALTER TABLE `app1_customize`
  ADD PRIMARY KEY (`customizeid`),
  ADD KEY `app1_customize_cid_id_059fe662_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_cust_statment`
--
ALTER TABLE `app1_cust_statment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_cust_statment_cid_id_158fa5cf_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_cust_statment_inv_id_909bdfca_fk_app1_invoice_invoiceid` (`inv_id`),
  ADD KEY `app1_cust_statment_pay_id_449be4e4_fk_app1_payment_paymentid` (`pay_id`);

--
-- Indexes for table `app1_debitnotecomments`
--
ALTER TABLE `app1_debitnotecomments`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `app1_debitnotecomments_cid_id_b00c3a11_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_debitnotecommen_debid_id_257aa040_fk_app1_purc` (`debid_id`);

--
-- Indexes for table `app1_delayedcharge`
--
ALTER TABLE `app1_delayedcharge`
  ADD PRIMARY KEY (`delayedchargeid`),
  ADD KEY `app1_delayedcharge_cid_id_b9dff420_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_employee`
--
ALTER TABLE `app1_employee`
  ADD PRIMARY KEY (`employeeid`),
  ADD KEY `app1_employee_cid_id_62659cb7_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_employeeloan`
--
ALTER TABLE `app1_employeeloan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_employeeloan_company_id_375b514a_fk_app1_company_cid` (`company_id`),
  ADD KEY `app1_employeeloan_employee_id_384b338c_fk_app1_payr` (`employee_id`);

--
-- Indexes for table `app1_employee_loan_tran`
--
ALTER TABLE `app1_employee_loan_tran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_employee_loan_tran_cid_id_7958a5a0_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_employee_loan_t_emploee_loan_id_ff29818f_fk_app1_empl` (`emploee_loan_id`),
  ADD KEY `app1_employee_loan_t_employee_id_635e0892_fk_app1_payr` (`employee_id`);

--
-- Indexes for table `app1_estimate`
--
ALTER TABLE `app1_estimate`
  ADD PRIMARY KEY (`estimateid`),
  ADD KEY `app1_estimate_cid_id_983a0fc3_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_estimate_item`
--
ALTER TABLE `app1_estimate_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_estimate_item_cid_id_f7ace410_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_estimate_item_estimate_id_1a035794_fk_app1_esti` (`estimate_id`);

--
-- Indexes for table `app1_etransporter`
--
ALTER TABLE `app1_etransporter`
  ADD PRIMARY KEY (`etransporterid`),
  ADD KEY `app1_etransporter_cid_id_f93acf37_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_ewayinv`
--
ALTER TABLE `app1_ewayinv`
  ADD PRIMARY KEY (`ewayinvid`),
  ADD KEY `app1_ewayinv_cid_id_4ceded9b_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_expences`
--
ALTER TABLE `app1_expences`
  ADD PRIMARY KEY (`expencesid`),
  ADD KEY `app1_expences_cid_id_2cd98c8f_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_expenseaccount`
--
ALTER TABLE `app1_expenseaccount`
  ADD PRIMARY KEY (`expenseid`),
  ADD KEY `app1_expenseaccount_cid_id_df816740_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_expenseaccount_expaccountypid_id_67312bdf_fk_app1_acco` (`expaccountypid_id`);

--
-- Indexes for table `app1_e_waybills`
--
ALTER TABLE `app1_e_waybills`
  ADD PRIMARY KEY (`ewbillid`),
  ADD KEY `app1_e_waybills_cid_id_d7471c25_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_e_waybills_cust_id_86fa6d89_fk_app1_customer_customerid` (`cust_id`),
  ADD KEY `app1_e_waybills_transportation_id_8516d744_fk_app1_tran` (`transportation_id`);

--
-- Indexes for table `app1_e_waybill_item`
--
ALTER TABLE `app1_e_waybill_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_e_waybill_item_bill_id_9a7c79cb_fk_app1_e_waybills_ewbillid` (`bill_id`),
  ADD KEY `app1_e_waybill_item_cid_id_d1301bf2_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_holidays`
--
ALTER TABLE `app1_holidays`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `app1_holidays_cid_id_129557b5_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_incomeaccount`
--
ALTER TABLE `app1_incomeaccount`
  ADD PRIMARY KEY (`incomeid`),
  ADD KEY `app1_incomeaccount_cid_id_094b46f8_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_incomeaccount_expenceincomeid_id_f4304840_fk_app1_expe` (`expenceincomeid_id`);

--
-- Indexes for table `app1_inventory`
--
ALTER TABLE `app1_inventory`
  ADD PRIMARY KEY (`inventoryid`),
  ADD KEY `app1_inventory_cid_id_f2e81863_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_invoice`
--
ALTER TABLE `app1_invoice`
  ADD PRIMARY KEY (`invoiceid`),
  ADD KEY `app1_invoice_cid_id_a9c8e9b5_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_invoice_item`
--
ALTER TABLE `app1_invoice_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_invoice_item_cid_id_d5551fd6_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_invoice_item_invoice_id_d69af390_fk_app1_invoice_invoiceid` (`invoice_id`);

--
-- Indexes for table `app1_itemstock`
--
ALTER TABLE `app1_itemstock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_itemstock_bill_id_be483665_fk_app1_purchasebill_billid` (`bill_id`),
  ADD KEY `app1_itemstock_cid_id_3d628e6c_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_itemstock_debit_id_e5dce80b_fk_app1_purchasedebit_pdebitid` (`debit_id`),
  ADD KEY `app1_itemstock_inv_id_0719f348_fk_app1_invoice_invoiceid` (`inv_id`),
  ADD KEY `app1_itemstock_stock_id_296b5432_fk_app1_stockadjust_id` (`stock_id`);

--
-- Indexes for table `app1_itemtable`
--
ALTER TABLE `app1_itemtable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_itemtable_cid_id_ae25009c_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_item_stock`
--
ALTER TABLE `app1_item_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_item_stock_bitm_id_3769787c_fk_app1_purchasebill_billid` (`bitm_id`),
  ADD KEY `app1_item_stock_cid_id_29fc400c_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_item_stock_ditm_id_79883830_fk_app1_purchasedebit1_id` (`ditm_id`),
  ADD KEY `app1_item_stock_initm_id_d7d4d972_fk_app1_invoice_item_id` (`initm_id`),
  ADD KEY `app1_item_stock_itm_id_e9fd7168_fk_app1_itemtable_id` (`itm_id`);

--
-- Indexes for table `app1_loan_account`
--
ALTER TABLE `app1_loan_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_loan_account_cid_id_177215ad_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_loan_duration`
--
ALTER TABLE `app1_loan_duration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_loan_duration_cid_id_0dacb0d2_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_loan_transaction`
--
ALTER TABLE `app1_loan_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_loan_transaction_cid_id_36837f2d_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_loan_transaction_loan_id_19e07fd4_fk_app1_loan_account_id` (`loan_id`);

--
-- Indexes for table `app1_mailingaddress`
--
ALTER TABLE `app1_mailingaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_mailingaddress_holder_id_5758cecc_fk_app1_bank` (`holder_id`);

--
-- Indexes for table `app1_man_journal_comment`
--
ALTER TABLE `app1_man_journal_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_man_journal_comment_proj_id_776fc32a_fk_app1_mjournal_id` (`proj_id`);

--
-- Indexes for table `app1_mjournal`
--
ALTER TABLE `app1_mjournal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_mjournal_cid_id_65006abc_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_mjournal1`
--
ALTER TABLE `app1_mjournal1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_mjournal1_cid_id_819ccb36_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_mjournal1_mjrnl_id_76cea0d8_fk_app1_mjournal_id` (`mjrnl_id`);

--
-- Indexes for table `app1_noninventory`
--
ALTER TABLE `app1_noninventory`
  ADD PRIMARY KEY (`noninventoryid`),
  ADD KEY `app1_noninventory_cid_id_d0447e15_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_openingbalance`
--
ALTER TABLE `app1_openingbalance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_openingbalance_holder_id_26018948_fk_app1_bank` (`holder_id`);

--
-- Indexes for table `app1_otp_password`
--
ALTER TABLE `app1_otp_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_otp_password_user_ckeck_id_684cddab_fk_auth_user_id` (`user_ckeck_id`);

--
-- Indexes for table `app1_paydowncreditcard`
--
ALTER TABLE `app1_paydowncreditcard`
  ADD PRIMARY KEY (`paycreditcardid`),
  ADD KEY `app1_paydowncreditcard_cid_id_148fd035_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_payment`
--
ALTER TABLE `app1_payment`
  ADD PRIMARY KEY (`paymentid`),
  ADD KEY `app1_payment_cid_id_a954b426_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_paymentitems`
--
ALTER TABLE `app1_paymentitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_paymentitems_cid_id_247e759a_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_paymentitems_payment_id_d8448ab7_fk_app1_payment_paymentid` (`payment_id`);

--
-- Indexes for table `app1_paymentmethod`
--
ALTER TABLE `app1_paymentmethod`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_paymentmethod_cid_id_995ea7bd_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_paymentterms`
--
ALTER TABLE `app1_paymentterms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_paymentterms_cid_id_0cf8ace6_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_paymnt_made_comments`
--
ALTER TABLE `app1_paymnt_made_comments`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `app1_paymnt_made_comments_cid_id_a69669e9_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_paymnt_made_com_empid_id_b003e87b_fk_app1_purc` (`empid_id`);

--
-- Indexes for table `app1_payrollcomments`
--
ALTER TABLE `app1_payrollcomments`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `app1_payrollcomments_cid_id_a9d1dd27_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_payrollcomments_empid_id_c599c51a_fk_app1_payr` (`empid_id`);

--
-- Indexes for table `app1_payrollemployee`
--
ALTER TABLE `app1_payrollemployee`
  ADD PRIMARY KEY (`employeeid`),
  ADD KEY `app1_payrollemployee_cid_id_7a7092cd_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_payslip`
--
ALTER TABLE `app1_payslip`
  ADD PRIMARY KEY (`payslipid`),
  ADD KEY `app1_payslip_cid_id_3f97b6d6_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_pricelist`
--
ALTER TABLE `app1_pricelist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_pricelist_cid_id_3420c93d_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_pricelist_individual`
--
ALTER TABLE `app1_pricelist_individual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_pricelist_indiv_pricelist1_id_8f6efdfd_fk_app1_pric` (`pricelist1_id`);

--
-- Indexes for table `app1_profit_loss`
--
ALTER TABLE `app1_profit_loss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_profit_loss_cid_id_4c1a45e2_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_profit_loss_expnc_id_0f818263_fk_app1_purc` (`expnc_id`),
  ADD KEY `app1_profit_loss_inv_id_0a250dea_fk_app1_invoice_invoiceid` (`inv_id`),
  ADD KEY `app1_profit_loss_pbill_id_e08082a2_fk_app1_purchasebill_billid` (`pbill_id`),
  ADD KEY `app1_profit_loss_pdebit_id_14c84d2a_fk_app1_purc` (`pdebit_id`);

--
-- Indexes for table `app1_purchasebill`
--
ALTER TABLE `app1_purchasebill`
  ADD PRIMARY KEY (`billid`),
  ADD KEY `app1_purchasebill_cid_id_74fd63ca_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_purchasebill_item`
--
ALTER TABLE `app1_purchasebill_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_purchasebill_it_bill_id_988d6655_fk_app1_purc` (`bill_id`),
  ADD KEY `app1_purchasebill_item_cid_id_9e7dc068_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_purchasedebit`
--
ALTER TABLE `app1_purchasedebit`
  ADD PRIMARY KEY (`pdebitid`),
  ADD KEY `app1_purchasedebit_cid_id_0cb0af06_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_purchasedebit1`
--
ALTER TABLE `app1_purchasedebit1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_purchasedebit1_cid_id_471a9fd6_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_purchasedebit1_pdebit_id_f0e19642_fk_app1_purc` (`pdebit_id`);

--
-- Indexes for table `app1_purchaseorder`
--
ALTER TABLE `app1_purchaseorder`
  ADD PRIMARY KEY (`porderid`),
  ADD KEY `app1_purchaseorder_cid_id_fc397c08_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_purchaseorder_item`
--
ALTER TABLE `app1_purchaseorder_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_purchaseorder_item_cid_id_06cd1857_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_purchaseorder_i_porder_id_2884add5_fk_app1_purc` (`porder_id`);

--
-- Indexes for table `app1_purchasepayment`
--
ALTER TABLE `app1_purchasepayment`
  ADD PRIMARY KEY (`pymntid`),
  ADD KEY `app1_purchasepayment_cid_id_dd158fda_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_purchasepayment1`
--
ALTER TABLE `app1_purchasepayment1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_purchasepayment1_cid_id_39819e66_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_purchasepayment_pymnt_id_e61500b2_fk_app1_purc` (`pymnt_id`);

--
-- Indexes for table `app1_purchase_expense`
--
ALTER TABLE `app1_purchase_expense`
  ADD PRIMARY KEY (`expenseid`),
  ADD KEY `app1_purchase_expense_cid_id_0021cef9_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_recinvoice`
--
ALTER TABLE `app1_recinvoice`
  ADD PRIMARY KEY (`recinvoiceid`),
  ADD KEY `app1_recinvoice_cid_id_54a189f0_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_recinvoice_item`
--
ALTER TABLE `app1_recinvoice_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_recinvoice_item_cid_id_97506670_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_recinvoice_item_recinvoice_id_533adf7b_fk_app1_reci` (`recinvoice_id`);

--
-- Indexes for table `app1_recon1`
--
ALTER TABLE `app1_recon1`
  ADD PRIMARY KEY (`recon1id`),
  ADD KEY `app1_recon1_cid_id_958c7d0e_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_recordpay`
--
ALTER TABLE `app1_recordpay`
  ADD PRIMARY KEY (`recordpayid`),
  ADD KEY `app1_recordpay_cid_id_f3d93b71_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_recterm`
--
ALTER TABLE `app1_recterm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_recterm_cid_id_43820625_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_recurringbill_item`
--
ALTER TABLE `app1_recurringbill_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_recurringbill_i_bill_id_7b8cce3b_fk_app1_recu` (`bill_id`),
  ADD KEY `app1_recurringbill_item_cid_id_34340a55_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_recurring_bill`
--
ALTER TABLE `app1_recurring_bill`
  ADD PRIMARY KEY (`rbillid`),
  ADD KEY `app1_recurring_bill_cid_id_c7215e8a_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_recurring_expense`
--
ALTER TABLE `app1_recurring_expense`
  ADD PRIMARY KEY (`recur_expenseid`),
  ADD KEY `app1_recurring_expense_cid_id_656cef6e_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_repeatevery`
--
ALTER TABLE `app1_repeatevery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_repeatevery_cid_id_e6da08a6_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_repeatevry`
--
ALTER TABLE `app1_repeatevry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_repeatevry_cid_id_1af2908f_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_retainerinvoiceitems`
--
ALTER TABLE `app1_retainerinvoiceitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_retainerinvoice_retainer_invoice_id_72942827_fk_app1_reta` (`retainer_invoice_id`);

--
-- Indexes for table `app1_retainerinvoices`
--
ALTER TABLE `app1_retainerinvoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_retainerinvoices_cid_id_b26422fb_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_salescreditnote`
--
ALTER TABLE `app1_salescreditnote`
  ADD PRIMARY KEY (`screditid`),
  ADD KEY `app1_salescreditnote_cid_id_ffdd2ff5_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_salescreditnote1`
--
ALTER TABLE `app1_salescreditnote1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_salescreditnote_scredit_id_f483d8b1_fk_app1_sale` (`scredit_id`);

--
-- Indexes for table `app1_salesorder`
--
ALTER TABLE `app1_salesorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_salesorder_cid_id_d98291e0_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_salesrecpts`
--
ALTER TABLE `app1_salesrecpts`
  ADD PRIMARY KEY (`salesrecptsid`),
  ADD KEY `app1_salesrecpts_cid_id_7834f425_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_sales_item`
--
ALTER TABLE `app1_sales_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_sales_item_cid_id_3e6cbf26_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_sales_item_salesorder_id_9684ff15_fk_app1_salesorder_id` (`salesorder_id`);

--
-- Indexes for table `app1_service`
--
ALTER TABLE `app1_service`
  ADD PRIMARY KEY (`serviceid`),
  ADD KEY `app1_service_cid_id_e19684ee_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_sign`
--
ALTER TABLE `app1_sign`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `app1_stockadjust`
--
ALTER TABLE `app1_stockadjust`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_stockadjust_cid_id_4d02b5c6_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_stockreason`
--
ALTER TABLE `app1_stockreason`
  ADD PRIMARY KEY (`reasonid`),
  ADD KEY `app1_stockreason_cid_id_782c2212_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_suplrcredit`
--
ALTER TABLE `app1_suplrcredit`
  ADD PRIMARY KEY (`suppliercreditid`),
  ADD KEY `app1_suplrcredit_cid_id_943a7180_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_supplier`
--
ALTER TABLE `app1_supplier`
  ADD PRIMARY KEY (`supplierid`),
  ADD KEY `app1_supplier_cid_id_53a00add_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_timeact`
--
ALTER TABLE `app1_timeact`
  ADD PRIMARY KEY (`timeactid`),
  ADD KEY `app1_timeact_cid_id_2709432a_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_timeactsale`
--
ALTER TABLE `app1_timeactsale`
  ADD PRIMARY KEY (`timeactsaleid`),
  ADD KEY `app1_timeactsale_cid_id_0dcbffb2_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_transportation`
--
ALTER TABLE `app1_transportation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_transportation_cid_id_11b44dc4_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_unittable`
--
ALTER TABLE `app1_unittable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_unittable_cid_id_0fb94d4c_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_vendor`
--
ALTER TABLE `app1_vendor`
  ADD PRIMARY KEY (`vendorid`),
  ADD KEY `app1_vendor_cid_id_a5de272e_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_vendor_statment`
--
ALTER TABLE `app1_vendor_statment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_vendor_statment_cid_id_4af09180_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_vendor_statment_paymnt_id_621502eb_fk_app1_purc` (`paymnt_id`),
  ADD KEY `app1_vendor_statment_pbill_id_dae0f1ca_fk_app1_purc` (`pbill_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `itemstable`
--
ALTER TABLE `itemstable`
  ADD PRIMARY KEY (`Itemid`);

--
-- Indexes for table `producttable`
--
ALTER TABLE `producttable`
  ADD PRIMARY KEY (`Pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app1_accounts`
--
ALTER TABLE `app1_accounts`
  MODIFY `accountsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_accounts1`
--
ALTER TABLE `app1_accounts1`
  MODIFY `accounts1id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2661;

--
-- AUTO_INCREMENT for table `app1_accountype`
--
ALTER TABLE `app1_accountype`
  MODIFY `accountypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=886;

--
-- AUTO_INCREMENT for table `app1_addac`
--
ALTER TABLE `app1_addac`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_addtax1`
--
ALTER TABLE `app1_addtax1`
  MODIFY `addtax1id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_advancepayment`
--
ALTER TABLE `app1_advancepayment`
  MODIFY `advancepaymentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_attendance`
--
ALTER TABLE `app1_attendance`
  MODIFY `atid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `app1_balance_sheet`
--
ALTER TABLE `app1_balance_sheet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `app1_bankaccount`
--
ALTER TABLE `app1_bankaccount`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app1_bankaccountholder`
--
ALTER TABLE `app1_bankaccountholder`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app1_bankconfiguration`
--
ALTER TABLE `app1_bankconfiguration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app1_bankingdetails`
--
ALTER TABLE `app1_bankingdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app1_bankings_g`
--
ALTER TABLE `app1_bankings_g`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `app1_banking_payment`
--
ALTER TABLE `app1_banking_payment`
  MODIFY `bnkpymid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_bankstatement`
--
ALTER TABLE `app1_bankstatement`
  MODIFY `bankstatementid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_bank_transactions`
--
ALTER TABLE `app1_bank_transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `app1_bills`
--
ALTER TABLE `app1_bills`
  MODIFY `billid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_bundle`
--
ALTER TABLE `app1_bundle`
  MODIFY `bundleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_challan`
--
ALTER TABLE `app1_challan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app1_challanitem`
--
ALTER TABLE `app1_challanitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app1_cheqs`
--
ALTER TABLE `app1_cheqs`
  MODIFY `chequeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_company`
--
ALTER TABLE `app1_company`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `app1_credit`
--
ALTER TABLE `app1_credit`
  MODIFY `creditnoteid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_creditperiod`
--
ALTER TABLE `app1_creditperiod`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `app1_currencies`
--
ALTER TABLE `app1_currencies`
  MODIFY `currencyid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_customer`
--
ALTER TABLE `app1_customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `app1_customize`
--
ALTER TABLE `app1_customize`
  MODIFY `customizeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_cust_statment`
--
ALTER TABLE `app1_cust_statment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `app1_debitnotecomments`
--
ALTER TABLE `app1_debitnotecomments`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_delayedcharge`
--
ALTER TABLE `app1_delayedcharge`
  MODIFY `delayedchargeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_employee`
--
ALTER TABLE `app1_employee`
  MODIFY `employeeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_employeeloan`
--
ALTER TABLE `app1_employeeloan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `app1_employee_loan_tran`
--
ALTER TABLE `app1_employee_loan_tran`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `app1_estimate`
--
ALTER TABLE `app1_estimate`
  MODIFY `estimateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `app1_estimate_item`
--
ALTER TABLE `app1_estimate_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `app1_etransporter`
--
ALTER TABLE `app1_etransporter`
  MODIFY `etransporterid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_ewayinv`
--
ALTER TABLE `app1_ewayinv`
  MODIFY `ewayinvid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_expences`
--
ALTER TABLE `app1_expences`
  MODIFY `expencesid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_expenseaccount`
--
ALTER TABLE `app1_expenseaccount`
  MODIFY `expenseid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_e_waybills`
--
ALTER TABLE `app1_e_waybills`
  MODIFY `ewbillid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app1_e_waybill_item`
--
ALTER TABLE `app1_e_waybill_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app1_holidays`
--
ALTER TABLE `app1_holidays`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `app1_incomeaccount`
--
ALTER TABLE `app1_incomeaccount`
  MODIFY `incomeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_inventory`
--
ALTER TABLE `app1_inventory`
  MODIFY `inventoryid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_invoice`
--
ALTER TABLE `app1_invoice`
  MODIFY `invoiceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `app1_invoice_item`
--
ALTER TABLE `app1_invoice_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `app1_itemstock`
--
ALTER TABLE `app1_itemstock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `app1_itemtable`
--
ALTER TABLE `app1_itemtable`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `app1_item_stock`
--
ALTER TABLE `app1_item_stock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_loan_account`
--
ALTER TABLE `app1_loan_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app1_loan_duration`
--
ALTER TABLE `app1_loan_duration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app1_loan_transaction`
--
ALTER TABLE `app1_loan_transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `app1_mailingaddress`
--
ALTER TABLE `app1_mailingaddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app1_man_journal_comment`
--
ALTER TABLE `app1_man_journal_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_mjournal`
--
ALTER TABLE `app1_mjournal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_mjournal1`
--
ALTER TABLE `app1_mjournal1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_noninventory`
--
ALTER TABLE `app1_noninventory`
  MODIFY `noninventoryid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_openingbalance`
--
ALTER TABLE `app1_openingbalance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app1_otp_password`
--
ALTER TABLE `app1_otp_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_paydowncreditcard`
--
ALTER TABLE `app1_paydowncreditcard`
  MODIFY `paycreditcardid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_payment`
--
ALTER TABLE `app1_payment`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app1_paymentitems`
--
ALTER TABLE `app1_paymentitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app1_paymentmethod`
--
ALTER TABLE `app1_paymentmethod`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_paymentterms`
--
ALTER TABLE `app1_paymentterms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_paymnt_made_comments`
--
ALTER TABLE `app1_paymnt_made_comments`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_payrollcomments`
--
ALTER TABLE `app1_payrollcomments`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_payrollemployee`
--
ALTER TABLE `app1_payrollemployee`
  MODIFY `employeeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `app1_payslip`
--
ALTER TABLE `app1_payslip`
  MODIFY `payslipid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_pricelist`
--
ALTER TABLE `app1_pricelist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_pricelist_individual`
--
ALTER TABLE `app1_pricelist_individual`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_profit_loss`
--
ALTER TABLE `app1_profit_loss`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `app1_purchasebill`
--
ALTER TABLE `app1_purchasebill`
  MODIFY `billid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `app1_purchasebill_item`
--
ALTER TABLE `app1_purchasebill_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `app1_purchasedebit`
--
ALTER TABLE `app1_purchasedebit`
  MODIFY `pdebitid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `app1_purchasedebit1`
--
ALTER TABLE `app1_purchasedebit1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `app1_purchaseorder`
--
ALTER TABLE `app1_purchaseorder`
  MODIFY `porderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app1_purchaseorder_item`
--
ALTER TABLE `app1_purchaseorder_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app1_purchasepayment`
--
ALTER TABLE `app1_purchasepayment`
  MODIFY `pymntid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app1_purchasepayment1`
--
ALTER TABLE `app1_purchasepayment1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app1_purchase_expense`
--
ALTER TABLE `app1_purchase_expense`
  MODIFY `expenseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_recinvoice`
--
ALTER TABLE `app1_recinvoice`
  MODIFY `recinvoiceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `app1_recinvoice_item`
--
ALTER TABLE `app1_recinvoice_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `app1_recon1`
--
ALTER TABLE `app1_recon1`
  MODIFY `recon1id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_recordpay`
--
ALTER TABLE `app1_recordpay`
  MODIFY `recordpayid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_recterm`
--
ALTER TABLE `app1_recterm`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `app1_recurringbill_item`
--
ALTER TABLE `app1_recurringbill_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app1_recurring_bill`
--
ALTER TABLE `app1_recurring_bill`
  MODIFY `rbillid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app1_recurring_expense`
--
ALTER TABLE `app1_recurring_expense`
  MODIFY `recur_expenseid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_repeatevery`
--
ALTER TABLE `app1_repeatevery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_repeatevry`
--
ALTER TABLE `app1_repeatevry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `app1_retainerinvoiceitems`
--
ALTER TABLE `app1_retainerinvoiceitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_retainerinvoices`
--
ALTER TABLE `app1_retainerinvoices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_salescreditnote`
--
ALTER TABLE `app1_salescreditnote`
  MODIFY `screditid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `app1_salescreditnote1`
--
ALTER TABLE `app1_salescreditnote1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app1_salesorder`
--
ALTER TABLE `app1_salesorder`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `app1_salesrecpts`
--
ALTER TABLE `app1_salesrecpts`
  MODIFY `salesrecptsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_sales_item`
--
ALTER TABLE `app1_sales_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `app1_service`
--
ALTER TABLE `app1_service`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_sign`
--
ALTER TABLE `app1_sign`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_stockadjust`
--
ALTER TABLE `app1_stockadjust`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_stockreason`
--
ALTER TABLE `app1_stockreason`
  MODIFY `reasonid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_suplrcredit`
--
ALTER TABLE `app1_suplrcredit`
  MODIFY `suppliercreditid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_supplier`
--
ALTER TABLE `app1_supplier`
  MODIFY `supplierid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_timeact`
--
ALTER TABLE `app1_timeact`
  MODIFY `timeactid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_timeactsale`
--
ALTER TABLE `app1_timeactsale`
  MODIFY `timeactsaleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_transportation`
--
ALTER TABLE `app1_transportation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app1_unittable`
--
ALTER TABLE `app1_unittable`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_vendor`
--
ALTER TABLE `app1_vendor`
  MODIFY `vendorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `app1_vendor_statment`
--
ALTER TABLE `app1_vendor_statment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app1_accounts`
--
ALTER TABLE `app1_accounts`
  ADD CONSTRAINT `app1_accounts_cid_id_ca072561_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_accounts1`
--
ALTER TABLE `app1_accounts1`
  ADD CONSTRAINT `app1_accounts1_cid_id_073c043d_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_accountype`
--
ALTER TABLE `app1_accountype`
  ADD CONSTRAINT `app1_accountype_cid_id_b591dd7d_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_addtax1`
--
ALTER TABLE `app1_addtax1`
  ADD CONSTRAINT `app1_addtax1_cid_id_90eebb52_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_advancepayment`
--
ALTER TABLE `app1_advancepayment`
  ADD CONSTRAINT `app1_advancepayment_cid_id_796af5b3_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_attendance`
--
ALTER TABLE `app1_attendance`
  ADD CONSTRAINT `app1_attendance_cid_id_0dbac5c5_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_balance_sheet`
--
ALTER TABLE `app1_balance_sheet`
  ADD CONSTRAINT `app1_balance_sheet_bill_id_f43716ee_fk_app1_purchasebill_billid` FOREIGN KEY (`bill_id`) REFERENCES `app1_purchasebill` (`billid`),
  ADD CONSTRAINT `app1_balance_sheet_bill_pymnt_id_904d1aa1_fk_app1_purc` FOREIGN KEY (`bill_pymnt_id`) REFERENCES `app1_purchasepayment` (`pymntid`),
  ADD CONSTRAINT `app1_balance_sheet_cid_id_4ea9abf0_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_balance_sheet_debit_id_0a4ac84e_fk_app1_purc` FOREIGN KEY (`debit_id`) REFERENCES `app1_purchasedebit` (`pdebitid`),
  ADD CONSTRAINT `app1_balance_sheet_expnc_id_93a7d5e7_fk_app1_purc` FOREIGN KEY (`expnc_id`) REFERENCES `app1_purchase_expense` (`expenseid`),
  ADD CONSTRAINT `app1_balance_sheet_inv_pymnt_id_186cf926_fk_app1_paym` FOREIGN KEY (`inv_pymnt_id`) REFERENCES `app1_payment` (`paymentid`),
  ADD CONSTRAINT `app1_balance_sheet_invc_id_457c4397_fk_app1_invoice_invoiceid` FOREIGN KEY (`invc_id`) REFERENCES `app1_invoice` (`invoiceid`);

--
-- Constraints for table `app1_bankaccount`
--
ALTER TABLE `app1_bankaccount`
  ADD CONSTRAINT `app1_bankaccount_holder_id_c63943f1_fk_app1_bankaccountholder_id` FOREIGN KEY (`holder_id`) REFERENCES `app1_bankaccountholder` (`id`);

--
-- Constraints for table `app1_bankconfiguration`
--
ALTER TABLE `app1_bankconfiguration`
  ADD CONSTRAINT `app1_bankconfigurati_holder_id_56a67bd6_fk_app1_bank` FOREIGN KEY (`holder_id`) REFERENCES `app1_bankaccountholder` (`id`);

--
-- Constraints for table `app1_bankingdetails`
--
ALTER TABLE `app1_bankingdetails`
  ADD CONSTRAINT `app1_bankingdetails_holder_id_1eb8ae08_fk_app1_bank` FOREIGN KEY (`holder_id`) REFERENCES `app1_bankaccountholder` (`id`);

--
-- Constraints for table `app1_bankings_g`
--
ALTER TABLE `app1_bankings_g`
  ADD CONSTRAINT `app1_bankings_g_cid_id_59ab58bb_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_banking_payment`
--
ALTER TABLE `app1_banking_payment`
  ADD CONSTRAINT `app1_banking_payment_accounts1id_id_cab1cd60_fk_app1_acco` FOREIGN KEY (`accounts1id_id`) REFERENCES `app1_accounts1` (`accounts1id`),
  ADD CONSTRAINT `app1_banking_payment_cid_id_3c562db5_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_bankstatement`
--
ALTER TABLE `app1_bankstatement`
  ADD CONSTRAINT `app1_bankstatement_cid_id_00a3fc3b_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_bank_transactions`
--
ALTER TABLE `app1_bank_transactions`
  ADD CONSTRAINT `app1_bank_transactions_banking_id_4c981767_fk_app1_bankings_g_id` FOREIGN KEY (`banking_id`) REFERENCES `app1_bankings_g` (`id`),
  ADD CONSTRAINT `app1_bank_transactions_cid_id_fd31a24c_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_bills`
--
ALTER TABLE `app1_bills`
  ADD CONSTRAINT `app1_bills_cid_id_d648c3f6_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_bundle`
--
ALTER TABLE `app1_bundle`
  ADD CONSTRAINT `app1_bundle_cid_id_82c2ec98_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_challan`
--
ALTER TABLE `app1_challan`
  ADD CONSTRAINT `app1_challan_cid_id_6ba57ec3_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_challan_customer_id_3cf10fb1_fk_app1_customer_customerid` FOREIGN KEY (`customer_id`) REFERENCES `app1_customer` (`customerid`);

--
-- Constraints for table `app1_challanitem`
--
ALTER TABLE `app1_challanitem`
  ADD CONSTRAINT `app1_challanitem_cid_id_dd40e241_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_challanitem_dl_id_37225417_fk_app1_challan_id` FOREIGN KEY (`dl_id`) REFERENCES `app1_challan` (`id`);

--
-- Constraints for table `app1_cheqs`
--
ALTER TABLE `app1_cheqs`
  ADD CONSTRAINT `app1_cheqs_cid_id_ff8a2ca6_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_company`
--
ALTER TABLE `app1_company`
  ADD CONSTRAINT `app1_company_id_id_84084c19_fk_auth_user_id` FOREIGN KEY (`id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `app1_credit`
--
ALTER TABLE `app1_credit`
  ADD CONSTRAINT `app1_credit_cid_id_40b75237_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_creditperiod`
--
ALTER TABLE `app1_creditperiod`
  ADD CONSTRAINT `app1_creditperiod_cid_id_4b232f8a_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_currencies`
--
ALTER TABLE `app1_currencies`
  ADD CONSTRAINT `app1_currencies_cid_id_b6e5db37_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_customer`
--
ALTER TABLE `app1_customer`
  ADD CONSTRAINT `app1_customer_cid_id_607bad1d_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_customize`
--
ALTER TABLE `app1_customize`
  ADD CONSTRAINT `app1_customize_cid_id_059fe662_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_cust_statment`
--
ALTER TABLE `app1_cust_statment`
  ADD CONSTRAINT `app1_cust_statment_cid_id_158fa5cf_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_cust_statment_inv_id_909bdfca_fk_app1_invoice_invoiceid` FOREIGN KEY (`inv_id`) REFERENCES `app1_invoice` (`invoiceid`),
  ADD CONSTRAINT `app1_cust_statment_pay_id_449be4e4_fk_app1_payment_paymentid` FOREIGN KEY (`pay_id`) REFERENCES `app1_payment` (`paymentid`);

--
-- Constraints for table `app1_debitnotecomments`
--
ALTER TABLE `app1_debitnotecomments`
  ADD CONSTRAINT `app1_debitnotecommen_debid_id_257aa040_fk_app1_purc` FOREIGN KEY (`debid_id`) REFERENCES `app1_purchasedebit` (`pdebitid`),
  ADD CONSTRAINT `app1_debitnotecomments_cid_id_b00c3a11_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_delayedcharge`
--
ALTER TABLE `app1_delayedcharge`
  ADD CONSTRAINT `app1_delayedcharge_cid_id_b9dff420_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_employee`
--
ALTER TABLE `app1_employee`
  ADD CONSTRAINT `app1_employee_cid_id_62659cb7_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_employeeloan`
--
ALTER TABLE `app1_employeeloan`
  ADD CONSTRAINT `app1_employeeloan_company_id_375b514a_fk_app1_company_cid` FOREIGN KEY (`company_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_employeeloan_employee_id_384b338c_fk_app1_payr` FOREIGN KEY (`employee_id`) REFERENCES `app1_payrollemployee` (`employeeid`);

--
-- Constraints for table `app1_employee_loan_tran`
--
ALTER TABLE `app1_employee_loan_tran`
  ADD CONSTRAINT `app1_employee_loan_t_emploee_loan_id_ff29818f_fk_app1_empl` FOREIGN KEY (`emploee_loan_id`) REFERENCES `app1_employeeloan` (`id`),
  ADD CONSTRAINT `app1_employee_loan_t_employee_id_635e0892_fk_app1_payr` FOREIGN KEY (`employee_id`) REFERENCES `app1_payrollemployee` (`employeeid`),
  ADD CONSTRAINT `app1_employee_loan_tran_cid_id_7958a5a0_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_estimate`
--
ALTER TABLE `app1_estimate`
  ADD CONSTRAINT `app1_estimate_cid_id_983a0fc3_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_estimate_item`
--
ALTER TABLE `app1_estimate_item`
  ADD CONSTRAINT `app1_estimate_item_cid_id_f7ace410_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_estimate_item_estimate_id_1a035794_fk_app1_esti` FOREIGN KEY (`estimate_id`) REFERENCES `app1_estimate` (`estimateid`);

--
-- Constraints for table `app1_etransporter`
--
ALTER TABLE `app1_etransporter`
  ADD CONSTRAINT `app1_etransporter_cid_id_f93acf37_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_ewayinv`
--
ALTER TABLE `app1_ewayinv`
  ADD CONSTRAINT `app1_ewayinv_cid_id_4ceded9b_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_expences`
--
ALTER TABLE `app1_expences`
  ADD CONSTRAINT `app1_expences_cid_id_2cd98c8f_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_expenseaccount`
--
ALTER TABLE `app1_expenseaccount`
  ADD CONSTRAINT `app1_expenseaccount_cid_id_df816740_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_expenseaccount_expaccountypid_id_67312bdf_fk_app1_acco` FOREIGN KEY (`expaccountypid_id`) REFERENCES `app1_accountype` (`accountypeid`);

--
-- Constraints for table `app1_e_waybills`
--
ALTER TABLE `app1_e_waybills`
  ADD CONSTRAINT `app1_e_waybills_cid_id_d7471c25_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_e_waybills_cust_id_86fa6d89_fk_app1_customer_customerid` FOREIGN KEY (`cust_id`) REFERENCES `app1_customer` (`customerid`),
  ADD CONSTRAINT `app1_e_waybills_transportation_id_8516d744_fk_app1_tran` FOREIGN KEY (`transportation_id`) REFERENCES `app1_transportation` (`id`);

--
-- Constraints for table `app1_e_waybill_item`
--
ALTER TABLE `app1_e_waybill_item`
  ADD CONSTRAINT `app1_e_waybill_item_bill_id_9a7c79cb_fk_app1_e_waybills_ewbillid` FOREIGN KEY (`bill_id`) REFERENCES `app1_e_waybills` (`ewbillid`),
  ADD CONSTRAINT `app1_e_waybill_item_cid_id_d1301bf2_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_holidays`
--
ALTER TABLE `app1_holidays`
  ADD CONSTRAINT `app1_holidays_cid_id_129557b5_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_incomeaccount`
--
ALTER TABLE `app1_incomeaccount`
  ADD CONSTRAINT `app1_incomeaccount_cid_id_094b46f8_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_incomeaccount_expenceincomeid_id_f4304840_fk_app1_expe` FOREIGN KEY (`expenceincomeid_id`) REFERENCES `app1_expenseaccount` (`expenseid`);

--
-- Constraints for table `app1_inventory`
--
ALTER TABLE `app1_inventory`
  ADD CONSTRAINT `app1_inventory_cid_id_f2e81863_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_invoice`
--
ALTER TABLE `app1_invoice`
  ADD CONSTRAINT `app1_invoice_cid_id_a9c8e9b5_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_invoice_item`
--
ALTER TABLE `app1_invoice_item`
  ADD CONSTRAINT `app1_invoice_item_cid_id_d5551fd6_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_invoice_item_invoice_id_d69af390_fk_app1_invoice_invoiceid` FOREIGN KEY (`invoice_id`) REFERENCES `app1_invoice` (`invoiceid`);

--
-- Constraints for table `app1_itemstock`
--
ALTER TABLE `app1_itemstock`
  ADD CONSTRAINT `app1_itemstock_bill_id_be483665_fk_app1_purchasebill_billid` FOREIGN KEY (`bill_id`) REFERENCES `app1_purchasebill` (`billid`),
  ADD CONSTRAINT `app1_itemstock_cid_id_3d628e6c_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_itemstock_debit_id_e5dce80b_fk_app1_purchasedebit_pdebitid` FOREIGN KEY (`debit_id`) REFERENCES `app1_purchasedebit` (`pdebitid`),
  ADD CONSTRAINT `app1_itemstock_inv_id_0719f348_fk_app1_invoice_invoiceid` FOREIGN KEY (`inv_id`) REFERENCES `app1_invoice` (`invoiceid`),
  ADD CONSTRAINT `app1_itemstock_stock_id_296b5432_fk_app1_stockadjust_id` FOREIGN KEY (`stock_id`) REFERENCES `app1_stockadjust` (`id`);

--
-- Constraints for table `app1_itemtable`
--
ALTER TABLE `app1_itemtable`
  ADD CONSTRAINT `app1_itemtable_cid_id_ae25009c_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_item_stock`
--
ALTER TABLE `app1_item_stock`
  ADD CONSTRAINT `app1_item_stock_bitm_id_3769787c_fk_app1_purchasebill_billid` FOREIGN KEY (`bitm_id`) REFERENCES `app1_purchasebill` (`billid`),
  ADD CONSTRAINT `app1_item_stock_cid_id_29fc400c_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_item_stock_ditm_id_79883830_fk_app1_purchasedebit1_id` FOREIGN KEY (`ditm_id`) REFERENCES `app1_purchasedebit1` (`id`),
  ADD CONSTRAINT `app1_item_stock_initm_id_d7d4d972_fk_app1_invoice_item_id` FOREIGN KEY (`initm_id`) REFERENCES `app1_invoice_item` (`id`),
  ADD CONSTRAINT `app1_item_stock_itm_id_e9fd7168_fk_app1_itemtable_id` FOREIGN KEY (`itm_id`) REFERENCES `app1_itemtable` (`id`);

--
-- Constraints for table `app1_loan_account`
--
ALTER TABLE `app1_loan_account`
  ADD CONSTRAINT `app1_loan_account_cid_id_177215ad_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_loan_duration`
--
ALTER TABLE `app1_loan_duration`
  ADD CONSTRAINT `app1_loan_duration_cid_id_0dacb0d2_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_loan_transaction`
--
ALTER TABLE `app1_loan_transaction`
  ADD CONSTRAINT `app1_loan_transaction_cid_id_36837f2d_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_loan_transaction_loan_id_19e07fd4_fk_app1_loan_account_id` FOREIGN KEY (`loan_id`) REFERENCES `app1_loan_account` (`id`);

--
-- Constraints for table `app1_mailingaddress`
--
ALTER TABLE `app1_mailingaddress`
  ADD CONSTRAINT `app1_mailingaddress_holder_id_5758cecc_fk_app1_bank` FOREIGN KEY (`holder_id`) REFERENCES `app1_bankaccountholder` (`id`);

--
-- Constraints for table `app1_man_journal_comment`
--
ALTER TABLE `app1_man_journal_comment`
  ADD CONSTRAINT `app1_man_journal_comment_proj_id_776fc32a_fk_app1_mjournal_id` FOREIGN KEY (`proj_id`) REFERENCES `app1_mjournal` (`id`);

--
-- Constraints for table `app1_mjournal`
--
ALTER TABLE `app1_mjournal`
  ADD CONSTRAINT `app1_mjournal_cid_id_65006abc_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_mjournal1`
--
ALTER TABLE `app1_mjournal1`
  ADD CONSTRAINT `app1_mjournal1_cid_id_819ccb36_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_mjournal1_mjrnl_id_76cea0d8_fk_app1_mjournal_id` FOREIGN KEY (`mjrnl_id`) REFERENCES `app1_mjournal` (`id`);

--
-- Constraints for table `app1_noninventory`
--
ALTER TABLE `app1_noninventory`
  ADD CONSTRAINT `app1_noninventory_cid_id_d0447e15_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_openingbalance`
--
ALTER TABLE `app1_openingbalance`
  ADD CONSTRAINT `app1_openingbalance_holder_id_26018948_fk_app1_bank` FOREIGN KEY (`holder_id`) REFERENCES `app1_bankaccountholder` (`id`);

--
-- Constraints for table `app1_otp_password`
--
ALTER TABLE `app1_otp_password`
  ADD CONSTRAINT `app1_otp_password_user_ckeck_id_684cddab_fk_auth_user_id` FOREIGN KEY (`user_ckeck_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `app1_paydowncreditcard`
--
ALTER TABLE `app1_paydowncreditcard`
  ADD CONSTRAINT `app1_paydowncreditcard_cid_id_148fd035_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_payment`
--
ALTER TABLE `app1_payment`
  ADD CONSTRAINT `app1_payment_cid_id_a954b426_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_paymentitems`
--
ALTER TABLE `app1_paymentitems`
  ADD CONSTRAINT `app1_paymentitems_cid_id_247e759a_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_paymentitems_payment_id_d8448ab7_fk_app1_payment_paymentid` FOREIGN KEY (`payment_id`) REFERENCES `app1_payment` (`paymentid`);

--
-- Constraints for table `app1_paymentmethod`
--
ALTER TABLE `app1_paymentmethod`
  ADD CONSTRAINT `app1_paymentmethod_cid_id_995ea7bd_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_paymentterms`
--
ALTER TABLE `app1_paymentterms`
  ADD CONSTRAINT `app1_paymentterms_cid_id_0cf8ace6_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_paymnt_made_comments`
--
ALTER TABLE `app1_paymnt_made_comments`
  ADD CONSTRAINT `app1_paymnt_made_com_empid_id_b003e87b_fk_app1_purc` FOREIGN KEY (`empid_id`) REFERENCES `app1_purchasepayment` (`pymntid`),
  ADD CONSTRAINT `app1_paymnt_made_comments_cid_id_a69669e9_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_payrollcomments`
--
ALTER TABLE `app1_payrollcomments`
  ADD CONSTRAINT `app1_payrollcomments_cid_id_a9d1dd27_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_payrollcomments_empid_id_c599c51a_fk_app1_payr` FOREIGN KEY (`empid_id`) REFERENCES `app1_payrollemployee` (`employeeid`);

--
-- Constraints for table `app1_payrollemployee`
--
ALTER TABLE `app1_payrollemployee`
  ADD CONSTRAINT `app1_payrollemployee_cid_id_7a7092cd_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_payslip`
--
ALTER TABLE `app1_payslip`
  ADD CONSTRAINT `app1_payslip_cid_id_3f97b6d6_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_pricelist`
--
ALTER TABLE `app1_pricelist`
  ADD CONSTRAINT `app1_pricelist_cid_id_3420c93d_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_pricelist_individual`
--
ALTER TABLE `app1_pricelist_individual`
  ADD CONSTRAINT `app1_pricelist_indiv_pricelist1_id_8f6efdfd_fk_app1_pric` FOREIGN KEY (`pricelist1_id`) REFERENCES `app1_pricelist` (`id`);

--
-- Constraints for table `app1_profit_loss`
--
ALTER TABLE `app1_profit_loss`
  ADD CONSTRAINT `app1_profit_loss_cid_id_4c1a45e2_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_profit_loss_expnc_id_0f818263_fk_app1_purc` FOREIGN KEY (`expnc_id`) REFERENCES `app1_purchase_expense` (`expenseid`),
  ADD CONSTRAINT `app1_profit_loss_inv_id_0a250dea_fk_app1_invoice_invoiceid` FOREIGN KEY (`inv_id`) REFERENCES `app1_invoice` (`invoiceid`),
  ADD CONSTRAINT `app1_profit_loss_pbill_id_e08082a2_fk_app1_purchasebill_billid` FOREIGN KEY (`pbill_id`) REFERENCES `app1_purchasebill` (`billid`),
  ADD CONSTRAINT `app1_profit_loss_pdebit_id_14c84d2a_fk_app1_purc` FOREIGN KEY (`pdebit_id`) REFERENCES `app1_purchasedebit` (`pdebitid`);

--
-- Constraints for table `app1_purchasebill`
--
ALTER TABLE `app1_purchasebill`
  ADD CONSTRAINT `app1_purchasebill_cid_id_74fd63ca_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_purchasebill_item`
--
ALTER TABLE `app1_purchasebill_item`
  ADD CONSTRAINT `app1_purchasebill_it_bill_id_988d6655_fk_app1_purc` FOREIGN KEY (`bill_id`) REFERENCES `app1_purchasebill` (`billid`),
  ADD CONSTRAINT `app1_purchasebill_item_cid_id_9e7dc068_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_purchasedebit`
--
ALTER TABLE `app1_purchasedebit`
  ADD CONSTRAINT `app1_purchasedebit_cid_id_0cb0af06_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_purchasedebit1`
--
ALTER TABLE `app1_purchasedebit1`
  ADD CONSTRAINT `app1_purchasedebit1_cid_id_471a9fd6_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_purchasedebit1_pdebit_id_f0e19642_fk_app1_purc` FOREIGN KEY (`pdebit_id`) REFERENCES `app1_purchasedebit` (`pdebitid`);

--
-- Constraints for table `app1_purchaseorder`
--
ALTER TABLE `app1_purchaseorder`
  ADD CONSTRAINT `app1_purchaseorder_cid_id_fc397c08_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_purchaseorder_item`
--
ALTER TABLE `app1_purchaseorder_item`
  ADD CONSTRAINT `app1_purchaseorder_i_porder_id_2884add5_fk_app1_purc` FOREIGN KEY (`porder_id`) REFERENCES `app1_purchaseorder` (`porderid`),
  ADD CONSTRAINT `app1_purchaseorder_item_cid_id_06cd1857_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_purchasepayment`
--
ALTER TABLE `app1_purchasepayment`
  ADD CONSTRAINT `app1_purchasepayment_cid_id_dd158fda_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_purchasepayment1`
--
ALTER TABLE `app1_purchasepayment1`
  ADD CONSTRAINT `app1_purchasepayment1_cid_id_39819e66_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_purchasepayment_pymnt_id_e61500b2_fk_app1_purc` FOREIGN KEY (`pymnt_id`) REFERENCES `app1_purchasepayment` (`pymntid`);

--
-- Constraints for table `app1_purchase_expense`
--
ALTER TABLE `app1_purchase_expense`
  ADD CONSTRAINT `app1_purchase_expense_cid_id_0021cef9_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_recinvoice`
--
ALTER TABLE `app1_recinvoice`
  ADD CONSTRAINT `app1_recinvoice_cid_id_54a189f0_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_recinvoice_item`
--
ALTER TABLE `app1_recinvoice_item`
  ADD CONSTRAINT `app1_recinvoice_item_cid_id_97506670_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_recinvoice_item_recinvoice_id_533adf7b_fk_app1_reci` FOREIGN KEY (`recinvoice_id`) REFERENCES `app1_recinvoice` (`recinvoiceid`);

--
-- Constraints for table `app1_recon1`
--
ALTER TABLE `app1_recon1`
  ADD CONSTRAINT `app1_recon1_cid_id_958c7d0e_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_recordpay`
--
ALTER TABLE `app1_recordpay`
  ADD CONSTRAINT `app1_recordpay_cid_id_f3d93b71_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_recterm`
--
ALTER TABLE `app1_recterm`
  ADD CONSTRAINT `app1_recterm_cid_id_43820625_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_recurringbill_item`
--
ALTER TABLE `app1_recurringbill_item`
  ADD CONSTRAINT `app1_recurringbill_i_bill_id_7b8cce3b_fk_app1_recu` FOREIGN KEY (`bill_id`) REFERENCES `app1_recurring_bill` (`rbillid`),
  ADD CONSTRAINT `app1_recurringbill_item_cid_id_34340a55_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_recurring_bill`
--
ALTER TABLE `app1_recurring_bill`
  ADD CONSTRAINT `app1_recurring_bill_cid_id_c7215e8a_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_recurring_expense`
--
ALTER TABLE `app1_recurring_expense`
  ADD CONSTRAINT `app1_recurring_expense_cid_id_656cef6e_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_repeatevery`
--
ALTER TABLE `app1_repeatevery`
  ADD CONSTRAINT `app1_repeatevery_cid_id_e6da08a6_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_repeatevry`
--
ALTER TABLE `app1_repeatevry`
  ADD CONSTRAINT `app1_repeatevry_cid_id_1af2908f_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_retainerinvoiceitems`
--
ALTER TABLE `app1_retainerinvoiceitems`
  ADD CONSTRAINT `app1_retainerinvoice_retainer_invoice_id_72942827_fk_app1_reta` FOREIGN KEY (`retainer_invoice_id`) REFERENCES `app1_retainerinvoices` (`id`);

--
-- Constraints for table `app1_retainerinvoices`
--
ALTER TABLE `app1_retainerinvoices`
  ADD CONSTRAINT `app1_retainerinvoices_cid_id_b26422fb_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_salescreditnote`
--
ALTER TABLE `app1_salescreditnote`
  ADD CONSTRAINT `app1_salescreditnote_cid_id_ffdd2ff5_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_salescreditnote1`
--
ALTER TABLE `app1_salescreditnote1`
  ADD CONSTRAINT `app1_salescreditnote_scredit_id_f483d8b1_fk_app1_sale` FOREIGN KEY (`scredit_id`) REFERENCES `app1_salescreditnote` (`screditid`);

--
-- Constraints for table `app1_salesorder`
--
ALTER TABLE `app1_salesorder`
  ADD CONSTRAINT `app1_salesorder_cid_id_d98291e0_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_salesrecpts`
--
ALTER TABLE `app1_salesrecpts`
  ADD CONSTRAINT `app1_salesrecpts_cid_id_7834f425_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_sales_item`
--
ALTER TABLE `app1_sales_item`
  ADD CONSTRAINT `app1_sales_item_cid_id_3e6cbf26_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_sales_item_salesorder_id_9684ff15_fk_app1_salesorder_id` FOREIGN KEY (`salesorder_id`) REFERENCES `app1_salesorder` (`id`);

--
-- Constraints for table `app1_service`
--
ALTER TABLE `app1_service`
  ADD CONSTRAINT `app1_service_cid_id_e19684ee_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_stockadjust`
--
ALTER TABLE `app1_stockadjust`
  ADD CONSTRAINT `app1_stockadjust_cid_id_4d02b5c6_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_stockreason`
--
ALTER TABLE `app1_stockreason`
  ADD CONSTRAINT `app1_stockreason_cid_id_782c2212_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_suplrcredit`
--
ALTER TABLE `app1_suplrcredit`
  ADD CONSTRAINT `app1_suplrcredit_cid_id_943a7180_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_supplier`
--
ALTER TABLE `app1_supplier`
  ADD CONSTRAINT `app1_supplier_cid_id_53a00add_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_timeact`
--
ALTER TABLE `app1_timeact`
  ADD CONSTRAINT `app1_timeact_cid_id_2709432a_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_timeactsale`
--
ALTER TABLE `app1_timeactsale`
  ADD CONSTRAINT `app1_timeactsale_cid_id_0dcbffb2_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_transportation`
--
ALTER TABLE `app1_transportation`
  ADD CONSTRAINT `app1_transportation_cid_id_11b44dc4_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_unittable`
--
ALTER TABLE `app1_unittable`
  ADD CONSTRAINT `app1_unittable_cid_id_0fb94d4c_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_vendor`
--
ALTER TABLE `app1_vendor`
  ADD CONSTRAINT `app1_vendor_cid_id_a5de272e_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_vendor_statment`
--
ALTER TABLE `app1_vendor_statment`
  ADD CONSTRAINT `app1_vendor_statment_cid_id_4af09180_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_vendor_statment_paymnt_id_621502eb_fk_app1_purc` FOREIGN KEY (`paymnt_id`) REFERENCES `app1_purchasepayment` (`pymntid`),
  ADD CONSTRAINT `app1_vendor_statment_pbill_id_dae0f1ca_fk_app1_purc` FOREIGN KEY (`pbill_id`) REFERENCES `app1_purchasebill` (`billid`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
