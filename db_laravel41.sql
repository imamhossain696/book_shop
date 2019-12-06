-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2017 at 08:30 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel41`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryDescription`, `publicationStatus`, `created_at`, `updated_at`) VALUES
(6, 'numquam', 'Enim et facilis velit culpa quis sequi. Saepe aspernatur atque ut voluptatem ratione. Et sint ut quos consequatur nesciunt. Et quibusdam quas possimus adipisci impedit enim distinctio.', 1, '2017-02-18 22:48:31', '2017-02-18 22:48:31'),
(7, 'assumenda', 'Perferendis velit omnis doloribus dolor et. Nisi omnis possimus non rerum. Voluptas consequatur quibusdam dolores nemo quo.', 1, '2017-02-18 22:48:31', '2017-02-18 22:48:31'),
(8, 'suscipit', 'Aspernatur qui necessitatibus sapiente consequatur. Sunt quia ratione in ut. Delectus blanditiis deserunt nobis id vel.', 0, '2017-02-18 22:48:31', '2017-02-18 22:48:31'),
(9, 'eaque', 'Magnam odio ab magni enim quod alias rerum perspiciatis. Voluptatem architecto est reiciendis. Voluptate fuga natus ea.', 0, '2017-02-18 22:48:31', '2017-02-18 22:48:31'),
(10, 'quidem', 'Aut numquam vel rerum fugit. Ex necessitatibus quis corporis non ut fugit. Deserunt cupiditate et enim officiis.', 0, '2017-02-18 22:48:31', '2017-02-18 22:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districtName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstName`, `lastName`, `emailAddress`, `password`, `address`, `phoneNumber`, `districtName`, `created_at`, `updated_at`) VALUES
(2, 'SAkib', 'Al Hasan', 'sakib@gmail.com', '$2y$10$kGu3k/JeSmiHzrgvt1bywO9nurJZ7rIgiaxIiLZjSB8ctGj4we9Au', 'asasdasd', '32452345', 'Savar', '2017-02-23 01:27:35', '2017-02-23 01:27:35'),
(3, 'SAkib', 'Al Hasan', 'sakib@gmail.com', '$2y$10$HFZ85DQpTiVrRKoxQUjWFeUyBiZfq7iumHpSfIe1o59NIise/yW8O', 'Dhaka', '123', 'Dhaka', '2017-02-25 23:51:02', '2017-02-25 23:51:02');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturerDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `manufacturerName`, `manufacturerDescription`, `publicationStatus`, `created_at`, `updated_at`) VALUES
(1, 'culpa', 'Quia facilis est reiciendis assumenda quam consequatur qui. Ipsam maiores et est eaque. Exercitationem neque quibusdam occaecati laboriosam. Placeat assumenda suscipit repellat optio soluta eos.', 0, '2017-02-19 00:13:11', '2017-02-19 00:13:11'),
(2, 'laboriosam', 'Incidunt reprehenderit quae rerum excepturi aliquid ut perspiciatis. Aperiam laudantium quaerat et minima quo qui omnis. Molestias dolorem facere quo sit.', 1, '2017-02-19 00:13:12', '2017-02-19 00:13:12'),
(3, 'consectetur', 'Molestias velit earum quo. Error recusandae cum at omnis id. Est corrupti ipsum eveniet aliquid et et. Id aut quia quis ab earum maxime.', 0, '2017-02-19 00:13:12', '2017-02-19 00:13:12'),
(4, 'molestias', 'Ratione quae asperiores in qui dolores ut atque. Consequatur qui et molestiae fuga tempore ex quo. Et natus repellat incidunt omnis voluptas voluptas omnis nesciunt.', 0, '2017-02-19 00:13:12', '2017-02-19 00:13:12'),
(5, 'enim', 'Reiciendis eum dolore rerum voluptatum ex. Assumenda numquam maxime voluptas et velit. Modi earum ex consequatur consequatur. Harum velit qui qui non enim.', 0, '2017-02-19 00:13:12', '2017-02-19 00:13:12');

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
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2017_02_07_050406_create_categories_table', 1),
(11, '2017_02_10_090127_create_manufacturers_table', 1),
(12, '2017_02_12_034619_create_products_table', 1),
(13, '2017_02_23_071445_create_customers_table', 2),
(14, '2017_02_26_055842_create_shippings_table', 3),
(15, '2017_02_26_063811_create_orders_table', 4),
(16, '2017_02_26_063822_create_payments_table', 4),
(17, '2017_02_26_063844_create_order_details_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customerId` int(11) NOT NULL,
  `shippingId` int(11) NOT NULL,
  `orderTotal` double(10,2) NOT NULL,
  `orderStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customerId`, `shippingId`, `orderTotal`, `orderStatus`, `created_at`, `updated_at`) VALUES
