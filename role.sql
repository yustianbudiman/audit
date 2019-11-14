/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : new_kidsrepublic

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-11-14 15:45:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `nama_role` char(50) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'super admin', '1');
INSERT INTO `role` VALUES ('2', 'student', '1');
INSERT INTO `role` VALUES ('3', 'teacher', '1');
INSERT INTO `role` VALUES ('4', 'ao', '1');
INSERT INTO `role` VALUES ('5', 'admin', '1');
INSERT INTO `role` VALUES ('6', 'hrd', '1');
INSERT INTO `role` VALUES ('7', 'principle', '1');
INSERT INTO `role` VALUES ('8', 'staff', '1');
INSERT INTO `role` VALUES ('9', 'finance', '1');
