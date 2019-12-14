/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_auditportal

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-12-14 10:43:33
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cabang
-- ----------------------------
INSERT INTO `cabang` VALUES ('1', 'ID0010001', 'Bank Capital Kantor Kas Pasar Mester Jatinegara', 'Jakarta', '', '', '', '', '', '1', '2019-11-22 22:46:46', null, null, '2019-12-06 08:53:11', null, null);
INSERT INTO `cabang` VALUES ('2', 'ID0010002', 'Bank Capital Kantor Kas PGC', 'Jakarta', '', '', '', '', '', '1', '2019-12-06 08:53:41', null, null, '2019-12-06 08:55:07', null, null);
INSERT INTO `cabang` VALUES ('3', 'ID0010003', 'Bank Capital KCP Muara Karang', 'Jakarta', '', '', '', '', '', '1', '2019-12-06 08:54:13', null, null, '2019-12-06 08:55:07', null, null);
INSERT INTO `cabang` VALUES ('5', 'ID0010004', 'Bank Capital KCP Pluit Kencana', 'Jakarta', '', '', '', '', '', '1', '2019-12-06 08:54:39', null, null, '2019-12-06 08:55:08', null, null);
INSERT INTO `cabang` VALUES ('6', 'ID0010005', 'Bank Capital KCP Sunter', 'Jakarta', '', '', '', '', '', '1', '2019-12-06 08:54:57', null, null, '2019-12-06 08:55:11', null, null);

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
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cat_bisnis`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cat_bisnis
-- ----------------------------
INSERT INTO `cat_bisnis` VALUES ('24', '39', 'hallo word1', '2', 'kehilangan', 'rugi', '2', '2', '2', '2', '2', '2', '2', '1', '2', '2', '2', '2', '2', '12', '0.2', 'Yes', '2.64', 'Moderate', 'asadad', 'dasdasd', '2019-12-13 00:00:00', '2', '5', '3,6', '2019-12-04 00:00:00', '2', 'ada', '1970-01-01 00:00:00', 'Aktif', '2019-12-04 12:20:21', '::1', '3', '2019-12-13 23:16:36', '::1', '1');
INSERT INTO `cat_bisnis` VALUES ('25', '40', 'hallo word 3', '2', 'kehilangan', 'rugi', '2', '2', '5', '2', '5', '2', '3', '2', '5', '2', '5', '2', '5', '28', '0.4', 'Yes', '12.32', 'Height', 'adfas', 'asdafsf', '2019-12-12 00:00:00', '1', '5', '3,6', '2019-12-03 00:00:00', '2', 'ada', '2019-12-12 00:00:00', 'Aktif', '2019-12-04 13:59:02', '::1', '6', '2019-12-13 23:16:39', '::1', '1');
INSERT INTO `cat_bisnis` VALUES ('26', '40', 'halo word', '2', 'kehilangan', 'ttt', '2', '2', '1', '2', '1', '2', '1', '2', '2', '2', '1', '2', '5', '11', '0.2', 'Yes', '2.42', 'Moderate', 'halllo', 'asdfadfasfa', '2019-12-21 00:00:00', '1', '5', '3,6', '2019-12-06 00:00:00', '2', 'ada', '2019-12-11 00:00:00', 'Aktif', '2019-12-12 15:30:45', '::1', '1', '2019-12-13 23:16:41', null, null);
INSERT INTO `cat_bisnis` VALUES ('27', '40', 'ddddd', '2', 'kehilangan', 'tttfsdfsfs', '2', '2', '5', '2', '4', '2', '4', '2', '4', '2', '4', '2', '4', '25', '0.2', 'Yes', '5.5', 'Height', 'zxczc', 'zxcz', '2019-12-14 00:00:00', '1', '5', '3,6', '2019-12-19 00:00:00', '2', 'ada', '2019-12-13 00:00:00', 'Aktif', '2019-12-12 15:44:42', '::1', '1', '2019-12-13 23:16:44', null, null);

-- ----------------------------
-- Table structure for `cat_bisnis_header`
-- ----------------------------
DROP TABLE IF EXISTS `cat_bisnis_header`;
CREATE TABLE `cat_bisnis_header` (
  `id_cat_bisnis_header` int(5) NOT NULL AUTO_INCREMENT,
  `id_cabang` int(5) DEFAULT NULL,
  `nama_cabang` varchar(150) NOT NULL,
  `periode` date DEFAULT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cat_bisnis_header`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cat_bisnis_header
