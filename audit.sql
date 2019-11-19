/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : audit

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-11-18 20:15:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cabang`
-- ----------------------------
DROP TABLE IF EXISTS `cabang`;
CREATE TABLE `cabang` (
  `id_cabang` int(5) NOT NULL AUTO_INCREMENT,
  `nama_cabang` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `provinsi` varchar(150) NOT NULL,
  `no_telepon` varchar(150) NOT NULL,
  `kepala_cabang` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `is_active` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cabang`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cabang
-- ----------------------------

-- ----------------------------
-- Table structure for `cat_bisnis`
-- ----------------------------
DROP TABLE IF EXISTS `cat_bisnis`;
CREATE TABLE `cat_bisnis` (
  `id_cat_bisnis` int(5) NOT NULL AUTO_INCREMENT,
  `id_cabang` int(5) DEFAULT NULL,
  `nama_cabang` varchar(150) NOT NULL,
  `id_temuan` int(5) DEFAULT NULL,
  `kriteria` varchar(200) NOT NULL,
  `dampak` varchar(200) NOT NULL,
  `id_penyimpangan` int(5) DEFAULT NULL,
  `id_environment` int(5) DEFAULT NULL,
  `environment_value` int(11) DEFAULT NULL,
  `id_risk_assesment` int(5) DEFAULT NULL,
  `risk_assesment_value` int(11) DEFAULT NULL,
  `id_control_activiti` int(5) DEFAULT NULL,
  `control_activiti_value` int(11) DEFAULT NULL,
  `id_infomation_comunication` int(5) DEFAULT NULL,
  `infomation_comunication_value` int(11) DEFAULT NULL,
  `id_monitoring` int(5) DEFAULT NULL,
  `monitoring_value` int(11) DEFAULT NULL,
  `id_goal_stategic` int(5) DEFAULT NULL,
  `goal_stategic_value` int(11) DEFAULT NULL,
  `total_impact` int(11) DEFAULT NULL,
  `probaly` float DEFAULT NULL,
  `tev` float DEFAULT NULL,
  `bobot_resiko` varchar(100) DEFAULT NULL,
  `rekomendasi` varchar(200) DEFAULT NULL,
  `tanggapan_audit` varchar(100) DEFAULT NULL,
  `target_date` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cat_bisnis`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cat_bisnis
-- ----------------------------

-- ----------------------------
-- Table structure for `cat_operasional`
-- ----------------------------
DROP TABLE IF EXISTS `cat_operasional`;
CREATE TABLE `cat_operasional` (
  `id_cat_operasional` int(5) NOT NULL AUTO_INCREMENT,
  `id_cabang` int(5) DEFAULT NULL,
  `nama_cabang` varchar(150) NOT NULL,
  `id_temuan` int(5) DEFAULT NULL,
  `kriteria` varchar(200) NOT NULL,
  `dampak` varchar(200) NOT NULL,
  `id_penyimpangan` int(5) DEFAULT NULL,
  `id_environment` int(5) DEFAULT NULL,
  `environment_value` int(11) DEFAULT NULL,
  `id_risk_assesment` int(5) DEFAULT NULL,
  `risk_assesment_value` int(11) DEFAULT NULL,
  `id_control_activiti` int(5) DEFAULT NULL,
  `control_activiti_value` int(11) DEFAULT NULL,
  `id_infomation_comunication` int(5) DEFAULT NULL,
  `infomation_comunication_value` int(11) DEFAULT NULL,
  `id_monitoring` int(5) DEFAULT NULL,
  `monitoring_value` int(11) DEFAULT NULL,
  `total_impact` int(11) DEFAULT NULL,
  `probaly` float DEFAULT NULL,
  `tev` float DEFAULT NULL,
  `bobot_resiko` varchar(100) DEFAULT NULL,
  `rekomendasi` varchar(200) DEFAULT NULL,
  `tanggapan_audit` varchar(100) DEFAULT NULL,
  `target_date` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cat_operasional`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cat_operasional
-- ----------------------------

-- ----------------------------
-- Table structure for `contol_activities`
-- ----------------------------
DROP TABLE IF EXISTS `contol_activities`;
CREATE TABLE `contol_activities` (
  `id_contol_activities` int(5) NOT NULL AUTO_INCREMENT,
  `nama_contol_activities` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `is_active` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_contol_activities`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contol_activities
-- ----------------------------

-- ----------------------------
-- Table structure for `cont_environment`
-- ----------------------------
DROP TABLE IF EXISTS `cont_environment`;
CREATE TABLE `cont_environment` (
  `id_environment` int(5) NOT NULL AUTO_INCREMENT,
  `nama_environment` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `is_active` int(11) DEFAULT '1',
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

-- ----------------------------
-- Table structure for `goal_strategic`
-- ----------------------------
DROP TABLE IF EXISTS `goal_strategic`;
CREATE TABLE `goal_strategic` (
  `id_goal_strategic` int(5) NOT NULL AUTO_INCREMENT,
  `nama_goal_strategic` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `is_active` int(11) DEFAULT '1',
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

-- ----------------------------
-- Table structure for `information_comunication`
-- ----------------------------
DROP TABLE IF EXISTS `information_comunication`;
CREATE TABLE `information_comunication` (
  `id_information_comunication` int(5) NOT NULL AUTO_INCREMENT,
  `nama_information_comunication` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `is_active` int(11) DEFAULT '1',
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

-- ----------------------------
-- Table structure for `klasifikasi_temuan`
-- ----------------------------
DROP TABLE IF EXISTS `klasifikasi_temuan`;
CREATE TABLE `klasifikasi_temuan` (
  `id_klasifikasi_temuan` int(5) NOT NULL AUTO_INCREMENT,
  `nama_klasifikasi_temuan` varchar(150) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `is_active` int(11) DEFAULT '1',
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

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id_menu` int(3) NOT NULL AUTO_INCREMENT,
  `menu` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `id_parent` int(5) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `ordering` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'Helpdesk', '#', '10', 'fa fa-info-circle', 'left_menu', 'Y', '1', '2019-11-13 11:10:09', null, null, '2019-11-14 15:56:16', null, null);
INSERT INTO `menu` VALUES ('2', 'Home', 'welcome/index', '0', 'fa fa-home', 'left_menu', 'Y', '2', '2019-11-13 11:10:09', null, null, '2019-11-14 15:56:19', null, null);
INSERT INTO `menu` VALUES ('3', 'Request Form', 'reqform/index', '10', '', 'in_content_menu', 'Y', null, '2019-11-13 11:10:09', null, null, '2019-11-14 15:56:22', null, null);

-- ----------------------------
-- Table structure for `monitoring`
-- ----------------------------
DROP TABLE IF EXISTS `monitoring`;
CREATE TABLE `monitoring` (
  `id_monitoring` int(5) NOT NULL AUTO_INCREMENT,
  `nama_monitoring` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `is_active` int(11) DEFAULT '1',
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

-- ----------------------------
-- Table structure for `penyimpangan`
-- ----------------------------
DROP TABLE IF EXISTS `penyimpangan`;
CREATE TABLE `penyimpangan` (
  `id_penyimpangan` int(5) NOT NULL AUTO_INCREMENT,
  `nama_penyimpanagan` varchar(150) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `is_active` int(11) DEFAULT '1',
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

-- ----------------------------
-- Table structure for `risk_assesment`
-- ----------------------------
DROP TABLE IF EXISTS `risk_assesment`;
CREATE TABLE `risk_assesment` (
  `id_risk_assesment` int(5) NOT NULL AUTO_INCREMENT,
  `nama_risk_assesment` varchar(150) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `is_active` int(11) DEFAULT '1',
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

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `nama_role` char(50) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'super admin', '1');
INSERT INTO `role` VALUES ('2', 'user', '1');

-- ----------------------------
-- Table structure for `role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `id_role_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_role` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `create` int(11) DEFAULT NULL,
  `read` int(11) DEFAULT NULL,
  `update` int(11) DEFAULT NULL,
  `delete` int(11) DEFAULT '0',
  PRIMARY KEY (`id_role_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('1', '1', '1', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('2', '1', '2', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('3', '1', '3', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('4', '2', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `role_user`
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `id_user_role` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `is_active` int(11) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user_role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES ('1', '1', '1', '1', '2019-11-14 16:18:31', null, null, '2019-11-14 16:18:31', null, null);
INSERT INTO `role_user` VALUES ('2', '2', '2', '1', '2019-11-14 16:18:31', null, null, '2019-11-14 16:18:31', null, null);

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id_user` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `is_active` int(11) DEFAULT '1',
  `photo` varchar(200) DEFAULT NULL,
  `my_id` int(15) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin', 'Administrator', 'admin@kidsrepublic.co.id', 'employee', '1', null, '1', '2019-11-13 05:39:14', '2019-11-14 16:14:18', null, null, '2019-11-14 16:22:25', null, null);
INSERT INTO `users` VALUES ('2', 'user', 'user', 'user', 'user@audit.co.id', 'employee', '1', null, '2', null, '2019-11-14 16:22:17', null, null, '2019-11-14 16:22:35', null, null);
