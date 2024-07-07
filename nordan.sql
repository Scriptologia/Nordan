-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 07 2024 г., 14:46
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `nordan`
--

-- --------------------------------------------------------

--
-- Структура таблицы `advantages`
--

CREATE TABLE `advantages` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `advantages`
--

INSERT INTO `advantages` (`id`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ортопедическая обувь', 'ortopedicheskaya-obuv', NULL, NULL, '2024-07-07 08:25:55'),
(2, 'Повышенная полнота', 'povyshennaya-polnota', NULL, '2024-07-07 08:29:35', '2024-07-07 08:29:35'),
(3, 'Специальная обувь', 'specialnaya-obuv', NULL, '2024-07-07 08:29:45', '2024-07-07 08:29:45'),
(4, 'Waterproof', 'waterproof', NULL, '2024-07-07 08:29:55', '2024-07-07 08:29:55');

-- --------------------------------------------------------

--
-- Структура таблицы `advantage_product`
--

CREATE TABLE `advantage_product` (
  `advantage_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `advantage_product`
--

INSERT INTO `advantage_product` (`advantage_id`, `product_id`) VALUES
(4, 1),
(2, 6),
(1, 6),
(4, 7),
(3, 7),
(2, 7),
(1, 8),
(4, 8),
(1, 9),
(4, 9),
(3, 9),
(2, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `collections`
--

CREATE TABLE `collections` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `collections`
--

INSERT INTO `collections` (`id`, `name`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'весна-лето 2024 ', '2024-06-22 19:11:48', '2024-07-05 07:41:28', 'vesna-leto-2024'),
(2, 'Зима ', '2024-06-22 19:11:57', '2024-07-05 07:41:35', 'zima'),
(3, 'Осень 2023 ', '2024-06-22 19:12:05', '2024-07-05 07:41:51', 'osen-2023'),
(4, 'Лето 2024 ', '2024-06-22 19:12:16', '2024-07-05 07:41:43', 'leto-2024');

-- --------------------------------------------------------

--
-- Структура таблицы `colors`
--

CREATE TABLE `colors` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `colors`
--

INSERT INTO `colors` (`id`, `name`, `color`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'красный ', 'red', '2024-06-22 19:01:53', '2024-07-05 07:42:20', 'krasnyj'),
(2, 'зеленый ', '#565656', '2024-06-22 19:02:26', '2024-07-05 07:42:12', 'zelenyj'),
(3, 'желтый ', '#565656', '2024-06-22 19:02:42', '2024-07-05 07:42:04', 'zheltyj');

-- --------------------------------------------------------

--
-- Структура таблицы `color_product`
--

CREATE TABLE `color_product` (
  `color_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `color_product`
--

INSERT INTO `color_product` (`color_id`, `product_id`) VALUES
(1, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'size', 'number', 'Size', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:2\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 2),
(24, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 3),
(25, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(26, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(27, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|string|max:20\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 2),
(28, 5, 'color', 'text', 'Color', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|string|max:7\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 4),
(29, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 5),
(30, 5, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 1, '{}', 6),
(31, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(32, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|string|max:20\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 2),
(33, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 4),
(34, 10, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 5),
(35, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(36, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|string|max:100\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 2),
(37, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 4),
(38, 11, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 1, '{}', 5),
(39, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(40, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|string|max:100\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 2),
(41, 12, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|string|max:300\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 3),
(42, 12, 'link1', 'text', 'Link1', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|string\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 4),
(43, 12, 'link2', 'text', 'Link2', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|string\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 5),
(44, 12, 'img', 'adv_image', 'Img', 0, 1, 1, 1, 1, 1, '{\"max\":1,\"min\":0,\"expanded\":true,\"show_as_images\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"thumbnails\":[{\"type\":\"crop\",\"name\":\"crop-500\",\"width\":300,\"height\":150,\"position\":\"center\"}]}', 6),
(45, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 7),
(46, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 1, 1, '{}', 8),
(47, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(48, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(49, 13, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|string|max:100\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 2),
(50, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 3),
(51, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 1, '{}', 4),
(52, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(53, 14, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|string|max:100\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 2),
(54, 14, 'img', 'adv_image', 'Img', 0, 1, 1, 1, 1, 1, '{\"max\":1,\"min\":0,\"expanded\":true,\"show_as_images\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"thumbnails\":[{\"type\":\"crop\",\"name\":\"crop-500\",\"width\":300,\"height\":150,\"position\":\"center\"}]}', 4),
(55, 14, 'icon', 'adv_image', 'Icon', 0, 1, 1, 1, 1, 1, '{\"max\":1,\"min\":0,\"expanded\":true,\"show_as_images\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"thumbnails\":[{\"type\":\"crop\",\"name\":\"crop-500\",\"width\":50,\"height\":50,\"position\":\"center\"}]}', 5),
(56, 14, 'link', 'text', 'Link', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|string|max:100\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 6),
(57, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 7),
(58, 14, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 1, '{}', 8),
(59, 15, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(60, 15, 'description', 'text', 'Description', 1, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|string|max:500\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 4),
(61, 15, 'type_id', 'text', 'Type Id', 1, 0, 0, 1, 1, 0, '{}', 7),
(62, 15, 'collection_id', 'text', 'Collection Id', 1, 0, 0, 0, 0, 0, '{}', 8),
(63, 15, 'recomendation', 'checkbox', 'Recomendation', 1, 1, 1, 1, 1, 1, '{\"on\":1,\"off\":0,\"checked\":false,\"browse_inline_editor\":true}', 9),
(64, 15, 'images', 'adv_media_files', 'Images', 0, 1, 1, 1, 1, 1, '{\"browse_image_max_height\":\"30px\",\"max\":2,\"min\":0,\"expanded\":true,\"show_as_images\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"thumbnails\":[{\"type\":\"fit\",\"name\":\"fit-500\",\"width\":500,\"height\":500,\"position\":\"center\"},{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 5),
(65, 15, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 0, 0, '{}', 17),
(66, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 1, '{}', 18),
(67, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 1, '{}', 19),
(68, 15, 'product_belongsto_collection_relationship', 'relationship', 'collections', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Collection\",\"table\":\"collections\",\"type\":\"belongsTo\",\"column\":\"collection_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"collections\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(69, 15, 'product_belongsto_type_relationship', 'relationship', 'types', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Type\",\"table\":\"types\",\"type\":\"belongsTo\",\"column\":\"type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"collections\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(71, 15, 'product_belongstomany_market_relationship', 'relationship', 'markets', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Market\",\"table\":\"markets\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"market_product\",\"pivot\":\"1\",\"taggable\":\"0\"}', 12),
(72, 15, 'product_belongstomany_parameter_relationship', 'relationship', 'parameters', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Parameter\",\"table\":\"parameters\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"parameter_product\",\"pivot\":\"1\",\"taggable\":\"0\"}', 13),
(73, 15, 'product_belongstomany_size_relationship', 'relationship', 'sizes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Size\",\"table\":\"sizes\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"size\",\"pivot_table\":\"product_size\",\"pivot\":\"1\",\"taggable\":\"0\"}', 14),
(74, 15, 'product_belongstomany_color_relationship', 'relationship', 'colors', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Color\",\"table\":\"colors\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"color_product\",\"pivot\":\"1\",\"taggable\":\"0\"}', 15),
(75, 15, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|string|max:100\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 2),
(76, 15, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|string|max:150\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 3),
(77, 15, 'parameters', 'adv_json', 'Parameters', 0, 1, 1, 1, 1, 1, '{\"json_fields\":{\"name\":\"Name\",\"value\":\"Value\"}}', 6),
(80, 11, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|string|max:100\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 3),
(81, 5, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|string|max:30\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 3),
(82, 14, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|string|max:150\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 3),
(83, 10, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|string|max:30\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 3),
(84, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(85, 16, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|string|max:300\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 2),
(86, 16, 'img', 'adv_image', 'Img', 0, 1, 1, 1, 1, 1, '{\"browse_image_max_height\":\"30px\",\"max\":1,\"min\":0,\"expanded\":true,\"show_as_images\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"thumbnails\":[{\"type\":\"fit\",\"name\":\"fit-500\",\"width\":500,\"height\":500,\"position\":\"center\"},{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 4),
(87, 16, 'description', 'rich_text_box', 'Description', 1, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\"},\"validation\":{\"rule\":\"required|string\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 5),
(88, 16, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|string|max:300\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 3),
(89, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 1, 1, '{}', 6),
(90, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(91, 16, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 8),
(92, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 17, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|string|max:100\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 2),
(94, 17, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|string|max:150\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 3),
(95, 17, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 0, 1, '{}', 4),
(96, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 5),
(97, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 1, '{}', 6),
(98, 15, 'product_belongstomany_advantage_relationship', 'relationship', 'advantages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Advantage\",\"table\":\"advantages\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"advantage_product\",\"pivot\":\"1\",\"taggable\":\"0\"}', 16);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-06-22 16:34:49', '2024-06-22 16:34:49'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null,\"extra_details\":{}}', '2024-06-22 16:34:49', '2024-06-27 10:37:34'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-06-22 16:34:49', '2024-06-22 16:34:49'),
(4, 'sizes', 'sizes', 'Size', 'Sizes', NULL, 'App\\Models\\Size', NULL, NULL, 'sizes of boots', 1, 0, '{\"order_column\":\"size\",\"order_display_column\":\"size\",\"order_direction\":\"asc\",\"default_search_key\":\"size\",\"extra_details\":{},\"scope\":null}', '2024-06-22 18:47:56', '2024-06-22 18:55:24'),
(5, 'colors', 'colors', 'Color', 'Colors', NULL, 'App\\Models\\Color', NULL, NULL, 'colors of boots', 1, 0, '{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"extra_details\":{},\"scope\":null}', '2024-06-22 19:01:15', '2024-07-05 07:37:28'),
(10, 'types', 'types', 'Type', 'Types', NULL, 'App\\Models\\Type', NULL, NULL, 'type of boots', 1, 0, '{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"extra_details\":{},\"scope\":null}', '2024-06-22 19:08:24', '2024-07-05 07:39:46'),
(11, 'collections', 'collections', 'Collection', 'Collections', NULL, 'App\\Models\\Collection', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"extra_details\":{},\"scope\":null}', '2024-06-22 19:11:14', '2024-07-05 07:36:40'),
(12, 'sliders', 'sliders', 'Slider', 'Sliders', NULL, 'App\\Models\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"extra_details\":{},\"scope\":null}', '2024-06-22 19:18:29', '2024-06-27 10:23:43'),
(13, 'parameters', 'parameters', 'Parameter', 'Parameters', NULL, 'App\\Models\\Parameter', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"extra_details\":{}}', '2024-06-22 19:31:01', '2024-06-22 19:31:01'),
(14, 'markets', 'markets', 'Market', 'Markets', NULL, 'App\\Models\\Market', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"extra_details\":{},\"scope\":null}', '2024-06-22 19:36:54', '2024-07-05 07:38:04'),
(15, 'products', 'products', 'Product', 'Products', NULL, 'App\\Models\\Product', NULL, NULL, 'products', 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null,\"extra_details\":{}}', '2024-06-23 06:20:00', '2024-07-07 08:28:42'),
(16, 'news', 'news', 'News', 'News', NULL, 'App\\Models\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"extra_details\":{},\"scope\":null}', '2024-07-06 16:50:35', '2024-07-06 18:02:17'),
(17, 'advantages', 'advantages', 'Преимущество', 'Преимущества', NULL, 'App\\Models\\Advantage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"extra_details\":{},\"scope\":null}', '2024-07-07 08:09:03', '2024-07-07 08:31:11');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `markets`
--

CREATE TABLE `markets` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `markets`
--

INSERT INTO `markets` (`id`, `name`, `img`, `icon`, `link`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'amazon ', NULL, NULL, 'http://nordan/card#', '2024-06-22 19:39:32', '2024-07-05 07:42:59', 'amazon'),
(2, 'amazon2 ', NULL, NULL, 'http://nordan/card#', '2024-06-26 10:54:23', '2024-07-05 07:42:41', 'amazon2'),
(3, 'amazon3 ', NULL, NULL, 'http://nordan/card#', '2024-06-26 10:54:40', '2024-07-05 07:42:32', 'amazon3'),
(4, 'amazon (clone) ', NULL, NULL, 'http://nordan/card#', '2024-06-26 18:09:17', '2024-07-05 07:42:51', 'amazon-clone');

-- --------------------------------------------------------

--
-- Структура таблицы `market_product`
--

CREATE TABLE `market_product` (
  `market_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `market_product`
--

INSERT INTO `market_product` (`market_id`, `product_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\Product', 1, 'bb5a23c0-6d16-461c-8446-095441012332', 'images', 'Screenshot (1)', 'screenshot-1.jpg', 'image/jpeg', 'public', 'public', 68773, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 2, '2024-06-26 10:08:54', '2024-06-26 10:17:15'),
(4, 'App\\Models\\Product', 1, 'ce5b074b-e257-443c-b9ce-a97f03ddc3db', 'images', 'nija', 'nija.jpeg', 'image/jpeg', 'public', 'public', 176670, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 1, '2024-06-26 10:17:10', '2024-06-26 10:17:15'),
(9, 'App\\Models\\Market', 1, '6640e8b7-8652-4e15-8d05-97992fe04576', 'icon', '43933400', '43933400.png', 'image/png', 'public', 'public', 52034, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 4, '2024-06-26 10:48:25', '2024-06-26 10:48:25'),
(10, 'App\\Models\\Market', 1, 'c4278020-55c3-49b8-84ae-252031dfc7f2', 'img', '43933400', '43933400.png', 'image/png', 'public', 'public', 52034, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 5, '2024-06-26 10:50:12', '2024-06-26 10:50:12'),
(11, 'App\\Models\\Market', 2, 'f558700f-18c5-436d-bb52-a96bb140254a', 'img', '187153v16b9ab52', '187153v16b9ab52.jpg', 'image/jpeg', 'public', 'public', 9073, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 1, '2024-06-26 10:54:59', '2024-06-26 10:54:59'),
(12, 'App\\Models\\Market', 2, '960892e0-4365-477f-b24d-832f7491bc38', 'icon', '187153v16b9ab52', '187153v16b9ab52.jpg', 'image/jpeg', 'public', 'public', 9073, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 2, '2024-06-26 10:54:59', '2024-06-26 10:54:59'),
(13, 'App\\Models\\Market', 3, '8aa2b1c0-e589-4517-9d16-e68b0f4a0cc4', 'img', 'sphere', 'sphere.jpg', 'image/jpeg', 'public', 'public', 16397, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 1, '2024-06-26 10:55:19', '2024-06-26 10:55:19'),
(14, 'App\\Models\\Market', 3, 'ea523deb-5be4-4742-99b3-ca5d8c288c9e', 'icon', 'sphere', 'sphere.jpg', 'image/jpeg', 'public', 'public', 16397, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 2, '2024-06-26 10:55:19', '2024-06-26 10:55:19'),
(15, 'App\\Models\\Market', 4, '72467943-680a-481e-90fb-4036bbcf5db3', 'img', 'sphere', 'sphere.jpg', 'image/jpeg', 'public', 'public', 16397, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 1, '2024-06-26 18:09:34', '2024-06-26 18:09:34'),
(16, 'App\\Models\\Market', 4, '7aece2da-b344-45fb-aebf-3ea0a86156b3', 'icon', 'sphere', 'sphere.jpg', 'image/jpeg', 'public', 'public', 16397, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 2, '2024-06-26 18:09:34', '2024-06-26 18:09:34'),
(19, 'App\\Models\\Slider', 2, '82f61846-4821-4edd-92c4-7f7bab92d87e', 'img', 'nija', 'nija.jpeg', 'image/jpeg', 'public', 'public', 176670, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 1, '2024-06-27 10:24:04', '2024-06-27 10:24:04'),
(20, 'App\\Models\\Slider', 1, 'e7b7b8e7-3dbf-47c2-8277-798d47d595a7', 'img', 'jangak', 'jangak.png', 'image/png', 'public', 'public', 1880497, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 1, '2024-06-27 10:24:24', '2024-06-27 10:24:24'),
(23, 'App\\Models\\Product', 1, 'ca724c2e-54b3-45b6-9219-c8a6f2667514', 'images', 'Screenshot', 'screenshot.jpg', 'image/jpeg', 'public', 'public', 112211, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 3, '2024-06-27 14:02:07', '2024-06-27 14:02:07'),
(24, 'App\\Models\\Product', 10, '078697cc-910c-48b6-b0a7-5916e9d521da', 'images', 'sphere', 'sphere.jpg', 'image/jpeg', 'public', 'public', 16397, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 1, '2024-07-05 14:32:58', '2024-07-05 14:32:58'),
(25, 'App\\Models\\News', 1, '2a7e75da-866a-42d1-aee0-4ea438b6135f', 'img', 'nija', 'nija.jpeg', 'image/jpeg', 'public', 'public', 176670, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 1, '2024-07-06 17:01:12', '2024-07-06 17:01:12'),
(26, 'App\\Models\\News', 11, '338e89ae-985d-449c-ba4a-6df488f3298e', 'img', 'Screenshot', 'screenshot.jpg', 'image/jpeg', 'public', 'public', 112211, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 1, '2024-07-06 17:03:12', '2024-07-06 17:03:12'),
(27, 'App\\Models\\News', 9, 'ff0e35f4-d34f-429c-a5bd-6cc7a9b660ec', 'img', 'jangak', 'jangak.png', 'image/png', 'public', 'public', 1880497, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 1, '2024-07-06 17:03:28', '2024-07-06 17:03:28'),
(28, 'App\\Models\\News', 5, '1ffea8c1-da03-4c10-a15f-fc73bdf57625', 'img', '43933400', '43933400.png', 'image/png', 'public', 'public', 52034, '[]', '{\"alt\": null, \"title\": null}', '[]', '[]', 1, '2024-07-06 18:47:29', '2024-07-06 18:47:29');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(2, 'header', '2024-06-22 18:11:51', '2024-06-22 18:16:17'),
(4, 'footer', '2024-06-23 04:14:57', '2024-06-25 18:04:09');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `status`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-06-22 16:34:50', '2024-06-22 16:34:50', 'voyager.dashboard', NULL),
(2, 1, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2024-06-22 16:34:50', '2024-07-06 16:51:40', 'voyager.media.index', NULL),
(3, 1, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 5, '2024-06-22 16:34:50', '2024-07-06 16:51:40', 'voyager.users.index', NULL),
(4, 1, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2024-06-22 16:34:50', '2024-07-06 16:51:40', 'voyager.roles.index', NULL),
(5, 1, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2024-06-22 16:34:50', '2024-07-06 16:51:40', NULL, NULL),
(6, 1, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2024-06-22 16:34:50', '2024-06-23 04:17:22', 'voyager.menus.index', NULL),
(7, 1, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2024-06-22 16:34:50', '2024-06-23 04:17:22', 'voyager.database.index', NULL),
(8, 1, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2024-06-22 16:34:50', '2024-06-23 04:17:22', 'voyager.compass.index', NULL),
(9, 1, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2024-06-22 16:34:50', '2024-06-23 04:17:22', 'voyager.bread.index', NULL),
(10, 1, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2024-06-22 16:34:50', '2024-07-06 16:51:40', 'voyager.settings.index', NULL),
(11, 2, 1, 'мужская', '', '_self', NULL, '#000000', NULL, 15, '2024-06-22 18:17:13', '2024-07-06 05:14:20', 'catalog', '{\"type\":\"muzhskaya\"}'),
(12, 2, 1, 'женская', '', '_self', NULL, '#000000', NULL, 16, '2024-06-22 18:17:31', '2024-07-06 05:14:48', 'catalog', '{\"type\":\"zhenskaya\"}'),
(13, 2, 1, 'детская', '', '_self', NULL, '#000000', NULL, 17, '2024-06-22 18:17:42', '2024-07-06 05:15:06', 'catalog', '{\"type\":\"detskaya\"}'),
(14, 2, 1, 'СПОРТИВНАЯ', '', '_self', NULL, '#000000', NULL, 18, '2024-06-22 18:18:02', '2024-07-06 05:15:47', 'catalog', '{\"type\": \"sportivnaya\"}'),
(15, 2, 1, 'АКСЕССУАРЫ', '', '_self', NULL, '#000000', NULL, 19, '2024-06-22 18:18:16', '2024-07-06 05:16:31', 'catalog', '{\"type\": \"aksesuary\"}'),
(16, 2, 1, 'ПОДДЕРЖКА', '', '_self', NULL, '#000000', NULL, 20, '2024-06-22 18:18:29', '2024-06-22 18:18:29', NULL, ''),
(19, 1, 1, 'Размеры', '', '_self', NULL, '#000000', 26, 3, '2024-06-22 18:47:57', '2024-06-27 10:32:57', 'voyager.sizes.index', 'null'),
(20, 1, 1, 'Цвета', '', '_self', NULL, '#000000', 26, 4, '2024-06-22 19:01:15', '2024-06-27 10:40:35', 'voyager.colors.index', 'null'),
(21, 1, 1, 'Типы', '', '_self', NULL, '#000000', 26, 6, '2024-06-22 19:08:24', '2024-06-27 10:32:44', 'voyager.types.index', 'null'),
(23, 1, 1, 'Главный слайдер', '', '_self', NULL, '#000000', 26, 8, '2024-06-22 19:18:29', '2024-07-07 08:22:55', 'voyager.sliders.index', 'null'),
(25, 1, 1, 'Markets', '', '_self', NULL, NULL, 26, 2, '2024-06-22 19:36:54', '2024-06-23 06:34:50', 'voyager.markets.index', NULL),
(26, 1, 1, 'Магазин', '', '_self', 'voyager-home', '#000000', NULL, 2, '2024-06-23 04:17:16', '2024-06-23 04:20:05', NULL, ''),
(27, 1, 1, 'Продукты', '', '_self', NULL, '#000000', 26, 1, '2024-06-23 06:20:00', '2024-06-27 10:31:29', 'voyager.products.index', 'null'),
(28, 4, 1, 'Мужская', '', '_self', NULL, '#000000', NULL, 1, '2024-06-25 17:54:39', '2024-06-25 17:57:28', NULL, ''),
(29, 4, 1, 'Зимняя', '', '_self', NULL, '#000000', 28, 1, '2024-06-25 17:55:28', '2024-06-25 17:56:57', NULL, ''),
(30, 4, 1, 'Летняя', '', '_self', NULL, '#000000', 28, 2, '2024-06-25 17:55:58', '2024-06-25 17:56:59', NULL, ''),
(31, 4, 1, 'Кроксы', '', '_self', NULL, '#000000', 28, 3, '2024-06-25 17:56:19', '2024-06-25 17:57:02', NULL, ''),
(32, 4, 1, 'Кросовки', '', '_self', NULL, '#000000', 28, 4, '2024-06-25 17:56:30', '2024-06-25 17:57:03', NULL, ''),
(33, 4, 1, 'Туфли', '', '_self', NULL, '#000000', 28, 5, '2024-06-25 17:56:41', '2024-06-25 17:57:04', NULL, ''),
(34, 4, 1, 'Ботинки', '', '_self', NULL, '#000000', 28, 6, '2024-06-25 17:56:52', '2024-06-25 17:57:04', NULL, ''),
(35, 4, 1, 'женская', '', '_self', NULL, '#000000', NULL, 2, '2024-06-25 17:57:18', '2024-06-26 16:59:06', NULL, ''),
(36, 4, 1, 'детская', '', '_self', NULL, '#000000', NULL, 3, '2024-06-25 17:57:38', '2024-06-26 16:59:06', NULL, ''),
(37, 4, 1, 'домашняя', '', '_self', NULL, '#000000', NULL, 4, '2024-06-25 17:57:48', '2024-06-26 16:59:06', NULL, ''),
(38, 1, 1, 'Коллекции', '', '_self', NULL, '#000000', 26, 5, '2024-06-27 10:40:11', '2024-06-27 10:40:35', 'voyager.collections.index', NULL),
(39, 1, 1, 'News', '', '_self', NULL, NULL, NULL, 3, '2024-07-06 16:50:35', '2024-07-06 16:51:40', 'voyager.news.index', NULL),
(40, 1, 1, 'Advantages', '', '_self', NULL, NULL, 26, 7, '2024-07-07 08:09:03', '2024-07-07 08:22:55', 'voyager.advantages.index', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2020_04_27_000000_add_status_to_menu_items_table', 2),
(26, '2024_06_23_150910_create_media_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `img`, `description`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Главные <span>«СМИ»</span> предупреждают: небо темнеет ', NULL, '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p><img src=\"http://nordan/storage/news/July2024/43933400.png\" alt=\"\" width=\"460\" height=\"460\"></p>', 'glavnye-smi-preduprezhdayut-nebo-temneet', NULL, '2024-07-06 18:49:32', NULL),
(2, 'Главные «СМИ» предупреждают: небо темнеет (clone)', NULL, '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', 'glavnye-smi-preduprezhdayut-nebo-temneet (clone)', '2024-07-06 17:02:04', '2024-07-06 17:02:04', NULL),
(3, 'Главные «СМИ» предупреждают: небо темнеет (clone)', NULL, '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', 'glavnye-smi-preduprezhdayut-nebo-temneet (clone)', '2024-07-06 17:02:09', '2024-07-06 17:02:09', NULL),
(4, 'Главные «СМИ» предупреждают: небо темнеет (clone)', NULL, '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', 'glavnye-smi-preduprezhdayut-nebo-temneet (clone)', '2024-07-06 17:02:13', '2024-07-06 17:02:13', NULL),
(5, 'Главные «СМИ» предупреждают: небо темнеет (clone0) ', NULL, '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', 'glavnye-smi-preduprezhdayut-nebo-temneet-clone0', '2024-07-06 17:02:17', '2024-07-06 18:48:19', NULL),
(6, 'Главные «СМИ» предупреждают: небо темнеет (1)', NULL, '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', 'glavnye-smi-preduprezhdayut-nebo-temneet-1', '2024-07-06 17:02:00', '2024-07-06 18:00:46', NULL),
(7, 'Главные «СМИ» предупреждают: небо темнеет (новая)', NULL, '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', 'glavnye-smi-preduprezhdayut-nebo-temneet', '2024-07-06 17:02:00', '2024-07-06 18:00:11', NULL),
(8, 'Главные «СМИ» предупреждают: небо темнеет (0)', NULL, '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', 'glavnye-smi-preduprezhdayut-nebo-temneet', '2024-07-06 17:02:00', '2024-07-06 17:59:05', NULL),
(9, 'Главные «СМИ» предупреждают: небо темнеет (clone)', NULL, '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', 'glavnye-smi-preduprezhdayut-nebo-temneet (clone)', '2024-07-06 17:02:00', '2024-07-06 17:03:28', NULL),
(10, 'Главные «СМИ» предупреждают: небо темнеет (0)', NULL, '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', 'glavnye-smi-preduprezhdayut-nebo-temneet', '2024-07-06 17:02:00', '2024-07-06 17:58:19', NULL),
(11, 'Главные «СМИ» предупреждают: небо темнеет (clone)', NULL, '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', 'enavnye-smi-preduprezhdayut-nebo-temneet-clone', '2024-07-06 17:02:00', '2024-07-06 17:03:12', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `parameters`
--

CREATE TABLE `parameters` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `parameters`
--

INSERT INTO `parameters` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Высота каблука, см', '2024-06-22 19:31:32', '2024-06-22 19:31:32'),
(2, 'Материал', '2024-06-22 19:31:42', '2024-06-22 19:31:42'),
(3, 'Материал стельки', '2024-06-22 19:31:51', '2024-06-22 19:31:51'),
(4, 'Материал подошвы обуви', '2024-06-22 19:32:00', '2024-06-22 19:32:00'),
(5, 'Полнота', '2024-06-22 19:32:14', '2024-06-22 19:32:14'),
(6, 'Сезон', '2024-06-22 19:32:24', '2024-06-22 19:32:24');

-- --------------------------------------------------------

--
-- Структура таблицы `parameter_product`
--

CREATE TABLE `parameter_product` (
  `id` int UNSIGNED NOT NULL,
  `parameter_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `parameter_product`
--

INSERT INTO `parameter_product` (`id`, `parameter_id`, `product_id`, `value`) VALUES
(1, 1, 1, '25'),
(2, 5, 1, '26');

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(2, 'browse_bread', NULL, '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(3, 'browse_database', NULL, '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(4, 'browse_media', NULL, '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(5, 'browse_compass', NULL, '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(6, 'browse_menus', 'menus', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(7, 'read_menus', 'menus', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(8, 'edit_menus', 'menus', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(9, 'add_menus', 'menus', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(10, 'delete_menus', 'menus', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(11, 'browse_roles', 'roles', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(12, 'read_roles', 'roles', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(13, 'edit_roles', 'roles', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(14, 'add_roles', 'roles', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(15, 'delete_roles', 'roles', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(16, 'browse_users', 'users', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(17, 'read_users', 'users', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(18, 'edit_users', 'users', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(19, 'add_users', 'users', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(20, 'delete_users', 'users', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(21, 'browse_settings', 'settings', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(22, 'read_settings', 'settings', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(23, 'edit_settings', 'settings', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(24, 'add_settings', 'settings', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(25, 'delete_settings', 'settings', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(26, 'browse_sizes', 'sizes', '2024-06-22 18:47:57', '2024-06-22 18:47:57'),
(27, 'read_sizes', 'sizes', '2024-06-22 18:47:57', '2024-06-22 18:47:57'),
(28, 'edit_sizes', 'sizes', '2024-06-22 18:47:57', '2024-06-22 18:47:57'),
(29, 'add_sizes', 'sizes', '2024-06-22 18:47:57', '2024-06-22 18:47:57'),
(30, 'delete_sizes', 'sizes', '2024-06-22 18:47:57', '2024-06-22 18:47:57'),
(31, 'browse_colors', 'colors', '2024-06-22 19:01:15', '2024-06-22 19:01:15'),
(32, 'read_colors', 'colors', '2024-06-22 19:01:15', '2024-06-22 19:01:15'),
(33, 'edit_colors', 'colors', '2024-06-22 19:01:15', '2024-06-22 19:01:15'),
(34, 'add_colors', 'colors', '2024-06-22 19:01:15', '2024-06-22 19:01:15'),
(35, 'delete_colors', 'colors', '2024-06-22 19:01:15', '2024-06-22 19:01:15'),
(36, 'browse_types', 'types', '2024-06-22 19:08:24', '2024-06-22 19:08:24'),
(37, 'read_types', 'types', '2024-06-22 19:08:24', '2024-06-22 19:08:24'),
(38, 'edit_types', 'types', '2024-06-22 19:08:24', '2024-06-22 19:08:24'),
(39, 'add_types', 'types', '2024-06-22 19:08:24', '2024-06-22 19:08:24'),
(40, 'delete_types', 'types', '2024-06-22 19:08:24', '2024-06-22 19:08:24'),
(41, 'browse_collections', 'collections', '2024-06-22 19:11:14', '2024-06-22 19:11:14'),
(42, 'read_collections', 'collections', '2024-06-22 19:11:14', '2024-06-22 19:11:14'),
(43, 'edit_collections', 'collections', '2024-06-22 19:11:14', '2024-06-22 19:11:14'),
(44, 'add_collections', 'collections', '2024-06-22 19:11:14', '2024-06-22 19:11:14'),
(45, 'delete_collections', 'collections', '2024-06-22 19:11:14', '2024-06-22 19:11:14'),
(46, 'browse_sliders', 'sliders', '2024-06-22 19:18:29', '2024-06-22 19:18:29'),
(47, 'read_sliders', 'sliders', '2024-06-22 19:18:29', '2024-06-22 19:18:29'),
(48, 'edit_sliders', 'sliders', '2024-06-22 19:18:29', '2024-06-22 19:18:29'),
(49, 'add_sliders', 'sliders', '2024-06-22 19:18:29', '2024-06-22 19:18:29'),
(50, 'delete_sliders', 'sliders', '2024-06-22 19:18:29', '2024-06-22 19:18:29'),
(51, 'browse_parameters', 'parameters', '2024-06-22 19:31:01', '2024-06-22 19:31:01'),
(52, 'read_parameters', 'parameters', '2024-06-22 19:31:01', '2024-06-22 19:31:01'),
(53, 'edit_parameters', 'parameters', '2024-06-22 19:31:01', '2024-06-22 19:31:01'),
(54, 'add_parameters', 'parameters', '2024-06-22 19:31:01', '2024-06-22 19:31:01'),
(55, 'delete_parameters', 'parameters', '2024-06-22 19:31:01', '2024-06-22 19:31:01'),
(56, 'browse_markets', 'markets', '2024-06-22 19:36:54', '2024-06-22 19:36:54'),
(57, 'read_markets', 'markets', '2024-06-22 19:36:54', '2024-06-22 19:36:54'),
(58, 'edit_markets', 'markets', '2024-06-22 19:36:54', '2024-06-22 19:36:54'),
(59, 'add_markets', 'markets', '2024-06-22 19:36:54', '2024-06-22 19:36:54'),
(60, 'delete_markets', 'markets', '2024-06-22 19:36:54', '2024-06-22 19:36:54'),
(61, 'browse_products', 'products', '2024-06-23 06:20:00', '2024-06-23 06:20:00'),
(62, 'read_products', 'products', '2024-06-23 06:20:00', '2024-06-23 06:20:00'),
(63, 'edit_products', 'products', '2024-06-23 06:20:00', '2024-06-23 06:20:00'),
(64, 'add_products', 'products', '2024-06-23 06:20:00', '2024-06-23 06:20:00'),
(65, 'delete_products', 'products', '2024-06-23 06:20:00', '2024-06-23 06:20:00'),
(66, 'browse_news', 'news', '2024-07-06 16:50:35', '2024-07-06 16:50:35'),
(67, 'read_news', 'news', '2024-07-06 16:50:35', '2024-07-06 16:50:35'),
(68, 'edit_news', 'news', '2024-07-06 16:50:35', '2024-07-06 16:50:35'),
(69, 'add_news', 'news', '2024-07-06 16:50:35', '2024-07-06 16:50:35'),
(70, 'delete_news', 'news', '2024-07-06 16:50:35', '2024-07-06 16:50:35'),
(71, 'browse_advantages', 'advantages', '2024-07-07 08:09:03', '2024-07-07 08:09:03'),
(72, 'read_advantages', 'advantages', '2024-07-07 08:09:03', '2024-07-07 08:09:03'),
(73, 'edit_advantages', 'advantages', '2024-07-07 08:09:03', '2024-07-07 08:09:03'),
(74, 'add_advantages', 'advantages', '2024-07-07 08:09:03', '2024-07-07 08:09:03'),
(75, 'delete_advantages', 'advantages', '2024-07-07 08:09:03', '2024-07-07 08:09:03');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(4, 3),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(19, 1),
(19, 3),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` json DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int UNSIGNED NOT NULL,
  `collection_id` int UNSIGNED NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `recomendation` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parameters` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `images`, `slug`, `type_id`, `collection_id`, `description`, `recomendation`, `deleted_at`, `created_at`, `updated_at`, `parameters`) VALUES
(1, 'туфли <span>nordan</span>', NULL, 'tufli-nordan', 1, 1, 'Легендарные мужские туфли модели Саламандер - это прекрасный выбор для повседневной обуви, которую можно будет надеть на любое торжественное или праздничное мероприятие. Комфортная колодка и универсальный дизайн этих классических туфель позволяет использовать их для танцев, но они также достаточно удобны для повседневной носки на работе в офисе или в школе в качестве сменной пары.', 1, '2024-06-23 13:37:00', '2024-06-23 09:17:00', '2024-07-07 08:43:32', '{\"rows\": [{\"name\": \"{{en}}English title {{ru}}Russian title\", \"value\": \"3.5\"}, {\"name\": \"Натуральная кожа\", \"value\": \"{{en}}English title {{ru}}Russian title\"}], \"fields\": {\"name\": \"Name\", \"value\": \"Value\"}}'),
(6, 'туфли <span>nordan</span> (clone)', NULL, 'tufli-nordan (clone)', 1, 1, 'Легендарные мужские туфли модели Саламандер - это прекрасный выбор для повседневной обуви, которую можно будет надеть на любое торжественное или праздничное мероприятие. Комфортная колодка и универсальный дизайн этих классических туфель позволяет использовать их для танцев, но они также достаточно удобны для повседневной носки на работе в офисе или в школе в качестве сменной пары.', 1, '2024-06-23 13:37:00', '2024-06-24 11:50:00', '2024-07-07 08:33:28', '{\"rows\": [{\"name\": \"Высота каблука, см\", \"value\": \"3.5\"}, {\"name\": \"Натуральная кожа\", \"value\": \"Натуральная кожа\"}], \"fields\": {\"name\": \"Name\", \"value\": \"Value\"}}'),
(7, 'туфли <span>nordan</span> (clone) (clone)', NULL, 'tufli-nordan (clone) (clone)', 1, 1, 'Легендарные мужские туфли модели Саламандер - это прекрасный выбор для повседневной обуви, которую можно будет надеть на любое торжественное или праздничное мероприятие. Комфортная колодка и универсальный дизайн этих классических туфель позволяет использовать их для танцев, но они также достаточно удобны для повседневной носки на работе в офисе или в школе в качестве сменной пары.', 1, '2024-06-23 13:37:00', '2024-06-24 13:43:24', '2024-07-07 08:33:48', '{\"rows\": [{\"name\": \"Высота каблука, см\", \"value\": \"3.5\"}, {\"name\": \"Натуральная кожа\", \"value\": \"Натуральная кожа\"}], \"fields\": {\"name\": \"Name\", \"value\": \"Value\"}}'),
(8, 'туфли <span>nordan</span> (clone) (clone) (clone)', NULL, 'tufli-nordan (clone) (clone) (clone)', 1, 1, 'Легендарные мужские туфли модели Саламандер - это прекрасный выбор для повседневной обуви, которую можно будет надеть на любое торжественное или праздничное мероприятие. Комфортная колодка и универсальный дизайн этих классических туфель позволяет использовать их для танцев, но они также достаточно удобны для повседневной носки на работе в офисе или в школе в качестве сменной пары.', 1, '2024-06-23 13:37:00', '2024-06-24 13:43:28', '2024-07-07 08:34:01', '{\"rows\": [{\"name\": \"Высота каблука, см\", \"value\": \"3.5\"}, {\"name\": \"Натуральная кожа\", \"value\": \"Натуральная кожа\"}], \"fields\": {\"name\": \"Name\", \"value\": \"Value\"}}'),
(9, 'туфли <span>nordan</span> (clone) (clone) (clone) (clone)', NULL, 'tufli-nordan (clone) (clone) (clone) (clone)', 1, 1, 'Легендарные мужские туфли модели Саламандер - это прекрасный выбор для повседневной обуви, которую можно будет надеть на любое торжественное или праздничное мероприятие. Комфортная колодка и универсальный дизайн этих классических туфель позволяет использовать их для танцев, но они также достаточно удобны для повседневной носки на работе в офисе или в школе в качестве сменной пары.', 1, '2024-06-23 13:37:00', '2024-06-24 13:43:32', '2024-07-07 08:34:20', '{\"rows\": [{\"name\": \"Высота каблука, см\", \"value\": \"3.5\"}, {\"name\": \"Натуральная кожа\", \"value\": \"Натуральная кожа\"}], \"fields\": {\"name\": \"Name\", \"value\": \"Value\"}}'),
(10, 'туфли <span>nordan</span> (clone) (clone) (clone) (clone) (clone)', NULL, 'tufli-nordan (clone) (clone) (clone) (clone) (clone)', 1, 1, 'Легендарные мужские туфли модели Саламандер - это прекрасный выбор для повседневной обуви, которую можно будет надеть на любое торжественное или праздничное мероприятие. Комфортная колодка и универсальный дизайн этих классических туфель позволяет использовать их для танцев, но они также достаточно удобны для повседневной носки на работе в офисе или в школе в качестве сменной пары.', 1, '2024-06-23 13:37:00', '2024-06-24 13:43:00', '2024-07-05 14:33:05', '{\"rows\": [{\"name\": \"Высота каблука, см\", \"value\": \"3.5\"}, {\"name\": \"Натуральная кожа\", \"value\": \"Натуральная кожа\"}], \"fields\": {\"name\": \"Name\", \"value\": \"Value\"}}');

-- --------------------------------------------------------

--
-- Структура таблицы `product_size`
--

CREATE TABLE `product_size` (
  `product_id` int UNSIGNED NOT NULL,
  `size_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_size`
--

INSERT INTO `product_size` (`product_id`, `size_id`) VALUES
(1, 1),
(1, 5),
(1, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(2, 'user', 'Normal User', '2024-06-22 16:34:50', '2024-06-22 16:34:50'),
(3, 'manager', 'Менеджер', '2024-06-22 16:48:22', '2024-06-22 16:48:22');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Заголовок', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Описание', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(13, 'site.title_en', 'Site Title EN', 'Title EN', NULL, 'text', 6, 'Site'),
(14, 'site.title_ru', 'Site Title RU', 'Заголовок', NULL, 'text', 7, 'Site'),
(15, 'site.title_de', 'Site Title DE', 'Заголовок DE', NULL, 'text', 8, 'Site'),
(16, 'site.description_en', 'Site Description En', 'Description', NULL, 'text', 9, 'Site'),
(17, 'site.description_ru', 'Site Description RU', 'Описание', NULL, 'text', 10, 'Site'),
(18, 'site.description_de', 'Site Description DE', 'Описание DE', NULL, 'text', 11, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `sizes`
--

CREATE TABLE `sizes` (
  `id` int UNSIGNED NOT NULL,
  `size` tinyint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `created_at`, `updated_at`) VALUES
(1, 39, NULL, '2024-06-22 18:49:05'),
(2, 40, NULL, '2024-06-22 18:49:11'),
(4, 41, '2024-06-22 18:50:19', '2024-06-22 18:50:19'),
(5, 42, '2024-06-22 18:50:28', '2024-06-22 18:50:28'),
(6, 43, '2024-06-22 18:50:37', '2024-06-22 18:50:37'),
(7, 44, '2024-06-22 18:50:42', '2024-06-22 18:50:42'),
(8, 45, '2024-06-22 18:50:48', '2024-06-22 18:50:48'),
(9, 46, '2024-06-22 18:50:52', '2024-06-22 18:50:52'),
(10, 47, '2024-06-22 18:50:57', '2024-06-22 18:50:57'),
(11, 48, '2024-06-22 18:51:02', '2024-06-22 18:51:02');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link1` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link2` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `link1`, `link2`, `img`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Весенняя коллекция обуви <span>NORDAN</span> уже в продаже!', 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum.', 'http://nordan/card#', 'http://nordan/card#', NULL, NULL, NULL, '2024-06-27 10:24:24'),
(2, 'Весенняя коллекция обуви <span>NORDAN</span> уже в продаже!', 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum.', 'http://nordan/card#', 'http://nordan/card#', NULL, NULL, NULL, '2024-06-27 10:21:23');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_rows', 'display_name', 59, 'en', 'Id', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(2, 'data_rows', 'display_name', 75, 'en', 'Name', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(3, 'data_rows', 'display_name', 76, 'en', 'Slug', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(4, 'data_rows', 'display_name', 61, 'en', 'Type Id', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(5, 'data_rows', 'display_name', 62, 'en', 'Collection Id', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(6, 'data_rows', 'display_name', 60, 'en', 'Description', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(7, 'data_rows', 'display_name', 64, 'en', 'Images', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(8, 'data_rows', 'display_name', 63, 'en', 'Recomendation', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(9, 'data_rows', 'display_name', 70, 'en', 'Waterproof', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(10, 'data_rows', 'display_name', 65, 'en', 'Deleted At', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(11, 'data_rows', 'display_name', 66, 'en', 'Created At', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(12, 'data_rows', 'display_name', 67, 'en', 'Updated At', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(13, 'data_rows', 'display_name', 77, 'en', 'Parameters', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(14, 'data_rows', 'display_name', 68, 'en', 'collections', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(15, 'data_rows', 'display_name', 69, 'en', 'types', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(16, 'data_rows', 'display_name', 71, 'en', 'markets', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(17, 'data_rows', 'display_name', 72, 'en', 'parameters', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(18, 'data_rows', 'display_name', 73, 'en', 'sizes', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(19, 'data_rows', 'display_name', 74, 'en', 'colors', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(20, 'data_types', 'display_name_singular', 15, 'en', 'Product', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(21, 'data_types', 'display_name_plural', 15, 'en', 'Products', '2024-06-23 12:20:15', '2024-06-23 12:20:15'),
(22, 'products', 'name', 1, 'en', 'туфли <span>nordan</span>en', '2024-06-23 12:22:10', '2024-06-23 12:22:10'),
(23, 'products', 'description', 1, 'en', 'Легендарные мужские туфли модели Саламандер - это прекрасный выбор для повседневной обуви, которую можно будет надеть на любое торжественное или праздничное мероприятие. Комфортная колодка и универсальный дизайн этих классических туфель позволяет использовать их для танцев, но они также достаточно удобны для повседневной носки на работе в офисе или в школе в качестве сменной пары.', '2024-06-23 12:22:10', '2024-06-23 12:22:10'),
(26, 'data_rows', 'display_name', 52, 'en', 'Id', '2024-06-24 11:52:47', '2024-06-24 11:52:47'),
(27, 'data_rows', 'display_name', 53, 'en', 'Name', '2024-06-24 11:52:47', '2024-06-24 11:52:47'),
(28, 'data_rows', 'display_name', 54, 'en', 'Img', '2024-06-24 11:52:47', '2024-06-24 11:52:47'),
(29, 'data_rows', 'display_name', 55, 'en', 'Icon', '2024-06-24 11:52:47', '2024-06-24 11:52:47'),
(30, 'data_rows', 'display_name', 56, 'en', 'Link', '2024-06-24 11:52:47', '2024-06-24 11:52:47'),
(31, 'data_rows', 'display_name', 57, 'en', 'Created At', '2024-06-24 11:52:47', '2024-06-24 11:52:47'),
(32, 'data_rows', 'display_name', 58, 'en', 'Updated At', '2024-06-24 11:52:47', '2024-06-24 11:52:47'),
(33, 'data_types', 'display_name_singular', 14, 'en', 'Market', '2024-06-24 11:52:47', '2024-06-24 11:52:47'),
(34, 'data_types', 'display_name_plural', 14, 'en', 'Markets', '2024-06-24 11:52:47', '2024-06-24 11:52:47'),
(35, 'products', 'name', 6, 'en', 'туфли <span>nordan</span> (clone)', '2024-06-24 12:22:41', '2024-06-24 12:22:41'),
(36, 'products', 'description', 6, 'en', 'Легендарные мужские туфли модели Саламандер - это прекрасный выбор для повседневной обуви, которую можно будет надеть на любое торжественное или праздничное мероприятие. Комфортная колодка и универсальный дизайн этих классических туфель позволяет использовать их для танцев, но они также достаточно удобны для повседневной носки на работе в офисе или в школе в качестве сменной пары.', '2024-06-24 12:22:41', '2024-06-24 12:22:41'),
(37, 'menu_items', 'title', 11, 'en', 'for men', '2024-06-25 16:21:12', '2024-06-25 16:21:12'),
(38, 'markets', 'name', 1, 'en', 'amazonEN', '2024-06-25 17:07:23', '2024-06-25 17:30:32'),
(39, 'colors', 'name', 3, 'en', 'yellow', '2024-06-25 17:09:04', '2024-06-25 17:09:04'),
(40, 'types', 'name', 1, 'en', 'of men ', '2024-06-25 17:30:56', '2024-07-05 07:41:06'),
(41, 'collections', 'name', 1, 'en', 'spring-summer 2024', '2024-06-25 17:31:17', '2024-06-25 17:36:25'),
(42, 'sliders', 'name', 2, 'en', 'spring collection of boots <span>NORDAN</span> уже в продаже!', '2024-06-25 17:32:46', '2024-06-26 17:34:31'),
(43, 'sliders', 'description', 2, 'en', 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum.', '2024-06-25 17:32:46', '2024-06-25 17:32:46'),
(44, 'menu_items', 'title', 16, 'en', 'support', '2024-06-25 17:44:27', '2024-06-25 17:44:27'),
(45, 'menu_items', 'title', 28, 'en', 'For men', '2024-06-25 17:54:56', '2024-06-25 17:54:56'),
(46, 'menu_items', 'title', 29, 'en', 'winter', '2024-06-25 18:13:34', '2024-06-25 18:13:34'),
(47, 'menu_items', 'title', 12, 'en', 'женская', '2024-06-26 08:59:02', '2024-06-26 08:59:02'),
(48, 'menu_items', 'title', 13, 'en', 'детская', '2024-06-26 08:59:18', '2024-06-26 08:59:18'),
(49, 'data_rows', 'display_name', 12, 'en', 'ID', '2024-06-26 09:22:35', '2024-06-26 09:22:35'),
(50, 'data_rows', 'display_name', 13, 'en', 'Name', '2024-06-26 09:22:35', '2024-06-26 09:22:35'),
(51, 'data_rows', 'display_name', 14, 'en', 'Created At', '2024-06-26 09:22:35', '2024-06-26 09:22:35'),
(52, 'data_rows', 'display_name', 15, 'en', 'Updated At', '2024-06-26 09:22:35', '2024-06-26 09:22:35'),
(53, 'data_rows', 'display_name', 78, 'en', 'types', '2024-06-26 09:22:35', '2024-06-26 09:22:35'),
(54, 'data_types', 'display_name_singular', 2, 'en', 'Menu', '2024-06-26 09:22:35', '2024-06-26 09:22:35'),
(55, 'data_types', 'display_name_plural', 2, 'en', 'Menus', '2024-06-26 09:22:35', '2024-06-26 09:22:35'),
(56, 'data_rows', 'display_name', 79, 'en', 'Type Id', '2024-06-26 09:23:32', '2024-06-26 09:23:32'),
(57, 'markets', 'name', 2, 'en', 'amazon (clone)', '2024-06-26 10:54:59', '2024-06-26 10:54:59'),
(58, 'markets', 'name', 3, 'en', 'amazon (clone)', '2024-06-26 10:55:19', '2024-06-26 10:55:19'),
(59, 'markets', 'name', 4, 'en', 'amazon (clone)', '2024-06-26 18:09:33', '2024-06-26 18:09:33'),
(60, 'data_rows', 'display_name', 39, 'en', 'Id', '2024-06-27 10:15:55', '2024-06-27 10:15:55'),
(61, 'data_rows', 'display_name', 40, 'en', 'Name', '2024-06-27 10:15:55', '2024-06-27 10:15:55'),
(62, 'data_rows', 'display_name', 41, 'en', 'Description', '2024-06-27 10:15:55', '2024-06-27 10:15:55'),
(63, 'data_rows', 'display_name', 42, 'en', 'Link1', '2024-06-27 10:15:55', '2024-06-27 10:15:55'),
(64, 'data_rows', 'display_name', 43, 'en', 'Link2', '2024-06-27 10:15:55', '2024-06-27 10:15:55'),
(65, 'data_rows', 'display_name', 44, 'en', 'Img', '2024-06-27 10:15:55', '2024-06-27 10:15:55'),
(66, 'data_rows', 'display_name', 45, 'en', 'Deleted At', '2024-06-27 10:15:55', '2024-06-27 10:15:55'),
(67, 'data_rows', 'display_name', 46, 'en', 'Created At', '2024-06-27 10:15:55', '2024-06-27 10:15:55'),
(68, 'data_rows', 'display_name', 47, 'en', 'Updated At', '2024-06-27 10:15:55', '2024-06-27 10:15:55'),
(69, 'data_types', 'display_name_singular', 12, 'en', 'Slider', '2024-06-27 10:15:55', '2024-06-27 10:15:55'),
(70, 'data_types', 'display_name_plural', 12, 'en', 'Sliders', '2024-06-27 10:15:55', '2024-06-27 10:15:55'),
(71, 'sliders', 'name', 1, 'en', 'Весенняя коллекция обуви <span>NORDAN</span> уже в продаже!', '2024-06-27 10:24:24', '2024-06-27 10:24:24'),
(72, 'sliders', 'description', 1, 'en', 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum.', '2024-06-27 10:24:24', '2024-06-27 10:24:24'),
(73, 'menu_items', 'title', 27, 'en', 'Products', '2024-06-27 10:31:29', '2024-06-27 10:31:29'),
(74, 'menu_items', 'title', 26, 'en', 'Market', '2024-06-27 10:31:49', '2024-06-27 10:31:49'),
(76, 'menu_items', 'title', 21, 'en', 'Types', '2024-06-27 10:32:44', '2024-06-27 10:32:44'),
(77, 'menu_items', 'title', 19, 'en', 'Sizes', '2024-06-27 10:32:57', '2024-06-27 10:32:57'),
(78, 'menu_items', 'title', 20, 'en', 'Colors', '2024-06-27 10:34:17', '2024-06-27 10:34:17'),
(79, 'menu_items', 'title', 23, 'en', 'Main sliders', '2024-06-27 10:34:52', '2024-06-27 10:34:52'),
(80, 'data_rows', 'display_name', 35, 'en', 'Id', '2024-06-27 10:35:24', '2024-06-27 10:35:24'),
(81, 'data_rows', 'display_name', 36, 'en', 'Name', '2024-06-27 10:35:24', '2024-06-27 10:35:24'),
(82, 'data_rows', 'display_name', 37, 'en', 'Created At', '2024-06-27 10:35:24', '2024-06-27 10:35:24'),
(83, 'data_rows', 'display_name', 38, 'en', 'Updated At', '2024-06-27 10:35:24', '2024-06-27 10:35:24'),
(84, 'data_types', 'display_name_singular', 11, 'en', 'Collection', '2024-06-27 10:35:24', '2024-06-27 10:35:24'),
(85, 'data_types', 'display_name_plural', 11, 'en', 'Collections', '2024-06-27 10:35:24', '2024-06-27 10:35:24'),
(86, 'menu_items', 'title', 38, 'en', 'Collections', '2024-06-27 10:40:11', '2024-06-27 10:40:11'),
(87, 'data_rows', 'display_name', 26, 'en', 'Id', '2024-07-05 07:37:28', '2024-07-05 07:37:28'),
(88, 'data_rows', 'display_name', 27, 'en', 'Name', '2024-07-05 07:37:28', '2024-07-05 07:37:28'),
(89, 'data_rows', 'display_name', 28, 'en', 'Color', '2024-07-05 07:37:28', '2024-07-05 07:37:28'),
(90, 'data_rows', 'display_name', 29, 'en', 'Created At', '2024-07-05 07:37:28', '2024-07-05 07:37:28'),
(91, 'data_rows', 'display_name', 30, 'en', 'Updated At', '2024-07-05 07:37:28', '2024-07-05 07:37:28'),
(92, 'data_types', 'display_name_singular', 5, 'en', 'Color', '2024-07-05 07:37:28', '2024-07-05 07:37:28'),
(93, 'data_types', 'display_name_plural', 5, 'en', 'Colors', '2024-07-05 07:37:28', '2024-07-05 07:37:28'),
(94, 'data_rows', 'display_name', 31, 'en', 'Id', '2024-07-05 07:39:46', '2024-07-05 07:39:46'),
(95, 'data_rows', 'display_name', 32, 'en', 'Name', '2024-07-05 07:39:46', '2024-07-05 07:39:46'),
(96, 'data_rows', 'display_name', 33, 'en', 'Created At', '2024-07-05 07:39:46', '2024-07-05 07:39:46'),
(97, 'data_rows', 'display_name', 34, 'en', 'Updated At', '2024-07-05 07:39:46', '2024-07-05 07:39:46'),
(98, 'data_types', 'display_name_singular', 10, 'en', 'Type', '2024-07-05 07:39:46', '2024-07-05 07:39:46'),
(99, 'data_types', 'display_name_plural', 10, 'en', 'Types', '2024-07-05 07:39:46', '2024-07-05 07:39:46'),
(100, 'types', 'name', 5, 'en', 'аксесуары', '2024-07-05 07:40:01', '2024-07-05 07:40:01'),
(101, 'types', 'name', 3, 'en', 'детская', '2024-07-05 07:40:26', '2024-07-05 07:40:26'),
(102, 'types', 'name', 2, 'en', 'женская', '2024-07-05 07:40:38', '2024-07-05 07:40:38'),
(103, 'types', 'name', 4, 'en', 'спортивная', '2024-07-05 07:41:19', '2024-07-05 07:41:19'),
(104, 'collections', 'name', 2, 'en', 'Зима', '2024-07-05 07:41:35', '2024-07-05 07:41:35'),
(105, 'collections', 'name', 4, 'en', 'Лето 2024', '2024-07-05 07:41:43', '2024-07-05 07:41:43'),
(106, 'collections', 'name', 3, 'en', 'Осень 2023', '2024-07-05 07:41:51', '2024-07-05 07:41:51'),
(107, 'colors', 'name', 2, 'en', 'зеленый', '2024-07-05 07:42:12', '2024-07-05 07:42:12'),
(108, 'colors', 'name', 1, 'en', 'красный', '2024-07-05 07:42:20', '2024-07-05 07:42:20'),
(109, 'products', 'name', 10, 'en', 'туфли <span>nordan</span> (clone) (clone) (clone) (clone) (clone)', '2024-07-05 14:32:58', '2024-07-05 14:32:58'),
(110, 'products', 'description', 10, 'en', 'Легендарные мужские туфли модели Саламандер - это прекрасный выбор для повседневной обуви, которую можно будет надеть на любое торжественное или праздничное мероприятие. Комфортная колодка и универсальный дизайн этих классических туфель позволяет использовать их для танцев, но они также достаточно удобны для повседневной носки на работе в офисе или в школе в качестве сменной пары.', '2024-07-05 14:32:58', '2024-07-05 14:32:58'),
(111, 'menu_items', 'title', 14, 'en', 'СПОРТИВНАЯ', '2024-07-06 05:15:47', '2024-07-06 05:15:47'),
(112, 'menu_items', 'title', 15, 'en', 'АКСЕССУАРЫ', '2024-07-06 05:16:31', '2024-07-06 05:16:31'),
(113, 'data_rows', 'display_name', 84, 'en', 'Id', '2024-07-06 16:51:09', '2024-07-06 16:51:09'),
(114, 'data_rows', 'display_name', 85, 'en', 'Title', '2024-07-06 16:51:09', '2024-07-06 16:51:09'),
(115, 'data_rows', 'display_name', 86, 'en', 'Img', '2024-07-06 16:51:09', '2024-07-06 16:51:09'),
(116, 'data_rows', 'display_name', 87, 'en', 'Description', '2024-07-06 16:51:09', '2024-07-06 16:51:09'),
(117, 'data_rows', 'display_name', 88, 'en', 'Slug', '2024-07-06 16:51:09', '2024-07-06 16:51:09'),
(118, 'data_rows', 'display_name', 89, 'en', 'Created At', '2024-07-06 16:51:09', '2024-07-06 16:51:09'),
(119, 'data_rows', 'display_name', 90, 'en', 'Updated At', '2024-07-06 16:51:09', '2024-07-06 16:51:09'),
(120, 'data_rows', 'display_name', 91, 'en', 'Deleted At', '2024-07-06 16:51:09', '2024-07-06 16:51:09'),
(121, 'data_types', 'display_name_singular', 16, 'en', 'News', '2024-07-06 16:51:09', '2024-07-06 16:51:09'),
(122, 'data_types', 'display_name_plural', 16, 'en', 'News', '2024-07-06 16:51:09', '2024-07-06 16:51:09'),
(123, 'news', 'title', 11, 'en', 'ENавные «СМИ» предупреждают: небо темнеет (clone)', '2024-07-06 17:03:12', '2024-07-06 17:03:12'),
(124, 'news', 'description', 11, 'en', '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', '2024-07-06 17:03:12', '2024-07-06 17:03:12'),
(125, 'news', 'title', 9, 'en', 'Главные «СМИ» предупреждают: небо темнеет (clone)', '2024-07-06 17:03:28', '2024-07-06 17:03:28'),
(126, 'news', 'description', 9, 'en', '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', '2024-07-06 17:03:28', '2024-07-06 17:03:28'),
(127, 'news', 'title', 1, 'en', 'Главные «СМИ» предупреждают: небо темнEN', '2024-07-06 17:25:34', '2024-07-06 17:26:18'),
(128, 'news', 'description', 1, 'en', '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', '2024-07-06 17:25:34', '2024-07-06 17:25:34'),
(129, 'news', 'title', 1, 'de', 'Главные «СМИ» предупреждают: небо темнDE', '2024-07-06 17:45:44', '2024-07-06 17:45:44'),
(130, 'news', 'description', 1, 'de', '<p>DEEEpsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', '2024-07-06 17:45:44', '2024-07-06 17:45:44'),
(131, 'news', 'title', 10, 'en', 'Главные «СМИ» предупреждают: небо темнеет (clone)', '2024-07-06 17:58:19', '2024-07-06 17:58:19'),
(132, 'news', 'description', 10, 'en', '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', '2024-07-06 17:58:19', '2024-07-06 17:58:19'),
(133, 'news', 'title', 8, 'en', 'Главные «СМИ» предупреждают: небо темнеет (clone)', '2024-07-06 17:59:05', '2024-07-06 17:59:05'),
(134, 'news', 'description', 8, 'en', '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', '2024-07-06 17:59:05', '2024-07-06 17:59:05'),
(135, 'news', 'title', 7, 'en', 'Главные «СМИ» предупреждают: небо темнеет (clone)', '2024-07-06 18:00:11', '2024-07-06 18:00:11'),
(136, 'news', 'description', 7, 'en', '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', '2024-07-06 18:00:11', '2024-07-06 18:00:11'),
(137, 'news', 'title', 6, 'en', 'Главные «СМИ» предупреждают: небо темнеет (clone)', '2024-07-06 18:00:46', '2024-07-06 18:00:46'),
(138, 'news', 'description', 6, 'en', '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', '2024-07-06 18:00:47', '2024-07-06 18:00:47'),
(139, 'data_rows', 'display_name', 84, 'de', 'Id', '2024-07-06 18:02:18', '2024-07-06 18:02:18'),
(140, 'data_rows', 'display_name', 85, 'de', 'Title', '2024-07-06 18:02:18', '2024-07-06 18:02:18'),
(141, 'data_rows', 'display_name', 86, 'de', 'Img', '2024-07-06 18:02:18', '2024-07-06 18:02:18'),
(142, 'data_rows', 'display_name', 87, 'de', 'Description', '2024-07-06 18:02:18', '2024-07-06 18:02:18'),
(143, 'data_rows', 'display_name', 88, 'de', 'Slug', '2024-07-06 18:02:18', '2024-07-06 18:02:18'),
(144, 'data_rows', 'display_name', 89, 'de', 'Created At', '2024-07-06 18:02:18', '2024-07-06 18:02:18'),
(145, 'data_rows', 'display_name', 90, 'de', 'Updated At', '2024-07-06 18:02:18', '2024-07-06 18:02:18'),
(146, 'data_rows', 'display_name', 91, 'de', 'Deleted At', '2024-07-06 18:02:18', '2024-07-06 18:02:18'),
(147, 'data_types', 'display_name_singular', 16, 'de', 'News', '2024-07-06 18:02:18', '2024-07-06 18:02:18'),
(148, 'data_types', 'display_name_plural', 16, 'de', 'News', '2024-07-06 18:02:18', '2024-07-06 18:02:18'),
(149, 'news', 'title', 5, 'en', 'Главные «СМИ» предупреждают: небо темнеет (clone)', '2024-07-06 18:02:38', '2024-07-06 18:02:38');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(150, 'news', 'description', 5, 'en', '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', '2024-07-06 18:02:38', '2024-07-06 18:02:38'),
(151, 'news', 'title', 5, 'de', 'Главные «СМИ» предупреждают: небо темнеет (clone)', '2024-07-06 18:47:28', '2024-07-06 18:47:28'),
(152, 'news', 'description', 5, 'de', '<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>\n<p>Lorem ipsum dolor sit amet consectetur. Diam tempor sed id eget ullamcorper nisl felis sapien. Orci fermentum egestas consectetur viverra orci. Enim quam non ullamcorper venenatis amet. Risus vitae risus duis tristique purus porta faucibus at semper. Et sit aliquet senectus sit faucibus. Est vestibulum non egestas eget augue mattis duis. Commodo metus et ut dolor quam vivamus turpis. Proin fringilla volutpat sed in vehicula eget. In enim eu lacinia vitae placerat facilisis vel eleifend aenean. Semper lorem fermentum quis ac quis at egestas mattis. In convallis netus morbi pretium netus adipiscing augue amet. Mauris maecenas eget amet turpis ipsum sagittis suspendisse suspendisse libero. Sed diam ut a consequat consectetur nunc pellentesque diam. Fermentum ipsum velit augue pretium integer aliquam elementum gravida. Cras sed purus vulputate scelerisque tincidunt diam. Eget blandit pharetra urna aliquet nunc euismod tincidunt faucibus. Lobortis tortor tortor pellentesque vitae sit tempus leo. Volutpat morbi nullam ante eu gravida purus et dictum duis. Sagittis molestie nunc suspendisse non. Magna sit egestas risus adipiscing at. Est tortor tellus tempus aliquet ut duis et viverra. Purus sit ultricies orci gravida tortor pellentesque id nunc. Netus in ac in elit placerat. Egestas vitae volutpat morbi semper.</p>', '2024-07-06 18:47:28', '2024-07-06 18:47:28'),
(153, 'data_rows', 'display_name', 92, 'en', 'Id', '2024-07-07 08:13:38', '2024-07-07 08:13:38'),
(154, 'data_rows', 'display_name', 93, 'en', 'Name', '2024-07-07 08:13:38', '2024-07-07 08:13:38'),
(155, 'data_rows', 'display_name', 94, 'en', 'Slug', '2024-07-07 08:13:38', '2024-07-07 08:13:38'),
(156, 'data_rows', 'display_name', 95, 'en', 'Deleted At', '2024-07-07 08:13:38', '2024-07-07 08:13:38'),
(157, 'data_rows', 'display_name', 96, 'en', 'Created At', '2024-07-07 08:13:38', '2024-07-07 08:13:38'),
(158, 'data_rows', 'display_name', 97, 'en', 'Updated At', '2024-07-07 08:13:38', '2024-07-07 08:13:38'),
(159, 'data_types', 'display_name_singular', 17, 'en', 'Advantage', '2024-07-07 08:13:38', '2024-07-07 08:13:38'),
(160, 'data_types', 'display_name_plural', 17, 'en', 'Advantages', '2024-07-07 08:13:38', '2024-07-07 08:13:38'),
(161, 'data_rows', 'display_name', 59, 'de', 'Id', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(162, 'data_rows', 'display_name', 75, 'de', 'Name', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(163, 'data_rows', 'display_name', 64, 'de', 'Images', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(164, 'data_rows', 'display_name', 76, 'de', 'Slug', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(165, 'data_rows', 'display_name', 61, 'de', 'Type Id', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(166, 'data_rows', 'display_name', 62, 'de', 'Collection Id', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(167, 'data_rows', 'display_name', 60, 'de', 'Description', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(168, 'data_rows', 'display_name', 63, 'de', 'Recomendation', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(169, 'data_rows', 'display_name', 65, 'de', 'Deleted At', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(170, 'data_rows', 'display_name', 66, 'de', 'Created At', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(171, 'data_rows', 'display_name', 67, 'de', 'Updated At', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(172, 'data_rows', 'display_name', 77, 'de', 'Parameters', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(173, 'data_rows', 'display_name', 68, 'de', 'collections', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(174, 'data_rows', 'display_name', 69, 'de', 'types', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(175, 'data_rows', 'display_name', 71, 'de', 'markets', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(176, 'data_rows', 'display_name', 72, 'de', 'parameters', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(177, 'data_rows', 'display_name', 73, 'de', 'sizes', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(178, 'data_rows', 'display_name', 74, 'de', 'colors', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(179, 'data_rows', 'display_name', 98, 'en', 'advantages', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(180, 'data_types', 'display_name_singular', 15, 'de', 'Product', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(181, 'data_types', 'display_name_plural', 15, 'de', 'Products', '2024-07-07 08:25:43', '2024-07-07 08:25:43'),
(182, 'data_rows', 'display_name', 98, 'de', 'advantages', '2024-07-07 08:26:47', '2024-07-07 08:26:47'),
(183, 'data_rows', 'display_name', 92, 'de', 'Id', '2024-07-07 08:29:23', '2024-07-07 08:29:23'),
(184, 'data_rows', 'display_name', 93, 'de', 'Name', '2024-07-07 08:29:23', '2024-07-07 08:29:23'),
(185, 'data_rows', 'display_name', 94, 'de', 'Slug', '2024-07-07 08:29:23', '2024-07-07 08:29:23'),
(186, 'data_rows', 'display_name', 95, 'de', 'Deleted At', '2024-07-07 08:29:23', '2024-07-07 08:29:23'),
(187, 'data_rows', 'display_name', 96, 'de', 'Created At', '2024-07-07 08:29:23', '2024-07-07 08:29:23'),
(188, 'data_rows', 'display_name', 97, 'de', 'Updated At', '2024-07-07 08:29:23', '2024-07-07 08:29:23'),
(189, 'data_types', 'display_name_singular', 17, 'de', 'Advantage', '2024-07-07 08:29:23', '2024-07-07 08:29:23'),
(190, 'data_types', 'display_name_plural', 17, 'de', 'Advantages', '2024-07-07 08:29:23', '2024-07-07 08:29:23'),
(191, 'products', 'name', 1, 'de', 'туфли <span>nordan</span>en', '2024-07-07 08:33:03', '2024-07-07 08:33:03'),
(192, 'products', 'description', 1, 'de', 'Легендарные мужские туфли модели Саламандер - это прекрасный выбор для повседневной обуви, которую можно будет надеть на любое торжественное или праздничное мероприятие. Комфортная колодка и универсальный дизайн этих классических туфель позволяет использовать их для танцев, но они также достаточно удобны для повседневной носки на работе в офисе или в школе в качестве сменной пары.', '2024-07-07 08:33:03', '2024-07-07 08:33:03'),
(193, 'products', 'name', 6, 'de', 'туфли <span>nordan</span> (clone)', '2024-07-07 08:33:28', '2024-07-07 08:33:28'),
(194, 'products', 'description', 6, 'de', 'Легендарные мужские туфли модели Саламандер - это прекрасный выбор для повседневной обуви, которую можно будет надеть на любое торжественное или праздничное мероприятие. Комфортная колодка и универсальный дизайн этих классических туфель позволяет использовать их для танцев, но они также достаточно удобны для повседневной носки на работе в офисе или в школе в качестве сменной пары.', '2024-07-07 08:33:28', '2024-07-07 08:33:28'),
(195, 'products', 'name', 7, 'en', 'туфли <span>nordan</span> (clone) (clone)', '2024-07-07 08:33:43', '2024-07-07 08:33:43'),
(196, 'products', 'description', 7, 'en', 'Легендарные мужские туфли модели Саламандер - это прекрасный выбор для повседневной обуви, которую можно будет надеть на любое торжественное или праздничное мероприятие. Комфортная колодка и универсальный дизайн этих классических туфель позволяет использовать их для танцев, но они также достаточно удобны для повседневной носки на работе в офисе или в школе в качестве сменной пары.', '2024-07-07 08:33:43', '2024-07-07 08:33:43'),
(197, 'products', 'name', 7, 'de', 'туфли <span>nordan</span> (clone) (clone)', '2024-07-07 08:33:48', '2024-07-07 08:33:48'),
(198, 'products', 'description', 7, 'de', 'Легендарные мужские туфли модели Саламандер - это прекрасный выбор для повседневной обуви, которую можно будет надеть на любое торжественное или праздничное мероприятие. Комфортная колодка и универсальный дизайн этих классических туфель позволяет использовать их для танцев, но они также достаточно удобны для повседневной носки на работе в офисе или в школе в качестве сменной пары.', '2024-07-07 08:33:48', '2024-07-07 08:33:48'),
(199, 'products', 'name', 8, 'en', 'туфли <span>nordan</span> (clone) (clone) (clone)', '2024-07-07 08:34:01', '2024-07-07 08:34:01'),
(200, 'products', 'description', 8, 'en', 'Легендарные мужские туфли модели Саламандер - это прекрасный выбор для повседневной обуви, которую можно будет надеть на любое торжественное или праздничное мероприятие. Комфортная колодка и универсальный дизайн этих классических туфель позволяет использовать их для танцев, но они также достаточно удобны для повседневной носки на работе в офисе или в школе в качестве сменной пары.', '2024-07-07 08:34:01', '2024-07-07 08:34:01'),
(201, 'products', 'name', 9, 'en', 'туфли <span>nordan</span> (clone) (clone) (clone) (clone)', '2024-07-07 08:34:20', '2024-07-07 08:34:20'),
(202, 'products', 'description', 9, 'en', 'Легендарные мужские туфли модели Саламандер - это прекрасный выбор для повседневной обуви, которую можно будет надеть на любое торжественное или праздничное мероприятие. Комфортная колодка и универсальный дизайн этих классических туфель позволяет использовать их для танцев, но они также достаточно удобны для повседневной носки на работе в офисе или в школе в качестве сменной пары.', '2024-07-07 08:34:20', '2024-07-07 08:34:20');

-- --------------------------------------------------------

--
-- Структура таблицы `types`
--

CREATE TABLE `types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'мужская  ', '2024-06-22 19:08:41', '2024-07-05 07:41:06', 'muzhskaya'),
(2, 'женская ', '2024-06-22 19:08:49', '2024-07-05 07:40:38', 'zhenskaya'),
(3, 'детская ', '2024-06-22 19:08:57', '2024-07-05 07:40:26', 'detskaya'),
(4, 'спортивная ', '2024-06-22 19:09:04', '2024-07-05 07:41:19', 'sportivnaya'),
(5, 'аксесуары ', '2024-06-22 19:09:32', '2024-07-05 07:40:01', 'aksesuary');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'alex', 'alexsuvorov1005@gmail.com', 'users/default.png', NULL, '$2y$12$KemxC7WVJBTduX7.Z85N4.aCvAI5fYqQX5XyjK7mLO3.kiVLknI5m', 'LxScsj0OUIoX2BByLvnE4EEi6qyoN3WQVedIsZYLJN1nzPCUyODYB5QTAl0z', '{\"locale\":\"ru\"}', '2024-06-22 16:37:38', '2024-06-22 16:43:39'),
(2, 3, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$12$S5Gc5ps.dAvnS7jIVPVBMecMp6yMWBh9Vek4.qSSGZSups5oSg85m', NULL, '{\"locale\":\"ru\"}', '2024-06-22 16:48:40', '2024-06-22 16:49:35');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `advantages`
--
ALTER TABLE `advantages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `parameters`
--
ALTER TABLE `parameters`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `parameter_product`
--
ALTER TABLE `parameter_product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_type_id_index` (`type_id`),
  ADD KEY `products_collection_id_index` (`collection_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `advantages`
--
ALTER TABLE `advantages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `markets`
--
ALTER TABLE `markets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `parameters`
--
ALTER TABLE `parameters`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `parameter_product`
--
ALTER TABLE `parameter_product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT для таблицы `types`
--
ALTER TABLE `types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
