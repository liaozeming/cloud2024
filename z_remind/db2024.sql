/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 80300 (8.3.0)
 Source Host           : localhost:3306
 Source Schema         : db2024

 Target Server Type    : MySQL
 Target Server Version : 80300 (8.3.0)
 File Encoding         : 65001

 Date: 18/03/2024 00:53:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_pay
-- ----------------------------
DROP TABLE IF EXISTS `t_pay`;
CREATE TABLE `t_pay`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `pay_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '支付流水号',
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单流水号',
  `user_id` int NULL DEFAULT 1 COMMENT '用户账号ID',
  `amount` decimal(8, 2) NOT NULL DEFAULT 9.90 COMMENT '交易金额',
  `deleted` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除标志，默认0不删除，1删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '支付交易表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pay
-- ----------------------------
INSERT INTO `t_pay` VALUES (1, 'pay17203699', '6544bafb424a', 1, 9.90, 0, '2024-03-14 23:39:56', '2024-03-14 23:39:56');
INSERT INTO `t_pay` VALUES (3, '172034076', '6544de1c424a', 2, 19.90, 0, '2024-03-15 12:34:17', '2024-03-15 12:34:56');
INSERT INTO `t_pay` VALUES (4, '17204076', '6544de1c424a', 2, 19.90, 0, '2024-03-15 12:47:02', '2024-03-15 12:47:02');
INSERT INTO `t_pay` VALUES (5, '1213', '1213', 1213, 3.33, 0, '2024-03-15 16:22:03', '2024-03-15 16:22:03');

SET FOREIGN_KEY_CHECKS = 1;
