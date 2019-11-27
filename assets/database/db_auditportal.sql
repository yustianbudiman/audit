/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_auditportal

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-11-27 08:25:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cabang`
-- ----------------------------
DROP TABLE IF EXISTS `cabang`;
CREATE TABLE `cabang` (
  `id_cabang` int(5) NOT NULL AUTO_INCREMENT,
  `kode_cabang` varchar(20) NOT NULL,
  `nama_cabang` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `provinsi` varchar(150) NOT NULL,
  `no_telepon` varchar(150) NOT NULL,
  `kepala_cabang` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `aktif` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cabang`),
  UNIQUE KEY `kode_cabang` (`kode_cabang`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cabang
-- ----------------------------
INSERT INTO `cabang` VALUES ('1', 'ID0010001', '001 KPO', 'Jakarta', '', '', '', '', '', '1', '2019-11-22 22:46:46', null, null, '2019-11-23 20:36:37', null, null);

-- ----------------------------
-- Table structure for `cat_bisnis`
-- ----------------------------
DROP TABLE IF EXISTS `cat_bisnis`;
CREATE TABLE `cat_bisnis` (
  `id_cat_bisnis` int(5) NOT NULL AUTO_INCREMENT,
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
  `probaly` float DEFAULT NULL,
  `tev` float DEFAULT NULL,
  `bobot_resiko` varchar(100) DEFAULT NULL,
  `rekomendasi` varchar(200) DEFAULT NULL,
  `tanggapan_audit` varchar(100) DEFAULT NULL,
  `target_date` datetime DEFAULT NULL,
  `aktif` int(11) DEFAULT '1',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cat_bisnis`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cat_bisnis
-- ----------------------------
INSERT INTO `cat_bisnis` VALUES ('1', '1', 'selisih', null, 'nilai tangungan nasbah', 'kerugian pada bank', '2', '2', '9', '2', '9', null, '10', '2', '9', '2', '9', '2', '10', '10', '10', '10', '10', '10', '10', '0000-00-00 00:00:00', null, null, null, null, null, null, null);
INSERT INTO `cat_bisnis` VALUES ('3', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cat_bisnis` VALUES ('15', '13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cat_bisnis` VALUES ('16', '14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cat_bisnis` VALUES ('17', '13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `cat_bisnis_header`
-- ----------------------------
DROP TABLE IF EXISTS `cat_bisnis_header`;
CREATE TABLE `cat_bisnis_header` (
  `id_cat_bisnis_header` int(5) NOT NULL AUTO_INCREMENT,
  `id_cabang` int(5) DEFAULT NULL,
  `nama_cabang` varchar(150) NOT NULL,
  `periode` date DEFAULT NULL,
  `aktif` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cat_bisnis_header`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cat_bisnis_header
-- ----------------------------
INSERT INTO `cat_bisnis_header` VALUES ('1', '1', '001 KPO', '2019-11-23', '1', '2019-11-23 20:26:27', null, null, '2019-11-23 20:26:27', null, null);
INSERT INTO `cat_bisnis_header` VALUES ('13', '1', '001 KPO', '2019-11-24', '1', '2019-11-25 12:09:31', null, null, '2019-11-25 12:09:31', null, null);
INSERT INTO `cat_bisnis_header` VALUES ('14', '1', '001 KPO', '2019-11-24', '1', '2019-11-25 12:17:54', null, null, '2019-11-25 12:17:54', null, null);

-- ----------------------------
-- Table structure for `cat_operasional`
-- ----------------------------
DROP TABLE IF EXISTS `cat_operasional`;
CREATE TABLE `cat_operasional` (
  `id_cat_operasional` int(5) NOT NULL AUTO_INCREMENT,
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
  `monitoring_value` int(11) DEFAULT NULL,
  `total_impact` int(11) DEFAULT NULL,
  `probaly` float DEFAULT NULL,
  `tev` float DEFAULT NULL,
  `bobot_resiko` varchar(100) DEFAULT NULL,
  `rekomendasi` varchar(200) DEFAULT NULL,
  `tanggapan_audit` varchar(100) DEFAULT NULL,
  `target_date` datetime DEFAULT NULL,
  `aktif` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cat_operasional`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cat_operasional
-- ----------------------------
INSERT INTO `cat_operasional` VALUES ('8', '29', 'asdasd sfsdf', '1', 'asfdsf', 'sdfsdf', '2', '2', '10', '2', '0', null, '0', null, '0', '2', '0', '0', '0', '0', '9', '9', '', '0000-00-00 00:00:00', null, '2019-11-26 21:41:28', null, null, null, null, null);
INSERT INTO `cat_operasional` VALUES ('10', '29', 'zxczxc', '1', 'sdfsdf', 'sdfsf', '1', '2', '0', '2', '0', null, '0', null, '0', '2', '0', '0', '0', '0', '9', '9', '', '0000-00-00 00:00:00', null, '2019-11-26 21:41:41', null, null, null, null, null);
INSERT INTO `cat_operasional` VALUES ('11', '29', 'zxczc', '2', 'sdfsf', 'sdfsdf', '2', '2', '0', '2', '0', null, '0', null, '0', '2', '0', '0', '0', '0', '9', '9', '', '0000-00-00 00:00:00', null, '2019-11-26 21:36:35', null, null, null, null, null);
INSERT INTO `cat_operasional` VALUES ('12', '29', 'zxczxc', '2', 'sdfsdf', 'sdfsf', '2', '2', '0', '2', '0', null, '0', null, '0', '2', '0', '0', '0', '0', '9', '9', '', '0000-00-00 00:00:00', null, '2019-11-26 21:36:26', null, null, null, null, null);

-- ----------------------------
-- Table structure for `cat_operasional_header`
-- ----------------------------
DROP TABLE IF EXISTS `cat_operasional_header`;
CREATE TABLE `cat_operasional_header` (
  `id_cat_operasional_header` int(5) NOT NULL AUTO_INCREMENT,
  `id_cabang` int(5) DEFAULT NULL,
  `nama_cabang` varchar(150) NOT NULL,
  `periode` date DEFAULT NULL,
  `aktif` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cat_operasional_header`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cat_operasional_header
-- ----------------------------
INSERT INTO `cat_operasional_header` VALUES ('29', '1', 'kopo', '2019-11-27', '1', '2019-11-26 20:59:09', null, null, '2019-11-26 20:59:09', null, null);

-- ----------------------------
-- Table structure for `ci_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`,`ip_address`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO `ci_sessions` VALUES ('5o2tu0ltclohjmb7m320j9e79c7d61dp', '::1', '1574778954', 0x5F5F63695F6C6173745F726567656E65726174657C693A313537343737383935343B69645F75736572737C733A313A2231223B6E696B7C4E3B66756C6C5F6E616D657C733A31343A224261797520496873616E7564696E223B656D61696C7C733A32303A226261797530373034393440676D61696C2E636F6D223B70617373776F72647C733A36303A222432792430342457627966763478776968622E2E504F6668785935592E6A484F4A714546494733644C66425977416D6E4F4143704830455743436471223B6E6F5F68707C4E3B696D616765737C733A31373A2261746F6D69785F7573657233312E706E67223B69645F757365725F6C6576656C7C733A313A2231223B69645F636162616E677C733A303A22223B69645F6469766973697C733A313A2230223B69735F616B7469667C733A313A2279223B74676C5F6461667461727C733A31393A22323031382D30392D30312030303A30303A3030223B74676C5F7570646174657C733A31393A22323031382D31312D31322030363A32343A3535223B6D6573736167657C733A32313A22557064617465205265636F72642053756363657373223B5F5F63695F766172737C613A313A7B733A373A226D657373616765223B733A333A226F6C64223B7D);
INSERT INTO `ci_sessions` VALUES ('c0oof47uijlve0gdo2v072sdspctm3ec', '::1', '1574779302', 0x5F5F63695F6C6173745F726567656E65726174657C693A313537343737383935343B69645F75736572737C733A313A2231223B6E696B7C4E3B66756C6C5F6E616D657C733A31343A224261797520496873616E7564696E223B656D61696C7C733A32303A226261797530373034393440676D61696C2E636F6D223B70617373776F72647C733A36303A222432792430342457627966763478776968622E2E504F6668785935592E6A484F4A714546494733644C66425977416D6E4F4143704830455743436471223B6E6F5F68707C4E3B696D616765737C733A31373A2261746F6D69785F7573657233312E706E67223B69645F757365725F6C6576656C7C733A313A2231223B69645F636162616E677C733A303A22223B69645F6469766973697C733A313A2230223B69735F616B7469667C733A313A2279223B74676C5F6461667461727C733A31393A22323031382D30392D30312030303A30303A3030223B74676C5F7570646174657C733A31393A22323031382D31312D31322030363A32343A3535223B6D6573736167657C733A32313A22557064617465205265636F72642053756363657373223B5F5F63695F766172737C613A313A7B733A373A226D657373616765223B733A333A226F6C64223B7D);
INSERT INTO `ci_sessions` VALUES ('npnscfpfoglktr0mb6mo8piscmjt4gi0', '::1', '1574780365', 0x5F5F63695F6C6173745F726567656E65726174657C693A313537343738303236363B69645F75736572737C733A313A2231223B6E696B7C4E3B66756C6C5F6E616D657C733A31343A224261797520496873616E7564696E223B656D61696C7C733A32303A226261797530373034393440676D61696C2E636F6D223B70617373776F72647C733A36303A222432792430342457627966763478776968622E2E504F6668785935592E6A484F4A714546494733644C66425977416D6E4F4143704830455743436471223B6E6F5F68707C4E3B696D616765737C733A31373A2261746F6D69785F7573657233312E706E67223B69645F757365725F6C6576656C7C733A313A2231223B69645F636162616E677C733A303A22223B69645F6469766973697C733A313A2230223B69735F616B7469667C733A313A2279223B74676C5F6461667461727C733A31393A22323031382D30392D30312030303A30303A3030223B74676C5F7570646174657C733A31393A22323031382D31312D31322030363A32343A3535223B);

-- ----------------------------
-- Table structure for `control_activities`
-- ----------------------------
DROP TABLE IF EXISTS `control_activities`;
CREATE TABLE `control_activities` (
  `id_control_activities` int(5) NOT NULL AUTO_INCREMENT,
  `nama_control_activities` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `aktif` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_control_activities`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of control_activities
-- ----------------------------
INSERT INTO `control_activities` VALUES ('1', 'Efisiensi dan efektifitas proses penanganan transaksi', '', '1', '2019-11-23 21:56:06', null, null, '2019-11-23 21:56:06', null, null);
INSERT INTO `control_activities` VALUES ('2', 'Evaluasi berkesinambungan', '', '1', '2019-11-23 21:56:17', null, null, '2019-11-23 21:56:17', null, null);

-- ----------------------------
-- Table structure for `cont_environment`
-- ----------------------------
DROP TABLE IF EXISTS `cont_environment`;
CREATE TABLE `cont_environment` (
  `id_environment` int(5) NOT NULL AUTO_INCREMENT,
  `nama_environment` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `aktif` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_environment`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cont_environment
-- ----------------------------
INSERT INTO `cont_environment` VALUES ('1', 'Implimentasi kepatuhan terhadap peraturan atau arahan', '', '1', '2019-11-23 21:27:24', null, null, '2019-11-23 21:27:24', null, null);
INSERT INTO `cont_environment` VALUES ('2', 'Integritas dan etika', '', '1', '2019-11-23 21:27:37', null, null, '2019-11-23 21:27:37', null, null);

-- ----------------------------
-- Table structure for `divisi`
-- ----------------------------
DROP TABLE IF EXISTS `divisi`;
CREATE TABLE `divisi` (
  `id_divisi` int(11) NOT NULL AUTO_INCREMENT,
  `divisi` varchar(100) NOT NULL,
  `aktif` enum('Aktif','Nonaktif') NOT NULL DEFAULT 'Aktif',
  PRIMARY KEY (`id_divisi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of divisi
-- ----------------------------

-- ----------------------------
-- Table structure for `goal_strategic`
-- ----------------------------
DROP TABLE IF EXISTS `goal_strategic`;
CREATE TABLE `goal_strategic` (
  `id_goal_strategic` int(5) NOT NULL AUTO_INCREMENT,
  `nama_goal_strategic` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `aktif` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_goal_strategic`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of goal_strategic
-- ----------------------------
INSERT INTO `goal_strategic` VALUES ('1', 'Penetapan tujuan dan target kerja', '', '1', '2019-11-23 21:58:08', null, null, '2019-11-23 21:58:08', null, null);
INSERT INTO `goal_strategic` VALUES ('2', 'Pencapaian kinerja dibandingkan dengan budget', '', '1', '2019-11-23 21:58:18', null, null, '2019-11-23 21:58:18', null, null);

-- ----------------------------
-- Table structure for `information_comunication`
-- ----------------------------
DROP TABLE IF EXISTS `information_comunication`;
CREATE TABLE `information_comunication` (
  `id_information_comunication` int(5) NOT NULL AUTO_INCREMENT,
  `nama_information_comunication` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `aktif` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_information_comunication`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of information_comunication
-- ----------------------------
INSERT INTO `information_comunication` VALUES ('1', 'Komunikasi internal', '', '1', '2019-11-23 21:24:52', null, null, '2019-11-23 21:57:15', null, null);
INSERT INTO `information_comunication` VALUES ('2', 'Integritas dan etika', '', '1', '2019-11-23 21:25:04', null, null, '2019-11-23 21:25:04', null, null);

-- ----------------------------
-- Table structure for `klasifikasi_temuan`
-- ----------------------------
DROP TABLE IF EXISTS `klasifikasi_temuan`;
CREATE TABLE `klasifikasi_temuan` (
  `id_klasifikasi_temuan` int(5) NOT NULL AUTO_INCREMENT,
  `nama_klasifikasi_temuan` varchar(150) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `aktif` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_klasifikasi_temuan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of klasifikasi_temuan
-- ----------------------------
INSERT INTO `klasifikasi_temuan` VALUES ('1', 'Administrasi dan Dokumentasi', null, '1', '2019-11-23 21:07:45', null, null, '2019-11-23 21:08:04', null, null);
INSERT INTO `klasifikasi_temuan` VALUES ('2', 'Akuntansi', null, '1', '2019-11-23 21:08:27', null, null, '2019-11-23 21:08:27', null, null);

-- ----------------------------
-- Table structure for `monitoring`
-- ----------------------------
DROP TABLE IF EXISTS `monitoring`;
CREATE TABLE `monitoring` (
  `id_monitoring` int(5) NOT NULL AUTO_INCREMENT,
  `nama_monitoring` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `aktif` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_monitoring`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of monitoring
-- ----------------------------
INSERT INTO `monitoring` VALUES ('1', 'Pemantauan perbaikan tindak lanjut', '', '1', '2019-11-23 21:57:41', null, null, '2019-11-23 21:57:41', null, null);
INSERT INTO `monitoring` VALUES ('2', 'Pemantauan perbaikan tindak lanjut', '', '1', '2019-11-23 21:57:54', null, null, '2019-11-23 21:57:54', null, null);

-- ----------------------------
-- Table structure for `penyimpangan`
-- ----------------------------
DROP TABLE IF EXISTS `penyimpangan`;
CREATE TABLE `penyimpangan` (
  `id_penyimpangan` int(5) NOT NULL AUTO_INCREMENT,
  `nama_penyimpangan` varchar(150) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `aktif` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_penyimpangan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penyimpangan
-- ----------------------------
INSERT INTO `penyimpangan` VALUES ('1', 'Kurangnya Pemahaman Prosedur', null, '1', '2019-11-23 21:23:03', null, null, '2019-11-23 21:23:03', null, null);
INSERT INTO `penyimpangan` VALUES ('2', 'Kelalaian/Tidak Teliti', null, '1', '2019-11-23 21:23:16', null, null, '2019-11-23 21:23:16', null, null);

-- ----------------------------
-- Table structure for `risk_assesment`
-- ----------------------------
DROP TABLE IF EXISTS `risk_assesment`;
CREATE TABLE `risk_assesment` (
  `id_risk_assesment` int(5) NOT NULL AUTO_INCREMENT,
  `nama_risk_assesment` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `aktif` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_risk_assesment`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of risk_assesment
-- ----------------------------
INSERT INTO `risk_assesment` VALUES ('1', 'Pelaporan ke kantor pusat', '', '1', '2019-11-23 21:58:45', null, null, '2019-11-23 21:58:45', null, null);
INSERT INTO `risk_assesment` VALUES ('2', 'Efisiensi dan efektifitas layanan', '', '1', '2019-11-23 21:58:56', null, null, '2019-11-23 21:58:56', null, null);

-- ----------------------------
-- Table structure for `status_trx`
-- ----------------------------
DROP TABLE IF EXISTS `status_trx`;
CREATE TABLE `status_trx` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `status_trx` varchar(100) NOT NULL,
  `aktif` enum('Aktif','Nonaktif') NOT NULL DEFAULT 'Aktif',
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of status_trx
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_hak_akses`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hak_akses`;
CREATE TABLE `tbl_hak_akses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hak_akses
-- ----------------------------
INSERT INTO `tbl_hak_akses` VALUES ('15', '1', '1');
INSERT INTO `tbl_hak_akses` VALUES ('19', '1', '3');
INSERT INTO `tbl_hak_akses` VALUES ('21', '2', '1');
INSERT INTO `tbl_hak_akses` VALUES ('30', '1', '2');
INSERT INTO `tbl_hak_akses` VALUES ('31', '2', '9');
INSERT INTO `tbl_hak_akses` VALUES ('34', '1', '10');
INSERT INTO `tbl_hak_akses` VALUES ('38', '2', '2');
INSERT INTO `tbl_hak_akses` VALUES ('39', '2', '3');
INSERT INTO `tbl_hak_akses` VALUES ('40', '2', '10');
INSERT INTO `tbl_hak_akses` VALUES ('48', '4', '10');
INSERT INTO `tbl_hak_akses` VALUES ('52', '1', '14');
INSERT INTO `tbl_hak_akses` VALUES ('54', '2', '14');
INSERT INTO `tbl_hak_akses` VALUES ('58', '4', '14');
INSERT INTO `tbl_hak_akses` VALUES ('60', '2', '16');
INSERT INTO `tbl_hak_akses` VALUES ('61', '1', '16');
INSERT INTO `tbl_hak_akses` VALUES ('62', '2', '17');
INSERT INTO `tbl_hak_akses` VALUES ('63', '1', '17');
INSERT INTO `tbl_hak_akses` VALUES ('64', '2', '18');
INSERT INTO `tbl_hak_akses` VALUES ('65', '1', '18');
INSERT INTO `tbl_hak_akses` VALUES ('67', '1', '19');
INSERT INTO `tbl_hak_akses` VALUES ('73', '1', '22');
INSERT INTO `tbl_hak_akses` VALUES ('75', '1', '23');
INSERT INTO `tbl_hak_akses` VALUES ('76', '1', '24');
INSERT INTO `tbl_hak_akses` VALUES ('77', '1', '26');
INSERT INTO `tbl_hak_akses` VALUES ('78', '1', '25');
INSERT INTO `tbl_hak_akses` VALUES ('79', '1', '27');
INSERT INTO `tbl_hak_akses` VALUES ('80', '1', '28');
INSERT INTO `tbl_hak_akses` VALUES ('81', '1', '29');
INSERT INTO `tbl_hak_akses` VALUES ('82', '1', '30');
INSERT INTO `tbl_hak_akses` VALUES ('83', '1', '31');
INSERT INTO `tbl_hak_akses` VALUES ('84', '4', '16');
INSERT INTO `tbl_hak_akses` VALUES ('85', '4', '17');
INSERT INTO `tbl_hak_akses` VALUES ('86', '4', '18');
INSERT INTO `tbl_hak_akses` VALUES ('87', '4', '19');
INSERT INTO `tbl_hak_akses` VALUES ('92', '4', '24');
INSERT INTO `tbl_hak_akses` VALUES ('93', '4', '25');
INSERT INTO `tbl_hak_akses` VALUES ('96', '4', '28');
INSERT INTO `tbl_hak_akses` VALUES ('97', '4', '29');
INSERT INTO `tbl_hak_akses` VALUES ('98', '4', '31');
INSERT INTO `tbl_hak_akses` VALUES ('99', '4', '2');
INSERT INTO `tbl_hak_akses` VALUES ('104', '1', '9');
INSERT INTO `tbl_hak_akses` VALUES ('105', '1', '11');
INSERT INTO `tbl_hak_akses` VALUES ('106', '1', '12');
INSERT INTO `tbl_hak_akses` VALUES ('107', '1', '13');
INSERT INTO `tbl_hak_akses` VALUES ('108', '1', '15');
INSERT INTO `tbl_hak_akses` VALUES ('109', '1', '20');
INSERT INTO `tbl_hak_akses` VALUES ('110', '1', '21');
INSERT INTO `tbl_hak_akses` VALUES ('111', '1', '32');
INSERT INTO `tbl_hak_akses` VALUES ('112', '1', '33');
INSERT INTO `tbl_hak_akses` VALUES ('113', '2', '19');
INSERT INTO `tbl_hak_akses` VALUES ('114', '2', '24');
INSERT INTO `tbl_hak_akses` VALUES ('115', '2', '25');
INSERT INTO `tbl_hak_akses` VALUES ('116', '2', '33');
INSERT INTO `tbl_hak_akses` VALUES ('117', '2', '32');
INSERT INTO `tbl_hak_akses` VALUES ('118', '2', '31');
INSERT INTO `tbl_hak_akses` VALUES ('121', '2', '27');
INSERT INTO `tbl_hak_akses` VALUES ('122', '2', '34');
INSERT INTO `tbl_hak_akses` VALUES ('123', '3', '35');
INSERT INTO `tbl_hak_akses` VALUES ('126', '1', '34');
INSERT INTO `tbl_hak_akses` VALUES ('127', '4', '34');
INSERT INTO `tbl_hak_akses` VALUES ('131', '4', '33');
INSERT INTO `tbl_hak_akses` VALUES ('132', '3', '32');
INSERT INTO `tbl_hak_akses` VALUES ('133', '3', '36');
INSERT INTO `tbl_hak_akses` VALUES ('134', '2', '38');
INSERT INTO `tbl_hak_akses` VALUES ('135', '2', '37');
INSERT INTO `tbl_hak_akses` VALUES ('136', '4', '37');
INSERT INTO `tbl_hak_akses` VALUES ('137', '4', '38');
INSERT INTO `tbl_hak_akses` VALUES ('138', '4', '27');
INSERT INTO `tbl_hak_akses` VALUES ('139', '4', '39');
INSERT INTO `tbl_hak_akses` VALUES ('140', '2', '39');
INSERT INTO `tbl_hak_akses` VALUES ('141', '1', '36');
INSERT INTO `tbl_hak_akses` VALUES ('142', '1', '37');
INSERT INTO `tbl_hak_akses` VALUES ('143', '1', '38');
INSERT INTO `tbl_hak_akses` VALUES ('144', '1', '39');
INSERT INTO `tbl_hak_akses` VALUES ('145', '1', '40');
INSERT INTO `tbl_hak_akses` VALUES ('146', '1', '41');
INSERT INTO `tbl_hak_akses` VALUES ('148', '1', '43');
INSERT INTO `tbl_hak_akses` VALUES ('149', '1', '44');
INSERT INTO `tbl_hak_akses` VALUES ('150', '1', '42');
INSERT INTO `tbl_hak_akses` VALUES ('151', '1', '45');
INSERT INTO `tbl_hak_akses` VALUES ('152', '1', '46');
INSERT INTO `tbl_hak_akses` VALUES ('153', '1', '47');
INSERT INTO `tbl_hak_akses` VALUES ('154', '1', '48');
INSERT INTO `tbl_hak_akses` VALUES ('155', '1', '49');
INSERT INTO `tbl_hak_akses` VALUES ('156', '1', '50');
INSERT INTO `tbl_hak_akses` VALUES ('157', '1', '51');
INSERT INTO `tbl_hak_akses` VALUES ('158', '1', '52');

-- ----------------------------
-- Table structure for `tbl_log_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_log_user`;
CREATE TABLE `tbl_log_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `tgl_log_history` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `action` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `deskripsi` varchar(225) NOT NULL,
  `action_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_log_user
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `url` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_main_menu` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL COMMENT 'y=yes,n=no',
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES ('1', 'KELOLA MENU', 'kelolamenu', 'fa fa-server', '31', 'y');
INSERT INTO `tbl_menu` VALUES ('2', 'KELOLA USER', 'user', 'fa fa-user-o', '31', 'y');
INSERT INTO `tbl_menu` VALUES ('3', 'Kelola Level User', 'userlevel', 'fa fa-users', '31', 'y');
INSERT INTO `tbl_menu` VALUES ('9', 'Contoh Form', 'welcome/form', 'fa fa-id-card', '31', 'y');
INSERT INTO `tbl_menu` VALUES ('10', 'Parameter Setting', '#', 'fa fa-cogs', '0', 'y');
INSERT INTO `tbl_menu` VALUES ('31', 'Administration', '#', 'fa fa-cubes', '0', 'y');
INSERT INTO `tbl_menu` VALUES ('40', 'Cabang', 'cabang', 'fa fa-th-list', '10', 'y');
INSERT INTO `tbl_menu` VALUES ('41', 'Cont. Environment', 'cont_environment', 'fa fa-th-list', '10', 'y');
INSERT INTO `tbl_menu` VALUES ('42', 'Risk Assessment', 'risk_assesment', 'fa fa-th-list', '10', 'y');
INSERT INTO `tbl_menu` VALUES ('43', 'Cont. Activities', 'control_activities', 'fa fa-th-list', '10', 'y');
INSERT INTO `tbl_menu` VALUES ('44', 'Info. Comunication', 'information_comunication', 'fa fa-th-list', '10', 'y');
INSERT INTO `tbl_menu` VALUES ('45', 'Divisi', 'divisi', 'fa fa-th-list', '10', 'y');
INSERT INTO `tbl_menu` VALUES ('46', 'Monitoring', 'monitoring', 'fa fa-th-list', '10', 'y');
INSERT INTO `tbl_menu` VALUES ('47', 'Klasifikasi Temuan', 'klasifikasi_temuan', 'fa fa-th-list', '10', 'y');
INSERT INTO `tbl_menu` VALUES ('48', 'Penyimpangan', 'penyimpangan', 'fa fa-th-list', '10', 'y');
INSERT INTO `tbl_menu` VALUES ('49', 'Status Trx', 'status_trx', 'fa fa-th-list', '10', 'y');
INSERT INTO `tbl_menu` VALUES ('50', 'Goal Strategic', 'goal_strategic', 'fa fa-th-list', '10', 'y');
INSERT INTO `tbl_menu` VALUES ('51', 'CAT Bisnis', 'cat_bisnis', 'fa fa-pencil-square-o', '0', 'y');
INSERT INTO `tbl_menu` VALUES ('52', 'CAT Operasional', 'cat_operasional', 'fa fa-pencil-square-o', '0', 'y');

-- ----------------------------
-- Table structure for `tbl_setting`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setting`;
CREATE TABLE `tbl_setting` (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `nama_setting` varchar(50) NOT NULL,
  `value` varchar(40) NOT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_setting
-- ----------------------------
INSERT INTO `tbl_setting` VALUES ('1', 'Tampil Menu', 'ya');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id_users` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', null, 'Bayu Ihsanudin', 'bayu070494@gmail.com', '$2y$04$Wbyfv4xwihb..POfhxY5Y.jHOJqEFIG3dLfBYwAmnOACpH0EWCCdq', null, 'atomix_user31.png', '1', '', '0', 'y', '2018-09-01 00:00:00', '2018-11-12 06:24:55');

-- ----------------------------
-- Table structure for `tbl_user_level`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_level`;
CREATE TABLE `tbl_user_level` (
  `id_user_level` int(11) NOT NULL AUTO_INCREMENT,
  `nama_level` varchar(30) NOT NULL,
  PRIMARY KEY (`id_user_level`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user_level
-- ----------------------------
INSERT INTO `tbl_user_level` VALUES ('1', 'Super Admin');
INSERT INTO `tbl_user_level` VALUES ('2', 'Admin');
INSERT INTO `tbl_user_level` VALUES ('3', 'User Kadiv');
INSERT INTO `tbl_user_level` VALUES ('4', 'User Kabag');
INSERT INTO `tbl_user_level` VALUES ('5', 'User Senior Auditor');
INSERT INTO `tbl_user_level` VALUES ('6', 'User Auditor');
