/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_auditportal

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-11-29 08:36:54
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cat_bisnis_header
-- ----------------------------
INSERT INTO `cat_bisnis_header` VALUES ('1', '1', '001 KPO', '2019-11-23', 'Aktif', '2019-11-23 20:26:27', null, null, '2019-11-23 20:26:27', null, null);
INSERT INTO `cat_bisnis_header` VALUES ('13', '1', '001 KPO', '2019-11-24', 'Aktif', '2019-11-25 12:09:31', null, null, '2019-11-25 12:09:31', null, null);
INSERT INTO `cat_bisnis_header` VALUES ('14', '1', '001 KPO', '2019-11-24', 'Aktif', '2019-11-25 12:17:54', null, null, '2019-11-25 12:17:54', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cat_operasional_header
-- ----------------------------
INSERT INTO `cat_operasional_header` VALUES ('29', '1', 'kopo', '2019-11-27', 'Aktif', '2019-11-26 20:59:09', null, null, '2019-11-26 20:59:09', null, null);
INSERT INTO `cat_operasional_header` VALUES ('31', '1', 'kopo raya', '2019-11-28', 'Aktif', '2019-11-28 14:13:47', null, null, '2019-11-28 14:13:47', null, null);