-- ----------------------------
INSERT INTO `cat_bisnis_header` VALUES ('39', '2', 'Bank Capital Kantor Kas PGC', '2019-12-04', 'Aktif', '2019-12-04 12:20:21', '::1', '3', '2019-12-12 13:30:20', '::1', '3');
INSERT INTO `cat_bisnis_header` VALUES ('40', '1', 'Bank Capital Kantor Kas Pasar Mester Jatinegara', '2019-12-04', 'Aktif', '2019-12-04 13:59:02', '::1', '6', '2019-12-12 13:29:43', '::1', '6');

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
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cat_operasional`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cat_operasional
-- ----------------------------
INSERT INTO `cat_operasional` VALUES ('17', '55', 'ada yang hilang', '2', 'kehilangan', 'rugi', '2', '2', '1', '2', '0', '2', '1', '2', '1', '2', '1', '4', '0.8', 'Yes', '3.52', 'Height', 'cfdfs', 'fsdfsdf', '2019-12-11 00:00:00', '1', '5', '3,6', '2019-12-05 00:00:00', '2', 'ada', '2019-12-12 00:00:00', 'Aktif', '2019-12-05 11:53:00', '::1', '3', '2019-12-12 16:12:08', '::1', '3');
INSERT INTO `cat_operasional` VALUES ('18', '55', 'opt', '1', 'kehilangan', 'sdfsdfsdfsf', '1', '2', '1', '2', '1', '2', '1', '2', '1', '2', '1', '5', '0.2', 'Yes', '1.1', 'Low', 'asdasd', 'asdsadasda', '2019-12-06 00:00:00', '1', '5', '3,6', '2019-12-18 00:00:00', '2', 'asdasd', '2019-12-19 00:00:00', 'Aktif', '2019-12-12 16:02:47', '::1', '3', '2019-12-12 16:12:05', '::1', '3');

-- ----------------------------
-- Table structure for `cat_operasional_header`
-- ----------------------------
DROP TABLE IF EXISTS `cat_operasional_header`;
CREATE TABLE `cat_operasional_header` (
  `id_cat_operasional_header` int(5) NOT NULL AUTO_INCREMENT,
  `id_cabang` int(5) DEFAULT NULL,
  `nama_cabang` varchar(150) NOT NULL,
  `periode` date DEFAULT NULL,
  `aktif` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cat_operasional_header`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cat_operasional_header
