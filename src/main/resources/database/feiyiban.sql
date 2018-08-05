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

 Date: 04/08/2018 20:10:03
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
  `authority` int(1) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(1) NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_accountname`(`accountname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (3, 'admin', 'admin', 2, '管理员', 1, '13202601307', '631481098@qq.com');
INSERT INTO `admin` VALUES (5, '123', '123', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for airlinecompany
-- ----------------------------
DROP TABLE IF EXISTS `airlinecompany`;
CREATE TABLE `airlinecompany`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `companycode` int(10) NOT NULL,
  `addres` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for discount
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `accounttype` int(2) NOT NULL,
  `cut` double(10, 2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for flightinfo
-- ----------------------------
DROP TABLE IF EXISTS `flightinfo`;
CREATE TABLE `flightinfo`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `flightnumber` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `airplanetype_id` int(5) NOT NULL,
  `airlinecompany_id` int(5) NOT NULL,
  `start` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `starttime` datetime(0) NOT NULL,
  `endtime` datetime(0) NOT NULL,
  `firstprice` int(10) NOT NULL,
  `businessprice` int(10) NOT NULL,
  `economyprice` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_flightinfo1`(`airplanetype_id`) USING BTREE,
  INDEX `FK_flightinfo2`(`airlinecompany_id`) USING BTREE,
  CONSTRAINT `FK_flightinfo1` FOREIGN KEY (`airplanetype_id`) REFERENCES `airplanetype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_flightinfo2` FOREIGN KEY (`airlinecompany_id`) REFERENCES `airlinecompany` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_idcard` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flight_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flight_start` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flight_end` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flight_starttime` datetime(0) NOT NULL,
  `flight_endtime` datetime(0) NOT NULL,
  `order_price` double(5, 2) NOT NULL,
  `order_status` int(1) NOT NULL,
  `genetime` datetime(0) NULL DEFAULT NULL,
  `printtime` datetime(0) NULL DEFAULT NULL,
  `returntime` datetime(0) NULL DEFAULT NULL,
  `paytime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) NOT NULL,
  `flightinfo_id` int(5) NOT NULL,
  `userinfo_id` int(5) NOT NULL,
  `price` double(8, 0) NOT NULL,
  `genetime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `printtime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `returntime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `paytime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_orders1`(`user_id`) USING BTREE,
  INDEX `FK_orders2`(`flightinfo_id`) USING BTREE,
  INDEX `FK_orders3`(`userinfo_id`) USING BTREE,
  CONSTRAINT `FK_orders1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_orders2` FOREIGN KEY (`flightinfo_id`) REFERENCES `flightinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_orders3` FOREIGN KEY (`userinfo_id`) REFERENCES `userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `accountname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `points` int(10) NOT NULL,
  `accounttype` int(1) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(1) NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idnumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_accountname`(`accountname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(1) NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idnumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_user_relation`(`user_id`) USING BTREE,
  CONSTRAINT `FK_user_relation` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
