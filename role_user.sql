/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : new_kidsrepublic

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-11-14 15:46:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `role_user`
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `id_user_role` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `is_active` int(11) DEFAULT '1',
  PRIMARY KEY (`id_user_role`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES ('1', '1', '1', '1');
INSERT INTO `role_user` VALUES ('70', '464', '2', '1');
INSERT INTO `role_user` VALUES ('71', '664', '3', '1');
INSERT INTO `role_user` VALUES ('72', '665', '4', '1');
INSERT INTO `role_user` VALUES ('73', '465', '2', '1');
INSERT INTO `role_user` VALUES ('74', '666', '7', '1');
INSERT INTO `role_user` VALUES ('75', '668', '3', '1');
INSERT INTO `role_user` VALUES ('76', '669', '4', '1');
INSERT INTO `role_user` VALUES ('77', '673', '5', '1');
INSERT INTO `role_user` VALUES ('78', '670', '8', '1');
INSERT INTO `role_user` VALUES ('79', '671', '9', '1');
INSERT INTO `role_user` VALUES ('80', '672', '3', '1');
INSERT INTO `role_user` VALUES ('81', '674', '5', '1');
INSERT INTO `role_user` VALUES ('82', '675', '5', '1');
INSERT INTO `role_user` VALUES ('83', '676', '6', '1');
INSERT INTO `role_user` VALUES ('84', '677', '4', '1');
INSERT INTO `role_user` VALUES ('85', '678', '5', '1');
INSERT INTO `role_user` VALUES ('86', '682', '3', '1');
INSERT INTO `role_user` VALUES ('87', '681', '5', '1');
INSERT INTO `role_user` VALUES ('88', '680', '3', '1');
INSERT INTO `role_user` VALUES ('89', '679', '8', '1');
INSERT INTO `role_user` VALUES ('90', '693', '3', '1');
INSERT INTO `role_user` VALUES ('91', '692', '3', '1');
INSERT INTO `role_user` VALUES ('92', '691', '3', '1');
INSERT INTO `role_user` VALUES ('93', '690', '3', '1');
INSERT INTO `role_user` VALUES ('94', '689', '3', '1');
INSERT INTO `role_user` VALUES ('95', '688', '3', '1');
INSERT INTO `role_user` VALUES ('96', '687', '3', '1');
INSERT INTO `role_user` VALUES ('97', '686', '3', '1');
INSERT INTO `role_user` VALUES ('98', '685', '3', '1');
INSERT INTO `role_user` VALUES ('99', '684', '3', '1');
INSERT INTO `role_user` VALUES ('100', '683', '3', '1');
