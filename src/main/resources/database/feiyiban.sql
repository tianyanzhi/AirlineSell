/*
 Navicat Premium Data Transfer

 Source Server         : chenzhian
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : feiyiban

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 13/08/2018 16:13:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `accountname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `authority` int(1) NOT NULL DEFAULT 1,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(1) NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_accountname`(`accountname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456', 2, '陈独秀', 1, '13202601307', 'tianyanzhi@outlook.com');
INSERT INTO `admin` VALUES (19, '白色', '567890', 2, NULL, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (20, '蓝瑟', '123456', 1, NULL, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (21, '黄色', '123456', 2, NULL, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (22, '绿色', '123456', 1, NULL, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (23, '黑丝', '123456', 2, NULL, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (24, '老兄', '123456', 1, NULL, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (25, '霓虹', '123456', 1, NULL, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (26, '柯南', '123456', 2, NULL, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (27, '管弦', '123456', 1, NULL, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (28, '康特', '123456', 2, NULL, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (29, '嗷嗷', '123456', 1, NULL, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (30, '柔软', '123456', 1, NULL, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (32, '健康', '123456', 1, NULL, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (33, '负电荷', '123456', 1, NULL, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (34, 'test', '123456', 1, '测试员', 1, '123456789', '123456789@qq.com');

-- ----------------------------
-- Table structure for airlinecompany
-- ----------------------------
DROP TABLE IF EXISTS `airlinecompany`;
CREATE TABLE `airlinecompany`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `companycode` int(10) NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of airlinecompany
-- ----------------------------
INSERT INTO `airlinecompany` VALUES (10, '中航', 334, '肇庆学院G3-334', 'www.334.com', 334);
INSERT INTO `airlinecompany` VALUES (11, '北航', 333, '肇庆学院G3-333', 'www.333.com', 333);
INSERT INTO `airlinecompany` VALUES (13, '西毒', 332, '肇庆学院G3-332', 'www.332.com', 110);
INSERT INTO `airlinecompany` VALUES (16, '南航', 335, '肇庆学院G3-335', 'www.335.com', 335);
INSERT INTO `airlinecompany` VALUES (17, '东邪', 331, '肇庆学院G3-331', 'www.331.com', 331);

-- ----------------------------
-- Table structure for airplanetype
-- ----------------------------
DROP TABLE IF EXISTS `airplanetype`;
CREATE TABLE `airplanetype`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firstnum` int(5) NOT NULL,
  `businessnum` int(5) NOT NULL,
  `economynum` int(5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of airplanetype
-- ----------------------------
INSERT INTO `airplanetype` VALUES (1, 'awm', 12, 22, 32);
INSERT INTO `airplanetype` VALUES (6, 'uzi', 12, 22, 32);
INSERT INTO `airplanetype` VALUES (7, 'm4a1', 11, 21, 31);
INSERT INTO `airplanetype` VALUES (8, 'mini', 30, 70, 100);
INSERT INTO `airplanetype` VALUES (12, 'scar', 20, 40, 70);
INSERT INTO `airplanetype` VALUES (14, 'ump', 15, 35, 60);

-- ----------------------------
-- Table structure for discount
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount`  (
  `id` int(5) NOT NULL,
  `accounttype` int(2) NOT NULL,
  `cut` double(10, 0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for flightinfo
-- ----------------------------
DROP TABLE IF EXISTS `flightinfo`;
CREATE TABLE `flightinfo`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `flightnumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `airplanetype_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `airlinecompany_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `starttime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `endtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firstprice` int(10) NOT NULL,
  `businessprice` int(10) NOT NULL,
  `economyprice` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_name`(`flightnumber`) USING BTREE,
  INDEX `FK_flightinfo1`(`airplanetype_name`) USING BTREE,
  INDEX `FK_flightinfo2`(`airlinecompany_name`) USING BTREE,
  CONSTRAINT `FK_flightinfo1` FOREIGN KEY (`airplanetype_name`) REFERENCES `airplanetype` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_flightinfo2` FOREIGN KEY (`airlinecompany_name`) REFERENCES `airlinecompany` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flightinfo
-- ----------------------------
INSERT INTO `flightinfo` VALUES (35, '003', 'm4a1', '东邪', '肇庆', '洛杉矶', '2018-08-10T05:58', '2018-08-31T08:04', 20, 10, 90000);
INSERT INTO `flightinfo` VALUES (36, '004', 'm4a1', '东邪', '上海', '北京', '2018-08-24T04:56', '2018-08-31T05:56', 36, 24, 36);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userinfo_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_idcard` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flight_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flight_start` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flight_end` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flight_starttime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flight_endtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(10, 2) NOT NULL,
  `status` int(1) NOT NULL,
  `genetime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `printtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `returntime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paytime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 'user', '王昌龄', '123456789', '123456789', 'XD888', '上海', '北京', '2018-08-15T05:59', '2018-08-31T05:59', 20.00, 1, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (2, 'user', '李白', '987654321', '987654321', 'FG999', '洛杉矶', '罗湖', '2018-08-16T04:59', '2018-08-23T08:07', 100000.00, 2, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (3, 'user', '杜甫', '45678', '4567', 'DB777', '佛罗里达', '瑞士', '2018-08-08T02:59', '2018-09-01T08:35', 55555.00, 4, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (4, 'user', '路由器', '45678', '9865', 'DK4444', '广州', '肇庆', '2018-08-22T23:04', '2018-09-28T06:54', 66666.00, 3, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (5, 'user', '陈奕迅', '12347889', '984535', 'SD', '西藏', '美国', '2018-08-28T23:04', '2018-09-29T06:59', 33333.00, 5, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (6, 'user', '陈世美', '2534546', '457685', 'TY000', '荷兰', '伦敦', '2018-08-22T05:04', '2018-09-30T08:59', 777777.00, 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `accountname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `points` int(10) NULL DEFAULT NULL,
  `accounttype` int(1) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(1) NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idnumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `accountname`(`accountname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', '123456', 0, 0, '用户', 1, '123456789', '123456789@qq.com', '1');
INSERT INTO `user` VALUES (2, '测试用户', '123456', NULL, NULL, '程仁捷', 1, '13202601307', 'tiayanzhi@outlook.com', '123');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_acname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(1) NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idnumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_user_relation`(`user_acname`) USING BTREE,
  CONSTRAINT `FK_user_relation` FOREIGN KEY (`user_acname`) REFERENCES `user` (`accountname`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (2, '测试用户', '用户的女儿', 0, '567', '567', '567');
INSERT INTO `userinfo` VALUES (3, '测试用户', '用户的儿子', 1, '234', '234', '234');
INSERT INTO `userinfo` VALUES (4, 'user', '用户的女儿', 0, '789', '789', '789');

SET FOREIGN_KEY_CHECKS = 1;
