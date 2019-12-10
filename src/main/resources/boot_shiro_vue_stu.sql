/*
Navicat MySQL Data Transfer

Source Server         : mysql8
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : boot_shiro_vue_stu

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-12-10 23:11:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_clazz`
-- ----------------------------
DROP TABLE IF EXISTS `t_clazz`;
CREATE TABLE `t_clazz` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键id',
  `name` varchar(50) NOT NULL COMMENT '班级名称',
  `major_id` varchar(32) NOT NULL COMMENT '专业id',
  `institute_id` varchar(32) NOT NULL COMMENT '学院id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_clazz
-- ----------------------------
INSERT INTO `t_clazz` VALUES ('363593eaf42c49809dbd70e86edd157d', '软件工程2班', '0f413024eb5c460fb129bf06eb4ee6c9', '271c18020e6a11ea85a85c93a27933da');
INSERT INTO `t_clazz` VALUES ('96332ae13fd64c1abf5f6f778c873102', '计算机1班', '940c25ce0e7111ea85a85c93a27933da', '271c18020e6a11ea85a85c93a27933da');
INSERT INTO `t_clazz` VALUES ('c3eb7c50fbe0419c8030ea090ce0858b', '计算机2班', '940c25ce0e7111ea85a85c93a27933da', '271c18020e6a11ea85a85c93a27933da');
INSERT INTO `t_clazz` VALUES ('edf7e10401504dd496a529d8b5522c1f', '软件工程1班', '0f413024eb5c460fb129bf06eb4ee6c9', '271c18020e6a11ea85a85c93a27933da');

-- ----------------------------
-- Table structure for `t_course`
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `name` varchar(50) NOT NULL COMMENT '课程名称',
  `course_type` int(11) NOT NULL COMMENT '閻犲洤澧介埢鑲╃尵鐠囪尙鈧?',
  `credit` double(10,1) NOT NULL,
  `sign_stime` date DEFAULT NULL,
  `sign_etime` date DEFAULT NULL,
  `exam_stime` date DEFAULT NULL,
  `exam_etime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES ('3ec1ce34d6f542c1ac13fcf0b9224690', '大学物理', '4', '2.0', '2019-11-12', '2019-11-30', '2020-01-10', '2020-01-12');
INSERT INTO `t_course` VALUES ('86c23626e20e4506947502052d8487a2', '高数', '3', '2.0', '2019-11-06', '2019-11-30', '2020-01-10', '2020-01-12');
INSERT INTO `t_course` VALUES ('a3827e5a0bcb4b29a1a531baddd395a8', '大学英语', '1', '2.0', '2019-11-13', '2019-11-30', '2020-01-10', '2020-01-12');
INSERT INTO `t_course` VALUES ('a705b137ed6a4e0a96e517ce311120d9', '操作系统', '1', '4.0', '2019-11-27', '2019-11-30', '2020-01-10', '2020-01-12');
INSERT INTO `t_course` VALUES ('cb91ba59beca4a7cab1ac89b1ed50488', '大学语文', '2', '1.0', '2019-11-05', '2019-11-30', '2020-01-10', '2020-01-12');
INSERT INTO `t_course` VALUES ('ede5d2ddee60431e929ac05c5770e972', '存储', '1', '1.0', '2019-11-06', '2019-11-16', '2019-11-22', '2019-11-30');

-- ----------------------------
-- Table structure for `t_course_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `t_course_teacher`;
CREATE TABLE `t_course_teacher` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `course_id` varchar(32) NOT NULL COMMENT '课程id',
  `teacher_id` varchar(32) NOT NULL COMMENT '老师id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_course_teacher
-- ----------------------------
INSERT INTO `t_course_teacher` VALUES ('3998628e78704ae985412b48dd55309c', '86c23626e20e4506947502052d8487a2', 'dbca8e5caec24c6ca4b3dccd053f9102');
INSERT INTO `t_course_teacher` VALUES ('5ebd783820d541ee91f3688c35d1c74d', 'cb91ba59beca4a7cab1ac89b1ed50488', 'fe8147e10e454b259705d10d7514f2ac');
INSERT INTO `t_course_teacher` VALUES ('7bd60f16b43d4f1485b3be5189e0ddb7', '3ec1ce34d6f542c1ac13fcf0b9224690', '4f8f02dff98044ffb7f7dfbc8c57c596');
INSERT INTO `t_course_teacher` VALUES ('8e1675f3eaba4561a1dc235701062270', 'ede5d2ddee60431e929ac05c5770e972', '4f8f02dff98044ffb7f7dfbc8c57c596');
INSERT INTO `t_course_teacher` VALUES ('92b7569bac95461b9d12158c9d2da69a', 'a705b137ed6a4e0a96e517ce311120d9', '4f8f02dff98044ffb7f7dfbc8c57c596');
INSERT INTO `t_course_teacher` VALUES ('bc87011909064e369d25ffbaabd47bc3', '3ec1ce34d6f542c1ac13fcf0b9224690', 'fe8147e10e454b259705d10d7514f2ac');
INSERT INTO `t_course_teacher` VALUES ('bf279577c8b7464599cca4b2077cdbf0', 'a3827e5a0bcb4b29a1a531baddd395a8', 'dbca8e5caec24c6ca4b3dccd053f9102');
INSERT INTO `t_course_teacher` VALUES ('c51dc05f41854027a7927eb82f0a529a', 'a705b137ed6a4e0a96e517ce311120d9', 'fe8147e10e454b259705d10d7514f2ac');
INSERT INTO `t_course_teacher` VALUES ('c53d3b09bbfe4eee8ace608d64d9b29d', '86c23626e20e4506947502052d8487a2', 'fe8147e10e454b259705d10d7514f2ac');
INSERT INTO `t_course_teacher` VALUES ('d04363c02aca4e85841086b7b1150db1', 'cb91ba59beca4a7cab1ac89b1ed50488', 'dbca8e5caec24c6ca4b3dccd053f9102');

-- ----------------------------
-- Table structure for `t_grade`
-- ----------------------------
DROP TABLE IF EXISTS `t_grade`;
CREATE TABLE `t_grade` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `student_id` varchar(32) NOT NULL COMMENT '学生id',
  `course_id` varchar(32) NOT NULL COMMENT '课程id',
  `exam_time` date DEFAULT NULL COMMENT '考试时间',
  `exam_type` int(11) DEFAULT NULL COMMENT '考试类型',
  `score` double NOT NULL DEFAULT '0' COMMENT '鍒嗘暟',
  `teacher_id` varchar(32) NOT NULL COMMENT '老师id',
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_grade
-- ----------------------------
INSERT INTO `t_grade` VALUES ('5aaea31d7f604dccbecb05fb3d3a9ed5', '032e7ac5fe4d45ff824c7cf125c70d3f', '86c23626e20e4506947502052d8487a2', null, null, '0', 'fe8147e10e454b259705d10d7514f2ac', '0');
INSERT INTO `t_grade` VALUES ('741ef68b8fba41959165f9a3cf3ccd7c', '032e7ac5fe4d45ff824c7cf125c70d3f', 'cb91ba59beca4a7cab1ac89b1ed50488', null, null, '0', 'dbca8e5caec24c6ca4b3dccd053f9102', '0');
INSERT INTO `t_grade` VALUES ('8d53374c36684614bde94d9fb6d98714', '032e7ac5fe4d45ff824c7cf125c70d3f', 'a705b137ed6a4e0a96e517ce311120d9', null, null, '85', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');

-- ----------------------------
-- Table structure for `t_institute`
-- ----------------------------
DROP TABLE IF EXISTS `t_institute`;
CREATE TABLE `t_institute` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `name` varchar(50) NOT NULL COMMENT '学院名称',
  `institute_number` varchar(32) NOT NULL COMMENT '学院编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_institute
-- ----------------------------
INSERT INTO `t_institute` VALUES ('271c18020e6a11ea85a85c93a27933da', '计算机学院', '001');
INSERT INTO `t_institute` VALUES ('28054f9bcea04f64bcd27f2ca1029865', '管理学院', '005');
INSERT INTO `t_institute` VALUES ('307afdce0e6a11ea85a85c93a27933da', '汽车学院', '002');
INSERT INTO `t_institute` VALUES ('bc7dbf7beb904caf8ec224fb39b06230', '财经学院', '006');
INSERT INTO `t_institute` VALUES ('be979ead02df4a98ad1b8f96932a959a', '文学院', '004');
INSERT INTO `t_institute` VALUES ('c63d41db540c4fe99e61514c5b3ce512', '自动化学院', '003');

-- ----------------------------
-- Table structure for `t_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `login_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '登录时间',
  `login_ip` varchar(255) DEFAULT NULL COMMENT '登录ip',
  `login_total` int(11) DEFAULT NULL COMMENT '登录总次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
INSERT INTO `t_login_log` VALUES ('01f3e30137724e77946bbc543ad80dc8', '67eb71f1091911eab9205c93a27933da', '2019-11-30 03:06:01', '192.168.43.152', '128');
INSERT INTO `t_login_log` VALUES ('01f4b539a5c04447a06e8e4c868436db', '67eb71f1091911eab9205c93a27933da', '2019-11-20 14:15:15', '192.168.43.152', '34');
INSERT INTO `t_login_log` VALUES ('02c90589c03f48f983980f9a1045dcc5', '74013ffb091911eab9205c93a27933da', '2019-11-23 14:17:02', '192.168.43.152', '2');
INSERT INTO `t_login_log` VALUES ('03476504b3ce431bb745ff9efd1ee5d0', '67eb71f1091911eab9205c93a27933da', '2019-11-23 15:13:47', '192.168.43.152', '93');
INSERT INTO `t_login_log` VALUES ('05769bc2c0fc4afcaeb02df2bfd45563', '67eb71f1091911eab9205c93a27933da', '2019-11-24 02:13:01', '192.168.43.152', '97');
INSERT INTO `t_login_log` VALUES ('0a85027a395148f7a63ca6c1fce103a4', '67eb71f1091911eab9205c93a27933da', '2019-11-18 13:16:42', '192.168.43.152', '3');
INSERT INTO `t_login_log` VALUES ('0bef25303fc042a1ac934782d9652b7c', '4f8f02dff98044ffb7f7dfbc8c57c596', '2019-12-01 08:43:52', '192.168.43.152', '3');
INSERT INTO `t_login_log` VALUES ('0c0263ed012d4f7ba01c643dcf019ee5', '67eb71f1091911eab9205c93a27933da', '2019-11-20 13:20:00', '192.168.43.152', '28');
INSERT INTO `t_login_log` VALUES ('0c626ecc257f4e078c1f84b31fb3d9b3', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-26 15:06:15', '192.168.43.152', '2');
INSERT INTO `t_login_log` VALUES ('0edae2179ac54362b69563e8c8008479', '67eb71f1091911eab9205c93a27933da', '2019-11-21 12:17:10', '192.168.43.152', '38');
INSERT INTO `t_login_log` VALUES ('0f7b1a68f9f6471e87df6369d52f425c', '67eb71f1091911eab9205c93a27933da', '2019-11-23 05:22:26', '192.168.43.152', '71');
INSERT INTO `t_login_log` VALUES ('10313cf77a104987a79179d674488eb0', '67eb71f1091911eab9205c93a27933da', '2019-11-24 14:22:31', '192.168.43.152', '114');
INSERT INTO `t_login_log` VALUES ('12548b4d3d3f405d80b06e375c7c171b', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-27 13:01:24', '192.168.43.152', '4');
INSERT INTO `t_login_log` VALUES ('12706022f3d04551aafbb3ce010ab8c1', '67eb71f1091911eab9205c93a27933da', '2019-11-19 12:36:56', '192.168.43.152', '15');
INSERT INTO `t_login_log` VALUES ('12eb76ae273a439890f36c5b0a058370', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:48:49', '192.168.43.152', '57');
INSERT INTO `t_login_log` VALUES ('149143cf635841238b00dd0b5fcd4891', '67eb71f1091911eab9205c93a27933da', '2019-11-21 14:07:45', '192.168.43.152', '43');
INSERT INTO `t_login_log` VALUES ('15c04bf1d318437cb8c99d5d625cb8ae', '67eb71f1091911eab9205c93a27933da', '2019-11-30 04:08:55', '192.168.43.152', '130');
INSERT INTO `t_login_log` VALUES ('163d7789734b43dabbc25327d5415d72', '67eb71f1091911eab9205c93a27933da', '2019-11-23 12:15:53', '192.168.43.152', '82');
INSERT INTO `t_login_log` VALUES ('16f154c1a0af4a5c900a1ce61ed7a047', '67eb71f1091911eab9205c93a27933da', '2019-11-23 10:33:15', '192.168.43.152', '78');
INSERT INTO `t_login_log` VALUES ('17da610e91a0465da502451d4ffd31fa', '67eb71f1091911eab9205c93a27933da', '2019-11-21 14:11:19', '192.168.43.152', '44');
INSERT INTO `t_login_log` VALUES ('19745b2f740944b68860fdb1fd5c3b89', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-26 14:56:12', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('1a1dbd7dbdbc4ab9b6c2ab3f88d40bd4', '67eb71f1091911eab9205c93a27933da', '2019-11-19 15:12:35', '192.168.43.152', '23');
INSERT INTO `t_login_log` VALUES ('1adf1f01bbd849b0a995da8112d7f0e7', '67eb71f1091911eab9205c93a27933da', '2019-11-23 13:06:38', '192.168.43.152', '85');
INSERT INTO `t_login_log` VALUES ('1bf30fb2ee2242a883a0f3989714a991', '67eb71f1091911eab9205c93a27933da', '2019-11-21 13:56:07', '192.168.43.152', '41');
INSERT INTO `t_login_log` VALUES ('1ca5371b704444f0aa3fc51204d86469', '67eb71f1091911eab9205c93a27933da', '2019-11-23 12:12:55', '192.168.43.152', '81');
INSERT INTO `t_login_log` VALUES ('2007e52838814730ad9acb7db0485e4b', '67eb71f1091911eab9205c93a27933da', '2019-11-23 02:54:34', '192.168.43.152', '64');
INSERT INTO `t_login_log` VALUES ('20093970ce2b4528b0d81959f84bda0d', '67eb71f1091911eab9205c93a27933da', '2019-11-20 15:23:02', '192.168.43.152', '37');
INSERT INTO `t_login_log` VALUES ('208f7a44d6f54301a128486d17500f62', '67eb71f1091911eab9205c93a27933da', '2019-11-24 06:15:15', '192.168.43.152', '107');
INSERT INTO `t_login_log` VALUES ('2304d1552efe4b55b1f4c0cb684d6b16', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:32:02', '192.168.43.152', '53');
INSERT INTO `t_login_log` VALUES ('257f0266970f4f89b640dc5e99de3870', '67eb71f1091911eab9205c93a27933da', '2019-11-23 13:52:17', '192.168.43.152', '86');
INSERT INTO `t_login_log` VALUES ('26d9218c5e4f4be69b5ca3b287d30304', '67eb71f1091911eab9205c93a27933da', '2019-11-28 15:08:26', '192.168.43.152', '127');
INSERT INTO `t_login_log` VALUES ('28671958eb634a2b8f46401ae5956622', '67eb71f1091911eab9205c93a27933da', '2019-11-23 12:19:21', '192.168.43.152', '83');
INSERT INTO `t_login_log` VALUES ('28982bb072d44bcc91323b3099e85bc1', '67eb71f1091911eab9205c93a27933da', '2019-11-20 13:32:56', '192.168.43.152', '30');
INSERT INTO `t_login_log` VALUES ('2b27dced0cc24adc9ab5f8a99c1b3185', '67eb71f1091911eab9205c93a27933da', '2019-11-24 02:08:59', '192.168.43.152', '96');
INSERT INTO `t_login_log` VALUES ('2b3318fb703546b5aae80db493f24752', '67eb71f1091911eab9205c93a27933da', '2019-11-30 05:04:33', '192.168.43.152', '132');
INSERT INTO `t_login_log` VALUES ('2c86664737fb4b1e9ddaf100ae75a6c4', '95dd55d0a8ae49af83d391ccd36b9a11', '2019-11-23 03:24:21', '192.168.43.152', '3');
INSERT INTO `t_login_log` VALUES ('2e7e06a0819c48ed8d4148220a732831', '67eb71f1091911eab9205c93a27933da', '2019-11-18 15:20:00', '192.168.43.152', '11');
INSERT INTO `t_login_log` VALUES ('2ebfa040359f46d3830d514f0b2fa06d', '67eb71f1091911eab9205c93a27933da', '2019-11-18 13:45:27', '192.168.43.152', '5');
INSERT INTO `t_login_log` VALUES ('3027188689114e9fbb0dcda34971c912', '7b0272d267be43f097af993a4d8bb467', '2019-11-23 03:38:23', '192.168.43.152', '3');
INSERT INTO `t_login_log` VALUES ('30df268ae0be48e5aa985a604be121f9', '67eb71f1091911eab9205c93a27933da', '2019-11-28 14:42:50', '192.168.43.1', '123');
INSERT INTO `t_login_log` VALUES ('32ad653fa19c4ca4b135ed7fcbd108d0', '67eb71f1091911eab9205c93a27933da', '2019-11-20 12:04:39', '192.168.43.152', '25');
INSERT INTO `t_login_log` VALUES ('32d55d10e29849568ef7660248084be7', '67eb71f1091911eab9205c93a27933da', '2019-11-21 13:58:25', '192.168.43.152', '42');
INSERT INTO `t_login_log` VALUES ('3454b168d2d244a1bebd82f704b1c478', '67eb71f1091911eab9205c93a27933da', '2019-11-28 15:08:20', '192.168.43.152', '126');
INSERT INTO `t_login_log` VALUES ('34b38ca74fe24e299854f3c8fb324a4a', '7b0272d267be43f097af993a4d8bb467', '2019-11-23 14:19:21', '192.168.43.152', '4');
INSERT INTO `t_login_log` VALUES ('367f5133783543b6867476baedd679e2', '67eb71f1091911eab9205c93a27933da', '2019-11-23 10:32:42', '192.168.43.152', '77');
INSERT INTO `t_login_log` VALUES ('3760416fa459470ab261604707ba908c', '67eb71f1091911eab9205c93a27933da', '2019-11-24 02:02:30', '192.168.43.152', '95');
INSERT INTO `t_login_log` VALUES ('388b0f990f524b4e8197349740f22a39', '67eb71f1091911eab9205c93a27933da', '2019-11-22 13:22:54', '192.168.43.152', '61');
INSERT INTO `t_login_log` VALUES ('3d35080c9c6046afbf314fc278af5374', '67eb71f1091911eab9205c93a27933da', '2019-11-24 15:16:00', '192.168.43.152', '115');
INSERT INTO `t_login_log` VALUES ('3e3f6694095148888d7585aecf6002b5', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-28 13:54:08', '192.168.43.152', '8');
INSERT INTO `t_login_log` VALUES ('3f662916b1cd484a9c7f636b6d0e4a9e', '67eb71f1091911eab9205c93a27933da', '2019-11-22 13:19:04', '192.168.43.152', '60');
INSERT INTO `t_login_log` VALUES ('43e00f8e31dd4f5f8bcdb8e57ede769d', '67eb71f1091911eab9205c93a27933da', '2019-11-20 13:29:27', '192.168.43.152', '29');
INSERT INTO `t_login_log` VALUES ('4678da70b5b9425e9dbb749a4fa12971', '67eb71f1091911eab9205c93a27933da', '2019-11-19 12:19:19', '192.168.43.152', '14');
INSERT INTO `t_login_log` VALUES ('46b50e58062f486aac4d2ee5d8284d1c', '67eb71f1091911eab9205c93a27933da', '2019-11-23 02:55:43', '192.168.43.152', '65');
INSERT INTO `t_login_log` VALUES ('4706eb2db31548e39927917511152857', '67eb71f1091911eab9205c93a27933da', '2019-11-28 14:51:00', '192.168.43.152', '124');
INSERT INTO `t_login_log` VALUES ('49123b65c8cb427688fcbf2779f277b5', '67eb71f1091911eab9205c93a27933da', '2019-11-18 15:04:04', '192.168.43.152', '9');
INSERT INTO `t_login_log` VALUES ('493674c469dd4667951ca3e8d291b803', '67eb71f1091911eab9205c93a27933da', '2019-11-22 13:40:16', '192.168.43.152', '62');
INSERT INTO `t_login_log` VALUES ('49592290e4f84974aeca06c2d3161ecf', '67eb71f1091911eab9205c93a27933da', '2019-11-18 13:46:29', '192.168.43.152', '6');
INSERT INTO `t_login_log` VALUES ('4973d924e51f475c846d6fa3d562b144', '67eb71f1091911eab9205c93a27933da', '2019-11-24 06:48:08', '192.168.43.152', '108');
INSERT INTO `t_login_log` VALUES ('4ec5025059b74dbbb12886134b031731', '67eb71f1091911eab9205c93a27933da', '2019-11-23 12:09:47', '192.168.43.152', '80');
INSERT INTO `t_login_log` VALUES ('535e5c178ae74ed58cc028b476804c21', '67eb71f1091911eab9205c93a27933da', '2019-11-25 13:43:06', '192.168.43.152', '117');
INSERT INTO `t_login_log` VALUES ('53bbd24202764ae095ec0bd0bde23764', '67eb71f1091911eab9205c93a27933da', '2019-11-19 12:45:28', '192.168.43.152', '17');
INSERT INTO `t_login_log` VALUES ('53e333cbfa684e99a6fa6f1d3c249941', '67eb71f1091911eab9205c93a27933da', '2019-12-01 08:43:30', '192.168.43.152', '142');
INSERT INTO `t_login_log` VALUES ('5438ea044ddd42f7a533377169847994', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-27 13:27:27', '192.168.43.152', '5');
INSERT INTO `t_login_log` VALUES ('566c31d67f6a4d7db97ec12b35df3400', '67eb71f1091911eab9205c93a27933da', '2019-11-30 06:02:28', '192.168.43.152', '139');
INSERT INTO `t_login_log` VALUES ('576e18a8206b49a98e73eacb26420573', '67eb71f1091911eab9205c93a27933da', '2019-11-18 13:10:04', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('5b6469a434ee45b896898cc9f9125cf2', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:02:25', '192.168.43.152', '52');
INSERT INTO `t_login_log` VALUES ('5b7f56705b1443089c1870d8489805f3', '67eb71f1091911eab9205c93a27933da', '2019-11-19 15:38:57', '192.168.43.152', '24');
INSERT INTO `t_login_log` VALUES ('5d1f4581828c4a43bcb957370c818589', '67eb71f1091911eab9205c93a27933da', '2019-11-20 13:39:37', '192.168.43.152', '31');
INSERT INTO `t_login_log` VALUES ('5f2cf5c720234493b69989e1964a686e', '67eb71f1091911eab9205c93a27933da', '2019-11-24 13:29:01', '192.168.43.152', '113');
INSERT INTO `t_login_log` VALUES ('64a8d38fbf23444d9fa186428e13740a', 'b5bfae4837594015ab1062887329bd97', '2019-11-26 13:02:14', '192.168.43.152', '2');
INSERT INTO `t_login_log` VALUES ('66c7eff4e173427e942c936fb59bc561', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-27 14:02:35', '192.168.43.152', '7');
INSERT INTO `t_login_log` VALUES ('66f7e0e31bd14d2d8fd23e39e1d3eca8', '67eb71f1091911eab9205c93a27933da', '2019-11-21 15:36:18', '192.168.43.152', '49');
INSERT INTO `t_login_log` VALUES ('6868de3bddd643fca04603e1edccce60', '67eb71f1091911eab9205c93a27933da', '2019-11-24 13:20:57', '192.168.43.152', '112');
INSERT INTO `t_login_log` VALUES ('68e1782bb0254d748ecb19f19a9ff2ac', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:46:21', '192.168.43.152', '56');
INSERT INTO `t_login_log` VALUES ('6938119ae38f49b9b37f7d20914d7e5a', '67eb71f1091911eab9205c93a27933da', '2019-11-24 05:17:27', '192.168.43.152', '104');
INSERT INTO `t_login_log` VALUES ('6aca14ab242245e5828444776bc978c8', '67eb71f1091911eab9205c93a27933da', '2019-11-19 15:02:33', '192.168.43.152', '22');
INSERT INTO `t_login_log` VALUES ('6affb71cc40c4a3ba2e99d99d6c6fc63', '67eb71f1091911eab9205c93a27933da', '2019-11-23 14:08:05', '192.168.43.152', '89');
INSERT INTO `t_login_log` VALUES ('6b8b8d76fd944bdeaf379b03303f7081', '67eb71f1091911eab9205c93a27933da', '2019-11-21 15:34:06', '192.168.43.152', '48');
INSERT INTO `t_login_log` VALUES ('6c0ec2a625144b95b51fde9fafec6ab6', '6289fb4f0f9311ea99ba5c93a27933da', '2019-11-26 12:52:57', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('72c865b6372c45afb6223b41e0f3049a', '67eb71f1091911eab9205c93a27933da', '2019-11-23 04:06:29', '192.168.43.152', '70');
INSERT INTO `t_login_log` VALUES ('734d00e9a97f423bb74be4ed971f86a6', '67eb71f1091911eab9205c93a27933da', '2019-11-23 12:48:06', '192.168.43.152', '84');
INSERT INTO `t_login_log` VALUES ('743ff82732094227952e18aa68903191', '67eb71f1091911eab9205c93a27933da', '2019-11-19 12:42:25', '192.168.43.152', '16');
INSERT INTO `t_login_log` VALUES ('749e08b076814a43b4215eaccaff7d87', '67eb71f1091911eab9205c93a27933da', '2019-11-20 12:17:15', '192.168.43.152', '26');
INSERT INTO `t_login_log` VALUES ('74c4d52a4d414d2ea1be617a3350ba47', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-28 14:40:24', '192.168.43.1', '9');
INSERT INTO `t_login_log` VALUES ('74f378dd08744ab1a9a496e70a6b6bb6', '67eb71f1091911eab9205c93a27933da', '2019-11-24 05:23:01', '192.168.43.152', '105');
INSERT INTO `t_login_log` VALUES ('750102ff2bab45e48ee6d7624226dcf9', '67eb71f1091911eab9205c93a27933da', '2019-11-20 12:25:36', '192.168.43.152', '27');
INSERT INTO `t_login_log` VALUES ('7887e69688da4f29869d9066ca83b81b', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:43:00', '192.168.43.152', '55');
INSERT INTO `t_login_log` VALUES ('79b44f50fb654bd883aa3557bfce32dd', '67eb71f1091911eab9205c93a27933da', '2019-11-23 14:54:01', '192.168.43.152', '90');
INSERT INTO `t_login_log` VALUES ('7a117df40db84092bfb043af7201debc', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:34:02', '192.168.43.152', '54');
INSERT INTO `t_login_log` VALUES ('7a7cc85280ff4aca978a8ed187388a96', '67eb71f1091911eab9205c93a27933da', '2019-11-23 05:38:04', '192.168.43.152', '72');
INSERT INTO `t_login_log` VALUES ('814117fdebda46da8ceeda20f84ffbbe', '67eb71f1091911eab9205c93a27933da', '2019-11-20 15:03:32', '192.168.43.152', '36');
INSERT INTO `t_login_log` VALUES ('8447c446f4e14312b242e0bd4e3055f3', '67eb71f1091911eab9205c93a27933da', '2019-11-21 14:15:44', '192.168.43.152', '45');
INSERT INTO `t_login_log` VALUES ('882c1ace5f164c1e9cea4bc39328a9f5', '67eb71f1091911eab9205c93a27933da', '2019-11-21 12:56:10', '192.168.43.152', '39');
INSERT INTO `t_login_log` VALUES ('8a7c78908721448ba4dd8ca3131b57ed', '67eb71f1091911eab9205c93a27933da', '2019-12-01 08:41:56', '192.168.43.152', '141');
INSERT INTO `t_login_log` VALUES ('8e4a68c849a24582aa7f9aba137aef0d', '67eb71f1091911eab9205c93a27933da', '2019-11-23 03:26:30', '192.168.43.152', '67');
INSERT INTO `t_login_log` VALUES ('8e589b64f2174826bc2788589b00ceb3', '67eb71f1091911eab9205c93a27933da', '2019-11-18 15:22:27', '192.168.43.152', '12');
INSERT INTO `t_login_log` VALUES ('9014371c12bb4083a68f3c8f8786850e', '67eb71f1091911eab9205c93a27933da', '2019-11-25 14:57:44', '192.168.43.152', '119');
INSERT INTO `t_login_log` VALUES ('9111a2e023204461aa6aa8b85607ce85', '67eb71f1091911eab9205c93a27933da', '2019-11-23 06:00:54', '192.168.43.152', '74');
INSERT INTO `t_login_log` VALUES ('91583bf291ac42feb5dce38c8d2947aa', '67eb71f1091911eab9205c93a27933da', '2019-11-22 13:17:40', '192.168.43.152', '59');
INSERT INTO `t_login_log` VALUES ('929e60a9eec9428fb5399abc7cec6c1b', '67eb71f1091911eab9205c93a27933da', '2019-11-24 03:27:00', '192.168.43.152', '101');
INSERT INTO `t_login_log` VALUES ('93110e64642844f7b4c1c21a789d06fd', '67eb71f1091911eab9205c93a27933da', '2019-11-24 13:08:21', '192.168.43.152', '111');
INSERT INTO `t_login_log` VALUES ('9561ac77767143e49e5dc66773302b52', '67eb71f1091911eab9205c93a27933da', '2019-11-23 09:38:25', '192.168.43.152', '76');
INSERT INTO `t_login_log` VALUES ('95db4c3f568c41ec86111ef1f2c8e414', '67eb71f1091911eab9205c93a27933da', '2019-11-24 02:53:28', '192.168.43.152', '98');
INSERT INTO `t_login_log` VALUES ('96e432249ed141aba975c83aecaaba07', '67eb71f1091911eab9205c93a27933da', '2019-11-23 10:35:05', '192.168.43.152', '79');
INSERT INTO `t_login_log` VALUES ('9a6055dfccb1464eaa3965d513e8d611', '67eb71f1091911eab9205c93a27933da', '2019-11-23 13:54:30', '192.168.43.152', '87');
INSERT INTO `t_login_log` VALUES ('9c8b11d06ab3497da5eae2b7058b47a0', '67eb71f1091911eab9205c93a27933da', '2019-11-18 15:11:44', '192.168.43.152', '10');
INSERT INTO `t_login_log` VALUES ('9e880a0397d4417083d0130096276e74', '95dd55d0a8ae49af83d391ccd36b9a11', '2019-11-22 14:28:32', '192.168.43.152', '2');
INSERT INTO `t_login_log` VALUES ('a1797437a565488ca893551b060d636a', '67eb71f1091911eab9205c93a27933da', '2019-11-21 15:38:48', '192.168.43.152', '50');
INSERT INTO `t_login_log` VALUES ('a20eaa07ce264e6aa665d0f8e6eaf2b8', '67eb71f1091911eab9205c93a27933da', '2019-11-20 13:44:14', '192.168.43.152', '33');
INSERT INTO `t_login_log` VALUES ('a41aabc0d01a40b79e05d311b9e34f2b', '67eb71f1091911eab9205c93a27933da', '2019-11-23 14:03:43', '192.168.43.152', '88');
INSERT INTO `t_login_log` VALUES ('a65dbfb81ac94bf781cdda8dbeb0d6da', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:01:07', '192.168.43.152', '51');
INSERT INTO `t_login_log` VALUES ('a713300863a5469ba19cc1be06b956d4', '67eb71f1091911eab9205c93a27933da', '2019-11-23 15:05:02', '192.168.43.152', '92');
INSERT INTO `t_login_log` VALUES ('a907a79526c14205998fbec0044f669f', '67eb71f1091911eab9205c93a27933da', '2019-11-28 14:54:26', '192.168.43.1', '125');
INSERT INTO `t_login_log` VALUES ('a90bc7b0b3a7420c930f718946b76b67', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:58:04', '192.168.43.152', '58');
INSERT INTO `t_login_log` VALUES ('ace7fc76220e4338bcb48b3f7785ae7b', '67eb71f1091911eab9205c93a27933da', '2019-11-21 14:55:08', '192.168.43.152', '47');
INSERT INTO `t_login_log` VALUES ('ad3d22de3b2e48c7848981671a49664c', '67eb71f1091911eab9205c93a27933da', '2019-11-26 13:01:52', '192.168.43.152', '121');
INSERT INTO `t_login_log` VALUES ('af60429d91f64032974e9f0728ba61eb', '67eb71f1091911eab9205c93a27933da', '2019-11-24 03:47:47', '192.168.43.152', '103');
INSERT INTO `t_login_log` VALUES ('b299f53985b6426e85fbc4c8d5a4f2fc', '67eb71f1091911eab9205c93a27933da', '2019-11-19 13:58:59', '192.168.43.152', '18');
INSERT INTO `t_login_log` VALUES ('b35893606ece4efa9c0f2fc5c41bb7a4', '67eb71f1091911eab9205c93a27933da', '2019-11-18 13:18:09', '192.168.43.152', '4');
INSERT INTO `t_login_log` VALUES ('b3a8cc2b5d9f41d5a6e1488218f0e0b8', '67eb71f1091911eab9205c93a27933da', '2019-11-24 03:06:35', '192.168.43.152', '99');
INSERT INTO `t_login_log` VALUES ('b77ba86ba2164627b085131afa52839e', '67eb71f1091911eab9205c93a27933da', '2019-11-19 12:11:04', '192.168.43.152', '13');
INSERT INTO `t_login_log` VALUES ('b8681a3a3abb438db12725b69701b1ac', '67eb71f1091911eab9205c93a27933da', '2019-11-25 13:33:40', '192.168.43.152', '116');
INSERT INTO `t_login_log` VALUES ('b8b3b651a2354d7d8fad176fb86f9b7e', '67eb71f1091911eab9205c93a27933da', '2019-11-24 03:41:41', '192.168.43.152', '102');
INSERT INTO `t_login_log` VALUES ('b8f5c5ecbd2645be89a0c257714d1fdf', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-12-01 08:20:46', '192.168.43.152', '10');
INSERT INTO `t_login_log` VALUES ('baa6dfe4cf2f44ae9b7faead26946bd2', '67eb71f1091911eab9205c93a27933da', '2019-11-28 14:37:30', '192.168.43.1', '122');
INSERT INTO `t_login_log` VALUES ('bac7127ea61841abafe864e4b0946223', '67eb71f1091911eab9205c93a27933da', '2019-11-23 09:26:54', '192.168.43.152', '75');
INSERT INTO `t_login_log` VALUES ('bcc0052f6f724e6babbbdb70af6d5e18', '67eb71f1091911eab9205c93a27933da', '2019-11-21 14:52:23', '192.168.43.152', '46');
INSERT INTO `t_login_log` VALUES ('bd640afcd1f345d4aceb6f270a06f0a6', '7b0272d267be43f097af993a4d8bb467', '2019-11-23 14:19:45', '192.168.43.152', '5');
INSERT INTO `t_login_log` VALUES ('bd8b9127ff4a4c2fba932f39463de52c', '67eb71f1091911eab9205c93a27933da', '2019-11-24 03:08:42', '192.168.43.152', '100');
INSERT INTO `t_login_log` VALUES ('be5fd3b0b5ff441b944cd03aa56837db', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-26 15:16:21', '192.168.43.152', '3');
INSERT INTO `t_login_log` VALUES ('c002dd4e8ce8477c9b357995bec312fa', '67eb71f1091911eab9205c93a27933da', '2019-11-21 13:14:42', '192.168.43.152', '40');
INSERT INTO `t_login_log` VALUES ('c209393d47dc4e0fa96b7072dda8351c', '67eb71f1091911eab9205c93a27933da', '2019-11-30 05:40:50', '192.168.43.152', '137');
INSERT INTO `t_login_log` VALUES ('c3244936f84a4d6cab348c07a16ddb4c', '67eb71f1091911eab9205c93a27933da', '2019-12-01 08:20:15', '192.168.43.152', '140');
INSERT INTO `t_login_log` VALUES ('c3cf765083374275941655867fce9b8a', '67eb71f1091911eab9205c93a27933da', '2019-11-19 15:01:40', '192.168.43.152', '21');
INSERT INTO `t_login_log` VALUES ('c3db78834bb14406ba32b10003a28d8b', '67eb71f1091911eab9205c93a27933da', '2019-11-23 05:56:02', '192.168.43.152', '73');
INSERT INTO `t_login_log` VALUES ('c402a36dc7814514a00713ca95f4874e', '67eb71f1091911eab9205c93a27933da', '2019-11-20 13:43:18', '192.168.43.152', '32');
INSERT INTO `t_login_log` VALUES ('c42fdb1b04ac4162a68c6933db53a3a2', '67eb71f1091911eab9205c93a27933da', '2019-11-23 03:37:29', '192.168.43.152', '68');
INSERT INTO `t_login_log` VALUES ('c520084e188949538991eec80656bd3a', '67eb71f1091911eab9205c93a27933da', '2019-11-24 05:46:12', '192.168.43.152', '106');
INSERT INTO `t_login_log` VALUES ('c657a21f09034063af1497974826eb20', '95dd55d0a8ae49af83d391ccd36b9a11', '2019-11-23 14:17:35', '192.168.43.152', '4');
INSERT INTO `t_login_log` VALUES ('c7fe4f99c675448eb58db38bae28b2be', '6289fb4f0f9311ea99ba5c93a27933da', '2019-11-26 13:01:16', '192.168.43.152', '2');
INSERT INTO `t_login_log` VALUES ('c88f6702475d4b2aa6eb9f1248db9874', '67eb71f1091911eab9205c93a27933da', '2019-11-18 13:12:34', '192.168.43.152', '2');
INSERT INTO `t_login_log` VALUES ('c9b4d412267e47458149f5e29a58bbf2', '95dd55d0a8ae49af83d391ccd36b9a11', '2019-11-22 14:12:02', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('cafed0e0efc143a2874c965d3b7f77f6', '67eb71f1091911eab9205c93a27933da', '2019-11-25 13:53:07', '192.168.43.152', '118');
INSERT INTO `t_login_log` VALUES ('cf893270945749ffbdaf6f61404ccd94', '67eb71f1091911eab9205c93a27933da', '2019-11-26 12:52:06', '192.168.43.152', '120');
INSERT INTO `t_login_log` VALUES ('d03abfebca1f4e989777014cbe97b9c6', '67eb71f1091911eab9205c93a27933da', '2019-11-18 15:01:20', '192.168.43.152', '8');
INSERT INTO `t_login_log` VALUES ('d2269da7db1e41a1853b67ea7ba70b3b', 'b5bfae4837594015ab1062887329bd97', '2019-11-24 14:21:07', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('d27f897725754a8f8667b0519b578e09', '67eb71f1091911eab9205c93a27933da', '2019-11-20 14:29:44', '192.168.43.152', '35');
INSERT INTO `t_login_log` VALUES ('d4958c0e167d432c813a0d1e99da6d70', '1', '2019-11-17 05:16:43', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('d51d88b0eed34406bb3f27e8a460d21a', '67eb71f1091911eab9205c93a27933da', '2019-11-23 14:56:42', '192.168.43.152', '91');
INSERT INTO `t_login_log` VALUES ('d88a6354acbb4f05b8ae378dac070677', '4f8f02dff98044ffb7f7dfbc8c57c596', '2019-11-28 12:53:21', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('d9a6804b5091417db9e097aaebb9e82e', '67eb71f1091911eab9205c93a27933da', '2019-11-30 05:26:02', '192.168.43.152', '134');
INSERT INTO `t_login_log` VALUES ('d9ecbdf4d47344d39df958c35aa8443a', '74013ffb091911eab9205c93a27933da', '2019-11-23 14:08:38', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('d9feb5082ff64ede8dd35a1df6bccadf', '67eb71f1091911eab9205c93a27933da', '2019-11-19 14:53:52', '192.168.43.152', '20');
INSERT INTO `t_login_log` VALUES ('dc45a7dd91364b219437c14d4c1decaf', '67eb71f1091911eab9205c93a27933da', '2019-11-19 14:49:00', '192.168.43.152', '19');
INSERT INTO `t_login_log` VALUES ('dd37be225b82415b881784bba9676f87', '67eb71f1091911eab9205c93a27933da', '2019-11-24 01:33:43', '192.168.43.152', '94');
INSERT INTO `t_login_log` VALUES ('dd65a314ce1544e3a586a14789d22d3a', '7b0272d267be43f097af993a4d8bb467', '2019-11-23 03:28:47', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('dfe297dc4fb84af89ca5d5475c72a48b', '7b0272d267be43f097af993a4d8bb467', '2019-11-23 03:29:25', '192.168.43.152', '2');
INSERT INTO `t_login_log` VALUES ('e138ec09edd9433f90fc01254ae3f610', '67eb71f1091911eab9205c93a27933da', '2019-11-18 13:52:03', '192.168.43.152', '7');
INSERT INTO `t_login_log` VALUES ('e18cf25400644cc5bfbc07c783dd3934', '7bc5259b091911eab9205c93a27933da', '2019-11-23 14:18:53', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('e1d96e42a3424df8a627b4212819c971', '67eb71f1091911eab9205c93a27933da', '2019-11-22 14:11:28', '192.168.43.152', '63');
INSERT INTO `t_login_log` VALUES ('e283a2809f92421bbc9079e9aab74678', '67eb71f1091911eab9205c93a27933da', '2019-11-24 12:51:21', '192.168.43.152', '110');
INSERT INTO `t_login_log` VALUES ('e2eb0e69875d49b7b4a02e93b8da695e', '67eb71f1091911eab9205c93a27933da', '2019-11-30 05:34:46', '192.168.43.152', '136');
INSERT INTO `t_login_log` VALUES ('e656e347e8e94afcae7722a27df7f99b', '3e5dfa87593e4a44b8212eb3866aefdb', '2019-11-24 02:12:01', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('e72b14089a35412e93c7dfdfde8351e9', '67eb71f1091911eab9205c93a27933da', '2019-11-30 04:14:37', '192.168.43.152', '131');
INSERT INTO `t_login_log` VALUES ('ec096d4c8e0d4bb9a57092022805684d', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-27 13:42:47', '192.168.43.152', '6');
INSERT INTO `t_login_log` VALUES ('f09d2f41122b491e8e69ff9c3bd1d283', '67eb71f1091911eab9205c93a27933da', '2019-11-30 03:34:55', '192.168.43.152', '129');
INSERT INTO `t_login_log` VALUES ('f41162c01c3948808b5c3102de488306', '67eb71f1091911eab9205c93a27933da', '2019-11-23 03:23:12', '192.168.43.152', '66');
INSERT INTO `t_login_log` VALUES ('f67f2830a7654988830622f394fe523f', '67eb71f1091911eab9205c93a27933da', '2019-11-23 03:58:42', '192.168.43.152', '69');
INSERT INTO `t_login_log` VALUES ('f83cb701e23b42539a967ca4102aee84', '67eb71f1091911eab9205c93a27933da', '2019-11-30 05:45:13', '192.168.43.152', '138');
INSERT INTO `t_login_log` VALUES ('f8f0f0ec647e4eceb8c699b39e2bb6ac', '4f8f02dff98044ffb7f7dfbc8c57c596', '2019-11-28 12:56:44', '192.168.43.152', '2');
INSERT INTO `t_login_log` VALUES ('fb0a8d0e373a4d098b65f9083bfb656c', '67eb71f1091911eab9205c93a27933da', '2019-11-24 12:48:25', '192.168.43.152', '109');
INSERT INTO `t_login_log` VALUES ('fbe521fb98754c0db39dd82459965ca3', '1', '2019-11-17 05:19:26', '192.168.43.152', '2');
INSERT INTO `t_login_log` VALUES ('fc9cde08ac5945709065917ac8bea433', '67eb71f1091911eab9205c93a27933da', '2019-11-30 05:08:07', '192.168.43.152', '133');
INSERT INTO `t_login_log` VALUES ('fea3561b25324c7f834b9bfe73bc13b6', '67eb71f1091911eab9205c93a27933da', '2019-11-30 05:31:06', '192.168.43.152', '135');

-- ----------------------------
-- Table structure for `t_major`
-- ----------------------------
DROP TABLE IF EXISTS `t_major`;
CREATE TABLE `t_major` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `name` varchar(50) NOT NULL COMMENT '专业名称',
  `major_number` varchar(32) NOT NULL COMMENT '专业编号',
  `institute_id` varchar(32) NOT NULL COMMENT '学院id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_major
-- ----------------------------
INSERT INTO `t_major` VALUES ('0f413024eb5c460fb129bf06eb4ee6c9', '软件工程', '02', '271c18020e6a11ea85a85c93a27933da');
INSERT INTO `t_major` VALUES ('940c25ce0e7111ea85a85c93a27933da', '计算机科学与技术', '01', '271c18020e6a11ea85a85c93a27933da');

-- ----------------------------
-- Table structure for `t_operate_record`
-- ----------------------------
DROP TABLE IF EXISTS `t_operate_record`;
CREATE TABLE `t_operate_record` (
  `id` varchar(255) NOT NULL,
  `request_url` varchar(255) DEFAULT NULL COMMENT '请求的url',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '远程的ip地址',
  `params` varchar(255) DEFAULT NULL COMMENT '请求参数',
  `method` varchar(255) DEFAULT NULL COMMENT '请示方式',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `is_success` int(1) DEFAULT NULL COMMENT '请求是否成功，1成功，0失败',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_operate_record
-- ----------------------------
INSERT INTO `t_operate_record` VALUES ('0063f3a10f3341b9bb946cde5c17b68f', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:42:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('00be6c4cc6614623a6daf84b95ce6185', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:22:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('00f8b50080c64f16a9d3a0a31b043d0b', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@71bf434c, org.apache.shiro.web.servlet.ShiroHttpServletRequest@47bd39a6]', 'POST', '2019-11-19 12:36:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('01319b1c544746bfae10ad0ef479456c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:13:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('013f983ca00049b4a6b08b62d72dfd1b', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 05:34:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('016a768903f84a2197a51e3867964ec5', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:11:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('02185b17b9ae41bdba07bdc40f02b21f', '/clazz/list', '192.168.43.152', null, 'GET', '2019-11-24 06:52:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0287223b561e4f648289dc4d756bf436', '/user/login', '192.168.43.152', null, 'GET', '2019-11-23 10:32:28', null, '0');
INSERT INTO `t_operate_record` VALUES ('032da9a7b4b14f66b16c2a1be754d6ab', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 13:06:37', null, '1');
INSERT INTO `t_operate_record` VALUES ('035f442a8cdb4c26817685050eb73e64', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:53:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('037caa68e8b5471ea87b653159b45a08', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:45:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('03ed9f2c72124fedb653620078903580', '/role/add', '192.168.43.152', null, 'POST', '2019-11-23 04:09:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('043de5aec3684579aa5b91f477cd3d77', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:10:16', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('04a4c954ce1b40f4a9df1e4e5a2423df', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:41:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('04f14aaee59d4832a816ae240db486e7', '/user/list', '192.168.43.152', null, 'GET', '2019-11-25 13:43:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0535db72e58d4eff8fe7a19cd2be082a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 05:45:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('05384fe738f04fde92765903964870ef', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 13:43:17', null, '1');
INSERT INTO `t_operate_record` VALUES ('0545028ebe1a4d80a62f3f8a5ba434be', '/role/findAllRoles', '192.168.43.152', '[RolePerms(id=null, roleId=null, permsId=null), org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2019-11-19 15:29:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('05589276693c416da1e7f16186b2411e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:20:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0618478737ea415294a3636097211bf2', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:28:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('062200284cb849afb4c139e744b83ab1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 12:15:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('062e3d6217704d969c5aa128dd1d7697', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 13:29:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('063eaadfe482469ea8e996cbe07755a9', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:03:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('064710f8c787475d9c867c2dab08937b', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:37:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0651c5d9dbcd43528159d32d195ef3b9', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-23 03:25:20', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('0664b5be273a4d5ca2159671e1c3958b', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:14:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('066801f34e804c40b60a9c88b11dc063', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:32:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('06697f32092e4370bac472c923d65f8d', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 14:11:33', null, '1');
INSERT INTO `t_operate_record` VALUES ('0693a7ae19a041e1a12b5f5268a60524', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:08:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('06c3669d7a3a46e2b7ea1a2d07ac4ddd', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:14:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('06da2b9bfc95438587f65f177fad3ed0', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 13:02:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('06e1e15ea81147dcae22708d0284d100', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:57:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('06e4181bf0c44105a070aa87584402a7', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:21:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('06fdd0c6c09546aea430f648769bace7', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:23:52', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0713f0bed4cf4a87809f03f6f53582c3', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:54:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('074dec9b07da43cca27b0d8b8846170b', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 09:38:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0751866403fd4ffcb5b76a21b9d26e6a', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:43:11', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('07d6d560df334d1280fa4d1bdb891378', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 13:08:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('07e99a7bf8a24c80a0f804ac17787a04', '/user/login', '192.168.43.152', null, 'GET', '2019-11-23 05:55:41', null, '0');
INSERT INTO `t_operate_record` VALUES ('0854079c1a354ea7b62c93173d0b4bdb', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 05:52:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('085b0f3eb0724f53a0e928be6cbf4cb6', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 06:51:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('08f7fdc1d4bc44fa87539f1551cf36c6', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:45:50', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('091b0c8b560a45a38039103ff003f178', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 15:39:01', null, '1');
INSERT INTO `t_operate_record` VALUES ('0949896eb6c34af9b49f3acc4d811693', '/institute/add', '192.168.43.152', null, 'POST', '2019-11-24 03:36:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0952fa191e554c67a9a0981fca2235f6', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 09:29:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0953d8267f7b4359934ea7c232fa2aea', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:54:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('097e70ef95e844589154f0a7578aea84', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 06:02:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0a0a8e8bed924f7da65348fc4e23c61a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 14:11:00', null, '1');
INSERT INTO `t_operate_record` VALUES ('0a1942b0ffaf4efc83bc6bd6b76d0aad', '/course/mycourse', '192.168.43.1', null, 'GET', '2019-11-28 14:40:43', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0a1b08745d004e3fa7950c258fa00b6b', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:46:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0a3245587ef0455598dfca49311ff586', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0aa53b69f7e94f5ba6e597711e95457a', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:21:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0aaf82da0df248ea8ec553591a99eebe', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 03:42:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0abac4d8b09d42668a8e1548a24a5052', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 09:44:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0ba5a8ccb32940c0be5f944d3ea2eb44', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:44:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0c23c530c1ee4a61b267ae2ad84a24d7', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 03:06:33', null, '1');
INSERT INTO `t_operate_record` VALUES ('0c9b3b99240b44f689211ed2f0da3f9a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 15:05:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0ca419c636e046cfb9a8b9a89b43dfd5', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:09:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0ca9cf80697f4fa8868e4ed6c28128e9', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:40:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0ce75fd258804170a47198ef9604ed06', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-23 03:26:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0db2e88352da4e028f62cdc306b9c95c', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-23 14:07:07', null, '1');
INSERT INTO `t_operate_record` VALUES ('0db83db104384a4987e8417989510914', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 12:12:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0de32a0f98ca4bb4879c44cdc091e512', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 13:59:13', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('0e293bb6604648f3aa6c9a7a6cdc6e62', '/role/delete', '192.168.43.152', null, 'POST', '2019-11-23 06:02:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0e33a27f612344a4be05e4f3d7e59f8c', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:06:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0e5fde8a74314eef9d52a6fa98419f29', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:07:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0e78f6953cc84e5295bd6bcb443f40c6', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:01:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0ec1ca2e84ed4ea7917f34cb26b599f5', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:47:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0f002a0af0674fa8b846e2fbfb5396f1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 14:32:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0f2a0db40a1c4f05bb65a7a9dbf9efcb', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:10:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0f3c1c93fe784c7bb8bc53893d4a342b', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 05:30:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0f4b7910a47a4608b5899c0a4ef7c65a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:17:36', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('0f58fe5e03f54848b7c7da99ebc89b32', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-28 12:57:10', '4f8f02dff98044ffb7f7dfbc8c57c596', '0');
INSERT INTO `t_operate_record` VALUES ('0feef755f7c84b3fbb52433b75fb88bc', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-27 13:43:06', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('10266265896145ca9ebf291911680ea8', '/student/add', '192.168.43.152', null, 'POST', '2019-11-24 13:30:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('102e878379594b069e2eb4e5bb14c59c', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-23 10:37:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('104aac4226ed4603a4ffb492106c9075', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 04:14:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('104c21b4231e4e29b03596cebd3363b6', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 15:19:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('105ebbf042cf40f5b1795b74653faaf3', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 13:21:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('107f8fc9217c4870b79a40e11cad91c4', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-27 13:28:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('108f1408a2eb4cbc8eb198def6b69771', '/institute/add', '192.168.43.152', null, 'POST', '2019-11-24 03:35:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('10efd8107ece48fa9957f97fdeb25d70', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-01 08:42:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('111a73f15bbb40c3b3f5df223d1d096f', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 09:44:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('11670465242f4a05bab174ce79443e8d', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:07:07', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('11a39011c98a4966ac718f007791f0a5', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 13:08:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('11fe0f0cfea04eb1a41fc3428506eb91', '/user/login', '192.168.43.152', null, 'GET', '2019-11-19 15:38:41', null, '0');
INSERT INTO `t_operate_record` VALUES ('12110782514945fcbaa3ac7526a19c25', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:09:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('122ba38885624deeb45065d20085d68a', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 15:17:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1235a61978c54811acdfc4a2e966390e', '/student/add', '192.168.43.152', null, 'POST', '2019-11-24 13:21:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('12443b34c695417c9666066b9860e283', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:09:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('126ad97496484915acb93e74256addc8', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:02:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('128aa9c5f5e94def84c5b67a3335708e', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:18:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('130252815b8442959aaa3145ab56113c', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:34:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1309801f0b404b6398e55ce9143aa521', '/user/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@43039c2a, org.apache.shiro.web.servlet.ShiroHttpServletRequest@ff643ab]', 'POST', '2019-11-19 14:48:55', null, '1');
INSERT INTO `t_operate_record` VALUES ('1312328ba16f42819a8acb5cf4423e30', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:26:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('13231b986ee24f2db872a531ed15aefc', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:13:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('135312c120ba45faa674d40ac3d12178', '/clazz/add', '192.168.43.152', null, 'POST', '2019-11-24 06:51:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('13bb7a2c12794199b102727f09fa779f', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:17:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('13bda69b9505477d9afca9ca4e6fe484', '/teacher/add', '192.168.43.152', null, 'POST', '2019-11-24 15:19:50', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('13bded87b5e747d6b59a7f31424d255c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:38:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('13d81b5a6e2c4a17ab9aa2a0ffbb91cb', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:37:56', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('13e9b5a0459540ddb40f0b37921c53ee', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-23 03:25:20', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('142e3187882d40a28311a7d988a486b4', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 12:59:12', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('1438252d40ac4a348f8dd3364e8aa139', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 13:54:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1485c2ac958a4b2697f16903641ca298', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 14:22:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('14da1ab306e34c3fac0fe26e97fc05ae', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:58:42', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('152e854f03844738a9dbd9c6d81570d3', '/user/login', '192.168.43.152', null, 'GET', '2019-11-20 12:17:02', null, '0');
INSERT INTO `t_operate_record` VALUES ('15416a2d198548c7bbfaa85eae5ed23e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:39:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('154a7015d3d040b3b39bf9f80b7a12de', '/teacher/add', '192.168.43.152', null, 'POST', '2019-11-24 15:19:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('154bff4a3e094d958f64d2cf882a8946', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 13:11:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('15a0bd61be4b4ceeb822fc7622043a64', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 13:02:14', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('15c80100f6a648d792171aba00ec7094', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:58:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('166c73d5d3954d2095a0b9ac2e19bc6d', '/user/login', '192.168.43.152', null, 'GET', '2019-11-19 15:12:26', null, '0');
INSERT INTO `t_operate_record` VALUES ('167b564b3a1c40789a31a433b9d7c0db', '/dict/add', '192.168.43.152', null, 'POST', '2019-11-23 12:52:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('16d342afcffa4e658952fa288811e56f', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:47:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('16d9bbb1041944aeb4f55f101cc9680a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 13:58:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('174f6d22774a46149e4444496788ed40', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:26:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1780e644542a4f8cb1afe0ff383b61a0', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:51:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('17a08e8668a9456e8eeb64e94f966055', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:31:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('180ebff52f084290a0187e26e7effe77', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 13:10:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('185339e1b39f4a55b08ec42bcdce3e52', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 01:33:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('185de4c527694cf3afdc1b63f14ec32d', '/user/status', '192.168.43.152', null, 'POST', '2019-11-23 03:25:04', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('18648cd45c38426197bf61ebf2666a25', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:13:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('18b8d68e61b441fe85732bace7d44b17', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:52:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('19561f8aa8c3418bafb519e130506c8d', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:11:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('198dff5f8bc44950bf329442d68fdb0e', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@4574da91, org.apache.shiro.web.servlet.ShiroHttpServletRequest@17571e83]', 'POST', '2019-11-18 15:22:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1a10656657ed453eb62a6c6a4acb0c4e', '/user/login', '192.168.43.152', null, 'GET', '2019-11-24 05:17:11', null, '0');
INSERT INTO `t_operate_record` VALUES ('1a29fd50a54b477ea830473e1ef38ba1', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2019-11-23 14:54:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1a516af3f2be493caa3973e87bd0c858', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:45:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1a6e28bea6cb43ec81d4cb1ad717a5ce', '/user/list', '192.168.43.152', null, 'GET', '2019-11-27 14:02:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('1a9200b9364c477d9fc0243d6ac7c06c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:48:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1ae4c999c6ee4e8e9a0484d05b1dcd3c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:17:02', '74013ffb091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1bebe970f74346048dee8fbb2f657043', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:21:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1bf55388c15b4bc8838e67ade60c811c', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:46:27', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('1c7bb98964914d1a971804d3ab8c4806', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:31:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1c8872afb38d4253b7fb443f78d16748', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:14:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1c902ececee942d99b38b152641950ab', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:06:42', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('1c9ad6558cb043dc9b475dfb29b5c329', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 14:08:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1cf816cd28d14ada8887a0ebdde5542e', '/user/list', '192.168.43.152', null, 'GET', '2019-12-01 08:41:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1d248262597347a98c288e9e03de5894', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:22:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1d276aaeca7a4f23ad8856e455cb64f4', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:00:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1d3b57ea0fca4b7bb0147814b6494fff', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:24:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1d519a46eb8c4be4a840d4f98d10828d', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1d6d5ecee9934e66800798d8c1e97202', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 06:48:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1dc3e98695bd4cb7908724fb7306b798', '/UserApi/v1/editUserStatus', '192.168.43.152', '[User(id=67eb71f1091911eab9205c93a27933da, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'POST', '2019-11-18 15:22:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1dee8f46731044a48308c07b5c02211f', '/teacher/list', '192.168.43.152', null, 'GET', '2019-11-24 15:20:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1e15ccef9ddc41faaf2c438c90fc288b', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 13:29:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1e934c5e7bdf45bc8ac436a68cd18722', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:38:31', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('1ed04ce64a264e16ad06ad80a23367ce', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 12:12:54', null, '1');
INSERT INTO `t_operate_record` VALUES ('1fc3259d765840b68971f3bf16d9c0a7', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 10:48:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1fd3d87a51c049beaba53b31ff117ad0', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:08:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2050c89014414453a55ea870a357230a', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:56:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2084692b96d94efe821bdc1a9f36e854', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:06:42', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('20b96d109bf54102bdeb828b04e070f0', '/course/student', '192.168.43.152', null, 'POST', '2019-11-27 13:43:13', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('20bc60d5e615407f91a5b25568f76329', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 12:52:58', '6289fb4f0f9311ea99ba5c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2103cde69aa249adb4e2db179597f739', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:38:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('210a62ff33bc4a6fad84315b9cf6de25', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:21:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('210b21fd4e0b4194bec52a887ebd3052', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:08:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2111979f76724d33bfa8821f7d49dabd', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:38:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('213dc6a6569348e18df1334d432d6940', '/course/add', '192.168.43.152', null, 'POST', '2019-11-25 13:55:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('214440cc016f4ba5aa89dc73e9e02017', '/user/list', '192.168.43.152', null, 'GET', '2019-11-28 12:53:32', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('214443ce0e90444d95c7941937b1fd15', '/user/login', '192.168.43.152', null, 'GET', '2019-11-25 14:57:35', null, '0');
INSERT INTO `t_operate_record` VALUES ('217f90f093f941c0863248b797c81d5a', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:46:54', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('21890cffc74e4077ae0fdf805e899fdb', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:45:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('21900c8689044171bce2dca273c4efb1', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:25:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('21ccd2097b7840f1aae4d0246b601f1e', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 14:11:02', null, '0');
INSERT INTO `t_operate_record` VALUES ('2221f5f79222418bbbafdd1d7f6dfb9a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 02:08:58', null, '1');
INSERT INTO `t_operate_record` VALUES ('2238744ac31c43bdaa77d70ec047e848', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 01:33:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('224a3db2604c4a11941cad0c03520798', '/user/update', '192.168.43.152', null, 'POST', '2019-11-23 14:17:59', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('22e7cdcccdb4499c84e3823456e7ce04', '/course/choice', '192.168.43.1', null, 'GET', '2019-11-28 14:40:47', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('22f28952fb77412099e71b2dd5bbd47b', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 06:01:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('22ff82c0a1684323a4d5dd43f06f1d7e', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:15:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2327933f440e44b9ad1c4665f7035197', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:48:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2352d9b1feca48f1b3f4c2b7c087df26', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 14:22:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('23922da3557649049a2fdf3654f5a40c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-25 13:53:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('23d642f34a814a89a2ee522a5f630157', '/clazz/list', '192.168.43.152', null, 'GET', '2019-11-24 06:50:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('23fb4dfe48e0493cb741e165ecb6b85c', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:12:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2402dcd1f264462ca486aadda85e589a', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:17:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('248a4c08e4a74d8882239d90d3c533b0', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:26:30', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('249cae3d4e4b4874b83e0ff16f6ea483', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:45:24', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('24b860b80a1a4456a1eb45399f58732d', '/user/login', '192.168.43.152', null, 'POST', '2019-12-01 08:20:08', null, '1');
INSERT INTO `t_operate_record` VALUES ('24bb3f0d79b04fcb93133726de4d2044', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:02:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('24dbc738de3d4afbad995705bf57f288', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:18:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('24efaa702d744d6f838cf1cd4598351a', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:34:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('25aac8af39b647aca017a1166d3723b3', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:18:36', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('25e93d0677bc46839b5652ee1d6f99d2', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2019-11-23 15:19:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('25f9d88da0da4b49b0ec5da1a44fff1d', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:37:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('26967a9fff7440f8b5c6e6d8b46b939b', '/teacher/list', '192.168.43.152', null, 'GET', '2019-11-24 15:17:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('271d31a8c67e418a8c300ad833666cc2', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:08:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('27319fdbf4d244a98762f1ae90db4335', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 15:23:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('27cb43ecb7984cb19347b291b5a7ac1e', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 12:09:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('284dd8712dec455bab5fe3df6d217d57', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 10:32:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('28b75d5f2495434ba2c1ace43c141443', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 13:43:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2905e93e0db14db99c1c479069e5e385', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-12-01 08:42:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('292984ba79d445cbbc9491f01fa5e855', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:47:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('29372d7dec8e4c5689cfedffa3caf2da', '/user/login', '192.168.43.152', null, 'GET', '2019-11-21 12:55:58', null, '0');
INSERT INTO `t_operate_record` VALUES ('296c1b67df6b4004be4ca93266d56902', '/user/list', '192.168.43.152', null, 'GET', '2019-12-01 08:43:53', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('297cd6546d204c87a86a97bbae27bad3', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 13:43:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2981db1be6c447d59baaea0a82dff9e0', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:03:42', null, '1');
INSERT INTO `t_operate_record` VALUES ('2a31a01a7b3a4bb5a3bf0ea975a7b32d', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 14:12:32', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('2a3eb0fc8f1944538a1b7afa71237bd9', '/user/list', '192.168.43.152', null, 'GET', '2019-11-28 15:08:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2a42fabf8b8946cb890128dc773ccb2f', '/user/login', '192.168.43.152', null, 'GET', '2019-11-30 05:24:33', null, '0');
INSERT INTO `t_operate_record` VALUES ('2a803de894df4e1aab27d5e0620fa61c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 13:19:59', null, '1');
INSERT INTO `t_operate_record` VALUES ('2acf26252f184f949216e0ba34609ca5', '/teacher/list', '192.168.43.152', null, 'GET', '2019-11-25 13:48:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2b092993de7648ba9f9716483c424593', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 06:00:53', null, '1');
INSERT INTO `t_operate_record` VALUES ('2b8aa048037d4f5c9603be455a218191', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:07:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2b91f6dec6644e438aca35c555c6f1ba', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 14:08:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2c415024603949a9b466c1637aae59fe', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:49:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2cbf72ef387d4012bab8be972a4856b9', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-28 15:08:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2d17f68115f14e71aa5d299011d7f4e3', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:35:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2d6e15351c2a4329a0a3e6ea05975ec2', '/user/login', '192.168.43.152', null, 'GET', '2019-11-23 12:09:38', null, '0');
INSERT INTO `t_operate_record` VALUES ('2d7104a2e84f422b93f946862bbdf8f4', '/user/login', '192.168.43.152', null, 'POST', '2019-12-01 08:43:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2d7cd4afc4c542ffa93b85e114e0a3bd', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:41:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2d7fc56c0a0d45028bc0e0d7fb382236', '/user/update', '192.168.43.152', null, 'POST', '2019-11-24 14:22:06', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('2de3477c0a414fe4b794c8b1ad43fd45', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:18:53', '7bc5259b091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2e4104500d30416c8d427b067113f575', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 12:49:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2e9032e9a3304a879d451e4ae6f10e18', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 14:53:26', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('2e9d9a3eb6014dc280dce0e2266b5bf5', '/user/add', '192.168.43.152', null, 'POST', '2019-11-23 03:27:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2ea906c0175f46d6badcbfa0454750fe', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 13:13:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2ecec794688d47ee9eac2939cd6cd26a', '/user/status', '192.168.43.1', null, 'POST', '2019-11-28 14:37:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2f11a66645db4be48568dc073a119246', '/role/add', '192.168.43.152', null, 'POST', '2019-11-24 01:34:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2f35b9073977440ab7a6f47cb1d062c2', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-27 13:01:50', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2f4f6476ae604e499c5121fd761176ba', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 15:33:53', null, '1');
INSERT INTO `t_operate_record` VALUES ('2f59759a80a042d5ba3a56210df9be58', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 04:11:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2f8724e96c1342fe8847c0d67f0eb030', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:54:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2fced6f299114fd78cae22b8cd989890', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 03:12:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3014c47b002f4534a54a32578a609a89', '/grade/update', '192.168.43.152', null, 'POST', '2019-11-28 13:43:26', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('3047ab9a822146ff9ed49973464b3065', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 13:29:00', null, '1');
INSERT INTO `t_operate_record` VALUES ('305a28707cbc41038b8b429803de571f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 12:17:14', null, '1');
INSERT INTO `t_operate_record` VALUES ('30b11898b07143e0815b07133ef887ed', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 03:14:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('30f6f42c55b6489ebdc905ebbaaed5fa', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 05:56:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('314655f79ff34edea8154de44694b3bb', '/clazz/add', '192.168.43.152', null, 'POST', '2019-12-01 08:42:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('314976c8b85c4e3ba2a0976c24a7ca11', '/course/add', '192.168.43.1', null, 'POST', '2019-11-28 14:44:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('31587b8fd8d24c578b17e009bafc4085', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:44:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('31963d9a17fb4024b12cfde7fdb1837b', '/role/findAllRoles', '192.168.43.152', '[RolePerms(id=null, roleId=null, permsId=null), org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2019-11-19 15:30:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('31a1ca77b9c048ab99349df7e7e739ce', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 09:27:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('325694f0d34b43ec9fb2ba13af11fb9b', '/user/list', '192.168.43.152', null, 'GET', '2019-12-01 08:20:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3264ce521f494f208e0d669133593615', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 06:02:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('33795956f0644508b819b513bd0ac10e', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 13:29:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('33c0ddb8b67a4ced95efbeab37c0a33b', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:02:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('33f16c28c0f3459596f7f4cb53baca71', '/user/update', '192.168.43.152', null, 'POST', '2019-11-23 14:19:34', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('34146e6aa9ca493caae9a210f9af5d23', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:28:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('34162d69fce641b7823437a35ee3c3e3', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-22 14:12:21', null, '1');
INSERT INTO `t_operate_record` VALUES ('34592b4e15604c2aa536f48ea3c849f9', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 12:26:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('346203df99384732aaadebaeae63e3e6', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:39:37', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('34631952df4c435787063e0bdf19c668', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:21:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('35353f8f8a85448bb8f13613875341c8', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:09:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('35465d246dfa49c7901da035bb37d89e', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 04:14:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3565d68be9c34161949bafcaf35c8eae', '/teacher/findAllTeacher', '192.168.43.1', null, 'GET', '2019-11-28 14:43:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('35ec6e635e2a4e96b082970848f570e8', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:08:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3771c904122a4733997dd8f620a5e325', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 06:49:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('377fbd5a2c2c4881a617a4e05a06ea06', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 12:48:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('37bd5944417b469daede8604b3784918', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 01:35:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('37c0a2646eeb432b996bb6f7d2908a36', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:46:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('37cb23b9a14b4049beeea1e84abeb731', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:06:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('37feecc131c348cea859367da6e6b11f', '/user/list', '192.168.43.152', null, 'GET', '2019-11-25 13:53:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('38d52a6506cc46a5ba1d7b1bffb5b6d9', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 15:03:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('38df5f6c5fc647e5b391f0c6d208cccb', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('393bd48dfa6d4654a0e5ddf266d778fb', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-12-01 08:42:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3967e5fac69e492eb80118191acc6b58', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:19:21', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('39f8aebd0ea64f50912c67b8ace326f3', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 14:11:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3a35de8deea142e98bd4066760d45e0e', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 13:40:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3a3dea2126c743f8bee2e6ea660fdc74', '/user/add', '192.168.43.152', null, 'POST', '2019-11-21 12:57:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3a575ba3d001422f8b07d6c7c2975d7b', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 14:02:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3aa12b1abeca4ff48713f0753bed8098', '/user/add', '192.168.43.152', null, 'POST', '2019-11-19 15:41:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3aca1866486a414bbc5bcad7a6841f3c', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-27 13:37:41', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3b73465fe30e4276aa38093526142b28', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 12:54:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3b8c9fd24b1a49d4adda985609accd73', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:48:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3bb4e2183a2e4712ad722b7611de43e0', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 04:06:28', null, '1');
INSERT INTO `t_operate_record` VALUES ('3bcae534cd6e4a8d9c568dfd7113558c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 14:11:08', null, '1');
INSERT INTO `t_operate_record` VALUES ('3c0bb7e9c418451bae9943f4ca8cdc87', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-23 10:35:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3c39f658b9b04898a9f96663e8aafadd', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:06:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3c8d490b143743debe88c58043b9cd4b', '/clazz/add', '192.168.43.152', null, 'POST', '2019-11-24 06:51:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3cc5f4e56ed74a4b9a5c7d6554cb665e', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:34:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3cc8b0a53f5747df9c850da4f12f77db', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 14:22:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3d64cb7610fc4ae6a9495ce8dd7407d3', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:13:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3d7cafea03e942aeb67bf90dd0e6cf37', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:56:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3d88d90c922e496dbd818b7421b12fad', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:36:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3e32d1f14ab34078aa6292f1bd652674', '/role/findAllRoles', '192.168.43.152', '[RolePerms(id=null, roleId=null, permsId=null), org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2019-11-19 15:30:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3e501893a32348f7a76801fa9931bae3', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:17:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3ebfd73677094543b5a9f488fa5a1f1f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 06:48:07', null, '1');
INSERT INTO `t_operate_record` VALUES ('3f2df49060a34a56be06e7e596153121', '/course/student', '192.168.43.152', null, 'POST', '2019-11-27 13:28:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('3f2fc64d74cf4bb5a96d1ec12beedcec', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 12:54:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3f31ba4e791948f18a2cc735d5666c40', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 15:14:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3f3a87f7c98146e1a0e008e24b96b99c', '/user/add', '192.168.43.152', null, 'POST', '2019-11-19 15:30:38', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('3f53659303474c33b845b76a468e58d6', '/course/add', '192.168.43.1', null, 'POST', '2019-11-28 14:44:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3f7f93e608094892be3cf41d7bc1a0f0', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 14:23:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3f83ce977cd44739ba5e0417f14ddca1', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=d, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:23:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3fe87fa75c034ba1bc392d6f35f911f1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:43:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3ff07935380040579f000f98de1f762d', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 12:09:46', null, '1');
INSERT INTO `t_operate_record` VALUES ('4036ad886ea04b208039a5bee0612be2', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 12:48:05', null, '1');
INSERT INTO `t_operate_record` VALUES ('4038d4041f8943d8bc35686efc559864', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:10:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('40537c1a1b0443b39edf3f07b3f02ae3', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 05:47:04', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('4057cbffe0154d41b08ed8aece1d8e6a', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-12-01 08:42:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('408f1b52952f4b4d839ab4f2cc145625', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 09:28:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('40ef4efc37764100b2c4ee1492571b32', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:01:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('41d33141d5224d0ca1159d87eb84cc9c', '/user/status', '192.168.43.1', null, 'POST', '2019-11-28 14:41:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('41feb6e3295b4ae291aa9ad20901a986', '/user/login', '192.168.43.1', null, 'POST', '2019-11-28 14:54:25', null, '1');
INSERT INTO `t_operate_record` VALUES ('4214edd2b58c465da625f31f8d970475', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:40:34', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('421839bcb04f47fab191cb5769f6f49e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:44:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('422fd0ae785c4d43a32bb2d55f7bc334', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:48:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('42fc694bd75d4f87bd3baed3e9e63690', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 02:09:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('430aa32eb0f041cba1b4fbfd910212ba', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:47:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('43224d67d07046eb9ed9c151723837bb', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 15:15:59', null, '1');
INSERT INTO `t_operate_record` VALUES ('436a199797d940b5a64a791189828983', '/student/add', '192.168.43.152', null, 'POST', '2019-11-24 14:23:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('437ebf70146a4b41b3cd06d665848aec', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:41:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4387e312a3b340ec94abdb49691e1b33', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:29:18', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('443a4048dc4d4d9cb8e7bb2e3baad2e5', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:41:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('445bc638223143f3b35b86ab17a970c3', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:45:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('44772842bc374b7a8686e95ebfa1fc35', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 15:34:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('44a93f6e1c2845049b6c5e2d9727d007', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:42:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('44c510376a6246608e384119bef66b78', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:18:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('454fc8f0b3af46ce86fbb390debee96b', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 04:18:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4552c412d74741d0a996fc014809eaa0', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 01:35:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('457482ea7afd4b37952f58a3606e08a1', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:35:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4578d66afa09476f94e005456dfb7013', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:15:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('45a28a97e71f4c708044ef072549ea6d', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:38:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('45c2bdd841924f53bf07c3be1a9c93bd', '/LoginApi/v1/login', '192.168.43.152', null, 'POST', '2019-11-17 05:17:04', '1', '0');
INSERT INTO `t_operate_record` VALUES ('45ed6926225a4b41aa9ec0d5fe0c3d0a', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:22:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('469055e727ee4c7c84b67f2d5376b5df', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:25:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4697db3117e64e63acedec306ddc2a30', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 02:02:29', null, '1');
INSERT INTO `t_operate_record` VALUES ('46bc4c21279f4e5888d860d3f0463fd0', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:08:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('46e1a3fef63d40e1b962aaa3c4a0a4ba', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 02:03:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('46e584a23a774a7cba7a81b16ad9e0e6', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:42:51', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4752c17f5d1544a495059ca712de906b', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-23 14:17:19', null, '1');
INSERT INTO `t_operate_record` VALUES ('4765465c593f4f12aea7b96199091c16', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:37:59', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('477b19cd981e496f93a1f2a1625fa057', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 05:17:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('47bd006efca94af4a884eb636ba39e24', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-28 12:53:50', '4f8f02dff98044ffb7f7dfbc8c57c596', '0');
INSERT INTO `t_operate_record` VALUES ('47c3f80668924967a787d332b5077fe0', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 14:59:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('48025c36ed2742e884472b54c261fbed', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:53:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('484577823d6144eca00f1a83f48cffa0', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 13:20:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('484d98f8560946d0b79770fca8ae752e', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 05:26:00', null, '1');
INSERT INTO `t_operate_record` VALUES ('48cb4ee1252f495d92e4d2cd4cb4f2f6', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:48:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('48cd9ce683a4481b9f0d5ca4757e819a', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:35:14', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('48fca1c9691144ffa6bf2116afef007e', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-23 14:19:02', null, '1');
INSERT INTO `t_operate_record` VALUES ('497dd98689604304a623ac261172da89', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 02:54:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('497e0b7de35b4d03bd284dffd8a8b912', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 03:16:09', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('499c20c0e81b44108bd6488c2e441e6b', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 13:41:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('49a19a9ac8bb4e3095069b13264fe9fc', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:42:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('49a4d78403c84681bd051c1c6423167e', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:01:27', '4f8f02dff98044ffb7f7dfbc8c57c596', '0');
INSERT INTO `t_operate_record` VALUES ('49d30574733b43e9bb1c3c10fc1feed0', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:17:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('49f1c4611e7f4f47baa3baa85963e7d6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:41:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4a0917329f5043c1abc0d59bcf8c3b0e', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 12:51:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4a3afb59f86b4f769df36b9811cc0486', '/user/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@43039c2a, org.apache.shiro.web.servlet.ShiroHttpServletRequest@25e35bab]', 'POST', '2019-11-19 15:02:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4a923fc14eb847c3884b413986227905', '/LoginApi/v1/login', '192.168.43.152', '[admin, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@1a3f217b, org.apache.shiro.web.servlet.ShiroHttpServletRequest@2c657c33]', 'POST', '2019-11-18 15:11:34', null, '1');
INSERT INTO `t_operate_record` VALUES ('4a95ceb4dc4c4cbaaba6ccab2cd4e6db', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@71bf434c, org.apache.shiro.web.servlet.ShiroHttpServletRequest@137fdcd6]', 'POST', '2019-11-19 12:11:02', null, '1');
INSERT INTO `t_operate_record` VALUES ('4aa31dc4d73f4c5980f75efc81d9310c', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4ad1b1040e7544c89fa16f3abbdabe2d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:59:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4af3698267bd46d78e31c400e0ad09dd', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:28:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4af7ea642b4c40b39c5d449750fa7dcd', '/grade/update', '192.168.43.152', null, 'POST', '2019-11-28 13:46:54', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('4b02cc7f8d724cc9ad2da1a1ac883b62', '/teacher/add', '192.168.43.152', null, 'POST', '2019-11-24 15:18:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4b0b94a7ccd04076a64de05e486043ff', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 13:15:36', null, '1');
INSERT INTO `t_operate_record` VALUES ('4b3454a84fba4bda9a0e9d67afea9cad', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@6ab2238, org.apache.shiro.web.servlet.ShiroHttpServletRequest@5af5ee05]', 'POST', '2019-11-18 13:09:29', null, '1');
INSERT INTO `t_operate_record` VALUES ('4b657dede5844124829ec3b9af7f7d66', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:08:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4b8b95533e944f708ebfec01e202fade', '/user/login', '192.168.43.152', null, 'POST', '2019-11-27 13:27:26', null, '1');
INSERT INTO `t_operate_record` VALUES ('4b93d64c338448b2b66dbee1de3a8f8f', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 13:41:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4b9bc0017721463998fbcd16b62bdd7b', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:43:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4c1c3b2781bb4b0d97b07b69e469cfa6', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:05:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4c334829d4ee4a96a3af3ac1d1100898', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 12:53:04', '6289fb4f0f9311ea99ba5c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4d031bca64ca4dc99fc6903a37ef4e2f', '/dict/add', '192.168.43.152', null, 'POST', '2019-11-23 13:13:46', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('4d07a72647404d28bf54a64ffcb9f047', '/course/list', '192.168.43.152', null, 'GET', '2019-11-26 13:03:18', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('4d9be79fb6e24d41afbff11d533095f7', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 12:56:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4db1c219baf74d689bd80a465d8cb32c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:46:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4e574d2e95ba4700b3f5a811c3949a55', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:48:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4f0a60261da443958f895e9820c837f7', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:42:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4f1658070431478ba5dc072309758550', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:53:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4f1838e4339c420d955804125cd3c8d0', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:04:30', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('4f2cbab81b284963a94d4976f0f0c20f', '/user/status', '192.168.43.1', null, 'POST', '2019-11-28 14:37:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('50545053236f44d68d5f2cd0b36b9561', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:52:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('512ee43ab925499e9bd9bb9554b04237', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:39:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('51e87f8c1504427f94e2424be48d0593', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 05:56:02', null, '1');
INSERT INTO `t_operate_record` VALUES ('5206be97af7a4b37b8c397c060dfd6a3', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 09:30:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('520775fe7a30405cbf015e03b8819f8e', '/user/status', '192.168.43.152', null, 'POST', '2019-11-23 03:25:04', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('52cc814ca89545acb1969fe30311f1e8', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:37:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('52cdb938458c4a44afa2d57d04a3ba52', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-21 12:56:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5323d56d4ba740f79ed9d78bb3e724cc', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:17:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('53644f85bedc40df822ede44587073a6', '/user/status', '192.168.43.152', null, 'POST', '2019-11-23 03:24:59', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('537650a2535b45cab9043a54e27f717e', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:43:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5385aa74aa8643048bb2a7756022b31d', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 14:05:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('53c5f07603a746bcb55095272f1cc347', '/clazz/list', '192.168.43.152', null, 'GET', '2019-11-24 06:51:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('53f4d4d2d5274c67a6ea583ed92749eb', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 12:04:35', null, '1');
INSERT INTO `t_operate_record` VALUES ('53f964be1f894198b3c57e142045e6ee', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 14:29:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5424c6dad9ba439c89da6510e3008ebd', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 05:56:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('545077696eca47afbfb3678b10016849', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:00:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('54eb7494767e42c4a380080b49ef8fd1', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:43:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('54fb27e04b2347d6b56477e7492605b5', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:21:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('554eac978f834379a4a25cd1763c20ca', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:24:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('55c8d3bfe46043ec88070bcd2400e4c1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 10:35:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('55e37b94f47c42508d475eaebb0c3057', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:26:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('561a7aa32bc1497c88a45442be8056fb', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:03:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5647482ab2c54bfe8eed3b80a296ff38', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:03:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('572a879b0831414c9aeb547ce42bc9f3', '/user/add', '192.168.43.152', null, 'POST', '2019-11-19 15:41:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('57965b2dc34d4982bf1a4d7ff0c985c8', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 14:59:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('57afe280117c4a13992d5c8311930391', '/course/list', '192.168.43.152', null, 'GET', '2019-11-26 15:10:39', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('57ebd051bb1c42ea9fedef0abf5a669a', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:52:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('57ffcd1ab9184d8ca14c56e9be2b9c39', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:23:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('580386b675b14d8599ad4ba95f65756f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:22:59', null, '1');
INSERT INTO `t_operate_record` VALUES ('585cdc817ee4487e820127a8c573f6f6', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:13:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('585f9a196d8c4254b01ce614931ae99e', '/course/list', '192.168.43.152', null, 'GET', '2019-11-26 13:02:30', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('58993061d94a40d483b471e9443a055f', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 15:16:22', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('58c198f77249430d818a5677b8e20209', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:13:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('58ce31215e25499f85f1f2c62793fbe5', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:09:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('58f9de76671f4326bacb21c7008ee190', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:26:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('58fad4aa98604123ac1a066deacdb71d', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 05:45:11', null, '1');
INSERT INTO `t_operate_record` VALUES ('597ce47ebfd24c8585e1a7b702580b4b', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:06:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('598518da6c81449e998349861e053d99', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 14:56:14', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('59f9b19eaf2246f19251bfd59f41ca90', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:36:25', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('5aa1ac1204774d5d9b86f5fd78cdfcd2', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 12:25:35', null, '1');
INSERT INTO `t_operate_record` VALUES ('5abcd66153c64ad094e0d01841db01e1', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 09:28:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5ac09580b62c4d2d92d86b1e5c89adb6', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:00:47', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('5b476e34b1974ceaa6dc460a362aee62', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 06:01:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5b70c0fce10a4753938404d4df1157ca', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 03:34:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5b992328bd5d445e817af9011fb7d31a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 15:38:47', null, '1');
INSERT INTO `t_operate_record` VALUES ('5c00c38c50c147a39dcce1d1ac3847f6', '/dict/add', '192.168.43.152', null, 'POST', '2019-11-23 13:07:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5c7090494a294d5fad4534efe7085c16', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 13:54:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5c93b60b3a0f4899963bfc879c440393', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 05:47:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5c9652e53b464b26964250f11d5f886f', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:08:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5cc205bca5674dd6b95e477a15510d6c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 02:54:29', null, '1');
INSERT INTO `t_operate_record` VALUES ('5ccd240fcdb74c989aeeb4d102c664e8', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:48:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5d8e5f05f34b47c59bc4222da107a718', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@52d9d75, org.apache.shiro.web.servlet.ShiroHttpServletRequest@1c7f8dec]', 'POST', '2019-11-18 13:46:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5e6250239a8a4ea0b50c2ed94e76eed3', '/user/status', '192.168.43.1', null, 'POST', '2019-11-28 14:40:34', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('5e6d068629dd426faec40b55ff2dd119', '/user/update', '192.168.43.152', null, 'POST', '2019-11-23 14:17:22', '74013ffb091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5e6fafc0acf54a549635b93a8256af39', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:24:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5e71bae0ade04730b50cdb23849edd3d', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:14:43', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5ea108d66794412e95bc1aee1bfaebaa', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 15:16:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5eb20df77cc3440db5ab69f0aed653f7', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-22 12:25:38', null, '1');
INSERT INTO `t_operate_record` VALUES ('5ecf07493e6c4f69b39de26c9dee9c10', '/teacher/list', '192.168.43.152', null, 'GET', '2019-11-24 15:18:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5f12e193ad1b4fd090c0e4b583604c77', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 14:55:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5f2c00f598664c1ea2fd2acba935c677', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 13:43:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5f8dd0e04bbb46a2b7b836add181f607', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 01:34:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6020fbad52344e88b80d0de2910ceee0', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 03:47:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('602d38ea14a74a44b16c4bba9c37956b', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 03:52:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('603a61bb8db947478bd0d30d562caee7', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 15:34:46', null, '1');
INSERT INTO `t_operate_record` VALUES ('60652f1b65e045638e238d391ea92b37', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:06:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('60927348f71f44dea4b984a8318982ef', '/user/list', '192.168.43.152', null, 'GET', '2019-11-28 14:51:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('60fe90a294c74afb9a022afb8585b4c9', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:46:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('61c861b6ded54d2ba3b7cea1ab620d5d', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 06:15:14', null, '1');
INSERT INTO `t_operate_record` VALUES ('61dc59e6cce247aab3386cfc6699698f', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 04:14:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('61f0163a010d4ad3be07d9cb938029f2', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:33:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('62000812091746e9aeafea1b6d6cb9c0', '/user/list', '192.168.43.152', null, 'GET', '2019-12-01 08:41:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('621e8877d3bb42bd88745ff1ff952682', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 09:28:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('62ac43d58bc845549a529dd695ee1e27', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 13:55:59', null, '1');
INSERT INTO `t_operate_record` VALUES ('62cf2792857d4c6d9dd1aa1f6bde8fd7', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:53:47', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('62e9f78ef5df465b92d71506d6fa66b0', '/user/login', '192.168.43.152', null, 'POST', '2019-11-28 14:51:00', null, '1');
INSERT INTO `t_operate_record` VALUES ('62faa5f7d254420a98ab47ea1e1d9c5e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 14:49:03', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('63098ca95e294015adf265609cdea149', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-28 15:08:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('636041dc628e43178f5a84ca2fd6746c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:25:06', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('636bd07fb0fd46b792ded2a34fd37186', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 01:35:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('63771e08069e46c9b1e0d509c7aad786', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:22:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('63f15a9730a244338a80bf22e732cdad', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:47:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('63f5cac952aa47e599a51e1eb0c6da07', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 05:38:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('647e175decb149e6b7fff45d8c0145bc', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:47:08', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('64ce8b4dc4a4451bac1a45cc28ff7a7f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 04:08:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('64d8e736055841969fc988a26fd2df55', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@62ca9c3, org.apache.shiro.web.servlet.ShiroHttpServletRequest@46e319ef]', 'POST', '2019-11-18 15:01:19', null, '1');
INSERT INTO `t_operate_record` VALUES ('65226b25900c417f83764c503a9977c3', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:06:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6568f8f9f791411caa64f8f7f685a5bf', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:49:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6572093fee4944e7aea2d1b1fcad3fa2', '/user/status', '192.168.43.152', null, 'POST', '2019-11-23 03:25:06', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('657c3550d9c44b4493df22bf5d576718', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:15:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6594ec751a5a4041852520cfb9584adc', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:14:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('65a0f97bc9fd422fa3d31dd431ddec96', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:29:25', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('65e6776b91194495aebcffdb115d525d', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:49:25', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('660db650b0894f498c191c4436909378', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 05:49:10', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('663276b2257a4c089ddcc9fbbe13efa8', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 12:18:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('66b1e337c0bd469c8768d86c6c6a117c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:03:55', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('67095715199547b4a93d5b9bbf15cc51', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:20:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6748e6a0c7ca4652b94afb6f0550c2ca', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:37:28', null, '1');
INSERT INTO `t_operate_record` VALUES ('676c13dd5f9643cd9c3d2507a8304c1f', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-21 12:56:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6770f9d4fe824619b3a4a064fee4a486', '/clazz/list', '192.168.43.152', null, 'GET', '2019-11-24 06:49:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('67a92182e83e4dfeb2597ee7d444fce7', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 06:50:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('67b31f5644e244359f1f8bc7991d5891', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 05:42:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('688ba7ac33b64673bb555acc1fb1de44', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:21:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('68b6f9052cfe4f02b1b7883374fee8b3', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 14:53:26', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('68b8c2ea3c624f52af3d3e28e559ab66', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:53:25', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('68efb2c9ec5a462f949e4617f4f7388f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 14:21:06', null, '1');
INSERT INTO `t_operate_record` VALUES ('68f165b61e0c495fbe0af6303c2b69b4', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:53:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('69456e7ad6014ab693340a51338c1944', '/teacher/list', '192.168.43.152', null, 'GET', '2019-11-25 14:58:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6985459f22684343952f0ae95d02b828', '/user/login', '192.168.43.152', null, 'POST', '2019-12-01 08:43:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('69c0839ebf284431a11ee872da37e15a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 13:01:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('69e4e224456f45fdb5a266b73d2eb95e', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:19:04', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('69febdbc6b5f406fb5406c1ca6cec522', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 06:03:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6a44d8bb650742429834b84a12d22cfc', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 12:17:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6a6e2983e3e247b3aafeff858c13159f', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:44:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6af8778772b54c579b5615ea728c3403', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:33:15', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('6b6df9d9e970441397cecfb00885022d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 14:56:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6bbdb800b77c4aa0acaab755e5723bf6', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6bc6c54cdf834cf8a1dd481f2d29b1ef', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:50:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6c10324f3cc0467292e2d7979e99f502', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:01:33', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6c8d772cfcb941908b578e93f549cfd8', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:13:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6ca7369f70a04ccba34734633d2a6192', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:25:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6ced37b094494e61a38c9b1cd4c506a4', '/LoginApi/v1/login', '192.168.43.152', null, 'GET', '2019-11-19 13:54:45', null, '0');
INSERT INTO `t_operate_record` VALUES ('6cfda5cc25674743a4ae4231805b7124', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-22 14:27:06', null, '1');
INSERT INTO `t_operate_record` VALUES ('6d4eacd1dd2c4aad97a2c3a17774d932', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 14:22:20', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('6d4fe011b6854206a959d3851bb7873b', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 13:59:00', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('6d7f746ccc0f457c8e20593e5c9e385f', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 14:15:56', null, '1');
INSERT INTO `t_operate_record` VALUES ('6dc62072167c4e9083356f4ee8b5a8b4', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:26:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6ddec60a368f46219689b3cb245560ea', '/role/findAllRoles', '192.168.43.152', '[RolePerms(id=null, roleId=null, permsId=null), org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2019-11-19 15:29:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6dfb3d61a32c4dbe9786ebd65c4e69fa', '/user/login', '192.168.43.152', null, 'POST', '2019-11-19 15:38:57', null, '1');
INSERT INTO `t_operate_record` VALUES ('6e369d609d3e40c4929c421354ea96e1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 12:56:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6e389deddada4fd5aadab76028bdecab', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 15:36:35', null, '1');
INSERT INTO `t_operate_record` VALUES ('6e9b13cd09034588aeaf60f3cd771f24', '/user/update', '192.168.43.152', null, 'POST', '2019-11-21 15:39:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6f39365797954d29a000ed0c932dbf69', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 02:03:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6f80fa1ea8d040218150e81d9dd5964f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:18:36', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('7055008d3ced424b98abb2397f833c0e', '/user/status', '192.168.43.152', null, 'POST', '2019-11-23 14:20:07', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('706c8bae7efa4fdabfd45494a02c2952', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:08:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('70906379c19944778bb579356b1970bf', '/user/login', '192.168.43.152', null, 'POST', '2019-12-01 08:41:55', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7108a6af7e5c4db88dc987af7b03bf85', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2019-11-23 15:00:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7115e570d080498ab1dc6d7bbe6d2208', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 15:22:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('713a7180bb5b48ffa543794ee054d917', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 09:29:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('713da0327c314937836b8681e23d5a26', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:27:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7168429dbc8a4d80a5f309c09b40943a', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:37:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7239fbac2b8d4cc4a4427af798964988', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:38:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('723a2955695e4888954e2512352596e6', '/user/add', '192.168.43.152', null, 'POST', '2019-11-21 12:56:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('723dc43a1b914b21b1fbc9c6f4160a18', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 09:38:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7248862b6bc44a86a9db25b4662de785', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 14:23:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('728961c8b9d0402491682b61d3849e33', '/dict/add', '192.168.43.152', null, 'POST', '2019-11-23 13:13:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('728991b3a86c4b4580b9c49fb8bf0c5a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 13:40:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('729510aaa4da46a79096a0009250db11', '/user/login', '192.168.43.152', null, 'POST', '2019-11-28 12:56:30', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('72c14074fa47488aabd4e92132a84c39', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 14:52:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('72f6132d64164f438310e3dfb3ad1585', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:41:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('72fc378bb9844d18b04bbc9f2d5fa1ff', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 05:17:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('73338d118be7413384e2eea2114269f3', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:19:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('733af5d3f5ed45b5ae7d1a5d7ae45c59', '/user/login', '192.168.43.152', null, 'POST', '2019-11-27 13:01:21', null, '1');
INSERT INTO `t_operate_record` VALUES ('734d8453668b44d2be1d22ceee7df992', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:16:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('73790acd65e14332937c6a1f4efa9699', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:06:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('739fdd1de41a4ef3abaa16ce8d7e7860', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:16:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('74428b0809674ff9a3aa73cbd42a9d3b', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:23:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7485120aa3d84bf993f7fd85c4977097', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 13:54:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('74a16100d5644ed4a9e30c14f12f7bd9', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 12:21:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('74c15467d0574bc78fbfee272ede5bbc', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 05:08:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('74c7979ed5ba46a8b50c72b4876fe55a', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:11:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('74cc117bd6554e188b4faeeb12e2f8a7', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 09:29:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('752bbd939acc4c0193b4a594121f6361', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:47:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('753dd849c51044cf9851c282cb36ad92', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:23:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('757bd23b2ae34cc091a8ebe2f7838c2a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:17:35', '74013ffb091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('75ded0ed9c5141c6ad45e88016e40784', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 13:40:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('75eced2c463f42f2b75933bc64716ad3', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 15:19:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('75f93b93418b49898fc34a18e3096c37', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:48:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('75fa940395fd426a8b8c15e2797c93af', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:43:19', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('7620b2ef19a34c8db421ffc57b1b8d09', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=s, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:22:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('762444e95be94ff09ec7c9583610a01b', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 12:33:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7697f487503544639a802e9adcf4bf09', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 06:02:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('76a2d6be539c41af9203fa2d6b412fe6', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 06:50:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('76d5d39bdcb44b75b29d537f3024cced', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:14:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('76d7d4b7f90f49628ca4f707e461f6bc', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:40:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('774e9f3abe0a42a9aec155b8754bbfbe', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:54:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('777bfe1aebcd4bb696f1f02304a36ced', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:43:17', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('778ffe0764634c8cb33accb802ca82ac', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:41:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7795fef498a746078f29b150878251d7', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:11:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7798a7e1e84c48e8b7999856e9134ad1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 13:56:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7816d73ddfb54855b4bf6cb33164b97a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 06:02:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('78860ac3ea9a42589edf5f102605626a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:19:20', '7bc5259b091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('788e3dad062b46e2b60308ff12c44591', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-26 12:53:18', '6289fb4f0f9311ea99ba5c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('78ef1b73483841eb875fd935d11dd385', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:12:01', '3e5dfa87593e4a44b8212eb3866aefdb', '1');
INSERT INTO `t_operate_record` VALUES ('7929ff8b59944d24be2485637ccad634', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 15:16:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('792e03d9915943a39b9d0422d833bfba', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:30:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7939941498284366a1420b050507045a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 14:12:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('79860fdf05b64f328a9f7af9f5196c88', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 09:38:24', null, '1');
INSERT INTO `t_operate_record` VALUES ('79c3bda556344da1ba33fdfc0f4cf71f', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 14:52:41', null, '1');
INSERT INTO `t_operate_record` VALUES ('79cab0d33ae34172b74eaccd195ef0eb', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:22:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7a019c695dc14e4ba3dbb8b777de7ed2', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 15:16:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7a0715e56ba543cba4e12a7a0261395d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 14:12:03', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('7a4271c0a9084e4c9ff9b76bf8343bcb', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:06:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7a4d2be52ca14ecb8cdf8a1eb416962a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:24:22', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('7ba19c725f5d4ed98048f59b3bcc29e0', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 05:22:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7ba2ad132d0a4e6c99ae7bc397e99f94', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:47:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7bb146df7088498bb8563fd97ef0f638', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 15:16:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7bc6489b93f94357bd8a233312b0a98d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 14:31:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7bd3f04dd94d4cfabd6a61d0841aa30e', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 03:07:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7c439d0f03eb48adb9b3de8928c5ea44', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 14:05:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7c64a792a923411cb1b9b82af6cd8cc8', '/user/login', '192.168.43.152', null, 'POST', '2019-11-25 13:33:38', null, '1');
INSERT INTO `t_operate_record` VALUES ('7ca4cdedc630474c8b382db58d5c7510', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:02:53', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('7ca8ddb02545416ab0820e55b2f9ca82', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:31:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7d03f2d3d30e4f11978ac14e58b4189e', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 09:28:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7d3a851818544821b85e8b28162f077d', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:36:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7d4d5405486549a8a4568e322f10512d', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 04:21:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7d905df50e6d4e8d8748fab1ba4718de', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 09:30:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7dd6a910bce04b1493b124b1dfe29ad7', '/user/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@43039c2a, org.apache.shiro.web.servlet.ShiroHttpServletRequest@94c2aaf]', 'POST', '2019-11-19 14:53:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7e6bcc78b75749ce8685da8736a7589a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 14:11:28', null, '1');
INSERT INTO `t_operate_record` VALUES ('7e7f670df9554e2c981c18368a2d88af', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 15:23:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7e92a4de2a664af68885b60b1702db89', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:52:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7f029a49634b48e0bea9062ae1ae3f2d', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=admin, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:22:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7f1df00769a94e09887f50dc8d9d5055', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:21:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7f3476dc71384c588122a64701494c14', '/user/login', '192.168.43.152', null, 'POST', '2019-11-25 14:57:43', null, '1');
INSERT INTO `t_operate_record` VALUES ('7f49144134f0431ab445de498d53d3cd', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@71bf434c, org.apache.shiro.web.servlet.ShiroHttpServletRequest@376b7cbb]', 'POST', '2019-11-19 12:45:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7f4bcdda8a8947da9e2668f6e88cc79c', '/course/student', '192.168.43.152', null, 'POST', '2019-11-27 13:07:30', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7f770253eeed4abb9cfa2c33259c6e9e', '/course/student', '192.168.43.152', null, 'POST', '2019-11-27 13:28:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7f87ecaed392421c811425d96c7f5c1e', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 12:15:52', null, '1');
INSERT INTO `t_operate_record` VALUES ('7f9142279244414aba58fbf409f21629', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:32:00', null, '1');
INSERT INTO `t_operate_record` VALUES ('7fef25a870bd41829218569bb995a53d', '/user/status', '192.168.43.1', null, 'POST', '2019-11-28 14:40:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('80189eaca1064cae955dbfb75588ff7e', '/user/login', '192.168.43.152', null, 'POST', '2019-12-01 08:20:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('802e0fef3c46462db28c0ecc5f1b80cd', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 14:29:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8076b50087214b378823322cb814c493', '/user/login', '192.168.43.152', null, 'GET', '2019-11-27 14:02:09', null, '0');
INSERT INTO `t_operate_record` VALUES ('80eba9f0da3d44d9a4dd290d9aba8360', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 13:01:51', '6289fb4f0f9311ea99ba5c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('81391e964a6e4f8b9eb9dfae899bf62f', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2019-11-23 15:06:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('815d01c4e5cb418a9b82837ceb456021', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:17:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('817de6c40c284275ae17974d172c80d7', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:37:49', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('81ed52b0510d42b6aa1c494b64e6c781', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:30:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8202a7e84bdf4026b08e38a986466724', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:27:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8252412e6fef43a09c65260623311db4', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 13:06:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('827188e8a4e9444d9b9a8c1637361f98', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 13:29:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('82b6591528de46869209ec0338dfb971', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 15:36:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('82e9f4231a844753af2359af0ad04e4f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 05:31:05', null, '1');
INSERT INTO `t_operate_record` VALUES ('82f335ec19fc45e486e45e516711e7f0', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 06:51:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('831a54f43f964bb99e9696aa95faa84f', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:54:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('831e438997874659830aa5236151576f', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:43:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('834fab0a4e9b49a2b8cb2c8f9c7ea147', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 12:49:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('835a7444a7784fabb02ab195876c5af6', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:13:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('83d001cc38f64945bcf1bdbe9609fdef', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 13:10:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('83ef11ef59fd41778638ec632c639cf7', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 05:22:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('842e35d5d18a41b4aa4f87f2b26751ff', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 03:07:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('849e95797a044922984d3887b7870779', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:19:45', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('84a5635309284acab90a9673f0215c57', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 02:55:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('84b1af8794d8453882615fa0b1189e08', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('84bb3de1326e4c9098b91784a270cc73', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 09:27:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('84e61c2b71a84b13878595ef9939f8ca', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:31:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('84e8b68bdc174bfda5bf8592e7b822ad', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:23:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('85238f1dc38c4767b5d06e32cef82042', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:32:28', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('85283104b7f242c089b7c040fc4e0eab', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:06:33', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('85522cf5acdb41c09e4caa562c1d7e94', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:43:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('855f29a0f2794e3ea849488b556429f3', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:01:41', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('85712285cbc445a6909ca30578adb48b', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 05:50:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8573c5e8c29b4d6e8a4440c5940d27bf', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:01:46', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('85b485857b28418bbe14df8b6b3623c5', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:09:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('85b55821abca4d1d978c91d38c76d521', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:40:25', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('85eeef45c1c54bf8a4b2ddb8aaf34077', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 05:23:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('85f487340ac948b48f258123d13d0132', '/user/update', '192.168.43.152', null, 'POST', '2019-11-23 14:19:04', '7bc5259b091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8681593be2ba4f44a35ca19b41bdde66', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 12:54:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8688b158541f4210bba0fc3193cd589c', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:38:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('869ece572229497abfaac0823472c7b5', '/user/add', '192.168.43.152', null, 'POST', '2019-11-21 12:57:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('86f911f578334ceab01b753b1e9dd36b', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:25:04', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('87bed08a1f4b4df0bb73e590dfc273e6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:08:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('88c0c3c5aaba4c7aa6863edbc0d3ac6c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 12:48:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('88f683bf6dbb424db6bf003bd2216491', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:13:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('89f41faf38fc459f9f8447d7c6743836', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:59:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8a05bd2a0b6b41148fc56fd2907c8558', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:18:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8a4232d7dbe14803b7c5ef4cf1466398', '/role/list', '192.168.43.152', null, 'GET', '2019-11-24 01:34:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8a9943ca00d7431b98027bc0ead38008', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:23:55', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8aa7a1198141466f84f5c574b7727175', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 13:56:49', null, '1');
INSERT INTO `t_operate_record` VALUES ('8ad2a33f34b94d6a9a938e5bbb55d138', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 12:52:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8af4699662154c3ca280fd07e230f454', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 04:24:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8af47deb29c44f42a9d0753700c7cb87', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 05:48:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8b6ae07fddc74aec8a021e54b9b34561', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:05:53', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('8b7259642e944d36b06fb7ef2ef82a7d', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:49:32', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('8bbc42989b2c44c39a991d9b3b835d07', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 03:08:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8bc86b167d6f43d08a9ba615c439273d', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 10:33:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8c0829617457462d92e2189fff9c089a', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-28 12:53:50', '4f8f02dff98044ffb7f7dfbc8c57c596', '0');
INSERT INTO `t_operate_record` VALUES ('8c433ff26fe8403890e6ff1bae110126', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:18:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8c5cf945589a4f65a52c477067d299a8', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:10:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8cb6c54ce3a843f1887455ce74b30acb', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:26:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8cc13656772447ac8697da28203abd50', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 12:57:49', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('8cd31c9aebaa469fbdb2554309d41228', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-19 15:41:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8cde9f0d7f284f81b28225a2174aeb8c', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:56:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8cfe04545bcc40e48d9a68d1c67fc777', '/clazz/add', '192.168.43.152', null, 'POST', '2019-11-24 06:51:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8d12a972efac448e8b9e531ecf0039a2', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 14:22:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8d219d1cbb964a91a3fd968636e2653f', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:06:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8d39ba865b0c44debc27e44eb703eb5a', '/LoginApi/v1/login', '192.168.43.152', null, 'POST', '2019-11-18 15:11:35', null, '0');
INSERT INTO `t_operate_record` VALUES ('8d3a5c5fc1fc4a89a19dc5fd0ef3140a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-28 15:08:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8d6b3b81dc684e5a88f4ee39f3a69120', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:08:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8d6f268d88d04627861302db20d3f291', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 06:01:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8d7c7c7bb7f04d63958835e0460e51fd', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:39:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8d7cf4f8c4b946909849c55b75eca1d0', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-23 14:07:50', null, '1');
INSERT INTO `t_operate_record` VALUES ('8d7f4465452d4b53b465580f2a1c1485', '/user/login', '192.168.43.152', null, 'GET', '2019-11-20 12:17:00', null, '0');
INSERT INTO `t_operate_record` VALUES ('8df10fd8627040ae9ca5e21cb6de4588', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 05:17:26', null, '1');
INSERT INTO `t_operate_record` VALUES ('8df34ddd82b140edb4bbb6e5867e4183', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:14:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8e52193b244c44f0a1e892ac011456c3', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:19:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8e9f97714227497ea197dea56c4efef6', '/user/login', '192.168.43.152', null, 'POST', '2019-11-25 13:43:04', null, '1');
INSERT INTO `t_operate_record` VALUES ('8eb1c2092e4442c2a53d9b2cfd41d0d0', '/course/add', '192.168.43.152', null, 'POST', '2019-11-25 14:08:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8eb7a5467c494b32ac9e8ce410eb8b88', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 13:55:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8ec925a7f4444dd18606ba78422a4a14', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:23:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8ee79e6798fb47bebb0c8667e22041fb', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:58:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8f170922435945618eafb6713b452e48', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-24 01:34:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8f1bfe65b3b542d4bf8a4e60c680a2f8', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 12:52:04', null, '1');
INSERT INTO `t_operate_record` VALUES ('8f62cbe7c55a4bfa95ec452fb00ead33', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 13:14:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8f9fa5f6b85d40b4bd1e8db84ae9e6e7', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:18:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8fa4f5d8cd0f4c478948fabeba4c50a3', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:46:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8fb8da7e636c4fd0a2596c1890ecc882', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:22:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8fcd3e0cf78645e7901bdfe5b9a23a54', '/institute/add', '192.168.43.152', null, 'POST', '2019-11-24 03:48:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8fd03cdb8f634e10ace5b9463c346aa2', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-24 01:34:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9061a9bccb364e1bafce245aa28543ce', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:45:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('908c0b61b7204abc9c3b8fba680aa500', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:02:36', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('90b9f2b96b0c42e18b6ee3e7575759bd', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 06:50:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('90d6b39fa7d04415b26c5a27ef7ff82e', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@52d9d75, org.apache.shiro.web.servlet.ShiroHttpServletRequest@4e3eab31]', 'POST', '2019-11-18 13:45:26', null, '1');
INSERT INTO `t_operate_record` VALUES ('90d6e75271114b18bde8bf409e113cb4', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 03:14:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9151e9c81f2f4ca8afc1a2005d039fa9', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:44:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('916bde72e8c4455a861ebe1eafd9649d', '/user/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@43039c2a, org.apache.shiro.web.servlet.ShiroHttpServletRequest@492ef227]', 'POST', '2019-11-19 15:01:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('916feec5336842f58d3769759f3bd376', '/user/status', '192.168.43.152', null, 'POST', '2019-11-26 12:53:04', '6289fb4f0f9311ea99ba5c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('91782ddab81c499987b36bc5ce70dfe0', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:45:39', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('91a16c1bb44d4889b518fa3e1267355b', '/student/add', '192.168.43.152', null, 'POST', '2019-11-24 13:14:17', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('91d4b22344ac4577bb4df03264acfdc6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:09:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9240dfb518704793873d732b1be1fd1d', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-19 15:39:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9251535f41334b20ba4c7f94351359c7', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:48:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('929c94ec706f4c5db85e594ef0116ac3', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:04:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('92e45b0200bc4abaac976d016e4cf627', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:27:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('931f8871ffbd4966aafe0532b430027c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 01:33:38', null, '1');
INSERT INTO `t_operate_record` VALUES ('935b6af818f14de4817d807c7c8d7171', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-22 12:32:18', null, '1');
INSERT INTO `t_operate_record` VALUES ('93c7fe100e144d319f7125e7d4f7f0a4', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 04:16:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('93d01a0b5dce49ad92b15638a7a09718', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 03:35:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('94008c57674e4c22895e1450b96dc48c', '/course/list', '192.168.43.1', null, 'GET', '2019-11-28 14:44:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('944282b162bc44fea98c9048e659a240', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('947a42413eb94f6f8da9c4a07de84823', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 05:46:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('94a6d71b9d6a43f29e1f505b68ae8215', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:09:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('94b7aebcbe3d4b70a368d51a575348bb', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:28:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('94df3d81c12c4806a8831f5ec1bdee3b', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:08:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('94efdc2e68ef4261aa168ad97ae59412', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:22:10', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('94fb5a8cc1b543ba96ec7029e345006b', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 12:26:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('952d9448285042c1b0d0e8db00988b9c', '/user/status', '192.168.43.152', null, 'POST', '2019-11-23 03:25:06', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('959ce0d969b945afa50fc70cf55f970d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 12:51:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('95f0a8f5f26a4dedbd5e1ed229a68d08', '/LoginApi/v1/login', '192.168.43.152', null, 'GET', '2019-11-19 13:55:25', null, '0');
INSERT INTO `t_operate_record` VALUES ('96199abb9ff14c1d9ae3bb39b936a5d1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:34:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('963aba8a4c854ccb81833e60a8938624', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:07:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('964ac5c66c34485d823884ac2c9075b6', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 03:43:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9654db66996c42fc82cffbb113bc0d32', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:38:33', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('967edcc8fe674df7ac7d1a74619d3c54', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 04:21:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('969dd205a9184d0aa85e779d04a5e813', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 06:01:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('97006ffbbf18410992a6c5a65d7d1fab', '/user/update', '192.168.43.152', null, 'POST', '2019-11-21 14:15:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('972accceeea84d82887e6a3d91ac2de5', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:13:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9765126eb51e448fb824a008e9cc6235', '/role/add', '192.168.43.152', null, 'POST', '2019-11-23 04:09:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('98e9b1c681644dfd8e93c2e712792b15', '/course/list', '192.168.43.152', null, 'GET', '2019-11-28 15:08:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('990170ec19914e638c1a1e94e0d8f0f8', '/teacher/list', '192.168.43.152', null, 'GET', '2019-11-25 13:49:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9968560547b649fda4568f3eb3925be1', '/user/add', '192.168.43.152', null, 'POST', '2019-11-21 12:56:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9980f9eb0218424bade6ad39a3b21d57', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 05:38:03', null, '1');
INSERT INTO `t_operate_record` VALUES ('99e6cdaadbe24b5e83e4347c3f5c812f', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:41:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('99f27c73095542df9e8a1bcb2b646257', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 12:52:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('99f7afc33e89483aadd9121b0bb70de1', '/grade/update', '192.168.43.152', null, 'GET', '2019-11-28 13:42:18', '4f8f02dff98044ffb7f7dfbc8c57c596', '0');
INSERT INTO `t_operate_record` VALUES ('9a4748d22fd145a59e4c6e25a365f453', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@75fb2e07, org.apache.shiro.web.servlet.ShiroHttpServletRequest@2b4a805f]', 'POST', '2019-11-17 05:19:25', null, '1');
INSERT INTO `t_operate_record` VALUES ('9a6d31aa2e294ba4b8940c28c483730f', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:03:05', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('9a914192a6d545f3bcb8289316421285', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:42:19', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('9a934a14163644b7af2953cfc9cbc862', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 14:26:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9a9a48ffb2174f8786e9cab3262b157c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 14:53:53', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('9aca1e026df549bbbdedd6c32649d7cf', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 14:59:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9af82bafcce94b6087e756cbbbbc1c72', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:54:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9b2fdfa9af3e4187a9b93525d79a5351', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:28:48', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('9b3729755b244ebca8a7c8b26ae50aeb', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:26:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9b9d218643a246f799c55fe0ec59b800', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:30:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9c2e37a132864f068811484f39093164', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:40:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9c606ee0c16641fab56995d73eddfe7a', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2019-11-23 15:05:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9cd4a7ea972a4465b9bf4bfafe7de7f3', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:53:55', null, '1');
INSERT INTO `t_operate_record` VALUES ('9cd5b14f7bfb41bfb11823639f0e58d1', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:04:22', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('9cd9929f7ce64695a3b17267facd4a4a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:41:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9d08d8f3db3f4925a27bd2b2f3e8cc07', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:43:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9d3051d8d02f4d9ebde8e9b8d13d23d0', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 12:57:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9d36c12165304b73b4f5d5a4f01b8e84', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:22:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9d3e2e42fb1d402d8dbbf088ef9a09fa', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 12:48:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9d522e207dcb4679aa43d3178bc85b8f', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:18:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9d6578bf877d4ddcb2f9dbb358c46d48', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:35:28', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('9dad77aa9ff84f9fad4ffb91eb65ccc6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:05:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9ddc0bc2a5f44044a7a0c7d7d821a4a5', '/clazz/list', '192.168.43.152', null, 'GET', '2019-11-24 06:51:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9e04d28cac2b47f4871cdaf1a02fac7a', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 14:22:20', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('9e4264ae3c3a42f881f92c7dd580fe1c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 03:41:40', null, '1');
INSERT INTO `t_operate_record` VALUES ('9edd877520814b2e9d7059ce0bcf4876', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 05:08:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9f08592720cd43dc908158faac817359', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9f44be19740a4e13bc1aba92cb697094', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 06:02:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9f616dac55524ad9886a8f98b169dec3', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 13:41:18', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('9fb262611c6143d280ac7af812445bae', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:39:18', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('9fcc060bb50941238c057b06ac03e371', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:26:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a021546e75894371a762231293de79c6', '/clazz/add', '192.168.43.152', null, 'POST', '2019-11-24 06:51:53', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('a04c6fd352b744a29c0d06a4949f868d', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:31:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a1457a7c03b04aa4bd7e9737bd616a4d', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:34:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a1557a09a2aa4ea4a67cb8a00fee4fab', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 09:30:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a1db9306e98848d49d7ba531b99a3f58', '/user/login', '192.168.43.152', null, 'GET', '2019-11-30 06:01:48', null, '0');
INSERT INTO `t_operate_record` VALUES ('a1ec7cc42f00446a8e02c9eca3695a74', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 15:00:05', null, '1');
INSERT INTO `t_operate_record` VALUES ('a201f14de39c4d4793668b2fe84eeabf', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 04:17:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a2265f368b8245359674327ec08fb92b', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 15:03:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a23f74b66bbe4252a3c729be6d8c62e5', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2019-11-23 15:06:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a25480d13b27440e9cf9825f03799fd4', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 03:05:55', null, '1');
INSERT INTO `t_operate_record` VALUES ('a27750a34b0746c5ac859735fba6072f', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 12:42:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a27ec3a863f3499581ffa6f589e630a3', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 01:35:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a2f5f5ed2a15463ea15cd7a899fb00ba', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:16:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a33e613eb24842579653938472d965f1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:48:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a35130c92bc34aa9b418c43f3d229b39', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 15:17:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a3a5b610f92048e480bd2bf07f89d1ef', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 09:44:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a3ca2bb629524a8c85aed32c84943ff9', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 13:17:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a3f55340a2094858a099480138c49421', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 05:31:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a41f473233e84ceda8227100c0b3a6f1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:48:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a42f15033a2747edb05822774cadcafb', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:14:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a438aba98a28460096766e63d4d6501a', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:41:26', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('a4553d1703794229893e230c98a62a36', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:58:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a485cf53f608423a9293eabe3999c041', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 13:11:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a49306d4b09347fdaf11e490ca8f0fa6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-25 14:57:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a4b47a0837fb47419c4e29b2c1bd17ca', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 12:54:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a51de6b791c64014a4930a4426e8b47d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:06:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a5760a8f18b74ef2938336f5136cd309', '/user/login', '192.168.43.1', null, 'POST', '2019-11-28 14:37:28', null, '1');
INSERT INTO `t_operate_record` VALUES ('a5f2d42dc5f74d5c9309470da331741e', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-24 01:34:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a6488362176d4999b0e94bd905e23dcf', '/role/delete', '192.168.43.152', null, 'POST', '2019-11-23 09:29:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a67090e1ea36499087ac398cc2564268', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 13:19:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a6718aa8c9014dc68417c47824e7b6be', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 02:55:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a70ebad7370a455ea99472f53986d656', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 09:27:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a7195bcbdb124469a35e4983e5d6c9d7', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 13:13:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a727e747f6df433ea074834596df1038', '/user/status', '192.168.43.152', null, 'POST', '2019-11-20 13:44:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a729ba116ca84a8499afb53e2bc25eb9', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 02:53:27', null, '1');
INSERT INTO `t_operate_record` VALUES ('a73184b56f654f43b014f6d9ce1b45c4', '/user/list', '192.168.43.152', null, 'GET', '2019-11-27 13:42:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a73609c96f084714b936428f89bfa612', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:52:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a73ca82d4dc64ca5b894e91b0b1ac3a8', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 05:34:45', null, '1');
INSERT INTO `t_operate_record` VALUES ('a769e0307ff04d78b38554cd6db80e3e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:42:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a79c01e7a7874964a5548f0b8a25c8d4', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 14:56:11', null, '1');
INSERT INTO `t_operate_record` VALUES ('a7ab89e5f1b94002adfa88b31ed334d1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 03:06:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a7b105fdeec54c8992366e157e6eef3f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:28:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a83e438e11f44f1ca452f7c6429381fc', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 13:52:15', null, '1');
INSERT INTO `t_operate_record` VALUES ('a86b27362cd144f1a1ee793dcefdc742', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:46:25', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('a87446a7d1d3441a901b396e368fb529', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 06:50:11', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('a8ca428920ce4306a6b21a0a5d3ad9de', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 13:08:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a8d22e0cce414dd1a1fe16baecf3edb7', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2019-11-23 14:56:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a8db501a861c49c0b6af244aadfe17fe', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 14:52:22', null, '1');
INSERT INTO `t_operate_record` VALUES ('a8db5601c128400a823f9f0af936f544', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 12:48:14', null, '1');
INSERT INTO `t_operate_record` VALUES ('a8db6d0f496c4752b31ed328e3f5dd58', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 13:22:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a8f93aac5ee541018cba4399eab9a03f', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 14:15:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a9028495237743f3a48c00f504d00bed', '/user/add', '192.168.43.152', null, 'POST', '2019-11-23 03:27:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a907ba6d3eaa4b1788c4d9189d51a00b', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:18:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a93aba4cbbd646bd87d3cb7313476c7c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 05:04:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a982ca2eaab34012bc7ad317e067f391', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:11:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a99a1c7c51154ed584228cd2480aef36', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:26:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a9a2630a19484a78800b852fc7d069fa', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 09:30:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a9acefbb76724960803d77c8f5901184', '/user/status', '192.168.43.152', null, 'POST', '2019-11-20 12:08:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a9c26589e10f42b3a97dcc5e6dea6acc', '/dict/findListByDictTypeCode', '192.168.43.1', null, 'GET', '2019-11-28 14:44:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a9c3e94423294aa39c96b944ceaed306', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:45:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('aa06cbc0738a4c12a72df969b2fc1db6', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-28 13:54:11', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('aa1d0077631a46419f0e9ce6d4bd8e8c', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:42:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('aa72619abdaf4886b6c80a230fa81b39', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 14:22:31', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('aac6c74701694325ad1fc15136a2d3e6', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 13:05:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('aae0748878344c7ba080d6e301fa3e0f', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:43:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('abf4ef629d8a492aa239f8f05d6f1f50', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 01:35:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ac89e1168fab439296c39e8224040c20', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:16:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('aca2ae558adc4d0cb3ebf1473d45241c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 13:54:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('acbc99311e4849de93a82a50e18171f0', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:01:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('acc40833d23943e494082ab332c18bd4', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:02:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('acec87f405194e11aabd6594a01d8b96', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 12:09:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ad45312119254b70ad5bca9728ba32b8', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 13:29:26', null, '1');
INSERT INTO `t_operate_record` VALUES ('ad8b3afc367941d69c674245ba110c48', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:32:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ade81d3a84cb44cdaee90ab75ec2a134', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:31:56', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('adf21aed5e534292ad0b59aeb39fd680', '/user/login', '192.168.43.152', null, 'GET', '2019-11-24 15:15:41', null, '0');
INSERT INTO `t_operate_record` VALUES ('ae01ee420fe041d5879b7d7bf26fb8b0', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:13:22', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('ae56baeaec5b41cc837686469b017200', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:47:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ae67a3a474a44af69fdf63a8eee46f04', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 05:26:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('aecafa0692dd49e99d86ee85b4f910db', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 12:51:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('aeebb5a52438481eb1bb6b2999e60468', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:35:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('af39ec437d7d43069b4ee070d833c9c2', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 13:12:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('af4df4f07cf846a88a683ebb976bb278', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@4e7ee7ba, org.apache.shiro.web.servlet.ShiroHttpServletRequest@3f1ef342]', 'POST', '2019-11-18 13:16:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('af64958e8d7748e09f798550abca36c5', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:04:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('af7ce66417cc42c692d52f702b060daf', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 05:48:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('af81984767874b6e8476e898d710f8d8', '/user/list', '192.168.43.152', null, 'GET', '2019-11-28 15:08:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('afdf23a4bccb4c46a04d9f65ff0b69b7', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:34:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('affdafcf008b43cda997dcdb9ebd77aa', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:06:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b022a75429714602b19042c2ed3f8106', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:22:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b0295e72c75b4b4f98661398d97d0e06', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 12:51:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b046e4c8e2f14b4eb183aebf4c224876', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 15:13:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b0a49fba028e4886bcb4408175726a90', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-27 13:07:23', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b0b95a8eb7d0485385d303aab99511f6', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 02:09:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b10313826f37447abb7297219c764b3d', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@44a9d56e, org.apache.shiro.web.servlet.ShiroHttpServletRequest@459bf022]', 'POST', '2019-11-17 05:15:44', null, '1');
INSERT INTO `t_operate_record` VALUES ('b111eaf5b2164a8980ca22da8bfebbc5', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:56:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b117d328408e4033aa3e6e163a3877de', '/user/update', '192.168.43.152', null, 'POST', '2019-11-23 14:07:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b12cab22139549c1aef66bab6c91c0c9', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 09:30:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b152f178eb7941318ffd3da8a8036994', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:06:11', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('b1a3cf7de15f42f587b0238bc2505d97', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:56:41', null, '1');
INSERT INTO `t_operate_record` VALUES ('b2007d89bde8453bbe3a7f03df8d622c', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@4e7ee7ba, org.apache.shiro.web.servlet.ShiroHttpServletRequest@35a14c6e]', 'POST', '2019-11-18 13:18:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b25b63c9083045918cbb1f030712b6b9', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 14:08:06', null, '1');
INSERT INTO `t_operate_record` VALUES ('b2da6153a73d4e88a186295bbb0fa0ed', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-23 14:17:51', null, '1');
INSERT INTO `t_operate_record` VALUES ('b2e0bd8ce5f94b1d854b575f22e2447c', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:07:25', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('b3069314a66b4f53a34feac6f5726104', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b30d1280ceff4f3fa0bd4f85b6a2e62b', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:16:28', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b38fb50d343441f5bfd8647c1ece3406', '/course/list', '192.168.43.152', null, 'GET', '2019-11-26 15:10:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('b3a405a25f27452aae374be00128a2fe', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-01 08:42:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b3bcf42e8117462fbd78c1c7d05a8412', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:24:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b4d359e824774b5593bd8ab44039a850', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:01:11', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('b4d3856b1cfb4b15b77816d698a3232f', '/institute/add', '192.168.43.152', null, 'POST', '2019-11-24 03:42:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b519772f086042fea3a9f586b1a38df2', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 09:44:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b5336edd97464c448ac40fe43813e6ea', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:02:59', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('b5452cc0074a43729be34d659caf3ba4', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:26:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b565286e9690417380a679e601abcb09', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 09:28:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b589ca41d7d1416b9b6f868b41c82045', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:08:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b58fbe5cc2c547db9951e672ee03d5b1', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 06:02:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b5ad98c3fafe47dabe40c1c27b0eb793', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:07:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b5ce39084eb84824af514c2bbecf8d89', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:59:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b63925ef0d0649bc91ee531b36dfa74f', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:34:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b63f26e4fe3c47b791140e23d8237bfe', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@67b2cf64, org.apache.shiro.web.servlet.ShiroHttpServletRequest@26422d0b]', 'POST', '2019-11-19 13:58:58', null, '1');
INSERT INTO `t_operate_record` VALUES ('b64a7e6983f44dbc9697f97558d39b7f', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 04:18:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b6ca11fb73e74125af00eb0fec88c818', '/user/login', '192.168.43.1', null, 'POST', '2019-11-28 14:42:50', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b6ce0ca3c6304973a2771e2825b586b7', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:36:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b70d5c13b613444c9bef8f5268fd83df', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:09:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b739b56269d547eba8f9d4e79e21d8d1', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:52:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b748279bc62a4721b2bbad26d3745c8a', '/user/list', '192.168.43.152', null, 'GET', '2019-12-01 08:20:46', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b760bca9631a469b9a54dea8a03eaeb3', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 13:08:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b7ba9cad8b0849e283a7f34dc4e20d9d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:41:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b7d76c4fd4a34bfa9cd2a68524436181', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:35:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b7defa52dff64bf7b767cffacde5544e', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:41:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b7fe39f201eb49cd8dc87e93754c8b2c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:17:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b8678a08517047f389c11f8e4fd7dd6a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:27:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b86983abdbfc41ae86b5686dd666d140', '/user/login', '192.168.43.152', null, 'POST', '2019-11-28 13:54:07', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('b9185e365ac14bc9a073ea1135ab1045', '/user/list', '192.168.43.152', null, 'GET', '2019-11-25 13:33:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b91cfa066be4428b8979c6b8075494b0', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 13:07:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b942b923abc74644aefca571f58ef60c', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 04:09:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b983d0d653654c36a2c8354e19b41ae7', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 05:22:59', null, '1');
INSERT INTO `t_operate_record` VALUES ('b98cfe649bf84e6c9433cce9eb383151', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:24:01', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('baac28f453d848b59ba0d317594a7538', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 01:35:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bad4b690dfe741d497c2896606b8e611', '/user/login;jsessionid=F3A8D0EC34E47CC5EE2B33F38456F396', '192.168.43.152', null, 'GET', '2019-11-21 12:58:17', null, '0');
INSERT INTO `t_operate_record` VALUES ('bada17effed14556a0b4a6eda838d673', '/user/update', '192.168.43.152', null, 'POST', '2019-11-21 13:58:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bafc285b9ca545bf81f9fc955946405f', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:06:27', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('bba4c216ce92462fac097250880dadfa', '/clazz/add', '192.168.43.152', null, 'POST', '2019-11-24 06:52:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bbc5e084de2941f5b7aa18729c99fa1d', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:31:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bc20f457dd184aa9ab2b28773484f675', '/user/status', '192.168.43.1', null, 'POST', '2019-11-28 14:41:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('bc34284a8edc48e18230b76cd3ddc06b', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 15:13:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bc45f43577114121aa8e04e5eed836c6', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 13:44:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bc4b073383a2456394fbee89857e3a8c', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:30:45', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('bc5602b28faa44c58a2bc3a6477ac4d7', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 06:49:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bca8ee72761a446b81653112858e4d04', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:14:22', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('bcb70b0f74094d9394388aa58b8a0d0a', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:49:20', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('bcd2f88481064b08903c2948b1cf25d2', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 09:28:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bcf28e8f9eb34e08b019a18f94f2cd3c', '/user/status', '192.168.43.152', null, 'POST', '2019-11-24 02:12:16', '3e5dfa87593e4a44b8212eb3866aefdb', '1');
INSERT INTO `t_operate_record` VALUES ('bd48ae3bc86143378884fee43806039c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:06:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bd50995a921a4cd9a071512123a8f084', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:32:08', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('bd56414e8ed8427583f9119cf2e72cd2', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 05:51:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bdf57dccd52e4db09b28b247144b405b', '/course/list', '192.168.43.1', null, 'GET', '2019-11-28 14:43:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('be4dde948ca54f2e99116b8d56f402f6', '/student/add', '192.168.43.152', null, 'POST', '2019-11-24 13:14:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('be721ada09604620b59d3225ad00cfef', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:43:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('be9a03b462b942dc8583fa3a12932a3f', '/student/add', '192.168.43.152', null, 'POST', '2019-11-24 13:02:31', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('beef842d762741ec82b0dae6a5718fd4', '/UserApi/v1/editUserStatus', '192.168.43.152', '[User(id=67eb71f1091911eab9205c93a27933da, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'POST', '2019-11-18 15:21:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('befa1d641e494198ace10a78e4f70b3d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:12:17', '3e5dfa87593e4a44b8212eb3866aefdb', '1');
INSERT INTO `t_operate_record` VALUES ('befe5f7cb56c466ca807661d1ba4525f', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:24:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bf17c444c72e4eafa06c18b238ea71b6', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:00:20', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('bf220ec401c94fe991f997eb4e4b6040', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 03:06:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bf25a67925b14c33887c623759f74db4', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 12:19:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bf30cc8517c24f53827e4d094482c552', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:24:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bf665de914404deca04f962c2f8b35dc', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:39:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bf700681e3604c81bd629b1476f95126', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 05:46:10', null, '1');
INSERT INTO `t_operate_record` VALUES ('bf9ee105d5214fbab7222e159318a782', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:06:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bfd4803269b249d1aec2b99152123b0f', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:56:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c0152fac57cc46778e4e63e65da3fd15', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 14:18:26', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('c031b2456703490099078039c5a12fbb', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:46:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c0572243a255479fa5aa6acf38462436', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 03:43:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c05ff5f614774854858d29cae5d34e43', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 14:27:21', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('c07b32ac2fe243c2a76790cdc4ae6b9a', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:50:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c089dba8e2c94196aefaba7e7c621b16', '/user/list', '192.168.43.152', null, 'GET', '2019-11-27 13:27:29', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c0948a8e4e294d25aade2a36f92ceac6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:19:46', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('c095c272ff894c4fac8bba46f242ed2e', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:17:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c0a3494291bc4ec5a5c3954737acceae', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 12:57:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c16d14e75083417fb5fe5ef27745182a', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 14:53:52', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('c18e8ced27b7465e834df9b03a1c3bd2', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:00:47', '4f8f02dff98044ffb7f7dfbc8c57c596', '0');
INSERT INTO `t_operate_record` VALUES ('c207b9adeda544de83da6ccc27209241', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 03:35:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c22a1882dd28424ba70bc89c8498d0d2', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 03:42:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c26b5ccc72bd450d91c3cbe533335f15', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-22 12:01:50', null, '1');
INSERT INTO `t_operate_record` VALUES ('c2b3a29374ef43a38208a76b1dbed712', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:05:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c2cc0a198dd44cb7abdfa0d6245718d5', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:08:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c2f33bd981ef471ebeb5b12088e555d4', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 12:51:20', null, '1');
INSERT INTO `t_operate_record` VALUES ('c336b9870afd43818df4b7628107eec1', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:27:39', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c390076df16240c79c8cc6f7b08682a9', '/user/login', '192.168.43.152', null, 'GET', '2019-11-24 02:52:39', null, '0');
INSERT INTO `t_operate_record` VALUES ('c39afe42bff544b781e178b868c6957e', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@4e7ee7ba, org.apache.shiro.web.servlet.ShiroHttpServletRequest@40b90005]', 'POST', '2019-11-18 13:12:34', null, '1');
INSERT INTO `t_operate_record` VALUES ('c4b632974cb04fe080c9d53281dde874', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 14:31:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c51b299a223542c387674d1fd0597b53', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:54:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c58b349c8fc64b9baf8793a3b9e8a0d8', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 06:48:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c5900f64191346708e9e65e7971b0858', '/user/status', '192.168.43.152', null, 'POST', '2019-11-26 12:53:04', '6289fb4f0f9311ea99ba5c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('c5d2d7e4bc7047cb933dbced6a0b8133', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:33:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c5ed0654acec4936baf07581146cdb7e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c660d587fb9147818a11b5924e49ea84', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:39:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c6655df911f54384a96c8973d22e58d5', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 09:29:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c66b097fe3a4461298d918edc4053fbf', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:18:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c66ded7364674a3fb644656e04fa2c98', '/dict/findListByDictTypeCode', '192.168.43.1', null, 'GET', '2019-11-28 14:43:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c709f57a6b3d41bcbe47a7fcda99f4c2', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 06:49:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c71b183c1ca449748d57e8eef0d6e472', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@71bf434c, org.apache.shiro.web.servlet.ShiroHttpServletRequest@65bd8fc]', 'POST', '2019-11-19 12:42:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c733faaec3f74df0afe07b309b7f8936', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:06:43', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('c745e85af4424a98823a7cef4e7455c8', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:47:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c751eac582034746b3fbafef283232a8', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:34:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c774d4f4252a446aa38b5bd633ae11a8', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 12:09:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c778dfb5ca1c4a9bb90b62d2ff7d2281', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 15:16:21', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c7e02be7117c40fc876cc18ca5c38739', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 06:02:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c8371c6083814bcdb33207c1b9728ba1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:07:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c85fe2f12cae4055b052dcf0e9cc3e81', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:40:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c866184d4f874be980bb979610892f5f', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 13:01:31', '6289fb4f0f9311ea99ba5c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c87a234203154ff99943ab5c813e1042', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:08:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c87b38750d5b4f37b0f3ccb127ec817b', '/student/add', '192.168.43.152', null, 'POST', '2019-11-24 12:54:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c88283be96fa4817a8221c35e91592ed', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@62ca9c3, org.apache.shiro.web.servlet.ShiroHttpServletRequest@63db1a9d]', 'POST', '2019-11-18 15:04:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c8f4e1823ac649d9b24985737463c449', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 14:15:14', null, '1');
INSERT INTO `t_operate_record` VALUES ('c917610f238847709cd784b0817c0940', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 06:51:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c9177b6236ba4a15b5d0f356bed18231', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 04:09:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c97980a5eaca4232983f0778a6a12992', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 03:27:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c9b50eb8ff8d4b5d9393e8d07a6d1242', '/user/status', '192.168.43.152', null, 'POST', '2019-11-20 12:07:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c9e0fa8ec6a24fc49ae0ea090bacb118', '/UserApi/v1/editUserStatus', '192.168.43.152', '[User(id=67eb71f1091911eab9205c93a27933da, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'POST', '2019-11-18 15:21:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ca02fac01d3c4430801e7708cedab255', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 12:01:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ca041eef6cb34aec9aa453ee9a02b917', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:23:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ca8580ec4bef4b94908663d4ef238807', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 14:07:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ca87483468cc4b409f2019d7268c1c2c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:19:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('caa3892619a5487aa35c006719e40c4a', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:35:19', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('cac6e330004345b88cbe122129496c36', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 12:49:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('cb6d1183a3b141899124332eedc8a156', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:06:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('cb74f3dfa00d4c709b3b085d10d6919b', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:00:56', null, '1');
INSERT INTO `t_operate_record` VALUES ('cc6bc6843f5f4b71b494a8530b9d7bd9', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:10:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ccd9e17efab342ddb2da43c1be49d0b7', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:21:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ccde6962c7a14afead18032331f4a788', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:42:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('cd0c0b23e4504916af65a79fff211d5c', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:28:30', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('cddb009cafac477d84dac55525b3f92a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 15:13:46', null, '1');
INSERT INTO `t_operate_record` VALUES ('ce64acd51b514cf7a22f5c690d3117cf', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:57:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ce74a709b04249748622d97b3fef5674', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:18:53', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('ce8f431496484b42a3ff0b8fe9a9c775', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:04:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ce96966bb03b4e7886863f728b16d66c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-27 14:02:34', null, '1');
INSERT INTO `t_operate_record` VALUES ('ce9b8e9384064751ae59b505007a30e5', '/course/add', '192.168.43.152', null, 'POST', '2019-11-25 13:43:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('cf23c09f504345b5af8c2ac784256ab9', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 13:20:55', null, '1');
INSERT INTO `t_operate_record` VALUES ('cf7e122d33da475ab3ce42a092b82176', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 13:52:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('cfdf0e1868714f5eb3a5620066fb8675', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:18:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d0570011e9c44ed2b2a5db9271854a7b', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 13:08:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d05b9356fe734150a414888151d9e0d3', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 01:33:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d0837c4cc85d4b998bad7bf2926fb89c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 15:36:17', null, '1');
INSERT INTO `t_operate_record` VALUES ('d08b9d23539e4c3ca0bd48eab1770318', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 09:31:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d0d4afc757934bb2a6d41e164ccc35ac', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 05:04:29', null, '1');
INSERT INTO `t_operate_record` VALUES ('d13bc05cc6a042da82d15f8008b18763', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 04:16:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d15254a2641342a8bc2e18103a9426af', '/dict/add', '192.168.43.152', null, 'POST', '2019-11-23 12:59:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d18512d87a5b48fa99fd5cc108853d97', '/teacher/add', '192.168.43.152', null, 'POST', '2019-11-24 15:20:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d19c0eb6114444abb99bd26f56a44e26', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 14:21:09', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('d1c7743a863e4efc995f1940bfe445ac', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:28:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d2019ffc6f074175b1e5a43d2aab4860', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:34:38', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('d20c1bf76711437a9dc472afaf4d1ae6', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:29:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d23b6dca68984b86a05135ab0ef1bb0c', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 04:14:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d269244db19544058dadda85b9b0a0d9', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-24 01:34:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d28d65bccd9340839f48c96ae68f1285', '/dict/add', '192.168.43.152', null, 'POST', '2019-11-23 13:01:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d29f4e4c31c74beebf60dca5f2c21510', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 06:15:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d2a41c079e004ffe9372034c954f7d18', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-23 03:26:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d2be9a88fcd640ebbc9efc29be7f2e30', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 13:13:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d2cc51cbeef64ec8adf59b627651ff4c', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:04:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d2d5ce7a37474b558b53b232bb7a1b59', '/user/login', '192.168.43.152', null, 'POST', '2019-11-28 12:53:15', null, '1');
INSERT INTO `t_operate_record` VALUES ('d300000768264df387befc3d84cb5e8b', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@71bf434c, org.apache.shiro.web.servlet.ShiroHttpServletRequest@6ecf0afd]', 'POST', '2019-11-19 12:19:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d307dcffd77f4bfe9dca50c13130dba8', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:55:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d34bb9ce7ed44e71ad7250f0a6ecb5d9', '/user/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@75ca9eb0, org.apache.shiro.web.servlet.ShiroHttpServletRequest@6355ebe3]', 'POST', '2019-11-19 15:12:35', null, '1');
INSERT INTO `t_operate_record` VALUES ('d358a539534a4c84a6583f17679a5544', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:53:50', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('d378ea0c26f54f63ba05d9ff1f5e498e', '/role/add', '192.168.43.152', null, 'POST', '2019-11-24 01:34:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d385095b365840c39112e0f105863d0e', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 05:22:24', null, '1');
INSERT INTO `t_operate_record` VALUES ('d3c8355e0a8549d9b0706f61ae3f7763', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:11:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d4abce1845834008b8512a00ca6073db', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:29:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d4ad55e6dc2e4a19a889a7343403c87c', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 03:43:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d545908ff9884e68827a64b0619067e5', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 02:13:01', '3e5dfa87593e4a44b8212eb3866aefdb', '1');
INSERT INTO `t_operate_record` VALUES ('d5a82145f4384893ad235332c3156d6c', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:27:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d5de965a279442e1a6c6aeef7c3b5e1c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 05:38:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d5e4caeeb00f4635bce2fb88c7349987', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 06:48:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d5fe001839e0478bb9223c6501d4c68b', '/teacher/findAllTeacher', '192.168.43.1', null, 'GET', '2019-11-28 14:44:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d61f9597028e480fad2e2175f49e3c83', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:37:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d63b23e0941d43eb890887564718c5e1', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 12:56:09', null, '1');
INSERT INTO `t_operate_record` VALUES ('d64ff846c4ce40d1a7151952cf254a24', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:20:08', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('d6933417a0e344d9a136150cb2265a66', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:28:01', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('d6d2cc43773745bbbbfde14fa7b3705f', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:34:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d701436204b94c888011f34dbb081077', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-23 14:19:33', null, '1');
INSERT INTO `t_operate_record` VALUES ('d709312ff9904777a996c1057f2cc2a8', '/user/login', '192.168.43.152', null, 'GET', '2019-11-30 05:24:30', null, '0');
INSERT INTO `t_operate_record` VALUES ('d723fa16c6e64f1c802e176ebe96ad95', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 10:33:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d729390fa70c42479fea32f98638e611', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 04:06:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d73d6b8b24284116a74e6015535e2d88', '/user/add', '192.168.43.152', null, 'POST', '2019-11-21 12:56:53', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('d74c71bb78694186a077db49bd4c7558', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@4574da91, org.apache.shiro.web.servlet.ShiroHttpServletRequest@34df2bed]', 'POST', '2019-11-18 15:19:59', null, '1');
INSERT INTO `t_operate_record` VALUES ('d77e08e1a4e04172b13da7162dcf3791', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:23:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d7834edbd6624ac5920256d82495db77', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:48:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d7a715fb254640f6ae14577560cae3c7', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:08:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d7a80210323a401aa5f7edac95bead9b', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 03:35:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d7c79ec553c146a4a5a746a02d446772', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:56:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d80bf4777e4645ab85369c6715d4c435', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:52:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d8565510785048a68c51adcf7f5f4382', '/course/list', '192.168.43.1', null, 'GET', '2019-11-28 14:44:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d860dd1de40d45a198ae5c1f285c8df1', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:08:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d8a34b2db6824adbaecb62ece18adb90', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 13:13:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d8c07272cd874f7aad2b69d91cda5b55', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 13:58:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d8cb71546b48401fbdb69e0b667726ef', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:06:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d8d748d9a4d441b08191abee05e640f0', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:35:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d8e21fc6a03a4a4f8ffe78e4ece91586', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 10:35:03', null, '1');
INSERT INTO `t_operate_record` VALUES ('d90e3d53910a45c5a3d363555e51a172', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:33:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d9402458f70c49da899845aad1160f5c', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:46:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d94ff116383d45f08deac930925e58f4', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:34:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d97d7a83d1074c9e8e8b7d5fb1088909', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 06:02:28', null, '1');
INSERT INTO `t_operate_record` VALUES ('d98408455f46462b896ce40d77294ff2', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-24 14:21:54', null, '1');
INSERT INTO `t_operate_record` VALUES ('d9ad28611ab842c4bea087aeeb91d054', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:49:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('da10820e49484038a1392195d51df46a', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:41:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('da55458ea7b94550874c9ae7cc7749e6', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 15:06:14', null, '1');
INSERT INTO `t_operate_record` VALUES ('db0c2689aa684cd5b43d94837faeb519', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 04:11:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('db306e35dfe84391bee09c8191748ed9', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:24:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('db328fcaea094b25bc8c4e0e49ac96f4', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:19:25', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('db68435e3cf74219989d442b203fcfd7', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 13:21:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('db783bc23509404a9d8591879f15e704', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:10:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('db9af1056cd1464094ecf3a35785d1b3', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:46:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dbe339b6defb4b51a73f73e1fe3fd96b', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 04:24:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dbeff64149704494a76c67273cc5d042', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:52:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dc14302a85cb4410abf7b5854fb4bd91', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:02:34', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('dc17aa311ebe4c01a71e85233cd562bc', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 14:11:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dc4852ecf1774185bfa3d5c6cb994ec9', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-28 12:57:26', '4f8f02dff98044ffb7f7dfbc8c57c596', '0');
INSERT INTO `t_operate_record` VALUES ('dc5283531d84474889af37726d94aa9b', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:15:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dce663e6dd1342baac2a166284622f50', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 13:11:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dda3d160a0ae48caa9a4067caf075f4a', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:19:34', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('de023a96630c4087b875ba95f4601032', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 14:28:32', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('de0a5e75b4bf469e807626499edaae8f', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 13:21:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('de108875c8a34bc4801d1f75ad7814a0', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:06:03', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('de60a86ab7764db59e9c4d5aec69e0e0', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:41:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('de7e0abeeaf44a4c80c9db4bbfe15f20', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 09:28:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('de92605405bc4fee8b08dab52a918bc4', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 14:56:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dee38b9cf4fe41388d5dd6fee6c205d6', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:29:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dee96996c0d243d3bfad942e89c891d4', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:45:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('df30583c611f4d03a5c30a3bcc0eda4c', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@52d9d75, org.apache.shiro.web.servlet.ShiroHttpServletRequest@7ec32363]', 'POST', '2019-11-18 13:52:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('df3fdedfed414dcf8e31c059780a71d7', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 06:48:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('df478cf6f257486b86d2a709bdbc1b11', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 04:09:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('df66c8b0244842b3a3f03717512886b4', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 13:29:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dfb7a242434d46a2a3b07b3947d09bb6', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 13:43:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dfd071d6947047f0b14088e3bf0b8f11', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:08:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dfe16e54907c4fefb5c7d143ef97c6ae', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:08:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e03da21c41bf4f7dab5b2a6d99ffb218', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 03:35:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e05441ebf1214b92919300a4162d84fb', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:53:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e076d3d5ce864872b00844801613e63e', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:11:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e0a6f24fd1a74e81a956280d8f1915b6', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:26:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e0aed882b04f4256be387653c9c784ed', '/user/list', '192.168.43.152', null, 'GET', '2019-11-27 13:01:26', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e0dac56465a44bc5afbeeb9a15f1ddcf', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:49:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e0fed95d673f4071be0eb36655292877', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 13:01:16', '6289fb4f0f9311ea99ba5c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e1139e6fc27b474385f01e9bcffafd8e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:10:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e12a7e187a544c3ca152fdd1b007a589', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e13a8b191651400187002f86ccc812bf', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:55:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e1633eb3ff3945f686d24b1199b5c497', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:32:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e1afd49bab33416285dba15d58e9a8cc', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:23:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e1ebe3e8563545a8aa44312d89d24201', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:40:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e20606257538498a85fa97ac7c96534c', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 05:49:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e21504754f6b40359e1d5629f14eba0a', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:05:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e22c5f608551476b92e5c9633c76c461', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:12:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e2ab93c7e58040e6808ff4962a959e33', '/user/status', '192.168.43.152', null, 'POST', '2019-11-23 03:24:59', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('e2c9da81a00445a186088bcf1e431bad', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 06:03:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e373c321f77541e9858bc28a2a9c9c77', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:49:42', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('e37fc6e561614b2c879d2cf232a8a59e', '/user/login', '192.168.43.152', null, 'POST', '2019-11-27 13:42:47', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e3bda459a3e4488fb5102b6f1a85177d', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 14:11:18', null, '1');
INSERT INTO `t_operate_record` VALUES ('e44976ece08e422d86802a840ee39d1b', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 14:55:21', null, '1');
INSERT INTO `t_operate_record` VALUES ('e4635fd105db4793a314c4e11be3e7a9', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 15:05:00', null, '1');
INSERT INTO `t_operate_record` VALUES ('e4b77e221b9a42f3b77a8bbecab735e5', '/user/login', '192.168.43.152', null, 'POST', '2019-11-28 15:08:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e510af04702f488e96c7918152b0e2de', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:12:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e5188d2857ee4e019ce9cfb860da18ea', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 14:28:33', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('e5c6781354e24e8985c499e1c878998c', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 05:47:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e6335af01bcb4a9d84383effe213755a', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:11:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e645d318746a474f8196d84f88c169c4', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 09:26:51', null, '1');
INSERT INTO `t_operate_record` VALUES ('e69cdb3b3164468595b4f6b9d2c8ecc2', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:48:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e6bfa3496db04d8d97abb1352c882863', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:20:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e6d074580eef4cc3a80fa7291e3dca77', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 05:40:41', null, '1');
INSERT INTO `t_operate_record` VALUES ('e6d0f21a8d6448c08f792bc0668f1df4', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:15:53', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e71138d371d64c689076b95b920e0424', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 09:29:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e73d6ec303d043669233e832da73fee5', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 09:28:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e766e1f76058480a999507ab4ad984fb', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:17:52', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('e77f9f546a484dc79ce61c4b8b467694', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:18:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e7a86aac268742e2a0c4c8fd3ada6815', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:53:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e7b704c6997f4bc5b17a1a0846c9e1f6', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 05:26:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e844518a56d7417abd0d0e20eee620d0', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:15:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e8779fd10f74497fafdf50213e489f49', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-19 15:39:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e88b40c0575a4ccc8eaa3c77f9303cf3', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:32:11', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('e89466056c3b4c99a3e956b4715cb8c2', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:34:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e89b0f48bc864195a928eb5ec29322a9', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 14:56:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e8ba5c4343994129b10a680255040af3', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:50:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e8cf0f2d7a494a7bb417f8c348732654', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:51:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e900ceeedda9495092fe49efe16b85ac', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 12:49:42', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('e93bc8e5e15f4492af27e45b6d1d98b0', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:55:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e963c87c03be48d2bc4fb3deecf97cc5', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 06:00:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e9e6d62dc5ac45a1a7e8caca962504fa', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 13:14:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e9fb06fb1ccc4a4d9199431c6aeb1d3f', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:52:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ea31743a7b56444b9de4472da98d851c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 15:06:15', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ea31da37768f41c9b6d627ed3cb8ed54', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:12:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ea582355fdef4d61820bf4b388401277', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:17:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ea814696cabf4decbaed3ac456487acb', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 13:13:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ea8292fb475348a2820d9442bb780626', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:45:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('eab35145be234ec0815766289970cd06', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:41:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('eac1b30374154c5badab8095d5fff970', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:20:12', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('eb682f8738d44341bc5635fd85ca970e', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:20:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ebcbb50c8dc648ba8a8a0176d4450bd5', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:48:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ebd5b7310be54655aecf8046bca2c074', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 12:54:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ec10f56915e44dfb8340b38d31e4ef7f', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:37:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ec11280a3f9a4fddb3c286470654b5cd', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:24:59', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('ec53fb54c5b24e03bf8fc26cd24226fe', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:29:24', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('ec70a1fd2a7c4cd0b1a9a2c63ed41775', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ecda2757a4e5423db2a2f0af60fd5efa', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:06:28', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('ed1f0811976147498a0ec5a2c13a00c9', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:27:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ed4504050fce4bc2a40168d38cb240f1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:57:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ed65916e04c5409097a9a8ef80a7a952', '/LoginApi/v1/login', '192.168.43.152', null, 'GET', '2019-11-18 13:44:57', null, '0');
INSERT INTO `t_operate_record` VALUES ('eda195a74504481788a6feb17095ffc9', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 13:39:35', null, '1');
INSERT INTO `t_operate_record` VALUES ('edf247a05bc048b1a40bc63e000cad41', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:46:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ee08afa0097b4835ad3e96cc496d7482', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:44:11', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('ee383ef1d31e4c8f89021b1c118a6441', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 13:01:15', null, '1');
INSERT INTO `t_operate_record` VALUES ('ee7fdd91be2d4857ad681f5198625f1c', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:05:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ef8e40c1e90c4c3ba1a3bd531522b706', '/user/list', '192.168.43.152', null, 'GET', '2019-12-01 08:43:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('efa829c4c1f142f598adef1522b87e63', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:09:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('efb47d23fe9641269d00743b484d5ad1', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 13:21:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f00020e0168743099a0c501c5cf92ca6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 09:27:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f028f89da81e495689a5742d7138a3ca', '/grade/update', '192.168.43.152', null, 'POST', '2019-11-28 13:49:31', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('f04fb25fd15749c9a7cba1df1cc5204f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 13:32:55', null, '1');
INSERT INTO `t_operate_record` VALUES ('f07c1291db7546ef9e0ec1f6768e8e3b', '/teacher/list', '192.168.43.152', null, 'GET', '2019-11-24 15:16:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f095da3b039744769ec8d332b7602479', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:32:26', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('f098135120eb4ff7bd7928edbf9c7b87', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 14:55:07', null, '1');
INSERT INTO `t_operate_record` VALUES ('f0a02f4b48d24b75b6653d79b8845293', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:02:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f0a1f600cb8e444697c98e4ab2c61a23', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:08:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f0aacfdc34a3448b98069ab8514e8450', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:56:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f0eb01bd967346deac654cfeeada6d18', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:31:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f100654041af4d6bbf44309b53bc37b6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:02:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f1242c6c6b1c4736a57ae341b194a610', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 03:52:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f1740b466032499a8b77c5004117e090', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:29:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f17bc4620d3e471f85cc7992409a05ee', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 03:15:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f1bdfdb65f1c4477a9ccbc7b381a135f', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 04:17:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f1c12f45bb9e4a99b1570fd21979d991', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 05:47:35', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('f1f1ccfcbc1349b6827e62e86c2825a1', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@1a3f217b, org.apache.shiro.web.servlet.ShiroHttpServletRequest@491657f4]', 'POST', '2019-11-18 15:11:44', null, '1');
INSERT INTO `t_operate_record` VALUES ('f21cc80df3f844939ebc53a6a1e91ea2', '/user/add', '192.168.43.152', null, 'POST', '2019-11-19 15:39:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f223c35d18654f0e8727fd4ef52b6711', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:17:04', '74013ffb091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f2368b5ed26548079998f3b55deaf318', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:48:46', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('f285ed5a3c7342b5ae9b9b25a31ac12a', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 13:11:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f2b4dd166ba141fea80dd762a3cb56ae', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:43:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f3179ec3e06e477cba4ccba5f69ee56d', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:34:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f327623c82144ecd99780921452bf10a', '/user/login', '192.168.43.152', null, 'GET', '2019-11-24 06:29:57', null, '0');
INSERT INTO `t_operate_record` VALUES ('f353299b6aa548feb10cf35a2e9bd60f', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:13:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f35500660de04d00b2a26d52d6247182', '/role/list', '192.168.43.152', null, 'GET', '2019-11-24 01:34:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f356acd454724f76a2ba6450b578ef69', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 14:49:02', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('f36cebdb49e743f7afe3f4724d017952', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 05:46:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f378112db4044fd5a33e9efae769eb01', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 02:11:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f3ce53538bcd419cbd680fc6527edc5c', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 05:17:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f3df15f95f6e4a9997612c43357df6bb', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:24:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f3e838f0e95f48688e4c64869455c41d', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 14:22:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f3f706ef65924d9e947137a0d2a9681b', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:58:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f464e033aacf4642b9fdd49862eb327c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:12:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f48f82b724024fefa5e040ce47f2963c', '/user/login', '192.168.43.152', null, 'GET', '2019-11-19 15:38:42', null, '0');
INSERT INTO `t_operate_record` VALUES ('f4cb811f9dc0423986fec887e32ac91b', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:49:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f4d147bc3ecd49b1a72758004934f02c', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-26 12:53:18', '6289fb4f0f9311ea99ba5c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f4d22a2337c646178a4d25fd85cd2a7c', '/dict/add', '192.168.43.152', null, 'POST', '2019-11-23 13:14:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f55fd62f555749069e41c38ac980551d', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:21:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f593ebf48e9246b2b2d7785292973746', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:12:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f5f13d215767423b8b37c7003f4ef428', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:10:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f61a13c676c5411ebedb0d42ceefa779', '/user/list', '192.168.43.152', null, 'GET', '2019-11-28 13:54:08', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f662a779194d45d9a10332913869794a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:36:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f68c2230c5e14c098f87bdc92c054521', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:14:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f77155f25e3d46df888ed37029701ac7', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 13:10:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f7748a9834aa40649844516fe5140278', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 10:32:41', null, '1');
INSERT INTO `t_operate_record` VALUES ('f7a13aff666d4cf5b2a668e879ba1eaa', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-19 15:41:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f7d65ba122184492adaeb72516a70f3b', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 06:01:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f7e979f384184fae90d590cd8c2620c5', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 14:11:08', null, '0');
INSERT INTO `t_operate_record` VALUES ('f820bdd53c0241f89771b0be899510ec', '/user/login', '192.168.43.1', null, 'POST', '2019-11-28 14:40:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f8f3ece2d598453aab475d5f9c6607df', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:11:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f9393b08d6e4433ab7aa0aae1bf42e90', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 14:07:44', null, '1');
INSERT INTO `t_operate_record` VALUES ('f9721a4905cc4a1d89064d3a94266601', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 14:12:32', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('f972ab817b814edcb500c8f4bc7b4d33', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:45:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f9aa1b5142bf40a89ee9556d74a99057', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 12:17:05', null, '1');
INSERT INTO `t_operate_record` VALUES ('f9ad1b19eea14ab1a8dc2c2681760b14', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 13:12:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f9d8d55ac52549a99162cde14a7fff1d', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 14:14:44', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('fa4f572b4d014a698b78e3e0647b4ac3', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 14:15:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fa9a262c0af34b6088e13584c08938db', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 12:51:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fa9e01e32e8f4f80ac071351ec1cfa7a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 14:07:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('faef279d6f724906a123fa08d734de33', '/user/list', '192.168.43.152', null, 'GET', '2019-11-28 12:56:45', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('fafe4e73958840b2a231153708735ab6', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 12:53:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fb748c1b34e54d60a77eaadd15bfc187', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:45:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fbe21fa11d574d75b606828495314fd3', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 06:51:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fc319cdc80e945fe8e9fd25dba7c8ebd', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:48:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fc349fbe321241a1bb85069274bf452b', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:25:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fc6174829a4549c3aa1f765901947430', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 09:29:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fc98531e87ca4472a0094c8daecb311b', '/teacher/add', '192.168.43.152', null, 'POST', '2019-11-25 13:49:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fd6eaf42b5f543deb5ed8f52d5a95986', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-23 10:33:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fd918f35bd77442fbcb0df1c26766ccb', '/UserApi/v1/findUserByPage', '192.168.43.152', null, 'GET', '2019-11-18 15:04:31', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('fda33e57409648eba6add9b5c564d2e7', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 14:15:42', null, '1');
INSERT INTO `t_operate_record` VALUES ('fdb7fbf02d9644a8a3c1a981e9d8809c', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:54:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fdcb3c145d3b41609350740e19f72878', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:34:14', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('fdf2c1e0dc744c73813a53e611eb6c94', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:18:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fe26ff85398b46298ebfecb5ded27f9e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 05:40:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fe290de5e3924ab29119319039dd3453', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 12:18:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fe5fb9e808fb43aa9efd5fe284896e3f', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 13:07:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fe8014de2b694d3ca6a0ccf3adef5f4b', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 06:50:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fede886001034a8899e83aef021ae391', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:08:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('feecec6b2a5942cbb65984dde24bab05', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 15:38:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ff167fbd135b4265b10eab9beee235e3', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:50:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ff77355ac61c4d0fb4c73308ce550dbd', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 06:02:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ff96102dd72d4c34bce1b2c3a766dd1e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 14:12:03', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('ff9c918a79a34add81e44d202217ea95', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:26:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ffdc84901cdc4f61bbb7b53128287974', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:37:58', '67eb71f1091911eab9205c93a27933da', '1');

-- ----------------------------
-- Table structure for `t_perms`
-- ----------------------------
DROP TABLE IF EXISTS `t_perms`;
CREATE TABLE `t_perms` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `name` varchar(10) NOT NULL COMMENT '权限名称',
  `url` varchar(255) NOT NULL COMMENT '权限路径',
  `type` int(1) NOT NULL COMMENT '权限类型',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父权限id',
  `sort` int(3) DEFAULT NULL COMMENT '排序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_perms
-- ----------------------------
INSERT INTO `t_perms` VALUES ('05bb23b6092311eab9205c93a27933da', '修改老师', '/teacher/update', '3', 'a38c0dd5092211eab9205c93a27933da', '59');
INSERT INTO `t_perms` VALUES ('0881bbf9091b11eab9205c93a27933da', '数据字典', '/', '1', '0', '18');
INSERT INTO `t_perms` VALUES ('08f07ff0093611eaabbd5c93a27933da', '新增字典', '/dict/add', '3', 'd6e1b7c1093511eaabbd5c93a27933da', '67');
INSERT INTO `t_perms` VALUES ('09e01079093711eaabbd5c93a27933da', '删除角色', '/role/delete', '3', '680742f1093611eaabbd5c93a27933da', '74');
INSERT INTO `t_perms` VALUES ('0a5855f9092211eab9205c93a27933da', '成绩列表', '/grade/list', '2', 'cc8c06b0091b11eab9205c93a27933da', '50');
INSERT INTO `t_perms` VALUES ('0a8dc6d5092011eab9205c93a27933da', '删除班级', '/clazz/delete', '3', '95261a58091f11eab9205c93a27933da', '35');
INSERT INTO `t_perms` VALUES ('106970c4091c11eab9205c93a27933da', '课程管理', '/', '1', '0', '17');
INSERT INTO `t_perms` VALUES ('1126ce20092111eab9205c93a27933da', '学院列表', '/institute/list', '2', 'aff61364091b11eab9205c93a27933da', '44');
INSERT INTO `t_perms` VALUES ('13df1129091a11eab9205c93a27933da', '用户管理', '/', '1', '0', '10');
INSERT INTO `t_perms` VALUES ('1ad9f642091b11eab9205c93a27933da', '权限管理', '/', '1', '0', '19');
INSERT INTO `t_perms` VALUES ('1c8ee72c092311eab9205c93a27933da', '课程列表', '/course/list', '2', '106970c4091c11eab9205c93a27933da', '60');
INSERT INTO `t_perms` VALUES ('1ea2d9c2093611eaabbd5c93a27933da', '删除字典', '/dict/delete', '3', 'd6e1b7c1093511eaabbd5c93a27933da', '68');
INSERT INTO `t_perms` VALUES ('20e2403a093711eaabbd5c93a27933da', '修改角色', '/role/update', '3', '680742f1093611eaabbd5c93a27933da', '75');
INSERT INTO `t_perms` VALUES ('23f4adac091e11eab9205c93a27933da', '修改用户状态', '/user/status', '3', '5a9d92b7091d11eab9205c93a27933da', '26');
INSERT INTO `t_perms` VALUES ('2a40ca0e092011eab9205c93a27933da', '修改班级', '/clazz/update', '3', '95261a58091f11eab9205c93a27933da', '36');
INSERT INTO `t_perms` VALUES ('2a8d713f0f9911ea99ba5c93a27933da', '个人中心', '/', '1', '0', '85');
INSERT INTO `t_perms` VALUES ('2fe8c0af092211eab9205c93a27933da', '查询成绩', '/grade/list', '3', '0a5855f9092211eab9205c93a27933da', '51');
INSERT INTO `t_perms` VALUES ('314753b3092111eab9205c93a27933da', '查询学院', '/institute/list', '3', '1126ce20092111eab9205c93a27933da', '45');
INSERT INTO `t_perms` VALUES ('324fb6ee092311eab9205c93a27933da', '查询课程', '/course/list', '3', '1c8ee72c092311eab9205c93a27933da', '61');
INSERT INTO `t_perms` VALUES ('33758e410f9b11ea99ba5c93a27933da', '选课', '/course/student', '3', '4a4808370f9911ea99ba5c93a27933da', '90');
INSERT INTO `t_perms` VALUES ('356cb6a6093711eaabbd5c93a27933da', '为角色赋予权限', '/role/perms', '3', '680742f1093611eaabbd5c93a27933da', '76');
INSERT INTO `t_perms` VALUES ('36fd4e99093611eaabbd5c93a27933da', '修改字典', '/dict/update', '3', 'd6e1b7c1093511eaabbd5c93a27933da', '69');
INSERT INTO `t_perms` VALUES ('3dfc9c48091b11eab9205c93a27933da', '系统管理', '/', '1', '0', '20');
INSERT INTO `t_perms` VALUES ('43f0d8d0092011eab9205c93a27933da', '管理班级学生', '/clazz/student', '3', '95261a58091f11eab9205c93a27933da', '37');
INSERT INTO `t_perms` VALUES ('46d58979092311eab9205c93a27933da', '新增课程', '/course/add', '3', '1c8ee72c092311eab9205c93a27933da', '62');
INSERT INTO `t_perms` VALUES ('47faa744092211eab9205c93a27933da', '新增成绩', '/grade/add', '3', '0a5855f9092211eab9205c93a27933da', '52');
INSERT INTO `t_perms` VALUES ('4a4808370f9911ea99ba5c93a27933da', '我的课程', '/course/mycourse', '2', '2a8d713f0f9911ea99ba5c93a27933da', '86');
INSERT INTO `t_perms` VALUES ('4af67cfe092111eab9205c93a27933da', '新增学院', '/institute/add', '3', '1126ce20092111eab9205c93a27933da', '46');
INSERT INTO `t_perms` VALUES ('55024eb9105011eab30e5c93a27933da', '未选课程', '/course/choice', '3', '4a4808370f9911ea99ba5c93a27933da', '93');
INSERT INTO `t_perms` VALUES ('5897fe38093711eaabbd5c93a27933da', '查询权限', '/perms/list', '3', '8988d3f1093611eaabbd5c93a27933da', '77');
INSERT INTO `t_perms` VALUES ('5a9d92b7091d11eab9205c93a27933da', '用户列表', '/user/list', '2', '13df1129091a11eab9205c93a27933da', '21');
INSERT INTO `t_perms` VALUES ('5b6fb596092311eab9205c93a27933da', '删除课程', '/course/delete', '3', '1c8ee72c092311eab9205c93a27933da', '63');
INSERT INTO `t_perms` VALUES ('5ec1d332091e11eab9205c93a27933da', '学生列表', '/student/list', '2', '62c45854091b11eab9205c93a27933da', '27');
INSERT INTO `t_perms` VALUES ('60059b5f092111eab9205c93a27933da', '删除学院', '/institute/delete', '3', '1126ce20092111eab9205c93a27933da', '47');
INSERT INTO `t_perms` VALUES ('6235890f092211eab9205c93a27933da', '删除成绩', '/grade/delete', '3', '0a5855f9092211eab9205c93a27933da', '53');
INSERT INTO `t_perms` VALUES ('62c45854091b11eab9205c93a27933da', '学生管理', '/', '1', '0', '11');
INSERT INTO `t_perms` VALUES ('680742f1093611eaabbd5c93a27933da', '角色列表', '/role/list', '2', '1ad9f642091b11eab9205c93a27933da', '70');
INSERT INTO `t_perms` VALUES ('6ebaf9080f9b11ea99ba5c93a27933da', '打分', '/grade/update', '3', 'ecaed7bf0f9911ea99ba5c93a27933da', '91');
INSERT INTO `t_perms` VALUES ('71254f21092311eab9205c93a27933da', '修改课程', '/course/update', '3', '1c8ee72c092311eab9205c93a27933da', '64');
INSERT INTO `t_perms` VALUES ('747e17c7092111eab9205c93a27933da', '修改学院', '/institute/update', '3', '1126ce20092111eab9205c93a27933da', '48');
INSERT INTO `t_perms` VALUES ('7db7ea01093711eaabbd5c93a27933da', '新增权限', '/perms/add', '3', '8988d3f1093611eaabbd5c93a27933da', '78');
INSERT INTO `t_perms` VALUES ('8195dc47092211eab9205c93a27933da', '修改成绩', '/grade/update', '3', '0a5855f9092211eab9205c93a27933da', '54');
INSERT INTO `t_perms` VALUES ('820efa55091d11eab9205c93a27933da', '查询用户列表', '/user/list', '3', '5a9d92b7091d11eab9205c93a27933da', '22');
INSERT INTO `t_perms` VALUES ('823190dd091e11eab9205c93a27933da', '查询学生列表', '/student/list', '3', '5ec1d332091e11eab9205c93a27933da', '28');
INSERT INTO `t_perms` VALUES ('826e1aa2091b11eab9205c93a27933da', '班级管理', '/', '1', '0', '12');
INSERT INTO `t_perms` VALUES ('83d1cb50092011eab9205c93a27933da', '专业列表', '/major/list', '2', '95ccc408091b11eab9205c93a27933da', '38');
INSERT INTO `t_perms` VALUES ('87258518104811eab30e5c93a27933da', '成绩新增', '/grade/add', '3', 'c617be7e0f9a11ea99ba5c93a27933da', '90');
INSERT INTO `t_perms` VALUES ('8988d3f1093611eaabbd5c93a27933da', '菜单列表', '/perms/list', '2', '1ad9f642091b11eab9205c93a27933da', '71');
INSERT INTO `t_perms` VALUES ('8a941710092111eab9205c93a27933da', '管理专业', '/institute/major', '3', '1126ce20092111eab9205c93a27933da', '49');
INSERT INTO `t_perms` VALUES ('92138d58093711eaabbd5c93a27933da', '删除权限', '/perms/delete', '3', '8988d3f1093611eaabbd5c93a27933da', '79');
INSERT INTO `t_perms` VALUES ('95261a58091f11eab9205c93a27933da', '班级列表', '/clazz/list', '2', '826e1aa2091b11eab9205c93a27933da', '32');
INSERT INTO `t_perms` VALUES ('95ccc408091b11eab9205c93a27933da', '专业管理', '/', '1', '0', '13');
INSERT INTO `t_perms` VALUES ('9a86ebce112b11ea8c055c93a27933da', '查看课程学生', '/grade/viewStudent', '3', 'ecaed7bf0f9911ea99ba5c93a27933da', '92');
INSERT INTO `t_perms` VALUES ('9c03b751092011eab9205c93a27933da', '查询专业', '/major/list', '3', '83d1cb50092011eab9205c93a27933da', '39');
INSERT INTO `t_perms` VALUES ('a015d1c9093811eaabbd5c93a27933da', '登录日志', '/sys/loginLog', '2', '3dfc9c48091b11eab9205c93a27933da', '81');
INSERT INTO `t_perms` VALUES ('a045a6fc0f9911ea99ba5c93a27933da', '我的成绩', '/grade/mygrade', '2', '2a8d713f0f9911ea99ba5c93a27933da', '87');
INSERT INTO `t_perms` VALUES ('a38c0dd5092211eab9205c93a27933da', '老师列表', '/teacher/list', '2', 'ff7cc273091b11eab9205c93a27933da', '55');
INSERT INTO `t_perms` VALUES ('a53b3939093711eaabbd5c93a27933da', '编辑权限', '/perms/update', '3', '8988d3f1093611eaabbd5c93a27933da', '80');
INSERT INTO `t_perms` VALUES ('af5f93ba091e11eab9205c93a27933da', '增加学生', '/student/add', '3', '5ec1d332091e11eab9205c93a27933da', '29');
INSERT INTO `t_perms` VALUES ('aff61364091b11eab9205c93a27933da', '学院管理', '/', '1', '0', '14');
INSERT INTO `t_perms` VALUES ('b3d419f8092011eab9205c93a27933da', '新增专业', '/major/add', '3', '83d1cb50092011eab9205c93a27933da', '40');
INSERT INTO `t_perms` VALUES ('ba31aeb4091d11eab9205c93a27933da', '增加用户', '/user/add', '3', '5a9d92b7091d11eab9205c93a27933da', '23');
INSERT INTO `t_perms` VALUES ('bb51fcb3104811eab30e5c93a27933da', '成绩删除', '/grade/delete', '3', 'c617be7e0f9a11ea99ba5c93a27933da', '91');
INSERT INTO `t_perms` VALUES ('be422d69093811eaabbd5c93a27933da', '查询登录日志', '/loginLog/list', '3', 'a015d1c9093811eaabbd5c93a27933da', '82');
INSERT INTO `t_perms` VALUES ('be4b7030092211eab9205c93a27933da', '查询老师', '/teacher/list', '3', 'a38c0dd5092211eab9205c93a27933da', '56');
INSERT INTO `t_perms` VALUES ('c617be7e0f9a11ea99ba5c93a27933da', '成绩统计', '/grade/center', '2', '2a8d713f0f9911ea99ba5c93a27933da', '89');
INSERT INTO `t_perms` VALUES ('c6bdac03091e11eab9205c93a27933da', '删除学生', '/student/delete', '3', '5ec1d332091e11eab9205c93a27933da', '30');
INSERT INTO `t_perms` VALUES ('ca116b67092011eab9205c93a27933da', '删除专业', '/major/delete', '3', '83d1cb50092011eab9205c93a27933da', '41');
INSERT INTO `t_perms` VALUES ('cc8c06b0091b11eab9205c93a27933da', '成绩管理', '/', '1', '0', '15');
INSERT INTO `t_perms` VALUES ('d3c27e01104811eab30e5c93a27933da', '成绩修改', '/grade/update', '3', 'c617be7e0f9a11ea99ba5c93a27933da', '92');
INSERT INTO `t_perms` VALUES ('d513e734091f11eab9205c93a27933da', '查询班级', '/clazz/list', '3', '95261a58091f11eab9205c93a27933da', '33');
INSERT INTO `t_perms` VALUES ('d54cce0a093811eaabbd5c93a27933da', '操作记录', '/sys/operateRecord', '2', '3dfc9c48091b11eab9205c93a27933da', '83');
INSERT INTO `t_perms` VALUES ('d6e1b7c1093511eaabbd5c93a27933da', '字典列表', '/dict/list', '2', '0881bbf9091b11eab9205c93a27933da', '65');
INSERT INTO `t_perms` VALUES ('d7fce144091d11eab9205c93a27933da', '删除用户', '/user/delete', '3', '5a9d92b7091d11eab9205c93a27933da', '24');
INSERT INTO `t_perms` VALUES ('d9d9ab35092211eab9205c93a27933da', '新增老师', '/teacher/add', '3', 'a38c0dd5092211eab9205c93a27933da', '57');
INSERT INTO `t_perms` VALUES ('dce14c10093611eaabbd5c93a27933da', '查询角色', '/role/list', '3', '680742f1093611eaabbd5c93a27933da', '72');
INSERT INTO `t_perms` VALUES ('df671ea6091e11eab9205c93a27933da', '修改学生', '/student/update', '3', '5ec1d332091e11eab9205c93a27933da', '31');
INSERT INTO `t_perms` VALUES ('e0d97a6b092011eab9205c93a27933da', '修改专业', '/major/update', '3', '83d1cb50092011eab9205c93a27933da', '42');
INSERT INTO `t_perms` VALUES ('ecaed7bf0f9911ea99ba5c93a27933da', '课程中心', '/course/center', '2', '2a8d713f0f9911ea99ba5c93a27933da', '88');
INSERT INTO `t_perms` VALUES ('edf5aafd093811eaabbd5c93a27933da', '查询操作记录', '/operateRecord/list', '3', 'd54cce0a093811eaabbd5c93a27933da', '84');
INSERT INTO `t_perms` VALUES ('ef4b5bcd092211eab9205c93a27933da', '删除老师', '/teacher/delete', '3', 'a38c0dd5092211eab9205c93a27933da', '58');
INSERT INTO `t_perms` VALUES ('f04cef41091f11eab9205c93a27933da', '新增班级', '/clazz/add', '3', '95261a58091f11eab9205c93a27933da', '34');
INSERT INTO `t_perms` VALUES ('f0a12818093511eaabbd5c93a27933da', '查询字典', '/dict/list', '3', 'd6e1b7c1093511eaabbd5c93a27933da', '66');
INSERT INTO `t_perms` VALUES ('f5e9849a093611eaabbd5c93a27933da', '新增角色', '/role/add', '3', '680742f1093611eaabbd5c93a27933da', '73');
INSERT INTO `t_perms` VALUES ('f803420d092011eab9205c93a27933da', '管理班级', '/major/clazz', '3', '83d1cb50092011eab9205c93a27933da', '43');
INSERT INTO `t_perms` VALUES ('fc2eb41a091d11eab9205c93a27933da', '修改用户', '/user/update', '3', '5a9d92b7091d11eab9205c93a27933da', '25');
INSERT INTO `t_perms` VALUES ('ff7cc273091b11eab9205c93a27933da', '老师管理', '/', '1', '0', '16');

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `name` varchar(10) NOT NULL COMMENT '角色名称',
  `role_desc` varchar(255) DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员', '拥有所有权限');
INSERT INTO `t_role` VALUES ('2', '老师', '拥有部分权限');
INSERT INTO `t_role` VALUES ('3', '学生', '拥有部分权限');
INSERT INTO `t_role` VALUES ('a4ea24e68fc342c2a52286702061a022', '测试角色', '测试角色描述');

-- ----------------------------
-- Table structure for `t_role_perms`
-- ----------------------------
DROP TABLE IF EXISTS `t_role_perms`;
CREATE TABLE `t_role_perms` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `role_id` varchar(32) NOT NULL COMMENT '角色id',
  `perms_id` varchar(32) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_role_perms
-- ----------------------------
INSERT INTO `t_role_perms` VALUES ('06840daad88c4ac5974f41fd142a029e', '2', '13df1129091a11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('0e09751982ff4cd38c100d6edf8fa20b', 'fb48455615e4408096340003109af746', '13df1129091a11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('1677580b27474cac804a2ed562968139', '2', '5a9d92b7091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('16a5941e0d3411ea9b285c93a27933da', '3', '13df1129091a11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('1af5a327b0d648b8a694b4e09bb28943', '2', '2a8d713f0f9911ea99ba5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('1dc1c077f340472b8aaa5b6ec4f37755', '2', 'ecaed7bf0f9911ea99ba5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('1dd6b2a4cde340ef98acab0dc4d6f114', '2', 'c617be7e0f9a11ea99ba5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('1ec624dc994043c380aa13bdecd2a621', 'a4ea24e68fc342c2a52286702061a022', '13df1129091a11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('1f2eb483392c4886847c565f6d4e0ce0', 'fb48455615e4408096340003109af746', 'ba31aeb4091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('1f7e296abfc94283801ca50f44ba7355', '2', '6ebaf9080f9b11ea99ba5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('1fdb9ca00d3411ea9b285c93a27933da', '3', '5a9d92b7091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('22b876ad05044c338b0405be78b8033c', 'fb48455615e4408096340003109af746', '09e01079093711eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('267027df13ce42acaf41126bb36e03a9', '2', '87258518104811eab30e5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('2bf660667b2248289ddf98f41f31c858', '2', 'bb51fcb3104811eab30e5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('2f99955e30034363a08c6a5d3f148429', 'fb48455615e4408096340003109af746', '820efa55091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('331c5ada85ba4760b82f10efb0bfc568', '2', 'd3c27e01104811eab30e5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('4003825a4f35491ba98b9272321a5982', 'fb48455615e4408096340003109af746', '20e2403a093711eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('44c93a9609fb11ea9c4f5c93a27933da', '3', '2a8d713f0f9911ea99ba5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('4c365b7d09fb11ea9c4f5c93a27933da', '3', '4a4808370f9911ea99ba5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('4e320edfb92a4427b0634cc601f8f1cc', 'a4ea24e68fc342c2a52286702061a022', 'ba31aeb4091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('5afb7d638d724766a6519b4f275b2766', 'fb48455615e4408096340003109af746', 'd7fce144091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('5ce01e2151894c358478bdf75ed27bb9', 'fb48455615e4408096340003109af746', 'f5e9849a093611eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('71d8582d986d4a91be402b734292dc98', 'fb48455615e4408096340003109af746', 'fc2eb41a091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('763551a5937549a4843225d8e76e7c18', 'fb48455615e4408096340003109af746', 'a53b3939093711eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('7919f3cae30240aba5cdc1be820d86ad', 'a4ea24e68fc342c2a52286702061a022', 'fc2eb41a091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('8ceeef08eb39405d88b8cc9889cfa4e9', 'a4ea24e68fc342c2a52286702061a022', '820efa55091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('8f4abc6bb3ba45a89e9776076a302fb8', 'fb48455615e4408096340003109af746', '1ad9f642091b11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('8fd4883b105011eab30e5c93a27933da', '3', '55024eb9105011eab30e5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('95f377a19e3c432b88b911d3616d6a4b', 'a4ea24e68fc342c2a52286702061a022', '23f4adac091e11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('9ae4b47dcd5045d2a2e6a41589bdf722', 'fb48455615e4408096340003109af746', '356cb6a6093711eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('9fa5a7cb783745058ce869e4e0e8438d', 'fb48455615e4408096340003109af746', '92138d58093711eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('a0f1f470d657429aa08b326d3dbbbcc6', 'fb48455615e4408096340003109af746', '5a9d92b7091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('a41a7a43124b4ac8a1c2a5eb0b2cbc01', 'fb48455615e4408096340003109af746', 'dce14c10093611eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('bc30480fe65f4fb3ba703fb360a0815e', 'fb48455615e4408096340003109af746', '5897fe38093711eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c331307e095011eaabbd5c93a27933da', '1', '13df1129091a11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c3435b90095011eaabbd5c93a27933da', '1', '62c45854091b11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c34fd3e4095011eaabbd5c93a27933da', '1', '826e1aa2091b11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c3636f4c095011eaabbd5c93a27933da', '1', '95ccc408091b11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c36be8cf095011eaabbd5c93a27933da', '1', 'aff61364091b11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c37b1e81095011eaabbd5c93a27933da', '1', 'ff7cc273091b11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c381df9c095011eaabbd5c93a27933da', '1', '106970c4091c11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c38c023b095011eaabbd5c93a27933da', '1', '0881bbf9091b11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c394748e095011eaabbd5c93a27933da', '1', '1ad9f642091b11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c39ce2ef095011eaabbd5c93a27933da', '1', '3dfc9c48091b11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c3a702af095011eaabbd5c93a27933da', '1', '5a9d92b7091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c3adc616095011eaabbd5c93a27933da', '1', '820efa55091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c3b7e928095011eaabbd5c93a27933da', '1', 'ba31aeb4091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c3c0592f095011eaabbd5c93a27933da', '1', 'd7fce144091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c3cdded9095011eaabbd5c93a27933da', '1', 'fc2eb41a091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c3d7fdc4095011eaabbd5c93a27933da', '1', '23f4adac091e11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c3e2217f095011eaabbd5c93a27933da', '1', '5ec1d332091e11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c3ead8df095011eaabbd5c93a27933da', '1', '823190dd091e11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c3f3498c095011eaabbd5c93a27933da', '1', 'af5f93ba091e11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c3fbb92d095011eaabbd5c93a27933da', '1', 'c6bdac03091e11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4027cdf095011eaabbd5c93a27933da', '1', 'df671ea6091e11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c40aa3db095011eaabbd5c93a27933da', '1', '95261a58091f11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4116789095011eaabbd5c93a27933da', '1', 'd513e734091f11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4182959095011eaabbd5c93a27933da', '1', 'f04cef41091f11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4209b8d095011eaabbd5c93a27933da', '1', '0a8dc6d5092011eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4275d3a095011eaabbd5c93a27933da', '1', '2a40ca0e092011eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c42fd1fd095011eaabbd5c93a27933da', '1', '43f0d8d0092011eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4369207095011eaabbd5c93a27933da', '1', '83d1cb50092011eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c442ada2095011eaabbd5c93a27933da', '1', '9c03b751092011eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4496e0f095011eaabbd5c93a27933da', '1', 'b3d419f8092011eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c44fe938095011eaabbd5c93a27933da', '1', 'ca116b67092011eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c45a583f095011eaabbd5c93a27933da', '1', 'e0d97a6b092011eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c461195a095011eaabbd5c93a27933da', '1', 'f803420d092011eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c46b38bf095011eaabbd5c93a27933da', '1', '1126ce20092111eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4756262095011eaabbd5c93a27933da', '1', '314753b3092111eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c47dd012095011eaabbd5c93a27933da', '1', '4af67cfe092111eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c48eb0be095011eaabbd5c93a27933da', '1', '60059b5f092111eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4957665095011eaabbd5c93a27933da', '1', '747e17c7092111eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c49d9ad9095011eaabbd5c93a27933da', '1', '8a941710092111eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4a45ef6095011eaabbd5c93a27933da', '1', '0a5855f9092211eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4acda33095011eaabbd5c93a27933da', '1', '2fe8c0af092211eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4b38fd5095011eaabbd5c93a27933da', '1', '47faa744092211eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4c160ce095011eaabbd5c93a27933da', '1', '6235890f092211eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4c81f46095011eaabbd5c93a27933da', '1', '8195dc47092211eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4ce94fe095011eaabbd5c93a27933da', '1', 'a38c0dd5092211eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4d709a5095011eaabbd5c93a27933da', '1', 'be4b7030092211eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4ddcbc0095011eaabbd5c93a27933da', '1', 'd9d9ab35092211eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4e64a4e095011eaabbd5c93a27933da', '1', 'ef4b5bcd092211eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c4ecff71095011eaabbd5c93a27933da', '1', '05bb23b6092311eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c5040289095011eaabbd5c93a27933da', '1', '1c8ee72c092311eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c5173ce8095011eaabbd5c93a27933da', '1', '324fb6ee092311eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c51ffb20095011eaabbd5c93a27933da', '1', '46d58979092311eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c5266d11095011eaabbd5c93a27933da', '1', '5b6fb596092311eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c52d2dc9095011eaabbd5c93a27933da', '1', '71254f21092311eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c535b732095011eaabbd5c93a27933da', '1', 'd6e1b7c1093511eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c5401488095011eaabbd5c93a27933da', '1', 'f0a12818093511eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c54be3eb095011eaabbd5c93a27933da', '1', '08f07ff0093611eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c552a516095011eaabbd5c93a27933da', '1', '1ea2d9c2093611eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c55b17a4095011eaabbd5c93a27933da', '1', '36fd4e99093611eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c561da59095011eaabbd5c93a27933da', '1', '680742f1093611eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c5689dfc095011eaabbd5c93a27933da', '1', '8988d3f1093611eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c56f12c6095011eaabbd5c93a27933da', '1', 'dce14c10093611eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c575d2e5095011eaabbd5c93a27933da', '1', 'f5e9849a093611eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c57e5920095011eaabbd5c93a27933da', '1', '09e01079093711eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c5850858095011eaabbd5c93a27933da', '1', '20e2403a093711eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c58bca87095011eaabbd5c93a27933da', '1', '356cb6a6093711eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c5943933095011eaabbd5c93a27933da', '1', '5897fe38093711eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c59cfaeb095011eaabbd5c93a27933da', '1', '7db7ea01093711eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c5a56e3f095011eaabbd5c93a27933da', '1', '92138d58093711eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c5ac2ea4095011eaabbd5c93a27933da', '1', 'a53b3939093711eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c5b2f01a095011eaabbd5c93a27933da', '1', 'a015d1c9093811eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c5bb6382095011eaabbd5c93a27933da', '1', 'be422d69093811eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c5c58500095011eaabbd5c93a27933da', '1', 'd54cce0a093811eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('c5cda80a095011eaabbd5c93a27933da', '1', 'edf5aafd093811eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('cbabbaf1852b45abb11feae09c0a0e1f', 'a4ea24e68fc342c2a52286702061a022', '5a9d92b7091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('d12afc5bed274a41b305f58b2390b202', 'fb48455615e4408096340003109af746', '8988d3f1093611eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('d49fbb0b112b11ea8c055c93a27933da', '2', '9a86ebce112b11ea8c055c93a27933da');
INSERT INTO `t_role_perms` VALUES ('d9b5af1a3a874172a2bcb5ecf0d06a0b', 'fb48455615e4408096340003109af746', '680742f1093611eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('db384cc80d3311ea9b285c93a27933da', '3', '33758e410f9b11ea99ba5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('df06c226162449e99a371f7a94594e09', 'fb48455615e4408096340003109af746', '7db7ea01093711eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('ef471fef3f124d0bb5a5ca2bed7ac83e', 'fb48455615e4408096340003109af746', '23f4adac091e11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('fb916866bad4419eae5f57374301d903', 'a4ea24e68fc342c2a52286702061a022', 'd7fce144091d11eab9205c93a27933da');

-- ----------------------------
-- Table structure for `t_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `student_number` varchar(32) NOT NULL COMMENT '学号',
  `name` varchar(50) NOT NULL COMMENT '学生姓名',
  `sex` int(11) NOT NULL COMMENT '性别',
  `age` int(11) NOT NULL COMMENT '年龄',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `photo_url` varchar(200) DEFAULT NULL COMMENT '头像地址',
  `clazz_id` varchar(32) NOT NULL COMMENT '班级id',
  `major_id` varchar(32) NOT NULL COMMENT '专业id',
  `institute_id` varchar(32) NOT NULL COMMENT '学院id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('032e7ac5fe4d45ff824c7cf125c70d3f', '2019001011000', '张三', '1', '22', '13800138000', null, null, '96332ae13fd64c1abf5f6f778c873102', '940c25ce0e7111ea85a85c93a27933da', '271c18020e6a11ea85a85c93a27933da');
INSERT INTO `t_student` VALUES ('89685bd813b1437cab9aef7bde7637ba', '2019001011002', '王五', '1', '23', '13800138000', null, null, 'c3eb7c50fbe0419c8030ea090ce0858b', '940c25ce0e7111ea85a85c93a27933da', '271c18020e6a11ea85a85c93a27933da');
INSERT INTO `t_student` VALUES ('caf2659b709e46679244603a5b1a5c41', '2019001021001', '李四', '2', '21', '13800138000', null, null, 'edf7e10401504dd496a529d8b5522c1f', '0f413024eb5c460fb129bf06eb4ee6c9', '271c18020e6a11ea85a85c93a27933da');

-- ----------------------------
-- Table structure for `t_student_course`
-- ----------------------------
DROP TABLE IF EXISTS `t_student_course`;
CREATE TABLE `t_student_course` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `student_id` varchar(32) NOT NULL COMMENT '学生id',
  `course_id` varchar(32) NOT NULL COMMENT '课程id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_student_course
-- ----------------------------
INSERT INTO `t_student_course` VALUES ('10641d3c190711ea8fbd5c93a27933da', '1', '11');

-- ----------------------------
-- Table structure for `t_sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict`;
CREATE TABLE `t_sys_dict` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `dict_code` varchar(10) NOT NULL COMMENT '瀛楀吀浠ｇ爜',
  `dict_value` varchar(50) NOT NULL COMMENT '字典值',
  `dict_type_code` varchar(20) NOT NULL COMMENT '字典类型代码',
  `dict_desc` varchar(255) DEFAULT NULL COMMENT '字典描述',
  `dict_order` int(10) DEFAULT NULL COMMENT '字典排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_sys_dict
-- ----------------------------
INSERT INTO `t_sys_dict` VALUES ('05186928782f449fb9a5e3c8ccb3e5c1', '001', '教授', 'TEACHER_TYPE', '老师职级', '1');
INSERT INTO `t_sys_dict` VALUES ('2f0801d50ddf11eab421f0761cc5591a', '1', '男', 'SEX', '性别', '1');
INSERT INTO `t_sys_dict` VALUES ('3500f6e20ed111ea98a05c93a27933da', '01', '专业必修', 'COURSE_TYPE', '课程类型', '1');
INSERT INTO `t_sys_dict` VALUES ('382693170ddf11eab421f0761cc5591a', '2', '女', 'SEX', '性别', '2');
INSERT INTO `t_sys_dict` VALUES ('3f2e69ce0ed111ea98a05c93a27933da', '02', '专业选修', 'COURSE_TYPE', '课程类型', '2');
INSERT INTO `t_sys_dict` VALUES ('42c52d13c78d44e09ccc9167e029eea4', '005', '实习老师', 'TEACHER_TYPE', '老师职级', '5');
INSERT INTO `t_sys_dict` VALUES ('4d0623560ed111ea98a05c93a27933da', '03', '公共必修', 'COURSE_TYPE', '课程类型', '3');
INSERT INTO `t_sys_dict` VALUES ('551fabe50ed111ea98a05c93a27933da', '04', '公共选修', 'COURSE_TYPE', '课程类型', '4');
INSERT INTO `t_sys_dict` VALUES ('55c6c5560ddf11eab421f0761cc5591a', '1', '管理员', 'USER_TYPE', '用户类型', '1');
INSERT INTO `t_sys_dict` VALUES ('575b501ead0a4004a6a53297c4d1cc89', '003', '讲师', 'TEACHER_TYPE', '老师职级', '3');
INSERT INTO `t_sys_dict` VALUES ('5e25521a0ddf11eab421f0761cc5591a', '2', '老师', 'USER_TYPE', '用户类型', '2');
INSERT INTO `t_sys_dict` VALUES ('6650d21a0ddf11eab421f0761cc5591a', '3', '学生', 'USER_TYPE', '用户类型', '3');
INSERT INTO `t_sys_dict` VALUES ('89c2cb320dd611eab421f0761cc5591a', '1', '模块', 'MENU', '权限菜单类型', '1');
INSERT INTO `t_sys_dict` VALUES ('9c0ab74e0dd611eab421f0761cc5591a', '2', '菜单', 'MENU', '权限菜单类型', '2');
INSERT INTO `t_sys_dict` VALUES ('a4da30530dd611eab421f0761cc5591a', '3', '按钮', 'MENU', '权限菜单类型', '3');
INSERT INTO `t_sys_dict` VALUES ('a9127f74e6214b3f90379f9c2dd3fc93', '002', '副教授', 'TEACHER_TYPE', '老师职级', '2');
INSERT INTO `t_sys_dict` VALUES ('cf9759b9c5bb4224b6de29eca85d94e2', '004', '助教', 'TEACHER_TYPE', '老师职级', '4');

-- ----------------------------
-- Table structure for `t_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `name` varchar(50) NOT NULL COMMENT '老师姓名',
  `sex` int(11) NOT NULL COMMENT '性别',
  `age` int(11) NOT NULL COMMENT '年龄',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '鑱岀О',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `photo_url` varchar(200) DEFAULT NULL COMMENT '头像地址',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('4f8f02dff98044ffb7f7dfbc8c57c596', '李老师', '2', '28', '005', null, null, '13800138000');
INSERT INTO `t_teacher` VALUES ('dbca8e5caec24c6ca4b3dccd053f9102', '高老师', '2', '30', '003', null, null, '13800138000');
INSERT INTO `t_teacher` VALUES ('fe8147e10e454b259705d10d7514f2ac', '张老师', '1', '36', '001', null, null, '13800138000');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `username` varchar(10) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '用户密码',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `photo_url` varchar(200) DEFAULT NULL COMMENT '头像地址',
  `enable` int(10) DEFAULT NULL COMMENT '是否可用：1可用，0不可用',
  `create_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('032e7ac5fe4d45ff824c7cf125c70d3f', '张三', 'd477887b0636e5d87f79cc25c99d7dc9', 'zs@qq.com', '/vue_shiro_photo/userImg/d8883ca3-8647-49e0-af32-596c5300305a.jpg', '1', '2019-11-24 13:21:33', '2019-12-01 08:20:46');
INSERT INTO `t_user` VALUES ('14ea1023beac462e98ad743739b38f68', 'bb', 'd477887b0636e5d87f79cc25c99d7dc9', 'bb@qq.com', null, '1', '2019-11-24 02:06:44', null);
INSERT INTO `t_user` VALUES ('3e5dfa87593e4a44b8212eb3866aefdb', 'cc', 'd477887b0636e5d87f79cc25c99d7dc9', 'cc@qq.com', null, '1', '2019-11-24 02:09:30', '2019-11-24 02:12:01');
INSERT INTO `t_user` VALUES ('4f8f02dff98044ffb7f7dfbc8c57c596', '李老师', 'd477887b0636e5d87f79cc25c99d7dc9', null, null, '1', '2019-11-25 22:53:58', '2019-12-01 08:43:52');
INSERT INTO `t_user` VALUES ('67eb71f1091911eab9205c93a27933da', 'admin', '10a1b727c497d49a85bfff7351f1a4c4', 'admin@163.com', '/vue_shiro_photo/userImg/57c75417-4dd3-4de8-9b06-313da6356fb9.jpg', '1', '2019-11-18 23:17:12', '2019-12-01 08:43:31');
INSERT INTO `t_user` VALUES ('74013ffb091911eab9205c93a27933da', 'tom', 'd477887b0636e5d87f79cc25c99d7dc9', 'tom@163.com', '/vue_shiro_photo/userImg/1fa36717-8aeb-4ba3-9f3e-a17cc08b45a6.jpg', '1', '2019-11-11 23:17:19', '2019-11-23 14:17:02');
INSERT INTO `t_user` VALUES ('7b0272d267be43f097af993a4d8bb467', 'ff', 'd477887b0636e5d87f79cc25c99d7dc9', 'ff@qq.com', '/vue_shiro_photo/userImg/38ac6782-a958-4726-a3a2-3efd88d1e9b4.jpg', '0', '2019-11-23 03:27:16', '2019-11-23 14:19:46');
INSERT INTO `t_user` VALUES ('7bc5259b091911eab9205c93a27933da', 'student', 'd477887b0636e5d87f79cc25c99d7dc9', 'student@163.com', '/vue_shiro_photo/userImg/6ba3aca5-3bb0-4fcd-a618-81c17d9f0d27.jpg', '0', '2019-11-11 23:18:26', '2019-11-23 14:18:53');
INSERT INTO `t_user` VALUES ('89685bd813b1437cab9aef7bde7637ba', '王五', 'd477887b0636e5d87f79cc25c99d7dc9', null, null, '1', '2019-11-24 14:23:38', null);
INSERT INTO `t_user` VALUES ('95dd55d0a8ae49af83d391ccd36b9a11', 'rr', 'd477887b0636e5d87f79cc25c99d7dc9', 'cc@qq.com', '/vue_shiro_photo/userImg/107c11be-a14c-4917-8f69-4d3828a05af6.jpg', '1', '2019-11-21 12:57:18', '2019-11-23 14:17:36');
INSERT INTO `t_user` VALUES ('9a55056084e14cd58b63bdc38e7b6096', 'aa', 'd477887b0636e5d87f79cc25c99d7dc9', 'aa@qq.com', null, '1', '2019-11-24 02:04:29', null);
INSERT INTO `t_user` VALUES ('caf2659b709e46679244603a5b1a5c41', '李四', 'd477887b0636e5d87f79cc25c99d7dc9', null, null, '1', '2019-11-24 13:30:07', null);
INSERT INTO `t_user` VALUES ('dbca8e5caec24c6ca4b3dccd053f9102', '高老师', 'd477887b0636e5d87f79cc25c99d7dc9', null, null, '1', '2019-11-25 22:54:04', null);
INSERT INTO `t_user` VALUES ('fe8147e10e454b259705d10d7514f2ac', '张老师', 'd477887b0636e5d87f79cc25c99d7dc9', null, null, '1', '2019-11-25 22:54:07', '2019-11-26 13:01:16');

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) NOT NULL COMMENT '用户id',
  `role_id` varchar(32) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('098e08e02e0d42dab2ee5b2f8c6463bd', 'e34a8e4ca61346d58c4d647b38c7749a', '3');
INSERT INTO `t_user_role` VALUES ('0ede5f8f117b4c48ae10073257fd23f6', 'b9cc4eb5d8e943ea8c6251dffba892b4', '3');
INSERT INTO `t_user_role` VALUES ('226230da091911eab9205c93a27933da', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_user_role` VALUES ('3adb1600ea784eff9426b8833dbaf97b', '26359b7060bf40b198a2d7dc1521ff7b', '3');
INSERT INTO `t_user_role` VALUES ('4566c94f091911eab9205c93a27933da', '74013ffb091911eab9205c93a27933da', '2');
INSERT INTO `t_user_role` VALUES ('46582b1b7fb042acafa9a2c3d5718477', '95dd55d0a8ae49af83d391ccd36b9a11', '2');
INSERT INTO `t_user_role` VALUES ('52008751091911eab9205c93a27933da', '7bc5259b091911eab9205c93a27933da', '3');
INSERT INTO `t_user_role` VALUES ('67a0e980cd7840f2a7c83ac85079efa8', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_user_role` VALUES ('6e5a9081cc5d4f1687efc92c08d7376c', '598cd43a68ea4200ba2f58260b87e761', '2');
INSERT INTO `t_user_role` VALUES ('8ad392e10f9311ea99ba5c93a27933da', '532782800f9311ea99ba5c93a27933da', '2');
INSERT INTO `t_user_role` VALUES ('909c15830f9311ea99ba5c93a27933da', '5f01a4200f9311ea99ba5c93a27933da', '2');
INSERT INTO `t_user_role` VALUES ('95b4aa1f0f9311ea99ba5c93a27933da', '6289fb4f0f9311ea99ba5c93a27933da', '2');
INSERT INTO `t_user_role` VALUES ('a480c171105611eab30e5c93a27933da', '032e7ac5fe4d45ff824c7cf125c70d3f', '3');
INSERT INTO `t_user_role` VALUES ('acfd9e38bd2545cd807e14a18bd0c661', 'b5bfae4837594015ab1062887329bd97', '3');
INSERT INTO `t_user_role` VALUES ('bd76fcc2758645adb6c5d90703bd99f0', '3e5dfa87593e4a44b8212eb3866aefdb', 'a4ea24e68fc342c2a52286702061a022');
INSERT INTO `t_user_role` VALUES ('c27f1ff9105611eab30e5c93a27933da', '89685bd813b1437cab9aef7bde7637ba', '3');
INSERT INTO `t_user_role` VALUES ('c96dc577105611eab30e5c93a27933da', 'caf2659b709e46679244603a5b1a5c41', '3');
INSERT INTO `t_user_role` VALUES ('d3b09ad3105611eab30e5c93a27933da', '4f8f02dff98044ffb7f7dfbc8c57c596', '2');
INSERT INTO `t_user_role` VALUES ('e033b43d105611eab30e5c93a27933da', 'dbca8e5caec24c6ca4b3dccd053f9102', '2');
INSERT INTO `t_user_role` VALUES ('ec36f53e105611eab30e5c93a27933da', 'fe8147e10e454b259705d10d7514f2ac', '2');

-- ----------------------------
-- Procedure structure for `test_fi`
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_fi`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_fi`()
BEGIN
    declare  num int  default 10;
    while num<85 DO 
        INSERT INTO t_role_perms(id,role_id,perms_id) VALUES(REPLACE(UUID(),"-",""),'1',(SELECT id from t_perms WHERE sort=num));         
        set num=num+1;
        END WHILE; 
 
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `id_trigger`;
DELIMITER ;;
CREATE TRIGGER `id_trigger` BEFORE INSERT ON `t_student_course` FOR EACH ROW BEGIN
	SET new.ID=REPLACE(UUID(),'-','');
END
;;
DELIMITER ;
