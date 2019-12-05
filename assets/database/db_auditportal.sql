-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Des 2019 pada 16.26
-- Versi server: 10.1.25-MariaDB
-- Versi PHP: 7.3.1

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
-- Struktur dari tabel `cabang`
--

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
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cabang`
--

INSERT INTO `cabang` (`id_cabang`, `kode_cabang`, `nama_cabang`, `alamat`, `kota`, `provinsi`, `no_telepon`, `kepala_cabang`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'ID0010001', '0001 - KPO', 'Jakarta', 'tes', 'tes', 'tes', 'tes', 'tes', 'Aktif', '2019-11-22 15:46:46', NULL, NULL, '2019-12-05 15:03:41', '::1', 1),
(2, 'ID0010002', '0002 - JPM Psr Mester', 'tes', 'tes', 'tes', 'tes', 'tes', 'tes', 'Aktif', '2019-12-04 22:23:15', '::1', 1, '2019-12-04 22:23:15', NULL, NULL),
(3, 'ID0010003', '0003 - GLD Glodok', 'tes', 'tes', 'tes', 'tes', 'tes', 'tes', 'Aktif', '2019-12-04 22:24:10', '::1', 1, '2019-12-04 22:24:10', NULL, NULL),
(4, 'ID0010004', '0004 - POL PangPolim', 'tes', 'tes', 'tes', 'tes', 'tes', 'tes', 'Aktif', '2019-12-04 22:24:45', '::1', 1, '2019-12-04 22:24:45', NULL, NULL),
(5, 'ID0010005', '0005 - MGD Mangga Dua', 'tes', 'tes', 'tes', 'tes', 'tes', 'tes', 'Aktif', '2019-12-04 22:25:17', '::1', 1, '2019-12-04 22:25:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cat_bisnis`
--

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
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cat_bisnis`
--

INSERT INTO `cat_bisnis` (`id_cat_bisnis`, `id_cat_bisnis_header`, `temuan`, `klasifikasi_temuan`, `kriteria`, `dampak`, `id_penyimpangan`, `id_environment`, `environment_value`, `id_risk_assesment`, `risk_assesment_value`, `id_control_activities`, `control_activities_value`, `id_information_comunication`, `information_comunication_value`, `id_monitoring`, `monitoring_value`, `id_goal_strategic`, `goal_strategic_value`, `total_impact`, `likelihood`, `repeated`, `tev`, `bobot_resiko`, `rekomendasi`, `tanggapan_audit`, `target_date`, `status`, `tl`, `member`, `tanggal_periksa`, `supervisor`, `bop`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(24, 39, 'ada yang hilang', 2, 'kehilangan', 'rugi', 2, 2, 2, 2, 2, NULL, NULL, 2, 2, 2, 2, 2, 2, NULL, 0.1, NULL, 12, 'height', 'asadad', 'dasdasd', '2019-12-04 00:00:00', 'Open', 'Robin Selamat', 'A,B,C', '2019-12-04 00:00:00', 'B', 'ada', 'Aktif', '2019-12-04 05:20:21', NULL, NULL, '2019-12-04 05:20:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cat_bisnis_header`
--