-- ----------------------------
INSERT INTO `cat_operasional_header` VALUES ('55', '1', 'Bank Capital Kantor Kas Pasar Mester Jatinegara', '2019-12-06', 'Aktif', '2019-12-05 11:53:00', '::1', '3', '2019-12-12 13:55:19', '::1', '3');

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
INSERT INTO `ci_sessions` VALUES ('2hdv1qk8ob2448b8kkouct76ebv1tcq7', '::1', '1576294957', 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363239343935363B);
INSERT INTO `ci_sessions` VALUES ('giufqb3tf8v06dntaahjthom3i9ka6fl', '::1', '1576249780', 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363234393738303B69645F75736572737C733A313A2232223B6E696B7C733A31363A2233323131303330333034383930303034223B66756C6C5F6E616D657C733A31353A227975737469616E20627564696D616E223B656D61696C7C733A32343A227975737469616E627564696D616E40676D61696C2E636F6D223B70617373776F72647C733A36303A222432792430342457627966763478776968622E2E504F6668785935592E6A484F4A714546494733644C66425977416D6E4F4143704830455743436471223B6E6F5F68707C733A31323A22303835323135333232383939223B696D616765737C733A31373A2261746F6D69785F7573657233312E706E67223B69645F757365725F6C6576656C7C733A313A2234223B69645F636162616E677C733A313A2231223B69645F6469766973697C733A313A2231223B69735F616B7469667C733A313A2279223B74676C5F6461667461727C733A31393A22323031392D31322D30362030383A32333A3431223B74676C5F7570646174657C733A31393A22323031392D31322D30362030383A33313A3230223B);
INSERT INTO `ci_sessions` VALUES ('gkf1gmhok8q6osc5tan95qflotk67nbf', '::1', '1576254115', 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363235343131353B69645F75736572737C733A313A2232223B6E696B7C733A31363A2233323131303330333034383930303034223B66756C6C5F6E616D657C733A31353A227975737469616E20627564696D616E223B656D61696C7C733A32343A227975737469616E627564696D616E40676D61696C2E636F6D223B70617373776F72647C733A36303A222432792430342457627966763478776968622E2E504F6668785935592E6A484F4A714546494733644C66425977416D6E4F4143704830455743436471223B6E6F5F68707C733A31323A22303835323135333232383939223B696D616765737C733A31373A2261746F6D69785F7573657233312E706E67223B69645F757365725F6C6576656C7C733A313A2234223B69645F636162616E677C733A313A2231223B69645F6469766973697C733A313A2231223B69735F616B7469667C733A313A2279223B74676C5F6461667461727C733A31393A22323031392D31322D30362030383A32333A3431223B74676C5F7570646174657C733A31393A22323031392D31322D30362030383A33313A3230223B);
INSERT INTO `ci_sessions` VALUES ('hsrotih59dqqsgeo4lh9u5r57gtnco6o', '::1', '1576254485', 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363235343438353B69645F75736572737C733A313A2232223B6E696B7C733A31363A2233323131303330333034383930303034223B66756C6C5F6E616D657C733A31353A227975737469616E20627564696D616E223B656D61696C7C733A32343A227975737469616E627564696D616E40676D61696C2E636F6D223B70617373776F72647C733A36303A222432792430342457627966763478776968622E2E504F6668785935592E6A484F4A714546494733644C66425977416D6E4F4143704830455743436471223B6E6F5F68707C733A31323A22303835323135333232383939223B696D616765737C733A31373A2261746F6D69785F7573657233312E706E67223B69645F757365725F6C6576656C7C733A313A2234223B69645F636162616E677C733A313A2231223B69645F6469766973697C733A313A2231223B69735F616B7469667C733A313A2279223B74676C5F6461667461727C733A31393A22323031392D31322D30362030383A32333A3431223B74676C5F7570646174657C733A31393A22323031392D31322D30362030383A33313A3230223B);
INSERT INTO `ci_sessions` VALUES ('im6sdabkkalrlvpl993h6unh2ebmnoks', '::1', '1576251112', 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363235313131323B69645F75736572737C733A313A2232223B6E696B7C733A31363A2233323131303330333034383930303034223B66756C6C5F6E616D657C733A31353A227975737469616E20627564696D616E223B656D61696C7C733A32343A227975737469616E627564696D616E40676D61696C2E636F6D223B70617373776F72647C733A36303A222432792430342457627966763478776968622E2E504F6668785935592E6A484F4A714546494733644C66425977416D6E4F4143704830455743436471223B6E6F5F68707C733A31323A22303835323135333232383939223B696D616765737C733A31373A2261746F6D69785F7573657233312E706E67223B69645F757365725F6C6576656C7C733A313A2234223B69645F636162616E677C733A313A2231223B69645F6469766973697C733A313A2231223B69735F616B7469667C733A313A2279223B74676C5F6461667461727C733A31393A22323031392D31322D30362030383A32333A3431223B74676C5F7570646174657C733A31393A22323031392D31322D30362030383A33313A3230223B);
INSERT INTO `ci_sessions` VALUES ('j75i9jtsv0p78konckbdobgdrbs7doqp', '::1', '1576254519', 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363235343438353B69645F75736572737C733A313A2232223B6E696B7C733A31363A2233323131303330333034383930303034223B66756C6C5F6E616D657C733A31353A227975737469616E20627564696D616E223B656D61696C7C733A32343A227975737469616E627564696D616E40676D61696C2E636F6D223B70617373776F72647C733A36303A222432792430342457627966763478776968622E2E504F6668785935592E6A484F4A714546494733644C66425977416D6E4F4143704830455743436471223B6E6F5F68707C733A31323A22303835323135333232383939223B696D616765737C733A31373A2261746F6D69785F7573657233312E706E67223B69645F757365725F6C6576656C7C733A313A2234223B69645F636162616E677C733A313A2231223B69645F6469766973697C733A313A2231223B69735F616B7469667C733A313A2279223B74676C5F6461667461727C733A31393A22323031392D31322D30362030383A32333A3431223B74676C5F7570646174657C733A31393A22323031392D31322D30362030383A33313A3230223B);
INSERT INTO `ci_sessions` VALUES ('jtkvct4d52qqg11afleqlpfej1ohc4v9', '::1', '1576249333', 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363234393333333B69645F75736572737C733A313A2232223B6E696B7C733A31363A2233323131303330333034383930303034223B66756C6C5F6E616D657C733A31353A227975737469616E20627564696D616E223B656D61696C7C733A32343A227975737469616E627564696D616E40676D61696C2E636F6D223B70617373776F72647C733A36303A222432792430342457627966763478776968622E2E504F6668785935592E6A484F4A714546494733644C66425977416D6E4F4143704830455743436471223B6E6F5F68707C733A31323A22303835323135333232383939223B696D616765737C733A31373A2261746F6D69785F7573657233312E706E67223B69645F757365725F6C6576656C7C733A313A2234223B69645F636162616E677C733A313A2231223B69645F6469766973697C733A313A2231223B69735F616B7469667C733A313A2279223B74676C5F6461667461727C733A31393A22323031392D31322D30362030383A32333A3431223B74676C5F7570646174657C733A31393A22323031392D31322D30362030383A33313A3230223B);
INSERT INTO `ci_sessions` VALUES ('ors9jdc69970fj1peejrok3v4ilhk38c', '::1', '1576250162', 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363235303136323B69645F75736572737C733A313A2232223B6E696B7C733A31363A2233323131303330333034383930303034223B66756C6C5F6E616D657C733A31353A227975737469616E20627564696D616E223B656D61696C7C733A32343A227975737469616E627564696D616E40676D61696C2E636F6D223B70617373776F72647C733A36303A222432792430342457627966763478776968622E2E504F6668785935592E6A484F4A714546494733644C66425977416D6E4F4143704830455743436471223B6E6F5F68707C733A31323A22303835323135333232383939223B696D616765737C733A31373A2261746F6D69785F7573657233312E706E67223B69645F757365725F6C6576656C7C733A313A2234223B69645F636162616E677C733A313A2231223B69645F6469766973697C733A313A2231223B69735F616B7469667C733A313A2279223B74676C5F6461667461727C733A31393A22323031392D31322D30362030383A32333A3431223B74676C5F7570646174657C733A31393A22323031392D31322D30362030383A33313A3230223B);
INSERT INTO `ci_sessions` VALUES ('tbm77oavlq8b3dd3tceqcbdfpi2kn32t', '::1', '1576250693', 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363235303639333B69645F75736572737C733A313A2232223B6E696B7C733A31363A2233323131303330333034383930303034223B66756C6C5F6E616D657C733A31353A227975737469616E20627564696D616E223B656D61696C7C733A32343A227975737469616E627564696D616E40676D61696C2E636F6D223B70617373776F72647C733A36303A222432792430342457627966763478776968622E2E504F6668785935592E6A484F4A714546494733644C66425977416D6E4F4143704830455743436471223B6E6F5F68707C733A31323A22303835323135333232383939223B696D616765737C733A31373A2261746F6D69785F7573657233312E706E67223B69645F757365725F6C6576656C7C733A313A2234223B69645F636162616E677C733A313A2231223B69645F6469766973697C733A313A2231223B69735F616B7469667C733A313A2279223B74676C5F6461667461727C733A31393A22323031392D31322D30362030383A32333A3431223B74676C5F7570646174657C733A31393A22323031392D31322D30362030383A33313A3230223B);
INSERT INTO `ci_sessions` VALUES ('tlu6557la433q80q1hui40o4ak23n1cg', '::1', '1576251333', 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363235313131323B69645F75736572737C733A313A2232223B6E696B7C733A31363A2233323131303330333034383930303034223B66756C6C5F6E616D657C733A31353A227975737469616E20627564696D616E223B656D61696C7C733A32343A227975737469616E627564696D616E40676D61696C2E636F6D223B70617373776F72647C733A36303A222432792430342457627966763478776968622E2E504F6668785935592E6A484F4A714546494733644C66425977416D6E4F4143704830455743436471223B6E6F5F68707C733A31323A22303835323135333232383939223B696D616765737C733A31373A2261746F6D69785F7573657233312E706E67223B69645F757365725F6C6576656C7C733A313A2234223B69645F636162616E677C733A313A2231223B69645F6469766973697C733A313A2231223B69735F616B7469667C733A313A2279223B74676C5F6461667461727C733A31393A22323031392D31322D30362030383A32333A3431223B74676C5F7570646174657C733A31393A22323031392D31322D30362030383A33313A3230223B);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of divisi
-- ----------------------------
INSERT INTO `divisi` VALUES ('1', 'Divisi A', 'Aktif');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of status_trx
-- ----------------------------
INSERT INTO `status_trx` VALUES ('1', 'Pending', 'Aktif');
INSERT INTO `status_trx` VALUES ('2', 'Progress', 'Aktif');
INSERT INTO `status_trx` VALUES ('3', 'Jatuh Tempo', 'Aktif');
INSERT INTO `status_trx` VALUES ('4', 'Done', 'Aktif');
INSERT INTO `status_trx` VALUES ('5', 'Drop', 'Aktif');

