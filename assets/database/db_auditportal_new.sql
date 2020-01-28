-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 28, 2020 at 04:11 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_auditportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

DROP TABLE IF EXISTS `cabang`;
CREATE TABLE `cabang` (
  `id_cabang` int(5) NOT NULL,
  `kode_cabang` varchar(20) NOT NULL,
  `nama_cabang` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `provinsi` varchar(150) NOT NULL,
  `no_telepon` varchar(150) NOT NULL,
  `kepala_cabang` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `id_user_senior` int(11) DEFAULT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`id_cabang`, `kode_cabang`, `nama_cabang`, `alamat`, `kota`, `provinsi`, `no_telepon`, `kepala_cabang`, `keterangan`, `id_user_senior`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'ID0010001', 'Bank Capital Kantor Kas Pasar Mester Jatinegara', 'Jakarta', '', '', '', '', '', NULL, 'Aktif', '2019-11-22 15:46:46', NULL, NULL, '2019-12-06 01:53:11', NULL, NULL),
(2, 'ID0010002', 'Bank Capital Kantor Kas PGC', 'Jakarta', '', '', '', '', '', NULL, 'Aktif', '2019-12-06 01:53:41', NULL, NULL, '2019-12-06 01:55:07', NULL, NULL),
(3, 'ID0010003', 'Bank Capital KCP Muara Karang', 'Jakarta', '', '', '', '', '', NULL, 'Aktif', '2019-12-06 01:54:13', NULL, NULL, '2019-12-06 01:55:07', NULL, NULL),
(5, 'ID0010004', 'Bank Capital KCP Pluit Kencana', 'Jakarta', '', '', '', '', '', NULL, 'Aktif', '2019-12-06 01:54:39', NULL, NULL, '2019-12-06 01:55:08', NULL, NULL),
(6, 'ID0010005', 'Bank Capital KCP Sunter', 'Jakarta', 'Jakarta Selatan', 'jakarta', '085215322899', 'asep', '-', 5, '', '2019-12-06 01:54:57', NULL, NULL, '2019-12-18 04:29:56', '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cat_bisnis`
--

DROP TABLE IF EXISTS `cat_bisnis`;
CREATE TABLE `cat_bisnis` (
  `id_cat_bisnis` int(5) NOT NULL,
  `id_cat_bisnis_header` int(5) DEFAULT NULL,
  `temuan` varchar(200) DEFAULT NULL,
  `klasifikasi_temuan` int(11) DEFAULT NULL,
  `kriteria` varchar(200) DEFAULT NULL,
  `dampak` varchar(200) DEFAULT NULL,
  `id_penyimpangan` int(5) DEFAULT NULL,
  `id_environment` int(5) DEFAULT NULL,
  `environment_value` int(11) DEFAULT NULL,
  `id_risk_assesment` int(5) DEFAULT NULL,
  `risk_assesment_value` int(11) DEFAULT NULL,
  `id_control_activities` int(5) DEFAULT NULL,
  `control_activities_value` int(11) DEFAULT NULL,
  `id_information_comunication` int(5) DEFAULT NULL,
  `information_comunication_value` int(11) DEFAULT NULL,
  `id_monitoring` int(5) DEFAULT NULL,
  `monitoring_value` int(11) DEFAULT NULL,
  `id_goal_strategic` int(5) DEFAULT NULL,
  `goal_strategic_value` int(11) DEFAULT NULL,
  `total_impact` int(11) DEFAULT NULL,
  `likelihood` float DEFAULT NULL,
  `repeated` varchar(10) DEFAULT NULL,
  `tev` float DEFAULT NULL,
  `bobot_resiko` varchar(100) DEFAULT NULL,
  `rekomendasi` varchar(200) DEFAULT NULL,
  `tanggapan_audit` varchar(100) DEFAULT NULL,
  `target_date` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `tl` varchar(100) DEFAULT NULL,
  `member` varchar(200) DEFAULT NULL,
  `tanggal_periksa` datetime DEFAULT NULL,
  `supervisor` varchar(100) DEFAULT NULL,
  `bop` varchar(100) DEFAULT NULL,
  `tanggal_selesai` datetime DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_bisnis`
--

INSERT INTO `cat_bisnis` (`id_cat_bisnis`, `id_cat_bisnis_header`, `temuan`, `klasifikasi_temuan`, `kriteria`, `dampak`, `id_penyimpangan`, `id_environment`, `environment_value`, `id_risk_assesment`, `risk_assesment_value`, `id_control_activities`, `control_activities_value`, `id_information_comunication`, `information_comunication_value`, `id_monitoring`, `monitoring_value`, `id_goal_strategic`, `goal_strategic_value`, `total_impact`, `likelihood`, `repeated`, `tev`, `bobot_resiko`, `rekomendasi`, `tanggapan_audit`, `target_date`, `status`, `tl`, `member`, `tanggal_periksa`, `supervisor`, `bop`, `tanggal_selesai`, `file`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(24, 39, 'hallo word1', 2, 'kehilangan', 'rugi', 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 12, 0.2, 'Yes', 2.64, 'Moderate', 'asadad', 'dasdasd', '2019-12-13 00:00:00', '2', '5', '3,6', '2019-12-19 00:00:00', '2', 'ada', '2019-12-12 00:00:00', '', 'Aktif', '2019-12-04 05:20:21', '::1', 3, '2019-12-19 02:08:31', '::1', 1),
(25, 40, 'hallo word 3', 2, 'kehilangan', 'rugi', 2, 2, 5, 2, 5, 2, 3, 2, 5, 2, 5, 2, 5, 28, 0.4, 'Yes', 12.32, 'Height', 'adfas', 'asdafsf', '2019-01-25 00:00:00', '1', '1', '3', '2019-12-30 00:00:00', 'sdsdfsdfsfsfsdfsf sdfgdfgdgdfg', 'ada', '2019-12-12 00:00:00', '', 'Aktif', '2019-12-04 06:59:02', '::1', 6, '2020-01-12 16:12:51', '127.0.0.1', 1),
(26, 40, 'halo word', 2, 'kehilangan', 'ttt', 2, 2, 1, 2, 1, 2, 1, 2, 2, 2, 1, 2, 5, 11, 0.2, 'Yes', 2.42, 'Moderate', 'halllo', 'asdfadfasfa', '2019-12-21 00:00:00', '1', '1', '3', '2019-12-30 00:00:00', 'sdfsdfsdfsdfsdf', 'ada', '2019-12-11 00:00:00', '', 'Aktif', '2019-12-12 08:30:45', '::1', 1, '2020-01-14 06:24:03', '127.0.0.1', 1),
(27, 40, 'ddddd', 2, 'kehilangan', 'tttfsdfsfs', 2, 2, 5, 2, 4, 2, 4, 2, 4, 2, 4, 2, 4, 25, 0.2, 'Yes', 5.5, 'Height', 'zxczc', 'zxcz', '2019-12-14 00:00:00', '1', '1', '3,6', '2019-12-30 00:00:00', 'jghjhjgfg', 'ada', '2019-12-13 00:00:00', '', 'Aktif', '2019-12-12 08:44:42', '::1', 1, '2019-12-19 02:07:45', '::1', 1),
(28, 41, 'sdads', 2, 'dasdasd', 'asdad', 2, 2, 3, 2, 1, 2, 4, 2, 1, 2, 4, 2, 1, 14, 0.2, 'Yes', 3.08, 'High', 'sdadasd', 'asdasd', '2020-01-15 00:00:00', '4', '1', '3', '2020-01-14 00:00:00', 'asdasdasdd', 'adasd', '2020-01-18 00:00:00', '', 'Aktif', '2020-01-11 13:59:54', '127.0.0.1', 1, '2020-01-14 06:24:06', '127.0.0.1', 1),
(29, 43, 'dfsdf', 2, 'sdfsdf', 'sdfsdf', 2, 2, 2, 2, 2, 2, 0, 1, 1, 1, 2, 1, 2, 12, 0.2, 'Yes', 2.64, 'Moderate', 'sdsdsf', 'sdfs', '2020-01-16 00:00:00', '4', '1', '6', '2020-01-15 00:00:00', 'sdfs', 'dsdfsfd', '2020-01-14 00:00:00', 'finding_synonims8.pdf', 'Aktif', '2020-01-14 04:33:21', '127.0.0.1', 1, '2020-01-14 06:42:48', '127.0.0.1', 1),
(30, 44, 'asdasd', 2, 'asdad', 'asdasd', 2, 1, 2, 2, 2, 1, 0, 2, 2, 2, 2, 1, 2, 12, 0.2, 'Yes', 2.64, 'Moderate', 'asdasd', 'asda', '2020-01-16 00:00:00', '1', '1', '3', '2020-01-15 00:00:00', 'asda', 'asdasd', '2020-01-15 00:00:00', 'finding_synonims14.pdf', 'Aktif', '2020-01-14 07:11:09', '127.0.0.1', 1, '2020-01-14 07:11:09', NULL, NULL),
(31, 44, 'adasd', 2, 'asdasd', 'asdasd', 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 1, 2, 12, 0.8, 'Yes', 10.56, 'High', 'asdasd', 'pppp', '2020-01-16 00:00:00', '1', '1', '3', '2020-01-15 00:00:00', 'dasda', 'dasd', '2020-01-15 00:00:00', 'finding_synonims15.pdf', 'Aktif', '2020-01-14 07:15:06', '127.0.0.1', 1, '2020-01-14 07:15:40', '127.0.0.1', 1),
(32, 44, 'asdasd', 2, 'asdad', 'asdasd', 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 1, 2, 12, 0.2, 'Yes', 2.64, 'Moderate', '', 'asda', '2020-01-22 00:00:00', '1', '1', '6', '2020-01-15 00:00:00', 'asdads', 'asdasd', '2020-01-22 00:00:00', 'finding_synonims16.pdf', 'Aktif', '2020-01-14 07:19:04', '127.0.0.1', 1, '2020-01-14 07:19:04', NULL, NULL),
(33, 45, 'asdasd', 2, 'asdasd', 'asdasd', 2, 2, 2, 1, 4, 2, 0, 2, 1, 2, 3, 2, 2, 15, 0.2, 'No', 3, 'Moderate', 'asdas', 'asda', '2020-01-18 00:00:00', '1', '1', '3', '2020-01-16 00:00:00', 'sdfsdf', 'dsdfsd', '2020-01-16 00:00:00', 'finding_synonims17.pdf', 'Aktif', '2020-01-15 02:15:47', '127.0.0.1', 1, '2020-01-18 12:52:30', '127.0.0.1', 1),
(34, 46, 'dfdfg', 1, 'dfgdfg', 'dfgdf', 2, 2, 2, 2, 3, 2, 2, 2, 3, 1, 3, 1, 2, 15, 0.6, 'Yes', 9.9, 'High', 'dfgdfg', 'dfgdfg', '2020-01-23 00:00:00', '1', '1', '3', '2020-01-22 00:00:00', 'sdfdfs', 'sdfsdf', '2020-01-23 00:00:00', 'finding_synonims18.pdf', 'Aktif', '2020-01-18 14:19:40', '127.0.0.1', 1, '2020-01-18 14:19:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cat_bisnis_header`
--

DROP TABLE IF EXISTS `cat_bisnis_header`;
CREATE TABLE `cat_bisnis_header` (
  `id_cat_bisnis_header` int(5) NOT NULL,
  `id_cabang` int(5) NOT NULL,
  `nama_cabang` varchar(150) NOT NULL,
  `periode` date NOT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_bisnis_header`
--

INSERT INTO `cat_bisnis_header` (`id_cat_bisnis_header`, `id_cabang`, `nama_cabang`, `periode`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(40, 1, 'Bank Capital Kantor Kas Pasar Mester Jatinegara', '2019-12-04', 'Aktif', '2019-12-04 06:59:02', '::1', 6, '2020-01-12 13:12:10', '::1', 6),
(39, 2, 'Bank Capital Kantor Kas PGC', '2019-12-04', 'Aktif', '2019-12-04 05:20:21', '::1', 3, '2020-01-12 13:12:05', '::1', 3),
(45, 2, 'Bank Capital Kantor Kas PGC', '2020-01-10', 'Aktif', '2020-01-15 02:15:47', NULL, NULL, '2020-01-15 02:15:47', NULL, NULL),
(41, 2, 'Bank Capital Kantor Kas PGC', '2020-01-11', 'Aktif', '2020-01-11 13:59:54', NULL, NULL, '2020-01-12 13:12:17', NULL, NULL),
(43, 2, 'Bank Capital Kantor Kas PGC', '2020-01-12', 'Aktif', '2020-01-14 04:33:21', NULL, NULL, '2020-01-14 04:33:21', NULL, NULL),
(46, 2, 'Bank Capital Kantor Kas PGC', '2020-01-15', 'Aktif', '2020-01-18 14:19:40', NULL, NULL, '2020-01-18 14:19:40', NULL, NULL),
(44, 3, 'Bank Capital KCP Muara Karang', '2020-01-24', 'Aktif', '2020-01-14 07:11:09', NULL, NULL, '2020-01-14 07:11:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cat_bisnis_new`
--

DROP TABLE IF EXISTS `cat_bisnis_new`;
CREATE TABLE `cat_bisnis_new` (
  `id_cat_bisnis` int(11) NOT NULL,
  `id_cabang` int(5) DEFAULT NULL,
  `temuan` varchar(2000) DEFAULT NULL,
  `klasifikasi_temuan` int(11) DEFAULT NULL,
  `kriteria` varchar(200) DEFAULT NULL,
  `dampak` varchar(200) DEFAULT NULL,
  `id_penyimpangan` int(5) DEFAULT NULL,
  `id_environment` int(5) DEFAULT NULL,
  `environment_value` int(11) DEFAULT NULL,
  `id_risk_assesment` int(5) DEFAULT NULL,
  `risk_assesment_value` int(11) DEFAULT NULL,
  `id_control_activities` int(5) DEFAULT NULL,
  `control_activities_value` int(11) DEFAULT NULL,
  `id_information_comunication` int(5) DEFAULT NULL,
  `information_comunication_value` int(11) DEFAULT NULL,
  `id_monitoring` int(5) DEFAULT NULL,
  `monitoring_value` int(11) DEFAULT NULL,
  `id_goal_strategic` int(5) DEFAULT NULL,
  `goal_strategic_value` int(11) DEFAULT NULL,
  `total_impact` int(11) DEFAULT NULL,
  `likelihood` float DEFAULT NULL,
  `repeated` varchar(10) DEFAULT NULL,
  `tev` float DEFAULT NULL,
  `bobot_resiko` varchar(100) DEFAULT NULL,
  `rekomendasi` varchar(200) DEFAULT NULL,
  `tanggapan_audit` varchar(100) DEFAULT NULL,
  `target_date` datetime DEFAULT NULL,
  `tanggal_periksa` datetime DEFAULT NULL,
  `tanggal_selesai` datetime DEFAULT NULL,
  `tl` varchar(100) DEFAULT NULL,
  `member` varchar(200) DEFAULT NULL,
  `supervisor` varchar(100) DEFAULT NULL,
  `bop` varchar(100) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_bisnis_new`
--

INSERT INTO `cat_bisnis_new` (`id_cat_bisnis`, `id_cabang`, `temuan`, `klasifikasi_temuan`, `kriteria`, `dampak`, `id_penyimpangan`, `id_environment`, `environment_value`, `id_risk_assesment`, `risk_assesment_value`, `id_control_activities`, `control_activities_value`, `id_information_comunication`, `information_comunication_value`, `id_monitoring`, `monitoring_value`, `id_goal_strategic`, `goal_strategic_value`, `total_impact`, `likelihood`, `repeated`, `tev`, `bobot_resiko`, `rekomendasi`, `tanggapan_audit`, `target_date`, `tanggal_periksa`, `tanggal_selesai`, `tl`, `member`, `supervisor`, `bop`, `file`, `status`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 1, 'sdfsdf', 2, 'sdfs', 'sdfsdf', 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 12, 0.2, 'Yes', 2.64, 'Moderate', 'sdfsdf', 'sdfsdf  fsdfsdf', '2020-01-29 00:00:00', '2020-01-28 00:00:00', '2020-01-29 00:00:00', '1', '3', 'sdfdsf', 'sdfds', 'test_halo.pdf', '1', 'Aktif', '2020-01-27 13:53:16', '127.0.0.1', 1, '2020-01-27 15:03:51', '127.0.0.1', 1),
(2, 1, 'sdfsdf', 1, 'dfsdf', 'sdfsd', 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 1, 1, 2, 6, 0.4, 'Yes', 2.64, 'Moderate', 'sdfs', 'sdfsdf', '2020-01-30 00:00:00', '2020-01-25 00:00:00', '2020-01-30 00:00:00', '1', '3', 'asdasd', 'sdad', 'peserta_41_50.pdf', '5', 'Aktif', '2020-01-27 14:59:35', '127.0.0.1', 1, '2020-01-27 15:14:02', NULL, NULL),
(3, 2, 'adasd', 2, 'asdasd', 'asdad', 2, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'Yes', 0, '', 'asdasd', 'asdad', '2020-01-30 00:00:00', '2020-01-29 00:00:00', '2020-01-30 00:00:00', '1', '3', 'asdads', 'aadsa', 'desin2.jpg', '1', 'Aktif', '2020-01-28 15:07:12', '127.0.0.1', 1, '2020-01-28 15:07:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cat_operasional`
--

DROP TABLE IF EXISTS `cat_operasional`;
CREATE TABLE `cat_operasional` (
  `id_cat_operasional` int(5) NOT NULL,
  `id_cat_operasional_header` int(11) DEFAULT NULL,
  `temuan` varchar(200) DEFAULT NULL,
  `klasifikasi_temuan` int(11) DEFAULT NULL,
  `kriteria` varchar(200) DEFAULT NULL,
  `dampak` varchar(200) DEFAULT NULL,
  `id_penyimpangan` int(5) DEFAULT NULL,
  `id_environment` int(5) DEFAULT NULL,
  `environment_value` int(11) DEFAULT NULL,
  `id_risk_assesment` int(5) DEFAULT NULL,
  `risk_assesment_value` int(11) DEFAULT NULL,
  `id_control_activities` int(5) DEFAULT NULL,
  `control_activities_value` int(11) DEFAULT NULL,
  `id_information_comunication` int(5) DEFAULT NULL,
  `information_comunication_value` int(11) DEFAULT NULL,
  `id_monitoring` int(5) DEFAULT NULL,
  `monitoring_value` int(11) DEFAULT '0',
  `total_impact` int(11) DEFAULT NULL,
  `likelihood` float DEFAULT NULL,
  `repeated` varchar(10) DEFAULT NULL,
  `tev` float DEFAULT NULL,
  `bobot_resiko` varchar(100) DEFAULT NULL,
  `rekomendasi` varchar(200) DEFAULT NULL,
  `tanggapan_audit` varchar(100) DEFAULT NULL,
  `target_date` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `tl` varchar(100) DEFAULT NULL,
  `member` varchar(200) DEFAULT NULL,
  `tanggal_periksa` datetime DEFAULT NULL,
  `supervisor` varchar(100) DEFAULT NULL,
  `bop` varchar(100) DEFAULT NULL,
  `tanggal_selesai` datetime DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_operasional`
--

INSERT INTO `cat_operasional` (`id_cat_operasional`, `id_cat_operasional_header`, `temuan`, `klasifikasi_temuan`, `kriteria`, `dampak`, `id_penyimpangan`, `id_environment`, `environment_value`, `id_risk_assesment`, `risk_assesment_value`, `id_control_activities`, `control_activities_value`, `id_information_comunication`, `information_comunication_value`, `id_monitoring`, `monitoring_value`, `total_impact`, `likelihood`, `repeated`, `tev`, `bobot_resiko`, `rekomendasi`, `tanggapan_audit`, `target_date`, `status`, `tl`, `member`, `tanggal_periksa`, `supervisor`, `bop`, `tanggal_selesai`, `file`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(17, 55, 'ada yang hilang', 2, 'kehilangan', 'rugi', 2, 2, 1, 2, 0, 2, 1, 2, 1, 2, 1, 4, 0.8, 'Yes', 3.52, 'Height', 'cfdfs', 'fsdfsdf', '2020-01-16 00:00:00', '1', '1', '3', '2020-01-15 00:00:00', 'sdfsdfs', 'ada', '2019-12-12 00:00:00', '', 'Aktif', '2019-12-05 04:53:00', '::1', 3, '2020-01-14 06:17:48', '127.0.0.1', 1),
(18, 55, 'opt', 1, 'kehilangan', 'sdfsdfsdfsf', 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 5, 0.2, 'Yes', 1.1, 'Low', 'asdasd', 'asdsadasda', '2020-01-15 00:00:00', '4', '1', '3', '2020-01-13 00:00:00', 'sdasdasdasdasd', 'asdasd', '2019-12-19 00:00:00', 'finding_synonims7.pdf', 'Aktif', '2019-12-12 09:02:47', '::1', 3, '2020-01-14 06:23:19', '127.0.0.1', 1),
(19, 56, 'dfsdfds', 2, 'sdfsd', 'sdfsd', 2, 1, 2, 2, 2, 1, 2, 2, 2, 1, 2, 10, 0.8, 'Yes', 8.8, 'High', 'sdfsdf', 'sdfs', '2020-01-16 00:00:00', '1', '1', '6', '2020-01-15 00:00:00', 'sdfsdf', 'sdfsdf', '2020-01-15 00:00:00', 'finding_synonims9.pdf', 'Aktif', '2020-01-14 06:51:22', '127.0.0.1', 1, '2020-01-14 06:51:22', NULL, NULL),
(20, 57, 'asda', 2, 'asda', 'asda', 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 10, 0.8, 'Yes', 8.8, 'High', 'asdasd', 'asdasd', '2020-01-16 00:00:00', '1', '1', '3', '2020-01-15 00:00:00', 'sdfsdfsf', 'dsfsdf', '2020-01-15 00:00:00', 'finding_synonims10.pdf', 'Aktif', '2020-01-14 06:55:28', '127.0.0.1', 1, '2020-01-14 06:55:28', NULL, NULL),
(21, 58, 'adsasd', 2, 'asdasd', 'asdasd', 1, 2, 3, 2, 2, 2, 3, 2, 2, 1, 2, 12, 0.2, 'Yes', 2.64, 'Moderate', 'asdasd', 'asdasd', '2020-01-16 00:00:00', '1', '1', '6', '2020-01-15 00:00:00', 'asdasda', 'asdasd', '2020-01-15 00:00:00', 'finding_synonims11.pdf', 'Aktif', '2020-01-14 06:59:32', '127.0.0.1', 1, '2020-01-14 06:59:32', NULL, NULL),
(22, 59, 'asdasd', 2, 'asdasd', 'asdad', 1, 2, 3, 2, 2, 1, 2, 2, 2, 1, 2, 11, 0.2, 'Yes', 2.42, 'Moderate', 'asdasd', 'asdasd', '2020-01-17 00:00:00', '1', '1', '3,6', '2020-01-15 00:00:00', 'asdasd', 'asdasda', '2020-01-15 00:00:00', 'finding_synonims12.pdf', 'Aktif', '2020-01-14 07:07:08', '127.0.0.1', 1, '2020-01-14 07:07:08', NULL, NULL),
(23, 59, 'asdaa', 2, 'asda', 'asdad', 1, 1, 2, 2, 3, 2, 2, 2, 2, 1, 3, 12, 1, 'Yes', 13.2, 'High', 'asd', 'asd', '2020-01-22 00:00:00', '1', '1', '3,6', '2020-01-21 00:00:00', 'asdasd', 'asdad', '2020-01-22 00:00:00', 'finding_synonims13.pdf', 'Aktif', '2020-01-14 07:09:27', '127.0.0.1', 1, '2020-01-14 07:09:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cat_operasional_header`
--

DROP TABLE IF EXISTS `cat_operasional_header`;
CREATE TABLE `cat_operasional_header` (
  `id_cat_operasional_header` int(5) NOT NULL,
  `id_cabang` int(5) NOT NULL,
  `nama_cabang` varchar(150) NOT NULL,
  `periode` date NOT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_operasional_header`
--

INSERT INTO `cat_operasional_header` (`id_cat_operasional_header`, `id_cabang`, `nama_cabang`, `periode`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(55, 1, 'Bank Capital Kantor Kas Pasar Mester Jatinegara', '2019-12-06', 'Nonaktif', '2019-12-05 04:53:00', '::1', 3, '2020-01-14 06:52:06', '::1', 3),
(58, 1, 'Bank Capital Kantor Kas Pasar Mester Jatinegara', '2020-01-15', 'Aktif', '2020-01-14 06:59:32', NULL, NULL, '2020-01-14 06:59:32', NULL, NULL),
(56, 2, 'Bank Capital Kantor Kas PGC', '2020-01-14', 'Nonaktif', '2020-01-14 06:51:22', NULL, NULL, '2020-01-14 06:58:35', NULL, NULL),
(57, 2, 'Bank Capital Kantor Kas PGC', '2020-01-15', 'Aktif', '2020-01-14 06:55:28', NULL, NULL, '2020-01-14 06:55:28', NULL, NULL),
(59, 2, 'Bank Capital Kantor Kas PGC', '2020-01-16', 'Aktif', '2020-01-14 07:07:08', NULL, NULL, '2020-01-14 07:07:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cat_operasional_new`
--

DROP TABLE IF EXISTS `cat_operasional_new`;
CREATE TABLE `cat_operasional_new` (
  `id_cat_operasional` int(5) NOT NULL,
  `id_cabang` int(5) DEFAULT NULL,
  `temuan` varchar(2000) DEFAULT NULL,
  `klasifikasi_temuan` int(11) DEFAULT NULL,
  `kriteria` varchar(200) DEFAULT NULL,
  `dampak` varchar(200) DEFAULT NULL,
  `id_penyimpangan` int(5) DEFAULT NULL,
  `id_environment` int(5) DEFAULT NULL,
  `environment_value` int(11) DEFAULT NULL,
  `id_risk_assesment` int(5) DEFAULT NULL,
  `risk_assesment_value` int(11) DEFAULT NULL,
  `id_control_activities` int(5) DEFAULT NULL,
  `control_activities_value` int(11) DEFAULT NULL,
  `id_information_comunication` int(5) DEFAULT NULL,
  `information_comunication_value` int(11) DEFAULT NULL,
  `id_monitoring` int(5) DEFAULT NULL,
  `monitoring_value` int(11) DEFAULT '0',
  `total_impact` int(11) DEFAULT NULL,
  `likelihood` float DEFAULT NULL,
  `repeated` varchar(10) DEFAULT NULL,
  `tev` float DEFAULT NULL,
  `bobot_resiko` varchar(100) DEFAULT NULL,
  `rekomendasi` varchar(2000) DEFAULT NULL,
  `tanggapan_audit` varchar(2000) DEFAULT NULL,
  `target_date` datetime DEFAULT NULL,
  `tanggal_periksa` datetime DEFAULT NULL,
  `tanggal_selesai` datetime DEFAULT NULL,
  `tl` varchar(100) DEFAULT NULL,
  `member` varchar(200) DEFAULT NULL,
  `supervisor` varchar(100) DEFAULT NULL,
  `bop` varchar(100) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_operasional_new`
--

INSERT INTO `cat_operasional_new` (`id_cat_operasional`, `id_cabang`, `temuan`, `klasifikasi_temuan`, `kriteria`, `dampak`, `id_penyimpangan`, `id_environment`, `environment_value`, `id_risk_assesment`, `risk_assesment_value`, `id_control_activities`, `control_activities_value`, `id_information_comunication`, `information_comunication_value`, `id_monitoring`, `monitoring_value`, `total_impact`, `likelihood`, `repeated`, `tev`, `bobot_resiko`, `rekomendasi`, `tanggapan_audit`, `target_date`, `tanggal_periksa`, `tanggal_selesai`, `tl`, `member`, `supervisor`, `bop`, `file`, `status`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 2, 'sdff', 2, 'dfsd', 'sdfsdf', 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 10, 0.4, 'Yes', 4.4, 'High', 'sdfsdf', 'sdfsdfsfsdfsfsf', '2020-01-29 00:00:00', '2020-01-28 00:00:00', '2020-01-29 00:00:00', '1', '3,6', 'sdfsdf', 'sdfsdf', 'desin1.jpg', '1', 'Aktif', '2020-01-28 14:51:25', '127.0.0.1', 1, '2020-01-28 14:57:21', '127.0.0.1', 1),
(2, 1, 'asdsad', 2, 'dasda', 'asdasd', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.8, 'Yes', 0, 'Low', 'asdasd', 'asda', '2020-01-31 00:00:00', '2020-01-30 00:00:00', '2020-01-31 00:00:00', '1', '3,6', 'asdasd', 'asdasd', 'desin3.jpg', '1', 'Aktif', '2020-01-28 15:09:45', '127.0.0.1', 1, '2020-01-28 15:09:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('09a29606a7d05e03815aed03269b1bcd8521f3bb', '127.0.0.1', 1579357180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393335373138303b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('0a3361442db591d84f09bb6dd948025eff593f35', '127.0.0.1', 1579351846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393335313834363b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('0ba05ebc97418d86679995a37443a088ac8d8fd4', '127.0.0.1', 1579352803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393335323830333b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('10a1ca964f6008472ea972150efc90a85e6882b3', '127.0.0.1', 1580136523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133363532333b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('116eae6449add38a9ee69f1724146043e8728840', '127.0.0.1', 1579049671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393034393532313b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('118839418cda7656f71733b97a9c9544e7372481', '127.0.0.1', 1580128473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303132383437333b),
('13cda7d68d39ebf8acb987b96b8f459e1d6711fa', '127.0.0.1', 1579956615, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393935363437303b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b),
('14b29014d696f1b62c8081907d4b796be310f615', '127.0.0.1', 1578986344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383938363334343b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('1fae4d44f8298114d77644169a9012c1dc4d440f', '127.0.0.1', 1580221348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303232313334383b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b),
('200d86de622d1a5592e32a4feffb625c6112e8ea', '127.0.0.1', 1580133086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133333038363b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('27b815880ec64e69ad49ca0edf3004b076eedb1a', '127.0.0.1', 1580135743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133353734333b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('281770ca2e2b41ec0bef0d45135e66333a9316d3', '127.0.0.1', 1580221713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303232313731333b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b),
('2871a54cbc8a4bd3dd0f6ec753e0298be4c25843', '127.0.0.1', 1578984394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383938343339343b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b6d6573736167657c613a323a7b733a343a2274797065223b733a31333a22616c6572742d73756363657373223b733a353a22706573616e223b733a32313a22557064617465205265636f72642053756363657373223b7d5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('2c0a817bce4484e6f6ee89b57904748c50d04228', '127.0.0.1', 1579357180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393335373138303b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b6d6573736167657c613a323a7b733a343a2274797065223b733a31333a22616c6572742d73756363657373223b733a353a22706573616e223b733a32313a22437265617465205265636f72642053756363657373223b7d5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('2f76f13eb4fb9cb6c04464f63c25e15c4990fbc5', '127.0.0.1', 1580132262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133323236323b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('2fe2f345f6ad08f1cf8ec3bf1cda1a32a3599a82', '127.0.0.1', 1580129317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303132393331373b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('338468abd49d8594f7caa6e48aa7aec897859478', '127.0.0.1', 1579352423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393335323432333b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('389c30501677b14c87a96ce5ae300426442ad649', '127.0.0.1', 1579321699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393332313638303b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('3e56fcd0406e75ee73c1549c8b7015fb08ad773f', '127.0.0.1', 1579059041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393035393030343b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('412ea34eb27e70345ee3ac1c361cad2f0b07862f', '127.0.0.1', 1580223933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303232333933333b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b),
('47bee245f70167ec27aadfce056586589a0b8689', '127.0.0.1', 1579351730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393335313733303b),
('48112fb053b2e4e3a6a29435b119890cb11b97a7', '127.0.0.1', 1580135374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133353337343b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('4bfb6a1944ac4a00d31c6aed9cd6d7974559391a', '127.0.0.1', 1580224187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303232333933333b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b),
('4d20c9a29fb47517737e48bb0ce2fb80e381c0d6', '127.0.0.1', 1580222526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303232323532363b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b),
('4ee6400b1f502c29a51341778879e17bd62a4b24', '127.0.0.1', 1578984788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383938343738383b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('57b77d435ee300cc144fe036c61f2210ef0bca6c', '127.0.0.1', 1580138999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133383939393b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('5aabe0a41ddd5b711d1a2b767d428b4e2785dae7', '127.0.0.1', 1580138550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133383535303b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('5c238e7cece311e45e085bbb4b8c419ab29b0c43', '127.0.0.1', 1579355575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393335353537353b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('5c46526d0d7a9f3ec7ecba3687e0e8dfe33dcf37', '127.0.0.1', 1580138179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133383137393b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('5f75982fd0960d4013cc4062624180f1d7ca0f5e', '127.0.0.1', 1580133461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133333436313b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('5fc7938355fff13936a2036b6fd3f26a723ff6e5', '127.0.0.1', 1580132677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133323637373b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('66d34cae3737f5482fc85751cf57c33f16635ad4', '127.0.0.1', 1579054837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393035343833373b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('6c088a5022fd73186f625fb5b932e10d0fc06ccf', '127.0.0.1', 1579361142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393336303935393b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('71f4d2577bf9dc4d0e790312ce19991213f10436', '127.0.0.1', 1580131142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133313134323b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('7cf931bb89ee9f89fdd98b638f3e3651f556013e', '127.0.0.1', 1579358197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393335383139333b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('7f06814770db9a01a3e797b3abd93b0a5bc7e4b3', '127.0.0.1', 1580222899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303232323839393b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b),
('82830019a041b357c3766e3405db3b97d4bac044', '127.0.0.1', 1580133880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133333838303b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('842f50718fef36b42ec3487b992b9e52110ff788', '127.0.0.1', 1580134991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133343939313b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('84435558e67cff574aa2b01d1461840058e21bac', '127.0.0.1', 1580137297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133373239373b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('8b269086312c578b4aceba1599f51638125a8a0a', '127.0.0.1', 1580223314, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303232333331343b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b),
('8b86a0556ce836bbc3fccecc90ae1af95929d74e', '127.0.0.1', 1580141914, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134313931333b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('8d602c518841358fbed542726979da2234e69ece', '127.0.0.1', 1580136915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133363931353b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('8d7a3681a0342fe41e3a159eeb4e82b31cf8a980', '127.0.0.1', 1578983931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383938333933313b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b6d6573736167657c613a323a7b733a343a2274797065223b733a31333a22616c6572742d7761726e696e67223b733a353a22706573616e223b733a31393a225265636f726420616c72656479206578697374223b7d5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('8da349a7dd4de52a6348851a16c8a1f1148a3529', '127.0.0.1', 1580134246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133343234363b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('94bf02344ef536c5f879cf5cdab2b079ffbee693', '127.0.0.1', 1580136156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133363135363b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b6d6573736167657c613a323a7b733a343a2274797065223b733a31333a22616c6572742d7761726e696e67223b733a353a22706573616e223b733a31363a225265636f7264204e6f7420466f756e64223b7d5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('968606ff70c745e08379deab892ccc7e90624462', '127.0.0.1', 1579057663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393035373633333b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('a3ad43da881721cf666698bddd766b94ee5e1a68', '127.0.0.1', 1578985566, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383938353536363b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('a7d3560469037c2f686f7f25146305e54db31b72', '127.0.0.1', 1580137723, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133373732333b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('a832f1990c23d9c8dddb36028b615fb627ec821d', '127.0.0.1', 1579055096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393035343833373b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('b889082e103739f1b5134f3b6b98363e8a6bf607', '127.0.0.1', 1579352971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393335323830333b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('bfa863c4d6a32e3638ffa7640b703104f28a929e', '127.0.0.1', 1580139741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133393734313b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('c3e70480120816d8316e4ab07effbb80a0ca3fd2', '127.0.0.1', 1579354550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393335343535303b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('d4ae290eb25bd05dfa1db880d39fa8f4ba50213c', '127.0.0.1', 1580141348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134313334383b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b);
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('d551f7b8f1a86f06f22fe55ecd92c4b1b9dc70e4', '127.0.0.1', 1578986345, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383938363334343b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b6d6573736167657c613a323a7b733a343a2274797065223b733a31333a22616c6572742d73756363657373223b733a353a22706573616e223b733a32313a22437265617465205265636f72642053756363657373223b7d5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('d7524d7f58eb553a35b413d27c23d72c549c1c5d', '127.0.0.1', 1579360959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393336303935393b),
('d788cccc885da4f227b7b831e7d93a69b9711136', '127.0.0.1', 1580128295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303132383239353b),
('d832075be24efb56217e466a115b00af4cb53093', '127.0.0.1', 1580131505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133313530353b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('db847dfbc3b933646964c5790531afcffb13bc98', '127.0.0.1', 1578985938, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383938353933383b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('dde891dbfb7aec78f5e85e6bd68ebc84ebb0fb17', '127.0.0.1', 1580139372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133393337323b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('e02991edbb0cedbdee26abdbd8f8f89f794e9ba0', '127.0.0.1', 1580131875, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133313837353b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('e1e2148500800fcb946932fcb0de671c9290e69f', '127.0.0.1', 1578985165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383938353136353b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('e3ee9a3508478bfc00aabe19ff4136f140eaa94f', '127.0.0.1', 1579355575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393335353537353b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('e529d1d48fa4a6d9bf44ee8276ccfd02b7aa3dcf', '127.0.0.1', 1580140572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134303537323b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('e8a198335027d4d7003fc92788a39055a91299f7', '127.0.0.1', 1579355168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537393335353136383b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424365064436a5a347836566c6542544979494d526e492e337554766445566c634161776d666b31757457504461516647374431363832223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d32352032333a31363a3536223b6578706972655f646174657c733a31393a22323032302d30312d32342030303a30303a3030223b),
('ea0a20be409cc6971c5b78c774e80e5266231a60', '127.0.0.1', 1580222156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303232323135363b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b),
('ec2d1ae63c57df388e3b9a2980f2994b07551e7e', '127.0.0.1', 1580128877, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303132383837373b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b),
('ef6221f57e3b95880dc9c09c1eb02b8a27293dca', '127.0.0.1', 1580130329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133303332393b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('f6aa16eac55359b5f6d849a28ae207152f545054', '127.0.0.1', 1580129952, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303132393935323b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('f7f0bb6cc76b6e132fb99a835072d57e278ee259', '127.0.0.1', 1580141913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134313931333b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('f87deef29f750525a1f50e49fea0bff1c5e0e8ca', '127.0.0.1', 1580134607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133343630373b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b),
('fe6eeda14d25cd7411df477b7b1fe65409b4f418', '127.0.0.1', 1580130728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133303732383b6e6f5f68707c4e3b6578706972655f646174657c733a31393a22323032302d30322d32342030303a30303a3030223b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a2224327924303424466b6b795430634a75797a6d744f724a636f55496f4f6b6d4d774b46717365346262594a306565734567494c4368706b734a536f6d223b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323032302d30312d32352031393a34393a3331223b);

-- --------------------------------------------------------

--
-- Table structure for table `control_activities`
--

DROP TABLE IF EXISTS `control_activities`;
CREATE TABLE `control_activities` (
  `id_control_activities` int(5) NOT NULL,
  `nama_control_activities` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `control_activities`
--

INSERT INTO `control_activities` (`id_control_activities`, `nama_control_activities`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Efisiensi dan efektifitas proses penanganan transaksi', '', 'Aktif', '2019-11-23 14:56:06', NULL, NULL, '2019-11-23 14:56:06', NULL, NULL),
(2, 'Evaluasi berkesinambungan', '', 'Aktif', '2019-11-23 14:56:17', NULL, NULL, '2019-11-23 14:56:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cont_environment`
--

DROP TABLE IF EXISTS `cont_environment`;
CREATE TABLE `cont_environment` (
  `id_environment` int(5) NOT NULL,
  `nama_environment` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cont_environment`
--

INSERT INTO `cont_environment` (`id_environment`, `nama_environment`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Implimentasi kepatuhan terhadap peraturan atau arahan', '', 'Aktif', '2019-11-23 14:27:24', NULL, NULL, '2019-11-23 14:27:24', NULL, NULL),
(2, 'Integritas dan etika', '', 'Aktif', '2019-11-23 14:27:37', NULL, NULL, '2019-11-23 14:27:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

DROP TABLE IF EXISTS `divisi`;
CREATE TABLE `divisi` (
  `id_divisi` int(11) NOT NULL,
  `divisi` varchar(100) NOT NULL,
  `aktif` enum('Aktif','Nonaktif') NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `divisi`, `aktif`) VALUES
(1, 'Divisi A', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `goal_strategic`
--

DROP TABLE IF EXISTS `goal_strategic`;
CREATE TABLE `goal_strategic` (
  `id_goal_strategic` int(5) NOT NULL,
  `nama_goal_strategic` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goal_strategic`
--

INSERT INTO `goal_strategic` (`id_goal_strategic`, `nama_goal_strategic`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Penetapan tujuan dan target kerja', '', 'Aktif', '2019-11-23 14:58:08', NULL, NULL, '2019-11-23 14:58:08', NULL, NULL),
(2, 'Pencapaian kinerja dibandingkan dengan budget', '', 'Aktif', '2019-11-23 14:58:18', NULL, NULL, '2019-11-23 14:58:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `information_comunication`
--

DROP TABLE IF EXISTS `information_comunication`;
CREATE TABLE `information_comunication` (
  `id_information_comunication` int(5) NOT NULL,
  `nama_information_comunication` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `information_comunication`
--

INSERT INTO `information_comunication` (`id_information_comunication`, `nama_information_comunication`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Komunikasi internal', '', 'Aktif', '2019-11-23 14:24:52', NULL, NULL, '2019-11-23 14:57:15', NULL, NULL),
(2, 'Integritas dan etika', '', 'Aktif', '2019-11-23 14:25:04', NULL, NULL, '2019-11-23 14:25:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `klasifikasi_temuan`
--

DROP TABLE IF EXISTS `klasifikasi_temuan`;
CREATE TABLE `klasifikasi_temuan` (
  `id_klasifikasi_temuan` int(5) NOT NULL,
  `nama_klasifikasi_temuan` varchar(150) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klasifikasi_temuan`
--

INSERT INTO `klasifikasi_temuan` (`id_klasifikasi_temuan`, `nama_klasifikasi_temuan`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Administrasi dan Dokumentasi', NULL, 'Aktif', '2019-11-23 14:07:45', NULL, NULL, '2019-11-23 14:08:04', NULL, NULL),
(2, 'Akuntansi', NULL, 'Aktif', '2019-11-23 14:08:27', NULL, NULL, '2019-11-23 14:08:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log_target_date`
--

DROP TABLE IF EXISTS `log_target_date`;
CREATE TABLE `log_target_date` (
  `id_log_cat` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `target_date_old` date NOT NULL,
  `target_date_new` date NOT NULL,
  `kategori` varchar(15) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_ip` varchar(15) NOT NULL,
  `create_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_target_date`
--

INSERT INTO `log_target_date` (`id_log_cat`, `id_cat`, `target_date_old`, `target_date_new`, `kategori`, `create_date`, `create_ip`, `create_by`) VALUES
(1, 25, '2019-12-12', '2019-12-18', 'cat_binis', '2019-12-31 15:16:23', '127.0.0.1', 4),
(2, 25, '2019-12-18', '2019-06-13', 'cat_binis', '2019-12-31 15:17:45', '127.0.0.1', 4),
(3, 25, '2019-06-13', '2019-01-25', 'cat_binis', '2019-12-31 15:18:49', '127.0.0.1', 4),
(4, 18, '2019-12-06', '2019-12-13', 'cat_operasional', '2019-12-31 15:24:45', '127.0.0.1', 4);

-- --------------------------------------------------------

--
-- Table structure for table `monitoring`
--

DROP TABLE IF EXISTS `monitoring`;
CREATE TABLE `monitoring` (
  `id_monitoring` int(5) NOT NULL,
  `nama_monitoring` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monitoring`
--

INSERT INTO `monitoring` (`id_monitoring`, `nama_monitoring`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Pemantauan perbaikan tindak lanjut', '', 'Aktif', '2019-11-23 14:57:41', NULL, NULL, '2019-11-23 14:57:41', NULL, NULL),
(2, 'Pemantauan perbaikan tindak lanjut', '', 'Aktif', '2019-11-23 14:57:54', NULL, NULL, '2019-11-23 14:57:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penyimpangan`
--

DROP TABLE IF EXISTS `penyimpangan`;
CREATE TABLE `penyimpangan` (
  `id_penyimpangan` int(5) NOT NULL,
  `nama_penyimpangan` varchar(150) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyimpangan`
--

INSERT INTO `penyimpangan` (`id_penyimpangan`, `nama_penyimpangan`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Kurangnya Pemahaman Prosedur', NULL, 'Aktif', '2019-11-23 14:23:03', NULL, NULL, '2019-11-23 14:23:03', NULL, NULL),
(2, 'Kelalaian/Tidak Teliti', NULL, 'Aktif', '2019-11-23 14:23:16', NULL, NULL, '2019-11-23 14:23:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `risk_assesment`
--

DROP TABLE IF EXISTS `risk_assesment`;
CREATE TABLE `risk_assesment` (
  `id_risk_assesment` int(5) NOT NULL,
  `nama_risk_assesment` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_assesment`
--

INSERT INTO `risk_assesment` (`id_risk_assesment`, `nama_risk_assesment`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Pelaporan ke kantor pusat', '', 'Aktif', '2019-11-23 14:58:45', NULL, NULL, '2019-11-23 14:58:45', NULL, NULL),
(2, 'Efisiensi dan efektifitas layanan', '', 'Aktif', '2019-11-23 14:58:56', NULL, NULL, '2019-11-23 14:58:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_trx`
--

DROP TABLE IF EXISTS `status_trx`;
CREATE TABLE `status_trx` (
  `id_status` int(11) NOT NULL,
  `status_trx` varchar(100) NOT NULL,
  `aktif` enum('Aktif','Nonaktif') NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_trx`
--

INSERT INTO `status_trx` (`id_status`, `status_trx`, `aktif`) VALUES
(1, 'Pending', 'Aktif'),
(2, 'Progress', 'Aktif'),
(3, 'Jatuh Tempo', 'Aktif'),
(4, 'Done', 'Aktif'),
(5, 'Drop', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hak_akses`
--

DROP TABLE IF EXISTS `tbl_hak_akses`;
CREATE TABLE `tbl_hak_akses` (
  `id` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hak_akses`
--

INSERT INTO `tbl_hak_akses` (`id`, `id_user_level`, `id_menu`) VALUES
(15, 1, 1),
(19, 1, 3),
(21, 2, 1),
(30, 1, 2),
(31, 2, 9),
(34, 1, 10),
(38, 2, 2),
(39, 2, 3),
(40, 2, 10),
(48, 4, 10),
(52, 1, 14),
(54, 2, 14),
(58, 4, 14),
(60, 2, 16),
(61, 1, 16),
(62, 2, 17),
(63, 1, 17),
(64, 2, 18),
(65, 1, 18),
(67, 1, 19),
(73, 1, 22),
(75, 1, 23),
(76, 1, 24),
(77, 1, 26),
(78, 1, 25),
(79, 1, 27),
(80, 1, 28),
(81, 1, 29),
(82, 1, 30),
(83, 1, 31),
(84, 4, 16),
(85, 4, 17),
(86, 4, 18),
(87, 4, 19),
(92, 4, 24),
(93, 4, 25),
(96, 4, 28),
(97, 4, 29),
(98, 4, 31),
(99, 4, 2),
(104, 1, 9),
(105, 1, 11),
(106, 1, 12),
(107, 1, 13),
(108, 1, 15),
(109, 1, 20),
(110, 1, 21),
(111, 1, 32),
(112, 1, 33),
(113, 2, 19),
(114, 2, 24),
(115, 2, 25),
(116, 2, 33),
(117, 2, 32),
(118, 2, 31),
(121, 2, 27),
(122, 2, 34),
(123, 3, 35),
(126, 1, 34),
(127, 4, 34),
(131, 4, 33),
(132, 3, 32),
(133, 3, 36),
(134, 2, 38),
(135, 2, 37),
(136, 4, 37),
(137, 4, 38),
(138, 4, 27),
(139, 4, 39),
(140, 2, 39),
(141, 1, 36),
(142, 1, 37),
(143, 1, 38),
(144, 1, 39),
(145, 1, 40),
(146, 1, 41),
(148, 1, 43),
(149, 1, 44),
(150, 1, 42),
(151, 1, 45),
(152, 1, 46),
(153, 1, 47),
(154, 1, 48),
(155, 1, 49),
(156, 1, 50),
(157, 1, 51),
(158, 1, 52),
(159, 4, 52),
(160, 4, 51),
(161, 6, 51),
(162, 6, 52),
(163, 7, 51),
(164, 7, 52),
(165, 4, 53),
(166, 1, 53),
(167, 5, 53),
(168, 5, 31),
(169, 5, 54),
(170, 4, 54),
(171, 1, 54),
(172, 1, 55),
(173, 4, 55),
(174, 1, 56),
(175, 1, 57),
(176, 1, 58);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_user`
--

DROP TABLE IF EXISTS `tbl_log_user`;
CREATE TABLE `tbl_log_user` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_log_history` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `action` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `deskripsi` varchar(225) NOT NULL,
  `action_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu` (
  `id_menu` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_main_menu` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL COMMENT 'y=yes,n=no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_menu`, `title`, `url`, `icon`, `is_main_menu`, `is_aktif`) VALUES
(1, 'KELOLA MENU', 'kelolamenu', 'fa fa-server', 31, 'y'),
(2, 'KELOLA USER', 'user', 'fa fa-user-o', 31, 'y'),
(3, 'Kelola Level User', 'userlevel', 'fa fa-users', 31, 'y'),
(9, 'Contoh Form', 'welcome/form', 'fa fa-id-card', 31, 'y'),
(10, 'Parameter Setting', '#', 'fa fa-cogs', 0, 'y'),
(31, 'Administration', '#', 'fa fa-cubes', 0, 'y'),
(40, 'Cabang', 'cabang', 'fa fa-th-list', 10, 'y'),
(41, 'Cont. Environment', 'cont_environment', 'fa fa-th-list', 10, 'y'),
(42, 'Risk Assessment', 'risk_assesment', 'fa fa-th-list', 10, 'y'),
(43, 'Cont. Activities', 'control_activities', 'fa fa-th-list', 10, 'y'),
(44, 'Info. Comunication', 'information_comunication', 'fa fa-th-list', 10, 'y'),
(45, 'Divisi', 'divisi', 'fa fa-th-list', 10, 'y'),
(46, 'Monitoring', 'monitoring', 'fa fa-th-list', 10, 'y'),
(47, 'Klasifikasi Temuan', 'klasifikasi_temuan', 'fa fa-th-list', 10, 'y'),
(48, 'Penyimpangan', 'penyimpangan', 'fa fa-th-list', 10, 'y'),
(49, 'Status Trx', 'status_trx', 'fa fa-th-list', 10, 'y'),
(50, 'Goal Strategic', 'goal_strategic', 'fa fa-th-list', 10, 'y'),
(51, 'CAT Bisnis', 'cat_bisnis', 'fa fa-pencil-square-o', 0, 'y'),
(52, 'CAT Operasional', 'cat_operasional', 'fa fa-pencil-square-o', 0, 'y'),
(53, 'Otorisasi', 'otorisasi', 'fa fa-building', 31, 'y'),
(54, 'Reporting', 'reporting', 'fa fa-building', 31, 'y'),
(55, 'gtev', 'gtev', 'fa fa-user', 31, 'y'),
(56, 'jatuh Tempo', 'jatuh_tempo', 'fa fa-user', 31, 'y'),
(57, 'cat bisnis new', 'cat_bisnis_new', 'fa fa-user', 0, 'y'),
(58, 'cat operasional new', 'cat_operasional_new', 'fa fa-user', 0, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

DROP TABLE IF EXISTS `tbl_setting`;
CREATE TABLE `tbl_setting` (
  `id_setting` int(11) NOT NULL,
  `nama_setting` varchar(50) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id_setting`, `nama_setting`, `value`) VALUES
(1, 'Tampil Menu', 'ya');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id_users` int(11) NOT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `images` text NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `id_cabang` varchar(20) NOT NULL,
  `id_divisi` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL,
  `tgl_daftar` datetime NOT NULL,
  `tgl_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expire_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_users`, `nik`, `full_name`, `email`, `password`, `no_hp`, `images`, `id_user_level`, `id_cabang`, `id_divisi`, `is_aktif`, `tgl_daftar`, `tgl_update`, `expire_date`) VALUES
(1, NULL, 'Bayu Ihsanudin', 'bayu070494@gmail.com', '$2y$04$FkkyT0cJuyzmtOrJcoUIoOkmMwKFqse4bbYJ0eesEgILChpksJSom', NULL, 'atomix_user31.png', 1, '', 0, 'y', '2018-09-01 00:00:00', '2020-01-25 12:49:31', '2020-02-24 00:00:00'),
(2, '3211030304890004', 'yustian budiman', 'yustianbudiman@gmail.com', '$2y$04$OE18cB.2BgfNwH8GS54E4uJRSA5/HpmANMEw5XeH7gd1ESM8Jd1U6', '085215322899', 'atomix_user31.png', 4, '1', 1, 'y', '2019-12-06 08:23:41', '2019-12-31 14:56:32', '2020-01-30 00:00:00'),
(3, '3211030304890004', 'audit1', 'audit1@gmail.com', '$2y$04$XcUfc43f9RWlBIY75ThvZOHoqZ.urBHD8zYFdZQf3XQhUA0bvPZuO', '129312371873183', '', 6, '1', 1, 'y', '2019-12-06 08:37:43', '2019-12-25 14:50:36', '2019-12-24 00:00:00'),
(4, '3211030304890003', 'piket', 'piket@gmail.com', '$2y$04$82dV88q1/0Bp2aCjP.XGtOXTyxzE5.c9jfIv1X3etz4.i8YxWhLuq', '085215322890', '', 7, '1', 1, 'y', '2019-12-09 11:07:22', '2019-12-31 14:58:18', '2020-01-30 00:00:00'),
(5, '3211030304890001', 'senior audit', 'senior_audit@gmail.com', '$2y$04$dzCcCoOsEoF53ajBvXKJDu1sdTE80FnsAXMzxgtFUHOzUztlyvRwi', '085215322898', '', 5, '1', 1, 'y', '2019-12-11 08:57:49', '2019-12-25 14:50:44', '2019-12-24 00:00:00'),
(6, '3211030304890007', 'audit2', 'audit2@gmail.com', '$2y$04$5BPNxODOpD1uqh/sKFtJROqt1cMSPvgGejxsXeNDmmhqGAdrd0okO', '085215322800', '', 6, '1', 1, 'y', '2019-12-12 01:22:51', '2019-12-25 14:50:47', '2019-12-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_level`
--

DROP TABLE IF EXISTS `tbl_user_level`;
CREATE TABLE `tbl_user_level` (
  `id_user_level` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_level`
--

INSERT INTO `tbl_user_level` (`id_user_level`, `nama_level`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'User Kadiv'),
(4, 'User Kabag'),
(5, 'User Senior Auditor'),
(6, 'User Auditor'),
(7, 'piket');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_cat_bisnis`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `v_cat_bisnis`;
CREATE TABLE `v_cat_bisnis` (
`id_cat_bisnis` int(5)
,`id_cat_bisnis_header` int(5)
,`id_cabang` int(5)
,`nama_cabang` varchar(150)
,`alamat` varchar(150)
,`temuan` varchar(200)
,`nama_klasifikasi_temuan` varchar(150)
,`kriteria` varchar(200)
,`dampak` varchar(200)
,`nama_penyimpangan` varchar(150)
,`nama_environment` varchar(150)
,`environment_value` int(11)
,`nama_risk_assesment` varchar(150)
,`risk_assesment_value` int(11)
,`nama_control_activities` varchar(150)
,`control_activities_value` int(11)
,`nama_information_comunication` varchar(150)
,`information_comunication_value` int(11)
,`nama_monitoring` varchar(150)
,`monitoring_value` int(11)
,`nama_goal_strategic` varchar(150)
,`goal_strategic_value` int(11)
,`total_impact` int(11)
,`likelihood` float
,`repeated` varchar(10)
,`tev` float
,`bobot_resiko` varchar(100)
,`rekomendasi` varchar(200)
,`tanggapan_audit` varchar(100)
,`target_date` datetime
,`tl` varchar(100)
,`member` varchar(200)
,`tanggal_periksa` datetime
,`supervisor` varchar(100)
,`bop` varchar(100)
,`status_trx` varchar(100)
,`aktif` enum('Aktif','Nonaktif')
,`created_by` int(11)
,`updated_by` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_cat_operasional`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `v_cat_operasional`;
CREATE TABLE `v_cat_operasional` (
`id_cat_operasional` int(5)
,`id_cat_operasional_header` int(11)
,`id_cabang` int(5)
,`nama_cabang` varchar(150)
,`alamat` varchar(150)
,`temuan` varchar(200)
,`nama_klasifikasi_temuan` varchar(150)
,`kriteria` varchar(200)
,`dampak` varchar(200)
,`nama_penyimpangan` varchar(150)
,`nama_environment` varchar(150)
,`environment_value` int(11)
,`nama_risk_assesment` varchar(150)
,`risk_assesment_value` int(11)
,`nama_control_activities` varchar(150)
,`control_activities_value` int(11)
,`nama_information_comunication` varchar(150)
,`information_comunication_value` int(11)
,`nama_monitoring` varchar(150)
,`monitoring_value` int(11)
,`total_impact` int(11)
,`likelihood` float
,`repeated` varchar(10)
,`tev` float
,`bobot_resiko` varchar(100)
,`rekomendasi` varchar(200)
,`tanggapan_audit` varchar(100)
,`target_date` datetime
,`tl` varchar(100)
,`member` varchar(200)
,`tanggal_periksa` datetime
,`supervisor` varchar(100)
,`bop` varchar(100)
,`status_trx` varchar(100)
,`aktif` enum('Aktif','Nonaktif')
,`created_by` int(11)
,`updated_by` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_jatuhtempo`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `v_jatuhtempo`;
CREATE TABLE `v_jatuhtempo` (
`id_cat` int(11)
,`nama_cat` varchar(15)
,`selisih` bigint(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_notifikasi`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `v_notifikasi`;
CREATE TABLE `v_notifikasi` (
`nama_cat` varchar(15)
,`target_date` datetime
,`nama_cabang` varchar(150)
,`tanggal_notif` datetime
,`status` bigint(20)
,`email_user` varchar(50)
,`email_user_senior` varchar(50)
,`email_user_piket` text
,`email_user_kabag` text
);

-- --------------------------------------------------------

--
-- Structure for view `v_cat_bisnis`
--
DROP TABLE IF EXISTS `v_cat_bisnis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cat_bisnis`  AS  select `a`.`id_cat_bisnis` AS `id_cat_bisnis`,`a`.`id_cat_bisnis_header` AS `id_cat_bisnis_header`,`k`.`id_cabang` AS `id_cabang`,`k`.`nama_cabang` AS `nama_cabang`,`l`.`alamat` AS `alamat`,`a`.`temuan` AS `temuan`,`b`.`nama_klasifikasi_temuan` AS `nama_klasifikasi_temuan`,`a`.`kriteria` AS `kriteria`,`a`.`dampak` AS `dampak`,`c`.`nama_penyimpangan` AS `nama_penyimpangan`,`e`.`nama_environment` AS `nama_environment`,`a`.`environment_value` AS `environment_value`,`f`.`nama_risk_assesment` AS `nama_risk_assesment`,`a`.`risk_assesment_value` AS `risk_assesment_value`,`g`.`nama_control_activities` AS `nama_control_activities`,`a`.`control_activities_value` AS `control_activities_value`,`h`.`nama_information_comunication` AS `nama_information_comunication`,`a`.`information_comunication_value` AS `information_comunication_value`,`i`.`nama_monitoring` AS `nama_monitoring`,`a`.`monitoring_value` AS `monitoring_value`,`j`.`nama_goal_strategic` AS `nama_goal_strategic`,`a`.`goal_strategic_value` AS `goal_strategic_value`,`a`.`total_impact` AS `total_impact`,`a`.`likelihood` AS `likelihood`,`a`.`repeated` AS `repeated`,`a`.`tev` AS `tev`,`a`.`bobot_resiko` AS `bobot_resiko`,`a`.`rekomendasi` AS `rekomendasi`,`a`.`tanggapan_audit` AS `tanggapan_audit`,`a`.`target_date` AS `target_date`,`a`.`tl` AS `tl`,`a`.`member` AS `member`,`a`.`tanggal_periksa` AS `tanggal_periksa`,`a`.`supervisor` AS `supervisor`,`a`.`bop` AS `bop`,`d`.`status_trx` AS `status_trx`,`a`.`aktif` AS `aktif`,`a`.`created_by` AS `created_by`,`a`.`updated_by` AS `updated_by` from (((((((((((`cat_bisnis` `a` join `cat_bisnis_header` `k` on((`a`.`id_cat_bisnis_header` = `k`.`id_cat_bisnis_header`))) join `klasifikasi_temuan` `b` on((`a`.`klasifikasi_temuan` = `b`.`id_klasifikasi_temuan`))) join `penyimpangan` `c` on((`a`.`id_penyimpangan` = `c`.`id_penyimpangan`))) join `status_trx` `d` on((`a`.`status` = `d`.`id_status`))) left join `cont_environment` `e` on((`a`.`id_environment` = `e`.`id_environment`))) left join `risk_assesment` `f` on((`a`.`id_risk_assesment` = `f`.`id_risk_assesment`))) left join `control_activities` `g` on((`a`.`id_control_activities` = `g`.`id_control_activities`))) left join `information_comunication` `h` on((`a`.`id_information_comunication` = `h`.`id_information_comunication`))) left join `monitoring` `i` on((`a`.`id_monitoring` = `i`.`id_monitoring`))) left join `goal_strategic` `j` on((`a`.`id_goal_strategic` = `j`.`id_goal_strategic`))) left join `cabang` `l` on((`k`.`id_cabang` = `l`.`id_cabang`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_cat_operasional`
--
DROP TABLE IF EXISTS `v_cat_operasional`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cat_operasional`  AS  select `a`.`id_cat_operasional` AS `id_cat_operasional`,`a`.`id_cat_operasional_header` AS `id_cat_operasional_header`,`k`.`id_cabang` AS `id_cabang`,`k`.`nama_cabang` AS `nama_cabang`,`l`.`alamat` AS `alamat`,`a`.`temuan` AS `temuan`,`b`.`nama_klasifikasi_temuan` AS `nama_klasifikasi_temuan`,`a`.`kriteria` AS `kriteria`,`a`.`dampak` AS `dampak`,`c`.`nama_penyimpangan` AS `nama_penyimpangan`,`e`.`nama_environment` AS `nama_environment`,`a`.`environment_value` AS `environment_value`,`f`.`nama_risk_assesment` AS `nama_risk_assesment`,`a`.`risk_assesment_value` AS `risk_assesment_value`,`g`.`nama_control_activities` AS `nama_control_activities`,`a`.`control_activities_value` AS `control_activities_value`,`h`.`nama_information_comunication` AS `nama_information_comunication`,`a`.`information_comunication_value` AS `information_comunication_value`,`i`.`nama_monitoring` AS `nama_monitoring`,`a`.`monitoring_value` AS `monitoring_value`,`a`.`total_impact` AS `total_impact`,`a`.`likelihood` AS `likelihood`,`a`.`repeated` AS `repeated`,`a`.`tev` AS `tev`,`a`.`bobot_resiko` AS `bobot_resiko`,`a`.`rekomendasi` AS `rekomendasi`,`a`.`tanggapan_audit` AS `tanggapan_audit`,`a`.`target_date` AS `target_date`,`a`.`tl` AS `tl`,`a`.`member` AS `member`,`a`.`tanggal_periksa` AS `tanggal_periksa`,`a`.`supervisor` AS `supervisor`,`a`.`bop` AS `bop`,`d`.`status_trx` AS `status_trx`,`a`.`aktif` AS `aktif`,`a`.`created_by` AS `created_by`,`a`.`updated_by` AS `updated_by` from ((((((((((`cat_operasional` `a` join `klasifikasi_temuan` `b` on((`a`.`klasifikasi_temuan` = `b`.`id_klasifikasi_temuan`))) join `penyimpangan` `c` on((`a`.`id_penyimpangan` = `c`.`id_penyimpangan`))) join `status_trx` `d` on((`a`.`status` = `d`.`id_status`))) join `cont_environment` `e` on((`a`.`id_environment` = `e`.`id_environment`))) join `risk_assesment` `f` on((`a`.`id_risk_assesment` = `f`.`id_risk_assesment`))) join `control_activities` `g` on((`a`.`id_control_activities` = `g`.`id_control_activities`))) join `information_comunication` `h` on((`a`.`id_information_comunication` = `h`.`id_information_comunication`))) join `monitoring` `i` on((`a`.`id_monitoring` = `i`.`id_monitoring`))) join `cat_operasional_header` `k` on((`a`.`id_cat_operasional_header` = `k`.`id_cat_operasional_header`))) join `cabang` `l` on((`k`.`id_cabang` = `l`.`id_cabang`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_jatuhtempo`
--
DROP TABLE IF EXISTS `v_jatuhtempo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_mjw4etn3mh`@`localhost` SQL SECURITY DEFINER VIEW `v_jatuhtempo`  AS  select `cat_bisnis`.`id_cat_bisnis` AS `id_cat`,'cat bisnis' AS `nama_cat`,(to_days(`cat_bisnis`.`target_date`) - to_days(curdate())) AS `selisih` from `cat_bisnis` union all select `cat_operasional`.`id_cat_operasional` AS `id_cat`,'cat operasional' AS `nama_cat`,(to_days(`cat_operasional`.`target_date`) - to_days(curdate())) AS `selisih` from `cat_operasional` ;

-- --------------------------------------------------------

--
-- Structure for view `v_notifikasi`
--
DROP TABLE IF EXISTS `v_notifikasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_notifikasi`  AS  select 'Cat Bisnis' AS `nama_cat`,`a`.`target_date` AS `target_date`,`c`.`nama_cabang` AS `nama_cabang`,(`a`.`target_date` - interval 3 day) AS `tanggal_notif`,(to_days(`a`.`target_date`) - to_days(curdate())) AS `status`,`d`.`email` AS `email_user`,`e`.`email` AS `email_user_senior`,(select group_concat(`tbl_user`.`email` separator ',') from `tbl_user` where (`tbl_user`.`id_user_level` = 7)) AS `email_user_piket`,(select group_concat(`tbl_user`.`email` separator ',') from `tbl_user` where (`tbl_user`.`id_user_level` = 4)) AS `email_user_kabag` from ((((`cat_bisnis` `a` join `cat_bisnis_header` `b` on((`a`.`id_cat_bisnis_header` = `b`.`id_cat_bisnis_header`))) join `cabang` `c` on((`b`.`id_cabang` = `c`.`id_cabang`))) join `tbl_user` `d` on((`a`.`created_by` = `d`.`id_users`))) left join `tbl_user` `e` on((`c`.`id_user_senior` = `e`.`id_users`))) union all select 'Cat Operasional' AS `nama_cat`,`a`.`target_date` AS `target_date`,`c`.`nama_cabang` AS `nama_cabang`,(`a`.`target_date` - interval 3 day) AS `tanggal_notif`,(to_days(`a`.`target_date`) - to_days(curdate())) AS `status`,`d`.`email` AS `email_user`,`e`.`email` AS `email_user_senior`,(select group_concat(`tbl_user`.`email` separator ',') from `tbl_user` where (`tbl_user`.`id_user_level` = 7)) AS `email_user_piket`,(select group_concat(`tbl_user`.`email` separator ',') from `tbl_user` where (`tbl_user`.`id_user_level` = 4)) AS `email_user_kabag` from ((((`cat_operasional` `a` join `cat_operasional_header` `b` on((`a`.`id_cat_operasional_header` = `b`.`id_cat_operasional_header`))) join `cabang` `c` on((`b`.`id_cabang` = `c`.`id_cabang`))) join `tbl_user` `d` on((`a`.`created_by` = `d`.`id_users`))) left join `tbl_user` `e` on((`c`.`id_user_senior` = `e`.`id_users`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`id_cabang`),
  ADD UNIQUE KEY `kode_cabang` (`kode_cabang`);

--
-- Indexes for table `cat_bisnis`
--
ALTER TABLE `cat_bisnis`
  ADD PRIMARY KEY (`id_cat_bisnis`);

--
-- Indexes for table `cat_bisnis_header`
--
ALTER TABLE `cat_bisnis_header`
  ADD PRIMARY KEY (`id_cabang`,`periode`),
  ADD UNIQUE KEY `id_cat_bisnis_header` (`id_cat_bisnis_header`) USING BTREE;

--
-- Indexes for table `cat_bisnis_new`
--
ALTER TABLE `cat_bisnis_new`
  ADD PRIMARY KEY (`id_cat_bisnis`);

--
-- Indexes for table `cat_operasional`
--
ALTER TABLE `cat_operasional`
  ADD PRIMARY KEY (`id_cat_operasional`);

--
-- Indexes for table `cat_operasional_header`
--
ALTER TABLE `cat_operasional_header`
  ADD PRIMARY KEY (`id_cabang`,`periode`),
  ADD UNIQUE KEY `id_cat_operasional_header` (`id_cat_operasional_header`) USING BTREE;

--
-- Indexes for table `cat_operasional_new`
--
ALTER TABLE `cat_operasional_new`
  ADD PRIMARY KEY (`id_cat_operasional`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`,`ip_address`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `control_activities`
--
ALTER TABLE `control_activities`
  ADD PRIMARY KEY (`id_control_activities`);

--
-- Indexes for table `cont_environment`
--
ALTER TABLE `cont_environment`
  ADD PRIMARY KEY (`id_environment`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `goal_strategic`
--
ALTER TABLE `goal_strategic`
  ADD PRIMARY KEY (`id_goal_strategic`);

--
-- Indexes for table `information_comunication`
--
ALTER TABLE `information_comunication`
  ADD PRIMARY KEY (`id_information_comunication`);

--
-- Indexes for table `klasifikasi_temuan`
--
ALTER TABLE `klasifikasi_temuan`
  ADD PRIMARY KEY (`id_klasifikasi_temuan`);

--
-- Indexes for table `log_target_date`
--
ALTER TABLE `log_target_date`
  ADD PRIMARY KEY (`id_log_cat`);

--
-- Indexes for table `monitoring`
--
ALTER TABLE `monitoring`
  ADD PRIMARY KEY (`id_monitoring`);

--
-- Indexes for table `penyimpangan`
--
ALTER TABLE `penyimpangan`
  ADD PRIMARY KEY (`id_penyimpangan`);

--
-- Indexes for table `risk_assesment`
--
ALTER TABLE `risk_assesment`
  ADD PRIMARY KEY (`id_risk_assesment`);

--
-- Indexes for table `status_trx`
--
ALTER TABLE `status_trx`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_log_user`
--
ALTER TABLE `tbl_log_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_users`);

--
-- Indexes for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cabang`
--
ALTER TABLE `cabang`
  MODIFY `id_cabang` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cat_bisnis`
--
ALTER TABLE `cat_bisnis`
  MODIFY `id_cat_bisnis` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cat_bisnis_header`
--
ALTER TABLE `cat_bisnis_header`
  MODIFY `id_cat_bisnis_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `cat_bisnis_new`
--
ALTER TABLE `cat_bisnis_new`
  MODIFY `id_cat_bisnis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cat_operasional`
--
ALTER TABLE `cat_operasional`
  MODIFY `id_cat_operasional` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cat_operasional_header`
--
ALTER TABLE `cat_operasional_header`
  MODIFY `id_cat_operasional_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `cat_operasional_new`
--
ALTER TABLE `cat_operasional_new`
  MODIFY `id_cat_operasional` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `control_activities`
--
ALTER TABLE `control_activities`
  MODIFY `id_control_activities` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cont_environment`
--
ALTER TABLE `cont_environment`
  MODIFY `id_environment` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `goal_strategic`
--
ALTER TABLE `goal_strategic`
  MODIFY `id_goal_strategic` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `information_comunication`
--
ALTER TABLE `information_comunication`
  MODIFY `id_information_comunication` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `klasifikasi_temuan`
--
ALTER TABLE `klasifikasi_temuan`
  MODIFY `id_klasifikasi_temuan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log_target_date`
--
ALTER TABLE `log_target_date`
  MODIFY `id_log_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `monitoring`
--
ALTER TABLE `monitoring`
  MODIFY `id_monitoring` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penyimpangan`
--
ALTER TABLE `penyimpangan`
  MODIFY `id_penyimpangan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `risk_assesment`
--
ALTER TABLE `risk_assesment`
  MODIFY `id_risk_assesment` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status_trx`
--
ALTER TABLE `status_trx`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `tbl_log_user`
--
ALTER TABLE `tbl_log_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