CREATE TABLE `cat_bisnis_header` (
  `id_cat_bisnis_header` int(5) NOT NULL,
  `id_cabang` int(5) DEFAULT NULL,
  `nama_cabang` varchar(150) NOT NULL,
  `periode` date DEFAULT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cat_bisnis_header`
--

INSERT INTO `cat_bisnis_header` (`id_cat_bisnis_header`, `id_cabang`, `nama_cabang`, `periode`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(39, 1, 'kopo', '2019-12-04', 'Aktif', '2019-12-04 05:20:21', NULL, NULL, '2019-12-04 05:20:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cat_operasional`
--

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
  `probaly` float DEFAULT NULL,
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
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cat_operasional_header`
--

CREATE TABLE `cat_operasional_header` (
  `id_cat_operasional_header` int(5) NOT NULL,
  `id_cabang` int(5) DEFAULT NULL,
  `nama_cabang` varchar(150) NOT NULL,
  `periode` date DEFAULT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cat_operasional_header`
--

INSERT INTO `cat_operasional_header` (`id_cat_operasional_header`, `id_cabang`, `nama_cabang`, `periode`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(29, 1, 'kopo', '2019-11-27', 'Aktif', '2019-11-26 13:59:09', NULL, NULL, '2019-11-26 13:59:09', NULL, NULL),
(31, 1, 'kopo raya', '2019-11-28', 'Aktif', '2019-11-28 07:13:47', NULL, NULL, '2019-11-28 07:13:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1cumgr1gov0cb8e49b43aibjgn48cr3r', '::1', 1575559551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353535393337313b6e6f5f68707c733a31313a223038313138303831303830223b69645f75736572737c733a313a2231223b6e696b7c733a31363a2233333333333333333333333333333333223b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a222432792430342457627966763478776968622e2e504f6668785935592e6a484f4a714546494733644c66425977416d6e4f4143704830455743436471223b696d616765737c733a32353a226c6f676f2d74616e67616e2d74656c6b6f6d2d32322e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a313a2231223b69645f6469766973697c733a313a2231223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d30352032323a32303a3531223b),
('2kfa3p1ik85bf5f1qm5a8e5sej70cavb', '::1', 1575498875, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353439383837353b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a222432792430342457627966763478776968622e2e504f6668785935592e6a484f4a714546494733644c66425977416d6e4f4143704830455743436471223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031382d31312d31322030363a32343a3535223b),
('6bl362jel1kq2s91cepnjhkjmfos1753', '::1', 1575559371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353535393337313b6e6f5f68707c733a31313a223038313138303831303830223b69645f75736572737c733a313a2231223b6e696b7c733a31363a2233333333333333333333333333333333223b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a222432792430342457627966763478776968622e2e504f6668785935592e6a484f4a714546494733644c66425977416d6e4f4143704830455743436471223b696d616765737c733a32353a226c6f676f2d74616e67616e2d74656c6b6f6d2d32322e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a313a2231223b69645f6469766973697c733a313a2231223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031392d31322d30352032323a32303a3531223b),
('9vt2r0u8kg1r299k6af0ed07lus7fm4j', '::1', 1575559006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353535393030363b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a222432792430342457627966763478776968622e2e504f6668785935592e6a484f4a714546494733644c66425977416d6e4f4143704830455743436471223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031382d31312d31322030363a32343a3535223b),
('hd20bk44qjq2es338algtmnvdspkagel', '::1', 1575557549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353535373534393b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a222432792430342457627966763478776968622e2e504f6668785935592e6a484f4a714546494733644c66425977416d6e4f4143704830455743436471223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031382d31312d31322030363a32343a3535223b),
('m6qjmr5v88hq4g2jf7bp30o1i4bivn1i', '::1', 1575497953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353439373935333b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a222432792430342457627966763478776968622e2e504f6668785935592e6a484f4a714546494733644c66425977416d6e4f4143704830455743436471223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031382d31312d31322030363a32343a3535223b),
('pc80bai4dnqlsr5mhjemjp4mjbovierp', '::1', 1575558544, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353535383534343b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a222432792430342457627966763478776968622e2e504f6668785935592e6a484f4a714546494733644c66425977416d6e4f4143704830455743436471223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031382d31312d31322030363a32343a3535223b),
('qd7pm6a507ap14gin2p6mdu03fd929ad', '::1', 1575558146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353535383134363b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a222432792430342457627966763478776968622e2e504f6668785935592e6a484f4a714546494733644c66425977416d6e4f4143704830455743436471223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031382d31312d31322030363a32343a3535223b),
('rairn61jiul3sl37mj8hqs0vk35eft7c', '::1', 1575497589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353439373538393b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a222432792430342457627966763478776968622e2e504f6668785935592e6a484f4a714546494733644c66425977416d6e4f4143704830455743436471223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031382d31312d31322030363a32343a3535223b),
('upl0qvcjfhpn1m10ln0so46lqtppuesq', '::1', 1575499070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353439383837353b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a222432792430342457627966763478776968622e2e504f6668785935592e6a484f4a714546494733644c66425977416d6e4f4143704830455743436471223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031382d31312d31322030363a32343a3535223b),
('v8722ln89tf24qcr0kkbvso1lvclbith', '::1', 1575498317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353439383331373b69645f75736572737c733a313a2231223b6e696b7c4e3b66756c6c5f6e616d657c733a31343a224261797520496873616e7564696e223b656d61696c7c733a32303a226261797530373034393440676d61696c2e636f6d223b70617373776f72647c733a36303a222432792430342457627966763478776968622e2e504f6668785935592e6a484f4a714546494733644c66425977416d6e4f4143704830455743436471223b6e6f5f68707c4e3b696d616765737c733a31373a2261746f6d69785f7573657233312e706e67223b69645f757365725f6c6576656c7c733a313a2231223b69645f636162616e677c733a303a22223b69645f6469766973697c733a313a2230223b69735f616b7469667c733a313a2279223b74676c5f6461667461727c733a31393a22323031382d30392d30312030303a30303a3030223b74676c5f7570646174657c733a31393a22323031382d31312d31322030363a32343a3535223b);

-- --------------------------------------------------------

--
-- Struktur dari tabel `control_activities`
--

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
-- Dumping data untuk tabel `control_activities`
--

INSERT INTO `control_activities` (`id_control_activities`, `nama_control_activities`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Efisiensi dan efektifitas proses penanganan transaksi', '', 'Aktif', '2019-11-23 14:56:06', NULL, NULL, '2019-11-23 14:56:06', NULL, NULL),
(2, 'Evaluasi berkesinambungan', '', 'Aktif', '2019-11-23 14:56:17', NULL, NULL, '2019-11-23 14:56:17', NULL, NULL),
(3, 'Akurasi data', 'Akurasi data', 'Aktif', '2019-12-04 22:15:18', '::1', 1, '2019-12-04 22:15:18', NULL, NULL),
(4, 'Analisa data', 'Analisa data', 'Aktif', '2019-12-04 22:15:38', '::1', 1, '2019-12-04 22:15:38', NULL, NULL),
(5, 'Kecukupan SDM', 'Kecukupan SDM', 'Aktif', '2019-12-04 22:16:15', '::1', 1, '2019-12-04 22:16:15', NULL, NULL),
(6, 'Kelengkapan proses transaksi', 'Kelengkapan proses transaksi', 'Aktif', '2019-12-04 22:16:33', '::1', 1, '2019-12-04 22:16:33', NULL, NULL),
(7, 'Ketepatan waktu dalam proses transaksi', 'Ketepatan waktu dalam proses transaksi', 'Aktif', '2019-12-04 22:16:52', '::1', 1, '2019-12-04 22:16:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cont_environment`
--

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
-- Dumping data untuk tabel `cont_environment`
--

INSERT INTO `cont_environment` (`id_environment`, `nama_environment`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Implimentasi kepatuhan terhadap peraturan atau arahan', '', 'Aktif', '2019-11-23 14:27:24', NULL, NULL, '2019-11-23 14:27:24', NULL, NULL),
(2, 'Integritas dan etika', '', 'Aktif', '2019-11-23 14:27:37', NULL, NULL, '2019-11-23 14:27:37', NULL, NULL),
(3, 'Kecukupan Kebijakan dan Prosedur', 'Kecukupan Kebijakan dan Prosedur', 'Aktif', '2019-12-04 22:12:29', '::1', 1, '2019-12-04 22:12:29', NULL, NULL),
(4, 'Pelaksanaan Training', 'Pelaksanaan Training', 'Aktif', '2019-12-04 22:12:49', '::1', 1, '2019-12-04 22:12:49', NULL, NULL),
(5, 'Peningkatan Kompetensi', 'Peningkatan Kompetensi', 'Aktif', '2019-12-04 22:13:09', '::1', 1, '2019-12-04 22:13:09', NULL, NULL),
(6, 'Struktur Organisasi', 'Struktur Organisasi', 'Aktif', '2019-12-04 22:13:25', '::1', 1, '2019-12-04 22:13:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` int(11) NOT NULL,
  `divisi` varchar(100) NOT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `divisi`, `aktif`) VALUES
(1, 'Divisi A', 'Aktif'),
(2, 'Divisi B', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `goal_strategic`
--

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
-- Dumping data untuk tabel `goal_strategic`
--

INSERT INTO `goal_strategic` (`id_goal_strategic`, `nama_goal_strategic`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Penetapan tujuan dan target kerja', 'Penetapan tujuan dan target kerja', 'Aktif', '2019-11-23 14:58:08', NULL, NULL, '2019-12-04 22:20:30', '::1', 1),
(2, 'Pencapaian kinerja dibandingkan dengan budget', 'Pencapaian kinerja dibandingkan dengan budget', 'Aktif', '2019-11-23 14:58:18', NULL, NULL, '2019-12-04 22:20:12', '::1', 1),
(3, 'Pengukuran dan pelaporan pencapaian kinerja', 'Pengukuran dan pelaporan pencapaian kinerja', 'Aktif', '2019-12-04 22:20:46', '::1', 1, '2019-12-04 22:20:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `information_comunication`
--

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
-- Dumping data untuk tabel `information_comunication`
--

INSERT INTO `information_comunication` (`id_information_comunication`, `nama_information_comunication`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Komunikasi internal', '', 'Aktif', '2019-11-23 14:24:52', NULL, NULL, '2019-11-23 14:57:15', NULL, NULL),
(2, 'Penyebaran informasi', 'Penyebaran informasi', 'Aktif', '2019-11-23 14:25:04', NULL, NULL, '2019-12-04 22:18:05', '::1', 1),
(3, 'Diskusi berkala', 'Diskusi berkala', 'Aktif', '2019-12-04 22:17:17', '::1', 1, '2019-12-04 22:17:17', NULL, NULL),
(4, 'Koordinasi dengan pihak terkait', 'Koordinasi dengan pihak terkait', 'Aktif', '2019-12-04 22:17:42', '::1', 1, '2019-12-04 22:17:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `klasifikasi_temuan`
--

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
-- Dumping data untuk tabel `klasifikasi_temuan`
--

INSERT INTO `klasifikasi_temuan` (`id_klasifikasi_temuan`, `nama_klasifikasi_temuan`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Administrasi dan Dokumentasi', NULL, 'Aktif', '2019-11-23 14:07:45', NULL, NULL, '2019-11-23 14:08:04', NULL, NULL),
(2, 'Akuntansi', NULL, 'Aktif', '2019-11-23 14:08:27', NULL, NULL, '2019-11-23 14:08:27', NULL, NULL),
(3, 'Biaya Bina Relasi (CPA)', 'Biaya Bina Relasi (CPA)', 'Aktif', '2019-12-04 22:09:04', '::1', 1, '2019-12-04 22:09:04', NULL, NULL),
(4, 'Blank Form', 'Blank Form', 'Aktif', '2019-12-04 22:09:27', '::1', 1, '2019-12-04 22:09:27', NULL, NULL),
(5, 'By Fax Transaction', 'By Fax Transaction', 'Aktif', '2019-12-04 22:09:47', '::1', 1, '2019-12-04 22:09:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `monitoring`
--

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
-- Dumping data untuk tabel `monitoring`
--

INSERT INTO `monitoring` (`id_monitoring`, `nama_monitoring`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Mekanisme pelaporan penyimpangan', 'Mekanisme pelaporan penyimpangan', 'Aktif', '2019-11-23 14:57:41', NULL, NULL, '2019-12-04 22:18:42', '::1', 1),
(2, 'Pemantauan perbaikan tindak lanjut', 'Pemantauan perbaikan tindak lanjut', 'Aktif', '2019-11-23 14:57:54', NULL, NULL, '2019-12-04 22:19:02', '::1', 1),
(3, 'Pengawasan rutin', 'Pengawasan rutin', 'Aktif', '2019-12-04 22:19:18', '::1', 1, '2019-12-04 22:19:18', NULL, NULL),
(4, 'Pengembangan aktifitas operational', 'Pengembangan aktifitas operational', 'Aktif', '2019-12-04 22:19:35', '::1', 1, '2019-12-04 22:19:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyimpangan`
--

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
-- Dumping data untuk tabel `penyimpangan`
--

INSERT INTO `penyimpangan` (`id_penyimpangan`, `nama_penyimpangan`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Kurangnya Pemahaman Prosedur', NULL, 'Aktif', '2019-11-23 14:23:03', NULL, NULL, '2019-11-23 14:23:03', NULL, NULL),
(2, 'Kelalaian/Tidak Teliti', NULL, 'Aktif', '2019-11-23 14:23:16', NULL, NULL, '2019-11-23 14:23:16', NULL, NULL),
(3, 'Kurangnya Supervisi', 'Kurangnya Supervisi', 'Aktif', '2019-12-04 22:10:39', '::1', 1, '2019-12-04 22:10:39', NULL, NULL),
(4, 'System Error', 'System Error', 'Aktif', '2019-12-04 22:11:02', '::1', 1, '2019-12-04 22:11:02', NULL, NULL),
(5, 'Over service', 'Over service', 'Aktif', '2019-12-04 22:11:24', '::1', 1, '2019-12-04 22:11:24', NULL, NULL),
(6, 'Kurang Koordinasi', 'Kurang Koordinasi', 'Aktif', '2019-12-04 22:11:41', '::1', 1, '2019-12-04 22:11:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `risk_assesment`
--

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
-- Dumping data untuk tabel `risk_assesment`
--

INSERT INTO `risk_assesment` (`id_risk_assesment`, `nama_risk_assesment`, `keterangan`, `aktif`, `created_date`, `created_ip`, `created_by`, `updated_date`, `updated_ip`, `updated_by`) VALUES
(1, 'Pelaporan ke kantor pusat', '', 'Aktif', '2019-11-23 14:58:45', NULL, NULL, '2019-11-23 14:58:45', NULL, NULL),
(2, 'Efisiensi dan efektifitas layanan', '', 'Aktif', '2019-11-23 14:58:56', NULL, NULL, '2019-11-23 14:58:56', NULL, NULL),
(3, 'Aktifitas risk assesment', 'Aktifitas risk assesment', 'Aktif', '2019-12-04 22:13:53', '::1', 1, '2019-12-04 22:13:53', NULL, NULL),
(4, 'Pembatasan Limit', 'Pembatasan Limit', 'Aktif', '2019-12-04 22:14:28', '::1', 1, '2019-12-04 22:14:28', NULL, NULL),
(5, 'Pengawasan berjenjang', 'Pengawasan berjenjang', 'Aktif', '2019-12-04 22:14:47', '::1', 1, '2019-12-04 22:14:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_trx`
--

CREATE TABLE `status_trx` (
  `id_status` int(11) NOT NULL,
  `status_trx` varchar(100) NOT NULL,
  `aktif` enum('Aktif','Nonaktif') NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_trx`
--

INSERT INTO `status_trx` (`id_status`, `status_trx`, `aktif`) VALUES
(1, 'Pending', 'Aktif'),
(2, 'Progress', 'Aktif'),
(3, 'Jatuh Tempo', 'Aktif'),
(4, 'Done', 'Aktif'),
(5, 'Drop', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hak_akses`
--

CREATE TABLE `tbl_hak_akses` (
  `id` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_hak_akses`
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
(158, 1, 52);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_user`
--

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
-- Struktur dari tabel `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id_menu` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_main_menu` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL COMMENT 'y=yes,n=no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_menu`
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
(52, 'CAT Operasional', 'cat_operasional', 'fa fa-pencil-square-o', 0, 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id_setting` int(11) NOT NULL,
  `nama_setting` varchar(50) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_setting`
--

INSERT INTO `tbl_setting` (`id_setting`, `nama_setting`, `value`) VALUES
(1, 'Tampil Menu', 'ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_users` int(11) NOT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `images` text NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `id_cabang` varchar(20) DEFAULT NULL,
  `id_divisi` int(11) DEFAULT NULL,
  `is_aktif` enum('y','n') NOT NULL,
  `tgl_daftar` datetime NOT NULL,
  `tgl_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_users`, `nik`, `full_name`, `email`, `password`, `no_hp`, `images`, `id_user_level`, `id_cabang`, `id_divisi`, `is_aktif`, `tgl_daftar`, `tgl_update`) VALUES
(1, '3333333333333333', 'Bayu Ihsanudin', 'bayu070494@gmail.com', '$2y$04$Wbyfv4xwihb..POfhxY5Y.jHOJqEFIG3dLfBYwAmnOACpH0EWCCdq', '08118081080', 'logo-tangan-telkom-22.png', 1, '1', 1, 'y', '2018-09-01 00:00:00', '2019-12-05 15:20:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user_level`
--

CREATE TABLE `tbl_user_level` (
  `id_user_level` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user_level`
--

INSERT INTO `tbl_user_level` (`id_user_level`, `nama_level`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'User Kadiv'),
(4, 'User Kabag'),
(5, 'User Senior Auditor'),
(6, 'User Auditor'),
(7, 'User Piket');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`id_cabang`),
  ADD UNIQUE KEY `kode_cabang` (`kode_cabang`);

--
-- Indeks untuk tabel `cat_bisnis`
--
ALTER TABLE `cat_bisnis`
  ADD PRIMARY KEY (`id_cat_bisnis`);

--
-- Indeks untuk tabel `cat_bisnis_header`
--
ALTER TABLE `cat_bisnis_header`
  ADD PRIMARY KEY (`id_cat_bisnis_header`);

--
-- Indeks untuk tabel `cat_operasional`
--
ALTER TABLE `cat_operasional`
  ADD PRIMARY KEY (`id_cat_operasional`);

--
-- Indeks untuk tabel `cat_operasional_header`
--
ALTER TABLE `cat_operasional_header`
  ADD PRIMARY KEY (`id_cat_operasional_header`);

--
-- Indeks untuk tabel `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`,`ip_address`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indeks untuk tabel `control_activities`
--
ALTER TABLE `control_activities`
  ADD PRIMARY KEY (`id_control_activities`);

--
-- Indeks untuk tabel `cont_environment`
--
ALTER TABLE `cont_environment`
  ADD PRIMARY KEY (`id_environment`);

--
-- Indeks untuk tabel `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indeks untuk tabel `goal_strategic`
--
ALTER TABLE `goal_strategic`
  ADD PRIMARY KEY (`id_goal_strategic`);

--
-- Indeks untuk tabel `information_comunication`
--
ALTER TABLE `information_comunication`
  ADD PRIMARY KEY (`id_information_comunication`);

--
-- Indeks untuk tabel `klasifikasi_temuan`
--
ALTER TABLE `klasifikasi_temuan`
  ADD PRIMARY KEY (`id_klasifikasi_temuan`);

--
-- Indeks untuk tabel `monitoring`
--
ALTER TABLE `monitoring`
  ADD PRIMARY KEY (`id_monitoring`);

--
-- Indeks untuk tabel `penyimpangan`
--
ALTER TABLE `penyimpangan`
  ADD PRIMARY KEY (`id_penyimpangan`);

--
-- Indeks untuk tabel `risk_assesment`
--
ALTER TABLE `risk_assesment`
  ADD PRIMARY KEY (`id_risk_assesment`);

--
-- Indeks untuk tabel `status_trx`
--
ALTER TABLE `status_trx`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_log_user`
--
ALTER TABLE `tbl_log_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_users`);

--
-- Indeks untuk tabel `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cabang`
--
ALTER TABLE `cabang`
  MODIFY `id_cabang` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `cat_bisnis`
--
ALTER TABLE `cat_bisnis`
  MODIFY `id_cat_bisnis` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `cat_bisnis_header`
--
ALTER TABLE `cat_bisnis_header`
  MODIFY `id_cat_bisnis_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `cat_operasional`
--
ALTER TABLE `cat_operasional`
  MODIFY `id_cat_operasional` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `cat_operasional_header`
--
ALTER TABLE `cat_operasional_header`
  MODIFY `id_cat_operasional_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `control_activities`
--
ALTER TABLE `control_activities`
  MODIFY `id_control_activities` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `cont_environment`
--
ALTER TABLE `cont_environment`
  MODIFY `id_environment` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `goal_strategic`
--
ALTER TABLE `goal_strategic`
  MODIFY `id_goal_strategic` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `information_comunication`
--
ALTER TABLE `information_comunication`
  MODIFY `id_information_comunication` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `klasifikasi_temuan`
--
ALTER TABLE `klasifikasi_temuan`
  MODIFY `id_klasifikasi_temuan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `monitoring`
--
ALTER TABLE `monitoring`
  MODIFY `id_monitoring` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `penyimpangan`
--
ALTER TABLE `penyimpangan`
  MODIFY `id_penyimpangan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `risk_assesment`
--
ALTER TABLE `risk_assesment`
  MODIFY `id_risk_assesment` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `status_trx`
--
ALTER TABLE `status_trx`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_user`
--
ALTER TABLE `tbl_log_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