-- ----------------------------
-- Table structure for `tbl_hak_akses`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hak_akses`;
CREATE TABLE `tbl_hak_akses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=latin1;

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
INSERT INTO `tbl_hak_akses` VALUES ('159', '4', '52');
INSERT INTO `tbl_hak_akses` VALUES ('160', '4', '51');
INSERT INTO `tbl_hak_akses` VALUES ('161', '6', '51');
INSERT INTO `tbl_hak_akses` VALUES ('162', '6', '52');
INSERT INTO `tbl_hak_akses` VALUES ('163', '7', '51');
INSERT INTO `tbl_hak_akses` VALUES ('164', '7', '52');
INSERT INTO `tbl_hak_akses` VALUES ('165', '4', '53');
INSERT INTO `tbl_hak_akses` VALUES ('166', '1', '53');
INSERT INTO `tbl_hak_akses` VALUES ('167', '5', '53');
INSERT INTO `tbl_hak_akses` VALUES ('168', '5', '31');
INSERT INTO `tbl_hak_akses` VALUES ('169', '5', '54');
INSERT INTO `tbl_hak_akses` VALUES ('170', '4', '54');

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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

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
INSERT INTO `tbl_menu` VALUES ('53', 'Otorisasi', 'otorisasi', 'fa fa-building', '31', 'y');
INSERT INTO `tbl_menu` VALUES ('54', 'Reporting', 'reporting', 'fa fa-building', '31', 'y');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', null, 'Bayu Ihsanudin', 'bayu070494@gmail.com', '$2y$04$Wbyfv4xwihb..POfhxY5Y.jHOJqEFIG3dLfBYwAmnOACpH0EWCCdq', null, 'atomix_user31.png', '1', '', '0', 'y', '2018-09-01 00:00:00', '2018-11-12 06:24:55');
INSERT INTO `tbl_user` VALUES ('2', '3211030304890004', 'yustian budiman', 'yustianbudiman@gmail.com', '$2y$04$Wbyfv4xwihb..POfhxY5Y.jHOJqEFIG3dLfBYwAmnOACpH0EWCCdq', '085215322899', 'atomix_user31.png', '4', '1', '1', 'y', '2019-12-06 08:23:41', '2019-12-06 08:31:20');
INSERT INTO `tbl_user` VALUES ('3', '3211030304890004', 'audit1', 'audit1@gmail.com', '$2y$04$XcUfc43f9RWlBIY75ThvZOHoqZ.urBHD8zYFdZQf3XQhUA0bvPZuO', '129312371873183', '', '6', '1', '1', 'y', '2019-12-06 08:37:43', '2019-12-12 13:30:03');
INSERT INTO `tbl_user` VALUES ('4', '3211030304890003', 'piket', 'piket@gmail.com', '$2y$04$pW7wFkeMHCA3Tmh8MCAZaOzzglk8FnuzP8n7goTrTEBe5iEYQk1ji', '085215322890', '', '7', '1', '1', 'y', '2019-12-09 11:07:22', '2019-12-09 17:24:19');
INSERT INTO `tbl_user` VALUES ('5', '3211030304890001', 'senior audit', 'senior_audit@gmail.com', '$2y$04$dzCcCoOsEoF53ajBvXKJDu1sdTE80FnsAXMzxgtFUHOzUztlyvRwi', '085215322898', '', '5', '1', '1', 'y', '2019-12-11 08:57:49', '2019-12-11 08:57:49');
INSERT INTO `tbl_user` VALUES ('6', '3211030304890007', 'audit2', 'audit2@gmail.com', '$2y$04$5BPNxODOpD1uqh/sKFtJROqt1cMSPvgGejxsXeNDmmhqGAdrd0okO', '085215322800', '', '6', '1', '1', 'y', '2019-12-12 01:22:51', '2019-12-12 13:22:51');