(4, 3, 1, 702746.00, 'pending', '2017-02-26 01:17:01', '2017-02-26 01:17:01'),
(5, 3, 1, 123.00, 'pending', '2017-02-26 01:18:38', '2017-02-26 01:18:38'),
(6, 3, 1, 12425.00, 'pending', '2017-02-26 01:19:38', '2017-02-26 01:19:38'),
(7, 3, 1, 345837.00, 'pending', '2017-02-26 01:21:13', '2017-02-26 01:21:13'),
(8, 3, 1, 691182.00, 'pending', '2017-02-26 01:24:43', '2017-02-26 01:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productPrice` double(10,2) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `orderId`, `productId`, `productName`, `productPrice`, `productQuantity`, `created_at`, `updated_at`) VALUES
(3, 4, 2, 'X-peria XZ', 345345.00, 2, '2017-02-26 01:17:01', '2017-02-26 01:17:01'),
(4, 5, 1, 'demo Product', 123.00, 1, '2017-02-26 01:18:38', '2017-02-26 01:18:38'),
(5, 6, 1, 'demo Product', 123.00, 3, '2017-02-26 01:19:38', '2017-02-26 01:19:38'),
(6, 7, 1, 'demo Product', 123.00, 4, '2017-02-26 01:21:14', '2017-02-26 01:21:14'),
(7, 8, 1, 'demo Product', 123.00, 4, '2017-02-26 01:24:44', '2017-02-26 01:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderId` int(11) NOT NULL,
  `paymentType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `orderId`, `paymentType`, `paymentStatus`, `created_at`, `updated_at`) VALUES
(4, 4, 'cashOnDelivery', 'pending', '2017-02-26 01:17:01', '2017-02-26 01:17:01'),
(5, 5, 'cashOnDelivery', 'pending', '2017-02-26 01:18:38', '2017-02-26 01:18:38'),
(6, 6, 'cashOnDelivery', 'pending', '2017-02-26 01:19:38', '2017-02-26 01:19:38'),
(7, 7, 'cashOnDelivery', 'pending', '2017-02-26 01:21:13', '2017-02-26 01:21:13'),
(8, 8, 'cashOnDelivery', 'pending', '2017-02-26 01:24:43', '2017-02-26 01:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` int(11) NOT NULL,
  `manufacturerId` int(11) NOT NULL,
  `productPrice` double(10,2) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `productShortDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `productLongDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `productImage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `categoryId`, `manufacturerId`, `productPrice`, `productQuantity`, `productShortDescription`, `productLongDescription`, `productImage`, `publicationStatus`, `created_at`, `updated_at`) VALUES
(1, 'demo Product', 7, 2, 123.00, 123, '<p>&nbsp;sasascas</p>', '<p>&nbsp;ascascascasc</p>', 'public/productImage/success.jpeg', 1, '2017-02-19 00:13:42', '2017-02-19 00:13:42'),
(2, 'X-peria XZ', 6, 2, 345345.00, 123, '<p>asdasdasdasdasd</p>', '<p>asdasdasdas asdasdasdasd</p>', 'public/productImage/14192547_1194886820549385_6751660031947662868_n.jpg', 1, '2017-02-19 00:14:08', '2017-02-19 00:14:08'),
(3, 'Habijabi Product', 6, 2, 12056.00, 123, '<p>zxcZXc</p>', '<div class="palo_web_news_div">নোয়াখালীর ঠেঙ্গারচর নামে যে এলাকায় রোহিঙ্গাদের পুনর্বাসনের উদ্যোগ নেওয়া হয়েছে, সেটি জোয়ারের সময় পানিতে ডুবে থাকে। শুষ্ক মৌসুমে এ চরের কিছু অংশ দৃশ্যমান হলেও অতি জোয়ারের সময় ও বর্ষা মৌসুমে প্লাবিত হয়। ঠেঙ্গারচরে অপেক্ষাকৃত উঁচু স্থানের ভূমি এখনো স্থায়িত্ব লাভ করেনি&mdash;মন্ত্রণালয়কে বন বিভাগের চিঠি\r\n<div class="fb-quote fb_iframe_widget" style="position: absolute; left: 138.5px; top: 455px;">&nbsp;</div>\r\n</div>\r\n<p class="alignfull"><span id="media_0" class="jw_media_holder jwMediaContent aligncenter" style="width: 643px;"><img src="http://paimages.prothom-alo.com/contents/cache/images/643x0x1/uploads/media/2017/02/19/ad3f062f25c50e0ba1fc7d902576d9ba-3.jpg" alt="চামচ-ঠুঁটো বাটান নামে এই বিলুপ্তপ্রায় পরিযায়ী পাখিরা শীতকালে এসে আশ্রয় নেয় ঠেঙ্গারচরে l ছবি: সংগৃহীত" width="643" /></span>রোহিঙ্গাদের পুনর্বাসনের জন্য নির্ধারিত ঠেঙ্গারচরের মাটি ও পরিবেশ এখনো মানুষের বসবাসের উপযোগী হয়নি। বর্ষার পুরো সময়জুড়ে চরটি পানিতে ডুবে থাকে। শুষ্ক মৌসুমে তা জেগে উঠলেও জোয়ারের সময় এর বড় অংশ পানিতে তলিয়ে যায়।</p>\r\n<p class="alignfull">নরম মাটি ও কাদায় পূর্ণ ওই চরটিকে স্থায়ী করতে আট বছর ধরে বন বিভাগ সেখানে ম্যানগ্রোভ বা শ্বাসমূলীয় প্রজাতির গাছ লাগাচ্ছে। পরিবেশ ও বন মন্ত্রণালয় ২০১৩ সালে চরটিকে সংরক্ষিত বন ঘোষণা করেছে।<br />অন্যদিকে বাংলাদেশ বার্ড ক্লাব ও পাখিবিষয়ক আন্তর্জাতিক সংস্থা স্পুন বিলড সেন্ড পাইপার টাস্কফোর্সের জরিপে দেখা গেছে, ওই চর-সংলগ্ন এলাকায় ৫৫ প্রজাতির পাখি বসবাস করে। দেশের উপকূলের মধ্যে হাতিয়ার পাশে ঠেঙ্গারচরসহ পার্শ্ববর্তী এলাকায় শীতকালে ৫৫ প্রজাতির প্রায় ৫০ হাজার পাখি এসে বসত গড়ে। সেখানে সাত প্রজাতির প্রায় বিপন্ন, এক প্রজাতির বিপদাপন্ন এবং এক প্রজাতির পাখি রয়েছে, যা পৃথিবীজুড়েই মহা বিপদাপন্ন।<br />সংস্থা দুটির গবেষণায় দেখা গেছে, ওই চর এখনো মানুষের বসবাসের উপযোগী হয়ে ওঠেনি। নরম মাটি ও জোয়ারের পানিতে বেশির ভাগ সময় ডুবে থাকে বলেই সেখানে এত পাখি আসে। মৎস্য অধিদপ্তর ওই এলাকাসহ ভোলা থেকে নোয়াখালী পর্যন্ত মেঘনার অববাহিকাকে ইলিশের অভয়াশ্রম হিসেবে ঘোষণা করেছে। সেখানে নিয়মিত ডলফিন বিচরণ করে।<br />৫ ফেব্রুয়ারি বন বিভাগের পক্ষ থেকে ঠেঙ্গারচর নিয়ে পরিবেশ ও বন মন্ত্রণালয়ের কাছে একটি চিঠি দেওয়া হয়। তাতে বলা হয়, নোয়াখালীর ঠেঙ্গারচর নামে যে এলাকায় রোহিঙ্গাদের পুনর্বাসনের উদ্যোগ নেওয়া হয়েছে, সেটি জোয়ারের সময় পানিতে ডুবে থাকে। শুষ্ক মৌসুমে এ চরের কিছু অংশ দৃশ্যমান হলেও অতি জোয়ারের সময় ও বর্ষা মৌসুমে প্লাবিত হয়। ঠেঙ্গারচরে অপেক্ষাকৃত উঁচু স্থানের ভূমি এখনো স্থায়িত্ব লাভ করেনি। জলযান থেকে নেমে হাঁটু পরিমাণ কাদা ডিঙিয়ে চরের অপেক্ষাকৃত উঁচু স্থানে পৌঁছাতে হয়।<br />এ ব্যাপারে জানতে চাইলে নোয়াখালীর জেলা প্রশাসক বদরে মুনির ফেরদৌস প্রথম আলোকে বলেন, ওই চরে কোনো বন্য প্রাণী নেই। কিছু বক ছাড়া সেখানে কোনো প্রাণী দেখা যায় না। আর সংরক্ষিত হিসেবে ঘোষিত বন বাতিল করার সুযোগ আছে। সরকার সেখানে বেড়িবাঁধসহ অন্যান্য স্থাপনা করে রোহিঙ্গাদের পুনর্বাসন করতে পারে। কীভাবে সেখানে বসতি করা যায়, সে ব্যাপারে প্রতিবেদন দেওয়ার জন্য বন বিভাগের সঙ্গে জেলা প্রশাসন কাজ করছে বলেও জানান তিনি।<br />বাংলাদেশ বার্ড ক্লাবের প্রতিষ্ঠাতা প্রখ্যাত পাখি বিশেষজ্ঞ ইনাম আল হক এ ব্যাপারে প্রথম আলোকে বলেন, &lsquo;১০ বছর ধরে আমরা দেশের উপকূলীয় এলাকার পাখি ও বন্য প্রাণী পর্যবেক্ষণ করতে গিয়ে দেখতে পেয়েছি, এলাকাটি দেশের বিপন্নপ্রায় নানা পাখির শেষ আশ্রয়স্থল। সেখানে জোয়ারের পানির উচ্চতা ও কাদার পরিমাণ এতই বেশি যে কোনো মানুষের পক্ষে সেখানে বাস করা সম্ভব না। সরকার যদি সেখানে জোর করে রোহিঙ্গাদের বসতি করতে চায়, তাহলে তা হবে আত্মঘাতী। শেষ পর্যন্ত মানুষও সেখানে বসবাস করতে পারবে না। আর বন্য প্রাণী তার আশ্রয় হারাবে।&rsquo;<br />বিকল্প প্রস্তাব দিয়েছিল বন বিভাগ<br />৫ ফেব্রুয়ারি বন বিভাগ থেকে পরিবেশ ও বন মন্ত্রণালয়কে দেওয়া এক চিঠিতে আরও বলা হয়েছে, সামুদ্রিক ঢেউ, জলোচ্ছ্বাস ও অন্যান্য প্রাকৃতিক বিপর্যয়ে চরটি প্রায়ই ক্ষতিগ্রস্ত হয়। এ কারণে আজ পর্যন্ত সেখানে কোনো বসতি গড়ে ওঠেনি। কক্সবাজারে বসবাসরত রোহিঙ্গা শরণার্থীদের ঠেঙ্গারচরে পুনর্বাসন না করে স্থায়িত্ব লাভসহ চাষাবাদ উপযোগী একটি চরে পুনর্বাসনের প্রস্তাব দিয়েছিল বন বিভাগ। বন বিভাগ একই উপজেলার মূল ভূখণ্ড থেকে দু-তিন কিলোমিটার উত্তর-পশ্চিমে অবস্থিত ঘাসিয়ার চরের ৫০০ একর সংরক্ষিত বনের পতিত এলাকায় রোহিঙ্গাদের পুনর্বাসনের জন্য প্রস্তাব দিয়েছিল। বন বিভাগ থেকে বলা হয়েছে, ঘাসিয়ার চরে ম্যানগ্রোভ বন সৃজন করা হয়েছে এবং সেখানে সাম্প্রতিক সময়ে কিছু জনবসতি স্থাপন করতে দেখা গেছে।<br />বন বিভাগ থেকে সরেজমিন পরিদর্শন শেষে ওই চরটিকে রোহিঙ্গাদের পুনর্বাসনের অনুপযোগী হিসেবে তুলে ধরেছে। পাশাপাশি বন বিভাগ সেখানে সরকার যদি রোহিঙ্গা পুনর্বাসন করতে চায়, তাহলে মোট ছয়টি পদক্ষেপ নেওয়ার পরামর্শ দিয়েছে। এসব পরামর্শ মেনে সরকার সেখানে রোহিঙ্গা পুনর্বাসন করলে প্রথমেই সংরক্ষিত বনের মর্যাদা বাতিল করতে হবে। ২০১৩ সালের ৫ নভেম্বর সরকার এর জীববৈচিত্র্যের কথা চিন্তা করে সংরক্ষিত বন ঘোষণা করে।<br />অন্যদিকে বন বিভাগ থেকে বলা হয়েছে, যদি ঠেঙ্গারচরে মানব বসতি করতে হয়, তাহলে এর চারদিকে বেড়িবাঁধ নির্মাণ করতে হবে। চরটি স্থায়ী হয়েছে কি না, তা পরীক্ষা করতে হবে। পানীয় জলের ব্যবস্থা ও ঘূর্ণিঝড় আশ্রয়কেন্দ্র নির্মাণ করতে হবে।<br />এ ব্যাপারে জানতে চাইলে প্রধান বন সংরক্ষক মোহাম্মদ সফিউল আলম চৌধুরী প্রথম আলোকে বলেন, বন বিভাগ সরকারের পক্ষে বনভূমি রক্ষণাবেক্ষণের কাজ করে থাকে। সরকার যদি ঠেঙ্গারচরে রোহিঙ্গাদের বসতি গড়ে তোলার পরিকল্পনা করে, তাহলে বন বিভাগ থেকে এ ব্যাপারে সব ধরনের সহযোগিতা করা হবে।<br />বিপন্ন চামচ-ঠুঁটো বাটান পাখির আশ্রয়স্থল<br />ঠেঙ্গারচরের মাটি কাদা ও বালুর বিশেষ ধরনের মিশ্রণে গড়ে উঠেছে। সেখানে একধরনের পোকা হয়, যা খাওয়ার লোভে ওই চরে চামচ-ঠুঁটো বাটান নামে পৃথিবী থেকে প্রায় বিলুপ্ত হতে যাওয়া এক জাতের পাখি শীতকালে বসত গড়ে। সারা পৃথিবীতে ওই পাখি আছেই মাত্র ২০০ জোড়া, যার ৬০ জোড়া আছে ওই চর ও পার্শ্ববর্তী এলাকায়। এদের বিলুপ্তি থেকে বাঁচাতে বিশ্বের বিভিন্ন দেশের বন্য প্রাণীপ্রেমী ও গবেষকেরা মিলে চামচ-ঠুঁটো বাটান টাস্কফোর্স নামে একটি সংগঠনও গড়ে তুলেছেন।<br />স্পুন বিলড সেন্ড পাইপার টাস্কফোর্সের সমন্বয়কারী ক্রিস্টফ জক্লার এ ব্যাপারে প্রথম আলোকে বলেন, &lsquo;এই এলাকা শুধু বাংলাদেশের না, সারা বিশ্বের পাখির জন্য গুরুত্বপূর্ণ। এ ছাড়া ওই এলাকাটি বিশ্বব্যাপী বিপন্ন নরমানের সবুজ পা এবং বড় নট, সংকটাপন্ন দেশি গাংচশা এবং আরও অনেক পাখির জন্য অতি গুরুত্বপূর্ণ। ফলে ওই পাখিগুলো রক্ষা করতে এদের আবাসস্থল ওই চরগুলোকে রক্ষা করতে হবে।&rsquo;<br />২০১১ সালে সংবিধানের পঞ্চদশ সংশোধনীতে জীববৈচিত্র্যের অধিকারকে যুক্ত করা হয়েছে। এ ছাড়া ২০১০ সালের পরিবেশ সংরক্ষণ আইনে জলাভূমি ভরাট করা শাস্তিযোগ্য অপরাধ। আর ২০১২ সালে সংসদে অনুমোদন হওয়া জীববৈচিত্র্য সংরক্ষণ আইন অনুযায়ী বিপন্নপ্রায় প্রাণী বসতি এলাকা ধ্বংস করা শাস্তিযোগ্য অপরাধ।<br />এ ব্যাপারে ইন্টারন্যাশনাল ইউনিয়ন ফর কনজারভেশন অব নেচার (আইইউসিএন), বাংলাদেশের কান্ট্রি ডিরেক্টর ইশতিয়াক উদ্দিন আহমেদ প্রথম আলোকে বলেন, ওই চরটি উপকূলীয় জীববৈচিত্র্য ও মহা বিপদাপন্ন পাখি চামচ-ঠুঁনো বাটানদের বসতি এলাকা হিসেবে গুরুত্বপূর্ণ। সেখানে রোহিঙ্গাদের পুনর্বাসনের আগে সেখানকার প্রতিবেশব্যবস্থা ও জীববৈচিত্র্যের একটি মূল্যায়ন হওয়া প্রয়োজন। পরিবেশগত প্রভাব সমীক্ষা করে তারপর সেখানে পুনর্বাসন বা কোনো অবকাঠামো নির্মাণ করা যাবে কি না, সেই সিদ্ধান্ত নেওয়া উচিত।<br />এদিকে জাতিসংঘের শরণার্থীবিষয়ক সংস্থা ইউএনএইচসিআর থেকেও রোহিঙ্গা শরণার্থীদের ঠেঙ্গারচরে পুনর্বাসনের ব্যাপারে আপত্তি তোলা হয়েছে।</p>', 'public/productImage/robustnessDiagram.JPG', 1, '2017-02-19 00:42:25', '2017-02-19 00:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districtName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `fullName`, `emailAddress`, `address`, `phoneNumber`, `districtName`, `created_at`, `updated_at`) VALUES
(1, 'SAkib Al Hasan', 'sakib@gmail.com', 'Dhaka', '123', 'Dhaka', '2017-02-26 00:07:13', '2017-02-26 00:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pansy Hayes', '922 Annabelle Stravenue Apt. 673\nNew Taylor, SC 78205', 'cbraun@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'vwWxHPQiP7', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(2, 'Eula Davis', '8322 Candida Field\nSouth Meghan, AK 62392', 'hilll.ryleigh@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'cBG4U22x03', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(3, 'Maeve Abernathy', '2254 D''angelo Drives Apt. 702\nEffertzchester, NJ 87953', 'laron.grimes@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'WPniTs0Pm3', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(4, 'Hilma Robel', '323 Cletus Trace Suite 836\nNorth Quinn, ID 10554', 'matilde70@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'DymreeCfMT', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(5, 'Dr. Trever Haley', '45202 Koch Green\nNew Gilbertchester, HI 55108', 'fern.runolfsdottir@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'tNxxolJGY5', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(6, 'Precious Davis', '4322 Oleta Islands\nNew Gisselle, NY 50784', 'kozey.evangeline@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'dSgUDAjSIz', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(7, 'Prof. Johnathon Fritsch', '4088 Golda Estate\nPort Erictown, FL 06960-1906', 'brycen31@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'cc6Mglg3p5', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(8, 'Ms. Rosalyn Rosenbaum', '472 Wilfred Dam\nEast Yasmine, WI 06474', 'sipes.shania@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'QyK1wHxZj7', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(9, 'Giovanna Labadie', '273 Willis Greens Suite 897\nHellerchester, IN 18000-5112', 'goldner.jerry@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'qlxGg5E2hg', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(10, 'Gus Wilkinson MD', '101 Pablo Wall Suite 675\nLake Cordieton, GA 29143', 'amy.hermiston@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'cddfNBAckP', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(11, 'Adrain Stehr', '562 Stanton Mill\nVinniemouth, VT 37944-0792', 'william10@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'Wl2zjzwHZf', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(12, 'Prof. Darrell Rosenbaum IV', '3182 Emmet Mount\nLake Marielle, NV 69741-8493', 'ortiz.zula@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '4xPhiZlSwA', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(13, 'Karolann Conn', '491 Anjali Port Suite 401\nEliasland, PA 60320-6186', 'eyundt@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '9UD1lfGhvQ', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(14, 'Antonia Frami', '3565 Smitham Ranch Suite 549\nNaomieberg, AK 98093-3102', 'davis.litzy@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'ZWHUiv0cas', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(15, 'Bobby Romaguera', '1878 Hamill Islands\nHamillland, WI 00764', 'rwolff@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'EkicumvRGw', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(16, 'Mr. Colten Goyette', '1645 Feil Manors\nEast Natalia, NH 21289', 'alayna34@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'Wf1hN4cA7i', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(17, 'Ryleigh Reichel', '654 Lukas Ranch Suite 172\nKochbury, MI 07130', 'ncummerata@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'eYXjLS1KqN', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(18, 'Augustus Bernhard', '956 Sauer Estates\nWilmamouth, HI 30336', 'weston49@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'deKsa3IRYT', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(19, 'Mazie Funk', '275 Satterfield Square\nHumbertochester, WY 95388-7097', 'mraz.hoyt@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'iIDCFc8i9K', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(20, 'Prof. Frida Turner', '3706 Hayes Road Suite 433\nRussellmouth, OR 86482', 'ghyatt@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'QmcfxzpVzH', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(21, 'Gordon Block', '61195 Fanny Station\nKayleyland, MD 01711-1185', 'macejkovic.kallie@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '680eU2osNx', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(22, 'Dr. Rashawn Brakus', '36378 Chaim Squares Apt. 979\nGoyetteview, AK 62457-3568', 'zstokes@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'CGhAEKQoyv', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(23, 'Abel Smith', '8587 White Common\nEast Marcos, MA 21361', 'cathy79@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'miu53ICxKk', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(24, 'Casper Welch', '297 Gaylord Cliff\nChayafort, DE 55601', 'ygleason@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'Qhznih2ZXE', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(25, 'Rocio Stiedemann', '910 Audie Courts Apt. 262\nWest Makayla, PA 77144-5727', 'baumbach.fletcher@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'bA0szadrB0', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(26, 'Prof. Regan Simonis', '1903 Kerluke Forge Apt. 173\nNorth Vance, WI 76709-0305', 'morar.jaquelin@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'STEAcwHtjv', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(27, 'Rey Mertz', '8781 Buckridge Turnpike Suite 520\nPort Marilyne, KY 27617-0612', 'dillon69@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'b2q6oqkM08', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(28, 'Cleveland Stamm', '6400 Tracey Springs\nNew Mable, MI 87476-4892', 'sarina.botsford@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'C8iLNpvtEm', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(29, 'Lafayette Torp', '8034 Grady Track\nEarlview, WY 72393-0399', 'annamarie.lebsack@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'IbVBTfGtII', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(30, 'Jessie Johns', '2828 Jarrell Crossroad Apt. 843\nTorranceside, MT 44337-2648', 'isabella37@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'HWe2X3cbUz', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(31, 'Clarissa Effertz', '903 Treva Station Apt. 102\nAmeliaview, TX 43721', 'koch.ludie@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'zLhH6DJLtD', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(32, 'Kristina Stracke I', '8927 Tiara Junction Apt. 867\nNew Jaketon, LA 19572-4537', 'wendy.ondricka@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'vSbJ9QOXqv', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(33, 'Anais Goldner', '7536 Johnston Mews Suite 618\nAdalbertomouth, AR 21560-2084', 'terrill.hand@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'NyjGAYRVUz', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(34, 'Abbigail Leffler', '912 Wyman Road\nSkilesside, AL 64696-4400', 'gstamm@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '7oT1eBeLiq', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(35, 'Maximillia Conroy', '856 Kohler Port\nWest Leopoldoland, NH 76001-3441', 'brigitte17@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'wiInusRw9S', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(36, 'Rahsaan Abshire', '45993 Connor Parks\nGaylordside, MA 63788', 'savannah42@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '29Tbkce0CS', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(37, 'Dr. Cicero Schneider', '37374 Dortha Stream\nNicoletteville, UT 14135-7415', 'williamson.george@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'UzJbkkz5gr', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(38, 'Prof. Madalyn McCullough I', '523 Crona Neck\nMarcosmouth, ID 06047', 'hyatt.eliseo@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'va1N21KmWD', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(39, 'Raymond Reichel', '788 Estel Valleys\nMcClurefurt, NJ 00912-7216', 'oheller@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'fX3ywtCP7J', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(40, 'Jennifer Reinger', '8416 Hackett Views\nNew Edwardhaven, OK 39666-1058', 'bahringer.ari@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'nULz0VpMTQ', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(41, 'Dr. Cruz Rau PhD', '191 Nicolas Shores Apt. 493\nEast Consuelo, OK 18213-9490', 'cgerhold@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '1qKDw3SF4m', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(42, 'Melody Hodkiewicz', '502 Luther Road\nSouth Lew, DC 10192-9870', 'bergnaum.okey@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'n4UKs9nh6u', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(43, 'Fermin Rolfson', '1776 Dickens Station\nJacobsonberg, IA 95451-6623', 'oreilly.verna@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'ZpHYueufqI', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(44, 'Melissa Douglas', '69051 Kemmer Key Apt. 326\nKihnfort, ND 05188', 'aracely85@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '7PrxVsdOFC', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(45, 'Timothy Wunsch', '234 Hermann Plains\nHellerstad, WI 31691-2117', 'vgrady@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'Pc4aKDE3is', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(46, 'Giles Mayert V', '8968 Larkin Trace Apt. 831\nNew Leonor, NE 85241-5137', 'erdman.dolores@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '5ualaTxHey', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(47, 'Mr. Emmanuel Powlowski IV', '6139 Junior Inlet\nLarkinville, GA 15653-5813', 'pollich.alec@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'Z07xGK28xr', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(48, 'Rosa Mayer', '268 Malika Roads\nEast Rosalindamouth, DC 46341', 'carmel22@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'C4yZEGYsbM', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(49, 'Ms. Elissa Labadie I', '9069 King Villages\nPort Jeff, NY 71163-9403', 'daniela92@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'QJLl98VtOA', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(50, 'Prof. Angelica Medhurst', '4777 Fay Road\nEast Sabinahaven, AZ 99577-7060', 'barney72@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'WNMVENjJNq', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(51, 'Sohihudl Hasan', '922 Annabelle Stravenue Apt. 673\r\nNew Taylor, SC 78205', 'cbraunzx@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'vwWxHPQiP7', '2017-02-18 22:16:32', '2017-02-18 22:16:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
