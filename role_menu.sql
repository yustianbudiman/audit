/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : new_kidsrepublic

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-11-14 15:46:03
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('1', '7', '8', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('2', '7', '9', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('3', '7', '10', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('4', '7', '11', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('5', '7', '12', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('6', '7', '13', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('7', '7', '14', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('8', '7', '15', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('9', '7', '16', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('10', '7', '17', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('11', '7', '18', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('12', '7', '19', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('13', '7', '20', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('14', '7', '21', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('15', '7', '22', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('16', '7', '23', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('17', '7', '24', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('18', '7', '25', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('19', '7', '26', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('20', '7', '27', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('21', '7', '28', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('22', '7', '29', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('23', '7', '30', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('24', '1', '8', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('25', '1', '9', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('26', '1', '10', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('27', '1', '11', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('28', '1', '12', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('29', '1', '13', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('30', '1', '14', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('31', '1', '15', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('32', '1', '16', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('33', '1', '17', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('34', '1', '18', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('35', '1', '19', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('36', '1', '20', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('37', '1', '21', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('38', '1', '22', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('39', '1', '23', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('40', '1', '24', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('41', '1', '25', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('42', '1', '26', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('43', '1', '27', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('44', '1', '28', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('45', '1', '29', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('46', '1', '30', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('47', '1', '20', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('48', '5', '8', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('49', '5', '9', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('50', '5', '10', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('51', '5', '11', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('52', '5', '12', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('53', '5', '13', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('54', '5', '14', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('55', '5', '15', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('56', '5', '16', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('57', '5', '17', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('58', '5', '18', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('59', '5', '19', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('60', '5', '20', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('61', '5', '21', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('62', '5', '22', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('63', '5', '23', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('64', '5', '24', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('65', '5', '25', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('66', '5', '26', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('67', '5', '27', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('68', '5', '28', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('69', '5', '29', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('70', '5', '30', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('71', '9', '8', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('73', '9', '9', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('74', '9', '10', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('75', '9', '11', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('76', '9', '12', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('77', '9', '13', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('78', '9', '14', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('79', '9', '15', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('80', '9', '16', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('81', '9', '17', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('82', '9', '18', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('83', '9', '19', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('84', '9', '20', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('85', '9', '21', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('86', '9', '22', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('87', '9', '23', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('88', '9', '24', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('89', '9', '25', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('90', '9', '26', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('91', '9', '27', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('92', '9', '28', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('93', '9', '29', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('94', '9', '30', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('95', '3', '8', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('96', '3', '9', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('97', '3', '10', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('98', '3', '11', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('99', '3', '12', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('100', '3', '13', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('101', '3', '14', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('102', '3', '15', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('103', '3', '16', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('104', '3', '17', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('105', '3', '18', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('106', '3', '19', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('107', '3', '20', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('108', '3', '21', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('109', '3', '22', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('110', '3', '23', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('111', '3', '24', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('112', '3', '25', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('113', '3', '26', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('114', '3', '27', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('115', '3', '28', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('116', '3', '29', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('117', '3', '30', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('118', '3', '31', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('119', '6', '8', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('120', '6', '9', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('121', '6', '10', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('122', '6', '11', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('123', '6', '12', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('124', '6', '13', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('125', '6', '14', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('126', '6', '15', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('127', '6', '16', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('128', '6', '17', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('129', '6', '18', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('130', '6', '19', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('131', '6', '20', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('132', '6', '21', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('133', '6', '22', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('134', '6', '23', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('135', '6', '24', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('136', '6', '25', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('137', '6', '26', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('138', '6', '27', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('139', '6', '28', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('140', '6', '29', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('141', '6', '30', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('142', '6', '31', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('143', '2', '8', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('144', '2', '9', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('145', '2', '10', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('146', '2', '11', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('147', '2', '12', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('148', '2', '13', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('149', '2', '14', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('150', '2', '15', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('151', '2', '16', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('152', '2', '17', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('153', '2', '18', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('154', '2', '19', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('155', '2', '20', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('156', '2', '21', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('157', '2', '22', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('158', '2', '23', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('159', '2', '24', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('160', '2', '25', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('161', '2', '26', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('162', '2', '27', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('163', '2', '28', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('164', '2', '29', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('165', '2', '30', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('166', '2', '31', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('167', '2', '33', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('168', '4', '8', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('169', '4', '9', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('170', '4', '10', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('171', '4', '11', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('172', '4', '12', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('173', '4', '13', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('174', '4', '14', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('175', '4', '15', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('176', '4', '16', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('177', '4', '17', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('178', '4', '18', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('179', '4', '19', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('180', '4', '20', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('181', '4', '21', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('182', '4', '22', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('183', '4', '23', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('184', '4', '24', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('185', '4', '25', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('186', '4', '26', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('187', '4', '27', '1', '1', '1', '1');
INSERT INTO `role_menu` VALUES ('188', '4', '28', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('189', '4', '29', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('190', '4', '30', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('191', '4', '31', '0', '0', '0', '0');
INSERT INTO `role_menu` VALUES ('192', '4', '33', '0', '0', '0', '0');
