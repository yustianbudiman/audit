/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : new_kidsrepublic

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-11-14 15:45:42
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_ip` varchar(15) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_ip` varchar(15) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('10', 'Helpdesk', '#', '10', 'fa fa-info-circle', 'left_menu', 'Y', '2', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('8', 'Home', 'welcome/index', '0', 'fa fa-home', 'left_menu', 'Y', '1', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('9', 'Request Form', 'reqform/index', '10', '', 'in_content_menu', 'Y', '4', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('11', 'Birthday Form', 'birthdayform/index', '10', '', 'in_content_menu', 'Y', '5', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('12', 'Trial Form', 'adminhd/trial_req_form', '10', '', 'in_content_menu', 'Y', '6', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('13', 'Withdraw Form', 'withdraw/index', '10', '', 'in_content_menu', 'Y', '7', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('14', 'Exschool Form', 'adminhd/exschool_form', '10', '', 'in_content_menu', 'Y', '8', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('15', 'Leave Form', 'leaveform/index', '10', '', 'in_content_menu', 'Y', '9', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('16', 'Vehicle Form', 'adminhd/vehicle_form', '10', '', 'in_content_menu', 'Y', '10', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('17', 'Inquiry Form', 'adminhd/inquiry_form', '10', '', 'in_content_menu', 'Y', '11', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('18', 'Calendar', 'calendar/index', '0', 'fa fa-calendar', 'left_menu', 'Y', '15', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('19', 'Classroom', 'classroom/index', '0', 'fa fa-building-o', 'left_menu', 'Y', '12', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('20', 'Letter & Newsletter', 'newsletter/index', '0', 'fa fa-newspaper-o', 'left_menu', 'Y', '14', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('21', 'Message', 'mymessage/index', '0', 'fa fa-comments-o', 'left_menu', 'Y', '13', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('22', 'Student data', 'student/index', '0', 'fa fa-mortar-board', 'left_menu', 'Y', '17', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('23', 'Employee data', 'employee/index', '0', 'fa fa-user', 'left_menu', 'Y', '16', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('24', 'Print IDCARD', 'print_idcard/index', '0', 'fa fa-credit-card', 'left_menu', 'Y', '18', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('25', 'User SIMAK', 'usersimak/index', '0', 'fa fa-unlock-alt', 'left_menu', 'Y', '19', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('26', 'Role User', 'roleuser/index', '0', '', 'setting_menu', 'Y', null, '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('27', 'Admin Hd', 'adminhd/index', '10', '', 'in_content_menu', 'Y', '3', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('28', 'Menu', 'menu/index', '0', '', 'setting_menu', 'Y', null, '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('29', 'Grand User', 'grand/index', '0', '', 'setting_menu', 'Y', null, '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('30', 'Management', 'management/index', '0', '', 'setting_menu', 'Y', null, '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('33', 'New & Newsletter', 'news_newsletter', '0', '', 'left_menu', 'Y', '21', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
INSERT INTO `menu` VALUES ('31', 'Exschool Form', 'exschool/index', '10', '', 'in_content_menu', 'Y', '20', '2019-11-13 11:10:09', null, null, '2019-11-13 11:10:09', null, null);
DROP TRIGGER IF EXISTS `before_menu_insert`;
DELIMITER ;;
CREATE TRIGGER `before_menu_insert` AFTER INSERT ON `menu` FOR EACH ROW INSERT INTO history
    set history = 'Insert',
    id_program='menu',
    id_system=NEW.create_by
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `before_menu_update`;
DELIMITER ;;
CREATE TRIGGER `before_menu_update` AFTER UPDATE ON `menu` FOR EACH ROW IF(NEW.aktif='Y')THEN
    INSERT INTO history
    set history = 'Update',
    id_program='menu',
    id_system=OLD.update_by;
		ELSE
    INSERT INTO history
    set history = 'Delete',
    id_program='menu',
    id_system=OLD.update_by;
		END IF
;;
DELIMITER ;
