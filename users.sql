/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : new_kidsrepublic

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-11-14 15:46:23
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `blokir` enum('Y','N') DEFAULT 'N',
  `id_session` varchar(100) DEFAULT NULL,
  `id_system` int(3) DEFAULT NULL,
  `menu` text,
  `id_program` int(5) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `my_id` int(15) DEFAULT NULL,
  `employee_group` varchar(100) DEFAULT '0',
  `admin_hddept` varchar(30) DEFAULT '0',
  `admin_classroom` int(1) DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `area` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=695 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin', 'Simak Administrator', 'admin@kidsrepublic.co.id', 'employee', 'N', 'hpejq7vvfn1l691fdt6g7lkv10', '0', '', '7', 'logo-kids-republic.png', '1', '1', '1', '1', '2019-11-13 05:39:14', '0');
INSERT INTO `users` VALUES ('464', 'EDU07515', 'EDU07515', 'Alila', null, 'student', 'N', null, null, null, null, null, '251', '0', '0', '0', '2019-11-12 08:29:44', '1');
INSERT INTO `users` VALUES ('465', 'EDU06715', 'EDU06715', 'Gabriela Shanesa', null, 'student', 'N', null, null, null, null, null, '243', '0', '0', '0', '2019-11-07 11:45:46', '1');
INSERT INTO `users` VALUES ('466', 'EDU05215', 'EDU05215', 'Belicia Putri', null, 'student', 'N', null, null, null, null, null, '226', '0', '0', '0', null, '1');
INSERT INTO `users` VALUES ('467', 'EDU07415', 'EDU07415', 'Syahreal Adzaki', null, 'student', 'N', null, null, null, null, null, '250', '0', '0', '0', null, '1');
INSERT INTO `users` VALUES ('468', 'EDU06315', 'EDU06315', 'Alfiandra Nakhla', null, 'student', 'N', null, null, null, null, null, '239', '0', '0', '0', null, '1');
INSERT INTO `users` VALUES ('469', 'EDU05115', 'EDU05115', 'Dante Althafgeo', null, 'student', 'N', null, null, null, null, null, '225', '0', '0', '0', null, '1');
INSERT INTO `users` VALUES ('470', 'GYM/066', 'GYM/066', 'Arlene Carlisha', null, 'student', 'N', null, null, null, null, null, '260', '0', '0', '0', null, '1');
INSERT INTO `users` VALUES ('471', 'EDU07215', 'EDU07215', 'Evanoel Masgok', null, 'student', 'N', null, null, null, null, null, '248', '0', '0', '0', null, '1');
INSERT INTO `users` VALUES ('472', 'EDU06015', 'EDU06015', 'Naressa Candrakinanti', null, 'student', 'N', null, null, null, null, null, '236', '0', '0', '0', null, '1');
INSERT INTO `users` VALUES ('473', 'EDU04815', 'EDU04815', 'Che Cailo', null, 'student', 'N', null, null, null, null, null, '222', '0', '0', '0', null, '1');
INSERT INTO `users` VALUES ('664', 'dewanti.indralena@gmail.com', 'dewanti.indralena@gmail.com', 'Dewanti', null, 'employee', 'Y', null, null, null, null, null, '79', '0', '2', '0', '2019-10-21 17:07:15', '1');
INSERT INTO `users` VALUES ('665', 'nicesarah@ymail.com', 'nicesarah@ymail.com', 'Sefriyani Permatasari', null, 'employee', 'Y', null, null, null, null, null, '81', '0', '2', '0', '2019-11-05 07:00:19', '1');
INSERT INTO `users` VALUES ('666', 'rakhmi.ramdhani@gmail.com', 'rakhmi.ramdhani@gmail.com', 'Rakhmi Ramdhani Said Halim', null, 'employee', 'Y', null, null, null, null, null, '47', '0', '0', '0', '2019-11-06 08:39:29', '1');
INSERT INTO `users` VALUES ('667', '', '', 'Yusrinati', null, 'employee', 'Y', null, null, null, null, null, '56', '0', '2', '0', null, '1');
INSERT INTO `users` VALUES ('668', 'mayor.cipinang@kidsrepublic.sch.id', 'mayor.cipinang@kidsrepublic.sch.id', 'Nina Kania Ningsih', null, 'employee', 'Y', null, null, null, null, null, '16', '0', '2', '0', '2019-11-06 14:03:06', '1');
INSERT INTO `users` VALUES ('669', 'info@kidsrepublic.sch.id', 'info@kidsrepublic.sch.id', 'Suci Nurul Ulfa', null, 'employee', 'Y', null, null, null, null, null, '87', '0', '4', '0', '2019-11-06 06:01:45', '1');
INSERT INTO `users` VALUES ('670', 'creative@kidsrepublic.sch.id', 'creative@kidsrepublic.sch.id', 'Creative', null, 'employee', 'N', null, null, null, null, null, '3', '0', '1', '0', null, '0');
INSERT INTO `users` VALUES ('671', 'finance@kidsrepublic.sch.id', 'finance@kidsrepublic.sch.id', 'Finance', null, 'employee', 'N', null, null, null, null, null, '5', '0', '1', '0', '2019-11-07 15:22:48', '0');
INSERT INTO `users` VALUES ('672', 'gymnastic@kidsrepublic.sch.id', 'gymnastic@kidsrepublic.sch.id', 'Gymnastic', null, 'employee', 'N', null, null, null, null, null, '6', '24#63', '1', '0', '2019-11-06 12:04:35', '1');
INSERT INTO `users` VALUES ('673', 'chairwomen@kidsrepublic.sch.id', 'chairwomen@kidsrepublic.sch.id', 'Chairwoman', null, 'employee', 'N', null, null, null, null, null, '2', '0', '1', '0', '2019-11-06 16:26:47', '0');
INSERT INTO `users` VALUES ('674', 'marketing@kidsrepublic.sch.id', 'marketing@kidsrepublic.sch.id', 'Marketing', null, 'employee', 'N', null, null, null, null, null, '11', '0', '1', '0', '2019-11-10 08:55:23', '1');
INSERT INTO `users` VALUES ('675', 'md@kidsrepublic.sch.id', 'md@kidsrepublic.sch.id', 'MD', null, 'employee', 'N', null, null, null, null, null, '12', '0', '1', '0', null, '1');
INSERT INTO `users` VALUES ('676', 'hrd@kidsrepublic.sch.id', 'hrd@kidsrepublic.sch.id', 'HRD', null, 'employee', 'N', null, null, null, null, null, '8', '0', '6', '0', '2019-11-10 11:33:42', '0');
INSERT INTO `users` VALUES ('677', 'info@kidsrepublic.sch.id', 'info@kidsrepublic.sch.id', 'AO', null, 'employee', 'N', null, null, null, null, null, '9', '0', '4', '0', '2019-11-12 10:04:19', '1');
INSERT INTO `users` VALUES ('678', 'it@kidsrepublic.sch.id', 'it@kidsrepublic.sch.id', 'IT', null, 'employee', 'N', null, null, null, null, null, '10', '0', '1', '0', null, '1');
INSERT INTO `users` VALUES ('679', 'operational@kidsrepublic.sch.id', 'operational@kidsrepublic.sch.id', 'Operational', null, 'employee', 'N', null, null, null, null, null, '13', '0', '1', '0', null, '1');
INSERT INTO `users` VALUES ('680', 'primary.principal@kidsrepublic.sch.id', 'primary.principal@kidsrepublic.sch.id', 'Primary Principal', null, 'employee', 'N', null, null, null, null, null, '17', '0', '1', '0', null, '1');
INSERT INTO `users` VALUES ('681', 'principal@kidsrepublic.sch.id', 'principal@kidsrepublic.sch.id', 'Principal', null, 'employee', 'N', null, null, null, null, null, '18', '0', '1', '0', null, '1');
INSERT INTO `users` VALUES ('682', 'mayor.cipinang@kidsrepublic.sch.id', 'mayor.cipinang@kidsrepublic.sch.id', 'Mayor Cipinang', null, 'employee', 'N', null, null, null, null, null, '20', '16#75#58', '1', '0', '2019-11-10 09:14:04', '1');
INSERT INTO `users` VALUES ('683', 'ministerb.cipinang@kidsrepublic.sch.id', 'ministerb.cipinang@kidsrepublic.sch.id', 'Minister B Cipinang', null, 'employee', 'N', null, null, null, null, null, '28', '36#79', '1', '0', null, '1');
INSERT INTO `users` VALUES ('684', 'ministerc.cipinang@kidsrepublic.sch.id', 'ministerc.cipinang@kidsrepublic.sch.id', 'Minister C Cipinang', null, 'employee', 'N', null, null, null, null, null, '29', '30#52', '1', '0', null, '1');
INSERT INTO `users` VALUES ('685', 'minister.galaxy@kidsrepublic.sch.id', 'minister.galaxy@kidsrepublic.sch.id', 'Minister Galaxy', null, 'employee', 'N', null, null, null, null, null, '30', '0', '1', '0', null, '1');
INSERT INTO `users` VALUES ('686', 'presidenta.cipinang@kidsrepublic.sch.id', 'presidenta.cipinang@kidsrepublic.sch.id', 'President A Cipinang', null, 'employee', 'N', null, null, null, null, null, '31', '19#88', '1', '0', null, '1');
INSERT INTO `users` VALUES ('687', 'presidentb.cipinang@kidsrepublic.sch.id', 'presidentb.cipinang@kidsrepublic.sch.id', 'President B Cipinang', null, 'employee', 'N', null, null, null, null, null, '32', '0', '1', '0', null, '1');
INSERT INTO `users` VALUES ('688', 'president.galaxy@kidsrepublic.sch.id', 'president.galaxy@kidsrepublic.sch.id', 'President Galaxy', null, 'employee', 'N', null, null, null, null, null, '33', '0', '1', '0', null, '1');
INSERT INTO `users` VALUES ('689', 'mayor.galaxy@kidsrepublic.sch.id', 'mayor.galaxy@kidsrepublic.sch.id', 'Mayor Galaxy', null, 'employee', 'N', null, null, null, null, null, '21', '0', '1', '0', null, '1');
INSERT INTO `users` VALUES ('690', 'governora.cipinang@kidsrepublic.sch.id', 'governora.cipinang@kidsrepublic.sch.id', 'Governor A Cipinang', null, 'employee', 'N', null, null, null, null, null, '22', '37#56', '1', '0', null, '1');
INSERT INTO `users` VALUES ('691', 'governorb.cipinang@kidsrepublic.sch.id', 'governorb.cipinang@kidsrepublic.sch.id', 'Governor B Cipinang', null, 'employee', 'N', null, null, null, null, null, '23', '49#92', '1', '0', null, '1');
INSERT INTO `users` VALUES ('692', 'governor.galaxy@kidsrepublic.sch.id', 'governor.galaxy@kidsrepublic.sch.id', 'Governor Galaxy', null, 'employee', 'N', null, null, null, null, null, '26', '0', '1', '0', null, '1');
INSERT INTO `users` VALUES ('693', 'ministera.cipinang@kidsrepublic.sch.id', 'ministera.cipinang@kidsrepublic.sch.id', 'Minister A Cipinang', null, 'employee', 'N', null, null, null, null, null, '27', '19#54', '1', '0', null, '1');
INSERT INTO `users` VALUES ('694', '', '', '', null, null, 'N', null, null, null, null, null, null, '0', '0', '0', null, '1');
