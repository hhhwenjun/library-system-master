/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
*/
-- ----------------------------
-- Create database
-- ----------------------------

CREATE DATABASE IF NOT EXISTS library;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
                          `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
                          `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'username',
                          `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'password',
                          `adminType` int(11) NULL DEFAULT NULL COMMENT 'adminType',
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'administrator' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '12345', 1);
INSERT INTO `admin` VALUES (2, 'yx5411', '12345', 0);
INSERT INTO `admin` VALUES (4, 'xy1221', '12345', 0);

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'name',
  `author` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'author',
  `publish` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'publish',
  `isbn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'bookId',
  `introduction` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'introduction',
  `language` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'language',
  `price` double NULL DEFAULT NULL COMMENT 'price',
  `publish_date` date NULL DEFAULT NULL COMMENT 'publish_date',
  `type_id` int(11) NULL DEFAULT NULL COMMENT 'type_id',
  `status` int(11) NULL DEFAULT NULL COMMENT 'status: 0 available, 1 borrowed',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'book_info' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES (1, 'Journey to the West', 'Wu Cheng En', 'CHN Publication',
                                '100011', '4 people journey to the west', 'CHN', 42, '2020-03-20', 1, 0);
INSERT INTO `book_info` VALUES (2, 'Ender"s Game', 'Orson Scott Card', 'Tor Books', '100012',
                                'future human', 'ENG', 48, '1985-03-30', 1, 1);
INSERT INTO `book_info` VALUES (3, 'The Lord of the Rings', 'JRR Tolkien', 'Allen and Unwin', '100013',
                                'best fantasy ever', 'ENG', 45, '1954-07-29', 1, 1);
INSERT INTO `book_info` VALUES (4, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Bard', '100014',
                                'best seller', 'ENG', 18, '1970-01-01', 5, 0);
INSERT INTO `book_info` VALUES (5, 'Moby Dick', 'Herman Melville', 'Kindle Edition', '100015',
                                'tale of whale hunt', 'ENG', 20.99, '2014-03-22', 5, 0);
INSERT INTO `book_info` VALUES (5, 'A Brief History of Time', 'Stephen Hawking', 'Bantam', '100016',
                                'science landmark', 'ENG', 7.99, '1998-09-01', 4, 1);

-- ----------------------------
-- Table structure for lend_list
-- ----------------------------
DROP TABLE IF EXISTS `lend_list`;
CREATE TABLE `lend_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `bookId` int(11) NULL DEFAULT NULL COMMENT 'bookId',
  `readerId` int(11) NULL DEFAULT NULL COMMENT 'readerId',
  `lendDate` datetime(0) NULL DEFAULT NULL COMMENT 'lendDate',
  `backDate` datetime(0) NULL DEFAULT NULL COMMENT 'backDate',
  `backType` int(11) NULL DEFAULT NULL,
  `exceptRemarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'exceptRemarks',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'read record' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lend_list
-- ----------------------------
INSERT INTO `lend_list` VALUES (15, 1, 1, '2021-04-04 10:07:31', '2021-04-04 21:09:27', 0, NULL);
INSERT INTO `lend_list` VALUES (36, 2, 2, '2021-04-04 21:48:17', '2021-04-04 21:50:00', 2, NULL);
INSERT INTO `lend_list` VALUES (37, 3, 3, '2021-04-04 21:50:22', '2021-04-04 21:50:32', 3, NULL);
INSERT INTO `lend_list` VALUES (38, 5, 1, '2021-04-05 21:35:35', '2021-04-05 21:35:47', 1, NULL);
INSERT INTO `lend_list` VALUES (39, 6, 3, '2021-04-05 21:42:35', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `topic` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'content',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'author',
  `createDate` datetime(0) NULL DEFAULT NULL COMMENT 'createDate',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'notice' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, 'test1', 'this is test1', 'admin', '2021-04-01 21:35:53');
INSERT INTO `notice` VALUES (2, 'test2', 'this is test2', 'admin', '2021-04-02 22:38:03');
INSERT INTO `notice` VALUES (3, 'test3', 'this is test3', 'yx5411', '2021-04-03 06:47:54');
INSERT INTO `notice` VALUES (4, 'test4', 'this is test4', 'yx5411', '2021-04-04 06:48:01');
INSERT INTO `notice` VALUES (5, 'test5', 'this is test5', 'xy1221', '2021-04-04 06:49:03');
INSERT INTO `notice` VALUES (6, 'test6', 'this is test6', 'yx5411', '2021-04-05 07:48:04');

-- ----------------------------
-- Table structure for reader_info
-- ----------------------------
DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'username',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'password',
  `realName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'realName',
  `gender` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'gender',
  `birthday` date NULL DEFAULT NULL COMMENT 'birthday',
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'address',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'phone',
  `email` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'email',
  `registerDate` datetime(0) NULL DEFAULT NULL COMMENT 'registerDate',
  `readerNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'readerNumber',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'reader_info' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reader_info
-- ----------------------------
INSERT INTO `reader_info` VALUES (1, 'john', '12345', 'John White', 'male', '2001-04-01', '30st New York', '3767134834', 'john3@11.com', '2021-04-02 13:18:59', '8120116041');
INSERT INTO `reader_info` VALUES (2, 'mary', '12345', 'Mary Kay', 'they', '2004-04-01', '35 London', '5270839599', 'lly@outlook.com', '2021-03-06 07:57:56', '8120116044');
INSERT INTO `reader_info` VALUES (3, 'cindy', '12345', 'Cindy Su', 'they', '2010-04-04', '2811 Seattle', '3834141133', 'cindy@gmail.com', '2021-04-04 13:36:42', '8120116042');

-- ----------------------------
-- Table structure for type_info
-- ----------------------------
DROP TABLE IF EXISTS `type_info`;
CREATE TABLE `type_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'name',
  `remarks` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'remarks',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'book_type' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_info
-- ----------------------------
INSERT INTO `type_info` VALUES (1, 'Literature', 'english');
INSERT INTO `type_info` VALUES (2, 'History', 'history');
INSERT INTO `type_info` VALUES (3, 'Engineering', 'STEM');
INSERT INTO `type_info` VALUES (4, 'Law', 'lawyer');
INSERT INTO `type_info` VALUES (5, 'Economics', 'money');

-- SET FOREIGN_KEY_CHECKS = 1;
