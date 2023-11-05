-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 07:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommercepro`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `price`, `quantity`, `image`, `product_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(167, 'Natnael Berhanu', 'natman093@gmail.com', '09709516098', 'shola', 'Toy For Kids', '500', '2', '1690960493.png', '3', '19', '2023-10-14 03:08:02', '2023-10-18 00:40:42', NULL),
(187, 'Natnael Berhanu', 'natman093@gmail.com', '09709516098', 'shola', 'Teddy bear', '580', '2', '1689399196.jpg', '18', '19', '2023-10-18 01:03:03', '2023-10-23 05:51:56', NULL),
(202, 'Natnael Berhanu', 'natman093@gmail.com', '09709516098', 'shola', 'Men\'s Shirt', '490', '1', '1689402179.png', '23', '19', '2023-10-21 05:51:28', '2023-10-23 01:55:51', NULL),
(204, 'Natnael Berhanu', 'natman093@gmail.com', '09709516098', 'shola', 'Men\'s Shirt', '450', '1', '1689400014.png', '4', '19', '2023-10-23 05:51:18', '2023-10-23 05:51:18', NULL),
(207, 'Nati', 'natmansafari093@gmail.com', '0712911008', 'Bahirdar', 'Men\'s Shirt', '800', '1', '1698037780.jpg', '2', '27', '2023-10-25 05:04:53', '2023-10-25 05:08:33', NULL),
(208, 'Nati', 'natmansafari093@gmail.com', '0712911008', 'Bahirdar', 'Men\'s Shirt', '800', '1', '1698037691.jpg', '1', '27', '2023-10-25 05:05:46', '2023-10-31 23:15:35', NULL),
(209, 'Nati', 'natmansafari093@gmail.com', '0712911008', 'Bahirdar', 'Men Shoes', '1100', '1', '1689480304.jpg', '30', '27', '2023-10-31 23:16:17', '2023-10-31 23:25:06', '2023-10-31 23:25:06'),
(210, 'Nati', 'natmansafari093@gmail.com', '0712911008', 'Bahirdar', 'Smart Watch', '4200', '2', '1691549130.jpg', '42', '27', '2023-10-31 23:24:31', '2023-10-31 23:24:46', '2023-10-31 23:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catagory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `catagory_name`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', '2023-07-13 23:28:13', '2023-07-13 23:28:13'),
(2, 'Toy', '2023-07-13 23:28:24', '2023-07-13 23:28:24'),
(3, 'Laptop', '2023-07-13 23:28:35', '2023-07-13 23:28:35'),
(4, 'Mobile', '2023-07-13 23:28:43', '2023-07-13 23:28:43'),
(6, 'Jewelry', '2023-07-14 10:40:19', '2023-07-14 10:40:19'),
(9, 'Women', '2023-07-15 02:40:12', '2023-07-15 02:40:12'),
(11, 'Men_Shoes', '2023-07-16 01:02:10', '2023-07-16 01:02:10'),
(12, 'Women_Shoes', '2023-07-16 01:02:31', '2023-07-16 01:02:31'),
(13, 'Watch', '2023-08-08 23:41:16', '2023-08-08 23:41:16'),
(14, 'Air_Pod', '2023-08-09 01:22:55', '2023-08-09 01:22:55'),
(15, 'Beats_Solo', '2023-08-08 23:42:30', '2023-08-08 23:42:30'),
(17, 'Ethiopian_dress', '2023-08-22 22:28:45', '2023-08-22 22:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(12, 'Natnael Berhanu', '19', 'You Store are Too Narrow', '2023-08-17 21:24:09', '2023-08-17 21:24:09');

-- --------------------------------------------------------

--
-- Table structure for table `customersells`
--

CREATE TABLE `customersells` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(255) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `optional_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customersells`
--

INSERT INTO `customersells` (`id`, `name`, `user_id`, `email`, `phone`, `address`, `title`, `description`, `category`, `quantity`, `image`, `price`, `optional_phone`, `status`, `verification`, `created_at`, `updated_at`) VALUES
(16, 'Natnael Berhanu', 19, 'natman093@gmail.com', '09709516098', 'shola', 'Smart Watch', 'Best Watch ever', 'Watch', '1', '1692773217.jpg', '600', '0712911008', 'slightlyused', 'Verified', '2023-08-23 03:46:57', '2023-08-25 23:21:24'),
(18, 'Nati', 27, 'natmansafari093@gmail.com', '0712911008', 'Bahirdar', 'Apple Laptop', '16gb ram,1Tb storage with graphics card', 'Laptop', '1', '1692943744.jpg', '15000', '0712911008', 'Used', 'Verified', '2023-08-25 03:09:04', '2023-08-25 03:11:24'),
(19, 'Nati', 27, 'natmansafari093@gmail.com', '0712911008', 'Bahirdar', 'Men Shoose', 'A Brand New Men\'s fashion Shoos', 'Men_Shoes', '2', '1693358090.jpg', '1200', '0712911008', 'New', 'Verified', '2023-08-29 22:14:50', '2023-08-29 22:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_07_12_001347_create_sessions_table', 1),
(7, '2023_07_13_044827_create_catagories_table', 2),
(8, '2023_07_14_003217_create_products_table', 3),
(9, '2023_07_16_044128_create_carts_table', 4),
(10, '2023_07_18_081625_create_orders_table', 5),
(11, '2023_07_22_031608_create_notifications_table', 6),
(12, '2023_07_25_035804_create_comments_table', 7),
(13, '2023_08_22_083509_create_customersells_table', 8),
(14, '2023_10_13_060755_create_wishlists_table', 9),
(15, '2023_10_16_042354_add_deleted_at_field_to_carts', 10),
(16, '2023_10_16_063158_add_deleted_at_field_to_wishlists', 11),
(17, '2023_10_20_072051_create_shippings_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eachquantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `eachquantity`, `quantity`, `price`, `date`, `product_id`, `image`, `order_no`, `shipping_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(16, 'Natnael Berhanu', 'natman093@gmail.com', '09709516098', 'shola', '19', 'Toy For Kids (1)', '1', '1', '250', '2023-08-16', '3', '1690960493.png', '1129456789', '2', 'Paid', 'Processing', '2023-08-16 01:18:36', '2023-08-16 01:18:36'),
(100, 'Natnael Berhanu', 'natman093@gmail.com', '09709516098', 'shola', '19', 'Smart Watch (3), Nokia c21 (3)', '3, 3', '6', '22500', '2023-08-17', '42, 22', '1691549130.jpg, 1689494823.jpg', '5811659479', '3', 'Paid', 'Delivered', '2023-08-16 23:02:16', '2023-08-17 03:10:58'),
(110, 'Natnael Berhanu', 'natman093@gmail.com', '09709516098', 'shola', '19', 'Toy For Kids (1)', '1', '1', '250', '2023-08-17', '3', '1690960493.png', '2976193746', '4', 'Paid', 'Delivered', '2023-08-17 01:50:36', '2023-08-17 02:29:18'),
(126, 'Nati', 'natmansafari093@gmail.com', '0712911008', 'Bahirdar', '27', 'Men\'s Shirt (2), Men Shoes (2)', '2, 2', '4', '3100', '2023-08-29', '4, 30', '1689400014.png, 1689480304.jpg', '9946099776', '5', 'Paid', 'Processing', '2023-08-28 23:10:26', '2023-08-28 23:10:26'),
(138, 'Nati', 'natmansafari093@gmail.com', '0712911008', 'Bahirdar', '27', 'Teddy bear (1)', '1', '1', '290', '2023-09-13', '18', '1689399196.jpg', '0316794886', '6', 'Paid', 'Processing', '2023-10-12 23:32:02', '2023-10-12 23:32:02'),
(142, 'Nati', 'natmansafari093@gmail.com', '0712911008', 'Bahirdar', '27', 'Samsung Galaxy A23 (1), Beats Solo (1)', '1, 1', '2', '10500', '2023-10-16', '20, 44', '1689494565.jpg, 1691549448.jpg', '9856093716', '7', 'Cash on delivery', 'Pending', '2023-10-15 23:09:50', '2023-10-15 23:09:50'),
(147, 'Nati', 'natmansafari093@gmail.com', '0712911008', 'Bahirdar', '27', 'Neckless (1), Teddy bear (1)', '1, 1', '2', '10790', '2023-10-20', '16, 18', '1689494448.png, 1689399196.jpg', '5805135075', '11', 'Paid', 'Processing', '2023-10-20 06:39:10', '2023-10-20 06:39:10'),
(148, 'Nati', 'natmansafari093@gmail.com', '0712911008', 'Bahirdar', '27', 'Samsung Galaxy A50 (1), Men\'s Shirt (1), Men Shoes (1)', '1, 1, 1', '3', '16900', '2023-10-25', '27, 1, 30', '1689477553.jpg, 1698037691.jpg, 1689480304.jpg', '5350628358', '12', 'Paid', 'Delivered', '2023-10-25 00:00:38', '2023-10-25 01:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `product_status`, `image`, `category`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(1, 'Men\'s Shirt', 'Larger Size Shirt. Please Go To Store For More Options', 'New', '1698037691.jpg', 'Shirt', '18', '850', '800', '2023-10-23 02:08:11', '2023-10-31 23:15:36'),
(2, 'Men\'s Shirt', 'Larger Size Shirt. Please Go To Store For More Options', 'New', '1698037780.jpg', 'Shirt', '19', '850', '800', '2023-10-23 02:09:40', '2023-10-25 05:08:33'),
(3, 'Toy For Kids', 'Best Toy ever', '', '1690960493.png', 'Toy', '46', '300', '250', '2023-08-02 04:14:53', '2023-10-20 02:21:47'),
(4, 'Men\'s Shirt', 'Larger Size Shirt. Please Go To Store For More Options', '', '1689400014.png', 'Shirt', '8', '550', '450', '2023-07-14 00:32:54', '2023-10-25 00:12:34'),
(16, 'Neckless', 'Beautyful Neckless', 'New', '1689494448.png', 'Jewelry', '24', '10500', NULL, '2023-07-14 23:37:04', '2023-10-25 00:03:22'),
(18, 'Teddy bear', 'Best Toy For Kid', '', '1689399196.jpg', 'Toy', '136', '350', '290', '2023-07-15 02:33:16', '2023-10-23 05:51:56'),
(19, 'Apple Laptop', '7th Generation 1TB Storage 8GB RAM,4GB With graphics card', 'New', '1689399401.jpg', 'Laptop', '15', '25000', '22000', '2023-07-15 02:36:41', '2023-10-25 00:12:34'),
(20, 'Samsung Galaxy A23', '64GB Storage by 4GB RAM', 'New', '1689494565.jpg', 'Mobile', '9', '9300', '8500', '2023-07-15 02:37:56', '2023-10-20 02:25:31'),
(21, 'Women Dress', 'Beautyful  Dress', '', '1690434451.png', 'Women', '20', '2700', '2300', '2023-07-15 02:41:45', '2023-07-27 02:07:31'),
(22, 'Nokia c21', '64GB Storage by 4GB RAM', '', '1689494823.jpg', 'Mobile', '11', '5900', '5500', '2023-07-15 02:43:59', '2023-10-19 22:24:38'),
(23, 'Men\'s Shirt', 'XL Size Shirt. Please Go To Store For More Options', '', '1689402179.png', 'Shirt', '14', '550', '490', '2023-07-15 03:22:59', '2023-10-23 01:55:51'),
(24, 'Men\'s Shirt', 'Larger Size Shirt. Please Go To Store For More OptionsUnique Shirt', '', '1689476844.png', 'Shirt', '15', '550', '490', '2023-07-16 00:07:24', '2023-07-16 00:07:24'),
(25, 'Apple Laptop', '9th Generation 1TB Storage 16GB RAM,4GB With graphics card', '', '1689477166.jpg', 'Laptop', '15', '25000', '22000', '2023-07-16 00:12:46', '2023-08-14 05:19:00'),
(26, 'Apple Laptop', '9th Generation 1TB Storage 16GB RAM,4GB With graphics card', 'New', '1691643363.jpg', 'Laptop', '15', '25000', '22000', '2023-07-16 00:14:26', '2023-08-22 22:24:24'),
(27, 'Samsung Galaxy A50', '64GB Storage by 6GB RAM\r\n', 'New', '1689477553.jpg', 'Mobile', '14', '17000', '15000', '2023-07-16 00:19:13', '2023-10-20 22:19:59'),
(28, 'Samsung Galaxy S20', '128GB Storage by 8GB RAM', '', '1689477627.jpg', 'Mobile', '10', '21000', '20000', '2023-07-16 00:20:27', '2023-08-10 21:27:56'),
(29, 'Women Dress', 'Brand New Dress.Please Go To Store For More Options.', '', '1689479894.png', 'Women', '10', '2500', '2300', '2023-07-16 00:58:14', '2023-08-14 22:59:03'),
(30, 'Men Shoes', 'Brand New Shoos.Please Visit Our Store For More Options ', 'New', '1689480304.jpg', 'Men_Shoes', '7', '1200', '1100', '2023-07-16 01:05:04', '2023-10-31 23:25:06'),
(31, 'Men Shoes', 'Brand New Shoos.Please Visit Our Store For More Options ', '', '1689480484.jpg', 'Men_Shoes', '15', '1700', '1500', '2023-07-16 01:08:04', '2023-07-16 01:08:04'),
(32, 'Men Shoes', 'Brand New Shoos.Please Visit Our Store For More Options ', 'New', '1689480521.jpg', 'Men_Shoes', '15', '1300', '1200', '2023-07-16 01:08:41', '2023-10-13 23:59:02'),
(40, 'Apple Mobile', '64GB Storage by 4GB RAM', 'New', '1691551596.jpg', 'Mobile', '20', '22000', '20000', '2023-08-09 00:26:36', '2023-08-09 00:26:36'),
(41, 'Smart Watch', 'Watch that suits to your occasions', 'New', '1691549091.jpg', 'Watch', '14', '2500', '2100', '2023-08-08 23:44:51', '2023-10-20 02:48:55'),
(42, 'Smart Watch', 'Watch that suits to your occasions', 'New', '1691549130.jpg', 'Watch', '12', '2500', '2100', '2023-08-08 23:45:30', '2023-10-31 23:24:46'),
(43, 'Beats Solo', 'Impressive sound quality With advanced features', 'New', '1691549415.jpg', 'Beats_Solo', '20', '2100', '2000', '2023-08-08 23:50:15', '2023-08-08 23:50:15'),
(44, 'Beats Solo', 'Impressive sound quality With advanced features', 'New', '1691549448.jpg', 'Beats_Solo', '19', '2100', '2000', '2023-08-08 23:50:48', '2023-10-15 07:59:14'),
(45, 'Air pod', 'Impressive sound quality With advanced features', 'New', '1691642743.jpg', 'Air_Pod', '20', '2000', NULL, '2023-08-08 23:51:40', '2023-10-14 03:06:23'),
(46, 'Women Shoes', 'Brand New Shoos.Please Visit Our Store For More Options ', '', '1689480603.jpg', 'Women_Shoes', '10', '1400', '1300', '2023-07-16 01:10:03', '2023-07-16 01:10:03'),
(47, 'Women Shoes', 'Brand New Shoos.Please Visit Our Store For More Options  ', 'New', '1689480650.jpg', 'Women_Shoes', '10', '1300', '1200', '2023-07-16 01:10:50', '2023-07-16 01:10:50'),
(48, 'Women Shoes', 'Brand New Shoos.Please Visit Our Store For More Options ', '', '1689480711.jpg', 'Women_Shoes', '10', '1300', '1200', '2023-07-16 01:11:51', '2023-07-16 01:11:51'),
(49, 'Abehsa dress', 'New Ethiopian Traditional Cloath.Please Visit Our Store For More Options cotton and beautiful design', 'New', '1691644695.jpg', 'Ethiopian_dress', '20', '2500', '2200', '2023-07-25 04:51:41', '2023-08-22 22:29:28'),
(51, 'Abehsa dress', 'New Ethiopian Traditional Cloath.Please Visit Our Store', 'New', '1692754292.jpeg', 'Ethiopian_dress', '10', '3500', '3300', '2023-08-22 22:31:32', '2023-08-22 22:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FXqdHtUGfjKyqQVx4pAgoIkfgt3Hm4SOdYfXEOQG', 27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.61', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibnZGcE56MmtRWVkxTWtrT1hTZldWeVRyT25OSGdaejBJUmRZUjcxRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI3O30=', 1698806853),
('iX88a3vSDoHO4lE7mROBFSKGjvxOrriM03JB3Jdm', 27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.61', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibzlaU0l6Zm1EbFpZTjg0WXNJR3hUQk1yUm9LeVVoaDNLOHBxR25hTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI3O3M6MTA6InRvdGFscHJpY2UiO2E6MTp7czo1OiJ0b3RhbCI7ZDoxNjAwO319', 1698823292);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kbl_wra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pobox` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `first_name`, `last_name`, `email`, `phone`, `phone2`, `city`, `town`, `kbl_wra`, `pobox`, `add_address`, `created_at`, `updated_at`) VALUES
(2, 'Kebede', 'Abebe', 'kebabe011@gmail.com', '0912234567', '0912345678', 'Gondar', 'Gondar', '03', '5567', 'Around Fasil', '2023-10-25 05:56:40', '2023-10-25 05:56:40'),
(3, 'Abebe', 'Kebede', 'kebabe098@gmail.com', '0987654324', '0987653478', 'Addis Abeba', 'Shola', '08', '9876', 'around shola', '2023-10-25 06:54:16', '2023-10-25 06:54:16'),
(4, 'Selam', 'Demeke', 'seldmk900@gmail.com', '0911234567', '0911234567', 'Addis Abeba', '6 Killo', '06', '5678', 'Around 6 Killo', '2023-10-25 06:02:43', '2023-10-25 06:02:43'),
(5, 'Demeke', 'Abebe', 'demabe095@gmail.com', '0934567890', '0912346789', 'Adama', 'Adama', '08', '9087', 'Around XYZ', '2023-10-25 06:05:31', '2023-10-25 06:05:31'),
(6, 'Ketema ', 'Derbew', 'ktader098@gmail.com', '0987651234', '0987651234', 'Addis Abeba', 'Haya Hulet', '08', '9865', 'Around Golagol', '2023-10-25 06:07:52', '2023-10-25 06:07:52'),
(7, 'Debebe', 'Worash', 'debwor098@gmail.com', '0976543112', '0976543112', 'Bahirdar', 'Bahirdar', '05', '9087', 'Bahirdar', '2023-10-25 06:10:41', '2023-10-25 06:10:41'),
(11, 'Abebe', 'Kebede', 'abeKee093@gmail.com', '0970967890', '0970951890', 'Addis Abeba', 'Megenya', '08', '5555', 'Around Shola', '2023-10-23 05:55:09', '2023-10-23 05:55:09'),
(12, 'Natnael', 'Berhanu', 'natman093@gmail.com', '0970951608', '0900951890', 'Bahirdar', 'BahirDar', '09', '0096', 'Geter Menged', '2023-10-24 23:56:20', '2023-10-24 23:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `google_id`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(11, 'admin', 'admin@gmail.com', '', '1', '0970951608', 'Ethiopia', '2023-07-31 01:40:16', '$2y$10$KV2gCtz6sIl4Qtj3MjYMpuI/S8rSRoN/MFSd5Z60rWtsGLsS9zX3u', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-30 22:39:02', '2023-09-01 00:45:35'),
(19, 'Natnael Berhanu', 'natman093@gmail.com', '117364202339533744978', '0', '09709516098', 'shola', '2023-08-06 21:33:29', '$2y$10$JDQudKv4RplZ.k7p3HNCo..uUxvUJAkBI.Gh8g.0M9EnFFvuF6Ssy', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 21:33:28', '2023-08-06 21:33:29'),
(27, 'Nati', 'natmansafari093@gmail.com', '116450668879763700469', '0', '0712911008', 'Bahirdar', '2023-09-01 06:07:04', '$2y$10$eaP3cOwRH9YTsUdQOZ6b7.gTdcD9qXHLLNkl4RtIUGKIcXve9Uztq', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 03:06:31', '2023-09-01 03:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `product_name`, `image`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, '27', '41', 'Smart Watch', '1691549091.jpg', '2500', '2023-10-16 03:51:03', '2023-10-23 22:33:08', NULL),
(7, '27', '42', 'Smart Watch', '1691549130.jpg', '2500', '2023-10-14 01:04:14', '2023-10-16 04:16:47', NULL),
(8, '27', '44', 'Beats Solo', '1691549448.jpg', '2100', '2023-10-16 04:15:14', '2023-10-16 04:15:14', NULL),
(9, '19', '22', 'Nokia c21', '1689494823.jpg', '5900', '2023-10-14 01:34:35', '2023-10-23 05:52:36', NULL),
(23, '19', '2', 'Toy For Kids', '1690960493.png', '300', '2023-10-18 00:54:23', '2023-10-18 00:54:23', NULL),
(24, '19', '1', 'Men\'s Shirt', '1689400014.png', '550', '2023-10-18 00:59:28', '2023-10-18 00:59:28', NULL),
(26, '27', '2', 'Toy For Kids', '1690960493.png', '300', '2023-10-18 04:00:02', '2023-10-31 23:16:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customersells`
--
ALTER TABLE `customersells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customersells`
--
ALTER TABLE `customersells`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
