/*
 Navicat Premium Dump SQL

 Source Server         : 微信云托管
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30-cynos)
 Source Host           : sh-cynosdbmysql-grp-0tfc89vc.sql.tencentcdb.com:24795
 Source Schema         : chemical

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30-cynos)
 File Encoding         : 65001

 Date: 28/04/2025 17:27:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aboutus
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '关于我们' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES (1, '2025-03-18 17:48:21', '关于我们', 'ABOUT US', '不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?\n你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。', 'upload/aboutus_picture1.jpg', 'upload/aboutus_picture2.jpg', 'upload/aboutus_picture3.jpg');

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1744772142548 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '地址' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2025-03-18 17:48:21', 11, '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES (2, '2025-03-18 17:48:21', 12, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES (3, '2025-03-18 17:48:21', 13, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES (4, '2025-03-18 17:48:21', 14, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES (5, '2025-03-18 17:48:21', 15, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES (6, '2025-03-18 17:48:21', 16, '宇宙银河系月球1号', '月某', '13823888886', '是');
INSERT INTO `address` VALUES (7, '2025-03-18 17:48:21', 17, '宇宙银河系黑洞1号', '黑某', '13823888887', '是');
INSERT INTO `address` VALUES (8, '2025-03-18 17:48:21', 18, '湖南省株洲市天元区湖南工业大学', '地某', '13823888888', '是');
INSERT INTO `address` VALUES (1744772142547, '2025-04-16 10:55:42', 18, '湖南省邵阳市', '1', '18515621156', '否');

-- ----------------------------
-- Table structure for bangzhu
-- ----------------------------
DROP TABLE IF EXISTS `bangzhu`;
CREATE TABLE `bangzhu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenti` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '问题',
  `fengmiantupian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '封面图片',
  `bangzhuhuida` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '帮助回答',
  `fabushijian` date NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '帮助' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bangzhu
-- ----------------------------
INSERT INTO `bangzhu` VALUES (61, '2025-03-18 17:48:20', '问题1', 'upload/bangzhu_fengmiantupian1.jpg,upload/bangzhu_fengmiantupian2.jpg,upload/bangzhu_fengmiantupian3.jpg', '帮助回答1', '2025-03-18');
INSERT INTO `bangzhu` VALUES (62, '2025-03-18 17:48:20', '问题2', 'upload/bangzhu_fengmiantupian2.jpg,upload/bangzhu_fengmiantupian3.jpg,upload/bangzhu_fengmiantupian4.jpg', '帮助回答2', '2025-03-18');
INSERT INTO `bangzhu` VALUES (63, '2025-03-18 17:48:20', '问题3', 'upload/bangzhu_fengmiantupian3.jpg,upload/bangzhu_fengmiantupian4.jpg,upload/bangzhu_fengmiantupian5.jpg', '帮助回答3', '2025-03-18');
INSERT INTO `bangzhu` VALUES (64, '2025-03-18 17:48:20', '问题4', 'upload/bangzhu_fengmiantupian4.jpg,upload/bangzhu_fengmiantupian5.jpg,upload/bangzhu_fengmiantupian6.jpg', '帮助回答4', '2025-03-18');
INSERT INTO `bangzhu` VALUES (65, '2025-03-18 17:48:20', '问题5', 'upload/bangzhu_fengmiantupian5.jpg,upload/bangzhu_fengmiantupian6.jpg,upload/bangzhu_fengmiantupian7.jpg', '帮助回答5', '2025-03-18');
INSERT INTO `bangzhu` VALUES (66, '2025-03-18 17:48:20', '问题6', 'upload/bangzhu_fengmiantupian6.jpg,upload/bangzhu_fengmiantupian7.jpg,upload/bangzhu_fengmiantupian8.jpg', '帮助回答6', '2025-03-18');
INSERT INTO `bangzhu` VALUES (67, '2025-03-18 17:48:20', '问题7', 'upload/bangzhu_fengmiantupian7.jpg,upload/bangzhu_fengmiantupian8.jpg,upload/bangzhu_fengmiantupian9.jpg', '帮助回答7', '2025-03-18');
INSERT INTO `bangzhu` VALUES (68, '2025-03-18 17:48:20', '问题8', 'upload/bangzhu_fengmiantupian8.jpg,upload/bangzhu_fengmiantupian9.jpg,upload/bangzhu_fengmiantupian10.jpg', '帮助回答8', '2025-03-18');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'remenshangpin' COMMENT '化工品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '化工品id',
  `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '化工品名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NULL DEFAULT NULL COMMENT '单价',
  `discountprice` float NULL DEFAULT NULL COMMENT '会员价',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商户名称',
  `goodtype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '化工品类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1744772832252 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '购物车表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1744772832251, '2025-04-16 11:07:11', 'remenshangpin', 18, 41, '化工品名称1', 'upload/1742311572076.webp', 1, 99.9, 0, '账号1', '化工品分类1');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复',
  `isreply` int NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1745832344584 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '联系我们' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (71, '2025-03-18 17:48:20', 1, 1, '提问1', '回复1', 0);
INSERT INTO `chat` VALUES (72, '2025-03-18 17:48:20', 2, 2, '提问2', '回复2', 2);
INSERT INTO `chat` VALUES (73, '2025-03-18 17:48:20', 3, 3, '提问3', '回复3', 3);
INSERT INTO `chat` VALUES (74, '2025-03-18 17:48:20', 4, 4, '提问4', '回复4', 4);
INSERT INTO `chat` VALUES (75, '2025-03-18 17:48:20', 5, 5, '提问5', '回复5', 5);
INSERT INTO `chat` VALUES (76, '2025-03-18 17:48:20', 6, 6, '提问6', '回复6', 6);
INSERT INTO `chat` VALUES (77, '2025-03-18 17:48:20', 7, 7, '提问7', '回复7', 7);
INSERT INTO `chat` VALUES (78, '2025-03-18 17:48:20', 8, 8, '提问8', '回复8', 8);
INSERT INTO `chat` VALUES (1681552434453, '2025-03-18 17:53:53', 1, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1681552546614, '2025-03-18 17:55:46', 1, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1743239983912, '2025-03-29 17:19:43', 1, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1743240122007, '2025-03-29 17:22:01', 18, 18, NULL, '您好，在线客服很高兴为您服务！', 0);
INSERT INTO `chat` VALUES (1743240126607, '2025-03-29 17:22:05', 18, NULL, 'j', NULL, 0);
INSERT INTO `chat` VALUES (1743240132390, '2025-03-29 17:22:11', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1743240136514, '2025-03-29 17:22:16', 18, NULL, 'hhh', NULL, 0);
INSERT INTO `chat` VALUES (1743240137770, '2025-03-29 17:22:17', 18, 18, NULL, '主人，小搏还不够聪明，无法理解您的意思！', 0);
INSERT INTO `chat` VALUES (1743240146802, '2025-03-29 17:22:26', 18, NULL, '购物车', NULL, 0);
INSERT INTO `chat` VALUES (1743240147644, '2025-03-29 17:22:27', 18, 18, NULL, '主人，小搏还不够聪明，无法理解您的意思！', 0);
INSERT INTO `chat` VALUES (1743240583933, '2025-03-29 17:29:43', 18, NULL, '问题1', NULL, 0);
INSERT INTO `chat` VALUES (1743240585071, '2025-03-29 17:29:44', 18, 18, NULL, '主人，小搏还不够聪明，无法理解您的意思！', 0);
INSERT INTO `chat` VALUES (1743240588564, '2025-03-29 17:29:48', 18, 18, NULL, '您好，在线客服很高兴为您服务！', 0);
INSERT INTO `chat` VALUES (1743240593182, '2025-03-29 17:29:53', 18, NULL, '问题1', NULL, 0);
INSERT INTO `chat` VALUES (1743318610722, '2025-03-30 15:10:09', 1, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1743318676783, '2025-03-30 15:11:16', 18, 18, NULL, '您好，在线客服很高兴为您服务！', 0);
INSERT INTO `chat` VALUES (1743318894640, '2025-03-30 15:14:54', 21, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1743319038174, '2025-03-30 15:17:17', 21, 18, NULL, '您好，在线客服很高兴为您服务！', 0);
INSERT INTO `chat` VALUES (1743319227287, '2025-03-30 15:20:26', 18, 18, NULL, '您好，在线客服很高兴为您服务！', 0);
INSERT INTO `chat` VALUES (1743319235593, '2025-03-30 15:20:35', 18, NULL, '提问', NULL, 0);
INSERT INTO `chat` VALUES (1743319334191, '2025-03-30 15:22:13', 21, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1744772103274, '2025-04-16 10:55:02', 1, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', NULL);
INSERT INTO `chat` VALUES (1744772855238, '2025-04-16 11:07:34', 21, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1744772884470, '2025-04-16 11:08:04', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1744772886890, '2025-04-16 11:08:06', 18, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', NULL);
INSERT INTO `chat` VALUES (1744772976341, '2025-04-16 11:09:36', 21, 18, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', NULL);
INSERT INTO `chat` VALUES (1745830814969, '2025-04-28 17:00:20', 11, NULL, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745830873278, '2025-04-28 17:01:18', 11, 11, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745830879760, '2025-04-28 17:01:25', 11, 11, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745830922823, '2025-04-28 17:02:08', 11, 11, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745830958799, '2025-04-28 17:02:45', 11, 11, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745831922197, '2025-04-28 17:18:48', 11, 11, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', 0);
INSERT INTO `chat` VALUES (1745832344583, '2025-04-28 17:25:50', 11, 11, NULL, '主人，我是您的智能助手小搏，请问有什么可以帮您！', NULL);

-- ----------------------------
-- Table structure for chathelper
-- ----------------------------
DROP TABLE IF EXISTS `chathelper`;
CREATE TABLE `chathelper`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ask` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '聊天助手表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chathelper
-- ----------------------------
INSERT INTO `chathelper` VALUES (81, '2025-03-18 17:48:20', '提问1', '回复1');
INSERT INTO `chathelper` VALUES (82, '2025-03-18 17:48:21', '提问2', '回复2');
INSERT INTO `chathelper` VALUES (83, '2025-03-18 17:48:21', '提问3', '回复3');
INSERT INTO `chathelper` VALUES (84, '2025-03-18 17:48:21', '提问4', '回复4');
INSERT INTO `chathelper` VALUES (85, '2025-03-18 17:48:21', '提问5', '回复5');
INSERT INTO `chathelper` VALUES (86, '2025-03-18 17:48:21', '提问6', '回复6');
INSERT INTO `chathelper` VALUES (87, '2025-03-18 17:48:21', '提问7', '回复7');
INSERT INTO `chathelper` VALUES (88, '2025-03-18 17:48:21', '提问8', '回复8');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for discussremenshangpin
-- ----------------------------
DROP TABLE IF EXISTS `discussremenshangpin`;
CREATE TABLE `discussremenshangpin`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '化工品评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of discussremenshangpin
-- ----------------------------

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '留言内容',
  `cpicture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '留言图片',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  `rpicture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1743318666017 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '留言交流' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (151, '2025-03-18 17:48:21', 1, '用户名1', 'upload/messages_avatarurl1.jpg', '留言内容1', 'upload/messages_cpicture1.jpg', '回复内容1', 'upload/messages_rpicture1.jpg');
INSERT INTO `messages` VALUES (152, '2025-03-18 17:48:21', 2, '用户名2', 'upload/messages_avatarurl2.jpg', '留言内容2', 'upload/messages_cpicture2.jpg', '回复内容2', 'upload/messages_rpicture2.jpg');
INSERT INTO `messages` VALUES (153, '2025-03-18 17:48:21', 3, '用户名3', 'upload/messages_avatarurl3.jpg', '留言内容3', 'upload/messages_cpicture3.jpg', '回复内容3', 'upload/messages_rpicture3.jpg');
INSERT INTO `messages` VALUES (154, '2025-03-18 17:48:21', 4, '用户名4', 'upload/messages_avatarurl4.jpg', '留言内容4', 'upload/messages_cpicture4.jpg', '回复内容4', 'upload/messages_rpicture4.jpg');
INSERT INTO `messages` VALUES (155, '2025-03-18 17:48:21', 5, '用户名5', 'upload/messages_avatarurl5.jpg', '留言内容5', 'upload/messages_cpicture5.jpg', '回复内容5', 'upload/messages_rpicture5.jpg');
INSERT INTO `messages` VALUES (156, '2025-03-18 17:48:21', 6, '用户名6', 'upload/messages_avatarurl6.jpg', '留言内容6', 'upload/messages_cpicture6.jpg', '回复内容6', 'upload/messages_rpicture6.jpg');
INSERT INTO `messages` VALUES (157, '2025-03-18 17:48:21', 7, '用户名7', 'upload/messages_avatarurl7.jpg', '留言内容7', 'upload/messages_cpicture7.jpg', '回复内容7', 'upload/messages_rpicture7.jpg');
INSERT INTO `messages` VALUES (158, '2025-03-18 17:48:21', 8, '用户名8', 'upload/messages_avatarurl8.jpg', '留言内容8', 'upload/messages_cpicture8.jpg', '回复内容8', 'upload/messages_rpicture8.jpg');
INSERT INTO `messages` VALUES (1743318666016, '2025-03-30 15:11:05', 18, '1', 'upload/1742349634707.jpg', '留言', 'upload/1743318655770.jpg', '好的', NULL);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '简介',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商城资讯' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (131, '2025-03-18 17:48:21', '有梦想，就要努力去实现', '不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。', 'upload/1742350095203.jpg', '<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>');
INSERT INTO `news` VALUES (132, '2025-03-18 17:48:21', '又是一年毕业季', '又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。', 'upload/1742350086300.jpg', '<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>');
INSERT INTO `news` VALUES (133, '2025-03-18 17:48:21', '挫折路上，坚持常在心间', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/news_picture3.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
INSERT INTO `news` VALUES (134, '2025-03-18 17:48:21', '挫折是另一个生命的开端', '当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。', 'upload/1742350069199.jpg', '<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>');
INSERT INTO `news` VALUES (135, '2025-03-18 17:48:21', '你要去相信，没有到不了的明天', '有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。', 'upload/1742350056467.jpg', '<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>');
INSERT INTO `news` VALUES (136, '2025-03-18 17:48:21', '离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/1742350045489.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
INSERT INTO `news` VALUES (137, '2025-03-18 17:48:21', 'Leave未必是一种痛苦', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/1742350036059.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
INSERT INTO `news` VALUES (138, '2025-03-18 17:48:21', '坚持才会成功', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/1742350026032.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'remenshangpin' COMMENT '化工品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '化工品id',
  `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '化工品名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '化工品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT 0 COMMENT '价格',
  `discountprice` float NULL DEFAULT 0 COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT 0 COMMENT '总价格',
  `discounttotal` float NULL DEFAULT 0 COMMENT '折扣总价格',
  `type` int NULL DEFAULT 1 COMMENT '支付类型',
  `status` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `logistics` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '物流',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商户名称',
  `goodtype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '化工品类型',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1744772878440 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1743240434740, '2025-03-29 17:27:14', '2025329172714702', 'remenshangpin', 18, 42, '化工品名称2', 'upload/1742311583321.webp', 10, 99.9, 99.9, 999, 999, 1, '已退款', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, '账号2', '化工品分类2');
INSERT INTO `orders` VALUES (1743318707363, '2025-03-30 15:11:47', '2025330151147250', 'remenshangpin', 18, 42, '化工品名称2', 'upload/1742311583321.webp', 2, 99.9, 99.9, 199.8, 199.8, 1, '已退款', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, '账号2', '化工品分类2');
INSERT INTO `orders` VALUES (1743318707886, '2025-03-30 15:11:47', '2025330151147251', 'remenshangpin', 18, 48, '化工品名称8', 'upload/1742311660052.webp', 1, 99.9, 99.9, 99.9, 99.9, 1, '已退款', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, '账号8', '化工品分类8');
INSERT INTO `orders` VALUES (1743318918965, '2025-03-30 15:15:18', '2025330151518147', 'remenshangpin', 18, 41, '化工品名称1', 'upload/1742311572076.webp', 1, 99.9, 99.9, 99.9, 99.9, 1, '已退款', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, '账号1', '化工品分类1');
INSERT INTO `orders` VALUES (1743319206757, '2025-03-30 15:20:06', '202533015206594', 'remenshangpin', 18, 41, '化工品名称1', 'upload/1742311572076.webp', 1, 99.9, 99.9, 99.9, 99.9, 1, '已退款', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, '账号1', '化工品分类1');
INSERT INTO `orders` VALUES (1744772708664, '2025-04-16 11:05:08', '20254161158431', 'remenshangpin', 18, 41, '化工品名称1', 'upload/1742311572076.webp', 2, 99.9, 99.9, 199.8, 199.8, 1, '已退款', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, '账号1', '化工品分类1');
INSERT INTO `orders` VALUES (1744772878439, '2025-04-16 11:07:57', '202541611757672', 'remenshangpin', 18, 41, '化工品名称1', 'upload/1742311572076.webp', 1, 99.9, 99.9, 99.9, 99.9, 1, '已发货', '湖南省株洲市天元区湖南工业大学', '13823888888', '地某', '', NULL, '账号1', '化工品分类1');

-- ----------------------------
-- Table structure for remenshangpin
-- ----------------------------
DROP TABLE IF EXISTS `remenshangpin`;
CREATE TABLE `remenshangpin`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '化工品名称',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '化工品分类',
  `tupian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片',
  `pinpai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '品牌',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号',
  `shangjiaxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家姓名',
  `shangjiariqi` date NULL DEFAULT NULL COMMENT '上架日期',
  `shangpinxiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '化工品详情',
  `onelimittimes` int NULL DEFAULT NULL COMMENT '单限',
  `alllimittimes` int NULL DEFAULT NULL COMMENT '库存',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '化工品' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of remenshangpin
-- ----------------------------
INSERT INTO `remenshangpin` VALUES (1, '2025-04-28 17:16:02', '工业级硫酸', '无机化工原料', 'upload/chemical/sulfuric_acid.webp', '巴斯夫', 'basf001', '张经理', '2024-03-18', '<p>工业级硫酸，浓度98%，用于化工生产</p>', 100, 5000, '2025-04-28 17:26:33', 2800);
INSERT INTO `remenshangpin` VALUES (2, '2025-04-28 17:16:02', '氢氧化钠', '无机化工原料', 'upload/chemical/sodium_hydroxide.webp', '陶氏化学', 'dow001', '李经理', '2024-03-18', '<p>工业级氢氧化钠，纯度99%，用于化工生产</p>', 50, 3000, NULL, 3200);
INSERT INTO `remenshangpin` VALUES (3, '2025-04-28 17:16:02', '甲醇', '有机化工原料', 'upload/chemical/methanol.webp', '中石化', 'sinopec001', '王经理', '2024-03-18', '<p>工业级甲醇，纯度99.9%，用于化工生产</p>', 200, 8000, NULL, 2800);
INSERT INTO `remenshangpin` VALUES (4, '2025-04-28 17:16:02', '乙酸乙酯', '有机化工原料', 'upload/chemical/ethyl_acetate.webp', '万华化学', 'wanhua001', '赵经理', '2024-03-18', '<p>工业级乙酸乙酯，纯度99.5%，用于化工生产</p>', 100, 4000, NULL, 6500);
INSERT INTO `remenshangpin` VALUES (5, '2025-04-28 17:16:02', '聚丙烯酰胺', '精细化工品', 'upload/chemical/pam.webp', '巴斯夫', 'basf002', '张经理', '2024-03-18', '<p>高分子量聚丙烯酰胺，用于水处理</p>', 50, 2000, NULL, 15000);
INSERT INTO `remenshangpin` VALUES (6, '2025-04-28 17:16:02', '硅油', '精细化工品', 'upload/chemical/silicone_oil.webp', '道康宁', 'dowcorning001', '刘经理', '2024-03-18', '<p>工业级硅油，用于润滑和防水</p>', 20, 1000, NULL, 35000);
INSERT INTO `remenshangpin` VALUES (7, '2025-04-28 17:16:02', '聚乙烯', '石油化工产品', 'upload/chemical/pe.webp', '中石化', 'sinopec002', '王经理', '2024-03-18', '<p>高密度聚乙烯，用于塑料制品生产</p>', 1000, 50000, NULL, 8500);
INSERT INTO `remenshangpin` VALUES (8, '2025-04-28 17:16:02', '聚丙烯', '石油化工产品', 'upload/chemical/pp.webp', '中石油', 'cnpc001', '李经理', '2024-03-18', '<p>工业级聚丙烯，用于塑料制品生产</p>', 1000, 50000, NULL, 8200);
INSERT INTO `remenshangpin` VALUES (9, '2025-04-28 17:16:02', '钛白粉', '涂料及染料', 'upload/chemical/titanium_dioxide.webp', '杜邦', 'dupont001', '陈经理', '2024-03-18', '<p>金红石型钛白粉，用于涂料生产</p>', 100, 5000, NULL, 18000);
INSERT INTO `remenshangpin` VALUES (10, '2025-04-28 17:16:02', '氧化铁红', '涂料及染料', 'upload/chemical/iron_oxide_red.webp', '巴斯夫', 'basf003', '张经理', '2024-03-18', '<p>工业级氧化铁红，用于颜料生产</p>', 50, 2000, '2025-04-28 17:17:02', 12000);
INSERT INTO `remenshangpin` VALUES (11, '2025-04-28 17:16:02', '尿素', '农药及化肥', 'upload/chemical/urea.webp', '中化集团', 'sinochem001', '周经理', '2024-03-18', '<p>工业级尿素，用于农业生产</p>', 1000, 100000, NULL, 2200);
INSERT INTO `remenshangpin` VALUES (12, '2025-04-28 17:16:02', '磷酸二铵', '农药及化肥', 'upload/chemical/dap.webp', '云天化', 'yuntianhua001', '吴经理', '2024-03-18', '<p>工业级磷酸二铵，用于农业生产</p>', 1000, 100000, NULL, 2800);
INSERT INTO `remenshangpin` VALUES (13, '2025-04-28 17:16:02', '对乙酰氨基酚', '医药中间体', 'upload/chemical/paracetamol.webp', '恒瑞医药', 'hengrui001', '孙经理', '2024-03-18', '<p>医药级对乙酰氨基酚，用于药品生产</p>', 50, 2000, '2025-04-28 17:25:34', 45000);
INSERT INTO `remenshangpin` VALUES (14, '2025-04-28 17:16:02', '阿司匹林', '医药中间体', 'upload/chemical/aspirin.webp', '拜耳', 'bayer001', '钱经理', '2024-03-18', '<p>医药级阿司匹林，用于药品生产</p>', 50, 2000, NULL, 38000);
INSERT INTO `remenshangpin` VALUES (15, '2025-04-28 17:16:02', '柠檬酸', '食品添加剂', 'upload/chemical/citric_acid.webp', '嘉吉', 'cargill001', '郑经理', '2024-03-18', '<p>食品级柠檬酸，用于食品加工</p>', 100, 5000, '2025-04-28 17:25:45', 8500);
INSERT INTO `remenshangpin` VALUES (16, '2025-04-28 17:16:02', '山梨酸钾', '食品添加剂', 'upload/chemical/potassium_sorbate.webp', '帝斯曼', 'dsm001', '冯经理', '2024-03-18', '<p>食品级山梨酸钾，用于食品防腐</p>', 50, 2000, '2025-04-28 17:25:40', 12000);
INSERT INTO `remenshangpin` VALUES (17, '2025-04-28 17:16:02', '十二烷基苯磺酸钠', '日用化学品', 'upload/chemical/sdbs.webp', '宝洁', 'pg001', '杨经理', '2024-03-18', '<p>工业级十二烷基苯磺酸钠，用于洗涤剂生产</p>', 100, 5000, '2025-04-28 17:18:53', 9500);
INSERT INTO `remenshangpin` VALUES (18, '2025-04-28 17:16:02', '甘油', '日用化学品', 'upload/chemical/glycerin.webp', '联合利华', 'unilever001', '朱经理', '2024-03-18', '<p>工业级甘油，用于化妆品生产</p>', 50, 2000, NULL, 12500);

-- ----------------------------
-- Table structure for shangjia
-- ----------------------------
DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE `shangjia`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `shangjiaxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商家姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `youxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhanghao`(`zhanghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商家' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shangjia
-- ----------------------------
INSERT INTO `shangjia` VALUES (21, '2025-03-18 17:48:20', '1', '12345678', '商家姓名1', '女', 'upload/1742349998214.jpg', '242722125@qq.com', '13333425312', 200);
INSERT INTO `shangjia` VALUES (22, '2025-03-18 17:48:20', '账号2', '12345678', '商家姓名2', '男', 'upload/1742349986303.jpg', '773890002@qq.com', '13823888882', 200);
INSERT INTO `shangjia` VALUES (23, '2025-03-18 17:48:20', '账号3', '12345678', '商家姓名3', '男', 'upload/1742349973249.jpg', '773890003@qq.com', '13823888883', 200);
INSERT INTO `shangjia` VALUES (24, '2025-03-18 17:48:20', '账号4', '123456787', '商家姓名4', '男', 'upload/1742349951447.jpg', '773890004@qq.com', '13823888884', 200);
INSERT INTO `shangjia` VALUES (25, '2025-03-18 17:48:20', '账号5', '12345678', '商家姓名5', '男', 'upload/1742349937545.jpg', '773890005@qq.com', '13823888885', 200);
INSERT INTO `shangjia` VALUES (26, '2025-03-18 17:48:20', '账号6', '12345678', '商家姓名6', '男', 'upload/1742349928991.jpg', '773890006@qq.com', '13823888886', 200);
INSERT INTO `shangjia` VALUES (27, '2025-03-18 17:48:20', '账号7', '12345678', '商家姓名7', '男', 'upload/1742349919786.jpg', '773890007@qq.com', '13823888887', 200);
INSERT INTO `shangjia` VALUES (28, '2025-03-18 17:48:20', '账号8', '12345678', '商家姓名8', '男', 'upload/1742349908946.jpg', '773890008@qq.com', '13823888888', 200);

-- ----------------------------
-- Table structure for shangpin_price_history
-- ----------------------------
DROP TABLE IF EXISTS `shangpin_price_history`;
CREATE TABLE `shangpin_price_history`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpinid` bigint NULL DEFAULT NULL COMMENT '商品ID',
  `price` float NULL DEFAULT NULL COMMENT '价格',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `addtime` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_shangpinid`(`shangpinid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1745830920435 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商品价格历史' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpin_price_history
-- ----------------------------
INSERT INTO `shangpin_price_history` VALUES (1745830866394, 41, 120, 'admin', '2025-04-25 17:01:06');
INSERT INTO `shangpin_price_history` VALUES (1745830897054, 41, 99, 'admin', '2025-04-26 17:01:37');
INSERT INTO `shangpin_price_history` VALUES (1745830905334, 41, 90, 'admin', '2025-04-27 17:01:45');
INSERT INTO `shangpin_price_history` VALUES (1745830920409, 41, 120, 'admin', '2025-04-28 17:02:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920410, 1, 100, 'admin', '2025-01-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920411, 1, 105, 'admin', '2025-01-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920412, 1, 110, 'admin', '2025-02-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920413, 1, 108, 'admin', '2025-02-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920414, 1, 115, 'admin', '2025-03-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920415, 2, 200, 'admin', '2025-01-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920416, 2, 210, 'admin', '2025-01-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920417, 2, 205, 'admin', '2025-02-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920418, 2, 215, 'admin', '2025-02-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920419, 2, 220, 'admin', '2025-03-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920420, 3, 150, 'admin', '2025-01-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920421, 3, 155, 'admin', '2025-01-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920422, 3, 160, 'admin', '2025-02-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920423, 3, 165, 'admin', '2025-02-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920424, 3, 170, 'admin', '2025-03-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920425, 4, 300, 'admin', '2025-01-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920426, 4, 310, 'admin', '2025-01-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920427, 4, 315, 'admin', '2025-02-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920428, 4, 320, 'admin', '2025-02-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920429, 4, 325, 'admin', '2025-03-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920430, 5, 250, 'admin', '2025-01-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920431, 5, 255, 'admin', '2025-01-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920432, 5, 260, 'admin', '2025-02-01 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920433, 5, 265, 'admin', '2025-02-15 10:00:00');
INSERT INTO `shangpin_price_history` VALUES (1745830920434, 5, 270, 'admin', '2025-03-01 10:00:00');

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '化工品分类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shangpinfenlei`(`shangpinfenlei` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '化工品分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES (31, '2025-03-18 17:48:20', '化工品分类1');
INSERT INTO `shangpinfenlei` VALUES (32, '2025-03-18 17:48:20', '化工品分类2');
INSERT INTO `shangpinfenlei` VALUES (33, '2025-03-18 17:48:20', '化工品分类3');
INSERT INTO `shangpinfenlei` VALUES (34, '2025-03-18 17:48:20', '化工品分类4');
INSERT INTO `shangpinfenlei` VALUES (35, '2025-03-18 17:48:20', '化工品分类5');
INSERT INTO `shangpinfenlei` VALUES (36, '2025-03-18 17:48:20', '化工品分类6');
INSERT INTO `shangpinfenlei` VALUES (37, '2025-03-18 17:48:20', '化工品分类7');
INSERT INTO `shangpinfenlei` VALUES (38, '2025-03-18 17:48:20', '化工品8');
INSERT INTO `shangpinfenlei` VALUES (39, '2025-04-28 17:15:53', '无机化工原料');
INSERT INTO `shangpinfenlei` VALUES (40, '2025-04-28 17:15:53', '有机化工原料');
INSERT INTO `shangpinfenlei` VALUES (41, '2025-04-28 17:15:53', '精细化工品');
INSERT INTO `shangpinfenlei` VALUES (42, '2025-04-28 17:15:53', '石油化工产品');
INSERT INTO `shangpinfenlei` VALUES (43, '2025-04-28 17:15:53', '塑料及橡胶制品');
INSERT INTO `shangpinfenlei` VALUES (44, '2025-04-28 17:15:53', '涂料及染料');
INSERT INTO `shangpinfenlei` VALUES (45, '2025-04-28 17:15:53', '农药及化肥');
INSERT INTO `shangpinfenlei` VALUES (46, '2025-04-28 17:15:53', '医药中间体');
INSERT INTO `shangpinfenlei` VALUES (47, '2025-04-28 17:15:53', '食品添加剂');
INSERT INTO `shangpinfenlei` VALUES (48, '2025-04-28 17:15:53', '日用化学品');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint NULL DEFAULT NULL COMMENT '化工品id',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收藏表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storeup
-- ----------------------------

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', 'sqj3q9oamg8zlxsyxn20onzmis0tq97t', '2025-03-18 17:52:34', '2025-04-28 17:55:39');
INSERT INTO `token` VALUES (2, 18, '1', 'yonghu', '用户', '726kc823klax34uwk3jrqo3aeieg04jo', '2025-03-18 17:53:53', '2025-04-16 12:09:36');
INSERT INTO `token` VALUES (3, 21, '账号1', 'shangjia', '商家', 'bjsckeu87281hfk36jy4k2h2yfl8wxq2', '2025-03-29 23:15:14', '2025-04-16 12:08:57');
INSERT INTO `token` VALUES (4, 11, '用户名1', 'yonghu', '用户', 'hxsc5l6thbcw8y3trob3z5kej3razke4', '2025-04-28 16:56:04', '2025-04-28 17:55:58');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2025-03-18 17:48:21');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `touxiang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2025-03-18 17:48:20', '用户名1', '12345678', '姓名1', 'upload/1742349856611.jpg', '男', '773890001@qq.com', '13823888881', 200);
INSERT INTO `yonghu` VALUES (12, '2025-03-18 17:48:20', '用户名2', '12345678', '姓名2', 'upload/1742349834694.jpg', '男', '773890002@qq.com', '13823888882', 200);
INSERT INTO `yonghu` VALUES (13, '2025-03-18 17:48:20', '用户名3', '12345678', '姓名3', 'upload/1742349817763.jpg', '男', '773890003@qq.com', '13823888883', 200);
INSERT INTO `yonghu` VALUES (14, '2025-03-18 17:48:20', '用户名4', '12345678', '姓名4', 'upload/1742349795094.jpg', '男', '773890004@qq.com', '13823888884', 200);
INSERT INTO `yonghu` VALUES (15, '2025-03-18 17:48:20', '用户名5', '12345678', '姓名5', 'upload/1742349661870.jpg', '男', '773890005@qq.com', '13823888885', 200);
INSERT INTO `yonghu` VALUES (16, '2025-03-18 17:48:20', '用户名6', '12345678', '姓名6', 'upload/1742349696538.jpg', '男', '773890006@qq.com', '13823888886', 200);
INSERT INTO `yonghu` VALUES (17, '2025-03-18 17:48:20', '用户名7', '12345678', '姓名7', 'upload/1742349678437.jpg', '男', '773890007@qq.com', '13823888887', 200);
INSERT INTO `yonghu` VALUES (18, '2025-03-18 17:48:20', '1', '12345678', '王琦', 'upload/1742349634707.jpg', '女', '773890008@qq.com', '13823888888', 3200);

-- ----------------------------
-- Table structure for youqinglianjie
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyemingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `tupian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片',
  `lianjiewangzhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '链接网址',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '友情链接' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES (51, '2025-03-18 17:48:20', '企业名称1', 'upload/youqinglianjie_tupian1.jpg,upload/youqinglianjie_tupian2.jpg,upload/youqinglianjie_tupian3.jpg', '链接网址1', '13823888881');
INSERT INTO `youqinglianjie` VALUES (52, '2025-03-18 17:48:20', '企业名称2', 'upload/youqinglianjie_tupian2.jpg,upload/youqinglianjie_tupian3.jpg,upload/youqinglianjie_tupian4.jpg', '链接网址2', '13823888882');
INSERT INTO `youqinglianjie` VALUES (53, '2025-03-18 17:48:20', '企业名称3', 'upload/youqinglianjie_tupian3.jpg,upload/youqinglianjie_tupian4.jpg,upload/youqinglianjie_tupian5.jpg', '链接网址3', '13823888883');
INSERT INTO `youqinglianjie` VALUES (54, '2025-03-18 17:48:20', '企业名称4', 'upload/youqinglianjie_tupian4.jpg,upload/youqinglianjie_tupian5.jpg,upload/youqinglianjie_tupian6.jpg', '链接网址4', '13823888884');
INSERT INTO `youqinglianjie` VALUES (55, '2025-03-18 17:48:20', '企业名称5', 'upload/youqinglianjie_tupian5.jpg,upload/youqinglianjie_tupian6.jpg,upload/youqinglianjie_tupian7.jpg', '链接网址5', '13823888885');
INSERT INTO `youqinglianjie` VALUES (56, '2025-03-18 17:48:20', '企业名称6', 'upload/youqinglianjie_tupian6.jpg,upload/youqinglianjie_tupian7.jpg,upload/youqinglianjie_tupian8.jpg', '链接网址6', '13823888886');
INSERT INTO `youqinglianjie` VALUES (57, '2025-03-18 17:48:20', '企业名称7', 'upload/youqinglianjie_tupian7.jpg,upload/youqinglianjie_tupian8.jpg,upload/youqinglianjie_tupian9.jpg', '链接网址7', '13823888887');
INSERT INTO `youqinglianjie` VALUES (58, '2025-03-18 17:48:20', '企业名称8', 'upload/youqinglianjie_tupian8.jpg,upload/youqinglianjie_tupian9.jpg,upload/youqinglianjie_tupian10.jpg', '链接网址8', '13823888888');

SET FOREIGN_KEY_CHECKS = 1;
