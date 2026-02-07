-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2026 at 08:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indno1_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutuses`
--

CREATE TABLE `aboutuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `seourl` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aboutuses`
--

INSERT INTO `aboutuses` (`id`, `document_id`, `name`, `seourl`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'ssy9vxzjrxmugrslksmn08fi', 'aboutus', 'aboutus', '2026-02-02 02:27:43.652000', '2026-02-03 09:18:17.632000', NULL, 1, 1, NULL),
(6, 'ssy9vxzjrxmugrslksmn08fi', 'aboutus', 'aboutus', '2026-02-02 02:27:43.652000', '2026-02-03 09:18:17.632000', '2026-02-03 09:18:17.915000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aboutuses_cmps`
--

CREATE TABLE `aboutuses_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aboutuses_cmps`
--

INSERT INTO `aboutuses_cmps` (`id`, `entity_id`, `cmp_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'block.pagecard', 'heading', NULL),
(6, 1, 2, 'block.pagecard', 'about', NULL),
(7, 1, 1, 'block.valuecard', 'valuecard', NULL),
(92, 1, 1, 'block.starcard', 'startcard', 1),
(93, 1, 2, 'block.starcard', 'startcard', 2),
(94, 1, 3, 'block.starcard', 'startcard', 3),
(95, 1, 4, 'block.starcard', 'startcard', 4),
(97, 1, 3, 'block.valuecard', 'ourcore', 1),
(98, 1, 4, 'block.valuecard', 'ourcore', 2),
(99, 1, 5, 'block.valuecard', 'ourcore', 3),
(100, 1, 6, 'block.valuecard', 'ourcore', 4),
(101, 1, 1, 'block.journey-card', 'journey', 1),
(102, 1, 2, 'block.journey-card', 'journey', 2),
(103, 1, 3, 'block.journey-card', 'journey', 3),
(104, 1, 4, 'block.journey-card', 'journey', 4),
(105, 1, 1, 'support.employecard', 'leadership', 1),
(106, 1, 2, 'support.employecard', 'leadership', 2),
(107, 1, 3, 'support.employecard', 'leadership', 3),
(108, 1, 4, 'support.employecard', 'leadership', 4),
(109, 1, 9, 'support.employecard', 'leadership', 5),
(110, 6, 11, 'block.pagecard', 'heading', NULL),
(111, 6, 21, 'block.starcard', 'startcard', 1),
(112, 6, 22, 'block.starcard', 'startcard', 2),
(113, 6, 23, 'block.starcard', 'startcard', 3),
(114, 6, 24, 'block.starcard', 'startcard', 4),
(115, 6, 12, 'block.pagecard', 'about', NULL),
(116, 6, 19, 'block.valuecard', 'ourcore', 1),
(117, 6, 20, 'block.valuecard', 'ourcore', 2),
(118, 6, 21, 'block.valuecard', 'ourcore', 3),
(119, 6, 22, 'block.valuecard', 'ourcore', 4),
(120, 6, 9, 'block.journey-card', 'journey', 1),
(121, 6, 10, 'block.journey-card', 'journey', 2),
(122, 6, 11, 'block.journey-card', 'journey', 3),
(123, 6, 12, 'block.journey-card', 'journey', 4),
(124, 6, 10, 'support.employecard', 'leadership', 1),
(125, 6, 11, 'support.employecard', 'leadership', 2),
(126, 6, 12, 'support.employecard', 'leadership', 3),
(127, 6, 13, 'support.employecard', 'leadership', 4),
(128, 6, 14, 'support.employecard', 'leadership', 5);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`action_parameters`)),
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `document_id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'uvftdu04pqwws38fsliqz49n', 'plugin::upload.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.399000', '2026-02-02 01:21:45.399000', '2026-02-02 01:21:45.399000', NULL, NULL, NULL),
(2, 'dhffrtqyo5tdxh32aepivyg9', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.404000', '2026-02-02 01:21:45.404000', '2026-02-02 01:21:45.405000', NULL, NULL, NULL),
(3, 'd2vgjzekv1ggnpe30ij5y0be', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.410000', '2026-02-02 01:21:45.410000', '2026-02-02 01:21:45.410000', NULL, NULL, NULL),
(4, 'e29ugvscxvtnwepa219w2ova', 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.414000', '2026-02-02 01:21:45.414000', '2026-02-02 01:21:45.414000', NULL, NULL, NULL),
(5, 'nfmynedit3bpnl722se7ap1x', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.418000', '2026-02-02 01:21:45.418000', '2026-02-02 01:21:45.418000', NULL, NULL, NULL),
(6, 'yr24bho9a9cm0vqq9wo9tfda', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.421000', '2026-02-02 01:21:45.421000', '2026-02-02 01:21:45.421000', NULL, NULL, NULL),
(7, 'fpf3jblfgfccmipw8hrwftgv', 'plugin::upload.read', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2026-02-02 01:21:45.426000', '2026-02-02 01:21:45.426000', '2026-02-02 01:21:45.426000', NULL, NULL, NULL),
(8, 'tjt4wevfmexdwqo0c3f3jmhz', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.430000', '2026-02-02 01:21:45.430000', '2026-02-02 01:21:45.430000', NULL, NULL, NULL),
(9, 'jjunzbz50pzrpcgqrthcpfvo', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.434000', '2026-02-02 01:21:45.434000', '2026-02-02 01:21:45.434000', NULL, NULL, NULL),
(10, 'e579bh11qe0ar43hw4i8s065', 'plugin::upload.assets.update', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2026-02-02 01:21:45.437000', '2026-02-02 01:21:45.437000', '2026-02-02 01:21:45.437000', NULL, NULL, NULL),
(11, 'gdpioxdq6u9v5pmx5xgftmfu', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.441000', '2026-02-02 01:21:45.441000', '2026-02-02 01:21:45.441000', NULL, NULL, NULL),
(12, 'g9c5psetoonpe2o2n5ea2tex', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.444000', '2026-02-02 01:21:45.444000', '2026-02-02 01:21:45.445000', NULL, NULL, NULL),
(13, 'n4v4a4sysobbim3ibpg2jdr9', 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2026-02-02 01:21:45.465000', '2026-02-02 01:21:45.465000', '2026-02-02 01:21:45.466000', NULL, NULL, NULL),
(14, 'bssnl4of4ns6q8sq5mehjhs7', 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2026-02-02 01:21:45.470000', '2026-02-02 01:21:45.470000', '2026-02-02 01:21:45.470000', NULL, NULL, NULL),
(15, 'qinxaed9gobgs8jejt9lo1ds', 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2026-02-02 01:21:45.474000', '2026-02-02 01:21:45.474000', '2026-02-02 01:21:45.474000', NULL, NULL, NULL),
(16, 'neg1muy2tgp6scrzy7ftw5xr', 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2026-02-02 01:21:45.478000', '2026-02-02 01:21:45.478000', '2026-02-02 01:21:45.478000', NULL, NULL, NULL),
(17, 'n1vmvp5f56konsmdsjrjk1ie', 'plugin::content-manager.explorer.publish', '{}', 'plugin::users-permissions.user', '{}', '[]', '2026-02-02 01:21:45.483000', '2026-02-02 01:21:45.483000', '2026-02-02 01:21:45.483000', NULL, NULL, NULL),
(18, 'sca57lwtpwlxt8lor3d9pa6z', 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.487000', '2026-02-02 01:21:45.487000', '2026-02-02 01:21:45.487000', NULL, NULL, NULL),
(19, 'sr3fzw7rrkovcwa71tao61st', 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.491000', '2026-02-02 01:21:45.491000', '2026-02-02 01:21:45.491000', NULL, NULL, NULL),
(20, 'shgmovruxndoxj1vslnh8jgg', 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.495000', '2026-02-02 01:21:45.495000', '2026-02-02 01:21:45.495000', NULL, NULL, NULL),
(21, 'y10yb2tuv0zvxhpdw3ilwaz0', 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.498000', '2026-02-02 01:21:45.498000', '2026-02-02 01:21:45.498000', NULL, NULL, NULL),
(22, 'slm71qiz661i9mxmwp8kgbxo', 'plugin::email.settings.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.502000', '2026-02-02 01:21:45.502000', '2026-02-02 01:21:45.502000', NULL, NULL, NULL),
(23, 'xwchirlwy27jomhxhrnoyxws', 'plugin::upload.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.506000', '2026-02-02 01:21:45.506000', '2026-02-02 01:21:45.506000', NULL, NULL, NULL),
(24, 'nsipsd2e2yv3gt8vypn63t06', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.510000', '2026-02-02 01:21:45.510000', '2026-02-02 01:21:45.510000', NULL, NULL, NULL),
(25, 'szmt74yvnhvlyj906tsf7euw', 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.513000', '2026-02-02 01:21:45.513000', '2026-02-02 01:21:45.513000', NULL, NULL, NULL),
(26, 'rrrrrz1b2sa0n7yqv3vc6zla', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.517000', '2026-02-02 01:21:45.517000', '2026-02-02 01:21:45.517000', NULL, NULL, NULL),
(27, 'a78tz3acgny4342kxyvzmvt3', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.521000', '2026-02-02 01:21:45.521000', '2026-02-02 01:21:45.521000', NULL, NULL, NULL),
(28, 'mkhtcdki31svouwk4e6p7omr', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.524000', '2026-02-02 01:21:45.524000', '2026-02-02 01:21:45.525000', NULL, NULL, NULL),
(29, 'glg9au16w5esqdfowsqa76gr', 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.528000', '2026-02-02 01:21:45.528000', '2026-02-02 01:21:45.528000', NULL, NULL, NULL),
(30, 'yto0vzkkvpxk8unm5dk6gtis', 'plugin::i18n.locale.create', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.531000', '2026-02-02 01:21:45.531000', '2026-02-02 01:21:45.531000', NULL, NULL, NULL),
(31, 'kvu5eatc2fv92b4pnh6u5m1y', 'plugin::i18n.locale.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.535000', '2026-02-02 01:21:45.535000', '2026-02-02 01:21:45.535000', NULL, NULL, NULL),
(32, 'e722o7bfi0aciq9gbsle71xz', 'plugin::i18n.locale.update', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.538000', '2026-02-02 01:21:45.538000', '2026-02-02 01:21:45.538000', NULL, NULL, NULL),
(33, 'x5nuyajtnjfxz68obzrf8vkv', 'plugin::i18n.locale.delete', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.541000', '2026-02-02 01:21:45.541000', '2026-02-02 01:21:45.541000', NULL, NULL, NULL),
(34, 'piem9lu0a9qgzx02bdgf2ama', 'plugin::users-permissions.roles.create', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.544000', '2026-02-02 01:21:45.544000', '2026-02-02 01:21:45.544000', NULL, NULL, NULL),
(35, 'keqoqm1os8syxzehh8oamf6p', 'plugin::users-permissions.roles.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.547000', '2026-02-02 01:21:45.547000', '2026-02-02 01:21:45.547000', NULL, NULL, NULL),
(36, 'on6v7iv1uwvqg6t4z5ta1yoy', 'plugin::users-permissions.roles.update', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.550000', '2026-02-02 01:21:45.550000', '2026-02-02 01:21:45.550000', NULL, NULL, NULL),
(37, 'x3xwtzoxey3i13rm8vheyjar', 'plugin::users-permissions.roles.delete', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.553000', '2026-02-02 01:21:45.553000', '2026-02-02 01:21:45.553000', NULL, NULL, NULL),
(38, 'iuj7jmqfgpbyd7mfwyl6kyh5', 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.555000', '2026-02-02 01:21:45.555000', '2026-02-02 01:21:45.556000', NULL, NULL, NULL),
(39, 'ueo1vpq5rj5f67knea4977mj', 'plugin::users-permissions.providers.update', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.558000', '2026-02-02 01:21:45.558000', '2026-02-02 01:21:45.558000', NULL, NULL, NULL),
(40, 'ozo698h8mejqq7usc41d0ugz', 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.561000', '2026-02-02 01:21:45.561000', '2026-02-02 01:21:45.561000', NULL, NULL, NULL),
(41, 'xrt7zdm2f5calot4e5xhdm8f', 'plugin::users-permissions.email-templates.update', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.565000', '2026-02-02 01:21:45.565000', '2026-02-02 01:21:45.565000', NULL, NULL, NULL),
(42, 'jphzu3l2yaqguryznvzhebzn', 'plugin::users-permissions.advanced-settings.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.568000', '2026-02-02 01:21:45.568000', '2026-02-02 01:21:45.568000', NULL, NULL, NULL),
(43, 'uyr0c9fnjdrkfs1qmo3q8qbe', 'plugin::users-permissions.advanced-settings.update', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.571000', '2026-02-02 01:21:45.571000', '2026-02-02 01:21:45.571000', NULL, NULL, NULL),
(44, 'fel8gf380ahdnb99tqby2tuo', 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.574000', '2026-02-02 01:21:45.574000', '2026-02-02 01:21:45.574000', NULL, NULL, NULL),
(45, 'fir6s6h390u0c7ouuqrxybr2', 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.577000', '2026-02-02 01:21:45.577000', '2026-02-02 01:21:45.578000', NULL, NULL, NULL),
(46, 'yfnkwdsbt59a5n49q24bbusg', 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.580000', '2026-02-02 01:21:45.580000', '2026-02-02 01:21:45.581000', NULL, NULL, NULL),
(47, 'it3qtyh33u9wq4lyi5262yry', 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.584000', '2026-02-02 01:21:45.584000', '2026-02-02 01:21:45.584000', NULL, NULL, NULL),
(48, 'juvcjo514l6odt0gq4vuf6nn', 'admin::webhooks.delete', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.587000', '2026-02-02 01:21:45.587000', '2026-02-02 01:21:45.587000', NULL, NULL, NULL),
(49, 'orzwpnzpknvn5fo6rflftpuv', 'admin::users.create', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.590000', '2026-02-02 01:21:45.590000', '2026-02-02 01:21:45.590000', NULL, NULL, NULL),
(50, 'oe6rn7jc1m8in8oakc3dx9sq', 'admin::users.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.594000', '2026-02-02 01:21:45.594000', '2026-02-02 01:21:45.594000', NULL, NULL, NULL),
(51, 'vrrfwjczze9nzg55m9jqmg6y', 'admin::users.update', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.597000', '2026-02-02 01:21:45.597000', '2026-02-02 01:21:45.597000', NULL, NULL, NULL),
(52, 'npv86y7a8e0y9ofgq1gplp2r', 'admin::users.delete', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.600000', '2026-02-02 01:21:45.600000', '2026-02-02 01:21:45.600000', NULL, NULL, NULL),
(53, 'j6dbr90jccyt3q9yeu1gdlcb', 'admin::roles.create', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.603000', '2026-02-02 01:21:45.603000', '2026-02-02 01:21:45.603000', NULL, NULL, NULL),
(54, 'vawsvyiqs01ls6nb5o600u6h', 'admin::roles.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.606000', '2026-02-02 01:21:45.606000', '2026-02-02 01:21:45.606000', NULL, NULL, NULL),
(55, 'dk7n6e87on0rw1vwnxez9ws8', 'admin::roles.update', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.610000', '2026-02-02 01:21:45.610000', '2026-02-02 01:21:45.610000', NULL, NULL, NULL),
(56, 'z21gcxsb7bjk610eg2vlk4co', 'admin::roles.delete', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.613000', '2026-02-02 01:21:45.613000', '2026-02-02 01:21:45.613000', NULL, NULL, NULL),
(57, 'jxm6s59ucbxbcw6qai1bx4fe', 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.616000', '2026-02-02 01:21:45.616000', '2026-02-02 01:21:45.616000', NULL, NULL, NULL),
(58, 'gzirudff297uk9woszzlqqw2', 'admin::api-tokens.create', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.619000', '2026-02-02 01:21:45.619000', '2026-02-02 01:21:45.619000', NULL, NULL, NULL),
(59, 'nbuilcv9lh16wbmubuxabc2l', 'admin::api-tokens.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.622000', '2026-02-02 01:21:45.622000', '2026-02-02 01:21:45.622000', NULL, NULL, NULL),
(60, 'qav4chtirwdjmu2kn1y9345v', 'admin::api-tokens.update', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.625000', '2026-02-02 01:21:45.625000', '2026-02-02 01:21:45.625000', NULL, NULL, NULL),
(61, 'vk7o9ranat9llemlzfn7ei0g', 'admin::api-tokens.regenerate', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.628000', '2026-02-02 01:21:45.628000', '2026-02-02 01:21:45.628000', NULL, NULL, NULL),
(62, 'nvge1o9s5ne2lv0p4y2f7g2x', 'admin::api-tokens.delete', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.631000', '2026-02-02 01:21:45.631000', '2026-02-02 01:21:45.631000', NULL, NULL, NULL),
(63, 'tds87pjcibukaxalylwo71ol', 'admin::project-settings.update', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.634000', '2026-02-02 01:21:45.634000', '2026-02-02 01:21:45.635000', NULL, NULL, NULL),
(64, 'zbnltgjwi2tlykzylsrym9re', 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.638000', '2026-02-02 01:21:45.638000', '2026-02-02 01:21:45.638000', NULL, NULL, NULL),
(65, 'gjg59ky23f4phvsh92aqmfwq', 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.641000', '2026-02-02 01:21:45.641000', '2026-02-02 01:21:45.641000', NULL, NULL, NULL),
(66, 'i2xmvnmvpzsbs5hho7kh37z2', 'admin::transfer.tokens.create', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.644000', '2026-02-02 01:21:45.644000', '2026-02-02 01:21:45.644000', NULL, NULL, NULL),
(67, 'pg160loeyqewyv27mb3arrv1', 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.647000', '2026-02-02 01:21:45.647000', '2026-02-02 01:21:45.647000', NULL, NULL, NULL),
(68, 'r0mbjotecxsjshbcei5fskxn', 'admin::transfer.tokens.update', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.650000', '2026-02-02 01:21:45.650000', '2026-02-02 01:21:45.650000', NULL, NULL, NULL),
(69, 'bqnzklrdr7um2o0rf5o94suq', 'admin::transfer.tokens.regenerate', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.654000', '2026-02-02 01:21:45.654000', '2026-02-02 01:21:45.654000', NULL, NULL, NULL),
(70, 'lzfus23pd4rvq608ovfekr8b', 'admin::transfer.tokens.delete', '{}', NULL, '{}', '[]', '2026-02-02 01:21:45.657000', '2026-02-02 01:21:45.657000', '2026-02-02 01:21:45.657000', NULL, NULL, NULL),
(74, 'iw6zo28ty6cbto6g0br3f82b', 'plugin::content-manager.explorer.delete', '{}', 'api::aboutus.aboutus', '{}', '[]', '2026-02-02 02:15:16.131000', '2026-02-02 02:15:16.131000', '2026-02-02 02:15:16.131000', NULL, NULL, NULL),
(75, 'nkxi7ctzb27shujeog6inz0i', 'plugin::content-manager.explorer.publish', '{}', 'api::aboutus.aboutus', '{}', '[]', '2026-02-02 02:15:16.136000', '2026-02-02 02:15:16.136000', '2026-02-02 02:15:16.136000', NULL, NULL, NULL),
(88, 'nhvzvg08sl7b4uo0ikspzhq8', 'plugin::content-manager.explorer.delete', '{}', 'api::gamepage.gamepage', '{}', '[]', '2026-02-03 11:59:07.273000', '2026-02-03 11:59:07.273000', '2026-02-03 11:59:07.274000', NULL, NULL, NULL),
(89, 'vq0fdaqhsmh48tmgr05hhthr', 'plugin::content-manager.explorer.publish', '{}', 'api::gamepage.gamepage', '{}', '[]', '2026-02-03 11:59:07.290000', '2026-02-03 11:59:07.290000', '2026-02-03 11:59:07.290000', NULL, NULL, NULL),
(96, 'cobx96d8yykl751gyf1hfjc9', 'plugin::content-manager.explorer.create', '{}', 'api::aboutus.aboutus', '{\"fields\":[\"name\",\"seourl\",\"heading.name\",\"heading.description\",\"startcard\",\"about.name\",\"about.description\",\"ourcore\",\"journey\",\"leadership\"]}', '[]', '2026-02-03 12:19:29.985000', '2026-02-03 12:19:29.985000', '2026-02-03 12:19:29.986000', NULL, NULL, NULL),
(97, 'l9yk57m9e6yamdzz4snu6kqs', 'plugin::content-manager.explorer.read', '{}', 'api::aboutus.aboutus', '{\"fields\":[\"name\",\"seourl\",\"heading.name\",\"heading.description\",\"startcard\",\"about.name\",\"about.description\",\"ourcore\",\"journey\",\"leadership\"]}', '[]', '2026-02-03 12:19:30.002000', '2026-02-03 12:19:30.002000', '2026-02-03 12:19:30.002000', NULL, NULL, NULL),
(98, 'ipwj02nzpjp8jla6gt6aoxlx', 'plugin::content-manager.explorer.update', '{}', 'api::aboutus.aboutus', '{\"fields\":[\"name\",\"seourl\",\"heading.name\",\"heading.description\",\"startcard\",\"about.name\",\"about.description\",\"ourcore\",\"journey\",\"leadership\"]}', '[]', '2026-02-03 12:19:30.014000', '2026-02-03 12:19:30.014000', '2026-02-03 12:19:30.014000', NULL, NULL, NULL),
(116, 'cwozbz6rlomx8funjecmsv7l', 'plugin::content-manager.explorer.delete', '{}', 'api::playgame.playgame', '{}', '[]', '2026-02-04 08:12:15.144000', '2026-02-04 08:12:15.144000', '2026-02-04 08:12:15.144000', NULL, NULL, NULL),
(117, 'pizwf5kfzvawbgn7ybmljpla', 'plugin::content-manager.explorer.publish', '{}', 'api::playgame.playgame', '{}', '[]', '2026-02-04 08:12:15.158000', '2026-02-04 08:12:15.158000', '2026-02-04 08:12:15.159000', NULL, NULL, NULL),
(124, 'kugg7bn9r3ug5ulwelar5pyn', 'plugin::content-manager.explorer.delete', '{}', 'api::sponsor.sponsor', '{}', '[]', '2026-02-04 08:14:50.013000', '2026-02-04 08:14:50.013000', '2026-02-04 08:14:50.013000', NULL, NULL, NULL),
(125, 'ylgpa3ufvddgq119viou2log', 'plugin::content-manager.explorer.publish', '{}', 'api::sponsor.sponsor', '{}', '[]', '2026-02-04 08:14:50.023000', '2026-02-04 08:14:50.023000', '2026-02-04 08:14:50.024000', NULL, NULL, NULL),
(141, 'zcx7p9motud9huikpc8uqx45', 'plugin::content-manager.explorer.delete', '{}', 'api::blog.blog', '{}', '[]', '2026-02-04 13:28:20.714000', '2026-02-04 13:28:20.714000', '2026-02-04 13:28:20.715000', NULL, NULL, NULL),
(142, 'c4x9j08xub7qoi499ev4q98x', 'plugin::content-manager.explorer.publish', '{}', 'api::blog.blog', '{}', '[]', '2026-02-04 13:28:20.725000', '2026-02-04 13:28:20.725000', '2026-02-04 13:28:20.726000', NULL, NULL, NULL),
(158, 'wq5otk8d1b2oq2zxfgdatp9j', 'plugin::content-manager.explorer.create', '{}', 'api::blog.blog', '{\"fields\":[\"heading\",\"description\",\"gamecategoty\",\"seoUrl\",\"image\",\"admin_user\",\"blogbody\",\"faqBody\"]}', '[]', '2026-02-04 17:16:06.637000', '2026-02-04 17:16:06.637000', '2026-02-04 17:16:06.638000', NULL, NULL, NULL),
(159, 'z53m6jmbko16ogfj02jt8arv', 'plugin::content-manager.explorer.read', '{}', 'api::blog.blog', '{\"fields\":[\"heading\",\"description\",\"gamecategoty\",\"seoUrl\",\"image\",\"admin_user\",\"blogbody\",\"faqBody\"]}', '[]', '2026-02-04 17:16:06.647000', '2026-02-04 17:16:06.647000', '2026-02-04 17:16:06.648000', NULL, NULL, NULL),
(160, 'h2jls4zoul5wy042yfpzyytw', 'plugin::content-manager.explorer.update', '{}', 'api::blog.blog', '{\"fields\":[\"heading\",\"description\",\"gamecategoty\",\"seoUrl\",\"image\",\"admin_user\",\"blogbody\",\"faqBody\"]}', '[]', '2026-02-04 17:16:06.657000', '2026-02-04 17:16:06.657000', '2026-02-04 17:16:06.657000', NULL, NULL, NULL),
(164, 'o6zszxkzcs4lspw0dklvf3e7', 'plugin::content-manager.explorer.delete', '{}', 'api::faq.faq', '{}', '[]', '2026-02-05 04:29:49.655000', '2026-02-05 04:29:49.655000', '2026-02-05 04:29:49.656000', NULL, NULL, NULL),
(165, 'xcp0c1j6t1zh7qulnghn6ws3', 'plugin::content-manager.explorer.publish', '{}', 'api::faq.faq', '{}', '[]', '2026-02-05 04:29:49.716000', '2026-02-05 04:29:49.716000', '2026-02-05 04:29:49.717000', NULL, NULL, NULL),
(166, 'jyk7439dgb677m6smzvn8hbn', 'plugin::content-manager.explorer.create', '{}', 'api::agreement.agreement', '{\"fields\":[\"title\",\"moto\",\"description\",\"seourl\",\"agreebody\"]}', '[]', '2026-02-05 04:41:46.350000', '2026-02-05 04:41:46.350000', '2026-02-05 04:41:46.350000', NULL, NULL, NULL),
(167, 'as3g32wyxlhy80qpfy7244ml', 'plugin::content-manager.explorer.read', '{}', 'api::agreement.agreement', '{\"fields\":[\"title\",\"moto\",\"description\",\"seourl\",\"agreebody\"]}', '[]', '2026-02-05 04:41:46.364000', '2026-02-05 04:41:46.364000', '2026-02-05 04:41:46.364000', NULL, NULL, NULL),
(168, 'somtauzk0e8sk92jfngvg7sx', 'plugin::content-manager.explorer.update', '{}', 'api::agreement.agreement', '{\"fields\":[\"title\",\"moto\",\"description\",\"seourl\",\"agreebody\"]}', '[]', '2026-02-05 04:41:46.371000', '2026-02-05 04:41:46.371000', '2026-02-05 04:41:46.372000', NULL, NULL, NULL),
(169, 'f2xsql1iue1itfnca33rmbul', 'plugin::content-manager.explorer.delete', '{}', 'api::agreement.agreement', '{}', '[]', '2026-02-05 04:41:46.379000', '2026-02-05 04:41:46.379000', '2026-02-05 04:41:46.380000', NULL, NULL, NULL),
(170, 'pj7nsuirub4jl2q3sgbfnb2k', 'plugin::content-manager.explorer.publish', '{}', 'api::agreement.agreement', '{}', '[]', '2026-02-05 04:41:46.393000', '2026-02-05 04:41:46.393000', '2026-02-05 04:41:46.393000', NULL, NULL, NULL),
(171, 'l7totc9pgl839oqfbhpsa26q', 'plugin::content-manager.explorer.create', '{}', 'api::faqtype.faqtype', '{\"fields\":[\"title\",\"icon\",\"seourl\"]}', '[]', '2026-02-05 04:49:06.852000', '2026-02-05 04:49:06.852000', '2026-02-05 04:49:06.852000', NULL, NULL, NULL),
(172, 'dp5kwsf7eny7tq8js7xb0ub6', 'plugin::content-manager.explorer.read', '{}', 'api::faqtype.faqtype', '{\"fields\":[\"title\",\"icon\",\"seourl\"]}', '[]', '2026-02-05 04:49:06.861000', '2026-02-05 04:49:06.861000', '2026-02-05 04:49:06.862000', NULL, NULL, NULL),
(173, 'rvkk9fnr3rflaggvimyh1ly1', 'plugin::content-manager.explorer.update', '{}', 'api::faqtype.faqtype', '{\"fields\":[\"title\",\"icon\",\"seourl\"]}', '[]', '2026-02-05 04:49:06.870000', '2026-02-05 04:49:06.870000', '2026-02-05 04:49:06.870000', NULL, NULL, NULL),
(174, 'wble9wnxr8ewwll86d221nuq', 'plugin::content-manager.explorer.delete', '{}', 'api::faqtype.faqtype', '{}', '[]', '2026-02-05 04:49:06.878000', '2026-02-05 04:49:06.878000', '2026-02-05 04:49:06.878000', NULL, NULL, NULL),
(175, 'd719xekuxs8h1qazvcag46k8', 'plugin::content-manager.explorer.publish', '{}', 'api::faqtype.faqtype', '{}', '[]', '2026-02-05 04:49:06.885000', '2026-02-05 04:49:06.885000', '2026-02-05 04:49:06.886000', NULL, NULL, NULL),
(179, 'pns5avaoowr9e97363vr4goo', 'plugin::content-manager.explorer.create', '{}', 'api::gamepage.gamepage', '{\"fields\":[\"pagename\",\"image\",\"description\",\"seourl\",\"gamebody\",\"gamefaq.name\",\"gamefaq.description\",\"gamefaq.faqtype\",\"playgames\",\"sponsors\",\"blog\"]}', '[]', '2026-02-05 05:02:53.341000', '2026-02-05 05:02:53.341000', '2026-02-05 05:02:53.341000', NULL, NULL, NULL),
(181, 'acvh3ykb0sapeidccrcnz454', 'plugin::content-manager.explorer.read', '{}', 'api::gamepage.gamepage', '{\"fields\":[\"pagename\",\"image\",\"description\",\"seourl\",\"gamebody\",\"gamefaq.name\",\"gamefaq.description\",\"gamefaq.faqtype\",\"playgames\",\"sponsors\",\"blog\"]}', '[]', '2026-02-05 05:02:53.356000', '2026-02-05 05:02:53.356000', '2026-02-05 05:02:53.356000', NULL, NULL, NULL),
(183, 'h6alybnt1n5azckjl0x3z33a', 'plugin::content-manager.explorer.update', '{}', 'api::gamepage.gamepage', '{\"fields\":[\"pagename\",\"image\",\"description\",\"seourl\",\"gamebody\",\"gamefaq.name\",\"gamefaq.description\",\"gamefaq.faqtype\",\"playgames\",\"sponsors\",\"blog\"]}', '[]', '2026-02-05 05:02:53.369000', '2026-02-05 05:02:53.369000', '2026-02-05 05:02:53.369000', NULL, NULL, NULL),
(185, 'm61h0wf4njrmomn5xhavfpv1', 'plugin::content-manager.explorer.create', '{}', 'api::faq.faq', '{\"fields\":[\"title\",\"description\",\"image\",\"seourl\",\"faqbody\"]}', '[]', '2026-02-05 05:04:17.701000', '2026-02-05 05:04:17.701000', '2026-02-05 05:04:17.701000', NULL, NULL, NULL),
(186, 'ur4bku07ijog9ic6mbbttbu0', 'plugin::content-manager.explorer.read', '{}', 'api::faq.faq', '{\"fields\":[\"title\",\"description\",\"image\",\"seourl\",\"faqbody\"]}', '[]', '2026-02-05 05:04:17.711000', '2026-02-05 05:04:17.711000', '2026-02-05 05:04:17.711000', NULL, NULL, NULL),
(187, 'yx8xcco1opty7ujetd12khsn', 'plugin::content-manager.explorer.update', '{}', 'api::faq.faq', '{\"fields\":[\"title\",\"description\",\"image\",\"seourl\",\"faqbody\"]}', '[]', '2026-02-05 05:04:17.719000', '2026-02-05 05:04:17.719000', '2026-02-05 05:04:17.719000', NULL, NULL, NULL),
(197, 'y998a69jx0tjtyra7cqs9kxd', 'plugin::content-manager.explorer.delete', '{}', 'api::landingpage.landingpage', '{}', '[]', '2026-02-05 12:45:52.026000', '2026-02-05 12:45:52.026000', '2026-02-05 12:45:52.027000', NULL, NULL, NULL),
(198, 'bmr7wf08dowqwe5bv00999co', 'plugin::content-manager.explorer.publish', '{}', 'api::landingpage.landingpage', '{}', '[]', '2026-02-05 12:45:52.033000', '2026-02-05 12:45:52.033000', '2026-02-05 12:45:52.033000', NULL, NULL, NULL),
(205, 'cvpoqpqkttfzoj4lllnzi7wy', 'plugin::content-manager.explorer.create', '{}', 'api::sponsor.sponsor', '{\"fields\":[\"name\",\"description\",\"logo\",\"heroimage\",\"gamecategoties\",\"seourl\",\"bodysponce\"]}', '[]', '2026-02-06 09:12:36.316000', '2026-02-06 09:12:36.316000', '2026-02-06 09:12:36.316000', NULL, NULL, NULL),
(206, 'zouts3qo701d5191ql0qo4w0', 'plugin::content-manager.explorer.read', '{}', 'api::sponsor.sponsor', '{\"fields\":[\"name\",\"description\",\"logo\",\"heroimage\",\"gamecategoties\",\"seourl\",\"bodysponce\"]}', '[]', '2026-02-06 09:12:36.323000', '2026-02-06 09:12:36.323000', '2026-02-06 09:12:36.323000', NULL, NULL, NULL),
(207, 'yxzx3na7b8jbpi5i297ve46n', 'plugin::content-manager.explorer.update', '{}', 'api::sponsor.sponsor', '{\"fields\":[\"name\",\"description\",\"logo\",\"heroimage\",\"gamecategoties\",\"seourl\",\"bodysponce\"]}', '[]', '2026-02-06 09:12:36.329000', '2026-02-06 09:12:36.329000', '2026-02-06 09:12:36.330000', NULL, NULL, NULL),
(220, 'nee1r2pdw4jxdcvql4r9aqll', 'plugin::content-manager.explorer.create', '{}', 'api::landingpage.landingpage', '{\"fields\":[\"title\",\"mainslider.name\",\"mainslider.image\",\"mainslider.description\",\"mainslider.urllink\",\"mainslider.isExternal\",\"Featuregame.name\",\"Featuregame.image\",\"Featuregame.linkurl\",\"Featuregame.isextarnal\",\"sportbody\"]}', '[]', '2026-02-06 17:52:02.717000', '2026-02-06 17:52:02.717000', '2026-02-06 17:52:02.717000', NULL, NULL, NULL),
(221, 'c220i2xfj5lp45xv4qxucric', 'plugin::content-manager.explorer.read', '{}', 'api::landingpage.landingpage', '{\"fields\":[\"title\",\"mainslider.name\",\"mainslider.image\",\"mainslider.description\",\"mainslider.urllink\",\"mainslider.isExternal\",\"Featuregame.name\",\"Featuregame.image\",\"Featuregame.linkurl\",\"Featuregame.isextarnal\",\"sportbody\"]}', '[]', '2026-02-06 17:52:02.726000', '2026-02-06 17:52:02.726000', '2026-02-06 17:52:02.727000', NULL, NULL, NULL),
(222, 'jrc2sq0foabstnaynpl56lzg', 'plugin::content-manager.explorer.update', '{}', 'api::landingpage.landingpage', '{\"fields\":[\"title\",\"mainslider.name\",\"mainslider.image\",\"mainslider.description\",\"mainslider.urllink\",\"mainslider.isExternal\",\"Featuregame.name\",\"Featuregame.image\",\"Featuregame.linkurl\",\"Featuregame.isextarnal\",\"sportbody\"]}', '[]', '2026-02-06 17:52:02.736000', '2026-02-06 17:52:02.736000', '2026-02-06 17:52:02.736000', NULL, NULL, NULL),
(223, 'steavnmb16aprmvvmey6cv3r', 'plugin::content-manager.explorer.create', '{}', 'api::playgame.playgame', '{\"fields\":[\"gamename\",\"description\",\"iamge\",\"seourl\",\"gamecategoties\",\"gameurl\",\"bodysponce\"]}', '[]', '2026-02-07 12:50:35.197000', '2026-02-07 12:50:35.197000', '2026-02-07 12:50:35.197000', NULL, NULL, NULL),
(224, 'leb0nufy857lldotg9bb6lsb', 'plugin::content-manager.explorer.read', '{}', 'api::playgame.playgame', '{\"fields\":[\"gamename\",\"description\",\"iamge\",\"seourl\",\"gamecategoties\",\"gameurl\",\"bodysponce\"]}', '[]', '2026-02-07 12:50:35.207000', '2026-02-07 12:50:35.207000', '2026-02-07 12:50:35.208000', NULL, NULL, NULL),
(225, 'bd85r8tu80bfawb0vy3p45mq', 'plugin::content-manager.explorer.update', '{}', 'api::playgame.playgame', '{\"fields\":[\"gamename\",\"description\",\"iamge\",\"seourl\",\"gamecategoties\",\"gameurl\",\"bodysponce\"]}', '[]', '2026-02-07 12:50:35.215000', '2026-02-07 12:50:35.215000', '2026-02-07 12:50:35.215000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_lnk`
--

CREATE TABLE `admin_permissions_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions_role_lnk`
--

INSERT INTO `admin_permissions_role_lnk` (`id`, `permission_id`, `role_id`, `permission_ord`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(13, 13, 1, 1),
(14, 14, 1, 2),
(15, 15, 1, 3),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(66, 66, 1, 54),
(67, 67, 1, 55),
(68, 68, 1, 56),
(69, 69, 1, 57),
(70, 70, 1, 58),
(74, 74, 1, 62),
(75, 75, 1, 63),
(88, 88, 1, 70),
(89, 89, 1, 71),
(96, 96, 1, 75),
(97, 97, 1, 76),
(98, 98, 1, 77),
(116, 116, 1, 95),
(117, 117, 1, 96),
(124, 124, 1, 103),
(125, 125, 1, 104),
(141, 141, 1, 111),
(142, 142, 1, 112),
(158, 158, 1, 121),
(159, 159, 1, 122),
(160, 160, 1, 123),
(164, 164, 1, 127),
(165, 165, 1, 128),
(166, 166, 1, 129),
(167, 167, 1, 130),
(168, 168, 1, 131),
(169, 169, 1, 132),
(170, 170, 1, 133),
(171, 171, 1, 134),
(172, 172, 1, 135),
(173, 173, 1, 136),
(174, 174, 1, 137),
(175, 175, 1, 138),
(179, 179, 1, 142),
(181, 181, 1, 144),
(183, 183, 1, 146),
(185, 185, 1, 148),
(186, 186, 1, 149),
(187, 187, 1, 150),
(197, 197, 1, 160),
(198, 198, 1, 161),
(205, 205, 1, 165),
(206, 206, 1, 166),
(207, 207, 1, 167),
(220, 220, 1, 168),
(221, 221, 1, 169),
(222, 222, 1, 170),
(223, 223, 1, 171),
(224, 224, 1, 172),
(225, 225, 1, 173);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `document_id`, `name`, `code`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'fn1vst1qp5pyeff7p7sqytdn', 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2026-02-02 01:21:45.385000', '2026-02-02 01:21:45.385000', '2026-02-02 01:21:45.385000', NULL, NULL, NULL),
(2, 'fxw4d97f3weqld1v2vuf0gfu', 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2026-02-02 01:21:45.391000', '2026-02-02 01:21:45.391000', '2026-02-02 01:21:45.391000', NULL, NULL, NULL),
(3, 'rsxugukrp6ttqf6h1j7cawi0', 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2026-02-02 01:21:45.395000', '2026-02-02 01:21:45.395000', '2026-02-02 01:21:45.395000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `document_id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'mjvt265zo4c292ymkn0utf1i', 'Gayan', 'Rasika', 'gayan622', 'rasika.victoryigame@gmail.com', '$2a$10$t6kjjswhH3ueUl2.N6k/GuASXbAipU4VNzmBPjrDl2zBZAnCw2b12', NULL, NULL, 1, 0, NULL, '2026-02-02 01:22:23.002000', '2026-02-02 01:22:23.002000', '2026-02-02 01:22:23.002000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_lnk`
--

CREATE TABLE `admin_users_roles_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_ord` double UNSIGNED DEFAULT NULL,
  `user_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users_roles_lnk`
--

INSERT INTO `admin_users_roles_lnk` (`id`, `user_id`, `role_id`, `role_ord`, `user_ord`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `agreements`
--

CREATE TABLE `agreements` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `moto` longtext DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `seourl` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agreements`
--

INSERT INTO `agreements` (`id`, `document_id`, `title`, `moto`, `description`, `seourl`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'zy952455iixeljtxejzciz7p', 'Terms & Conditions Update Done 02-05', 'Please read these terms carefully before using our platform', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Welcome to IND NO1, India\'s most trusted gaming and betting platform. These Terms and Conditions (\\\"Terms\\\") govern your access to and use of our website, mobile applications, and services (collectively, the \\\"Platform\\\").\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Welcome to IND NO1, India\'s most trusted gaming and betting platform. These Terms and Conditions (\\\"Terms\\\") govern your access to and use of our website, mobile applications, and services (collectively, the \\\"Platform\\\").\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Welcome to IND NO1, India\'s most trusted gaming and betting platform. These Terms and Conditions (\\\"Terms\\\") govern your access to and use of our website, mobile applications, and services (collectively, the \\\"Platform\\\").\"}]}]', NULL, '2026-02-05 11:04:34.008000', '2026-02-05 11:55:07.806000', NULL, 1, 1, NULL),
(7, 'zy952455iixeljtxejzciz7p', 'Terms & Conditions Update Done 02-05', 'Please read these terms carefully before using our platform', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Welcome to IND NO1, India\'s most trusted gaming and betting platform. These Terms and Conditions (\\\"Terms\\\") govern your access to and use of our website, mobile applications, and services (collectively, the \\\"Platform\\\").\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Welcome to IND NO1, India\'s most trusted gaming and betting platform. These Terms and Conditions (\\\"Terms\\\") govern your access to and use of our website, mobile applications, and services (collectively, the \\\"Platform\\\").\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Welcome to IND NO1, India\'s most trusted gaming and betting platform. These Terms and Conditions (\\\"Terms\\\") govern your access to and use of our website, mobile applications, and services (collectively, the \\\"Platform\\\").\"}]}]', NULL, '2026-02-05 11:04:34.008000', '2026-02-05 11:55:07.806000', '2026-02-05 11:55:07.937000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `agreements_cmps`
--

CREATE TABLE `agreements_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agreements_cmps`
--

INSERT INTO `agreements_cmps` (`id`, `entity_id`, `cmp_id`, `component_type`, `field`, `order`) VALUES
(7, 1, 18, 'support.image-right', 'agreebody', 1),
(8, 1, 24, 'support.image-left', 'agreebody', 2),
(9, 1, 39, 'support.artical', 'agreebody', 3),
(10, 7, 21, 'support.image-right', 'agreebody', 1),
(11, 7, 26, 'support.image-left', 'agreebody', 2),
(12, 7, 40, 'support.artical', 'agreebody', 3);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `seo_url` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `document_id`, `heading`, `description`, `seo_url`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'hbmmeza0pmotriiagjm4yxwd', '10 Pro Tips to Maximise Your Cricket Betting Wins', 'If you’ve ever found yourself glued to a cricket match, eagerly predicting how the next ball will turn the game, you’re not alone. Cricket betting mixes the thrill of the sport with a dash of strategy—and who doesn’t want to up their game and walk away with more wins? Whether you’re a seasoned punter or someone just dipping your toes into the world of cricket betting, these ten pro tips are designed to sharpen your approach and help you make smarter bets.', '10-pro-tips-to-maximise-your-cricket-betting-wins', '2026-02-04 13:39:58.027000', '2026-02-04 21:56:57.861000', NULL, 1, 1, NULL),
(6, 'ks7frbwdpv4iockm5yroulit', 'Live Casino Experience: How Technology Changed the Game', 'Hey there, fellow gaming enthusiasts! Whether you’re a seasoned player or just curious about the dazzling world of live casinos, today’s blog post is here to shine a spotlight on how technology has transformed this space into something truly remarkable. If you’ve ever wondered what makes live casino games so immersive and why they feel increasingly like sitting at a real table with friends, you’re in the right place.', 'live-casino-experience-how-technology-changed-the-game', '2026-02-04 16:53:27.494000', '2026-02-04 17:15:37.500000', NULL, 1, 1, NULL),
(10, 'ks7frbwdpv4iockm5yroulit', 'Live Casino Experience: How Technology Changed the Game', 'Hey there, fellow gaming enthusiasts! Whether you’re a seasoned player or just curious about the dazzling world of live casinos, today’s blog post is here to shine a spotlight on how technology has transformed this space into something truly remarkable. If you’ve ever wondered what makes live casino games so immersive and why they feel increasingly like sitting at a real table with friends, you’re in the right place.', 'live-casino-experience-how-technology-changed-the-game', '2026-02-04 16:53:27.494000', '2026-02-04 17:15:37.500000', '2026-02-04 17:15:37.631000', 1, 1, NULL),
(11, 'hbmmeza0pmotriiagjm4yxwd', '10 Pro Tips to luck Maximise Your Cricket Betting Wins', 'If you’ve ever found yourself glued to a cricket match, eagerly predicting how the next ball will turn the game, you’re not alone. Cricket betting mixes the thrill of the sport with a dash of strategy—and who doesn’t want to up their game and walk away with more wins? Whether you’re a seasoned punter or someone just dipping your toes into the world of cricket betting, these ten pro tips are designed to sharpen your approach and help you make smarter bets.', '10-pro-tips-to-maximise-your-cricket-betting-wins', '2026-02-04 13:39:58.027000', '2026-02-04 21:56:57.861000', '2026-02-04 21:56:58.030000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs_admin_user_lnk`
--

CREATE TABLE `blogs_admin_user_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs_admin_user_lnk`
--

INSERT INTO `blogs_admin_user_lnk` (`id`, `blog_id`, `user_id`) VALUES
(1, 1, 1),
(6, 6, 1),
(10, 10, 1),
(11, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs_cmps`
--

CREATE TABLE `blogs_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs_cmps`
--

INSERT INTO `blogs_cmps` (`id`, `entity_id`, `cmp_id`, `component_type`, `field`, `order`) VALUES
(53, 6, 21, 'support.artical', 'blogbody', 1),
(54, 6, 22, 'support.artical', 'blogbody', 2),
(55, 6, 20, 'support.image-left', 'blogbody', 3),
(56, 6, 44, 'support.faq', 'faqBody', 1),
(57, 6, 45, 'support.faq', 'faqBody', 2),
(58, 6, 46, 'support.faq', 'faqBody', 3),
(59, 10, 28, 'support.artical', 'blogbody', 1),
(60, 10, 29, 'support.artical', 'blogbody', 2),
(61, 10, 23, 'support.image-left', 'blogbody', 3),
(62, 10, 55, 'support.faq', 'faqBody', 1),
(63, 10, 56, 'support.faq', 'faqBody', 2),
(64, 10, 57, 'support.faq', 'faqBody', 3),
(65, 1, 18, 'support.artical', 'blogbody', 1),
(66, 1, 5, 'block.tipwarn', 'blogbody', 2),
(67, 1, 7, 'block.tipsuccess', 'blogbody', 3),
(68, 1, 37, 'support.faq', 'faqBody', 1),
(69, 1, 39, 'support.faq', 'faqBody', 2),
(70, 11, 30, 'support.artical', 'blogbody', 1),
(71, 11, 8, 'block.tipwarn', 'blogbody', 2),
(72, 11, 10, 'block.tipsuccess', 'blogbody', 3),
(73, 11, 58, 'support.faq', 'faqBody', 1),
(74, 11, 59, 'support.faq', 'faqBody', 2);

-- --------------------------------------------------------

--
-- Table structure for table `blogs_gamecategoty_lnk`
--

CREATE TABLE `blogs_gamecategoty_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `gamepage_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs_gamecategoty_lnk`
--

INSERT INTO `blogs_gamecategoty_lnk` (`id`, `blog_id`, `gamepage_id`) VALUES
(3, 6, 11),
(4, 10, 33);

-- --------------------------------------------------------

--
-- Table structure for table `components_block_descriptions`
--

CREATE TABLE `components_block_descriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components_block_journey_cards`
--

CREATE TABLE `components_block_journey_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_block_journey_cards`
--

INSERT INTO `components_block_journey_cards` (`id`, `year`, `title`, `description`) VALUES
(1, 2018, 'Company Founded', 'Started with a vision to revolutionize online gaming in India'),
(2, 2019, 'First Million Users', 'Reached 1 million registered users within first year\n'),
(3, 2021, 'International Expansion', 'Expanded services to 5 Asian countries'),
(4, 2024, 'Industry Leader', 'Became the most trusted gaming platform in India'),
(9, 2018, 'Company Founded', 'Started with a vision to revolutionize online gaming in India'),
(10, 2019, 'First Million Users', 'Reached 1 million registered users within first year\n'),
(11, 2021, 'International Expansion', 'Expanded services to 5 Asian countries'),
(12, 2024, 'Industry Leader', 'Became the most trusted gaming platform in India');

-- --------------------------------------------------------

--
-- Table structure for table `components_block_linkcards`
--

CREATE TABLE `components_block_linkcards` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `linkurl` varchar(255) DEFAULT NULL,
  `isextarnal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_block_linkcards`
--

INSERT INTO `components_block_linkcards` (`id`, `name`, `linkurl`, `isextarnal`) VALUES
(1, 'aaa', NULL, 0),
(2, 'G2', NULL, 0),
(3, 'GT', NULL, 0),
(4, 'HG', NULL, 0),
(13, 'aaa', NULL, 0),
(14, 'G2', NULL, 0),
(15, 'GT', NULL, 0),
(16, 'HG', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `components_block_pagecards`
--

CREATE TABLE `components_block_pagecards` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_block_pagecards`
--

INSERT INTO `components_block_pagecards` (`id`, `name`, `description`) VALUES
(1, 'About IND NO1 Update', 'India\'s most trusted gaming and betting platform, delivering excellence in online entertainment since 2018. We\'re committed to providing a safe, fair, and thrilling gaming experience for millions of players.'),
(2, 'Our Story', 'Founded in 2018, IND NO1 emerged from a vision to revolutionize the online gaming industry in India. What started as a small team of passionate gaming enthusiasts has grown into the nation\'s most trusted gaming platform, serving over 10 million active players.\n\nOur journey has been marked by innovation, integrity, and an unwavering commitment to our players. We\'ve continuously evolved our platform to offer cutting-edge gaming experiences while maintaining the highest standards of security and fair play.'),
(11, 'About IND NO1 Update', 'India\'s most trusted gaming and betting platform, delivering excellence in online entertainment since 2018. We\'re committed to providing a safe, fair, and thrilling gaming experience for millions of players.'),
(12, 'Our Story', 'Founded in 2018, IND NO1 emerged from a vision to revolutionize the online gaming industry in India. What started as a small team of passionate gaming enthusiasts has grown into the nation\'s most trusted gaming platform, serving over 10 million active players.\n\nOur journey has been marked by innovation, integrity, and an unwavering commitment to our players. We\'ve continuously evolved our platform to offer cutting-edge gaming experiences while maintaining the highest standards of security and fair play.');

-- --------------------------------------------------------

--
-- Table structure for table `components_block_sliders`
--

CREATE TABLE `components_block_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `urllink` varchar(255) DEFAULT NULL,
  `is_external` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_block_sliders`
--

INSERT INTO `components_block_sliders` (`id`, `name`, `description`, `urllink`, `is_external`) VALUES
(1, 'A', 'AAA', NULL, 0),
(3, 'BBBB', 'VVVV', NULL, 0),
(8, 'ccccc', 'cccc', NULL, 0),
(9, 'dddd', 'ddddd', NULL, 0),
(26, 'xcxcxcx', 'zxzxzx', NULL, 0),
(37, 'zzzz', 'zzzz', NULL, 0),
(44, 'A', 'AAA', NULL, 0),
(45, 'BBBB', 'VVVV', NULL, 0),
(46, 'ccccc', 'cccc', NULL, 0),
(47, 'dddd', 'ddddd', NULL, 0),
(48, 'xcxcxcx', 'zxzxzx', NULL, 0),
(49, 'zzzz', 'zzzz', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `components_block_sportcards`
--

CREATE TABLE `components_block_sportcards` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_block_sportcards`
--

INSERT INTO `components_block_sportcards` (`id`, `title`, `description`) VALUES
(1, 'RACING', 'veniam dolore consectetur lore aliqua ad dolor minim adipiscing A complete log of this run can be foundA complete log of this run can be found'),
(2, 'Footballe', 'A complete log of this run can veniam dolore consectetur lore be foundA complete log of this run can be found'),
(3, 'Cricket', 'A complete log of this run can be foundA complete log of this run can be found'),
(4, 'AVIATOR', 'veniam dolore consectetur loromplete log veniam dolore consectetur lore of this run can be found veniam dolore consectetur lore'),
(29, 'RACING', 'veniam dolore consectetur lore aliqua ad dolor minim adipiscing A complete log of this run can be foundA complete log of this run can be found'),
(30, 'Footballe', 'A complete log of this run can veniam dolore consectetur lore be foundA complete log of this run can be found'),
(31, 'Cricket', 'A complete log of this run can be foundA complete log of this run can be found'),
(32, 'AVIATOR', 'veniam dolore consectetur loromplete log veniam dolore consectetur lore of this run can be found veniam dolore consectetur lore');

-- --------------------------------------------------------

--
-- Table structure for table `components_block_starcards`
--

CREATE TABLE `components_block_starcards` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_block_starcards`
--

INSERT INTO `components_block_starcards` (`id`, `name`, `description`) VALUES
(1, 'Active Players', '10M+'),
(2, 'Games Available', '500+'),
(3, 'Customer Support', '24/7'),
(4, 'Uptime Guarantee', '99.9%'),
(21, 'Active Players', '10M+'),
(22, 'Games Available', '500+'),
(23, 'Customer Support', '24/7'),
(24, 'Uptime Guarantee', '99.9%');

-- --------------------------------------------------------

--
-- Table structure for table `components_block_tipdangers`
--

CREATE TABLE `components_block_tipdangers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_block_tipdangers`
--

INSERT INTO `components_block_tipdangers` (`id`, `name`, `description`) VALUES
(1, 'You acknowledge that you have read, understood new Terms.', 'By using IND NO1, you acknowledge that you have read, understood, and agree to be bound by these Terms and Conditions. These terms constitute a legally binding agreement between you and IND NO1. If you do not agree with these terms, you must immediately discontinue use of the Platform.\n\nWe reserve the right to update these Terms at any time. Material changes will be communicated through email or platform notification. Your continued use of the Platform after such changes constitutes acceptance of the new Terms.'),
(4, 'You acknowledge that you have read, understood new Terms.', 'By using IND NO1, you acknowledge that you have read, understood, and agree to be bound by these Terms and Conditions. These terms constitute a legally binding agreement between you and IND NO1. If you do not agree with these terms, you must immediately discontinue use of the Platform.\n\nWe reserve the right to update these Terms at any time. Material changes will be communicated through email or platform notification. Your continued use of the Platform after such changes constitutes acceptance of the new Terms.');

-- --------------------------------------------------------

--
-- Table structure for table `components_block_tipsuccesses`
--

CREATE TABLE `components_block_tipsuccesses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_block_tipsuccesses`
--

INSERT INTO `components_block_tipsuccesses` (`id`, `name`, `description`) VALUES
(1, 'Your continued use of the Platform after such chang', 'By using IND NO1, you acknowledge that you have read, understood, and agree to be bound by these Terms and Conditions. These terms constitute a legally binding agreement between you and IND NO1. If you do not agree with these terms, you must immediately discontinue use of the Platform.\n\nWe reserve the right to update these Terms at any time. Material changes will be communicated through email or platform notification. Your continued use of the Platform after such changes constitutes acceptance of the new Terms.'),
(4, 'Your continued use of the Platform after such chang', 'By using IND NO1, you acknowledge that you have read, understood, and agree to be bound by these Terms and Conditions. These terms constitute a legally binding agreement between you and IND NO1. If you do not agree with these terms, you must immediately discontinue use of the Platform.\n\nWe reserve the right to update these Terms at any time. Material changes will be communicated through email or platform notification. Your continued use of the Platform after such changes constitutes acceptance of the new Terms.'),
(5, 'Games That Get You Thinking (and Feeling)', 'While action games can get your heart racing, narrative-driven titles invite us to step into somebody else’s shoes—sometimes literally. Think of games like \"Life is Strange\" or \"Journey\", which weave stories that explore deep themes like friendship, identity, and hope. They prove that games can be powerful storytelling platforms, evoking emotions and sparking reflections just like any book or film.'),
(6, 'Games That Get You Thinking (and Feeling)', 'While action games can get your heart racing, narrative-driven titles invite us to step into somebody else’s shoes—sometimes literally. Think of games like \"Life is Strange\" or \"Journey\", which weave stories that explore deep themes like friendship, identity, and hope. They prove that games can be powerful storytelling platforms, evoking emotions and sparking reflections just like any book or film.'),
(7, 'Advanced Strategy', 'Watch for \"overreactions\" in live betting markets. When a wicket falls or a boundary is hit, odds often swing too far in one direction. If you believe the market has overreacted, there\'s value on the other side. This requires quick thinking and emotional discipline.'),
(10, 'Advanced Strategy', 'Watch for \"overreactions\" in live betting markets. When a wicket falls or a boundary is hit, odds often swing too far in one direction. If you believe the market has overreacted, there\'s value on the other side. This requires quick thinking and emotional discipline.');

-- --------------------------------------------------------

--
-- Table structure for table `components_block_tipwarns`
--

CREATE TABLE `components_block_tipwarns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_block_tipwarns`
--

INSERT INTO `components_block_tipwarns` (`id`, `name`, `description`) VALUES
(1, 'Important Notice', 'By using IND NO1, you acknowledge that you have read, understood, and agree to be bound by these Terms and Conditions. These terms constitute a legally binding agreement between you and IND NO1. If you do not agree with these terms, you must immediately discontinue use of the Platform.\n\nWe reserve the right to update these Terms at any time. Material changes will be communicated through email or platform notification. Your continued use of the Platform after such changes constitutes acceptance of the new Terms.'),
(4, 'Important Notice', 'By using IND NO1, you acknowledge that you have read, understood, and agree to be bound by these Terms and Conditions. These terms constitute a legally binding agreement between you and IND NO1. If you do not agree with these terms, you must immediately discontinue use of the Platform.\n\nWe reserve the right to update these Terms at any time. Material changes will be communicated through email or platform notification. Your continued use of the Platform after such changes constitutes acceptance of the new Terms.'),
(5, 'Key Insight', 'Successful cricket betting is 20% luck and 80% strategy. The bettors who consistently win are those who treat betting as a skill to be mastered, not just a game of chance. They research, analyze, and make calculated decisions based on data and trends.'),
(8, 'Key Insight', 'Successful cricket betting is 20% luck and 80% strategy. The bettors who consistently win are those who treat betting as a skill to be mastered, not just a game of chance. They research, analyze, and make calculated decisions based on data and trends.');

-- --------------------------------------------------------

--
-- Table structure for table `components_block_valuecards`
--

CREATE TABLE `components_block_valuecards` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_block_valuecards`
--

INSERT INTO `components_block_valuecards` (`id`, `name`, `description`) VALUES
(1, 'Fair Play', 'We ensure transparent and fair gaming for all our players with certified random number generators.'),
(2, 'Fair Play', 'We ensure transparent and fair gaming for all our players with certified random number generators.'),
(3, 'Fair Play', 'We ensure transparent and fair gaming for all our players with certified random number generators.'),
(4, 'Secure Platform', 'Your data and transactions are protected with bank-level encryption and security measures.'),
(5, 'Fast Payouts', 'Quick and hassle-free withdrawals with multiple payment options available 24/7.'),
(6, 'Best Odds', 'Competitive odds and exciting bonuses to maximize your winning potential.'),
(19, 'Fair Play', 'We ensure transparent and fair gaming for all our players with certified random number generators.'),
(20, 'Secure Platform', 'Your data and transactions are protected with bank-level encryption and security measures.'),
(21, 'Fast Payouts', 'Quick and hassle-free withdrawals with multiple payment options available 24/7.'),
(22, 'Best Odds', 'Competitive odds and exciting bonuses to maximize your winning potential.');

-- --------------------------------------------------------

--
-- Table structure for table `components_support_articals`
--

CREATE TABLE `components_support_articals` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_support_articals`
--

INSERT INTO `components_support_articals` (`id`, `title`, `description`) VALUES
(1, '1. Master the Art of Research', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]}]'),
(4, '1. Master the Art of Research', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]}]'),
(5, '1. Master the Art of Research', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]}]'),
(6, 'vcvcv', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"urnaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in\"}]}]'),
(13, 'vcvcv', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"urnaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in\"}]}]'),
(15, '1. Master the Art of Research', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]}]'),
(16, 'Level Up Your Game: Why Play Matters More Than Ever', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Hey there, fellow gamers and curious minds! Whether you’re a hardcore player grinding through epic quests or someone who just enjoys the occasional match, this week’s chat is all about the magic of games—and why they’re so much more than just a way to kill time. Ready to dive in? Let’s explore how games shape our lives, spark our creativity, and bring people together in ways you might not expect.\"}]}]'),
(17, 'Level Up Your Game: Why Play Matters More Than Ever', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Hey there, fellow gamers and curious minds! Whether you’re a hardcore player grinding through epic quests or someone who just enjoys the occasional match, this week’s chat is all about the magic of games—and why they’re so much more than just a way to kill time. Ready to dive in? Let’s explore how games shape our lives, spark our creativity, and bring people together in ways you might not expect.\"}]}]'),
(18, '4. Shop Around for the Best Odds', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Not all bookmakers are equal. Spend time comparing odds across platforms to maximise your potential returns. A slight difference might not seem like much per bet but can add up considerably over time.Not all bookmakers are equal. Spend time comparing odds across platforms to maximise your potential returns. A slight difference might not seem like much per bet but can add up considerably over time.Not all bookmakers are equal. Spend time comparing odds across platforms to maximise your potential returns. A slight difference might not seem like much per bet but can add up considerably over time.Not all bookmakers are equal. Spend time comparing odds across platforms to maximise your potential returns. A slight difference might not seem like much per bet but can add up considerably over time.Not all bookmakers are equal. Spend time comparing odds across platforms to maximise your potential returns. A slight difference might not seem like much per bet but can add up considerably over time.\"}]}]'),
(21, 'Bringing the Casino Floor to Your Screen', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"At the heart of the live casino revolution is video streaming technology. High-definition cameras now capture every detail of the dealer’s moves, every shuffle of the cards, spinning of the roulette wheel, and even subtle expressions across the table. The magic happens behind the scenes with ultra-fast data transmission, meaning delays are almost non-existent—players get real-time action that feels seamless and spontaneous.\"}]}]'),
(22, 'The Tech Behind the Curtain', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Artificial intelligence and machine learning are playing subtle but growing roles in live casinos. They help ensure fairness by monitoring dealer performance and detecting any irregular patterns. Meanwhile, computer vision technologies assist dealers by automating tedious tasks like card recognition and chip counting—streamlining gameplay and reducing human error. This blend of human skill and technological support keeps the game smooth and trustworthy.\"}]}]'),
(28, 'Bringing the Casino Floor to Your Screen', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"At the heart of the live casino revolution is video streaming technology. High-definition cameras now capture every detail of the dealer’s moves, every shuffle of the cards, spinning of the roulette wheel, and even subtle expressions across the table. The magic happens behind the scenes with ultra-fast data transmission, meaning delays are almost non-existent—players get real-time action that feels seamless and spontaneous.\"}]}]'),
(29, 'The Tech Behind the Curtain', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Artificial intelligence and machine learning are playing subtle but growing roles in live casinos. They help ensure fairness by monitoring dealer performance and detecting any irregular patterns. Meanwhile, computer vision technologies assist dealers by automating tedious tasks like card recognition and chip counting—streamlining gameplay and reducing human error. This blend of human skill and technological support keeps the game smooth and trustworthy.\"}]}]'),
(30, '4. Shop Around for the Best Odds', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Not all bookmakers are equal. Spend time comparing odds across platforms to maximise your potential returns. A slight difference might not seem like much per bet but can add up considerably over time.Not all bookmakers are equal. Spend time comparing odds across platforms to maximise your potential returns. A slight difference might not seem like much per bet but can add up considerably over time.Not all bookmakers are equal. Spend time comparing odds across platforms to maximise your potential returns. A slight difference might not seem like much per bet but can add up considerably over time.Not all bookmakers are equal. Spend time comparing odds across platforms to maximise your potential returns. A slight difference might not seem like much per bet but can add up considerably over time.Not all bookmakers are equal. Spend time comparing odds across platforms to maximise your potential returns. A slight difference might not seem like much per bet but can add up considerably over time.\"}]}]'),
(31, '1. Agreement to Terms', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"By accessing and using the IND NO1 platform, you accept and agree to be bound by the terms and provisions of this agreement.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"If you do not agree to these Terms and Conditions, you should not use this website or our services.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"We reserve the right to modify these terms at any time. Your continued use of the platform following any changes constitutes acceptance of those changes.\"}]}]'),
(32, '2. Eligibility and Account Registration', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"You must be at least 18 years old to create an account and use our services.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"You must provide accurate, current, and complete information during registration.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"You are responsible for maintaining the confidentiality of your account credentials.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"You agree to notify us immediately of any unauthorized use of your account.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"We reserve the right to suspend or terminate accounts that violate these terms.\"}]}]'),
(37, '1. Agreement to Terms', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"By accessing and using the IND NO1 platform, you accept and agree to be bound by the terms and provisions of this agreement.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"If you do not agree to these Terms and Conditions, you should not use this website or our services.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"We reserve the right to modify these terms at any time. Your continued use of the platform following any changes constitutes acceptance of those changes.\"}]}]'),
(38, '2. Eligibility and Account Registration', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"You must be at least 18 years old to create an account and use our services.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"You must provide accurate, current, and complete information during registration.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"You are responsible for maintaining the confidentiality of your account credentials.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"You agree to notify us immediately of any unauthorized use of your account.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"We reserve the right to suspend or terminate accounts that violate these terms.\"}]}]'),
(39, 'The Quick Fix', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Ah, the classic \\\"I\'m already here\\\" error. This happens because Git has already saved a remote URL under the name origin. You can\'t add a second one with the same name, but you can easily update it. Ah, the classic \\\"I\'m already here\\\" error. This happens because Git has already saved a remote URL under the name origin. You can\'t add a second one with the same name, but you can easily update it.Ah, the classic \\\"I\'m already here\\\" error. This happens because Git has already saved a remote URL under the name origin. You can\'t add a second one with the same name, but you can easily update it.Ah, the classic \\\"I\'m already here\\\" error. This happens because Git has already saved a remote URL under the name origin. You can\'t add a second one with the same name, but you can easily update it.\"}]}]'),
(40, 'The Quick Fix', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Ah, the classic \\\"I\'m already here\\\" error. This happens because Git has already saved a remote URL under the name origin. You can\'t add a second one with the same name, but you can easily update it. Ah, the classic \\\"I\'m already here\\\" error. This happens because Git has already saved a remote URL under the name origin. You can\'t add a second one with the same name, but you can easily update it.Ah, the classic \\\"I\'m already here\\\" error. This happens because Git has already saved a remote URL under the name origin. You can\'t add a second one with the same name, but you can easily update it.Ah, the classic \\\"I\'m already here\\\" error. This happens because Git has already saved a remote URL under the name origin. You can\'t add a second one with the same name, but you can easily update it.\"}]}]'),
(41, 'Gaming sponsors are companies', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Gaming sponsors are companies—ranging from hardware manufacturers and energy drink brands to game developers—that partner with streamers, content creators, and esports teams to reach specific, engaged audiences. These partnerships, which often include cash payments, free products, or affiliate deals, are secured through networking, maintaining a strong media kit, and aligning content with the sponsor’s brand. Common sponsors include brands like Red Bull, Monster Energy, and Razer. \"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Common Types of Gaming Sponsors\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Endemic Brands (Gaming-focused): Hardware manufacturers (Razer, Logitech), component makers (Intel, NVIDIA), and gaming peripheral companies.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Non-Endemic Brands: Energy drinks (Red Bull, Monster Energy), snacks, clothing brands, and financial services looking to reach a younger audience.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Game Developers/Publishers: Companies sponsoring creators to play their new releases or indie titles.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Esports Organizations: Teams that bring in sponsors to support player salaries and tournament entries. \"}]}]'),
(50, 'Gaming sponsors are companies', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Gaming sponsors are companies—ranging from hardware manufacturers and energy drink brands to game developers—that partner with streamers, content creators, and esports teams to reach specific, engaged audiences. These partnerships, which often include cash payments, free products, or affiliate deals, are secured through networking, maintaining a strong media kit, and aligning content with the sponsor’s brand. Common sponsors include brands like Red Bull, Monster Energy, and Razer. \"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Common Types of Gaming Sponsors\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Endemic Brands (Gaming-focused): Hardware manufacturers (Razer, Logitech), component makers (Intel, NVIDIA), and gaming peripheral companies.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Non-Endemic Brands: Energy drinks (Red Bull, Monster Energy), snacks, clothing brands, and financial services looking to reach a younger audience.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Game Developers/Publishers: Companies sponsoring creators to play their new releases or indie titles.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Esports Organizations: Teams that bring in sponsors to support player salaries and tournament entries. \"}]}]');

-- --------------------------------------------------------

--
-- Table structure for table `components_support_employecards`
--

CREATE TABLE `components_support_employecards` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_support_employecards`
--

INSERT INTO `components_support_employecards` (`id`, `name`, `designation`, `description`) VALUES
(1, 'Rajesh Kumar', 'CEO & Founder', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"CEO & Founder\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]}]'),
(2, 'Priya Sharma', 'Head of Operations', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Head of Operations\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]}]'),
(3, 'Yazeed Mohomaed', 'Technical Director', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Technical Director\"}]}]'),
(4, 'Sneha Reddy', 'Customer Relations', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Customer Relations\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]}]'),
(9, 'Chamika', 'Web Developer', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Web Developer\"}]}]'),
(10, 'Rajesh Kumar', 'CEO & Founder', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"CEO & Founder\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]}]'),
(11, 'Priya Sharma', 'Head of Operations', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Head of Operations\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]}]'),
(12, 'Yazeed Mohomaed', 'Technical Director', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Technical Director\"}]}]'),
(13, 'Sneha Reddy', 'Customer Relations', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Customer Relations\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]}]'),
(14, 'Chamika', 'Web Developer', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Web Developer\"}]}]');

-- --------------------------------------------------------

--
-- Table structure for table `components_support_faqs`
--

CREATE TABLE `components_support_faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_support_faqs`
--

INSERT INTO `components_support_faqs` (`id`, `name`, `description`) VALUES
(1, 'How do I create an account on IND NO1?', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Creating an account is simple! Click on the \\\"PLAY NOW\\\" button at the top of the page, fill in your details including name, email, phone number, and create a secure password. You\\\\\'ll need to verify your email address and phone number to complete the registration. The entire process takes less than 2 minutes.\"}]}]'),
(2, 'Can I have multiple accounts?', '[{\"type\":\"paragraph\",\"children\":[{\"text\":\"No, each user is allowed only one account. Creating multiple accounts is strictly prohibited and violates our Terms and Conditions. If we detect multiple accounts, all accounts will be suspended and any winnings will be forfeited. This policy helps maintain fair play for all users\\n\",\"type\":\"text\"}]}]'),
(7, 'How do I create an account on IND NO1?', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Creating an account is simple! Click on the \\\"PLAY NOW\\\" button at the top of the page, fill in your details including name, email, phone number, and create a secure password. You\\\\\'ll need to verify your email address and phone number to complete the registration. The entire process takes less than 2 minutes.\"}]}]'),
(8, 'Can I have multiple accounts?', '[{\"type\":\"paragraph\",\"children\":[{\"text\":\"No, each user is allowed only one account. Creating multiple accounts is strictly prohibited and violates our Terms and Conditions. If we detect multiple accounts, all accounts will be suspended and any winnings will be forfeited. This policy helps maintain fair play for all users\\n\",\"type\":\"text\"}]}]'),
(9, 'How do I create an account on IND NO1?', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Creating an account is simple! Click on the \\\"PLAY NOW\\\" button at the top of the page, fill in your details including name, email, phone number, and create a secure password. You\\\\\'ll need to verify your email address and phone number to complete the registration. The entire process takes less than 2 minutes.\"}]}]'),
(10, 'Can I have multiple accounts?', '[{\"type\":\"paragraph\",\"children\":[{\"text\":\"No, each user is allowed only one account. Creating multiple accounts is strictly prohibited and violates our Terms and Conditions. If we detect multiple accounts, all accounts will be suspended and any winnings will be forfeited. This policy helps maintain fair play for all users\\n\",\"type\":\"text\"}]}]'),
(11, 'Hover, focus, and other states', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Tailwind lets you conditionally apply utility classes in different states using variant modifiers. For example, use hover:text-balance to only apply the text-balance utility on hover.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]}]'),
(12, 'Breakpoints and media queries', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"You can also use variant modifiers to target media queries like responsive breakpoints, dark mode, prefers-reduced-motion, and more. For example, use md:text-balance to apply the text-balance utility at only medium screen sizes and above.\"}]}]'),
(27, 'Hover, focus, and other states', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Tailwind lets you conditionally apply utility classes in different states using variant modifiers. For example, use hover:text-balance to only apply the text-balance utility on hover.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]}]'),
(28, 'Breakpoints and media queries', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"You can also use variant modifiers to target media queries like responsive breakpoints, dark mode, prefers-reduced-motion, and more. For example, use md:text-balance to apply the text-balance utility at only medium screen sizes and above.\"}]}]'),
(31, 'How do I create an account on IND NO1?', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Creating an account is simple! Click on the \\\"PLAY NOW\\\" button at the top of the page, fill in your details including name, email, phone number, and create a secure password. You\\\\\'ll need to verify your email address and phone number to complete the registration. The entire process takes less than 2 minutes.\"}]}]'),
(32, 'Can I have multiple accounts?', '[{\"type\":\"paragraph\",\"children\":[{\"text\":\"No, each user is allowed only one account. Creating multiple accounts is strictly prohibited and violates our Terms and Conditions. If we detect multiple accounts, all accounts will be suspended and any winnings will be forfeited. This policy helps maintain fair play for all users\\n\",\"type\":\"text\"}]}]'),
(33, 'Games That Get You Thinking', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"While action games can get your heart racing, narrative-driven titles invite us to step into somebody else’s shoes—sometimes literally. Think of games like \\\"Life is Strange\\\" or \\\"Journey\\\", which weave stories that explore deep themes like friendship, identity, and hope. They prove that games can be powerful storytelling platforms, evoking emotions and sparking reflections just like any book or film.\"}]}]'),
(34, 'The Power of Play: Beyond Pixels and Controllers', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"At first glance, a game might just look like pixels on a screen or pieces on a board. But games are living, breathing worlds that challenge our minds, test our reflexes, and offer stories that stick with us long after we put down the controller. From sprawling open-world adventures to cosy puzzles on your phone, games encourage problem-solving, quick thinking, and sometimes even teamwork and leadership.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]}]'),
(35, 'Games That Get You Thinking', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"While action games can get your heart racing, narrative-driven titles invite us to step into somebody else’s shoes—sometimes literally. Think of games like \\\"Life is Strange\\\" or \\\"Journey\\\", which weave stories that explore deep themes like friendship, identity, and hope. They prove that games can be powerful storytelling platforms, evoking emotions and sparking reflections just like any book or film.\"}]}]'),
(36, 'The Power of Play: Beyond Pixels and Controllers', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"At first glance, a game might just look like pixels on a screen or pieces on a board. But games are living, breathing worlds that challenge our minds, test our reflexes, and offer stories that stick with us long after we put down the controller. From sprawling open-world adventures to cosy puzzles on your phone, games encourage problem-solving, quick thinking, and sometimes even teamwork and leadership.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]}]'),
(37, '1. Know the Game, Inside and Out', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"1. Know the Game, Inside and Out If you’ve ever found yourself glued to a cricket match, eagerly predicting how the next ball will turn the game, you’re not alone. Cricket betting mixes the thrill of the sport with a dash of strategy—and who doesn’t want to up their game and walk away with more wins? Whether you’re a seasoned punter or someone just dipping your toes into the world of cricket betting, these ten pro tips are designed to sharpen your approach and help you make smarter bets.\"}]}]'),
(39, '5. Play with the Power of Live Betting', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Live or in-play betting lets you react in real time as the match unfolds. If you’re quick and informed, it can create exciting opportunities—but always be cautious. The pace is fast, and emotions can overwhelm logic.\"}]}]'),
(44, 'Grammar checker', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"QuillBot\'s free online AI grammar checker tool is built to help professionals review text for grammar, spelling, and punctuation errors.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Whenever you need to review your writing—or grammar check emails, documents, reports, and more—QuillBot makes editing painless. QuillBot’s free online sentence corrector helps you avoid mistakes and perfect your writing, all while preserving your unique voice.\"}]}]'),
(45, 'Get a writing assistant wherever you go', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"QuillBot works across all of your favorite apps and websites, so you can write professionally on every platform.QuillBot works across all of your favorite apps and websites, so you can write professionally on every platform.QuillBot works across all of your favorite apps and websites, so you can write professionally on every platform.QuillBot works across all of your favorite apps and websites, so you can write professionally on every platform.\"}]}]'),
(46, 'Correct grammar', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Should you use “effect” or “affect” ? What’s the difference between “their,” “there,” and “they’re”? There’s so much to remember when it comes to proper grammar, no matter what language you speak. Luckily, QuillBot has your back with the best online grammar checker out there—and it’s free!Should you use “effect” or “affect” ? What’s the difference between “their,” “there,” and “they’re”? There’s so much to remember when it comes to proper grammar, no matter what language you speak. Luckily, QuillBot has your back with the best online grammar checker out there—and it’s free!\"}]}]'),
(55, 'Grammar checker', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"QuillBot\'s free online AI grammar checker tool is built to help professionals review text for grammar, spelling, and punctuation errors.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Whenever you need to review your writing—or grammar check emails, documents, reports, and more—QuillBot makes editing painless. QuillBot’s free online sentence corrector helps you avoid mistakes and perfect your writing, all while preserving your unique voice.\"}]}]'),
(56, 'Get a writing assistant wherever you go', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"QuillBot works across all of your favorite apps and websites, so you can write professionally on every platform.QuillBot works across all of your favorite apps and websites, so you can write professionally on every platform.QuillBot works across all of your favorite apps and websites, so you can write professionally on every platform.QuillBot works across all of your favorite apps and websites, so you can write professionally on every platform.\"}]}]'),
(57, 'Correct grammar', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Should you use “effect” or “affect” ? What’s the difference between “their,” “there,” and “they’re”? There’s so much to remember when it comes to proper grammar, no matter what language you speak. Luckily, QuillBot has your back with the best online grammar checker out there—and it’s free!Should you use “effect” or “affect” ? What’s the difference between “their,” “there,” and “they’re”? There’s so much to remember when it comes to proper grammar, no matter what language you speak. Luckily, QuillBot has your back with the best online grammar checker out there—and it’s free!\"}]}]'),
(58, '1. Know the Game, Inside and Out', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"1. Know the Game, Inside and Out If you’ve ever found yourself glued to a cricket match, eagerly predicting how the next ball will turn the game, you’re not alone. Cricket betting mixes the thrill of the sport with a dash of strategy—and who doesn’t want to up their game and walk away with more wins? Whether you’re a seasoned punter or someone just dipping your toes into the world of cricket betting, these ten pro tips are designed to sharpen your approach and help you make smarter bets.\"}]}]'),
(59, '5. Play with the Power of Live Betting', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Live or in-play betting lets you react in real time as the match unfolds. If you’re quick and informed, it can create exciting opportunities—but always be cautious. The pace is fast, and emotions can overwhelm logic.\"}]}]'),
(60, 'How do I create an account on IND NO1?', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Creating an account is simple! Click on the \\\"PLAY NOW\\\" button at the top of the page, fill in your details including name, email, phone number, and create a secure password. You\\\\\'ll need to verify your email address and phone number to complete the registration. The entire process takes less than 2 minutes.\"}]}]'),
(61, 'What documents do I need for KYC verification?', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"For KYC verification, you need to provide: (1) A government-issued photo ID (Aadhaar Card, PAN Card, Passport, or Driver\\\\\'s License), (2) Proof of address (utility bill, bank statement, or rental agreement not older than 3 months), and (3) A recent photograph. You can upload these documents directly through your account dashboard.\"}]}]'),
(66, 'What payment methods do you accept?', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"We accept a wide range of payment methods including UPI (Google Pay, PhonePe, Paytm), Net Banking, Credit/Debit Cards (Visa, Mastercard, Rupay), and digital wallets. All transactions are processed securely with bank-level encryption.\"}]}]'),
(67, 'What is the minimum deposit amount?', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"The minimum deposit amount is ₹100. There is no maximum limit for deposits, though individual payment methods may have their own transaction limits. You can make multiple deposits if needed.\"}]}]'),
(68, 'How do I create an account on IND NO1?', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Creating an account is simple! Click on the \\\"PLAY NOW\\\" button at the top of the page, fill in your details including name, email, phone number, and create a secure password. You\\\\\'ll need to verify your email address and phone number to complete the registration. The entire process takes less than 2 minutes.\"}]}]'),
(69, 'What documents do I need for KYC verification?', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"For KYC verification, you need to provide: (1) A government-issued photo ID (Aadhaar Card, PAN Card, Passport, or Driver\\\\\'s License), (2) Proof of address (utility bill, bank statement, or rental agreement not older than 3 months), and (3) A recent photograph. You can upload these documents directly through your account dashboard.\"}]}]'),
(70, 'What payment methods do you accept?', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"We accept a wide range of payment methods including UPI (Google Pay, PhonePe, Paytm), Net Banking, Credit/Debit Cards (Visa, Mastercard, Rupay), and digital wallets. All transactions are processed securely with bank-level encryption.\"}]}]'),
(71, 'What is the minimum deposit amount?', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"The minimum deposit amount is ₹100. There is no maximum limit for deposits, though individual payment methods may have their own transaction limits. You can make multiple deposits if needed.\"}]}]');

-- --------------------------------------------------------

--
-- Table structure for table `components_support_faqs_faqtype_lnk`
--

CREATE TABLE `components_support_faqs_faqtype_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `faq_id` int(10) UNSIGNED DEFAULT NULL,
  `faqtype_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_support_faqs_faqtype_lnk`
--

INSERT INTO `components_support_faqs_faqtype_lnk` (`id`, `faq_id`, `faqtype_id`) VALUES
(1, 60, 1),
(2, 61, 9),
(5, 66, 3),
(6, 67, 3),
(7, 68, 2),
(8, 69, 10),
(9, 70, 13),
(10, 71, 13);

-- --------------------------------------------------------

--
-- Table structure for table `components_support_image_lefts`
--

CREATE TABLE `components_support_image_lefts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_support_image_lefts`
--

INSERT INTO `components_support_image_lefts` (`id`, `name`, `description`) VALUES
(1, '2. Understand Value Betting', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]}]'),
(4, '2. Understand Value Betting', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]}]'),
(5, '3. Master the Art of Research', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]}]'),
(6, '2. Understand Value Betting', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]}]'),
(7, '3. Master the Art of Research', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]}]'),
(8, '5. Master Live Betting', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Live betting (in-play betting) offers unique opportunities because odds change rapidly based on match situations. If you\'re watching the game and can read momentum shifts, weather changes, or pitch behavior, you can find tremendous value.\"}]}]'),
(17, '5. Master Live Betting', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Live betting (in-play betting) offers unique opportunities because odds change rapidly based on match situations. If you\'re watching the game and can read momentum shifts, weather changes, or pitch behavior, you can find tremendous value.\"}]}]'),
(19, '2. Understand Value Betting', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]}]'),
(20, 'What’s Next?', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Looking ahead, virtual reality (VR) and augmented reality (AR) promise the next level of live casino immersion. Imagine slipping on VR goggles to find yourself not just watching but actually “walking” around a virtual casino floor, sitting side-by-side with avatars of other players or the dealer. That might sound futuristic, but it’s already in pilot phases in some parts of the industry, hinting at an exciting horizon.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"For now, live casinos stand as a brilliant example of how technology can enhance entertainment without losing the human connection that makes gaming so engaging. Whether you’re there for the strategy, the thrill, or just the social buzz, the tech transforming live casinos ensures that the experience keeps getting better, richer, and more fun.\"}]}]'),
(23, 'What’s Next?', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Looking ahead, virtual reality (VR) and augmented reality (AR) promise the next level of live casino immersion. Imagine slipping on VR goggles to find yourself not just watching but actually “walking” around a virtual casino floor, sitting side-by-side with avatars of other players or the dealer. That might sound futuristic, but it’s already in pilot phases in some parts of the industry, hinting at an exciting horizon.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"For now, live casinos stand as a brilliant example of how technology can enhance entertainment without losing the human connection that makes gaming so engaging. Whether you’re there for the strategy, the thrill, or just the social buzz, the tech transforming live casinos ensures that the experience keeps getting better, richer, and more fun.\"}]}]'),
(24, 'Common Troubleshooting', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"I see you are using an HTTPS link. If you have 2FA (Two-Factor Authentication) enabled on GitHub, Git might ask you for a Personal Access Token rather than your password. If you find yourself getting \\\"Permission Denied\\\" errors, we might need to switch you over to an SSH key or set up a credential manager.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Would you like me to show you how to verify your connection to GitHub once you\'ve updated the URL?\"}]}]'),
(26, 'Common Troubleshooting', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"I see you are using an HTTPS link. If you have 2FA (Two-Factor Authentication) enabled on GitHub, Git might ask you for a Personal Access Token rather than your password. If you find yourself getting \\\"Permission Denied\\\" errors, we might need to switch you over to an SSH key or set up a credential manager.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Would you like me to show you how to verify your connection to GitHub once you\'ve updated the URL?\"}]}]'),
(27, 'How to Find and Secure Sponsorships', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Build a Brand: Establish a consistent, engaging channel or team identity.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Create a Media Kit: Assemble a document detailing audience demographics, viewer statistics, and engagement rates.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Networking: Attend gaming events, conventions, and utilize platforms like inStreamly to connect with brands.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Targeted Outreach: Research companies that fit your niche, rather than sending generic proposals.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Leverage Affiliate Programs: Start with, or supplement with, affiliate links (e.g., in-game sign-ups) to build a partnership history. \"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]}]'),
(31, 'Indno1 Game Sponsors H', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Gaming sponsors are companies—ranging from hardware manufacturers and energy drink brands to game developers—that partner with streamers, content creators, and esports teams to reach specific, engaged audiences. These partnerships, which often include cash payments, free products, or affiliate deals, are secured through networking, maintaining a strong media kit, and aligning content with the sponsor’s brand. Common sponsors include brands like Red Bull, Monster Energy, and Razer.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Common Types of Gaming Sponsors\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Endemic Brands (Gaming-focused): Hardware manufacturers (Razer, Logitech), component makers (Intel, NVIDIA), and gaming peripheral companies.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Non-Endemic Brands: Energy drinks (Red Bull, Monster Energy), snacks, clothing brands, and financial services looking to reach a younger audience.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Game Developers/Publishers: Companies sponsoring creators to play their new releases or indie titles.\"}]}]'),
(34, 'Epic Games', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Fortnite provides developers with everything they need to build, publish, and monetize a game—all in one place. Every day, millions of players come to Fortnite to access an ever-growing library of games from indie devs and professional studios, spanning action, survival, social roleplay, horror, and beyond. Launching on Fortnite lets you tap into this massive built-in audience across PC, console, and mobile, and monetize in the Fortnite Developer Economy.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Powerful developer tools help unleash your creativity and get your game into players’ hands fast. Unreal Editor for Fortnite (UEFN) gives you access to many of Unreal Engine’s features, alongside tools and workflows unique to UEFN that enable you to quickly go from idea to launch.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Xsolla is a global commerce company with robust tools and services to help developers solve the inherent challenges of the video game industry. From indie to AAA, companies partner with Xsolla to help them fund, distribute, market, and monetize their games. Grounded in the belief in the future of video games, Xsolla is resolute in the mission to bring opportunities together, and continually make new resources available to creators. Headquartered and incorporated in Los Angeles, California, Xsolla operates as the merchant of record and has helped over 1,500+ game developers to reach more players and grow their businesses around the world. With more paths to profits and ways to win, developers have all the things needed to enjoy the game.\"}]}]'),
(47, 'Indno1 Game Sponsors H', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Gaming sponsors are companies—ranging from hardware manufacturers and energy drink brands to game developers—that partner with streamers, content creators, and esports teams to reach specific, engaged audiences. These partnerships, which often include cash payments, free products, or affiliate deals, are secured through networking, maintaining a strong media kit, and aligning content with the sponsor’s brand. Common sponsors include brands like Red Bull, Monster Energy, and Razer.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Common Types of Gaming Sponsors\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Endemic Brands (Gaming-focused): Hardware manufacturers (Razer, Logitech), component makers (Intel, NVIDIA), and gaming peripheral companies.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Non-Endemic Brands: Energy drinks (Red Bull, Monster Energy), snacks, clothing brands, and financial services looking to reach a younger audience.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Game Developers/Publishers: Companies sponsoring creators to play their new releases or indie titles.\"}]}]'),
(48, 'How to Find and Secure Sponsorships', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Build a Brand: Establish a consistent, engaging channel or team identity.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Create a Media Kit: Assemble a document detailing audience demographics, viewer statistics, and engagement rates.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Networking: Attend gaming events, conventions, and utilize platforms like inStreamly to connect with brands.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Targeted Outreach: Research companies that fit your niche, rather than sending generic proposals.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Leverage Affiliate Programs: Start with, or supplement with, affiliate links (e.g., in-game sign-ups) to build a partnership history. \"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]}]'),
(49, 'Epic Games', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Fortnite provides developers with everything they need to build, publish, and monetize a game—all in one place. Every day, millions of players come to Fortnite to access an ever-growing library of games from indie devs and professional studios, spanning action, survival, social roleplay, horror, and beyond. Launching on Fortnite lets you tap into this massive built-in audience across PC, console, and mobile, and monetize in the Fortnite Developer Economy.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Powerful developer tools help unleash your creativity and get your game into players’ hands fast. Unreal Editor for Fortnite (UEFN) gives you access to many of Unreal Engine’s features, alongside tools and workflows unique to UEFN that enable you to quickly go from idea to launch.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Xsolla is a global commerce company with robust tools and services to help developers solve the inherent challenges of the video game industry. From indie to AAA, companies partner with Xsolla to help them fund, distribute, market, and monetize their games. Grounded in the belief in the future of video games, Xsolla is resolute in the mission to bring opportunities together, and continually make new resources available to creators. Headquartered and incorporated in Los Angeles, California, Xsolla operates as the merchant of record and has helped over 1,500+ game developers to reach more players and grow their businesses around the world. With more paths to profits and ways to win, developers have all the things needed to enjoy the game.\"}]}]'),
(50, 'test from Indaia NO 01 Game Flatforn', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"test from Indaia NO 01 Game Flatforn  description\"}]}]'),
(51, 'test from Indaia NO 01 Game Flatforn', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"test from Indaia NO 01 Game Flatforn  description\"}]}]');

-- --------------------------------------------------------

--
-- Table structure for table `components_support_image_rights`
--

CREATE TABLE `components_support_image_rights` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_support_image_rights`
--

INSERT INTO `components_support_image_rights` (`id`, `name`, `description`) VALUES
(1, '3. Master the Art of Research', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]}]'),
(4, '4. Specialize in Specific Markets', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Don\'t try to be an expert in everything. The most successful bettors specialize in 1-2 specific markets or formats. You might focus on:\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"IPL betting exclusively\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Test match outcomes\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Player performance markets\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Live betting strategies\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"By specializing, you develop deeper knowledge and can spot opportunities that casual bettors miss.\"}]}]'),
(13, '4. Specialize in Specific Markets', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Don\'t try to be an expert in everything. The most successful bettors specialize in 1-2 specific markets or formats. You might focus on:\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"IPL betting exclusively\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Test match outcomes\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Player performance markets\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Live betting strategies\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"By specializing, you develop deeper knowledge and can spot opportunities that casual bettors miss.\"}]}]'),
(15, '3. Master the Art of Research', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]}]'),
(16, 'The Power of Play: Beyond Pixels and Controllers', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"At first glance, a game might just look like pixels on a screen or pieces on a board. But games are living, breathing worlds that challenge our minds, test our reflexes, and offer stories that stick with us long after we put down the controller. From sprawling open-world adventures to cosy puzzles on your phone, games encourage problem-solving, quick thinking, and sometimes even teamwork and leadership.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Remember that feeling when you finally beat a tough level after hours of trying? That’s not just satisfaction—it’s a real dopamine hit that teaches us perseverance. Games create safe spaces to fail and try again, a lesson that’s invaluable off-screen, too.\"}]}]'),
(17, 'The Power of Play: Beyond Pixels and Controllers', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"At first glance, a game might just look like pixels on a screen or pieces on a board. But games are living, breathing worlds that challenge our minds, test our reflexes, and offer stories that stick with us long after we put down the controller. From sprawling open-world adventures to cosy puzzles on your phone, games encourage problem-solving, quick thinking, and sometimes even teamwork and leadership.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Remember that feeling when you finally beat a tough level after hours of trying? That’s not just satisfaction—it’s a real dopamine hit that teaches us perseverance. Games create safe spaces to fail and try again, a lesson that’s invaluable off-screen, too.\"}]}]'),
(18, '2. Understand Value Betting', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]}]'),
(21, '2. Understand Value Betting', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Cricket betting has evolved into one of the most popular forms of online entertainment in India, especially during major tournaments like the IPL and World Cup. Whether you\'re a seasoned bettor or just starting your journey, understanding professional strategies can significantly improve your success rate and help you make more informed betting decisions.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"In this comprehensive guide, I\'ll share insider tips and proven strategies that professional bettors use to maintain consistent profitability. These aren\'t get-rich-quick schemes—they\'re disciplined approaches that, when applied correctly, can give you a real edge in cricket betting.\"}]}]'),
(22, 'Secure Sponsorships How to Find and', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Endemic Brands (Gaming-focused): Hardware manufacturers (Razer, Logitech), component makers (Intel, NVIDIA), and gaming peripheral companies.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Non-Endemic Brands: Energy drinks (Red Bull, Monster Energy), snacks, clothing brands, and financial services looking to reach a younger audience.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Game Developers/Publishers: Companies sponsoring creators to play their new releases or indie titles.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Esports Organizations: Teams that bring in sponsors to support player salaries and tournament entries.\\n\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Endemic Brands (Gaming-focused): Hardware manufacturers (Razer, Logitech), component makers (Intel, NVIDIA), and gaming peripheral companies. Non-Endemic Brands: Energy drinks (Red Bull, Monster Energy), snacks, clothing brands, and financial services looking to reach a younger audience. Game Developers/Publishers: Companies sponsoring creators to play their new releases or indie titles. Esports Organizations: Teams that bring in sponsors to support player salaries and tournament entries.\"}]}]'),
(28, 'Secure Sponsorships How to Find and', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Endemic Brands (Gaming-focused): Hardware manufacturers (Razer, Logitech), component makers (Intel, NVIDIA), and gaming peripheral companies.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Non-Endemic Brands: Energy drinks (Red Bull, Monster Energy), snacks, clothing brands, and financial services looking to reach a younger audience.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Game Developers/Publishers: Companies sponsoring creators to play their new releases or indie titles.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Esports Organizations: Teams that bring in sponsors to support player salaries and tournament entries.\\n\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Endemic Brands (Gaming-focused): Hardware manufacturers (Razer, Logitech), component makers (Intel, NVIDIA), and gaming peripheral companies. Non-Endemic Brands: Energy drinks (Red Bull, Monster Energy), snacks, clothing brands, and financial services looking to reach a younger audience. Game Developers/Publishers: Companies sponsoring creators to play their new releases or indie titles. Esports Organizations: Teams that bring in sponsors to support player salaries and tournament entries.\"}]}]');

-- --------------------------------------------------------

--
-- Table structure for table `components_support_suportcards`
--

CREATE TABLE `components_support_suportcards` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `seourl` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `document_id`, `title`, `description`, `seourl`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'lzv14ryg5frpxdo98ou855fv', 'How Can We Help You?', 'Find answers to frequently asked questions about IND NO1', 'how-can-we-help-you', '2026-02-05 05:02:01.417000', '2026-02-05 05:09:19.906000', NULL, 1, 1, NULL),
(4, 'lzv14ryg5frpxdo98ou855fv', 'How Can We Help You?', 'Find answers to frequently asked questions about IND NO1', 'how-can-we-help-you', '2026-02-05 05:02:01.417000', '2026-02-05 05:09:19.906000', '2026-02-05 05:09:20.006000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs_cmps`
--

CREATE TABLE `faqs_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs_cmps`
--

INSERT INTO `faqs_cmps` (`id`, `entity_id`, `cmp_id`, `component_type`, `field`, `order`) VALUES
(17, 1, 60, 'support.faq', 'faqbody', 1),
(18, 1, 61, 'support.faq', 'faqbody', 2),
(19, 1, 31, 'support.artical', 'faqbody', 3),
(20, 1, 32, 'support.artical', 'faqbody', 4),
(21, 1, 66, 'support.faq', 'faqbody', 5),
(22, 1, 67, 'support.faq', 'faqbody', 6),
(23, 4, 68, 'support.faq', 'faqbody', 1),
(24, 4, 69, 'support.faq', 'faqbody', 2),
(25, 4, 37, 'support.artical', 'faqbody', 3),
(26, 4, 38, 'support.artical', 'faqbody', 4),
(27, 4, 70, 'support.faq', 'faqbody', 5),
(28, 4, 71, 'support.faq', 'faqbody', 6);

-- --------------------------------------------------------

--
-- Table structure for table `faqtypes`
--

CREATE TABLE `faqtypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `seourl` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqtypes`
--

INSERT INTO `faqtypes` (`id`, `document_id`, `title`, `seourl`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'nrvl3lxyjgmsi20b5qmm414h', 'Account & Registration', 'account-and-registration', '2026-02-05 04:51:27.263000', '2026-02-05 04:51:27.263000', NULL, 1, 1, NULL),
(2, 'nrvl3lxyjgmsi20b5qmm414h', 'Account & Registration', 'account-and-registration', '2026-02-05 04:51:27.263000', '2026-02-05 04:51:27.263000', '2026-02-05 04:51:27.319000', 1, 1, NULL),
(3, 'k9d04jcs7uwov2m4lht95ezf', 'Deposits & Payments', 'deposits-and-payments', '2026-02-05 04:52:16.251000', '2026-02-05 04:54:26.415000', NULL, 1, 1, NULL),
(5, 'b56e6gfygnzw6fv89py1cq3t', 'Withdrawals', 'withdrawals', '2026-02-05 04:52:38.990000', '2026-02-05 04:52:38.990000', NULL, 1, 1, NULL),
(6, 'b56e6gfygnzw6fv89py1cq3t', 'Withdrawals', 'withdrawals', '2026-02-05 04:52:38.990000', '2026-02-05 04:52:38.990000', '2026-02-05 04:52:39.039000', 1, 1, NULL),
(7, 'qbtoan51z4lbh73oo9lzhr1j', 'Bonuses & Promotions', 'bonuses-and-promotions', '2026-02-05 04:53:11.599000', '2026-02-05 04:53:11.599000', NULL, 1, 1, NULL),
(8, 'qbtoan51z4lbh73oo9lzhr1j', 'Bonuses & Promotions', 'bonuses-and-promotions', '2026-02-05 04:53:11.599000', '2026-02-05 04:53:11.599000', '2026-02-05 04:53:11.647000', 1, 1, NULL),
(9, 'l20nujqrwpxzbtm8l16tgjrp', 'Betting & Games', 'betting-and-games', '2026-02-05 04:53:37.395000', '2026-02-05 04:53:37.395000', NULL, 1, 1, NULL),
(10, 'l20nujqrwpxzbtm8l16tgjrp', 'Betting & Games', 'betting-and-games', '2026-02-05 04:53:37.395000', '2026-02-05 04:53:37.395000', '2026-02-05 04:53:37.436000', 1, 1, NULL),
(11, 'xcmqv53wjag2g26b3vjvu4ep', 'Security & Privacy', 'security-and-privacy', '2026-02-05 04:53:59.641000', '2026-02-05 04:53:59.641000', NULL, 1, 1, NULL),
(12, 'xcmqv53wjag2g26b3vjvu4ep', 'Security & Privacy', 'security-and-privacy', '2026-02-05 04:53:59.641000', '2026-02-05 04:53:59.641000', '2026-02-05 04:53:59.688000', 1, 1, NULL),
(13, 'k9d04jcs7uwov2m4lht95ezf', 'Deposits & Payments', 'deposits-and-payments', '2026-02-05 04:52:16.251000', '2026-02-05 04:54:26.415000', '2026-02-05 04:54:26.468000', 1, 1, NULL),
(14, 'w9owwnkzygbg2rm7gy7z140j', 'Technical Support', 'technical-support', '2026-02-05 04:55:00.895000', '2026-02-05 04:55:00.895000', NULL, 1, 1, NULL),
(15, 'w9owwnkzygbg2rm7gy7z140j', 'Technical Support', 'technical-support', '2026-02-05 04:55:00.895000', '2026-02-05 04:55:00.895000', '2026-02-05 04:55:00.937000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` longtext DEFAULT NULL,
  `caption` longtext DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `preview_url` longtext DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `document_id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'fs6b8jnpnaa4spnseu6dy8o0', 'gift.png', NULL, NULL, 25, 25, NULL, 'gift_673b841c4d', '.png', 'image/png', 0.40, '/uploads/gift_673b841c4d.png', NULL, 'local', NULL, '/1', '2026-02-02 02:27:18.944000', '2026-02-02 02:27:18.944000', '2026-02-02 02:27:18.944000', 1, 1, NULL),
(2, 'px0xqgqsw46ob218ftt7vspl', 'wishlistactv.png', NULL, NULL, 28, 25, NULL, 'wishlistactv_69313009c9', '.png', 'image/png', 0.38, '/uploads/wishlistactv_69313009c9.png', NULL, 'local', NULL, '/1', '2026-02-02 02:27:18.949000', '2026-02-02 02:27:18.949000', '2026-02-02 02:27:18.949000', 1, 1, NULL),
(3, 'zs1vafjr4f30z6udups026rl', 'add-cart.png', NULL, NULL, 23, 22, NULL, 'add_cart_5ebe009b06', '.png', 'image/png', 0.34, '/uploads/add_cart_5ebe009b06.png', NULL, 'local', NULL, '/1', '2026-02-02 02:27:18.950000', '2026-02-02 02:27:18.950000', '2026-02-02 02:27:18.950000', 1, 1, NULL),
(4, 'lbs1z6z4bhljok3nyiexydz8', 'delete.png', NULL, NULL, 12, 14, NULL, 'delete_bb9a7063b1', '.png', 'image/png', 0.22, '/uploads/delete_bb9a7063b1.png', NULL, 'local', NULL, '/1', '2026-02-02 02:27:18.964000', '2026-02-02 02:27:18.964000', '2026-02-02 02:27:18.964000', 1, 1, NULL),
(5, 'ubxq1sc20yxo8mnh7n0ehi7r', 'hotline.png', NULL, NULL, 48, 49, NULL, 'hotline_e4d29b0524', '.png', 'image/png', 0.92, '/uploads/hotline_e4d29b0524.png', NULL, 'local', NULL, '/1', '2026-02-02 02:27:18.984000', '2026-02-02 02:27:18.984000', '2026-02-02 02:27:18.984000', 1, 1, NULL),
(6, 'imozztu84n6mi8tlodwb904u', 'wishlist.png', NULL, NULL, 28, 25, NULL, 'wishlist_8be16181af', '.png', 'image/png', 0.43, '/uploads/wishlist_8be16181af.png', NULL, 'local', NULL, '/1', '2026-02-02 02:27:18.988000', '2026-02-02 02:27:18.988000', '2026-02-02 02:27:18.988000', 1, 1, NULL),
(7, 'o73kfp28hbv1z8ykc92923r3', 'target-svgrepo-com.svg', NULL, NULL, 800, 800, NULL, 'target_svgrepo_com_a9ce7aeff4', '.svg', 'image/svg+xml', 4.21, '/uploads/target_svgrepo_com_a9ce7aeff4.svg', NULL, 'local', NULL, '/1', '2026-02-02 02:36:48.085000', '2026-02-02 02:36:48.085000', '2026-02-02 02:36:48.085000', 1, 1, NULL),
(8, 'duqljhqis0nu65e8kwi7c9fp', 'lock-svgrepo-com.svg', NULL, NULL, 800, 800, NULL, 'lock_svgrepo_com_9a02954d92', '.svg', 'image/svg+xml', 1.58, '/uploads/lock_svgrepo_com_9a02954d92.svg', NULL, 'local', NULL, '/1', '2026-02-02 02:38:58.396000', '2026-02-02 02:38:58.396000', '2026-02-02 02:38:58.396000', 1, 1, NULL),
(9, 'n0xh1xg7k8bnb9ipmid5p2t6', 'flash-thunder-svgrepo-com.svg', NULL, NULL, 800, 800, NULL, 'flash_thunder_svgrepo_com_aeaebc27c4', '.svg', 'image/svg+xml', 1.32, '/uploads/flash_thunder_svgrepo_com_aeaebc27c4.svg', NULL, 'local', NULL, '/1', '2026-02-02 02:40:58.698000', '2026-02-02 02:40:58.698000', '2026-02-02 02:40:58.699000', 1, 1, NULL),
(10, 'tz87pt00dfjjca53o1gdxglo', 'cup-cup-svgrepo-com.svg', NULL, NULL, 800, 800, NULL, 'cup_cup_svgrepo_com_b582d20ea0', '.svg', 'image/svg+xml', 7.51, '/uploads/cup_cup_svgrepo_com_b582d20ea0.svg', NULL, 'local', NULL, '/1', '2026-02-02 02:43:23.378000', '2026-02-02 02:43:23.378000', '2026-02-02 02:43:23.378000', 1, 1, NULL),
(11, 'p9qts8g6v6pbfzki92bqmz97', 'employee-worker-svgrepo-com.svg', NULL, NULL, 512, 512, NULL, 'employee_worker_svgrepo_com_570edbdc3d', '.svg', 'image/svg+xml', 8.75, '/uploads/employee_worker_svgrepo_com_570edbdc3d.svg', NULL, 'local', NULL, '/1', '2026-02-03 08:50:29.328000', '2026-02-03 08:50:29.328000', '2026-02-03 08:50:29.329000', 1, 1, NULL),
(12, 'z1euqu9s1ec171my2umcr2c1', 'worker-svgrepo-com.svg', NULL, NULL, 496, 496, NULL, 'worker_svgrepo_com_87d259062b', '.svg', 'image/svg+xml', 5.92, '/uploads/worker_svgrepo_com_87d259062b.svg', NULL, 'local', NULL, '/1', '2026-02-03 08:50:29.336000', '2026-02-03 08:50:29.336000', '2026-02-03 08:50:29.336000', 1, 1, NULL),
(13, 'xkwyzmqv7m8l9t0aljyzsrqp', 'employee-svgrepo-com.svg', NULL, NULL, 800, 800, NULL, 'employee_svgrepo_com_38fcbd92a9', '.svg', 'image/svg+xml', 2.69, '/uploads/employee_svgrepo_com_38fcbd92a9.svg', NULL, 'local', NULL, '/1', '2026-02-03 08:50:29.342000', '2026-02-05 04:53:05.508000', '2026-02-03 08:50:29.343000', 1, 1, NULL),
(14, 'vd63jkj6pt8bvry21y2auxfx', 'a-new-employee-female-who-makes-a-guts-pose-svgrepo-com.svg', NULL, NULL, 800, 800, NULL, 'a_new_employee_female_who_makes_a_guts_pose_svgrepo_com_7318350f87', '.svg', 'image/svg+xml', 28.08, '/uploads/a_new_employee_female_who_makes_a_guts_pose_svgrepo_com_7318350f87.svg', NULL, 'local', NULL, '/1', '2026-02-03 08:50:29.396000', '2026-02-03 08:52:06.717000', '2026-02-03 08:50:29.396000', 1, 1, NULL),
(15, 'y8jrqe4f24f1p7y3wybllz2s', 'new-employee-male-doing-a-guts-pose-svgrepo-com.svg', NULL, NULL, 800, 800, NULL, 'new_employee_male_doing_a_guts_pose_svgrepo_com_bab985f3d1', '.svg', 'image/svg+xml', 26.36, '/uploads/new_employee_male_doing_a_guts_pose_svgrepo_com_bab985f3d1.svg', NULL, 'local', NULL, '/1', '2026-02-03 08:50:29.434000', '2026-02-03 08:50:29.434000', '2026-02-03 08:50:29.434000', 1, 1, NULL),
(16, 'bzxlq2a8eyqeeyzgr940b3c9', 'ChatGPT Image Jan 27, 2026, 10_45_11 AM 1.png', NULL, NULL, 294, 159, '{\"thumbnail\":{\"name\":\"thumbnail_ChatGPT Image Jan 27, 2026, 10_45_11 AM 1.png\",\"hash\":\"thumbnail_Chat_GPT_Image_Jan_27_2026_10_45_11_AM_1_3292af9433\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":133,\"size\":85.17,\"sizeInBytes\":85174,\"url\":\"/uploads/thumbnail_Chat_GPT_Image_Jan_27_2026_10_45_11_AM_1_3292af9433.png\"}}', 'Chat_GPT_Image_Jan_27_2026_10_45_11_AM_1_3292af9433', '.png', 'image/png', 40.89, '/uploads/Chat_GPT_Image_Jan_27_2026_10_45_11_AM_1_3292af9433.png', NULL, 'local', NULL, '/2', '2026-02-03 12:08:53.476000', '2026-02-03 12:08:53.476000', '2026-02-03 12:08:53.477000', 1, 1, NULL),
(17, 'mlr33zfdmm4jkyoipgxjhmxu', 'Gemini_Generated_Image_dnd392dnd392dnd3 1.png', NULL, NULL, 296, 166, '{\"thumbnail\":{\"name\":\"thumbnail_Gemini_Generated_Image_dnd392dnd392dnd3 1.png\",\"hash\":\"thumbnail_Gemini_Generated_Image_dnd392dnd392dnd3_1_4813ec98b1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":137,\"size\":102.43,\"sizeInBytes\":102430,\"url\":\"/uploads/thumbnail_Gemini_Generated_Image_dnd392dnd392dnd3_1_4813ec98b1.png\"}}', 'Gemini_Generated_Image_dnd392dnd392dnd3_1_4813ec98b1', '.png', 'image/png', 37.99, '/uploads/Gemini_Generated_Image_dnd392dnd392dnd3_1_4813ec98b1.png', NULL, 'local', NULL, '/2', '2026-02-03 12:08:53.704000', '2026-02-03 12:08:53.704000', '2026-02-03 12:08:53.705000', 1, 1, NULL),
(18, 'abovfxsxgyt7thi7ut4jwg4p', 'Shade-Dragons-Fishing-7022000_s 1.png', NULL, NULL, 299, 160, '{\"thumbnail\":{\"name\":\"thumbnail_Shade-Dragons-Fishing-7022000_s 1.png\",\"hash\":\"thumbnail_Shade_Dragons_Fishing_7022000_s_1_53dc2c6e86\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":131,\"size\":97.93,\"sizeInBytes\":97931,\"url\":\"/uploads/thumbnail_Shade_Dragons_Fishing_7022000_s_1_53dc2c6e86.png\"}}', 'Shade_Dragons_Fishing_7022000_s_1_53dc2c6e86', '.png', 'image/png', 32.61, '/uploads/Shade_Dragons_Fishing_7022000_s_1_53dc2c6e86.png', NULL, 'local', NULL, '/2', '2026-02-03 12:08:53.796000', '2026-02-03 12:08:53.796000', '2026-02-03 12:08:53.797000', 1, 1, NULL),
(19, 'ul00h17w54xcwdjb8avpy0bo', 'WhatsApp Image 2026-01-21 at 13.14.00.jpeg', NULL, NULL, 1024, 1024, '{\"thumbnail\":{\"name\":\"thumbnail_WhatsApp Image 2026-01-21 at 13.14.00.jpeg\",\"hash\":\"thumbnail_Whats_App_Image_2026_01_21_at_13_14_00_7ec1ecf3e7\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":9.99,\"sizeInBytes\":9988,\"url\":\"/uploads/thumbnail_Whats_App_Image_2026_01_21_at_13_14_00_7ec1ecf3e7.jpeg\"},\"small\":{\"name\":\"small_WhatsApp Image 2026-01-21 at 13.14.00.jpeg\",\"hash\":\"small_Whats_App_Image_2026_01_21_at_13_14_00_7ec1ecf3e7\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":68.29,\"sizeInBytes\":68288,\"url\":\"/uploads/small_Whats_App_Image_2026_01_21_at_13_14_00_7ec1ecf3e7.jpeg\"},\"medium\":{\"name\":\"medium_WhatsApp Image 2026-01-21 at 13.14.00.jpeg\",\"hash\":\"medium_Whats_App_Image_2026_01_21_at_13_14_00_7ec1ecf3e7\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":124.63,\"sizeInBytes\":124633,\"url\":\"/uploads/medium_Whats_App_Image_2026_01_21_at_13_14_00_7ec1ecf3e7.jpeg\"},\"large\":{\"name\":\"large_WhatsApp Image 2026-01-21 at 13.14.00.jpeg\",\"hash\":\"large_Whats_App_Image_2026_01_21_at_13_14_00_7ec1ecf3e7\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":189.57,\"sizeInBytes\":189571,\"url\":\"/uploads/large_Whats_App_Image_2026_01_21_at_13_14_00_7ec1ecf3e7.jpeg\"}}', 'Whats_App_Image_2026_01_21_at_13_14_00_7ec1ecf3e7', '.jpeg', 'image/jpeg', 191.51, '/uploads/Whats_App_Image_2026_01_21_at_13_14_00_7ec1ecf3e7.jpeg', NULL, 'local', NULL, '/2', '2026-02-03 12:09:14.393000', '2026-02-04 07:43:35.105000', '2026-02-03 12:09:14.393000', 1, 1, NULL),
(31, 's1pl4osdkte0prb3gype2tea', 'A.png', NULL, NULL, 280, 100, '{\"thumbnail\":{\"name\":\"thumbnail_A.png\",\"hash\":\"thumbnail_A_67d5fb8ea5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":88,\"size\":7,\"sizeInBytes\":6995,\"url\":\"/uploads/thumbnail_A_67d5fb8ea5.png\"}}', 'A_67d5fb8ea5', '.png', 'image/png', 1.56, '/uploads/A_67d5fb8ea5.png', NULL, 'local', NULL, '/3', '2026-02-04 08:21:07.914000', '2026-02-04 08:21:07.914000', '2026-02-04 08:21:07.914000', 1, 1, NULL),
(32, 'b8gvhkaln7mkk0nks0sj3y06', 'c09.png', NULL, NULL, 280, 100, '{\"thumbnail\":{\"name\":\"thumbnail_c09.png\",\"hash\":\"thumbnail_c09_6a88f837cb\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":88,\"size\":17.3,\"sizeInBytes\":17303,\"url\":\"/uploads/thumbnail_c09_6a88f837cb.png\"}}', 'c09_6a88f837cb', '.png', 'image/png', 6.17, '/uploads/c09_6a88f837cb.png', NULL, 'local', NULL, '/3', '2026-02-04 08:21:07.976000', '2026-02-04 08:21:07.976000', '2026-02-04 08:21:07.976000', 1, 1, NULL),
(33, 'tno4kfqmma7eww4hgybqn4o9', 'H.png', NULL, NULL, 280, 100, '{\"thumbnail\":{\"name\":\"thumbnail_H.png\",\"hash\":\"thumbnail_H_d3c525cfe0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":88,\"size\":5.38,\"sizeInBytes\":5376,\"url\":\"/uploads/thumbnail_H_d3c525cfe0.png\"}}', 'H_d3c525cfe0', '.png', 'image/png', 1.41, '/uploads/H_d3c525cfe0.png', NULL, 'local', NULL, '/3', '2026-02-04 08:21:08.430000', '2026-02-04 08:24:44.831000', '2026-02-04 08:21:08.430000', 1, 1, NULL),
(34, 'ztwh9yw609ux5iawj5upnce7', 'game.png', NULL, NULL, 280, 100, '{\"thumbnail\":{\"name\":\"thumbnail_game.png\",\"hash\":\"thumbnail_game_0f9792c282\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":88,\"size\":6.1,\"sizeInBytes\":6104,\"url\":\"/uploads/thumbnail_game_0f9792c282.png\"}}', 'game_0f9792c282', '.png', 'image/png', 2.18, '/uploads/game_0f9792c282.png', NULL, 'local', NULL, '/3', '2026-02-04 08:21:08.439000', '2026-02-04 08:21:08.439000', '2026-02-04 08:21:08.440000', 1, 1, NULL),
(35, 'efyvd392s8s4a0z4u8ok62xs', 'jdb.png', NULL, NULL, 280, 100, '{\"thumbnail\":{\"name\":\"thumbnail_jdb.png\",\"hash\":\"thumbnail_jdb_adb02aa0be\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":88,\"size\":11.54,\"sizeInBytes\":11538,\"url\":\"/uploads/thumbnail_jdb_adb02aa0be.png\"}}', 'jdb_adb02aa0be', '.png', 'image/png', 4.11, '/uploads/jdb_adb02aa0be.png', NULL, 'local', NULL, '/3', '2026-02-04 08:21:08.555000', '2026-02-04 08:21:08.555000', '2026-02-04 08:21:08.555000', 1, 1, NULL),
(36, 'evueut3ezqzwnp6coyr4965d', 'jili.png', NULL, NULL, 280, 100, '{\"thumbnail\":{\"name\":\"thumbnail_jili.png\",\"hash\":\"thumbnail_jili_bee826d603\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":88,\"size\":27.6,\"sizeInBytes\":27599,\"url\":\"/uploads/thumbnail_jili_bee826d603.png\"}}', 'jili_bee826d603', '.png', 'image/png', 8.35, '/uploads/jili_bee826d603.png', NULL, 'local', NULL, '/3', '2026-02-04 08:21:08.678000', '2026-02-04 08:21:08.678000', '2026-02-04 08:21:08.678000', 1, 1, NULL),
(37, 'f2iiyal05oayh9reg25xddc6', 'm.png', NULL, NULL, 280, 100, '{\"thumbnail\":{\"name\":\"thumbnail_m.png\",\"hash\":\"thumbnail_m_dd245e4e16\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":88,\"size\":10.26,\"sizeInBytes\":10255,\"url\":\"/uploads/thumbnail_m_dd245e4e16.png\"}}', 'm_dd245e4e16', '.png', 'image/png', 2.04, '/uploads/m_dd245e4e16.png', NULL, 'local', NULL, '/3', '2026-02-04 08:21:08.767000', '2026-02-04 08:21:08.767000', '2026-02-04 08:21:08.767000', 1, 1, NULL),
(38, 'n4dqewihs2y76rfv6ivbanj1', 'pg.png', NULL, NULL, 280, 100, '{\"thumbnail\":{\"name\":\"thumbnail_pg.png\",\"hash\":\"thumbnail_pg_7f7427305a\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":88,\"size\":12.58,\"sizeInBytes\":12582,\"url\":\"/uploads/thumbnail_pg_7f7427305a.png\"}}', 'pg_7f7427305a', '.png', 'image/png', 5.90, '/uploads/pg_7f7427305a.png', NULL, 'local', NULL, '/3', '2026-02-04 08:21:08.881000', '2026-02-04 08:21:08.881000', '2026-02-04 08:21:08.881000', 1, 1, NULL),
(39, 'v7jq39ofvdmoheh91odqz4g5', 'play.png', NULL, NULL, 280, 100, '{\"thumbnail\":{\"name\":\"thumbnail_play.png\",\"hash\":\"thumbnail_play_4a0fbdd209\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":88,\"size\":5.39,\"sizeInBytes\":5390,\"url\":\"/uploads/thumbnail_play_4a0fbdd209.png\"}}', 'play_4a0fbdd209', '.png', 'image/png', 1.62, '/uploads/play_4a0fbdd209.png', NULL, 'local', NULL, '/3', '2026-02-04 08:21:09.051000', '2026-02-04 08:21:09.051000', '2026-02-04 08:21:09.051000', 1, 1, NULL),
(40, 'jxosf00g3bnv5wdr5699lr2n', 'spribe.png', NULL, NULL, 280, 100, '{\"thumbnail\":{\"name\":\"thumbnail_spribe.png\",\"hash\":\"thumbnail_spribe_ca0ea65500\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":88,\"size\":10.8,\"sizeInBytes\":10803,\"url\":\"/uploads/thumbnail_spribe_ca0ea65500.png\"}}', 'spribe_ca0ea65500', '.png', 'image/png', 2.24, '/uploads/spribe_ca0ea65500.png', NULL, 'local', NULL, '/3', '2026-02-04 08:21:09.069000', '2026-02-04 08:21:09.069000', '2026-02-04 08:21:09.069000', 1, 1, NULL),
(41, 'kecaob3b2ls9qkbetgyvgcnj', 'start.png', NULL, NULL, 280, 100, '{\"thumbnail\":{\"name\":\"thumbnail_start.png\",\"hash\":\"thumbnail_start_85740cbbfb\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":88,\"size\":7.37,\"sizeInBytes\":7367,\"url\":\"/uploads/thumbnail_start_85740cbbfb.png\"}}', 'start_85740cbbfb', '.png', 'image/png', 2.41, '/uploads/start_85740cbbfb.png', NULL, 'local', NULL, '/3', '2026-02-04 08:21:09.331000', '2026-02-04 08:21:09.331000', '2026-02-04 08:21:09.331000', 1, 1, NULL),
(42, 'fvxajbkw08hqtvgjm1i77pll', '35_en.png', NULL, NULL, 200, 200, '{\"thumbnail\":{\"name\":\"thumbnail_35_en.png\",\"hash\":\"thumbnail_35_en_b6270867f8\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":59.96,\"sizeInBytes\":59962,\"url\":\"/uploads/thumbnail_35_en_b6270867f8.png\"}}', '35_en_b6270867f8', '.png', 'image/png', 24.90, '/uploads/35_en_b6270867f8.png', NULL, 'local', NULL, '/4', '2026-02-04 08:22:31.987000', '2026-02-04 08:22:31.987000', '2026-02-04 08:22:31.987000', 1, 1, NULL),
(43, 'zk7pcb5ieac0ilyxl10q548c', '32.png', NULL, NULL, 200, 200, '{\"thumbnail\":{\"name\":\"thumbnail_32.png\",\"hash\":\"thumbnail_32_d1ffd3e46c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":67.84,\"sizeInBytes\":67837,\"url\":\"/uploads/thumbnail_32_d1ffd3e46c.png\"}}', '32_d1ffd3e46c', '.png', 'image/png', 25.14, '/uploads/32_d1ffd3e46c.png', NULL, 'local', NULL, '/4', '2026-02-04 08:22:32.091000', '2026-02-06 09:32:31.561000', '2026-02-04 08:22:32.091000', 1, 1, NULL),
(44, 'r3629f8le14hjn0c3c6inblo', '75.png', NULL, NULL, 200, 200, '{\"thumbnail\":{\"name\":\"thumbnail_75.png\",\"hash\":\"thumbnail_75_2a8e0a1656\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":64.19,\"sizeInBytes\":64190,\"url\":\"/uploads/thumbnail_75_2a8e0a1656.png\"}}', '75_2a8e0a1656', '.png', 'image/png', 30.26, '/uploads/75_2a8e0a1656.png', NULL, 'local', NULL, '/4', '2026-02-04 08:22:32.137000', '2026-02-04 08:22:32.137000', '2026-02-04 08:22:32.137000', 1, 1, NULL),
(45, 'jkftdq6q7izlm7602pb9yzqc', '71.png', NULL, NULL, 200, 200, '{\"thumbnail\":{\"name\":\"thumbnail_71.png\",\"hash\":\"thumbnail_71_25b155e294\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":66.23,\"sizeInBytes\":66228,\"url\":\"/uploads/thumbnail_71_25b155e294.png\"}}', '71_25b155e294', '.png', 'image/png', 27.17, '/uploads/71_25b155e294.png', NULL, 'local', NULL, '/4', '2026-02-04 08:22:32.403000', '2026-02-04 08:22:32.403000', '2026-02-04 08:22:32.404000', 1, 1, NULL),
(46, 'wx50f1tdc8gg53wug9x45tz0', '42.png', NULL, NULL, 200, 200, '{\"thumbnail\":{\"name\":\"thumbnail_42.png\",\"hash\":\"thumbnail_42_ab4e3700e5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":64.42,\"sizeInBytes\":64421,\"url\":\"/uploads/thumbnail_42_ab4e3700e5.png\"}}', '42_ab4e3700e5', '.png', 'image/png', 27.25, '/uploads/42_ab4e3700e5.png', NULL, 'local', NULL, '/4', '2026-02-04 08:22:32.479000', '2026-02-04 08:22:32.479000', '2026-02-04 08:22:32.479000', 1, 1, NULL),
(47, 'gjljzpxjr9d1zmyybpg7p9mr', '48_en.png', NULL, NULL, 200, 200, '{\"thumbnail\":{\"name\":\"thumbnail_48_en.png\",\"hash\":\"thumbnail_48_en_9c8c61df37\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":68.03,\"sizeInBytes\":68030,\"url\":\"/uploads/thumbnail_48_en_9c8c61df37.png\"}}', '48_en_9c8c61df37', '.png', 'image/png', 27.03, '/uploads/48_en_9c8c61df37.png', NULL, 'local', NULL, '/4', '2026-02-04 08:22:32.551000', '2026-02-04 08:22:32.551000', '2026-02-04 08:22:32.552000', 1, 1, NULL),
(48, 'ick8r8ysl9sf7lv5n10e77xp', '100.png', NULL, NULL, 200, 200, '{\"thumbnail\":{\"name\":\"thumbnail_100.png\",\"hash\":\"thumbnail_100_ac6edcbe35\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":64.45,\"sizeInBytes\":64448,\"url\":\"/uploads/thumbnail_100_ac6edcbe35.png\"}}', '100_ac6edcbe35', '.png', 'image/png', 25.98, '/uploads/100_ac6edcbe35.png', NULL, 'local', NULL, '/4', '2026-02-04 08:22:33.030000', '2026-02-04 08:22:33.030000', '2026-02-04 08:22:33.031000', 1, 1, NULL),
(49, 'wukq9z9q7llvjw7qr8esuflh', '82.png', NULL, NULL, 200, 200, '{\"thumbnail\":{\"name\":\"thumbnail_82.png\",\"hash\":\"thumbnail_82_5f2716f931\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":63.94,\"sizeInBytes\":63941,\"url\":\"/uploads/thumbnail_82_5f2716f931.png\"}}', '82_5f2716f931', '.png', 'image/png', 21.68, '/uploads/82_5f2716f931.png', NULL, 'local', NULL, '/4', '2026-02-04 08:22:33.301000', '2026-02-04 08:22:33.301000', '2026-02-04 08:22:33.302000', 1, 1, NULL),
(50, 'm5rw90rtha61rcpczslwrtml', '92_en.png', NULL, NULL, 200, 200, '{\"thumbnail\":{\"name\":\"thumbnail_92_en.png\",\"hash\":\"thumbnail_92_en_0f47afa9a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":64.16,\"sizeInBytes\":64156,\"url\":\"/uploads/thumbnail_92_en_0f47afa9a1.png\"}}', '92_en_0f47afa9a1', '.png', 'image/png', 26.51, '/uploads/92_en_0f47afa9a1.png', NULL, 'local', NULL, '/4', '2026-02-04 08:22:33.306000', '2026-02-04 08:22:33.306000', '2026-02-04 08:22:33.306000', 1, 1, NULL),
(51, 'm9vmmvsdvdbayx07alk4kyyk', '106.png', NULL, NULL, 200, 200, '{\"thumbnail\":{\"name\":\"thumbnail_106.png\",\"hash\":\"thumbnail_106_b838381597\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":61.18,\"sizeInBytes\":61182,\"url\":\"/uploads/thumbnail_106_b838381597.png\"}}', '106_b838381597', '.png', 'image/png', 30.15, '/uploads/106_b838381597.png', NULL, 'local', NULL, '/4', '2026-02-04 08:22:33.369000', '2026-02-04 08:22:33.369000', '2026-02-04 08:22:33.370000', 1, 1, NULL),
(52, 'yekuz4pibigyfifhb31o9s3c', '110.png', NULL, NULL, 200, 200, '{\"thumbnail\":{\"name\":\"thumbnail_110.png\",\"hash\":\"thumbnail_110_f3d6567395\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":61.97,\"sizeInBytes\":61971,\"url\":\"/uploads/thumbnail_110_f3d6567395.png\"}}', '110_f3d6567395', '.png', 'image/png', 30.20, '/uploads/110_f3d6567395.png', NULL, 'local', NULL, '/4', '2026-02-04 08:22:33.443000', '2026-02-04 08:22:33.443000', '2026-02-04 08:22:33.443000', 1, 1, NULL),
(53, 'l9xzovo2nd148hamwoy715l5', 'hot-shot-casino-pc-full-version.jpg', NULL, NULL, 1200, 600, '{\"thumbnail\":{\"name\":\"thumbnail_hot-shot-casino-pc-full-version.jpg\",\"hash\":\"thumbnail_hot_shot_casino_pc_full_version_b380709550\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":123,\"size\":13.05,\"sizeInBytes\":13045,\"url\":\"/uploads/thumbnail_hot_shot_casino_pc_full_version_b380709550.jpg\"},\"large\":{\"name\":\"large_hot-shot-casino-pc-full-version.jpg\",\"hash\":\"large_hot_shot_casino_pc_full_version_b380709550\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":500,\"size\":114.47,\"sizeInBytes\":114474,\"url\":\"/uploads/large_hot_shot_casino_pc_full_version_b380709550.jpg\"},\"medium\":{\"name\":\"medium_hot-shot-casino-pc-full-version.jpg\",\"hash\":\"medium_hot_shot_casino_pc_full_version_b380709550\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":375,\"size\":75.62,\"sizeInBytes\":75618,\"url\":\"/uploads/medium_hot_shot_casino_pc_full_version_b380709550.jpg\"},\"small\":{\"name\":\"small_hot-shot-casino-pc-full-version.jpg\",\"hash\":\"small_hot_shot_casino_pc_full_version_b380709550\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":250,\"size\":41.26,\"sizeInBytes\":41262,\"url\":\"/uploads/small_hot_shot_casino_pc_full_version_b380709550.jpg\"}}', 'hot_shot_casino_pc_full_version_b380709550', '.jpg', 'image/jpeg', 139.11, '/uploads/hot_shot_casino_pc_full_version_b380709550.jpg', NULL, 'local', NULL, '/5', '2026-02-04 11:00:10.116000', '2026-02-06 10:42:15.944000', '2026-02-04 11:00:10.117000', 1, 1, NULL),
(54, 'f1ultu9t4tdmoxvbchdx7302', 'mainBanner.png', NULL, NULL, 1500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_mainBanner.png\",\"hash\":\"thumbnail_main_Banner_539ca33ace\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":82,\"size\":55.06,\"sizeInBytes\":55062,\"url\":\"/uploads/thumbnail_main_Banner_539ca33ace.png\"},\"small\":{\"name\":\"small_mainBanner.png\",\"hash\":\"small_main_Banner_539ca33ace\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":167,\"size\":211.09,\"sizeInBytes\":211086,\"url\":\"/uploads/small_main_Banner_539ca33ace.png\"},\"medium\":{\"name\":\"medium_mainBanner.png\",\"hash\":\"medium_main_Banner_539ca33ace\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":250,\"size\":456.73,\"sizeInBytes\":456726,\"url\":\"/uploads/medium_main_Banner_539ca33ace.png\"},\"large\":{\"name\":\"large_mainBanner.png\",\"hash\":\"large_main_Banner_539ca33ace\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":333,\"size\":786.44,\"sizeInBytes\":786442,\"url\":\"/uploads/large_main_Banner_539ca33ace.png\"}}', 'main_Banner_539ca33ace', '.png', 'image/png', 415.60, '/uploads/main_Banner_539ca33ace.png', NULL, 'local', NULL, '/2', '2026-02-04 11:36:21.904000', '2026-02-04 11:36:21.904000', '2026-02-04 11:36:21.905000', 1, 1, NULL),
(57, 'n229z3ac46xx7tdhqfebk0hq', 'slider2.png', NULL, NULL, 1114, 334, '{\"thumbnail\":{\"name\":\"thumbnail_slider2.png\",\"hash\":\"thumbnail_slider2_79ab49cb1b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":73,\"size\":51.45,\"sizeInBytes\":51451,\"url\":\"/uploads/thumbnail_slider2_79ab49cb1b.png\"},\"small\":{\"name\":\"small_slider2.png\",\"hash\":\"small_slider2_79ab49cb1b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":150,\"size\":196.63,\"sizeInBytes\":196631,\"url\":\"/uploads/small_slider2_79ab49cb1b.png\"},\"medium\":{\"name\":\"medium_slider2.png\",\"hash\":\"medium_slider2_79ab49cb1b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":225,\"size\":424.4,\"sizeInBytes\":424395,\"url\":\"/uploads/medium_slider2_79ab49cb1b.png\"},\"large\":{\"name\":\"large_slider2.png\",\"hash\":\"large_slider2_79ab49cb1b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":300,\"size\":721.12,\"sizeInBytes\":721121,\"url\":\"/uploads/large_slider2_79ab49cb1b.png\"}}', 'slider2_79ab49cb1b', '.png', 'image/png', 191.56, '/uploads/slider2_79ab49cb1b.png', NULL, 'local', NULL, '/5', '2026-02-04 16:54:04.741000', '2026-02-04 16:54:04.741000', '2026-02-04 16:54:04.741000', 1, 1, NULL),
(58, 'w932y50z8b4cwgswppsg9xz4', 'slider2.png', NULL, NULL, 1114, 334, '{\"thumbnail\":{\"name\":\"thumbnail_slider2.png\",\"hash\":\"thumbnail_slider2_dfaec80caf\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":73,\"size\":51.45,\"sizeInBytes\":51451,\"url\":\"/uploads/thumbnail_slider2_dfaec80caf.png\"},\"small\":{\"name\":\"small_slider2.png\",\"hash\":\"small_slider2_dfaec80caf\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":150,\"size\":196.63,\"sizeInBytes\":196631,\"url\":\"/uploads/small_slider2_dfaec80caf.png\"},\"medium\":{\"name\":\"medium_slider2.png\",\"hash\":\"medium_slider2_dfaec80caf\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":225,\"size\":424.4,\"sizeInBytes\":424395,\"url\":\"/uploads/medium_slider2_dfaec80caf.png\"},\"large\":{\"name\":\"large_slider2.png\",\"hash\":\"large_slider2_dfaec80caf\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":300,\"size\":721.12,\"sizeInBytes\":721121,\"url\":\"/uploads/large_slider2_dfaec80caf.png\"}}', 'slider2_dfaec80caf', '.png', 'image/png', 191.56, '/uploads/slider2_dfaec80caf.png', NULL, 'local', NULL, '/5', '2026-02-04 21:56:53.141000', '2026-02-04 21:56:53.141000', '2026-02-04 21:56:53.141000', 1, 1, NULL),
(60, 'coti7vqc5vp59kmz7qc7zinx', 'T20_B.jpg', NULL, NULL, 1110, 330, '{\"thumbnail\":{\"name\":\"thumbnail_T20_B.jpg\",\"hash\":\"thumbnail_T20_B_9222f65209\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":73,\"size\":6.39,\"sizeInBytes\":6387,\"url\":\"/uploads/thumbnail_T20_B_9222f65209.jpg\"},\"medium\":{\"name\":\"medium_T20_B.jpg\",\"hash\":\"medium_T20_B_9222f65209\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":223,\"size\":42.94,\"sizeInBytes\":42943,\"url\":\"/uploads/medium_T20_B_9222f65209.jpg\"},\"small\":{\"name\":\"small_T20_B.jpg\",\"hash\":\"small_T20_B_9222f65209\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":149,\"size\":21.53,\"sizeInBytes\":21533,\"url\":\"/uploads/small_T20_B_9222f65209.jpg\"},\"large\":{\"name\":\"large_T20_B.jpg\",\"hash\":\"large_T20_B_9222f65209\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":297,\"size\":70.13,\"sizeInBytes\":70130,\"url\":\"/uploads/large_T20_B_9222f65209.jpg\"}}', 'T20_B_9222f65209', '.jpg', 'image/jpeg', 84.83, '/uploads/T20_B_9222f65209.jpg', NULL, 'local', NULL, '/5', '2026-02-05 14:49:38.314000', '2026-02-05 14:49:38.314000', '2026-02-05 14:49:38.314000', 1, 1, NULL),
(61, 'jvec95w7imcbsqo0p3bthqqe', 'T20_A.jpg', NULL, NULL, 1110, 330, '{\"thumbnail\":{\"name\":\"thumbnail_T20_A.jpg\",\"hash\":\"thumbnail_T20_A_cf22853603\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":73,\"size\":6.46,\"sizeInBytes\":6455,\"url\":\"/uploads/thumbnail_T20_A_cf22853603.jpg\"},\"large\":{\"name\":\"large_T20_A.jpg\",\"hash\":\"large_T20_A_cf22853603\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":297,\"size\":55.03,\"sizeInBytes\":55027,\"url\":\"/uploads/large_T20_A_cf22853603.jpg\"},\"medium\":{\"name\":\"medium_T20_A.jpg\",\"hash\":\"medium_T20_A_cf22853603\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":223,\"size\":35.33,\"sizeInBytes\":35328,\"url\":\"/uploads/medium_T20_A_cf22853603.jpg\"},\"small\":{\"name\":\"small_T20_A.jpg\",\"hash\":\"small_T20_A_cf22853603\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":149,\"size\":19.27,\"sizeInBytes\":19274,\"url\":\"/uploads/small_T20_A_cf22853603.jpg\"}}', 'T20_A_cf22853603', '.jpg', 'image/jpeg', 64.65, '/uploads/T20_A_cf22853603.jpg', NULL, 'local', NULL, '/5', '2026-02-05 14:49:38.343000', '2026-02-05 14:49:38.343000', '2026-02-05 14:49:38.343000', 1, 1, NULL),
(62, 'b1vto94wrm6w8fyci700bugo', '01jpg.jpg', NULL, NULL, 1024, 465, '{\"thumbnail\":{\"name\":\"thumbnail_01jpg.jpg\",\"hash\":\"thumbnail_01jpg_3ef72a08b1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":111,\"size\":6.39,\"sizeInBytes\":6390,\"url\":\"/uploads/thumbnail_01jpg_3ef72a08b1.jpg\"},\"medium\":{\"name\":\"medium_01jpg.jpg\",\"hash\":\"medium_01jpg_3ef72a08b1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":341,\"size\":33.78,\"sizeInBytes\":33775,\"url\":\"/uploads/medium_01jpg_3ef72a08b1.jpg\"},\"large\":{\"name\":\"large_01jpg.jpg\",\"hash\":\"large_01jpg_3ef72a08b1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":454,\"size\":52.06,\"sizeInBytes\":52055,\"url\":\"/uploads/large_01jpg_3ef72a08b1.jpg\"},\"small\":{\"name\":\"small_01jpg.jpg\",\"hash\":\"small_01jpg_3ef72a08b1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":227,\"size\":18.48,\"sizeInBytes\":18483,\"url\":\"/uploads/small_01jpg_3ef72a08b1.jpg\"}}', '01jpg_3ef72a08b1', '.jpg', 'image/jpeg', 54.59, '/uploads/01jpg_3ef72a08b1.jpg', NULL, 'local', NULL, '/5', '2026-02-07 10:23:41.659000', '2026-02-07 10:23:41.659000', '2026-02-07 10:23:41.659000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_lnk`
--

CREATE TABLE `files_folder_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_folder_lnk`
--

INSERT INTO `files_folder_lnk` (`id`, `file_id`, `folder_id`, `file_ord`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 4, 1, 2),
(5, 5, 1, 3),
(6, 6, 1, 3),
(7, 7, 1, 4),
(8, 8, 1, 5),
(9, 9, 1, 6),
(10, 10, 1, 7),
(11, 11, 1, 8),
(12, 12, 1, 8),
(13, 13, 1, 8),
(14, 14, 1, 9),
(15, 15, 1, 10),
(17, 16, 2, 1),
(18, 17, 2, 2),
(19, 18, 2, 3),
(20, 19, 2, 4),
(35, 31, 3, 1),
(36, 32, 3, 2),
(37, 33, 3, 3),
(38, 34, 3, 3),
(39, 35, 3, 4),
(40, 36, 3, 5),
(41, 37, 3, 6),
(42, 38, 3, 7),
(43, 40, 3, 8),
(44, 39, 3, 8),
(45, 41, 3, 9),
(46, 42, 4, 1),
(47, 43, 4, 2),
(48, 44, 4, 3),
(49, 45, 4, 4),
(50, 46, 4, 5),
(51, 47, 4, 6),
(52, 48, 4, 7),
(53, 49, 4, 8),
(54, 50, 4, 8),
(55, 51, 4, 9),
(56, 52, 4, 10),
(58, 53, 5, 1),
(59, 54, 2, 5),
(62, 57, 5, 4),
(63, 58, 5, 5),
(65, 61, 5, 6),
(66, 60, 5, 6),
(69, 62, 5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `files_related_mph`
--

CREATE TABLE `files_related_mph` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_related_mph`
--

INSERT INTO `files_related_mph` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(1, 2, 1, 'block.valuecard', 'image', 1),
(2, 2, 2, 'block.valuecard', 'image', 1),
(35, 7, 3, 'block.valuecard', 'image', 1),
(36, 8, 4, 'block.valuecard', 'image', 1),
(37, 9, 5, 'block.valuecard', 'image', 1),
(38, 10, 6, 'block.valuecard', 'image', 1),
(39, 10, 9, 'support.employecard', 'image', 1),
(40, 11, 1, 'support.employecard', 'image', 1),
(41, 14, 2, 'support.employecard', 'image', 1),
(42, 13, 3, 'support.employecard', 'image', 1),
(43, 12, 4, 'support.employecard', 'image', 1),
(44, 7, 19, 'block.valuecard', 'image', 1),
(45, 8, 20, 'block.valuecard', 'image', 1),
(46, 9, 21, 'block.valuecard', 'image', 1),
(47, 10, 22, 'block.valuecard', 'image', 1),
(48, 11, 10, 'support.employecard', 'image', 1),
(49, 14, 11, 'support.employecard', 'image', 1),
(50, 13, 12, 'support.employecard', 'image', 1),
(51, 12, 13, 'support.employecard', 'image', 1),
(52, 10, 14, 'support.employecard', 'image', 1),
(65, 18, 4, 'support.image-left', 'image', 1),
(66, 19, 5, 'support.image-left', 'image', 1),
(68, 18, 6, 'support.image-left', 'image', 1),
(69, 19, 7, 'support.image-left', 'image', 1),
(94, 19, 8, 'api::gamepage.gamepage', 'image', 1),
(95, 19, 13, 'api::gamepage.gamepage', 'image', 1),
(98, 16, 16, 'api::gamepage.gamepage', 'image', 1),
(99, 16, 17, 'api::gamepage.gamepage', 'image', 1),
(100, 18, 18, 'api::gamepage.gamepage', 'image', 1),
(101, 18, 19, 'api::gamepage.gamepage', 'image', 1),
(102, 17, 20, 'api::gamepage.gamepage', 'image', 1),
(103, 17, 21, 'api::gamepage.gamepage', 'image', 1),
(104, 19, 22, 'api::gamepage.gamepage', 'image', 1),
(105, 19, 23, 'api::gamepage.gamepage', 'image', 1),
(168, 16, 4, 'support.image-right', 'image', 1),
(169, 18, 8, 'support.image-left', 'image', 1),
(170, 9, 1, 'block.tipwarn', 'image', 1),
(171, 11, 1, 'block.tipsuccess', 'image', 1),
(172, 14, 1, 'block.tipdanger', 'image', 1),
(173, 53, 4, 'api::gamepage.gamepage', 'image', 1),
(174, 16, 13, 'support.image-right', 'image', 1),
(175, 18, 17, 'support.image-left', 'image', 1),
(176, 9, 4, 'block.tipwarn', 'image', 1),
(177, 11, 4, 'block.tipsuccess', 'image', 1),
(178, 14, 4, 'block.tipdanger', 'image', 1),
(179, 53, 29, 'api::gamepage.gamepage', 'image', 1),
(186, 18, 14, 'api::gamepage.gamepage', 'image', 1),
(187, 18, 31, 'api::gamepage.gamepage', 'image', 1),
(188, 19, 1, 'support.image-left', 'image', 1),
(189, 17, 1, 'support.image-right', 'image', 1),
(190, 16, 1, 'api::gamepage.gamepage', 'image', 1),
(191, 19, 19, 'support.image-left', 'image', 1),
(192, 17, 15, 'support.image-right', 'image', 1),
(193, 16, 32, 'api::gamepage.gamepage', 'image', 1),
(194, 53, 16, 'support.image-right', 'image', 1),
(195, 10, 5, 'block.tipsuccess', 'image', 1),
(196, 54, 11, 'api::gamepage.gamepage', 'image', 1),
(197, 53, 17, 'support.image-right', 'image', 1),
(198, 10, 6, 'block.tipsuccess', 'image', 1),
(199, 54, 33, 'api::gamepage.gamepage', 'image', 1),
(218, 52, 20, 'support.image-left', 'image', 1),
(219, 57, 6, 'api::blog.blog', 'image', 1),
(220, 52, 23, 'support.image-left', 'image', 1),
(221, 57, 10, 'api::blog.blog', 'image', 1),
(222, 58, 1, 'api::blog.blog', 'image', 1),
(223, 58, 11, 'api::blog.blog', 'image', 1),
(224, 7, 1, 'api::faqtype.faqtype', 'icon', 1),
(225, 7, 2, 'api::faqtype.faqtype', 'icon', 1),
(228, 11, 5, 'api::faqtype.faqtype', 'icon', 1),
(229, 11, 6, 'api::faqtype.faqtype', 'icon', 1),
(230, 13, 7, 'api::faqtype.faqtype', 'icon', 1),
(231, 13, 8, 'api::faqtype.faqtype', 'icon', 1),
(232, 15, 9, 'api::faqtype.faqtype', 'icon', 1),
(233, 15, 10, 'api::faqtype.faqtype', 'icon', 1),
(234, 8, 11, 'api::faqtype.faqtype', 'icon', 1),
(235, 8, 12, 'api::faqtype.faqtype', 'icon', 1),
(236, 9, 3, 'api::faqtype.faqtype', 'icon', 1),
(237, 9, 13, 'api::faqtype.faqtype', 'icon', 1),
(238, 12, 14, 'api::faqtype.faqtype', 'icon', 1),
(239, 12, 15, 'api::faqtype.faqtype', 'icon', 1),
(241, 12, 2, 'api::faq.faq', 'image', 1),
(244, 12, 1, 'api::faq.faq', 'image', 1),
(245, 12, 4, 'api::faq.faq', 'image', 1),
(252, 35, 7, 'api::sponsor.sponsor', 'logo', 1),
(253, 35, 16, 'api::sponsor.sponsor', 'logo', 1),
(264, 52, 18, 'support.image-right', 'image', 1),
(265, 43, 24, 'support.image-left', 'image', 1),
(266, 52, 21, 'support.image-right', 'image', 1),
(267, 43, 26, 'support.image-left', 'image', 1),
(268, 45, 9, 'api::playgame.playgame', 'iamge', 1),
(269, 45, 11, 'api::playgame.playgame', 'iamge', 1),
(270, 42, 3, 'api::playgame.playgame', 'iamge', 1),
(271, 42, 12, 'api::playgame.playgame', 'iamge', 1),
(272, 46, 5, 'api::playgame.playgame', 'iamge', 1),
(273, 46, 13, 'api::playgame.playgame', 'iamge', 1),
(274, 43, 1, 'api::playgame.playgame', 'iamge', 1),
(275, 43, 14, 'api::playgame.playgame', 'iamge', 1),
(290, 31, 1, 'api::sponsor.sponsor', 'logo', 1),
(291, 61, 1, 'api::sponsor.sponsor', 'heroimage', 1),
(292, 31, 20, 'api::sponsor.sponsor', 'logo', 1),
(293, 61, 20, 'api::sponsor.sponsor', 'heroimage', 1),
(294, 32, 3, 'api::sponsor.sponsor', 'logo', 1),
(295, 60, 3, 'api::sponsor.sponsor', 'heroimage', 1),
(296, 32, 21, 'api::sponsor.sponsor', 'logo', 1),
(297, 60, 21, 'api::sponsor.sponsor', 'heroimage', 1),
(302, 36, 9, 'api::sponsor.sponsor', 'logo', 1),
(303, 53, 9, 'api::sponsor.sponsor', 'heroimage', 1),
(304, 36, 23, 'api::sponsor.sponsor', 'logo', 1),
(305, 53, 23, 'api::sponsor.sponsor', 'heroimage', 1),
(306, 37, 11, 'api::sponsor.sponsor', 'logo', 1),
(307, 60, 11, 'api::sponsor.sponsor', 'heroimage', 1),
(308, 37, 24, 'api::sponsor.sponsor', 'logo', 1),
(309, 60, 24, 'api::sponsor.sponsor', 'heroimage', 1),
(492, 50, 31, 'support.image-left', 'image', 1),
(493, 47, 27, 'support.image-left', 'image', 1),
(494, 44, 22, 'support.image-right', 'image', 1),
(495, 43, 34, 'support.image-left', 'image', 1),
(496, 33, 5, 'api::sponsor.sponsor', 'logo', 1),
(497, 58, 5, 'api::sponsor.sponsor', 'heroimage', 1),
(498, 50, 47, 'support.image-left', 'image', 1),
(499, 47, 48, 'support.image-left', 'image', 1),
(500, 44, 28, 'support.image-right', 'image', 1),
(501, 43, 49, 'support.image-left', 'image', 1),
(502, 33, 33, 'api::sponsor.sponsor', 'logo', 1),
(503, 58, 33, 'api::sponsor.sponsor', 'heroimage', 1),
(574, 61, 1, 'block.slider', 'image', 1),
(575, 60, 3, 'block.slider', 'image', 1),
(576, 57, 8, 'block.slider', 'image', 1),
(577, 54, 9, 'block.slider', 'image', 1),
(578, 18, 26, 'block.slider', 'image', 1),
(579, 16, 37, 'block.slider', 'image', 1),
(580, 52, 1, 'block.linkcard', 'image', 1),
(581, 45, 2, 'block.linkcard', 'image', 1),
(582, 44, 3, 'block.linkcard', 'image', 1),
(583, 46, 4, 'block.linkcard', 'image', 1),
(584, 9, 1, 'block.sportcard', 'icon', 1),
(585, 11, 2, 'block.sportcard', 'icon', 1),
(586, 10, 3, 'block.sportcard', 'icon', 1),
(587, 9, 4, 'block.sportcard', 'icon', 1),
(588, 12, 1, 'block.sportcard', 'image', 1),
(589, 52, 2, 'block.sportcard', 'image', 1),
(590, 43, 3, 'block.sportcard', 'image', 1),
(591, 43, 4, 'block.sportcard', 'image', 1),
(592, 61, 44, 'block.slider', 'image', 1),
(593, 60, 45, 'block.slider', 'image', 1),
(594, 57, 46, 'block.slider', 'image', 1),
(595, 54, 47, 'block.slider', 'image', 1),
(596, 18, 48, 'block.slider', 'image', 1),
(597, 16, 49, 'block.slider', 'image', 1),
(598, 52, 13, 'block.linkcard', 'image', 1),
(599, 45, 14, 'block.linkcard', 'image', 1),
(600, 44, 15, 'block.linkcard', 'image', 1),
(601, 46, 16, 'block.linkcard', 'image', 1),
(602, 9, 29, 'block.sportcard', 'icon', 1),
(603, 11, 30, 'block.sportcard', 'icon', 1),
(604, 10, 31, 'block.sportcard', 'icon', 1),
(605, 9, 32, 'block.sportcard', 'icon', 1),
(606, 12, 29, 'block.sportcard', 'image', 1),
(607, 52, 30, 'block.sportcard', 'image', 1),
(608, 43, 31, 'block.sportcard', 'image', 1),
(609, 43, 32, 'block.sportcard', 'image', 1),
(610, 17, 50, 'support.image-left', 'image', 1),
(611, 47, 7, 'api::playgame.playgame', 'iamge', 1),
(612, 17, 51, 'support.image-left', 'image', 1),
(613, 47, 16, 'api::playgame.playgame', 'iamge', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gamepages`
--

CREATE TABLE `gamepages` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `pagename` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `seourl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gamepages`
--

INSERT INTO `gamepages` (`id`, `document_id`, `pagename`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `seourl`) VALUES
(1, 'ltu5pmvk3ks0ztofpmsj74ih', 'hot', 'Welcome to HOT IND NO1, India\'s most trusted gaming and betting platform. These Terms and Conditions (\"Terms\") govern your access to and use of our website, mobile applications, and services (collectively, the \"Platform\").\n\nBy creating an account or using our services, you agree to be bound by these Terms. Please read them carefully. If you do not agree with any part of these Terms, you should not use our Platform.', '2026-02-03 12:13:53.373000', '2026-02-04 11:14:44.331000', NULL, 1, 1, NULL, 'hot'),
(4, 'uy7u0ssoyaf20n5d6j9gyip6', 'casino', 'casino Live betting (in-play betting) offers unique opportunities because odds change rapidly based on match situations. If you\'re watching the game and can read momentum shifts, weather changes, or pitch behavior, you can find tremendous value. Live betting (in-play betting) offers unique opportunities because odds change rapidly based on match situations. If you\'re watching the game and can read momentum shifts, weather changes, or pitch behavior, you can find tremendous value. Live betting (in-play betting) offers unique opportunities because odds change rapidly based on match situations. If you\'re watching the game and can read momentum shifts, weather changes, or pitch behavior, you can find tremendous value.', '2026-02-03 14:33:08.971000', '2026-02-04 11:00:15.583000', NULL, 1, 1, NULL, 'casino'),
(8, 'z8lphedystnf9m1ckuui19ka', 'sports', 'sports', '2026-02-04 07:43:40.099000', '2026-02-04 07:44:30.171000', NULL, 1, 1, NULL, 'sports'),
(11, 'dgbzqi1v9d1qeqh6dr7ldc2i', 'cockfight', 'Normally when encountering a JSON document (content type \"application/json\"), the browser simply shows plain text. With the JSONView extension, JSON documents are formatted, highlighted, and arrays and objects can be collapsed. Even if the JSON document contains errors, JSONView will still show the raw text. Once you\'ve got JSONView installed, check out http://jsonview.com/example.json to see the extension in action!', '2026-02-04 07:44:12.646000', '2026-02-04 11:42:17.074000', NULL, 1, 1, NULL, 'cockfight-1'),
(13, 'z8lphedystnf9m1ckuui19ka', 'sports', 'sports', '2026-02-04 07:43:40.099000', '2026-02-04 07:44:30.171000', '2026-02-04 07:44:30.323000', 1, 1, NULL, 'sports'),
(14, 'xp3jhthxfvujqao2u6d1obyx', 'live', 'live Normally when encountering a JSON document (content type \"application/json\"), the browser simply shows plain text. With the JSONView extension, JSON documents are formatted, highlighted, and arrays and objects can be collapsed. Even if the JSON document contains errors, JSONView will still show the raw text. Once you\'ve got JSONView installed, check out http://jsonview.com/example.json to see the extension in action!Normally when encountering a JSON document (content type \"application/json\"), the browser simply shows plain text. With the JSONView extension, JSON documents are formatted, highlighted, and arrays and objects can be collapsed. Even if the JSON document contains errors, JSONView will still show the raw text. Once you\'ve got JSONView installed, check out http://jsonview.com/example.json to see the extension in action!Normally when encountering a JSON document (content type \"application/json\"), the browser simply shows plain text. With the JSONView extension, JSON documents are formatted, highlighted, and arrays and objects can be collapsed. Even if the JSON document contains errors, JSONView will still show the raw text. Once you\'ve got JSONView installed, check out http://jsonview.com/example.json to see the extension in action!Normally when encountering a JSON document (content type \"application/json\"), the browser simply shows plain text. With the JSONView extension, JSON documents are formatted, highlighted, and arrays and objects can be collapsed. Even if the JSON document contains errors, JSONView will still show the raw text. Once you\'ve got JSONView installed, check out http://jsonview.com/example.json to see the extension in action!Normally when encountering a JSON document (content type \"application/json\"), the browser simply shows plain text. With the JSONView extension, JSON documents are formatted, highlighted, and arrays and objects can be collapsed. Even if the JSON document contains errors, JSONView will still show the raw text. Once you\'ve got JSONView installed, check out http://jsonview.com/example.json to see the extension in action!Normally when encountering a JSON document (content type \"application/json\"), the browser simply shows plain text. With the JSONView extension, JSON documents are formatted, highlighted, and arrays and objects can be collapsed. Even if the JSON document contains errors, JSONView will still show the raw text. Once you\'ve got JSONView installed, check out http://jsonview.com/example.json to see the extension in action!', '2026-02-04 07:44:54.814000', '2026-02-04 11:11:10.277000', NULL, 1, 1, NULL, 'live'),
(16, 'ya7gf95vqu177lspzzyreow2', 'crash', 'crash', '2026-02-04 07:45:22.574000', '2026-02-04 07:45:22.574000', NULL, 1, 1, NULL, 'crash'),
(17, 'ya7gf95vqu177lspzzyreow2', 'crash', 'crash', '2026-02-04 07:45:22.574000', '2026-02-04 07:45:22.574000', '2026-02-04 07:45:22.656000', 1, 1, NULL, 'crash'),
(18, 'qzl2rhk8cf2kx8qhucga3qf3', 'games', 'games', '2026-02-04 07:45:46.178000', '2026-02-04 07:45:46.178000', NULL, 1, 1, NULL, 'games'),
(19, 'qzl2rhk8cf2kx8qhucga3qf3', 'games', 'games', '2026-02-04 07:45:46.178000', '2026-02-04 07:45:46.178000', '2026-02-04 07:45:46.275000', 1, 1, NULL, 'games'),
(20, 'ssu4osxe58u0blcitg8t72e4', 'lottery', 'lottery', '2026-02-04 07:46:12.331000', '2026-02-04 07:46:12.331000', NULL, 1, 1, NULL, 'lottery'),
(21, 'ssu4osxe58u0blcitg8t72e4', 'lottery', 'lottery', '2026-02-04 07:46:12.331000', '2026-02-04 07:46:12.331000', '2026-02-04 07:46:12.421000', 1, 1, NULL, 'lottery'),
(22, 'wie66nsiqbjde8npvcy8t1al', 'fishing', 'fishing', '2026-02-04 07:46:39.666000', '2026-02-04 07:46:39.666000', NULL, 1, 1, NULL, 'fishing'),
(23, 'wie66nsiqbjde8npvcy8t1al', 'fishing', 'fishing', '2026-02-04 07:46:39.666000', '2026-02-04 07:46:39.666000', '2026-02-04 07:46:39.763000', 1, 1, NULL, 'fishing'),
(29, 'uy7u0ssoyaf20n5d6j9gyip6', 'casino', 'casino Live betting (in-play betting) offers unique opportunities because odds change rapidly based on match situations. If you\'re watching the game and can read momentum shifts, weather changes, or pitch behavior, you can find tremendous value. Live betting (in-play betting) offers unique opportunities because odds change rapidly based on match situations. If you\'re watching the game and can read momentum shifts, weather changes, or pitch behavior, you can find tremendous value. Live betting (in-play betting) offers unique opportunities because odds change rapidly based on match situations. If you\'re watching the game and can read momentum shifts, weather changes, or pitch behavior, you can find tremendous value.', '2026-02-03 14:33:08.971000', '2026-02-04 11:00:15.583000', '2026-02-04 11:00:15.908000', 1, 1, NULL, 'casino'),
(31, 'xp3jhthxfvujqao2u6d1obyx', 'live', 'live Normally when encountering a JSON document (content type \"application/json\"), the browser simply shows plain text. With the JSONView extension, JSON documents are formatted, highlighted, and arrays and objects can be collapsed. Even if the JSON document contains errors, JSONView will still show the raw text. Once you\'ve got JSONView installed, check out http://jsonview.com/example.json to see the extension in action!Normally when encountering a JSON document (content type \"application/json\"), the browser simply shows plain text. With the JSONView extension, JSON documents are formatted, highlighted, and arrays and objects can be collapsed. Even if the JSON document contains errors, JSONView will still show the raw text. Once you\'ve got JSONView installed, check out http://jsonview.com/example.json to see the extension in action!Normally when encountering a JSON document (content type \"application/json\"), the browser simply shows plain text. With the JSONView extension, JSON documents are formatted, highlighted, and arrays and objects can be collapsed. Even if the JSON document contains errors, JSONView will still show the raw text. Once you\'ve got JSONView installed, check out http://jsonview.com/example.json to see the extension in action!Normally when encountering a JSON document (content type \"application/json\"), the browser simply shows plain text. With the JSONView extension, JSON documents are formatted, highlighted, and arrays and objects can be collapsed. Even if the JSON document contains errors, JSONView will still show the raw text. Once you\'ve got JSONView installed, check out http://jsonview.com/example.json to see the extension in action!Normally when encountering a JSON document (content type \"application/json\"), the browser simply shows plain text. With the JSONView extension, JSON documents are formatted, highlighted, and arrays and objects can be collapsed. Even if the JSON document contains errors, JSONView will still show the raw text. Once you\'ve got JSONView installed, check out http://jsonview.com/example.json to see the extension in action!Normally when encountering a JSON document (content type \"application/json\"), the browser simply shows plain text. With the JSONView extension, JSON documents are formatted, highlighted, and arrays and objects can be collapsed. Even if the JSON document contains errors, JSONView will still show the raw text. Once you\'ve got JSONView installed, check out http://jsonview.com/example.json to see the extension in action!', '2026-02-04 07:44:54.814000', '2026-02-04 11:11:10.277000', '2026-02-04 11:11:10.409000', 1, 1, NULL, 'live'),
(32, 'ltu5pmvk3ks0ztofpmsj74ih', 'hot', 'Welcome to HOT IND NO1, India\'s most trusted gaming and betting platform. These Terms and Conditions (\"Terms\") govern your access to and use of our website, mobile applications, and services (collectively, the \"Platform\").\n\nBy creating an account or using our services, you agree to be bound by these Terms. Please read them carefully. If you do not agree with any part of these Terms, you should not use our Platform.', '2026-02-03 12:13:53.373000', '2026-02-04 11:14:44.331000', '2026-02-04 11:14:44.547000', 1, 1, NULL, 'hot'),
(33, 'dgbzqi1v9d1qeqh6dr7ldc2i', 'cockfight', 'Normally when encountering a JSON document (content type \"application/json\"), the browser simply shows plain text. With the JSONView extension, JSON documents are formatted, highlighted, and arrays and objects can be collapsed. Even if the JSON document contains errors, JSONView will still show the raw text. Once you\'ve got JSONView installed, check out http://jsonview.com/example.json to see the extension in action!', '2026-02-04 07:44:12.646000', '2026-02-04 11:42:17.074000', '2026-02-04 11:42:17.333000', 1, 1, NULL, 'cockfight-1');

-- --------------------------------------------------------

--
-- Table structure for table `gamepages_cmps`
--

CREATE TABLE `gamepages_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gamepages_cmps`
--

INSERT INTO `gamepages_cmps` (`id`, `entity_id`, `cmp_id`, `component_type`, `field`, `order`) VALUES
(4, 1, 1, 'support.faq', 'gamefaq', 1),
(5, 1, 2, 'support.faq', 'gamefaq', 2),
(27, 4, 11, 'support.faq', 'gamefaq', 1),
(28, 4, 12, 'support.faq', 'gamefaq', 2),
(105, 4, 4, 'support.image-right', 'gamebody', 2),
(106, 4, 8, 'support.image-left', 'gamebody', 3),
(107, 4, 6, 'support.artical', 'gamebody', 5),
(108, 4, 1, 'block.tipwarn', 'gamebody', 6),
(109, 4, 1, 'block.tipsuccess', 'gamebody', 7),
(110, 4, 1, 'block.tipdanger', 'gamebody', 8),
(113, 29, 13, 'support.image-right', 'gamebody', 1),
(114, 29, 17, 'support.image-left', 'gamebody', 2),
(115, 29, 13, 'support.artical', 'gamebody', 3),
(116, 29, 4, 'block.tipwarn', 'gamebody', 4),
(117, 29, 4, 'block.tipsuccess', 'gamebody', 5),
(118, 29, 4, 'block.tipdanger', 'gamebody', 6),
(119, 29, 27, 'support.faq', 'gamefaq', 1),
(120, 29, 28, 'support.faq', 'gamefaq', 2),
(131, 1, 1, 'support.artical', 'gamebody', 1),
(132, 1, 1, 'support.image-left', 'gamebody', 3),
(133, 1, 1, 'support.image-right', 'gamebody', 5),
(136, 32, 15, 'support.artical', 'gamebody', 1),
(137, 32, 19, 'support.image-left', 'gamebody', 2),
(138, 32, 15, 'support.image-right', 'gamebody', 3),
(139, 32, 31, 'support.faq', 'gamefaq', 1),
(140, 32, 32, 'support.faq', 'gamefaq', 2),
(141, 11, 16, 'support.artical', 'gamebody', 1),
(142, 11, 16, 'support.image-right', 'gamebody', 2),
(143, 11, 5, 'block.tipsuccess', 'gamebody', 3),
(144, 11, 33, 'support.faq', 'gamefaq', 1),
(145, 11, 34, 'support.faq', 'gamefaq', 2),
(146, 33, 17, 'support.artical', 'gamebody', 1),
(147, 33, 17, 'support.image-right', 'gamebody', 2),
(148, 33, 6, 'block.tipsuccess', 'gamebody', 3),
(149, 33, 35, 'support.faq', 'gamefaq', 1),
(150, 33, 36, 'support.faq', 'gamefaq', 2);

-- --------------------------------------------------------

--
-- Table structure for table `gamepages_playgames_lnk`
--

CREATE TABLE `gamepages_playgames_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `gamepage_id` int(10) UNSIGNED DEFAULT NULL,
  `playgame_id` int(10) UNSIGNED DEFAULT NULL,
  `playgame_ord` double UNSIGNED DEFAULT NULL,
  `gamepage_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gamepages_playgames_lnk`
--

INSERT INTO `gamepages_playgames_lnk` (`id`, `gamepage_id`, `playgame_id`, `playgame_ord`, `gamepage_ord`) VALUES
(1, 4, 5, 1, 1),
(2, 4, 3, 2, 1),
(3, 4, 1, 3, 1),
(10, 4, 7, 4, 0),
(11, 20, 7, 1, 1),
(12, 14, 7, 1, 2),
(13, 1, 7, 1, 3),
(33, 11, 3, 1, 2),
(35, 4, 9, 5, 0),
(36, 11, 9, 2, 1),
(37, 14, 9, 2, 2),
(41, 29, 11, 5, 1),
(42, 33, 11, 2, 2),
(43, 31, 11, 2, 3),
(44, 29, 12, 2, 1),
(45, 33, 12, 1, 2),
(46, 29, 13, 1, 1),
(47, 29, 14, 3, 1),
(52, 29, 16, 4, 1),
(53, 21, 16, 1, 2),
(54, 31, 16, 1, 3),
(55, 32, 16, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `gamepages_sponsors_lnk`
--

CREATE TABLE `gamepages_sponsors_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `gamepage_id` int(10) UNSIGNED DEFAULT NULL,
  `sponsor_id` int(10) UNSIGNED DEFAULT NULL,
  `sponsor_ord` double UNSIGNED DEFAULT NULL,
  `gamepage_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gamepages_sponsors_lnk`
--

INSERT INTO `gamepages_sponsors_lnk` (`id`, `gamepage_id`, `sponsor_id`, `sponsor_ord`, `gamepage_ord`) VALUES
(1, 4, 1, 1, 1),
(2, 4, 3, 2, 1),
(3, 4, 5, 3, 1),
(16, 11, 1, 1, 2),
(17, 11, 3, 2, 2),
(25, 4, 11, 4, 1),
(26, 11, 11, 3, 2),
(27, 22, 11, 1, 3),
(31, 29, 20, 1, 1),
(32, 33, 20, 1, 2),
(33, 29, 21, 2, 1),
(34, 33, 21, 2, 2),
(36, 29, 24, 4, 1),
(37, 33, 24, 3, 2),
(38, 23, 24, 1, 3),
(40, 16, 5, 1, 2),
(41, 11, 5, 4, 3),
(42, 18, 5, 1, 4),
(43, 8, 5, 1, 5),
(44, 20, 5, 1, 6),
(87, 29, 33, 3, 1),
(88, 17, 33, 1, 2),
(89, 33, 33, 4, 3),
(90, 19, 33, 1, 4),
(91, 13, 33, 1, 5),
(92, 21, 33, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `document_id`, `name`, `code`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'la39flm16bwzxay651d153pe', 'English (en)', 'en', '2026-02-02 01:21:45.302000', '2026-02-02 01:21:45.302000', '2026-02-02 01:21:45.302000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `landingpages`
--

CREATE TABLE `landingpages` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `landingpages`
--

INSERT INTO `landingpages` (`id`, `document_id`, `title`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'oj75pcc7p4vmug75nn1d4rya', 'Homepage', '2026-02-05 14:48:43.636000', '2026-02-07 10:27:28.269000', NULL, 1, 1, NULL),
(12, 'oj75pcc7p4vmug75nn1d4rya', 'Homepage', '2026-02-05 14:48:43.636000', '2026-02-07 10:27:28.269000', '2026-02-07 10:27:28.566000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `landingpages_cmps`
--

CREATE TABLE `landingpages_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `landingpages_cmps`
--

INSERT INTO `landingpages_cmps` (`id`, `entity_id`, `cmp_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'block.slider', 'mainslider', 2),
(3, 1, 3, 'block.slider', 'mainslider', 3),
(11, 1, 8, 'block.slider', 'mainslider', 4),
(12, 1, 9, 'block.slider', 'mainslider', 6),
(67, 1, 26, 'block.slider', 'mainslider', 9),
(90, 1, 1, 'block.linkcard', 'Featuregame', 1),
(91, 1, 2, 'block.linkcard', 'Featuregame', 2),
(92, 1, 3, 'block.linkcard', 'Featuregame', 3),
(93, 1, 4, 'block.linkcard', 'Featuregame', 4),
(111, 1, 37, 'block.slider', 'mainslider', 11),
(149, 1, 1, 'block.sportcard', 'sportbody', 1),
(150, 1, 2, 'block.sportcard', 'sportbody', 2),
(151, 1, 3, 'block.sportcard', 'sportbody', 3),
(152, 1, 4, 'block.sportcard', 'sportbody', 4),
(153, 12, 44, 'block.slider', 'mainslider', 1),
(154, 12, 45, 'block.slider', 'mainslider', 2),
(155, 12, 46, 'block.slider', 'mainslider', 3),
(156, 12, 47, 'block.slider', 'mainslider', 4),
(157, 12, 48, 'block.slider', 'mainslider', 5),
(158, 12, 49, 'block.slider', 'mainslider', 6),
(159, 12, 13, 'block.linkcard', 'Featuregame', 1),
(160, 12, 14, 'block.linkcard', 'Featuregame', 2),
(161, 12, 15, 'block.linkcard', 'Featuregame', 3),
(162, 12, 16, 'block.linkcard', 'Featuregame', 4),
(163, 12, 29, 'block.sportcard', 'sportbody', 1),
(164, 12, 30, 'block.sportcard', 'sportbody', 2),
(165, 12, 31, 'block.sportcard', 'sportbody', 3),
(166, 12, 32, 'block.sportcard', 'sportbody', 4);

-- --------------------------------------------------------

--
-- Table structure for table `playgames`
--

CREATE TABLE `playgames` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `gamename` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `seourl` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `gameurl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playgames`
--

INSERT INTO `playgames` (`id`, `document_id`, `gamename`, `description`, `seourl`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `gameurl`) VALUES
(1, 'inqn9htx6yph4ibz1urwrnaf', 'Jackpot Fishing', 'Jackpot Fishing', 'jackpot-fishing', '2026-02-04 08:28:41.460000', '2026-02-05 13:35:33.423000', NULL, 1, 1, NULL, 'https://indno1j.com/?menuId=fishing'),
(3, 'dz0i3apbhc9a3yqtdhbb1uvm', 'Crazy 777', 'Crazy 777', 'crazy-777', '2026-02-04 08:29:53.748000', '2026-02-05 13:33:41.987000', NULL, 1, 1, NULL, 'https://indno1j.com/?menuId=slots'),
(5, 'ld3xdqblxabosomod2yhnri1', 'Dinosaur Tycoon', 'Dinosaur Tycoon', 'dinosaur-tycoon', '2026-02-04 08:31:02.626000', '2026-02-05 13:35:07.444000', NULL, 1, 1, NULL, 'https://indno1j.com/?menuId=fishing'),
(7, 'pzs0r03dnmktmvg55kf3zel3', 'Lucky  Goldbricks', 'Lucky  Goldbricks', 'lucky-goldbricks', '2026-02-04 09:50:43.439000', '2026-02-07 12:52:30.949000', NULL, 1, 1, NULL, 'https://indno1j.com/?menuId=crash'),
(9, 'vqbc1qg0gpb1ycovu3m5iz2d', 'Boom Leaend', 'Boom Leaend', 'boom-leaend', '2026-02-04 11:44:18.125000', '2026-02-05 13:30:36.198000', NULL, 1, 1, NULL, 'https://indno1j.com/?menuId=crash'),
(11, 'vqbc1qg0gpb1ycovu3m5iz2d', 'Boom Leaend', 'Boom Leaend', 'boom-leaend', '2026-02-04 11:44:18.125000', '2026-02-05 13:30:36.198000', '2026-02-05 13:30:36.289000', 1, 1, NULL, 'https://indno1j.com/?menuId=crash'),
(12, 'dz0i3apbhc9a3yqtdhbb1uvm', 'Crazy 777', 'Crazy 777', 'crazy-777', '2026-02-04 08:29:53.748000', '2026-02-05 13:33:41.987000', '2026-02-05 13:33:42.059000', 1, 1, NULL, 'https://indno1j.com/?menuId=slots'),
(13, 'ld3xdqblxabosomod2yhnri1', 'Dinosaur Tycoon', 'Dinosaur Tycoon', 'dinosaur-tycoon', '2026-02-04 08:31:02.626000', '2026-02-05 13:35:07.444000', '2026-02-05 13:35:07.530000', 1, 1, NULL, 'https://indno1j.com/?menuId=fishing'),
(14, 'inqn9htx6yph4ibz1urwrnaf', 'Jackpot Fishing', 'Jackpot Fishing', 'jackpot-fishing', '2026-02-04 08:28:41.460000', '2026-02-05 13:35:33.423000', '2026-02-05 13:35:33.496000', 1, 1, NULL, 'https://indno1j.com/?menuId=fishing'),
(16, 'pzs0r03dnmktmvg55kf3zel3', 'Lucky  Goldbricks', 'Lucky  Goldbricks', 'lucky-goldbricks', '2026-02-04 09:50:43.439000', '2026-02-07 12:52:30.949000', '2026-02-07 12:52:31.061000', 1, 1, NULL, 'https://indno1j.com/?menuId=crash');

-- --------------------------------------------------------

--
-- Table structure for table `playgames_cmps`
--

CREATE TABLE `playgames_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playgames_cmps`
--

INSERT INTO `playgames_cmps` (`id`, `entity_id`, `cmp_id`, `component_type`, `field`, `order`) VALUES
(1, 7, 50, 'support.image-left', 'bodysponce', 1),
(2, 16, 51, 'support.image-left', 'bodysponce', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `seourl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `document_id`, `name`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `seourl`) VALUES
(1, 'xfzm2aphbw507dzwrnp2rsxl', 'A', 'A', '2026-02-04 08:23:41.983000', '2026-02-06 09:13:24.878000', NULL, 1, 1, NULL, 'a'),
(3, 'xr5bvsihd2365i3di6754k5i', 'c09', 'c09', '2026-02-04 08:24:12.971000', '2026-02-06 09:13:44.083000', NULL, 1, 1, NULL, 'c09'),
(5, 'mfb81s4qvpbx7inwbhpjdp3v', 'H', 'H Game', '2026-02-04 08:24:48.668000', '2026-02-06 15:08:36.514000', NULL, 1, 1, NULL, 'h-indo1-gaming-indea'),
(7, 'ube4p1r07umt003ybgr9dgrm', 'jdb', 'jdb', '2026-02-04 08:25:07.875000', '2026-02-05 05:18:26.728000', NULL, 1, 1, NULL, 'jdb'),
(9, 'nd23rspbg6z2223l7vq3v2il', 'jili', 'jili', '2026-02-04 08:25:28.553000', '2026-02-06 09:14:13.942000', NULL, 1, 1, NULL, 'jili'),
(11, 'sp7cpx6xnifu5lhf7h253jx0', 'M', 'M', '2026-02-04 08:25:51.875000', '2026-02-06 09:14:34.325000', NULL, 1, 1, NULL, 'm'),
(16, 'ube4p1r07umt003ybgr9dgrm', 'jdb', 'jdb', '2026-02-04 08:25:07.875000', '2026-02-05 05:18:26.728000', '2026-02-05 05:18:26.796000', 1, 1, NULL, 'jdb'),
(20, 'xfzm2aphbw507dzwrnp2rsxl', 'A', 'A', '2026-02-04 08:23:41.983000', '2026-02-06 09:13:24.878000', '2026-02-06 09:13:25.018000', 1, 1, NULL, 'a'),
(21, 'xr5bvsihd2365i3di6754k5i', 'c09', 'c09', '2026-02-04 08:24:12.971000', '2026-02-06 09:13:44.083000', '2026-02-06 09:13:44.190000', 1, 1, NULL, 'c09'),
(23, 'nd23rspbg6z2223l7vq3v2il', 'jili', 'jili', '2026-02-04 08:25:28.553000', '2026-02-06 09:14:13.942000', '2026-02-06 09:14:14.086000', 1, 1, NULL, 'jili'),
(24, 'sp7cpx6xnifu5lhf7h253jx0', 'M', 'M', '2026-02-04 08:25:51.875000', '2026-02-06 09:14:34.325000', '2026-02-06 09:14:34.441000', 1, 1, NULL, 'm'),
(33, 'mfb81s4qvpbx7inwbhpjdp3v', 'H', 'H Game', '2026-02-04 08:24:48.668000', '2026-02-06 15:08:36.514000', '2026-02-06 15:08:36.663000', 1, 1, NULL, 'h-indo1-gaming-indea');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors_cmps`
--

CREATE TABLE `sponsors_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sponsors_cmps`
--

INSERT INTO `sponsors_cmps` (`id`, `entity_id`, `cmp_id`, `component_type`, `field`, `order`) VALUES
(61, 5, 41, 'support.artical', 'bodysponce', 1),
(62, 5, 31, 'support.image-left', 'bodysponce', 2),
(63, 5, 27, 'support.image-left', 'bodysponce', 3),
(64, 5, 22, 'support.image-right', 'bodysponce', 4),
(65, 5, 34, 'support.image-left', 'bodysponce', 5),
(66, 33, 50, 'support.artical', 'bodysponce', 1),
(67, 33, 47, 'support.image-left', 'bodysponce', 2),
(68, 33, 48, 'support.image-left', 'bodysponce', 3),
(69, 33, 28, 'support.image-right', 'bodysponce', 4),
(70, 33, 49, 'support.image-left', 'bodysponce', 5);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_ai_localization_jobs`
--

CREATE TABLE `strapi_ai_localization_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `related_document_id` varchar(255) NOT NULL,
  `source_locale` varchar(255) NOT NULL,
  `target_locales` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`target_locales`)),
  `status` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_ai_metadata_jobs`
--

CREATE TABLE `strapi_ai_metadata_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `completed_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `encrypted_key` longtext DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_api_tokens`
--

INSERT INTO `strapi_api_tokens` (`id`, `document_id`, `name`, `description`, `type`, `access_key`, `encrypted_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'h5xqis8s0mw97xx0lcbv9j95', 'Read Only', 'A default API token with read-only permissions, only used for accessing resources', 'read-only', '42259e22e8fe8ec0bf57f6c6dc46b799ca3f9df0c98a881fbe5bf90d83d9f8df666be5bb4e10a0d67a6658ae78f1ac07f27384bb5f308f1b3ebb62957f66f2f7', 'v1:e277f911e41577d21b278576039ca14a:04d3f6b2d85d62af4ee152144396d7f637921b9373b4a600923952fcfd20e80c36fff0f312c62a2e4728984c56e6fb2e702cf7ea49b5bf0410a954a7ac673e473afb7b571f64f2b84580651eec26adaa57a9f84f2c79b25e3692fd96356a88368b8954a5bcdb736befec2f0846ac4fd62cfc8ebb6dcd7ffc7496787f80537e7138b44b0ed6de15b4178a5e4db094b0b493c0e1a4d8cf77c5c7b26fc7b37e38c977206b1122467a588a864e62f052b80c7cb09416a0f1f33f682b44a09d02f61a855053b12c56a5d9f617a6aaf3b5ced8505d5e6604e06f9cfbe36a9e18d139181b58b72e518d955d5c571da2953c85043247fbfbac3a6d354f1b7f2c5de92054:bc41a6d1535b9190c7167d7ed396bbfd', '2026-02-02 09:50:55.883000', NULL, NULL, '2026-02-02 01:21:45.683000', '2026-02-02 09:50:55.883000', '2026-02-02 01:21:45.683000', NULL, NULL, NULL),
(2, 'f81h4j404mx4ufz5rvlbla8e', 'Full Access', 'A default API token with full access permissions, used for accessing or modifying resources', 'full-access', 'd041af4ffa85a24e49769adf919ec6981d6bbe73904cc81626e7a29af9acb9a8a441f0f93ff75e3dbfd8f797fe3b33b1ebcb5c87cbf7acc97a035d4401922c0d', 'v1:01616842d0ae21c61bc55a0bca113ab3:3d4efb2299eb239c11a06ed51eb9164b84d37849f06c7c155f6b8d4ac56a6efff49ba21af66f41eeb137b4407a68958f93fe602624cc263324ea07de9976a2345b3885c8a39ee90f46b3f4be56bf31a9c4bd85de3c1a2146150a555f56e9f70677bfb8a24aefce98a653e8d7e1d559f6d2499a576d4fd67d11cdc4ed59dd75c598189f8a991f4f3c4a007a8fccb7d14c8e52040dd7ab2809ec7b278ff19d928aa18c0d709e8c1b1d5026eac2f6a0363589a078aec45b87f321513d964cc35ffc3346b66024ccf0f808cbb67394b4c986fe612db9797d6536e5b2b17adde18fc7f2847ef754af36de2aa707c4f49a20540badf0cc92b8d743aa339fa39e8caa2d:b01169fb9dc72bc89a418db1e5f4040e', NULL, NULL, NULL, '2026-02-02 01:21:45.688000', '2026-02-06 04:38:58.296000', '2026-02-02 01:21:45.688000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_lnk`
--

CREATE TABLE `strapi_api_token_permissions_token_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_unidirectional-join-table-repair-ran', 'true', 'boolean', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'strapi_content_types_schema', '{\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"text\",\"configurable\":false},\"caption\":{\"type\":\"text\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"text\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"text\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"files\"}}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"plugin\":\"upload\",\"globalId\":\"UploadFile\",\"uid\":\"plugin::upload.file\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"text\",\"configurable\":false},\"caption\":{\"type\":\"text\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"text\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"text\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"file\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"upload_folders\"}}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"plugin\":\"upload\",\"globalId\":\"UploadFolder\",\"uid\":\"plugin::upload.folder\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelName\":\"folder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::i18n.locale\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"i18n_locale\"}}},\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\",\"uid\":\"plugin::i18n.locale\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"i18n_locale\",\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"locale\"},\"plugin::content-releases.release\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_releases\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesRelease\",\"uid\":\"plugin::content-releases.release\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"}},\"kind\":\"collectionType\"},\"modelName\":\"release\"},\"plugin::content-releases.release-action\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_release_actions\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesReleaseAction\",\"uid\":\"plugin::content-releases.release-action\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelName\":\"release-action\"},\"plugin::review-workflows.workflow\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"stageRequiredToPublish\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToOne\",\"required\":false},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflow\",\"uid\":\"plugin::review-workflows.workflow\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"stageRequiredToPublish\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToOne\",\"required\":false},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"}},\"kind\":\"collectionType\"},\"modelName\":\"workflow\"},\"plugin::review-workflows.workflow-stage\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\",\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow-stage\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows_stages\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflowStage\",\"uid\":\"plugin::review-workflows.workflow-stage\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"workflow-stage\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_permissions\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\",\"uid\":\"plugin::users-permissions.permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"permission\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.role\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_roles\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\",\"uid\":\"plugin::users-permissions.role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"role\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"timestamps\":true,\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\",\"uid\":\"plugin::users-permissions.user\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"user\"},\"api::aboutus.aboutus\":{\"kind\":\"singleType\",\"collectionName\":\"aboutuses\",\"info\":{\"singularName\":\"aboutus\",\"pluralName\":\"aboutuses\",\"displayName\":\"aboutus\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"seourl\":{\"type\":\"uid\",\"targetField\":\"name\",\"required\":true},\"heading\":{\"type\":\"component\",\"component\":\"block.pagecard\",\"repeatable\":false},\"startcard\":{\"type\":\"dynamiczone\",\"components\":[\"block.starcard\"]},\"about\":{\"type\":\"component\",\"component\":\"block.pagecard\",\"repeatable\":false},\"ourcore\":{\"type\":\"dynamiczone\",\"components\":[\"block.valuecard\"]},\"journey\":{\"type\":\"dynamiczone\",\"components\":[\"block.journey-card\"]},\"leadership\":{\"type\":\"dynamiczone\",\"components\":[\"support.employecard\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::aboutus.aboutus\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"aboutuses\"}}},\"apiName\":\"aboutus\",\"globalId\":\"Aboutus\",\"uid\":\"api::aboutus.aboutus\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"aboutuses\",\"info\":{\"singularName\":\"aboutus\",\"pluralName\":\"aboutuses\",\"displayName\":\"aboutus\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"seourl\":{\"type\":\"uid\",\"targetField\":\"name\",\"required\":true},\"heading\":{\"type\":\"component\",\"component\":\"block.pagecard\",\"repeatable\":false},\"startcard\":{\"type\":\"dynamiczone\",\"components\":[\"block.starcard\"]},\"about\":{\"type\":\"component\",\"component\":\"block.pagecard\",\"repeatable\":false},\"ourcore\":{\"type\":\"dynamiczone\",\"components\":[\"block.valuecard\"]},\"journey\":{\"type\":\"dynamiczone\",\"components\":[\"block.journey-card\"]},\"leadership\":{\"type\":\"dynamiczone\",\"components\":[\"support.employecard\"]}},\"kind\":\"singleType\"},\"modelName\":\"aboutus\",\"actions\":{},\"lifecycles\":{}},\"api::agreement.agreement\":{\"kind\":\"singleType\",\"collectionName\":\"agreements\",\"info\":{\"singularName\":\"agreement\",\"pluralName\":\"agreements\",\"displayName\":\"Agreement\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"moto\":{\"type\":\"text\"},\"description\":{\"type\":\"blocks\"},\"seourl\":{\"type\":\"uid\",\"targetField\":\"title\"},\"agreebody\":{\"type\":\"dynamiczone\",\"components\":[\"support.image-right\",\"support.image-left\",\"support.faq\",\"support.artical\",\"block.tipwarn\",\"block.tipsuccess\",\"block.tipdanger\",\"block.description\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::agreement.agreement\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"agreements\"}}},\"apiName\":\"agreement\",\"globalId\":\"Agreement\",\"uid\":\"api::agreement.agreement\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"agreements\",\"info\":{\"singularName\":\"agreement\",\"pluralName\":\"agreements\",\"displayName\":\"Agreement\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"moto\":{\"type\":\"text\"},\"description\":{\"type\":\"blocks\"},\"seourl\":{\"type\":\"uid\",\"targetField\":\"title\"},\"agreebody\":{\"type\":\"dynamiczone\",\"components\":[\"support.image-right\",\"support.image-left\",\"support.faq\",\"support.artical\",\"block.tipwarn\",\"block.tipsuccess\",\"block.tipdanger\",\"block.description\"]}},\"kind\":\"singleType\"},\"modelName\":\"agreement\",\"actions\":{},\"lifecycles\":{}},\"api::blog.blog\":{\"kind\":\"collectionType\",\"collectionName\":\"blogs\",\"info\":{\"singularName\":\"blog\",\"pluralName\":\"blogs\",\"displayName\":\"Blog\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"heading\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"text\"},\"gamecategoty\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::gamepage.gamepage\",\"inversedBy\":\"blog\"},\"seoUrl\":{\"type\":\"uid\",\"targetField\":\"heading\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\"]},\"admin_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\"},\"blogbody\":{\"type\":\"dynamiczone\",\"components\":[\"support.image-right\",\"support.image-left\",\"block.valuecard\",\"block.tipwarn\",\"block.tipsuccess\",\"support.artical\"]},\"faqBody\":{\"type\":\"dynamiczone\",\"components\":[\"support.faq\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::blog.blog\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"blogs\"}}},\"apiName\":\"blog\",\"globalId\":\"Blog\",\"uid\":\"api::blog.blog\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"blogs\",\"info\":{\"singularName\":\"blog\",\"pluralName\":\"blogs\",\"displayName\":\"Blog\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"heading\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"text\"},\"gamecategoty\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::gamepage.gamepage\",\"inversedBy\":\"blog\"},\"seoUrl\":{\"type\":\"uid\",\"targetField\":\"heading\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\"]},\"admin_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\"},\"blogbody\":{\"type\":\"dynamiczone\",\"components\":[\"support.image-right\",\"support.image-left\",\"block.valuecard\",\"block.tipwarn\",\"block.tipsuccess\",\"support.artical\"]},\"faqBody\":{\"type\":\"dynamiczone\",\"components\":[\"support.faq\"]}},\"kind\":\"collectionType\"},\"modelName\":\"blog\",\"actions\":{},\"lifecycles\":{}},\"api::faq.faq\":{\"kind\":\"singleType\",\"collectionName\":\"faqs\",\"info\":{\"singularName\":\"faq\",\"pluralName\":\"faqs\",\"displayName\":\"faq\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"text\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\"]},\"seourl\":{\"type\":\"uid\",\"targetField\":\"title\"},\"faqbody\":{\"type\":\"dynamiczone\",\"components\":[\"support.faq\",\"block.description\",\"block.tipwarn\",\"block.tipsuccess\",\"block.tipdanger\",\"support.artical\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::faq.faq\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"faqs\"}}},\"apiName\":\"faq\",\"globalId\":\"Faq\",\"uid\":\"api::faq.faq\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"faqs\",\"info\":{\"singularName\":\"faq\",\"pluralName\":\"faqs\",\"displayName\":\"faq\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"text\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\"]},\"seourl\":{\"type\":\"uid\",\"targetField\":\"title\"},\"faqbody\":{\"type\":\"dynamiczone\",\"components\":[\"support.faq\",\"block.description\",\"block.tipwarn\",\"block.tipsuccess\",\"block.tipdanger\",\"support.artical\"]}},\"kind\":\"singleType\"},\"modelName\":\"faq\",\"actions\":{},\"lifecycles\":{}},\"api::faqtype.faqtype\":{\"kind\":\"collectionType\",\"collectionName\":\"faqtypes\",\"info\":{\"singularName\":\"faqtype\",\"pluralName\":\"faqtypes\",\"displayName\":\"Faqtype\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"icon\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\"]},\"seourl\":{\"type\":\"uid\",\"targetField\":\"title\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::faqtype.faqtype\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"faqtypes\"}}},\"apiName\":\"faqtype\",\"globalId\":\"Faqtype\",\"uid\":\"api::faqtype.faqtype\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"faqtypes\",\"info\":{\"singularName\":\"faqtype\",\"pluralName\":\"faqtypes\",\"displayName\":\"Faqtype\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"icon\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\"]},\"seourl\":{\"type\":\"uid\",\"targetField\":\"title\"}},\"kind\":\"collectionType\"},\"modelName\":\"faqtype\",\"actions\":{},\"lifecycles\":{}},\"api::gamepage.gamepage\":{\"kind\":\"collectionType\",\"collectionName\":\"gamepages\",\"info\":{\"singularName\":\"gamepage\",\"pluralName\":\"gamepages\",\"displayName\":\"gamecategoty\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"pagename\":{\"type\":\"string\",\"required\":true},\"image\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\"]},\"description\":{\"type\":\"text\"},\"seourl\":{\"type\":\"uid\",\"targetField\":\"pagename\",\"required\":true},\"gamebody\":{\"type\":\"dynamiczone\",\"components\":[\"support.image-right\",\"support.image-left\",\"support.artical\",\"block.tipwarn\",\"block.tipsuccess\",\"block.tipdanger\"]},\"gamefaq\":{\"type\":\"component\",\"component\":\"support.faq\",\"repeatable\":true},\"playgames\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::playgame.playgame\",\"inversedBy\":\"gamecategoties\"},\"sponsors\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::sponsor.sponsor\",\"inversedBy\":\"gamecategoties\"},\"blog\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::blog.blog\",\"mappedBy\":\"gamecategoty\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::gamepage.gamepage\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"gamepages\"}}},\"apiName\":\"gamepage\",\"globalId\":\"Gamepage\",\"uid\":\"api::gamepage.gamepage\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"gamepages\",\"info\":{\"singularName\":\"gamepage\",\"pluralName\":\"gamepages\",\"displayName\":\"gamecategoty\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"pagename\":{\"type\":\"string\",\"required\":true},\"image\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\"]},\"description\":{\"type\":\"text\"},\"seourl\":{\"type\":\"uid\",\"targetField\":\"pagename\",\"required\":true},\"gamebody\":{\"type\":\"dynamiczone\",\"components\":[\"support.image-right\",\"support.image-left\",\"support.artical\",\"block.tipwarn\",\"block.tipsuccess\",\"block.tipdanger\"]},\"gamefaq\":{\"type\":\"component\",\"component\":\"support.faq\",\"repeatable\":true},\"playgames\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::playgame.playgame\",\"inversedBy\":\"gamecategoties\"},\"sponsors\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::sponsor.sponsor\",\"inversedBy\":\"gamecategoties\"},\"blog\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::blog.blog\",\"mappedBy\":\"gamecategoty\"}},\"kind\":\"collectionType\"},\"modelName\":\"gamepage\",\"actions\":{},\"lifecycles\":{}},\"api::landingpage.landingpage\":{\"kind\":\"singleType\",\"collectionName\":\"landingpages\",\"info\":{\"singularName\":\"landingpage\",\"pluralName\":\"landingpages\",\"displayName\":\"Landingpage\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"mainslider\":{\"type\":\"component\",\"component\":\"block.slider\",\"repeatable\":true},\"Featuregame\":{\"type\":\"component\",\"component\":\"block.linkcard\",\"repeatable\":true},\"sportbody\":{\"type\":\"dynamiczone\",\"components\":[\"block.sportcard\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::landingpage.landingpage\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"landingpages\"}}},\"apiName\":\"landingpage\",\"globalId\":\"Landingpage\",\"uid\":\"api::landingpage.landingpage\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"landingpages\",\"info\":{\"singularName\":\"landingpage\",\"pluralName\":\"landingpages\",\"displayName\":\"Landingpage\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"mainslider\":{\"type\":\"component\",\"component\":\"block.slider\",\"repeatable\":true},\"Featuregame\":{\"type\":\"component\",\"component\":\"block.linkcard\",\"repeatable\":true},\"sportbody\":{\"type\":\"dynamiczone\",\"components\":[\"block.sportcard\"]}},\"kind\":\"singleType\"},\"modelName\":\"landingpage\",\"actions\":{},\"lifecycles\":{}},\"api::playgame.playgame\":{\"kind\":\"collectionType\",\"collectionName\":\"playgames\",\"info\":{\"singularName\":\"playgame\",\"pluralName\":\"playgames\",\"displayName\":\"playgame\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"gamename\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"iamge\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\"]},\"seourl\":{\"type\":\"uid\",\"targetField\":\"gamename\"},\"gamecategoties\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::gamepage.gamepage\",\"mappedBy\":\"playgames\"},\"gameurl\":{\"type\":\"string\"},\"bodysponce\":{\"type\":\"dynamiczone\",\"components\":[\"support.image-left\",\"support.image-right\",\"support.artical\",\"block.tipwarn\",\"block.tipsuccess\",\"block.tipdanger\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::playgame.playgame\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"playgames\"}}},\"apiName\":\"playgame\",\"globalId\":\"Playgame\",\"uid\":\"api::playgame.playgame\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"playgames\",\"info\":{\"singularName\":\"playgame\",\"pluralName\":\"playgames\",\"displayName\":\"playgame\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"gamename\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"iamge\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\"]},\"seourl\":{\"type\":\"uid\",\"targetField\":\"gamename\"},\"gamecategoties\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::gamepage.gamepage\",\"mappedBy\":\"playgames\"},\"gameurl\":{\"type\":\"string\"},\"bodysponce\":{\"type\":\"dynamiczone\",\"components\":[\"support.image-left\",\"support.image-right\",\"support.artical\",\"block.tipwarn\",\"block.tipsuccess\",\"block.tipdanger\"]}},\"kind\":\"collectionType\"},\"modelName\":\"playgame\",\"actions\":{},\"lifecycles\":{}},\"api::sponsor.sponsor\":{\"kind\":\"collectionType\",\"collectionName\":\"sponsors\",\"info\":{\"singularName\":\"sponsor\",\"pluralName\":\"sponsors\",\"displayName\":\"sponsor\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"text\"},\"logo\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\"]},\"heroimage\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\"]},\"gamecategoties\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::gamepage.gamepage\",\"mappedBy\":\"sponsors\"},\"seourl\":{\"type\":\"uid\",\"targetField\":\"name\"},\"bodysponce\":{\"type\":\"dynamiczone\",\"components\":[\"support.image-right\",\"support.image-left\",\"support.artical\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::sponsor.sponsor\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"sponsors\"}}},\"apiName\":\"sponsor\",\"globalId\":\"Sponsor\",\"uid\":\"api::sponsor.sponsor\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"sponsors\",\"info\":{\"singularName\":\"sponsor\",\"pluralName\":\"sponsors\",\"displayName\":\"sponsor\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"text\"},\"logo\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\"]},\"heroimage\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\"]},\"gamecategoties\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::gamepage.gamepage\",\"mappedBy\":\"sponsors\"},\"seourl\":{\"type\":\"uid\",\"targetField\":\"name\"},\"bodysponce\":{\"type\":\"dynamiczone\",\"components\":[\"support.image-right\",\"support.image-left\",\"support.artical\"]}},\"kind\":\"collectionType\"},\"modelName\":\"sponsor\",\"actions\":{},\"lifecycles\":{}},\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminPermission\",\"uid\":\"admin::permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelName\":\"permission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::user\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"plugin\":\"admin\",\"globalId\":\"AdminUser\",\"uid\":\"admin::user\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"user\",\"options\":{\"draftAndPublish\":false}},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::role\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_roles\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminRole\",\"uid\":\"admin::role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelName\":\"role\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"encryptedKey\":{\"type\":\"text\",\"minLength\":1,\"configurable\":false,\"required\":false,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\",\"uid\":\"admin::api-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"encryptedKey\":{\"type\":\"text\",\"minLength\":1,\"configurable\":false,\"required\":false,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"api-token\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token-permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\",\"uid\":\"admin::api-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"api-token-permission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\",\"uid\":\"admin::transfer-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token-permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\",\"uid\":\"admin::transfer-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token-permission\"},\"admin::session\":{\"collectionName\":\"strapi_sessions\",\"info\":{\"name\":\"Session\",\"description\":\"Session Manager storage\",\"singularName\":\"session\",\"pluralName\":\"sessions\",\"displayName\":\"Session\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false},\"i18n\":{\"localized\":false}},\"attributes\":{\"userId\":{\"type\":\"string\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"sessionId\":{\"type\":\"string\",\"unique\":true,\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"childId\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"deviceId\":{\"type\":\"string\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"origin\":{\"type\":\"string\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"expiresAt\":{\"type\":\"datetime\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"absoluteExpiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"private\":true,\"searchable\":false},\"status\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"type\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":true},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::session\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_sessions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminSession\",\"uid\":\"admin::session\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_sessions\",\"info\":{\"name\":\"Session\",\"description\":\"Session Manager storage\",\"singularName\":\"session\",\"pluralName\":\"sessions\",\"displayName\":\"Session\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false},\"i18n\":{\"localized\":false}},\"attributes\":{\"userId\":{\"type\":\"string\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"sessionId\":{\"type\":\"string\",\"unique\":true,\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"childId\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"deviceId\":{\"type\":\"string\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"origin\":{\"type\":\"string\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"expiresAt\":{\"type\":\"datetime\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"absoluteExpiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"private\":true,\"searchable\":false},\"status\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"type\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"session\"}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(3, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]},\"uid\":\"plugin::upload.file\"}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]},\"uid\":\"plugin::upload.folder\"}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]},\"uid\":\"plugin::i18n.locale\"}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"releasedAt\":{\"edit\":{\"label\":\"releasedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"releasedAt\",\"searchable\":true,\"sortable\":true}},\"scheduledAt\":{\"edit\":{\"label\":\"scheduledAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"scheduledAt\",\"searchable\":true,\"sortable\":true}},\"timezone\":{\"edit\":{\"label\":\"timezone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"timezone\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"actions\":{\"edit\":{\"label\":\"actions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"contentType\"},\"list\":{\"label\":\"actions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"releasedAt\",\"scheduledAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"releasedAt\",\"size\":6}],[{\"name\":\"scheduledAt\",\"size\":6},{\"name\":\"timezone\",\"size\":6}],[{\"name\":\"status\",\"size\":6},{\"name\":\"actions\",\"size\":6}]]},\"uid\":\"plugin::content-releases.release\"}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release-action', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"contentType\",\"defaultSortBy\":\"contentType\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"contentType\":{\"edit\":{\"label\":\"contentType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentType\",\"searchable\":true,\"sortable\":true}},\"entryDocumentId\":{\"edit\":{\"label\":\"entryDocumentId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"entryDocumentId\",\"searchable\":true,\"sortable\":true}},\"release\":{\"edit\":{\"label\":\"release\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"release\",\"searchable\":true,\"sortable\":true}},\"isEntryValid\":{\"edit\":{\"label\":\"isEntryValid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isEntryValid\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"contentType\",\"entryDocumentId\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"contentType\",\"size\":6}],[{\"name\":\"entryDocumentId\",\"size\":6},{\"name\":\"release\",\"size\":6}],[{\"name\":\"isEntryValid\",\"size\":4}]]},\"uid\":\"plugin::content-releases.release-action\"}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"stages\":{\"edit\":{\"label\":\"stages\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"stages\",\"searchable\":false,\"sortable\":false}},\"stageRequiredToPublish\":{\"edit\":{\"label\":\"stageRequiredToPublish\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"stageRequiredToPublish\",\"searchable\":true,\"sortable\":true}},\"contentTypes\":{\"edit\":{\"label\":\"contentTypes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentTypes\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"stages\",\"stageRequiredToPublish\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"stages\",\"size\":6}],[{\"name\":\"stageRequiredToPublish\",\"size\":6}],[{\"name\":\"contentTypes\",\"size\":12}]]},\"uid\":\"plugin::review-workflows.workflow\"}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}},\"workflow\":{\"edit\":{\"label\":\"workflow\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"workflow\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"color\",\"workflow\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"color\",\"size\":6}],[{\"name\":\"workflow\",\"size\":6},{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"plugin::review-workflows.workflow-stage\"}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.permission\"}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::admin::session', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"userId\",\"defaultSortBy\":\"userId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"userId\":{\"edit\":{\"label\":\"userId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"userId\",\"searchable\":true,\"sortable\":true}},\"sessionId\":{\"edit\":{\"label\":\"sessionId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sessionId\",\"searchable\":true,\"sortable\":true}},\"childId\":{\"edit\":{\"label\":\"childId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"childId\",\"searchable\":true,\"sortable\":true}},\"deviceId\":{\"edit\":{\"label\":\"deviceId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deviceId\",\"searchable\":true,\"sortable\":true}},\"origin\":{\"edit\":{\"label\":\"origin\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"origin\",\"searchable\":true,\"sortable\":true}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"absoluteExpiresAt\":{\"edit\":{\"label\":\"absoluteExpiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"absoluteExpiresAt\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"userId\",\"sessionId\",\"childId\"],\"edit\":[[{\"name\":\"userId\",\"size\":6},{\"name\":\"sessionId\",\"size\":6}],[{\"name\":\"childId\",\"size\":6},{\"name\":\"deviceId\",\"size\":6}],[{\"name\":\"origin\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"absoluteExpiresAt\",\"size\":6},{\"name\":\"status\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]},\"uid\":\"admin::session\"}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"encryptedKey\":{\"edit\":{\"label\":\"encryptedKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"encryptedKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"encryptedKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::api-token\"}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::admin::role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"admin::role\"}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.user\"}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}],[{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]},\"uid\":\"admin::permission\"}', 'object', NULL, NULL),
(16, 'plugin_content_manager_configuration_content_types::admin::user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]},\"uid\":\"admin::user\"}', 'object', NULL, NULL),
(17, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.role\"}', 'object', NULL, NULL),
(18, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::api-token-permission\"}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(19, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::transfer-token\"}', 'object', NULL, NULL),
(20, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::transfer-token-permission\"}', 'object', NULL, NULL),
(21, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false,\"aiMetadata\":true}', 'object', NULL, NULL),
(22, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(23, 'plugin_upload_metrics', '{\"weeklySchedule\":\"0 22 1 * * 1\",\"lastWeeklyUpdate\":1769975520808}', 'object', NULL, NULL),
(24, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(25, 'plugin_users-permissions_grant', '{\"email\":{\"icon\":\"envelope\",\"enabled\":true},\"discord\":{\"icon\":\"discord\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"icon\":\"facebook-square\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"icon\":\"google\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"icon\":\"github\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"icon\":\"windows\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"icon\":\"twitter\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitter/callback\"},\"instagram\":{\"icon\":\"instagram\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"icon\":\"vk\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"icon\":\"twitch\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"icon\":\"linkedin\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"icon\":\"aws\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"icon\":\"reddit\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"icon\":\"book\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]},\"keycloak\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"myKeycloakProvider.com/realms/myrealm\",\"callback\":\"api/auth/keycloak/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}', 'object', NULL, NULL),
(26, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(27, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(28, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_components::block.slider', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"urllink\":{\"edit\":{\"label\":\"urllink\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"urllink\",\"searchable\":true,\"sortable\":true}},\"isExternal\":{\"edit\":{\"label\":\"isExternal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isExternal\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"image\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"urllink\",\"size\":6}],[{\"name\":\"isExternal\",\"size\":4}]]},\"uid\":\"block.slider\",\"isComponent\":true}', 'object', NULL, NULL),
(30, 'plugin_content_manager_configuration_components::block.description', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"documentId\",\"defaultSortBy\":\"documentId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"description\",\"size\":12}]]},\"uid\":\"block.description\",\"isComponent\":true}', 'object', NULL, NULL),
(31, 'plugin_content_manager_configuration_components::block.starcard', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}]]},\"uid\":\"block.starcard\",\"isComponent\":true}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_components::block.valuecard', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"image\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"image\",\"size\":6}]]},\"uid\":\"block.valuecard\",\"isComponent\":true}', 'object', NULL, NULL),
(33, 'plugin_content_manager_configuration_components::block.pagecard', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}]]},\"uid\":\"block.pagecard\",\"isComponent\":true}', 'object', NULL, NULL),
(34, 'plugin_content_manager_configuration_components::block.tipwarn', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"image\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]},\"uid\":\"block.tipwarn\",\"isComponent\":true}', 'object', NULL, NULL),
(35, 'plugin_content_manager_configuration_components::block.tipsuccess', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"image\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]},\"uid\":\"block.tipsuccess\",\"isComponent\":true}', 'object', NULL, NULL),
(36, 'plugin_content_manager_configuration_components::block.tipdanger', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"image\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]},\"uid\":\"block.tipdanger\",\"isComponent\":true}', 'object', NULL, NULL),
(37, 'plugin_content_manager_configuration_components::support.employecard', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"designation\":{\"edit\":{\"label\":\"designation\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"designation\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"image\",\"designation\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"designation\",\"size\":6}],[{\"name\":\"description\",\"size\":12}]]},\"uid\":\"support.employecard\",\"isComponent\":true}', 'object', NULL, NULL),
(38, 'plugin_content_manager_configuration_components::support.suportcard', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"icon\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"icon\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]},\"uid\":\"support.suportcard\",\"isComponent\":true}', 'object', NULL, NULL),
(39, 'plugin_content_manager_configuration_components::support.image-left', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"image\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"description\",\"size\":12}]]},\"uid\":\"support.image-left\",\"isComponent\":true}', 'object', NULL, NULL),
(40, 'plugin_content_manager_configuration_components::support.image-right', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"image\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"description\",\"size\":12}]]},\"uid\":\"support.image-right\",\"isComponent\":true}', 'object', NULL, NULL),
(41, 'plugin_content_manager_configuration_components::support.faq', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"faqtype\":{\"edit\":{\"label\":\"faqtype\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"faqtype\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"faqtype\"],\"edit\":[[{\"name\":\"name\",\"size\":6}],[{\"name\":\"description\",\"size\":12}],[{\"name\":\"faqtype\",\"size\":6}]]},\"uid\":\"support.faq\",\"isComponent\":true}', 'object', NULL, NULL),
(42, 'plugin_content_manager_configuration_content_types::api::aboutus.aboutus', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"seourl\":{\"edit\":{\"label\":\"seourl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seourl\",\"searchable\":true,\"sortable\":true}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":false,\"sortable\":false}},\"startcard\":{\"edit\":{\"label\":\"startcard\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"startcard\",\"searchable\":false,\"sortable\":false}},\"about\":{\"edit\":{\"label\":\"about\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"about\",\"searchable\":false,\"sortable\":false}},\"ourcore\":{\"edit\":{\"label\":\"ourcore\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ourcore\",\"searchable\":false,\"sortable\":false}},\"journey\":{\"edit\":{\"label\":\"journey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"journey\",\"searchable\":false,\"sortable\":false}},\"leadership\":{\"edit\":{\"label\":\"leadership\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"leadership\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"seourl\",\"heading\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"seourl\",\"size\":6}],[{\"name\":\"heading\",\"size\":12}],[{\"name\":\"startcard\",\"size\":12}],[{\"name\":\"about\",\"size\":12}],[{\"name\":\"ourcore\",\"size\":12}],[{\"name\":\"journey\",\"size\":12}],[{\"name\":\"leadership\",\"size\":12}]]},\"uid\":\"api::aboutus.aboutus\"}', 'object', NULL, NULL),
(43, 'plugin_content_manager_configuration_components::block.journey-card', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"year\":{\"edit\":{\"label\":\"year\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"year\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"year\",\"title\",\"description\"],\"edit\":[[{\"name\":\"year\",\"size\":4},{\"name\":\"title\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]},\"uid\":\"block.journey-card\",\"isComponent\":true}', 'object', NULL, NULL),
(44, 'plugin_content_manager_configuration_content_types::api::gamepage.gamepage', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"pagename\",\"defaultSortBy\":\"pagename\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"pagename\":{\"edit\":{\"label\":\"pagename\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pagename\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"seourl\":{\"edit\":{\"label\":\"seourl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seourl\",\"searchable\":true,\"sortable\":true}},\"gamebody\":{\"edit\":{\"label\":\"gamebody\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"gamebody\",\"searchable\":false,\"sortable\":false}},\"gamefaq\":{\"edit\":{\"label\":\"gamefaq\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"gamefaq\",\"searchable\":false,\"sortable\":false}},\"playgames\":{\"edit\":{\"label\":\"playgames\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"gamename\"},\"list\":{\"label\":\"playgames\",\"searchable\":false,\"sortable\":false}},\"sponsors\":{\"edit\":{\"label\":\"sponsors\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"sponsors\",\"searchable\":false,\"sortable\":false}},\"blog\":{\"edit\":{\"label\":\"blog\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"heading\"},\"list\":{\"label\":\"blog\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"pagename\",\"image\",\"description\"],\"edit\":[[{\"name\":\"pagename\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"description\",\"size\":6}],[{\"name\":\"gamebody\",\"size\":12}],[{\"name\":\"gamefaq\",\"size\":12}],[{\"name\":\"seourl\",\"size\":6}],[{\"name\":\"playgames\",\"size\":6},{\"name\":\"sponsors\",\"size\":6}],[{\"name\":\"blog\",\"size\":6}]]},\"uid\":\"api::gamepage.gamepage\"}', 'object', NULL, NULL),
(45, 'plugin_content_manager_configuration_components::support.artical', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"description\",\"size\":12}]]},\"uid\":\"support.artical\",\"isComponent\":true}', 'object', NULL, NULL),
(47, 'plugin_content_manager_configuration_content_types::api::playgame.playgame', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"gamename\",\"defaultSortBy\":\"gamename\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"gamename\":{\"edit\":{\"label\":\"gamename\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"gamename\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"iamge\":{\"edit\":{\"label\":\"iamge\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"iamge\",\"searchable\":false,\"sortable\":false}},\"seourl\":{\"edit\":{\"label\":\"seourl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seourl\",\"searchable\":true,\"sortable\":true}},\"gamecategoties\":{\"edit\":{\"label\":\"gamecategoties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"pagename\"},\"list\":{\"label\":\"gamecategoties\",\"searchable\":false,\"sortable\":false}},\"gameurl\":{\"edit\":{\"label\":\"gameurl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"gameurl\",\"searchable\":true,\"sortable\":true}},\"bodysponce\":{\"edit\":{\"label\":\"bodysponce\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bodysponce\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"gamename\",\"description\",\"iamge\"],\"edit\":[[{\"name\":\"gamename\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"iamge\",\"size\":6},{\"name\":\"seourl\",\"size\":6}],[{\"name\":\"gamecategoties\",\"size\":6},{\"name\":\"gameurl\",\"size\":6}],[{\"name\":\"bodysponce\",\"size\":12}]]},\"uid\":\"api::playgame.playgame\"}', 'object', NULL, NULL),
(48, 'plugin_content_manager_configuration_content_types::api::sponsor.sponsor', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}},\"gamecategoties\":{\"edit\":{\"label\":\"gamecategoties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"pagename\"},\"list\":{\"label\":\"gamecategoties\",\"searchable\":false,\"sortable\":false}},\"seourl\":{\"edit\":{\"label\":\"seourl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seourl\",\"searchable\":true,\"sortable\":true}},\"bodysponce\":{\"edit\":{\"label\":\"bodysponce\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bodysponce\",\"searchable\":false,\"sortable\":false}},\"heroimage\":{\"edit\":{\"label\":\"heroimage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heroimage\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"logo\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"logo\",\"size\":6},{\"name\":\"gamecategoties\",\"size\":6}],[{\"name\":\"seourl\",\"size\":6}],[{\"name\":\"bodysponce\",\"size\":12}],[{\"name\":\"heroimage\",\"size\":6}]]},\"uid\":\"api::sponsor.sponsor\"}', 'object', NULL, NULL),
(49, 'plugin_content_manager_configuration_content_types::api::blog.blog', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"seoUrl\":{\"edit\":{\"label\":\"seoUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seoUrl\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"admin_user\":{\"edit\":{\"label\":\"admin_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"admin_user\",\"searchable\":true,\"sortable\":true}},\"blogbody\":{\"edit\":{\"label\":\"blogbody\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blogbody\",\"searchable\":false,\"sortable\":false}},\"faqBody\":{\"edit\":{\"label\":\"faqBody\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"faqBody\",\"searchable\":false,\"sortable\":false}},\"gamecategoty\":{\"edit\":{\"label\":\"gamecategoty\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"pagename\"},\"list\":{\"label\":\"gamecategoty\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"description\",\"seoUrl\"],\"edit\":[[{\"name\":\"heading\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"seoUrl\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"admin_user\",\"size\":6}],[{\"name\":\"blogbody\",\"size\":12}],[{\"name\":\"faqBody\",\"size\":12}],[{\"name\":\"gamecategoty\",\"size\":6}]]},\"uid\":\"api::blog.blog\"}', 'object', NULL, NULL),
(50, 'plugin_content_manager_configuration_content_types::api::faq.faq', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"seourl\":{\"edit\":{\"label\":\"seourl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seourl\",\"searchable\":true,\"sortable\":true}},\"faqbody\":{\"edit\":{\"label\":\"faqbody\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"faqbody\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"image\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"image\",\"size\":6},{\"name\":\"seourl\",\"size\":6}],[{\"name\":\"faqbody\",\"size\":12}]]},\"uid\":\"api::faq.faq\"}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(51, 'plugin_content_manager_configuration_content_types::api::agreement.agreement', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"moto\":{\"edit\":{\"label\":\"moto\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"moto\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"seourl\":{\"edit\":{\"label\":\"seourl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seourl\",\"searchable\":true,\"sortable\":true}},\"agreebody\":{\"edit\":{\"label\":\"agreebody\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"agreebody\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"moto\",\"seourl\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"moto\",\"size\":6}],[{\"name\":\"description\",\"size\":12}],[{\"name\":\"seourl\",\"size\":6}],[{\"name\":\"agreebody\",\"size\":12}]]},\"uid\":\"api::agreement.agreement\"}', 'object', NULL, NULL),
(52, 'plugin_content_manager_configuration_content_types::api::faqtype.faqtype', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}},\"seourl\":{\"edit\":{\"label\":\"seourl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seourl\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"icon\",\"seourl\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"icon\",\"size\":6}],[{\"name\":\"seourl\",\"size\":6}]]},\"uid\":\"api::faqtype.faqtype\"}', 'object', NULL, NULL),
(53, 'plugin_content_manager_configuration_content_types::api::landingpage.landingpage', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"mainslider\":{\"edit\":{\"label\":\"mainslider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mainslider\",\"searchable\":false,\"sortable\":false}},\"Featuregame\":{\"edit\":{\"label\":\"Featuregame\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Featuregame\",\"searchable\":false,\"sortable\":false}},\"sportbody\":{\"edit\":{\"label\":\"sportbody\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sportbody\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"mainslider\",\"createdAt\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"mainslider\",\"size\":12}],[{\"name\":\"sportbody\",\"size\":12}],[{\"name\":\"Featuregame\",\"size\":12}]]},\"uid\":\"api::landingpage.landingpage\"}', 'object', NULL, NULL),
(54, 'core_admin_project-settings', '{\"menuLogo\":{\"name\":\"nlogo.png\",\"hash\":\"nlogo_599a242749\",\"url\":\"/uploads/nlogo_599a242749.png\",\"width\":85,\"height\":80,\"ext\":\".png\",\"size\":17.83,\"provider\":\"local\"},\"authLogo\":{\"name\":\"nlogo.png\",\"hash\":\"nlogo_3e75d333bf\",\"url\":\"/uploads/nlogo_3e75d333bf.png\",\"width\":85,\"height\":80,\"ext\":\".png\",\"size\":17.83,\"provider\":\"local\"}}', 'object', NULL, NULL),
(56, 'plugin_content_manager_configuration_components::block.sportcard', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"icon\",\"image\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"icon\",\"size\":6}],[{\"name\":\"image\",\"size\":6},{\"name\":\"description\",\"size\":6}]]},\"uid\":\"block.sportcard\",\"isComponent\":true}', 'object', NULL, NULL),
(57, 'plugin_content_manager_configuration_components::block.linkcard', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"linkurl\":{\"edit\":{\"label\":\"linkurl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"linkurl\",\"searchable\":true,\"sortable\":true}},\"isextarnal\":{\"edit\":{\"label\":\"isextarnal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isextarnal\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"image\",\"linkurl\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"linkurl\",\"size\":6},{\"name\":\"isextarnal\",\"size\":4}]]},\"uid\":\"block.linkcard\",\"isComponent\":true}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(57, '{\"tables\":[{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_releases\",\"indexes\":[{\"name\":\"strapi_releases_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"released_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"scheduled_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"timezone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_release_actions\",\"indexes\":[{\"name\":\"strapi_release_actions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"entry_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_entry_valid\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows\",\"indexes\":[{\"name\":\"strapi_workflows_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_types\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_workflows_stages\",\"indexes\":[{\"name\":\"strapi_workflows_stages_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"aboutuses_cmps\",\"indexes\":[{\"name\":\"aboutuses_field_idx\",\"columns\":[\"field\"]},{\"name\":\"aboutuses_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"aboutuses_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"aboutuses_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"aboutuses_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"aboutuses\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"aboutuses\",\"indexes\":[{\"name\":\"aboutuses_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"aboutuses_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"aboutuses_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"aboutuses_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"aboutuses_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"seourl\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"agreements_cmps\",\"indexes\":[{\"name\":\"agreements_field_idx\",\"columns\":[\"field\"]},{\"name\":\"agreements_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"agreements_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"agreements_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"agreements_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agreements\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"agreements\",\"indexes\":[{\"name\":\"agreements_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"agreements_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"agreements_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"agreements_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"agreements_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"moto\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"seourl\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"blogs_cmps\",\"indexes\":[{\"name\":\"blogs_field_idx\",\"columns\":[\"field\"]},{\"name\":\"blogs_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"blogs_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"blogs_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"blogs_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"blogs\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"blogs\",\"indexes\":[{\"name\":\"blogs_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"blogs_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"blogs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"blogs_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"blogs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"heading\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"seo_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"faqs_cmps\",\"indexes\":[{\"name\":\"faqs_field_idx\",\"columns\":[\"field\"]},{\"name\":\"faqs_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"faqs_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"faqs_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"faqs_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"faqs\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"faqs\",\"indexes\":[{\"name\":\"faqs_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"faqs_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"faqs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"faqs_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"faqs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"seourl\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"faqtypes\",\"indexes\":[{\"name\":\"faqtypes_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"faqtypes_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"faqtypes_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"faqtypes_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"faqtypes_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"seourl\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"gamepages_cmps\",\"indexes\":[{\"name\":\"gamepages_field_idx\",\"columns\":[\"field\"]},{\"name\":\"gamepages_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"gamepages_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"gamepages_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"gamepages_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"gamepages\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"gamepages\",\"indexes\":[{\"name\":\"gamepages_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"gamepages_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"gamepages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"gamepages_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"gamepages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"pagename\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"seourl\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"landingpages_cmps\",\"indexes\":[{\"name\":\"landingpages_field_idx\",\"columns\":[\"field\"]},{\"name\":\"landingpages_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"landingpages_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"landingpages_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"landingpages_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"landingpages\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"landingpages\",\"indexes\":[{\"name\":\"landingpages_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"landingpages_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"landingpages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"landingpages_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"landingpages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"playgames_cmps\",\"indexes\":[{\"name\":\"playgames_field_idx\",\"columns\":[\"field\"]},{\"name\":\"playgames_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"playgames_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"playgames_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"playgames_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"playgames\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"playgames\",\"indexes\":[{\"name\":\"playgames_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"playgames_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"playgames_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"playgames_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"playgames_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"gamename\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"seourl\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"gameurl\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"sponsors_cmps\",\"indexes\":[{\"name\":\"sponsors_field_idx\",\"columns\":[\"field\"]},{\"name\":\"sponsors_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"sponsors_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"sponsors_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"sponsors_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sponsors\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"sponsors\",\"indexes\":[{\"name\":\"sponsors_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"sponsors_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"sponsors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"sponsors_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"sponsors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"seourl\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action_parameters\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"encrypted_key\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_sessions\",\"indexes\":[{\"name\":\"strapi_sessions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_sessions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_sessions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_sessions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_sessions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"session_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"child_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"device_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"origin\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"absolute_expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_support_suportcards\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_support_image_rights\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_support_image_lefts\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_support_faqs\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_support_employecards\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"designation\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_support_articals\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_block_valuecards\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_block_tipwarns\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_block_tipsuccesses\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_block_tipdangers\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_block_starcards\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_block_sportcards\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_block_sliders\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"urllink\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_external\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_block_pagecards\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_block_linkcards\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"linkurl\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"isextarnal\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_block_journey_cards\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"year\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_block_descriptions\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"description\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_history_versions\",\"indexes\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"related_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"data\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"schema\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_ai_metadata_jobs\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"completed_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_ai_localization_jobs\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"related_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"source_locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"target_locales\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"files_related_mph\",\"indexes\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_mph_oidx\",\"columns\":[\"order\"]},{\"name\":\"files_related_mph_idix\",\"columns\":[\"related_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_lnk\",\"indexes\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_lnk_uq\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_lnk_oifk\",\"columns\":[\"file_ord\"]}],\"foreignKeys\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_lnk\",\"indexes\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_lnk_uq\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_lnk_oifk\",\"columns\":[\"folder_ord\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_release_actions_release_lnk\",\"indexes\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"]},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"]},{\"name\":\"strapi_release_actions_release_lnk_uq\",\"columns\":[\"release_action_id\",\"release_id\"],\"type\":\"unique\"},{\"name\":\"strapi_release_actions_release_lnk_oifk\",\"columns\":[\"release_action_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_release_actions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_releases\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"release_action_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_action_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_fk\",\"columns\":[\"workflow_id\"]},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_ifk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_uq\",\"columns\":[\"workflow_id\",\"workflow_stage_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_fk\",\"columns\":[\"workflow_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_ifk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_workflow_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"workflow_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_oifk\",\"columns\":[\"workflow_stage_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_stage_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_permissions_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"permission_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ofk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_lnk\",\"indexes\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_lnk\",\"indexes\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"blogs_gamecategoty_lnk\",\"indexes\":[{\"name\":\"blogs_gamecategoty_lnk_fk\",\"columns\":[\"blog_id\"]},{\"name\":\"blogs_gamecategoty_lnk_ifk\",\"columns\":[\"gamepage_id\"]},{\"name\":\"blogs_gamecategoty_lnk_uq\",\"columns\":[\"blog_id\",\"gamepage_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"blogs_gamecategoty_lnk_fk\",\"columns\":[\"blog_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"blogs\",\"onDelete\":\"CASCADE\"},{\"name\":\"blogs_gamecategoty_lnk_ifk\",\"columns\":[\"gamepage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"gamepages\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"blog_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"gamepage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"blogs_admin_user_lnk\",\"indexes\":[{\"name\":\"blogs_admin_user_lnk_fk\",\"columns\":[\"blog_id\"]},{\"name\":\"blogs_admin_user_lnk_ifk\",\"columns\":[\"user_id\"]},{\"name\":\"blogs_admin_user_lnk_uq\",\"columns\":[\"blog_id\",\"user_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"blogs_admin_user_lnk_fk\",\"columns\":[\"blog_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"blogs\",\"onDelete\":\"CASCADE\"},{\"name\":\"blogs_admin_user_lnk_ifk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"blog_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"gamepages_playgames_lnk\",\"indexes\":[{\"name\":\"gamepages_playgames_lnk_fk\",\"columns\":[\"gamepage_id\"]},{\"name\":\"gamepages_playgames_lnk_ifk\",\"columns\":[\"playgame_id\"]},{\"name\":\"gamepages_playgames_lnk_uq\",\"columns\":[\"gamepage_id\",\"playgame_id\"],\"type\":\"unique\"},{\"name\":\"gamepages_playgames_lnk_ofk\",\"columns\":[\"playgame_ord\"]},{\"name\":\"gamepages_playgames_lnk_oifk\",\"columns\":[\"gamepage_ord\"]}],\"foreignKeys\":[{\"name\":\"gamepages_playgames_lnk_fk\",\"columns\":[\"gamepage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"gamepages\",\"onDelete\":\"CASCADE\"},{\"name\":\"gamepages_playgames_lnk_ifk\",\"columns\":[\"playgame_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"playgames\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"gamepage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"playgame_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"playgame_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"gamepage_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"gamepages_sponsors_lnk\",\"indexes\":[{\"name\":\"gamepages_sponsors_lnk_fk\",\"columns\":[\"gamepage_id\"]},{\"name\":\"gamepages_sponsors_lnk_ifk\",\"columns\":[\"sponsor_id\"]},{\"name\":\"gamepages_sponsors_lnk_uq\",\"columns\":[\"gamepage_id\",\"sponsor_id\"],\"type\":\"unique\"},{\"name\":\"gamepages_sponsors_lnk_ofk\",\"columns\":[\"sponsor_ord\"]},{\"name\":\"gamepages_sponsors_lnk_oifk\",\"columns\":[\"gamepage_ord\"]}],\"foreignKeys\":[{\"name\":\"gamepages_sponsors_lnk_fk\",\"columns\":[\"gamepage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"gamepages\",\"onDelete\":\"CASCADE\"},{\"name\":\"gamepages_sponsors_lnk_ifk\",\"columns\":[\"sponsor_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sponsors\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"gamepage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"sponsor_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"sponsor_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"gamepage_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_lnk\",\"indexes\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_lnk\",\"indexes\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_lnk_ofk\",\"columns\":[\"role_ord\"]},{\"name\":\"admin_users_roles_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_uq\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_lnk_oifk\",\"columns\":[\"api_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_uq\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_oifk\",\"columns\":[\"transfer_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_support_faqs_faqtype_lnk\",\"indexes\":[{\"name\":\"components_support_faqs_faqtype_lnk_fk\",\"columns\":[\"faq_id\"]},{\"name\":\"components_support_faqs_faqtype_lnk_ifk\",\"columns\":[\"faqtype_id\"]},{\"name\":\"components_support_faqs_faqtype_lnk_uq\",\"columns\":[\"faq_id\",\"faqtype_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"components_support_faqs_faqtype_lnk_fk\",\"columns\":[\"faq_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_support_faqs\",\"onDelete\":\"CASCADE\"},{\"name\":\"components_support_faqs_faqtype_lnk_ifk\",\"columns\":[\"faqtype_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"faqtypes\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"faq_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"faqtype_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2026-02-07 12:50:34', 'fcbb32bf359e6aafd92fed846cbb367c2f2ebffde65573910066f4f2dac3c834');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_history_versions`
--

CREATE TABLE `strapi_history_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `related_document_id` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `created_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations_internal`
--

CREATE TABLE `strapi_migrations_internal` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_migrations_internal`
--

INSERT INTO `strapi_migrations_internal` (`id`, `name`, `time`) VALUES
(1, '5.0.0-rename-identifiers-longer-than-max-length', '2026-02-02 01:21:43'),
(2, '5.0.0-02-created-document-id', '2026-02-02 01:21:43'),
(3, '5.0.0-03-created-locale', '2026-02-02 01:21:43'),
(4, '5.0.0-04-created-published-at', '2026-02-02 01:21:43'),
(5, '5.0.0-05-drop-slug-fields-index', '2026-02-02 01:21:43'),
(6, '5.0.0-06-add-document-id-indexes', '2026-02-02 01:21:43'),
(7, 'core::5.0.0-discard-drafts', '2026-02-02 01:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_releases`
--

CREATE TABLE `strapi_releases` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `released_at` datetime(6) DEFAULT NULL,
  `scheduled_at` datetime(6) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions`
--

CREATE TABLE `strapi_release_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `entry_document_id` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `is_entry_valid` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions_release_lnk`
--

CREATE TABLE `strapi_release_actions_release_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `release_action_id` int(10) UNSIGNED DEFAULT NULL,
  `release_id` int(10) UNSIGNED DEFAULT NULL,
  `release_action_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_sessions`
--

CREATE TABLE `strapi_sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `child_id` varchar(255) DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `absolute_expires_at` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_sessions`
--

INSERT INTO `strapi_sessions` (`id`, `document_id`, `user_id`, `session_id`, `child_id`, `device_id`, `origin`, `expires_at`, `absolute_expires_at`, `status`, `type`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'ualklzbo4qion3wz0b3f4pig', '1', '3c0b7b6639cce4a5070edcf9fd0d6520', 'c678183a0d205c2537988d91aa0efd9b', '1fecfbde-98b5-406e-8c47-41c6118710e7', 'admin', '2026-02-02 03:22:23.027000', '2026-03-04 01:22:23.027000', 'rotated', 'session', '2026-02-02 01:22:23.028000', '2026-02-02 01:55:47.210000', '2026-02-02 01:22:23.028000', NULL, NULL, NULL),
(2, 'aj1bp84hw29klzr56edartcf', '1', 'c678183a0d205c2537988d91aa0efd9b', '5ce6df50a652ee819fffd1499c326a41', '1fecfbde-98b5-406e-8c47-41c6118710e7', 'admin', '2026-02-02 03:55:47.201000', '2026-03-04 01:22:23.027000', 'rotated', 'session', '2026-02-02 01:55:47.202000', '2026-02-02 02:26:08.460000', '2026-02-02 01:55:47.204000', NULL, NULL, NULL),
(3, 'n5bfetpsflvc594j3dx3fkoq', '1', '5ce6df50a652ee819fffd1499c326a41', NULL, '1fecfbde-98b5-406e-8c47-41c6118710e7', 'admin', '2026-02-02 04:26:08.432000', '2026-03-04 01:22:23.027000', 'active', 'session', '2026-02-02 02:26:08.433000', '2026-02-02 02:26:08.433000', '2026-02-02 02:26:08.440000', NULL, NULL, NULL),
(4, 'aqygtcnbyworc09xwqruoh5s', '1', 'd50b4b277a124660377a1e6f46f23d5d', '3bb52a16baaf432b72f8131cd49ed7e7', '1fecfbde-98b5-406e-8c47-41c6118710e7', 'admin', '2026-02-02 09:38:26.534000', '2026-03-04 07:38:26.534000', 'rotated', 'session', '2026-02-02 07:38:26.534000', '2026-02-02 08:23:04.464000', '2026-02-02 07:38:26.535000', NULL, NULL, NULL),
(5, 'hyn6kex4vkei8fdu0sdrt582', '1', '3bb52a16baaf432b72f8131cd49ed7e7', '8f6a35bb502e338cdc6c9d16c86aa153', '1fecfbde-98b5-406e-8c47-41c6118710e7', 'admin', '2026-02-02 10:23:04.426000', '2026-03-04 07:38:26.534000', 'rotated', 'session', '2026-02-02 08:23:04.428000', '2026-02-02 09:50:36.833000', '2026-02-02 08:23:04.440000', NULL, NULL, NULL),
(6, 'm10wpv47o6giws9uprnovmph', '1', '8f6a35bb502e338cdc6c9d16c86aa153', NULL, '1fecfbde-98b5-406e-8c47-41c6118710e7', 'admin', '2026-02-02 11:50:36.801000', '2026-03-04 07:38:26.534000', 'active', 'session', '2026-02-02 09:50:36.802000', '2026-02-02 09:50:36.802000', '2026-02-02 09:50:36.813000', NULL, NULL, NULL),
(7, 'j2chq72lf3z4wq0dnnrv3eso', '1', '310f31d4cc5765ff3b213bce88351a8d', '5b693036da05aac1de0789c656dd2fd3', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-03 10:24:42.376000', '2026-03-05 08:24:42.376000', 'rotated', 'session', '2026-02-03 08:24:42.377000', '2026-02-03 09:16:07.410000', '2026-02-03 08:24:42.379000', NULL, NULL, NULL),
(8, 'gyni0p8om7lujrhy7d8osvnv', '1', '5b693036da05aac1de0789c656dd2fd3', NULL, 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-03 11:16:07.398000', '2026-03-05 08:24:42.376000', 'active', 'session', '2026-02-03 09:16:07.398000', '2026-02-03 09:16:07.398000', '2026-02-03 09:16:07.399000', NULL, NULL, NULL),
(9, 'to98l875nhuno79ep6084ua8', '1', '822c824120fd6b759bcacf983dff0f13', NULL, 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-03 13:28:04.967000', '2026-03-05 11:28:04.967000', 'active', 'session', '2026-02-03 11:28:04.968000', '2026-02-03 11:28:04.968000', '2026-02-03 11:28:04.970000', NULL, NULL, NULL),
(10, 'dux1704en1cvm0h48kkhya0u', '1', 'b911ce2bfc42712d84b35a785d774ad6', '15563aacf970a5fb9d8928888502ce78', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-03 13:55:11.472000', '2026-03-05 11:55:11.472000', 'rotated', 'session', '2026-02-03 11:55:11.472000', '2026-02-03 12:25:38.235000', '2026-02-03 11:55:11.472000', NULL, NULL, NULL),
(11, 'x6muf0c5e26l6synm5f4u032', '1', '15563aacf970a5fb9d8928888502ce78', '6ff147d91ce7ff5818d1b0719ff420dd', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-03 14:25:38.222000', '2026-03-05 11:55:11.472000', 'rotated', 'session', '2026-02-03 12:25:38.222000', '2026-02-03 13:12:06.692000', '2026-02-03 12:25:38.224000', NULL, NULL, NULL),
(12, 'uij076ihuh1ysudgqpdbxwrj', '1', '6ff147d91ce7ff5818d1b0719ff420dd', '6a45c230b0893ef8d382b3b73cb59c03', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-03 15:12:06.678000', '2026-03-05 11:55:11.472000', 'rotated', 'session', '2026-02-03 13:12:06.678000', '2026-02-03 13:42:06.160000', '2026-02-03 13:12:06.679000', NULL, NULL, NULL),
(13, 'mbl9nieoydi31qfnmv8m8e3f', '1', '6a45c230b0893ef8d382b3b73cb59c03', 'e2934d1ab9aee3bb29a42abc02338fc4', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-03 15:42:06.140000', '2026-03-05 11:55:11.472000', 'rotated', 'session', '2026-02-03 13:42:06.141000', '2026-02-03 14:29:32.964000', '2026-02-03 13:42:06.144000', NULL, NULL, NULL),
(14, 'tgsxxg3gdx58kzcr93s25q1t', '1', 'e2934d1ab9aee3bb29a42abc02338fc4', 'dc1679cd4ebf421f788052ef67ab7d6e', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-03 16:29:32.938000', '2026-03-05 11:55:11.472000', 'rotated', 'session', '2026-02-03 14:29:32.940000', '2026-02-03 15:00:39.952000', '2026-02-03 14:29:32.944000', NULL, NULL, NULL),
(15, 'cte10avkb7uwycfskfcdr1mv', '1', 'dc1679cd4ebf421f788052ef67ab7d6e', NULL, 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-03 17:00:39.942000', '2026-03-05 11:55:11.472000', 'active', 'session', '2026-02-03 15:00:39.942000', '2026-02-03 15:00:39.942000', '2026-02-03 15:00:39.942000', NULL, NULL, NULL),
(16, 'n54kk1tn3i9srxbgwmdissbs', '1', 'a92aab42969e40377bcfed945eabab02', NULL, 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-03 19:50:42.222000', '2026-03-05 17:50:42.222000', 'active', 'session', '2026-02-03 17:50:42.223000', '2026-02-03 17:50:42.223000', '2026-02-03 17:50:42.223000', NULL, NULL, NULL),
(17, 'vbleel4z4wptswap43kfkm7g', '1', 'aec6b4d095bc16c30269f7bfbeae1bd9', '2c6d244f1fa8a393c82d4f37b27307c2', '1eb08874-d548-4e56-a801-094b226524ac', 'admin', '2026-02-18 07:43:05.599000', '2026-03-06 07:43:05.599000', 'rotated', 'refresh', '2026-02-04 07:43:05.599000', '2026-02-04 08:14:32.912000', '2026-02-04 07:43:05.602000', NULL, NULL, NULL),
(18, 'jfhxkgmtc4jusurqipfarba4', '1', '2c6d244f1fa8a393c82d4f37b27307c2', '07d7fad61aba8e0f1a33c127cd97334c', '1eb08874-d548-4e56-a801-094b226524ac', 'admin', '2026-02-18 08:14:32.895000', '2026-03-06 07:43:05.599000', 'rotated', 'refresh', '2026-02-04 08:14:32.895000', '2026-02-04 08:50:45.928000', '2026-02-04 08:14:32.898000', NULL, NULL, NULL),
(19, 'zwn00od5vk0yyynmg77nez6x', '1', '07d7fad61aba8e0f1a33c127cd97334c', '8917aca0b2e1f86d4772bcc9424d00b2', '1eb08874-d548-4e56-a801-094b226524ac', 'admin', '2026-02-18 08:50:45.910000', '2026-03-06 07:43:05.599000', 'rotated', 'refresh', '2026-02-04 08:50:45.910000', '2026-02-04 09:36:43.892000', '2026-02-04 08:50:45.914000', NULL, NULL, NULL),
(20, 'l2f6ossij8k444qjz7hby9jm', '1', '8917aca0b2e1f86d4772bcc9424d00b2', NULL, '1eb08874-d548-4e56-a801-094b226524ac', 'admin', '2026-02-18 09:36:43.875000', '2026-03-06 07:43:05.599000', 'active', 'refresh', '2026-02-04 09:36:43.876000', '2026-02-04 09:36:43.876000', '2026-02-04 09:36:43.877000', NULL, NULL, NULL),
(21, 'spdfhvoag6jlmmpyxrlv9jsv', '1', '90d097f3f7cba645eefbdd76ff7d4550', 'e6c783511efcc08c696f7a25aa878e7f', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-04 11:48:46.700000', '2026-03-06 09:48:46.700000', 'rotated', 'session', '2026-02-04 09:48:46.701000', '2026-02-04 10:59:05.554000', '2026-02-04 09:48:46.703000', NULL, NULL, NULL),
(22, 't9d3r8h1g4kb8yv99ipifi4z', '1', 'e6c783511efcc08c696f7a25aa878e7f', 'e0231c50142bb6206de4df5e0dc5c9da', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-04 12:59:05.542000', '2026-03-06 09:48:46.700000', 'rotated', 'session', '2026-02-04 10:59:05.543000', '2026-02-04 11:29:34.786000', '2026-02-04 10:59:05.545000', NULL, NULL, NULL),
(23, 'jok47woie74cs7gzc7fqhkpo', '1', 'e0231c50142bb6206de4df5e0dc5c9da', '410a47857e3a551596e844d6ef3798be', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-04 13:29:34.777000', '2026-03-06 09:48:46.700000', 'rotated', 'session', '2026-02-04 11:29:34.778000', '2026-02-04 13:13:54.894000', '2026-02-04 11:29:34.778000', NULL, NULL, NULL),
(24, 'gb344wt6ydzqif1wbudc6dpq', '1', '410a47857e3a551596e844d6ef3798be', '21e0d2f00d62788ffb298cdefabed6b5', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-04 15:13:54.832000', '2026-03-06 09:48:46.700000', 'rotated', 'session', '2026-02-04 13:13:54.835000', '2026-02-04 13:45:51.297000', '2026-02-04 13:13:54.846000', NULL, NULL, NULL),
(25, 'h0vswnovl58bwd48wiv09vny', '1', '21e0d2f00d62788ffb298cdefabed6b5', 'bfd91792a835b4b44497911be110ef8a', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-04 15:45:51.281000', '2026-03-06 09:48:46.700000', 'rotated', 'session', '2026-02-04 13:45:51.281000', '2026-02-04 15:11:04.272000', '2026-02-04 13:45:51.282000', NULL, NULL, NULL),
(26, 'kosxbx89zckn3jemgkhl9y1r', '1', 'bfd91792a835b4b44497911be110ef8a', '7cc37e798f4f07037197d1fe88c8eabc', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-04 17:11:04.247000', '2026-03-06 09:48:46.700000', 'rotated', 'session', '2026-02-04 15:11:04.247000', '2026-02-04 15:58:58.250000', '2026-02-04 15:11:04.248000', NULL, NULL, NULL),
(27, 'r2udf1zrg84ngmxr774woggz', '1', '7cc37e798f4f07037197d1fe88c8eabc', 'c1562e55f2e09576371774ec35198a4f', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-04 17:58:58.233000', '2026-03-06 09:48:46.700000', 'rotated', 'session', '2026-02-04 15:58:58.233000', '2026-02-04 16:44:12.960000', '2026-02-04 15:58:58.235000', NULL, NULL, NULL),
(28, 'eh6u8zhl5f2prx51i1n3ik8o', '1', 'c1562e55f2e09576371774ec35198a4f', '131521df8fdf5209780df47262613285', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-04 18:44:12.952000', '2026-03-06 09:48:46.700000', 'rotated', 'session', '2026-02-04 16:44:12.953000', '2026-02-04 17:14:14.485000', '2026-02-04 16:44:12.954000', NULL, NULL, NULL),
(29, 'd76su6jbenvocsfv9y9nhmh3', '1', '131521df8fdf5209780df47262613285', NULL, 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-04 19:14:14.476000', '2026-03-06 09:48:46.700000', 'active', 'session', '2026-02-04 17:14:14.477000', '2026-02-04 17:14:14.477000', '2026-02-04 17:14:14.478000', NULL, NULL, NULL),
(30, 'vjt7gxroye3llxx5uj6egv5k', '1', '41b1bf5703733912a53c9f2e34c46282', '4b26a0d28f55f4f01c84f7c9d0f762d1', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-18 20:39:48.711000', '2026-03-06 20:39:48.711000', 'rotated', 'refresh', '2026-02-04 20:39:48.712000', '2026-02-04 21:56:08.175000', '2026-02-04 20:39:48.714000', NULL, NULL, NULL),
(31, 'akzhxxt34v9miuxbl4e5u151', '1', '4b26a0d28f55f4f01c84f7c9d0f762d1', 'cbd88f80d082b073107ad3326e17f3dc', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-18 21:56:08.158000', '2026-03-06 20:39:48.711000', 'rotated', 'refresh', '2026-02-04 21:56:08.158000', '2026-02-04 21:56:08.317000', '2026-02-04 21:56:08.162000', NULL, NULL, NULL),
(32, 'e3q1xuzmuxuttdo2uvdjupre', '1', 'cbd88f80d082b073107ad3326e17f3dc', '4e60bb1f4610c581342dd03c435055be', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-18 21:56:08.310000', '2026-03-06 20:39:48.711000', 'rotated', 'refresh', '2026-02-04 21:56:08.310000', '2026-02-05 04:24:22.641000', '2026-02-04 21:56:08.311000', NULL, NULL, NULL),
(33, 'pxl42tv5b6te75jqen5c9eq6', '1', '4e60bb1f4610c581342dd03c435055be', '69292a6a2af11f6d49545f73d930b519', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-19 04:24:22.627000', '2026-03-06 20:39:48.711000', 'rotated', 'refresh', '2026-02-05 04:24:22.628000', '2026-02-05 04:54:26.261000', '2026-02-05 04:24:22.631000', NULL, NULL, NULL),
(34, 'qznz06fhv4r0gyizsg3c6ko2', '1', '69292a6a2af11f6d49545f73d930b519', '999134c0ed21298267047117a02bf29b', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-19 04:54:26.252000', '2026-03-06 20:39:48.711000', 'rotated', 'refresh', '2026-02-05 04:54:26.253000', '2026-02-05 07:49:48.430000', '2026-02-05 04:54:26.253000', NULL, NULL, NULL),
(35, 'yj3bj6w4ejqrel7tci2j7enj', '1', '999134c0ed21298267047117a02bf29b', '909f4252d3a907e6e9dc7240f38522fc', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-19 07:49:48.416000', '2026-03-06 20:39:48.711000', 'rotated', 'refresh', '2026-02-05 07:49:48.417000', '2026-02-05 08:56:07.109000', '2026-02-05 07:49:48.419000', NULL, NULL, NULL),
(36, 'q1tpiowk0adxazndncy1cly6', '1', '909f4252d3a907e6e9dc7240f38522fc', '0648d59a4143ab3233e8662da59efe44', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-19 08:56:07.071000', '2026-03-06 20:39:48.711000', 'rotated', 'refresh', '2026-02-05 08:56:07.074000', '2026-02-05 09:26:24.391000', '2026-02-05 08:56:07.080000', NULL, NULL, NULL),
(37, 'iiveg6nvhisa0gfdpa9oz5y3', '1', '0648d59a4143ab3233e8662da59efe44', '8d56b282a9aca7ee485532b35b8aa7b5', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-19 09:26:24.382000', '2026-03-06 20:39:48.711000', 'rotated', 'refresh', '2026-02-05 09:26:24.382000', '2026-02-05 11:01:17.548000', '2026-02-05 09:26:24.382000', NULL, NULL, NULL),
(38, 'xrkz0866psvix3er8pjt3asv', '1', '8d56b282a9aca7ee485532b35b8aa7b5', '34bfa066edb8479062f51d372512e1cd', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-19 11:01:17.528000', '2026-03-06 20:39:48.711000', 'rotated', 'refresh', '2026-02-05 11:01:17.529000', '2026-02-05 11:32:51.499000', '2026-02-05 11:01:17.532000', NULL, NULL, NULL),
(39, 'm8ihj2agakcrs17zr2yljw2e', '1', '34bfa066edb8479062f51d372512e1cd', '7893406d0af70a003a73b37690524363', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-19 11:32:51.490000', '2026-03-06 20:39:48.711000', 'rotated', 'refresh', '2026-02-05 11:32:51.490000', '2026-02-05 12:41:59.169000', '2026-02-05 11:32:51.491000', NULL, NULL, NULL),
(40, 'a3i0opsprsnvvw5sa7di4sui', '1', '7893406d0af70a003a73b37690524363', NULL, 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-19 12:41:59.160000', '2026-03-06 20:39:48.711000', 'active', 'refresh', '2026-02-05 12:41:59.160000', '2026-02-05 12:41:59.160000', '2026-02-05 12:41:59.161000', NULL, NULL, NULL),
(41, 'xmg6dlp9q58fl4m9xmzgsdn4', '1', '20627dfc0a792de4127b134fc8020909', '843f232d9cbaf8c31b1d268cd99b7a14', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-05 14:43:36.063000', '2026-03-07 12:43:36.063000', 'rotated', 'session', '2026-02-05 12:43:36.063000', '2026-02-05 13:28:08.829000', '2026-02-05 12:43:36.066000', NULL, NULL, NULL),
(42, 'l0jyitg7m3waf93tnkcla930', '1', '843f232d9cbaf8c31b1d268cd99b7a14', 'a49d0e88e96f516f1a9b1fce66bf6bde', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-05 15:28:08.800000', '2026-03-07 12:43:36.063000', 'rotated', 'session', '2026-02-05 13:28:08.801000', '2026-02-05 14:43:14.572000', '2026-02-05 13:28:08.806000', NULL, NULL, NULL),
(43, 'ikbuhp5u61cjl2wbp13eks45', '1', 'a49d0e88e96f516f1a9b1fce66bf6bde', '96655d8d441bc850d92e4dba1282b20b', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-05 16:43:14.550000', '2026-03-07 12:43:36.063000', 'rotated', 'session', '2026-02-05 14:43:14.551000', '2026-02-05 15:18:31.079000', '2026-02-05 14:43:14.557000', NULL, NULL, NULL),
(44, 'u2lx9i9e2ypqd4mhb24df28f', '1', '96655d8d441bc850d92e4dba1282b20b', '59181acd7751aa82109ae92ee5e52cdb', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-05 17:18:31.059000', '2026-03-07 12:43:36.063000', 'rotated', 'session', '2026-02-05 15:18:31.060000', '2026-02-05 16:19:36.892000', '2026-02-05 15:18:31.064000', NULL, NULL, NULL),
(45, 'p0eiywpykeu98s6hqqwfw4es', '1', '59181acd7751aa82109ae92ee5e52cdb', NULL, 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-05 18:19:36.883000', '2026-03-07 12:43:36.063000', 'active', 'session', '2026-02-05 16:19:36.884000', '2026-02-05 16:19:36.884000', '2026-02-05 16:19:36.886000', NULL, NULL, NULL),
(46, 'x2ftjnr3z5wibtcljq0qcmwz', '1', '48e0aec178eb2749bfcd53c98e563d82', 'b7a3f63bd1a342ec9a6bde512176d54b', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-05 22:23:20.170000', '2026-03-07 20:23:20.170000', 'rotated', 'session', '2026-02-05 20:23:20.171000', '2026-02-05 21:01:14.807000', '2026-02-05 20:23:20.173000', NULL, NULL, NULL),
(47, 'yzla852m45nq2h5pvayw21oy', '1', 'b7a3f63bd1a342ec9a6bde512176d54b', NULL, 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-05 23:01:14.790000', '2026-03-07 20:23:20.170000', 'active', 'session', '2026-02-05 21:01:14.791000', '2026-02-05 21:01:14.791000', '2026-02-05 21:01:14.794000', NULL, NULL, NULL),
(48, 'bwzzlef61tzti11iniycb6xe', '1', 'a5ec8a47069817278ffc690704120c87', '7e2455d0df83b7d6dc8bfdbacded1d84', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-06 06:34:39.546000', '2026-03-08 04:34:39.546000', 'rotated', 'session', '2026-02-06 04:34:39.547000', '2026-02-06 05:14:33.558000', '2026-02-06 04:34:39.549000', NULL, NULL, NULL),
(49, 'mmveh7jbgixu1qp2vz4mtar3', '1', '7e2455d0df83b7d6dc8bfdbacded1d84', NULL, 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-06 07:14:33.437000', '2026-03-08 04:34:39.546000', 'active', 'session', '2026-02-06 05:14:33.439000', '2026-02-06 05:14:33.439000', '2026-02-06 05:14:33.449000', NULL, NULL, NULL),
(50, 'tgwqwxdjxfs6hiseyo8749jn', '1', '0abd202d25950dbd616d951932ffdc42', '7b17cea81d1ca1cf541202ed96b5f744', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-06 10:07:50.015000', '2026-03-08 08:07:50.015000', 'rotated', 'session', '2026-02-06 08:07:50.015000', '2026-02-06 08:54:31.415000', '2026-02-06 08:07:50.016000', NULL, NULL, NULL),
(51, 'p1em5iqchaxn2wqjp1qppxfm', '1', '7b17cea81d1ca1cf541202ed96b5f744', '68a680709f30946b7b65bd2c6812fc42', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-06 10:54:31.410000', '2026-03-08 08:07:50.015000', 'rotated', 'session', '2026-02-06 08:54:31.410000', '2026-02-06 09:29:42.340000', '2026-02-06 08:54:31.411000', NULL, NULL, NULL),
(52, 'xctcaordaf3qzs4wgeh3pygb', '1', '68a680709f30946b7b65bd2c6812fc42', 'e7dc80a0ec81519b7bd306a31e0adc62', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-06 11:29:42.325000', '2026-03-08 08:07:50.015000', 'rotated', 'session', '2026-02-06 09:29:42.325000', '2026-02-06 10:41:22.631000', '2026-02-06 09:29:42.327000', NULL, NULL, NULL),
(53, 'ttljsx9lh492z09asuekxe26', '1', 'e7dc80a0ec81519b7bd306a31e0adc62', '1b2ca8ac2b9786d820664c71debc4a9b', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-06 12:41:22.620000', '2026-03-08 08:07:50.015000', 'rotated', 'session', '2026-02-06 10:41:22.620000', '2026-02-06 11:12:24.155000', '2026-02-06 10:41:22.621000', NULL, NULL, NULL),
(54, 'klqammxoe8o82i7ajc8o1jsl', '1', '1b2ca8ac2b9786d820664c71debc4a9b', NULL, 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-06 13:12:24.135000', '2026-03-08 08:07:50.015000', 'active', 'session', '2026-02-06 11:12:24.136000', '2026-02-06 11:12:24.136000', '2026-02-06 11:12:24.138000', NULL, NULL, NULL),
(55, 'u2p85g3m4fho5m1gqe4o7qf0', '1', 'bfe6726f26c6ec55a24a0d89e3a899ae', NULL, 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-06 17:04:17.228000', '2026-03-08 15:04:17.228000', 'active', 'session', '2026-02-06 15:04:17.229000', '2026-02-06 15:04:17.229000', '2026-02-06 15:04:17.229000', NULL, NULL, NULL),
(56, 'n5oc2e9z8ax4w561z7da0gwj', '1', '54af028dffb758472454f127bbdeae82', NULL, 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-06 19:39:38.683000', '2026-03-08 17:39:38.683000', 'active', 'session', '2026-02-06 17:39:38.683000', '2026-02-06 17:39:38.683000', '2026-02-06 17:39:38.687000', NULL, NULL, NULL),
(57, 'zjzu3zbam1aq4d0u6elnlhix', '1', 'e1b1502b82a2be1dacc6dbca29006b4c', '4f4500b5f9b4f8d3dfceafbb7d2f6c24', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-07 12:22:59.080000', '2026-03-09 10:22:59.080000', 'rotated', 'session', '2026-02-07 10:22:59.080000', '2026-02-07 11:09:25.730000', '2026-02-07 10:22:59.088000', NULL, NULL, NULL),
(58, 'ae7uzqdvf72hfbnv93dbgka0', '1', '4f4500b5f9b4f8d3dfceafbb7d2f6c24', 'fecdea25485de0d4ab05115762cddff2', 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-07 13:09:25.722000', '2026-03-09 10:22:59.080000', 'rotated', 'session', '2026-02-07 11:09:25.722000', '2026-02-07 12:49:32.776000', '2026-02-07 11:09:25.723000', NULL, NULL, NULL),
(59, 'adj0g11s9q4vfk4cyrwxh632', '1', 'fecdea25485de0d4ab05115762cddff2', NULL, 'c428d436-2ebf-446c-809c-90efe76d5d75', 'admin', '2026-02-07 14:49:32.765000', '2026-03-09 10:22:59.080000', 'active', 'session', '2026-02-07 12:49:32.766000', '2026-02-07 12:49:32.766000', '2026-02-07 12:49:32.767000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions_token_lnk`
--

CREATE TABLE `strapi_transfer_token_permissions_token_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows`
--

CREATE TABLE `strapi_workflows` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content_types` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`content_types`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stages`
--

CREATE TABLE `strapi_workflows_stages` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stages_permissions_lnk`
--

CREATE TABLE `strapi_workflows_stages_permissions_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stages_workflow_lnk`
--

CREATE TABLE `strapi_workflows_stages_workflow_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_stage_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stage_required_to_publish_lnk`
--

CREATE TABLE `strapi_workflows_stage_required_to_publish_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upload_folders`
--

INSERT INTO `upload_folders` (`id`, `document_id`, `name`, `path_id`, `path`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'umh58ueykx1k0wnpkq3ukxbx', 'icons', 1, '/1', '2026-02-02 02:26:23.766000', '2026-02-02 02:26:23.766000', '2026-02-02 02:26:23.767000', 1, 1, NULL),
(2, 'l8vet81o21mfr2xmyk6wf41f', 'Gamecat', 2, '/2', '2026-02-03 12:08:25.194000', '2026-02-04 08:22:01.822000', '2026-02-03 12:08:25.195000', 1, 1, NULL),
(3, 'praj1ydohqh2jugxqaila22k', 'sponsors', 3, '/3', '2026-02-04 08:18:27.887000', '2026-02-04 08:18:27.887000', '2026-02-04 08:18:27.888000', 1, 1, NULL),
(4, 'o6ovco464poiqric222vkswg', 'Playgame', 4, '/4', '2026-02-04 08:22:13.296000', '2026-02-04 08:22:13.296000', '2026-02-04 08:22:13.296000', 1, 1, NULL),
(5, 'fy6hk1uej6xxbs5hl1oo33q7', 'Topbanner', 5, '/5', '2026-02-04 10:59:45.018000', '2026-02-04 10:59:45.018000', '2026-02-04 10:59:45.019000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_lnk`
--

CREATE TABLE `upload_folders_parent_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `document_id`, `action`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'h2eowjzi6o7uu5uqby8vmno0', 'plugin::users-permissions.auth.logout', '2026-02-02 01:21:45.342000', '2026-02-02 01:21:45.342000', '2026-02-02 01:21:45.342000', NULL, NULL, NULL),
(2, 'kqykm369rni5nv6yn6qv5o7o', 'plugin::users-permissions.user.me', '2026-02-02 01:21:45.342000', '2026-02-02 01:21:45.342000', '2026-02-02 01:21:45.343000', NULL, NULL, NULL),
(3, 'ky3rbh48tzoizjwzz99lgtec', 'plugin::users-permissions.auth.changePassword', '2026-02-02 01:21:45.342000', '2026-02-02 01:21:45.342000', '2026-02-02 01:21:45.343000', NULL, NULL, NULL),
(4, 'j6szftvhyh68mssc19tolp0i', 'plugin::users-permissions.auth.callback', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', NULL, NULL, NULL),
(5, 'hu27dfl3vcab9p895p4y9v09', 'plugin::users-permissions.auth.connect', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', NULL, NULL, NULL),
(6, 'wkirxtgkz1tsvffia5jmk2b5', 'plugin::users-permissions.auth.forgotPassword', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', NULL, NULL, NULL),
(7, 'lddeqkkjxn4jbvi81nq0ap9v', 'plugin::users-permissions.auth.resetPassword', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', NULL, NULL, NULL),
(8, 'pk8zgkkq1c4cufvov7lod527', 'plugin::users-permissions.auth.register', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', NULL, NULL, NULL),
(9, 'cup2daux22905vnzxb5hlpwp', 'plugin::users-permissions.auth.emailConfirmation', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', NULL, NULL, NULL),
(10, 'd0t855aevzgc3l5q8vv3rhd1', 'plugin::users-permissions.auth.refresh', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', NULL, NULL, NULL),
(11, 'ikyw1x6x15oousg6oca4x0ec', 'plugin::users-permissions.auth.sendEmailConfirmation', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', '2026-02-02 01:21:45.353000', NULL, NULL, NULL),
(12, 'af3w931u8m43o8vdnnuvzov2', 'api::aboutus.aboutus.find', '2026-02-02 08:23:20.974000', '2026-02-02 08:23:20.974000', '2026-02-02 08:23:20.974000', NULL, NULL, NULL),
(13, 'ogs7pf7pgaw20g32am6dbfu0', 'api::gamepage.gamepage.find', '2026-02-03 12:14:22.175000', '2026-02-03 12:14:22.175000', '2026-02-03 12:14:22.176000', NULL, NULL, NULL),
(14, 'olfe3jrd357twnuzejy0w1w4', 'api::gamepage.gamepage.findOne', '2026-02-03 12:14:22.175000', '2026-02-03 12:14:22.175000', '2026-02-03 12:14:22.177000', NULL, NULL, NULL),
(16, 'fydavkl0qjape8azjdu3l6a8', 'api::playgame.playgame.find', '2026-02-04 08:17:22.829000', '2026-02-04 08:17:22.829000', '2026-02-04 08:17:22.831000', NULL, NULL, NULL),
(17, 'mqgmqhhdttz2dcvi6awexmyh', 'api::sponsor.sponsor.find', '2026-02-04 08:17:22.830000', '2026-02-04 08:17:22.830000', '2026-02-04 08:17:22.832000', NULL, NULL, NULL),
(18, 'syy4br2pwvv9eeav6c14hbta', 'api::playgame.playgame.findOne', '2026-02-04 08:17:22.830000', '2026-02-04 08:17:22.830000', '2026-02-04 08:17:22.832000', NULL, NULL, NULL),
(19, 'vvh149tovb5f01k97ysd24od', 'api::sponsor.sponsor.findOne', '2026-02-04 08:17:22.830000', '2026-02-04 08:17:22.830000', '2026-02-04 08:17:22.833000', NULL, NULL, NULL),
(20, 'dusy9ipj6n99swnbtpooofqw', 'api::blog.blog.find', '2026-02-04 13:31:36.167000', '2026-02-04 13:31:36.167000', '2026-02-04 13:31:36.168000', NULL, NULL, NULL),
(21, 'glowmguxla05t7pmpe82rwyu', 'api::blog.blog.findOne', '2026-02-04 13:31:36.167000', '2026-02-04 13:31:36.167000', '2026-02-04 13:31:36.169000', NULL, NULL, NULL),
(22, 'idaerbmbt6iglxgt28xvz1pu', 'api::agreement.agreement.find', '2026-02-05 04:42:43.397000', '2026-02-05 04:42:43.397000', '2026-02-05 04:42:43.399000', NULL, NULL, NULL),
(23, 'ds9d2svu8fwm8k40vqxknh67', 'api::faq.faq.find', '2026-02-05 04:42:43.397000', '2026-02-05 04:42:43.397000', '2026-02-05 04:42:43.401000', NULL, NULL, NULL),
(24, 'knihpv64l3y5y8zh2pvsuis1', 'api::faqtype.faqtype.find', '2026-02-05 08:56:07.250000', '2026-02-05 08:56:07.250000', '2026-02-05 08:56:07.250000', NULL, NULL, NULL),
(25, 'zxmka3sjxmjxk5znkjhm7paz', 'api::faqtype.faqtype.findOne', '2026-02-05 08:56:07.250000', '2026-02-05 08:56:07.250000', '2026-02-05 08:56:07.250000', NULL, NULL, NULL),
(26, 'f37tsuf9u3f2i5kvmnx741kv', 'api::landingpage.landingpage.find', '2026-02-05 12:47:07.877000', '2026-02-05 12:47:07.877000', '2026-02-05 12:47:07.877000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_lnk`
--

CREATE TABLE `up_permissions_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions_role_lnk`
--

INSERT INTO `up_permissions_role_lnk` (`id`, `permission_id`, `role_id`, `permission_ord`) VALUES
(1, 2, 1, 1),
(2, 1, 1, 1),
(3, 3, 1, 1),
(4, 4, 2, 1),
(5, 5, 2, 1),
(6, 6, 2, 1),
(7, 8, 2, 1),
(8, 7, 2, 1),
(9, 9, 2, 1),
(10, 10, 2, 1),
(11, 11, 2, 2),
(12, 12, 2, 3),
(13, 13, 2, 4),
(14, 14, 2, 4),
(16, 16, 2, 6),
(17, 18, 2, 6),
(18, 17, 2, 6),
(19, 19, 2, 6),
(20, 21, 2, 7),
(21, 20, 2, 7),
(22, 22, 2, 8),
(23, 23, 2, 8),
(24, 25, 2, 9),
(25, 24, 2, 9),
(26, 26, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `document_id`, `name`, `description`, `type`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'fq70w5gmztxx9kt1acrg9zj8', 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2026-02-02 01:21:45.331000', '2026-02-02 01:21:45.331000', '2026-02-02 01:21:45.331000', NULL, NULL, NULL),
(2, 'stss8pxw02g98osljayfnth9', 'Public', 'Default role given to unauthenticated user.', 'public', '2026-02-02 01:21:45.335000', '2026-02-06 08:54:31.472000', '2026-02-02 01:21:45.335000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_lnk`
--

CREATE TABLE `up_users_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutuses`
--
ALTER TABLE `aboutuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aboutuses_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `aboutuses_created_by_id_fk` (`created_by_id`),
  ADD KEY `aboutuses_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `aboutuses_cmps`
--
ALTER TABLE `aboutuses_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `aboutuses_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `aboutuses_field_idx` (`field`),
  ADD KEY `aboutuses_component_type_idx` (`component_type`),
  ADD KEY `aboutuses_entity_fk` (`entity_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_lnk_uq` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_lnk_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_lnk_ifk` (`role_id`),
  ADD KEY `admin_permissions_role_lnk_oifk` (`permission_ord`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_lnk_uq` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_lnk_fk` (`user_id`),
  ADD KEY `admin_users_roles_lnk_ifk` (`role_id`),
  ADD KEY `admin_users_roles_lnk_ofk` (`role_ord`),
  ADD KEY `admin_users_roles_lnk_oifk` (`user_ord`);

--
-- Indexes for table `agreements`
--
ALTER TABLE `agreements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agreements_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `agreements_created_by_id_fk` (`created_by_id`),
  ADD KEY `agreements_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `agreements_cmps`
--
ALTER TABLE `agreements_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `agreements_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `agreements_field_idx` (`field`),
  ADD KEY `agreements_component_type_idx` (`component_type`),
  ADD KEY `agreements_entity_fk` (`entity_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `blogs_created_by_id_fk` (`created_by_id`),
  ADD KEY `blogs_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `blogs_admin_user_lnk`
--
ALTER TABLE `blogs_admin_user_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_admin_user_lnk_uq` (`blog_id`,`user_id`),
  ADD KEY `blogs_admin_user_lnk_fk` (`blog_id`),
  ADD KEY `blogs_admin_user_lnk_ifk` (`user_id`);

--
-- Indexes for table `blogs_cmps`
--
ALTER TABLE `blogs_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `blogs_field_idx` (`field`),
  ADD KEY `blogs_component_type_idx` (`component_type`),
  ADD KEY `blogs_entity_fk` (`entity_id`);

--
-- Indexes for table `blogs_gamecategoty_lnk`
--
ALTER TABLE `blogs_gamecategoty_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_gamecategoty_lnk_uq` (`blog_id`,`gamepage_id`),
  ADD KEY `blogs_gamecategoty_lnk_fk` (`blog_id`),
  ADD KEY `blogs_gamecategoty_lnk_ifk` (`gamepage_id`);

--
-- Indexes for table `components_block_descriptions`
--
ALTER TABLE `components_block_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_block_journey_cards`
--
ALTER TABLE `components_block_journey_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_block_linkcards`
--
ALTER TABLE `components_block_linkcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_block_pagecards`
--
ALTER TABLE `components_block_pagecards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_block_sliders`
--
ALTER TABLE `components_block_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_block_sportcards`
--
ALTER TABLE `components_block_sportcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_block_starcards`
--
ALTER TABLE `components_block_starcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_block_tipdangers`
--
ALTER TABLE `components_block_tipdangers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_block_tipsuccesses`
--
ALTER TABLE `components_block_tipsuccesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_block_tipwarns`
--
ALTER TABLE `components_block_tipwarns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_block_valuecards`
--
ALTER TABLE `components_block_valuecards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_support_articals`
--
ALTER TABLE `components_support_articals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_support_employecards`
--
ALTER TABLE `components_support_employecards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_support_faqs`
--
ALTER TABLE `components_support_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_support_faqs_faqtype_lnk`
--
ALTER TABLE `components_support_faqs_faqtype_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `components_support_faqs_faqtype_lnk_uq` (`faq_id`,`faqtype_id`),
  ADD KEY `components_support_faqs_faqtype_lnk_fk` (`faq_id`),
  ADD KEY `components_support_faqs_faqtype_lnk_ifk` (`faqtype_id`);

--
-- Indexes for table `components_support_image_lefts`
--
ALTER TABLE `components_support_image_lefts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_support_image_rights`
--
ALTER TABLE `components_support_image_rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_support_suportcards`
--
ALTER TABLE `components_support_suportcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `faqs_created_by_id_fk` (`created_by_id`),
  ADD KEY `faqs_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `faqs_cmps`
--
ALTER TABLE `faqs_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faqs_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `faqs_field_idx` (`field`),
  ADD KEY `faqs_component_type_idx` (`component_type`),
  ADD KEY `faqs_entity_fk` (`entity_id`);

--
-- Indexes for table `faqtypes`
--
ALTER TABLE `faqtypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqtypes_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `faqtypes_created_by_id_fk` (`created_by_id`),
  ADD KEY `faqtypes_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_lnk_uq` (`file_id`,`folder_id`),
  ADD KEY `files_folder_lnk_fk` (`file_id`),
  ADD KEY `files_folder_lnk_ifk` (`folder_id`),
  ADD KEY `files_folder_lnk_oifk` (`file_ord`);

--
-- Indexes for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_mph_fk` (`file_id`),
  ADD KEY `files_related_mph_oidx` (`order`),
  ADD KEY `files_related_mph_idix` (`related_id`);

--
-- Indexes for table `gamepages`
--
ALTER TABLE `gamepages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gamepages_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `gamepages_created_by_id_fk` (`created_by_id`),
  ADD KEY `gamepages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `gamepages_cmps`
--
ALTER TABLE `gamepages_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gamepages_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `gamepages_field_idx` (`field`),
  ADD KEY `gamepages_component_type_idx` (`component_type`),
  ADD KEY `gamepages_entity_fk` (`entity_id`);

--
-- Indexes for table `gamepages_playgames_lnk`
--
ALTER TABLE `gamepages_playgames_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gamepages_playgames_lnk_uq` (`gamepage_id`,`playgame_id`),
  ADD KEY `gamepages_playgames_lnk_fk` (`gamepage_id`),
  ADD KEY `gamepages_playgames_lnk_ifk` (`playgame_id`),
  ADD KEY `gamepages_playgames_lnk_ofk` (`playgame_ord`),
  ADD KEY `gamepages_playgames_lnk_oifk` (`gamepage_ord`);

--
-- Indexes for table `gamepages_sponsors_lnk`
--
ALTER TABLE `gamepages_sponsors_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gamepages_sponsors_lnk_uq` (`gamepage_id`,`sponsor_id`),
  ADD KEY `gamepages_sponsors_lnk_fk` (`gamepage_id`),
  ADD KEY `gamepages_sponsors_lnk_ifk` (`sponsor_id`),
  ADD KEY `gamepages_sponsors_lnk_ofk` (`sponsor_ord`),
  ADD KEY `gamepages_sponsors_lnk_oifk` (`gamepage_ord`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `landingpages`
--
ALTER TABLE `landingpages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `landingpages_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `landingpages_created_by_id_fk` (`created_by_id`),
  ADD KEY `landingpages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `landingpages_cmps`
--
ALTER TABLE `landingpages_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `landingpages_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `landingpages_field_idx` (`field`),
  ADD KEY `landingpages_component_type_idx` (`component_type`),
  ADD KEY `landingpages_entity_fk` (`entity_id`);

--
-- Indexes for table `playgames`
--
ALTER TABLE `playgames`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playgames_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `playgames_created_by_id_fk` (`created_by_id`),
  ADD KEY `playgames_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `playgames_cmps`
--
ALTER TABLE `playgames_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `playgames_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `playgames_field_idx` (`field`),
  ADD KEY `playgames_component_type_idx` (`component_type`),
  ADD KEY `playgames_entity_fk` (`entity_id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sponsors_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `sponsors_created_by_id_fk` (`created_by_id`),
  ADD KEY `sponsors_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `sponsors_cmps`
--
ALTER TABLE `sponsors_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sponsors_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `sponsors_field_idx` (`field`),
  ADD KEY `sponsors_component_type_idx` (`component_type`),
  ADD KEY `sponsors_entity_fk` (`entity_id`);

--
-- Indexes for table `strapi_ai_localization_jobs`
--
ALTER TABLE `strapi_ai_localization_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_ai_metadata_jobs`
--
ALTER TABLE `strapi_ai_metadata_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_lnk_uq` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_ifk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_oifk` (`api_token_permission_ord`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_history_versions_created_by_id_fk` (`created_by_id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations_internal`
--
ALTER TABLE `strapi_migrations_internal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_releases_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_releases_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_releases_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_release_actions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_release_actions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_release_actions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_release_actions_release_lnk_uq` (`release_action_id`,`release_id`),
  ADD KEY `strapi_release_actions_release_lnk_fk` (`release_action_id`),
  ADD KEY `strapi_release_actions_release_lnk_ifk` (`release_id`),
  ADD KEY `strapi_release_actions_release_lnk_oifk` (`release_action_ord`);

--
-- Indexes for table `strapi_sessions`
--
ALTER TABLE `strapi_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_sessions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_sessions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_sessions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_lnk_uq` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_ifk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_oifk` (`transfer_token_permission_ord`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_workflows_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_workflows_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_workflows_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_workflows_stages_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_workflows_stages_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_workflows_stages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stages_permissions_lnk_uq` (`workflow_stage_id`,`permission_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_fk` (`workflow_stage_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_ifk` (`permission_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_ofk` (`permission_ord`);

--
-- Indexes for table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stages_workflow_lnk_uq` (`workflow_stage_id`,`workflow_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_fk` (`workflow_stage_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_ifk` (`workflow_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_oifk` (`workflow_stage_ord`);

--
-- Indexes for table `strapi_workflows_stage_required_to_publish_lnk`
--
ALTER TABLE `strapi_workflows_stage_required_to_publish_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stage_required_to_publish_lnk_uq` (`workflow_id`,`workflow_stage_id`),
  ADD KEY `strapi_workflows_stage_required_to_publish_lnk_fk` (`workflow_id`),
  ADD KEY `strapi_workflows_stage_required_to_publish_lnk_ifk` (`workflow_stage_id`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_lnk_uq` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_lnk_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_lnk_ifk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_lnk_oifk` (`folder_ord`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_lnk_uq` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_lnk_fk` (`permission_id`),
  ADD KEY `up_permissions_role_lnk_ifk` (`role_id`),
  ADD KEY `up_permissions_role_lnk_oifk` (`permission_ord`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_lnk_uq` (`user_id`,`role_id`),
  ADD KEY `up_users_role_lnk_fk` (`user_id`),
  ADD KEY `up_users_role_lnk_ifk` (`role_id`),
  ADD KEY `up_users_role_lnk_oifk` (`user_ord`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutuses`
--
ALTER TABLE `aboutuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `aboutuses_cmps`
--
ALTER TABLE `aboutuses_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agreements`
--
ALTER TABLE `agreements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `agreements_cmps`
--
ALTER TABLE `agreements_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blogs_admin_user_lnk`
--
ALTER TABLE `blogs_admin_user_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blogs_cmps`
--
ALTER TABLE `blogs_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `blogs_gamecategoty_lnk`
--
ALTER TABLE `blogs_gamecategoty_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `components_block_descriptions`
--
ALTER TABLE `components_block_descriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_block_journey_cards`
--
ALTER TABLE `components_block_journey_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `components_block_linkcards`
--
ALTER TABLE `components_block_linkcards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `components_block_pagecards`
--
ALTER TABLE `components_block_pagecards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `components_block_sliders`
--
ALTER TABLE `components_block_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `components_block_sportcards`
--
ALTER TABLE `components_block_sportcards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `components_block_starcards`
--
ALTER TABLE `components_block_starcards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `components_block_tipdangers`
--
ALTER TABLE `components_block_tipdangers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `components_block_tipsuccesses`
--
ALTER TABLE `components_block_tipsuccesses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `components_block_tipwarns`
--
ALTER TABLE `components_block_tipwarns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `components_block_valuecards`
--
ALTER TABLE `components_block_valuecards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `components_support_articals`
--
ALTER TABLE `components_support_articals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `components_support_employecards`
--
ALTER TABLE `components_support_employecards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `components_support_faqs`
--
ALTER TABLE `components_support_faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `components_support_faqs_faqtype_lnk`
--
ALTER TABLE `components_support_faqs_faqtype_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `components_support_image_lefts`
--
ALTER TABLE `components_support_image_lefts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `components_support_image_rights`
--
ALTER TABLE `components_support_image_rights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `components_support_suportcards`
--
ALTER TABLE `components_support_suportcards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faqs_cmps`
--
ALTER TABLE `faqs_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `faqtypes`
--
ALTER TABLE `faqtypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=614;

--
-- AUTO_INCREMENT for table `gamepages`
--
ALTER TABLE `gamepages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `gamepages_cmps`
--
ALTER TABLE `gamepages_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `gamepages_playgames_lnk`
--
ALTER TABLE `gamepages_playgames_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `gamepages_sponsors_lnk`
--
ALTER TABLE `gamepages_sponsors_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `landingpages`
--
ALTER TABLE `landingpages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `landingpages_cmps`
--
ALTER TABLE `landingpages_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `playgames`
--
ALTER TABLE `playgames`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `playgames_cmps`
--
ALTER TABLE `playgames_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sponsors_cmps`
--
ALTER TABLE `sponsors_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `strapi_ai_localization_jobs`
--
ALTER TABLE `strapi_ai_localization_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_ai_metadata_jobs`
--
ALTER TABLE `strapi_ai_metadata_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_migrations_internal`
--
ALTER TABLE `strapi_migrations_internal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_sessions`
--
ALTER TABLE `strapi_sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stage_required_to_publish_lnk`
--
ALTER TABLE `strapi_workflows_stage_required_to_publish_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aboutuses`
--
ALTER TABLE `aboutuses`
  ADD CONSTRAINT `aboutuses_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `aboutuses_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `aboutuses_cmps`
--
ALTER TABLE `aboutuses_cmps`
  ADD CONSTRAINT `aboutuses_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `aboutuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  ADD CONSTRAINT `admin_permissions_role_lnk_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  ADD CONSTRAINT `admin_users_roles_lnk_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `agreements`
--
ALTER TABLE `agreements`
  ADD CONSTRAINT `agreements_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `agreements_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `agreements_cmps`
--
ALTER TABLE `agreements_cmps`
  ADD CONSTRAINT `agreements_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `agreements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `blogs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `blogs_admin_user_lnk`
--
ALTER TABLE `blogs_admin_user_lnk`
  ADD CONSTRAINT `blogs_admin_user_lnk_fk` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_admin_user_lnk_ifk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs_cmps`
--
ALTER TABLE `blogs_cmps`
  ADD CONSTRAINT `blogs_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs_gamecategoty_lnk`
--
ALTER TABLE `blogs_gamecategoty_lnk`
  ADD CONSTRAINT `blogs_gamecategoty_lnk_fk` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_gamecategoty_lnk_ifk` FOREIGN KEY (`gamepage_id`) REFERENCES `gamepages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_support_faqs_faqtype_lnk`
--
ALTER TABLE `components_support_faqs_faqtype_lnk`
  ADD CONSTRAINT `components_support_faqs_faqtype_lnk_fk` FOREIGN KEY (`faq_id`) REFERENCES `components_support_faqs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `components_support_faqs_faqtype_lnk_ifk` FOREIGN KEY (`faqtype_id`) REFERENCES `faqtypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `faqs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `faqs_cmps`
--
ALTER TABLE `faqs_cmps`
  ADD CONSTRAINT `faqs_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `faqs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faqtypes`
--
ALTER TABLE `faqtypes`
  ADD CONSTRAINT `faqtypes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `faqtypes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  ADD CONSTRAINT `files_folder_lnk_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_lnk_ifk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  ADD CONSTRAINT `files_related_mph_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gamepages`
--
ALTER TABLE `gamepages`
  ADD CONSTRAINT `gamepages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `gamepages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `gamepages_cmps`
--
ALTER TABLE `gamepages_cmps`
  ADD CONSTRAINT `gamepages_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `gamepages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gamepages_playgames_lnk`
--
ALTER TABLE `gamepages_playgames_lnk`
  ADD CONSTRAINT `gamepages_playgames_lnk_fk` FOREIGN KEY (`gamepage_id`) REFERENCES `gamepages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `gamepages_playgames_lnk_ifk` FOREIGN KEY (`playgame_id`) REFERENCES `playgames` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gamepages_sponsors_lnk`
--
ALTER TABLE `gamepages_sponsors_lnk`
  ADD CONSTRAINT `gamepages_sponsors_lnk_fk` FOREIGN KEY (`gamepage_id`) REFERENCES `gamepages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `gamepages_sponsors_lnk_ifk` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `landingpages`
--
ALTER TABLE `landingpages`
  ADD CONSTRAINT `landingpages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `landingpages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `landingpages_cmps`
--
ALTER TABLE `landingpages_cmps`
  ADD CONSTRAINT `landingpages_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `landingpages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `playgames`
--
ALTER TABLE `playgames`
  ADD CONSTRAINT `playgames_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `playgames_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `playgames_cmps`
--
ALTER TABLE `playgames_cmps`
  ADD CONSTRAINT `playgames_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `playgames` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD CONSTRAINT `sponsors_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sponsors_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sponsors_cmps`
--
ALTER TABLE `sponsors_cmps`
  ADD CONSTRAINT `sponsors_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `sponsors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  ADD CONSTRAINT `strapi_api_token_permissions_token_lnk_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_lnk_ifk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  ADD CONSTRAINT `strapi_history_versions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD CONSTRAINT `strapi_releases_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_releases_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD CONSTRAINT `strapi_release_actions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_release_actions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  ADD CONSTRAINT `strapi_release_actions_release_lnk_fk` FOREIGN KEY (`release_action_id`) REFERENCES `strapi_release_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_release_actions_release_lnk_ifk` FOREIGN KEY (`release_id`) REFERENCES `strapi_releases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_sessions`
--
ALTER TABLE `strapi_sessions`
  ADD CONSTRAINT `strapi_sessions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_sessions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_lnk_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_lnk_ifk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  ADD CONSTRAINT `strapi_workflows_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_workflows_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  ADD CONSTRAINT `strapi_workflows_stages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_workflows_stages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  ADD CONSTRAINT `strapi_workflows_stages_permissions_lnk_fk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stages_permissions_lnk_ifk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  ADD CONSTRAINT `strapi_workflows_stages_workflow_lnk_fk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stages_workflow_lnk_ifk` FOREIGN KEY (`workflow_id`) REFERENCES `strapi_workflows` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_workflows_stage_required_to_publish_lnk`
--
ALTER TABLE `strapi_workflows_stage_required_to_publish_lnk`
  ADD CONSTRAINT `strapi_workflows_stage_required_to_publish_lnk_fk` FOREIGN KEY (`workflow_id`) REFERENCES `strapi_workflows` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stage_required_to_publish_lnk_ifk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  ADD CONSTRAINT `upload_folders_parent_lnk_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_lnk_ifk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  ADD CONSTRAINT `up_permissions_role_lnk_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  ADD CONSTRAINT `up_users_role_lnk_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