-- ----------------------------
-- Table structure for `tbl_user_level`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_level`;
CREATE TABLE `tbl_user_level` (
  `id_user_level` int(11) NOT NULL AUTO_INCREMENT,
  `nama_level` varchar(30) NOT NULL,
  PRIMARY KEY (`id_user_level`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user_level
-- ----------------------------
INSERT INTO `tbl_user_level` VALUES ('1', 'Super Admin');
INSERT INTO `tbl_user_level` VALUES ('2', 'Admin');
INSERT INTO `tbl_user_level` VALUES ('3', 'User Kadiv');
INSERT INTO `tbl_user_level` VALUES ('4', 'User Kabag');
INSERT INTO `tbl_user_level` VALUES ('5', 'User Senior Auditor');
INSERT INTO `tbl_user_level` VALUES ('6', 'User Auditor');
INSERT INTO `tbl_user_level` VALUES ('7', 'piket');

-- ----------------------------
-- View structure for `v_cat_bisnis`
-- ----------------------------
DROP VIEW IF EXISTS `v_cat_bisnis`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cat_bisnis` AS select `a`.`id_cat_bisnis` AS `id_cat_bisnis`,`a`.`id_cat_bisnis_header` AS `id_cat_bisnis_header`,`k`.`id_cabang` AS `id_cabang`,`k`.`nama_cabang` AS `nama_cabang`,`l`.`alamat` AS `alamat`,`a`.`temuan` AS `temuan`,`b`.`nama_klasifikasi_temuan` AS `nama_klasifikasi_temuan`,`a`.`kriteria` AS `kriteria`,`a`.`dampak` AS `dampak`,`c`.`nama_penyimpangan` AS `nama_penyimpangan`,`e`.`nama_environment` AS `nama_environment`,`a`.`environment_value` AS `environment_value`,`f`.`nama_risk_assesment` AS `nama_risk_assesment`,`a`.`risk_assesment_value` AS `risk_assesment_value`,`g`.`nama_control_activities` AS `nama_control_activities`,`a`.`control_activities_value` AS `control_activities_value`,`h`.`nama_information_comunication` AS `nama_information_comunication`,`a`.`information_comunication_value` AS `information_comunication_value`,`i`.`nama_monitoring` AS `nama_monitoring`,`a`.`monitoring_value` AS `monitoring_value`,`j`.`nama_goal_strategic` AS `nama_goal_strategic`,`a`.`goal_strategic_value` AS `goal_strategic_value`,`a`.`total_impact` AS `total_impact`,`a`.`likelihood` AS `likelihood`,`a`.`repeated` AS `repeated`,`a`.`tev` AS `tev`,`a`.`bobot_resiko` AS `bobot_resiko`,`a`.`rekomendasi` AS `rekomendasi`,`a`.`tanggapan_audit` AS `tanggapan_audit`,`a`.`target_date` AS `target_date`,`a`.`tl` AS `tl`,`a`.`member` AS `member`,`a`.`tanggal_periksa` AS `tanggal_periksa`,`a`.`supervisor` AS `supervisor`,`a`.`bop` AS `bop`,`d`.`status_trx` AS `status_trx`,`a`.`aktif` AS `aktif` from (((((((((((`cat_bisnis` `a` join `klasifikasi_temuan` `b` on((`a`.`klasifikasi_temuan` = `b`.`id_klasifikasi_temuan`))) join `penyimpangan` `c` on((`a`.`id_penyimpangan` = `c`.`id_penyimpangan`))) join `status_trx` `d` on((`a`.`status` = `d`.`id_status`))) join `cont_environment` `e` on((`a`.`id_environment` = `e`.`id_environment`))) join `risk_assesment` `f` on((`a`.`id_risk_assesment` = `f`.`id_risk_assesment`))) join `control_activities` `g` on((`a`.`id_control_activities` = `g`.`id_control_activities`))) join `information_comunication` `h` on((`a`.`id_information_comunication` = `h`.`id_information_comunication`))) join `monitoring` `i` on((`a`.`id_monitoring` = `i`.`id_monitoring`))) join `goal_strategic` `j` on((`a`.`id_goal_strategic` = `j`.`id_goal_strategic`))) join `cat_bisnis_header` `k` on((`a`.`id_cat_bisnis_header` = `k`.`id_cat_bisnis_header`))) join `cabang` `l` on((`k`.`id_cabang` = `l`.`id_cabang`))) ;

