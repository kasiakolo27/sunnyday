-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 19, 2021 at 04:05 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cryptohunch`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `balance` int(11) NOT NULL,
  `payment_type_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `user_id`, `balance`, `payment_type_id`) VALUES
(1, 5, 200, 1),
(2, 4, 300, 1),
(3, 2, 400, 2),
(4, 1, 80, 1),
(5, 3, 65, 1),
(6, 5, 200, 1),
(7, 4, 300, 1),
(8, 2, 400, 2),
(9, 1, 80, 1),
(10, 3, 65, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `membership_stake` int(11) NOT NULL,
  `tip_stake` int(11) NOT NULL,
  `tip_percentage_stake` int(11) NOT NULL,
  `penalty_multiplier` int(11) NOT NULL,
  `reward_multiplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `membership_stake`, `tip_stake`, `tip_percentage_stake`, `penalty_multiplier`, `reward_multiplier`) VALUES
(1, 1000, 100, 30, 1, 2),
(2, 1000, 100, 40, 1, 2),
(3, 1000, 100, 50, 1, 2),
(4, 1000, 100, 30, 1, 2),
(5, 1000, 100, 40, 1, 2),
(6, 1000, 100, 50, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coin_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog`, `coin_id`, `date`, `user_id`) VALUES
(1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less ', 2, '2021-08-09', 3),
(2, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised ', 1, '2021-08-09', 4),
(3, 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 5, '2021-10-04', 2);

-- --------------------------------------------------------

--
-- Table structure for table `coin_data`
--

CREATE TABLE `coin_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `symbol` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coin_category` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_supply` int(11) NOT NULL,
  `algorithm` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `founder` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cofounder` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transactions_per_second` int(11) NOT NULL,
  `blocktime` int(11) NOT NULL,
  `transactions_fees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coin_data`
--

INSERT INTO `coin_data` (`id`, `symbol`, `name`, `poster`, `description`, `coin_category`, `total_supply`, `algorithm`, `founder`, `cofounder`, `transactions_per_second`, `blocktime`, `transactions_fees`) VALUES
(1, 'UNI', 'Uniswap', 'iiiipng', 'Uniswap is an automated ethereum-based crypto exchange with its own governance token, UNI.', 'Defi', 0, '', '', '', 2, 2, 3),
(2, 'ADA', 'Cardano', 'jkas.png', 'Cardano or ADA not only is one of the top coins when it comes to trading, \r\nit is also one of the most energy efficient projects, developed by none other than the co-founder of Ethereum', 'Energy', 0, '', '', '', 2, 2, 3),
(3, 'CHZ', 'Chiliz', 'czili.png', 'Chiliz developed the Socios.com sports fan engagement platform which \r\nis built on the Chiliz blockchain infrastructure & uses $CHZ as it’s exclusive on-platform currency.\r\n', 'Fantoken', 0, '', '', '', 2, 2, 3),
(4, 'BTC', 'Bitcoin', 'dddd.png', 'Bitcoin is known as a type of cryptocurrency because it uses cryptography to keep it secure. There are no physical bitcoins, only balances kept on a public.', 'Cryptocurrency', 0, '', '', '', 2, 2, 3),
(5, 'SAND', 'Sandbox', 'oooo.jpg', 'The Sandbox is a virtual world where you can buy and sell virtual land and other assets using metaverse coins called SAND. You can create and transform anything you can imagine, monetizing your virtual experience through the power of SAND cryptocurrency.', 'Metaverse', 0, '', '', '', 2, 2, 3),
(6, 'UNI', 'Uniswap', 'iiiipng', 'Uniswap is an automated ethereum-based crypto exchange with its own governance token, UNI.', 'Defi', 0, '', '', '', 2, 2, 3),
(7, 'ADA', 'Cardano', 'jkas.png', 'Cardano or ADA not only is one of the top coins when it comes to trading, \r\nit is also one of the most energy efficient projects, developed by none other than the co-founder of Ethereum', 'Energy', 0, '', '', '', 2, 2, 3),
(8, 'CHZ', 'Chiliz', 'czili.png', 'Chiliz developed the Socios.com sports fan engagement platform which \r\nis built on the Chiliz blockchain infrastructure & uses $CHZ as it’s exclusive on-platform currency.\r\n', 'Fantoken', 0, '', '', '', 2, 2, 3),
(9, 'BTC', 'Bitcoin', 'dddd.png', 'Bitcoin is known as a type of cryptocurrency because it uses cryptography to keep it secure. There are no physical bitcoins, only balances kept on a public.', 'Cryptocurrency', 0, '', '', '', 2, 2, 3),
(10, 'SAND', 'Sandbox', 'oooo.jpg', 'The Sandbox is a virtual world where you can buy and sell virtual land and other assets using metaverse coins called SAND. You can create and transform anything you can imagine, monetizing your virtual experience through the power of SAND cryptocurrency.', 'Metaverse', 0, '', '', '', 2, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `country_state_city`
--

CREATE TABLE `country_state_city` (
  `country` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country_state_city`
--

INSERT INTO `country_state_city` (`country`, `state`, `city`, `id`) VALUES
('dsdfvg', 'fdsgg', 'dfgvfv', 1),
('fsbb', 'fbbfgb', 'fbgfdb', 2),
('dsdfvg', 'fdsgg', 'dfgvfv', 3),
('fsbb', 'fbbfgb', 'fbgfdb', 4);

-- --------------------------------------------------------

--
-- Table structure for table `historical_prices`
--

CREATE TABLE `historical_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency1` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `currency1_price` int(11) NOT NULL,
  `currency2` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency2_price` int(11) NOT NULL,
  `coin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `historical_prices`
--

INSERT INTO `historical_prices` (`id`, `currency1`, `date`, `currency1_price`, `currency2`, `currency2_price`, `coin_id`) VALUES
(1, 'EUR', '2021-12-01', 3, 'HUNCH', 2, 2),
(2, 'EUR', '2021-11-01', 4, 'HUNCH', 5, 1),
(3, 'EUR', '2021-12-01', 3, 'HUNCH', 8, 2),
(4, 'EUR', '2021-11-01', 4, 'HUNCH', 7, 1);

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2021_12_11_133440_create_cryptohunch_database_install', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`id`, `type`) VALUES
(1, 'EUR'),
(2, 'HUNCH'),
(3, 'EUR'),
(4, 'HUNCH');

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tip_direction` enum('up','down') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tip_currency` enum('eur','hunch') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price_at_time_of_tip` int(11) NOT NULL,
  `date_now` date NOT NULL,
  `date_end` date NOT NULL,
  `reason_up` enum('major_roadmap_releases_success','stock_market_up','influencers_backing_the_project','money_printing','instinct_of_the_expert_up','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_down` enum('major_roadmap_releases_failure','stock_market_down','influencers_slating_the_project','instinct_of_the_expert_down','FUD','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calculated_tip_price` int(11) DEFAULT NULL,
  `tip_percentage` enum('30','40','50') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `coin_id` int(10) UNSIGNED NOT NULL,
  `winlose_flag` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`id`, `tip_direction`, `tip_currency`, `created_at`, `updated_at`, `price_at_time_of_tip`, `date_now`, `date_end`, `reason_up`, `reason_down`, `reason_description`, `calculated_tip_price`, `tip_percentage`, `user_id`, `coin_id`, `winlose_flag`) VALUES
(1, 'up', 'eur', NULL, NULL, 10, '2021-12-16', '2021-12-18', 'major_roadmap_releases_success', 'major_roadmap_releases_failure', 'ewfewf', NULL, '30', 1, 1, NULL),
(2, 'up', 'eur', NULL, NULL, 20, '2021-12-16', '2021-12-19', 'major_roadmap_releases_success', 'major_roadmap_releases_failure', 'ewfewf', NULL, '30', 1, 1, NULL),
(3, 'up', 'eur', NULL, NULL, 13213, '2021-12-16', '2021-12-19', 'major_roadmap_releases_success', 'major_roadmap_releases_failure', 'ewfewf', NULL, '30', 1, 1, 'W'),
(12, 'up', 'eur', NULL, NULL, 1, '2021-12-17', '2021-12-21', 'major_roadmap_releases_success', 'major_roadmap_releases_failure', 'ewfewf', 2, '50', 1, 2, NULL),
(13, 'up', 'eur', NULL, NULL, 41693, '2021-12-17', '2021-12-23', 'major_roadmap_releases_success', 'major_roadmap_releases_failure', 'sdvgsd', 62540, '50', 1, 4, NULL),
(14, 'up', 'eur', NULL, NULL, 41693, '2021-12-17', '2021-12-23', 'major_roadmap_releases_success', 'major_roadmap_releases_failure', 'vsdv', 62540, '50', 1, 4, NULL),
(15, 'up', 'hunch', NULL, NULL, 14, '2021-12-18', '2021-12-16', 'influencers_backing_the_project', 'influencers_slating_the_project', 'sdfdds', 18, '40', 10, 1, NULL),
(16, 'up', 'eur', NULL, NULL, 14, '2021-12-18', '2021-12-15', 'major_roadmap_releases_success', 'major_roadmap_releases_failure', 'dsfd', 18, '40', NULL, 1, NULL),
(17, 'up', 'eur', NULL, NULL, 14, '2021-12-18', '2021-12-14', 'stock_market_up', 'stock_market_down', 'esdgdfg', 20, '50', 12, 1, NULL),
(18, 'up', 'eur', NULL, NULL, 14, '2021-12-18', '2021-12-24', 'major_roadmap_releases_success', 'major_roadmap_releases_failure', '3243', 18, '40', NULL, 1, NULL),
(22, 'up', 'eur', NULL, NULL, 14, '2021-12-16', '2021-12-29', 'major_roadmap_releases_success', 'major_roadmap_releases_failure', 'uuuuuu', 18, '40', NULL, 1, NULL),
(30, 'up', 'eur', NULL, NULL, 14, '2021-12-19', '2021-12-28', 'major_roadmap_releases_success', 'major_roadmap_releases_failure', 'sdcds', 18, '40', NULL, 1, NULL),
(31, 'up', 'eur', NULL, NULL, 14, '2021-12-19', '2021-12-22', 'money_printing', 'FUD', 'sdffd', 17, '30', NULL, 1, NULL),
(32, 'down', 'eur', NULL, NULL, 14, '2021-12-19', '2021-12-07', 'influencers_backing_the_project', 'FUD', 'jdkjvdfv', 17, '30', NULL, 1, NULL),
(33, 'down', 'hunch', NULL, NULL, 13, '2021-12-19', '2021-12-09', 'influencers_backing_the_project', 'influencers_slating_the_project', 'efgfd', 18, '40', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency1` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount1` int(11) NOT NULL,
  `currency2` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount2` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` enum('stake_membership','stake_collateral','reward','penalise','topup','withdraw') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `date`, `description`, `currency1`, `amount1`, `currency2`, `amount2`, `user_id`, `type`) VALUES
(1, '2021-10-04', 'Test1', 'eur', 85, 'usd', 63, 5, 'withdraw');

-- --------------------------------------------------------

--
-- Table structure for table `treasury`
--

CREATE TABLE `treasury` (
  `id` int(10) UNSIGNED NOT NULL,
  `hunch_reserve_pool` int(11) NOT NULL,
  `hunch_staked_pool` int(11) NOT NULL,
  `eur_balance` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treasury`
--

INSERT INTO `treasury` (`id`, `hunch_reserve_pool`, `hunch_staked_pool`, `eur_balance`, `date`) VALUES
(1, 200, 100, 500, '2021-12-08'),
(2, 100, 300, 900, '2021-12-08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `is_admin`) VALUES
(1, 'Paul', 'Rocha', 'paulrocha@gmail.com', 'paulrocha', 0),
(2, 'Teresa', 'Kline', 'teresa@gmail.com', 'tersa123', 0),
(3, 'Sydnee', 'Pennington', 'sydney78@gmail.com', 'pennin789', 0),
(4, 'Lisa', 'Meyer', 'lisa8@email.com', 'lisalisame', 0),
(5, 'Ean', 'Potter', 'eanpo@email.com', 'Potter785', 0),
(6, 'Paul', 'Rocha', 'paulrocha@gmail.com', 'paulrocha', 0),
(7, 'Teresa', 'Kline', 'teresa@gmail.com', 'tersa123', 0),
(8, 'Sydnee', 'Pennington', 'sydney78@gmail.com', 'pennin789', 0),
(9, 'Lisa', 'Meyer', 'lisa8@email.com', 'lisalisame', 0),
(10, 'Ean', 'Potter', 'eanpo@email.com', 'Potter785', 0),
(11, 'Michael', 'O Brien', 'mobrienoct1981@gmail.com', '$2y$10$nVP6oIBW.Uv.Qs/yGVOqGeFmG0RgvNh9NfGWtQ/qsNRTgb5EB/B1K', NULL),
(12, 'k', 'klk', 'lisa33@email.com', '$2y$10$7OOGjG9OKqpO2QKxV1/MCOP4FQ4/brj1WuJAcUufPuoB5Pwo7BLlK', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `payment_type_id` int(10) UNSIGNED NOT NULL,
  `card_number` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_user_id_index` (`user_id`),
  ADD KEY `account_payment_type_id_index` (`payment_type_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_coin_id_index` (`coin_id`),
  ADD KEY `blogs_user_id_index` (`user_id`);

--
-- Indexes for table `coin_data`
--
ALTER TABLE `coin_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_state_city`
--
ALTER TABLE `country_state_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historical_prices`
--
ALTER TABLE `historical_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `historical_prices_coin_id_index` (`coin_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tips_user_id_index` (`user_id`),
  ADD KEY `tips_coin_id_index` (`coin_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_index` (`user_id`);

--
-- Indexes for table `treasury`
--
ALTER TABLE `treasury`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_user_id_index` (`user_id`),
  ADD KEY `wallet_payment_type_id_index` (`payment_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coin_data`
--
ALTER TABLE `coin_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `country_state_city`
--
ALTER TABLE `country_state_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `historical_prices`
--
ALTER TABLE `historical_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `treasury`
--
ALTER TABLE `treasury`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`id`),
  ADD CONSTRAINT `account_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_coin_id_foreign` FOREIGN KEY (`coin_id`) REFERENCES `coin_data` (`id`),
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `historical_prices`
--
ALTER TABLE `historical_prices`
  ADD CONSTRAINT `historical_prices_coin_id_foreign` FOREIGN KEY (`coin_id`) REFERENCES `coin_data` (`id`);

--
-- Constraints for table `tips`
--
ALTER TABLE `tips`
  ADD CONSTRAINT `tips_coin_id_foreign` FOREIGN KEY (`coin_id`) REFERENCES `coin_data` (`id`),
  ADD CONSTRAINT `tips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`id`),
  ADD CONSTRAINT `wallet_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