-- ----------------------------
-- View structure for `v_cat_operasional`
-- ----------------------------
DROP VIEW IF EXISTS `v_cat_operasional`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cat_operasional` AS select `a`.`id_cat_operasional` AS `id_cat_operasional`,`a`.`id_cat_operasional_header` AS `id_cat_operasional_header`,`k`.`id_cabang` AS `id_cabang`,`k`.`nama_cabang` AS `nama_cabang`,`l`.`alamat` AS `alamat`,`a`.`temuan` AS `temuan`,`b`.`nama_klasifikasi_temuan` AS `nama_klasifikasi_temuan`,`a`.`kriteria` AS `kriteria`,`a`.`dampak` AS `dampak`,`c`.`nama_penyimpangan` AS `nama_penyimpangan`,`e`.`nama_environment` AS `nama_environment`,`a`.`environment_value` AS `environment_value`,`f`.`nama_risk_assesment` AS `nama_risk_assesment`,`a`.`risk_assesment_value` AS `risk_assesment_value`,`g`.`nama_control_activities` AS `nama_control_activities`,`a`.`control_activities_value` AS `control_activities_value`,`h`.`nama_information_comunication` AS `nama_information_comunication`,`a`.`information_comunication_value` AS `information_comunication_value`,`i`.`nama_monitoring` AS `nama_monitoring`,`a`.`monitoring_value` AS `monitoring_value`,`a`.`total_impact` AS `total_impact`,`a`.`likelihood` AS `likelihood`,`a`.`repeated` AS `repeated`,`a`.`tev` AS `tev`,`a`.`bobot_resiko` AS `bobot_resiko`,`a`.`rekomendasi` AS `rekomendasi`,`a`.`tanggapan_audit` AS `tanggapan_audit`,`a`.`target_date` AS `target_date`,`a`.`tl` AS `tl`,`a`.`member` AS `member`,`a`.`tanggal_periksa` AS `tanggal_periksa`,`a`.`supervisor` AS `supervisor`,`a`.`bop` AS `bop`,`d`.`status_trx` AS `status_trx`,`a`.`aktif` AS `aktif` from ((((((((((`cat_operasional` `a` join `klasifikasi_temuan` `b` on((`a`.`klasifikasi_temuan` = `b`.`id_klasifikasi_temuan`))) join `penyimpangan` `c` on((`a`.`id_penyimpangan` = `c`.`id_penyimpangan`))) join `status_trx` `d` on((`a`.`status` = `d`.`id_status`))) join `cont_environment` `e` on((`a`.`id_environment` = `e`.`id_environment`))) join `risk_assesment` `f` on((`a`.`id_risk_assesment` = `f`.`id_risk_assesment`))) join `control_activities` `g` on((`a`.`id_control_activities` = `g`.`id_control_activities`))) join `information_comunication` `h` on((`a`.`id_information_comunication` = `h`.`id_information_comunication`))) join `monitoring` `i` on((`a`.`id_monitoring` = `i`.`id_monitoring`))) join `cat_operasional_header` `k` on((`a`.`id_cat_operasional_header` = `k`.`id_cat_operasional_header`))) join `cabang` `l` on((`k`.`id_cabang` = `l`.`id_cabang`))) ;
