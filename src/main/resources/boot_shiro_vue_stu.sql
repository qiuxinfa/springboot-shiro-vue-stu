/*
Navicat MySQL Data Transfer

Source Server         : mysql8
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : boot_shiro_vue_stu

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2020-02-19 13:08:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `question_choic`
-- ----------------------------
DROP TABLE IF EXISTS `question_choic`;
CREATE TABLE `question_choic` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `create_id` varchar(32) DEFAULT NULL COMMENT '题目创建人ID',
  `create_time` date DEFAULT NULL COMMENT '题目创建时间',
  `update_id` varchar(32) DEFAULT NULL COMMENT '题目更新人ID',
  `update_time` date DEFAULT NULL COMMENT '题目更新时间',
  `question_content` varchar(255) DEFAULT NULL COMMENT '题目内容',
  `choice_A` varchar(255) DEFAULT NULL COMMENT '选项A',
  `choice_B` varchar(255) DEFAULT NULL COMMENT '选项B',
  `choice_C` varchar(255) DEFAULT NULL COMMENT '选项C',
  `choice_D` varchar(255) DEFAULT NULL COMMENT '选项D',
  `question_answer` varchar(255) DEFAULT NULL COMMENT '题目答案',
  `question_explain` varchar(255) DEFAULT NULL COMMENT '题目解析',
  `question_score` varchar(255) DEFAULT NULL COMMENT '题目分数',
  `question_level` varchar(255) DEFAULT NULL COMMENT '题目难度等级',
  `question_subject` varchar(255) DEFAULT NULL COMMENT '题目所属科目',
  `question_type` int(2) DEFAULT '0' COMMENT '题目类型：2单选，3多选',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='选择题库，question_type2单选，3多选';

-- ----------------------------
-- Records of question_choic
-- ----------------------------
INSERT INTO `question_choic` VALUES ('120000', null, '2020-02-16', null, null, 'DNS 服务器和DHCP服务器的作用是（）', '将IP地址翻译为计算机名，为客户机分配IP地址', '将IP地址翻译为计算机名、解析计算机的MAC地址', '将计算机名翻译为IP地址、为客户机分配IP地址', '将计算机名翻译为IP地址、解析计算机的MAC地址', 'C', null, '2', '1', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120001', null, '2020-02-16', null, null, 'HTTP协议通常使用什么协议进行传输（）', 'ARP', 'DHCP', 'UDP', 'TCP', 'D', null, '2', '1', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120003', null, '2020-02-16', null, null, '查看DNS缓存记录的命令（）', 'ipconfig/displaydns', 'nslookup', 'ipconfig/release', 'ipconfig/flushdns', 'A', null, '2', '1', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120004', null, '2020-02-16', null, null, 'DHCP(        )报文的目的IP地址为255.255.255.255', 'DhcpDisover', 'DhcpOffer', 'DhcpAck', 'DhcpNack', 'A', null, '2', '1', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120005', null, '2020-02-16', null, null, '下列地址中，（  ）不是DHCP服务器分配的IP地址', '196.254.109.100', '169.254.12.42', '69.254.48.45', '96.254.54.15', 'B', null, '2', '1', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120006', null, '2020-02-16', null, null, 'DHCP通常可以为客户端自动配置哪些网络参数（）', 'IP，掩码，网关，DNS', 'IP，掩码，域名，SMTP', '网关，掩码，浏览器，FTP', 'IP，网关，DNS，服务器', 'A', null, '2', '1', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120007', null, '2020-02-16', null, null, 'DNS服务器在名称解析过程中正确的查询顺序为（）', '本地缓存记录→区域记录→转发域名服务器→根域名服务器', '区域记录→本地缓存记录→转发域名服务器→根域名服务器', '本地缓存记录→区域记录→根域名服务器→转发域名服务器', '区域记录→本地缓存记录→根域名服务器→转发域名服务器', 'A', null, '2', '1', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120008', null, '2020-02-16', null, null, '在TCP/IP协议中，序号小于（  ）的端口称为熟知端口(well-known port)。', '1024', '64', '256', '128', 'A', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120009', null, '2020-02-16', null, null, '在Internet上用TCP/IP播放视频，想用传输层的最快协议，以减少时延，要使用（ ）', 'UDP协议的低开销特性', 'UDP协议的高开销特性', 'TCP协议的低开销特性', 'TCP协议的高开销特性', 'A', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120010', null, '2020-02-16', null, null, '在TCP协议中采用（ ）来区分不同的应用进程', '端口号', 'IP地址', '协议类型', 'MAC地址', 'A', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120011', null, '2020-02-16', null, null, '可靠的传输协议中的“可靠”指的是（ ）', '使用面向连接的会话', '使用“尽力而为”的传输', '使用滑动窗口来维持可靠性', '使用确认重传机制来确保传输的数据不丢失', 'D', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120012', null, '2020-02-16', null, null, '假设拥塞窗口为50KB，接收窗口为80KB，TCP能够发送的最大字节数为（ ）', '50KB', '80KB', '130KB', '30KB', 'A', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120013', null, '2020-02-16', null, null, '主机A向主机B发送一个（SYN=1，seq=2000）的TCP报文，期望与主机B建立连接，若主机B接受连接请求，则主机B发送的正确有TCP报文可能是（ ）', '（SYN=0,ACK=0,seq=2001,ack=2001）', '（SYN=1,ACK=1,seq=2000,ack=2000）', '•	C.（SYN=1,ACK=1,seq=2001,ack=2001）', '（SYN=0,ACK=1,seq=2000,ack=2000）', 'C', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120014', null, '2020-02-16', null, null, '主机A向主机B连续发送了两个TCP报文段，其序号分别为70和100。试问： （1）第一个报文段携带了（）个字节的数据？', ' 70', '30', '100', '170', 'B', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120015', null, '2020-02-16', null, null, 'PCM脉码调制的过程（ ）', '采样、量化、编码', '量化、编码、采样', '编码、量化、采样', '采样、编码、量化', 'A', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120016', null, '2020-02-16', null, null, '若某采用4相位调制的通信链路的数据传输速率为2400bps，则该链路的波特率为（）', '600Baud', '1200Baud', '4800Baud', '9600Baud', 'B', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120017', null, '2020-02-16', null, null, '以下关于数据传输速率的描述中，错误的是( )', '数据传输速率表示每秒钟传输构成数据代码的二进制比特数', '对于二进制数据，数据传输速率为S=1/T (bps)', '常用的数据传输速率单位有: 1Mbps=1.024×106bps', '数据传输速率是描述数据传输系统性能的重要技术指标之一', 'C', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120018', null, '2020-02-16', null, null, '以下关于时分多路复用概念的描述中，错误的是.(  ).', '时分多路复用将线路使用的时间分成多个时间片', '时分多路复用分为同步时分多路复用与统计时分多路复用', '时分多路复用使用“帧”与数据链路层“帧”的概念、作用是不同的', '统计时分多路复用将时间片预先分配给各个信道', 'D', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120019', null, '2020-02-16', null, null, '1000BASE-T标准支持的传输介质是（）', '双绞线', '同轴电缆', '光纤', '无线电', 'A', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120020', null, '2020-02-16', null, null, '一个以太网交换机，读取整个数据帧，对数据帧进行差错校验后再转发出去，这种交换方式称为 （）', '直通交换', '无碎片交换', '无差错交换', '存储转发交换', 'D', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120021', null, '2020-02-16', null, null, '关于VLAN，下面的描述中正确的是（）', '一个新的交换机没有配置VLAN', '通过配置VLAN减少了冲突域的数量', '一个VLAN不能跨越多个交换机', '各个VLAN属于不同的广播域', 'D', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120022', null, '2020-02-16', null, null, '以太网协议中使用物理地址作用是什么？', '.用于不同子网中的主机进行通信', '作为第二层设备的唯一标识', '用于区别第二层第三层的协议数据单元', '保存主机可检测未知的远程设备', 'B', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120023', null, '2020-02-16', null, null, '以太网采用的CSMA/CD协议，当冲突发生时要通过二进制指数后退算法计算后退延时， 关于这个算法，以下论述中错误的是 （）', '冲突次数越多，后退的时间越短', '平均后退次数的多少与负载大小有关', '后退时延的平均值与负载大小有关', '重发次数达到一定极限后放弃发送', 'A', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120024', null, '2020-02-16', null, null, '以下关于交换机获取与其端口连接设备的MAC地址的叙述中，正确的是（）', '交换机从路由表中提取设备的MAC地址', '交换机检查端口流入分组的源地址', '交换机之间互相交换地址表', '网络管理员手工输入设备的MAC地址', 'B', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120025', null, '2020-02-16', null, null, '如果G (x）为11010010，以下4个CRC校验比特序列中只有哪个可能是正确的 ？', '1101011001', '101011011', '11011011', '1011001', 'B', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120026', null, '2020-02-16', null, null, '以下关于Ethernet物理地址的描述中，错误的是', 'Ethernet物理地址又叫做MAC地址', '48位的Ethernet物理地址允许分配的地址数达到247个', '网卡的物理地址写入主机的EPROM中', '每一块网卡的物理地址在全世界是唯一的', 'C', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120027', null, '2020-02-16', null, null, '下列帧类型中，不属于HDLC帧类型的是（）', '信息帧', '确认帧', '监控帧', '无编号帧', 'B', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120028', null, '2020-02-16', null, null, '通过交换机连接的一组站点，关于它们的广播域和冲突域说法正确的是（）', '组成一个冲突域，但不是一个广播域', '组成一个广播域，但不是一个冲突域', '组成一个冲突域，也是一个广播域', '既不一个冲突域，也不是一个广播域', 'B', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120029', null, '2020-02-16', null, null, '数据链路层的数据单位是（）', '帧', '字节', '比特', '分组', 'A', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120030', null, '2020-02-16', null, null, 'LAN参考模型可分为物理层、（ ）', 'MAC，LLC等三层', 'LLC，MHS等三层', 'MAC，FTAM等三层', 'LLC，VT等三层', 'A', null, '2', '2', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120031', null, '2020-02-16', null, null, '测试', 'A', 'B', 'C', 'D', 'B', '解析', '2', '1', '测试', '2');
INSERT INTO `question_choic` VALUES ('120032', null, '2020-02-16', null, null, 'DNS 服务器和DHCP服务器的作用是（）', 'A', 'B', 'C', 'D', 'B', '哦解析', '2', '1', '计算机网络', '2');
INSERT INTO `question_choic` VALUES ('120033', null, '2020-02-16', null, null, '测试（）', '11', '22', '33', '44', 'A', '', '2', '1', 'aa', '2');
INSERT INTO `question_choic` VALUES ('120034', null, '2020-02-16', null, null, '测试2（）', '1', '2', '3', '4', 'D', null, '2', '1', 'aa', '2');

-- ----------------------------
-- Table structure for `question_exam`
-- ----------------------------
DROP TABLE IF EXISTS `question_exam`;
CREATE TABLE `question_exam` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `exam_desc` varchar(200) DEFAULT NULL COMMENT '考试介绍',
  `exam_course` varchar(50) DEFAULT NULL COMMENT '课程名称',
  `paper_id` varchar(32) DEFAULT NULL COMMENT '璇曞嵎ID',
  `exam_date` date DEFAULT NULL COMMENT '考试日期',
  `total_time` int(3) DEFAULT NULL COMMENT '考试时长',
  `major` varchar(32) DEFAULT NULL COMMENT '专业',
  `institute` varchar(32) DEFAULT NULL COMMENT '学院',
  `total_score` int(4) DEFAULT NULL COMMENT '总分',
  `exam_type` int(4) DEFAULT NULL COMMENT '鑰冭瘯绫诲瀷',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='考试安排';

-- ----------------------------
-- Records of question_exam
-- ----------------------------
INSERT INTO `question_exam` VALUES ('09977ea62cb24161be16c99dc40c4f85', '测试a', '测试a', 'df29dd07ee18401e9c40cc971032205b', '2020-02-19', '60', '0f413024eb5c460fb129bf06eb4ee6c9', '271c18020e6a11ea85a85c93a27933da', '60', null);
INSERT INTO `question_exam` VALUES ('1', '1', '计算机网络', '001', '2020-02-16', '120', '0f413024eb5c460fb129bf06eb4ee6c9', '271c18020e6a11ea85a85c93a27933da', '100', '1');
INSERT INTO `question_exam` VALUES ('2', '考试介绍', 'Java基础', '002', '2020-02-17', '12', '940c25ce0e7111ea85a85c93a27933da', '271c18020e6a11ea85a85c93a27933da', '100', '2');
INSERT INTO `question_exam` VALUES ('23dfed584d66458f91ba1d436b676f08', '这是考试介绍啊', '测试', 'a4f1365e52ba11eaa6ba5c93a27933da', '2020-02-18', '60', '0f413024eb5c460fb129bf06eb4ee6c9', '271c18020e6a11ea85a85c93a27933da', '40', null);
INSERT INTO `question_exam` VALUES ('3', '考试介绍啊', 'C语言', '003', '2020-02-16', '90', '940c25ce0e7111ea85a85c93a27933da', '271c18020e6a11ea85a85c93a27933da', '80', '1');
INSERT INTO `question_exam` VALUES ('62bcf36f6eee4a00809bca1525009b9c', 'aa', '测试2', 'ac280cfb52ba11eaa6ba5c93a27933da', '2020-02-18', '90', '940c25ce0e7111ea85a85c93a27933da', '271c18020e6a11ea85a85c93a27933da', '60', null);

-- ----------------------------
-- Table structure for `question_exam_record`
-- ----------------------------
DROP TABLE IF EXISTS `question_exam_record`;
CREATE TABLE `question_exam_record` (
  `id` varchar(32) NOT NULL COMMENT '考试记录表的主键',
  `exam_id` varchar(32) DEFAULT NULL COMMENT '考试安排ID',
  `join_id` varchar(32) DEFAULT NULL COMMENT '考试参与者的用户id',
  `join_date` date DEFAULT NULL COMMENT '参加考试的时间',
  `join_time_cost` int(11) DEFAULT '0' COMMENT '完成考试所用的时间,单位分钟',
  `join_score` int(11) DEFAULT '0' COMMENT '参与考试的实际得分',
  `join_result_level` int(11) DEFAULT '0' COMMENT '考试结果的等级',
  `join_answer_fill` varchar(4096) DEFAULT NULL COMMENT '考生填空题答案，题与题之间用*号分隔，同一个题的2个空之间用#号分隔',
  `join_answer_judge` varchar(255) DEFAULT NULL COMMENT '考生判断题答案，题与题之间用*号分隔',
  `join_answer_single` varchar(255) DEFAULT NULL COMMENT '考生单选题答案，题与题之间用*号分隔',
  `join_answer_multiple` varchar(255) DEFAULT NULL COMMENT '考生多选题答案，题与题之间用*号分隔',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='考试记录表';

-- ----------------------------
-- Records of question_exam_record
-- ----------------------------
INSERT INTO `question_exam_record` VALUES ('116ff5be9e3644b3ae2e771620443ca5', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '3', null, '?null*?null*TCP#null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', 'T*', '?*', '');
INSERT INTO `question_exam_record` VALUES ('1db304c5b7804273aef2d6b86fa2e205', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '0', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', '', '?*?*', '');
INSERT INTO `question_exam_record` VALUES ('35f4a8a9a0a14e38b3c05fdd2c4d8d3c', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '0', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', '', '?*', '');
INSERT INTO `question_exam_record` VALUES ('421f3f031de64cbeafe63f11cdba25db', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '2', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', 'T*?*', '', '');
INSERT INTO `question_exam_record` VALUES ('4da79a83849347b7bc2e1435612fb5a8', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '1', '0', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', '?*?*', '', '');
INSERT INTO `question_exam_record` VALUES ('50b6861374a3457a8894e8109d38b8d2', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '1', '4', null, '?null*?null*#UDP*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', 'T*?*', '?*', '');
INSERT INTO `question_exam_record` VALUES ('5f06b8718b234f09845168ee54f40faf', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '0', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', '?*?*', '', '');
INSERT INTO `question_exam_record` VALUES ('6964953e951c404bade02b0db3842264', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '1', '2', null, '?null*?null*#UDP*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', '?*?*', '?*?*', '');
INSERT INTO `question_exam_record` VALUES ('71b27c279ca84f4e8ebfad6c00ed76de', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '2', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', 'T*T*', '', '');
INSERT INTO `question_exam_record` VALUES ('7f449aa2c1e54a6985eb4c12722f404f', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '1', '4', null, '?null*?null*TCP#UDP*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', 'T*?*', '?*?*', '');
INSERT INTO `question_exam_record` VALUES ('90def2359fce4337a6ca9255896bdf45', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '2', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', 'T*?*', '', '');
INSERT INTO `question_exam_record` VALUES ('967e291cfff242d4afeb67d073a86f12', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '1', '4', null, '?null*?null*TCP#UDP*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', 'T*?*', '?*?*', '');
INSERT INTO `question_exam_record` VALUES ('af76bc0e74484041908e6052b1561047', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '2', null, '?null*?null*TCP#UDP*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', '', 'A*', '');
INSERT INTO `question_exam_record` VALUES ('b1c977efd68847b084c7f30684df44d9', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '0', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', '?*T*', '', '');
INSERT INTO `question_exam_record` VALUES ('b46f417a81dc4ff1a0419e8931a113c3', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '0', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', '', '?*?*', '');
INSERT INTO `question_exam_record` VALUES ('b6348fce9243418293d6a9849e476986', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '1', '0', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', '', '?*?*', '');
INSERT INTO `question_exam_record` VALUES ('c26940776f304fcc95bac8b96feeab3d', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '0', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', '', '', '');
INSERT INTO `question_exam_record` VALUES ('c668b21adfdd4cdeaee8452daef427f3', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '0', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', '?*T*', '', '');
INSERT INTO `question_exam_record` VALUES ('d0fcc4b1febf4a8282ab5e3262b6786a', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '2', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', 'T*', '', '');
INSERT INTO `question_exam_record` VALUES ('d1819d5a88c04ca0897bc3b2dd409107', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '2', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', 'T*', '', '');
INSERT INTO `question_exam_record` VALUES ('d90abbb1cc984a79adfca454fbb2de25', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '1', '0', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', '?*', '', '');
INSERT INTO `question_exam_record` VALUES ('dfae47d4c8b847d9aad5588f8ac6a8fc', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '0', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', '', '?*?*', '');
INSERT INTO `question_exam_record` VALUES ('f80cd6f97ab343ec8d4aa7e14b02ae15', '1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18', '0', '2', null, '?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*?null*', 'T*', '', '');

-- ----------------------------
-- Table structure for `question_fill_judge`
-- ----------------------------
DROP TABLE IF EXISTS `question_fill_judge`;
CREATE TABLE `question_fill_judge` (
  `id` varchar(32) NOT NULL COMMENT '填空题id',
  `create_id` varchar(32) DEFAULT NULL COMMENT '题目创建人ID',
  `create_time` date DEFAULT NULL COMMENT '题目创建时间',
  `update_id` varchar(32) DEFAULT NULL COMMENT '题目更新人ID',
  `update_time` date DEFAULT NULL COMMENT '题目更新时间',
  `question_content` varchar(255) DEFAULT NULL COMMENT '题目内容',
  `question_answer` varchar(255) DEFAULT NULL COMMENT '题目答案',
  `question_explain` varchar(255) DEFAULT NULL COMMENT '题目解析',
  `question_score` varchar(255) DEFAULT NULL COMMENT '题目分数',
  `question_level` varchar(255) DEFAULT NULL COMMENT '题目难度等级',
  `question_subject` varchar(255) DEFAULT NULL COMMENT '题目所属科目',
  `question_type` int(2) DEFAULT '0' COMMENT '题目类型：0填空题，1判断题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='填空题和判断题库，question_type，0填空1判断';

-- ----------------------------
-- Records of question_fill_judge
-- ----------------------------
INSERT INTO `question_fill_judge` VALUES ('10000', null, '2020-02-16', null, null, '从计算机网络系统组成的角度看，计算机网络可以分为()和()', '通信子网资源子网', null, '2', '3', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10001', null, '2020-02-16', null, null, '收发电子邮件，属于ISO/OSI RM中 ()层的功能。', '应用', null, '2', '1', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10002', null, '2020-02-16', null, null, '在TCP/IP层次模型中与OSI参考模型第四层相对应的主要协议有()和(),其中后者提供无连接的不可靠传输服', 'TCP（传输控制协议） UDP（用户数据报协议） ', null, '2', '2', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10003', null, '2020-02-16', null, null, '计算机网络中常用的三种有线媒体是 (),()和 ()', '同轴电缆.双绞线 光纤', null, '2', '1', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10004', null, '2020-02-16', null, null, '国内最早的四大网络包括原邮电部的ChinaNet. 原电子部的ChinaGBN. 教育部的()和中科院的CSTnet', 'CERnet (或中国教育科研网)', null, '2', '4', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10005', null, '2020-02-16', null, null, '复盖一个国家，地区或几个洲的计算机网络称为()，在同一建筑或复盖几公里内范围的网络称为()，而介于两者之间的是()', ' 广域网       局域网     城域网', null, '2', '1', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10006', null, '2020-02-16', null, null, 'Outlook等常用电子邮件软件接收邮件使用的协议是(),发送邮件时使用的协议是()', 'POP3    SMTP    ', null, '2', '1', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10007', null, '2020-02-16', null, null, '通信系统中，称调制前的电信号为()信号，调制后的信号为调制信号', '基带', null, '2', '1', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10008', null, '2020-02-16', null, null, '按照IPV4标准,IP地址205.3.127.13属于()类地址', 'C', null, '2', '1', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10009', null, '2020-02-16', null, null, '计算机网络采用()技术，而传统电话网络则采用()技术', '分组交换电路交换', null, '2', '1', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10010', null, '2020-02-16', null, null, '计算机内传输的信号是()，而公用电话系统的传输系统只能传输()', '数字信号模拟信号', null, '2', '1', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10011', null, '2020-02-16', null, null, '通信系统中，称调制前的电信号为()，调制后的信号叫()。', '基带信号调制信号', null, '2', '1', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10012', null, '2020-02-16', null, null, 'IP地址分()和()两个部分', '网络号主机号', null, '2', '1', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10013', null, '2020-02-16', null, null, ' IP地址协议作网间网中()层协议，提供无连接的数据报传输机制，IP数据报也分为()和()两个部分', '网络报头数据区', null, '2', '2', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10014', null, '2020-02-16', null, null, '()是一个简单的远程终端协议。', 'TELNET', null, '2', '1', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10015', null, '2020-02-16', null, null, '在同一个系统内，相邻层之间交换信息的连接点称之为()，而低层模块向高层提供功能性的支持称之为()。', '接口服务', null, '2', '1', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10016', null, '2020-02-16', null, null, 'Internet广泛使用的电子邮件传送协议是()', 'SMTP', null, '2', '1', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10017', null, '2020-02-16', null, null, '按交换方式来分类，计算机网络可以分为电路交换网，  报文交换网  和()三种', '分组交换网', null, '2', '3', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10018', null, '2020-02-16', null, null, 'Intranet分层结构包括网络、(),应用三个层次。', '服务', null, '2', '1', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10019', null, '2020-02-16', null, null, 'WWW上的每一个网页都有一个独立的地址，这些地址称为  ()', '统一资源定位器/URL ', null, '2', '2', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10020', null, '2020-02-16', null, null, '分组交换网中，附加信息用来在网络中进行路由选择、() 和流量控制', '差错纠正  ', null, '2', '4', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10021', null, '2020-02-16', null, null, '根据IEEE802模型的标准将数据链路层划分为LLC子层和 ()子层。', ' MAC ', null, '2', '3', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10022', null, '2020-02-16', null, null, '据交换的路由信息的不同，路由算法可以分为两大类：  ()  和链路状态算法', '距离向量算法', null, '2', '3', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10023', null, '2020-02-16', null, null, '假定某信道受奈氏准则限制的最高码元速率为2000码元/秒。如果采用振幅调制，把码元的振幅划分为16个不同等级来传送，那么可以获得的数据率为 () b/s。', '80000 ', null, '2', '5', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10024', null, '2020-02-16', null, null, '交换型以太网系统中的 ()  ，以其为核心联接站点或者网段，端口之间帧的输入和输出已不再受到CSMA/CD媒体访问控制协议的约束。', '以太网交换器 ', null, '2', '5', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10025', null, '2020-02-16', null, null, '局域网络参考模型是以 ()标准为基础的', 'IEEE802', null, '2', '5', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10026', null, '2020-02-16', null, null, '路由器的核心是 () 。', ' 路由表', null, '2', '3', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10027', null, '2020-02-16', null, null, '若 HDLC 帧数据段中出现比特串“ 01011111110 ”，则比特填充后的输出为()', '10111110110', null, '2', '5', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('10028', null, '2020-02-16', null, null, '数字调制的三种基本形式：移幅键控法ASK、 ()、移相键控法PSK', '移频键控法FSK', null, '2', '5', '计算机网络', '0');
INSERT INTO `question_fill_judge` VALUES ('110001', null, '2020-02-16', null, null, '与有线网相比,无线网的数据传输率一般相对较慢', 'T', null, '2', '1', '计算机网络', '1');
INSERT INTO `question_fill_judge` VALUES ('110002', null, '2020-02-16', null, null, 'OSI参考模型中,不同节点的同等层具有不同的功能', 'F', null, '2', '1', '计算机网络', '1');
INSERT INTO `question_fill_judge` VALUES ('110003', null, '2020-02-16', null, null, '普通电脑不能作为服务器', 'F', null, '2', '1', '计算机网络', '1');
INSERT INTO `question_fill_judge` VALUES ('110004', null, '2020-02-16', null, null, '没有网线的电脑不能连入互联网', 'F', null, '2', '1', '计算机网络', '1');
INSERT INTO `question_fill_judge` VALUES ('110005', null, '2020-02-16', null, null, '网卡必须安装驱动程序', 'T', null, '2', '2', '计算机网络', '1');
INSERT INTO `question_fill_judge` VALUES ('110006', null, '2020-02-16', null, null, 'UTP为屏蔽双绞线', 'F', null, '2', '2', '计算机网络', '1');
INSERT INTO `question_fill_judge` VALUES ('110007', null, '2020-02-16', null, null, '网络接口卡又称为网卡,它是构成网络的基本部件', 'T', null, '2', '2', '计算机网络', '1');
INSERT INTO `question_fill_judge` VALUES ('110008', null, '2020-02-16', null, null, '无线AP可以成倍地扩展网络覆盖范围', 'T', null, '2', '3', '计算机网络', '1');
INSERT INTO `question_fill_judge` VALUES ('110009', null, '2020-02-16', null, null, 'SMTP是一组用于由源地址到目的地址传送邮件的协议', 'T', null, '2', '4', '计算机网络', '1');
INSERT INTO `question_fill_judge` VALUES ('110010', null, '2020-02-16', null, null, '任务管理器可以关闭所有的进程', 'F', null, '2', '3', '计算机网络', '1');
INSERT INTO `question_fill_judge` VALUES ('110011', null, '2020-02-16', null, null, '利用BT下载时,用户越多,下载速度越快', 'T', null, '2', '2', '计算机网络', '1');
INSERT INTO `question_fill_judge` VALUES ('110012', null, '2020-02-16', null, null, 'INTERNET上向朋友发送电子邮件,必须知道对方的真实姓名和家庭住址', 'F', null, '2', '1', '计算机网络', '1');

-- ----------------------------
-- Table structure for `question_paper`
-- ----------------------------
DROP TABLE IF EXISTS `question_paper`;
CREATE TABLE `question_paper` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `paper_id` varchar(32) DEFAULT NULL COMMENT '试卷ID',
  `question_id` varchar(32) DEFAULT NULL COMMENT '题目ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='试卷';

-- ----------------------------
-- Records of question_paper
-- ----------------------------
INSERT INTO `question_paper` VALUES ('35568b1d52cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '10014');
INSERT INTO `question_paper` VALUES ('3560aa7852cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '10020');
INSERT INTO `question_paper` VALUES ('356e3b9752cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '10002');
INSERT INTO `question_paper` VALUES ('357b727252cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '10025');
INSERT INTO `question_paper` VALUES ('358ae11e52cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '10012');
INSERT INTO `question_paper` VALUES ('3594d95352cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '110002');
INSERT INTO `question_paper` VALUES ('359f475f52cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '110011');
INSERT INTO `question_paper` VALUES ('35ae867552cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '110008');
INSERT INTO `question_paper` VALUES ('35ba422052cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '110005');
INSERT INTO `question_paper` VALUES ('35c7e42552cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '110003');
INSERT INTO `question_paper` VALUES ('35d3a56152cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '120011');
INSERT INTO `question_paper` VALUES ('35e86fd052cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '120034');
INSERT INTO `question_paper` VALUES ('35f1b71b52cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '120010');
INSERT INTO `question_paper` VALUES ('35fc1d5552cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '120004');
INSERT INTO `question_paper` VALUES ('3607f50052cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '120031');
INSERT INTO `question_paper` VALUES ('3613c4bb52cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '120030');
INSERT INTO `question_paper` VALUES ('3621cc8652cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '120022');
INSERT INTO `question_paper` VALUES ('363029b652cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '120001');
INSERT INTO `question_paper` VALUES ('363dbebc52cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '120003');
INSERT INTO `question_paper` VALUES ('364dfd5352cb11eaa6ba5c93a27933da', 'a4f1365e52ba11eaa6ba5c93a27933da', '120017');
INSERT INTO `question_paper` VALUES ('5e6c14b252cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '10005');
INSERT INTO `question_paper` VALUES ('5e75a81b52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '10020');
INSERT INTO `question_paper` VALUES ('5e82ba4e52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '10020');
INSERT INTO `question_paper` VALUES ('5e8ce16f52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '10028');
INSERT INTO `question_paper` VALUES ('5e97076052cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '10022');
INSERT INTO `question_paper` VALUES ('5ea4bace52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '10009');
INSERT INTO `question_paper` VALUES ('5eaea2e252cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '10004');
INSERT INTO `question_paper` VALUES ('5eba605f52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '10025');
INSERT INTO `question_paper` VALUES ('5ec6468c52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '10014');
INSERT INTO `question_paper` VALUES ('5ed05c2d52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '10001');
INSERT INTO `question_paper` VALUES ('5ed70fbc52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '110008');
INSERT INTO `question_paper` VALUES ('5ee305eb52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '110003');
INSERT INTO `question_paper` VALUES ('5ef067a852cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '110006');
INSERT INTO `question_paper` VALUES ('5efedcee52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '110008');
INSERT INTO `question_paper` VALUES ('5f0a19e852cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '110001');
INSERT INTO `question_paper` VALUES ('5f15ae2d52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '120018');
INSERT INTO `question_paper` VALUES ('5f21b7fe52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '120021');
INSERT INTO `question_paper` VALUES ('5f2b63bf52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '120008');
INSERT INTO `question_paper` VALUES ('5f35d4b052cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '120019');
INSERT INTO `question_paper` VALUES ('5f4b718a52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '120000');
INSERT INTO `question_paper` VALUES ('5f57540852cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '120027');
INSERT INTO `question_paper` VALUES ('5f61545652cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '120004');
INSERT INTO `question_paper` VALUES ('5f6bf36e52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '120031');
INSERT INTO `question_paper` VALUES ('5f7615bf52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '120030');
INSERT INTO `question_paper` VALUES ('5f7ff78c52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '120003');
INSERT INTO `question_paper` VALUES ('5f8698ca52cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '120015');
INSERT INTO `question_paper` VALUES ('5f8d954452cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '120025');
INSERT INTO `question_paper` VALUES ('5f9a931652cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '120014');
INSERT INTO `question_paper` VALUES ('5fa39dd352cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '120001');
INSERT INTO `question_paper` VALUES ('5fadb81852cb11eaa6ba5c93a27933da', 'ac280cfb52ba11eaa6ba5c93a27933da', '120032');
INSERT INTO `question_paper` VALUES ('ce56951b52d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '10018');
INSERT INTO `question_paper` VALUES ('ce7dff6252d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '10019');
INSERT INTO `question_paper` VALUES ('ce88f2df52d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '10020');
INSERT INTO `question_paper` VALUES ('ce97e86852d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '10009');
INSERT INTO `question_paper` VALUES ('cead968e52d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '10003');
INSERT INTO `question_paper` VALUES ('ced2485e52d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '110001');
INSERT INTO `question_paper` VALUES ('cee0e46852d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '110006');
INSERT INTO `question_paper` VALUES ('ceec312552d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '110012');
INSERT INTO `question_paper` VALUES ('cef9b3e152d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '110002');
INSERT INTO `question_paper` VALUES ('cf07844952d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '110003');
INSERT INTO `question_paper` VALUES ('cf130ae452d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120016');
INSERT INTO `question_paper` VALUES ('cf20d5de52d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120008');
INSERT INTO `question_paper` VALUES ('cf2aee3952d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120029');
INSERT INTO `question_paper` VALUES ('cf3a7f9352d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120032');
INSERT INTO `question_paper` VALUES ('cf518ad552d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120022');
INSERT INTO `question_paper` VALUES ('cf5d86c152d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120017');
INSERT INTO `question_paper` VALUES ('cf738c8552d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120034');
INSERT INTO `question_paper` VALUES ('cf865e3452d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120026');
INSERT INTO `question_paper` VALUES ('cf9a297f52d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120030');
INSERT INTO `question_paper` VALUES ('cfa8078952d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120022');
INSERT INTO `question_paper` VALUES ('cfb5533152d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120005');
INSERT INTO `question_paper` VALUES ('cfc2b45b52d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120015');
INSERT INTO `question_paper` VALUES ('cfcb792352d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120031');
INSERT INTO `question_paper` VALUES ('cfd6f8a752d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120004');
INSERT INTO `question_paper` VALUES ('cfe1a8c152d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120031');
INSERT INTO `question_paper` VALUES ('cff262e452d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120025');
INSERT INTO `question_paper` VALUES ('d001305652d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120021');
INSERT INTO `question_paper` VALUES ('d00d130f52d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120014');
INSERT INTO `question_paper` VALUES ('d01acd6a52d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120030');
INSERT INTO `question_paper` VALUES ('d02a0f2b52d411eaa6ba5c93a27933da', 'df29dd07ee18401e9c40cc971032205b', '120009');
INSERT INTO `question_paper` VALUES ('dcf9f57b506c11eabf485c93a27933da', '001', '10000');
INSERT INTO `question_paper` VALUES ('dcfde8bd506c11eabf485c93a27933da', '001', '10001');
INSERT INTO `question_paper` VALUES ('dcfdf0ce506c11eabf485c93a27933da', '001', '10002');
INSERT INTO `question_paper` VALUES ('dcfdf5e4506c11eabf485c93a27933da', '001', '10003');
INSERT INTO `question_paper` VALUES ('dcfdf9e7506c11eabf485c93a27933da', '001', '10004');
INSERT INTO `question_paper` VALUES ('dcfdfd96506c11eabf485c93a27933da', '001', '10005');
INSERT INTO `question_paper` VALUES ('dcfe01d0506c11eabf485c93a27933da', '001', '10006');
INSERT INTO `question_paper` VALUES ('dcfe061d506c11eabf485c93a27933da', '001', '10007');
INSERT INTO `question_paper` VALUES ('dcfe0a33506c11eabf485c93a27933da', '001', '10008');
INSERT INTO `question_paper` VALUES ('dcfe0dc7506c11eabf485c93a27933da', '001', '10009');
INSERT INTO `question_paper` VALUES ('dcfe11c1506c11eabf485c93a27933da', '001', '10010');
INSERT INTO `question_paper` VALUES ('dcfe1575506c11eabf485c93a27933da', '001', '10011');
INSERT INTO `question_paper` VALUES ('dcfe1983506c11eabf485c93a27933da', '001', '10012');
INSERT INTO `question_paper` VALUES ('dcfe1d0f506c11eabf485c93a27933da', '001', '10013');
INSERT INTO `question_paper` VALUES ('dcfe2105506c11eabf485c93a27933da', '001', '10014');
INSERT INTO `question_paper` VALUES ('dcfe24b5506c11eabf485c93a27933da', '001', '10015');
INSERT INTO `question_paper` VALUES ('dcfe28d7506c11eabf485c93a27933da', '001', '10016');
INSERT INTO `question_paper` VALUES ('dcfe2c77506c11eabf485c93a27933da', '001', '10017');
INSERT INTO `question_paper` VALUES ('dcfe3071506c11eabf485c93a27933da', '001', '10018');
INSERT INTO `question_paper` VALUES ('dcfe342c506c11eabf485c93a27933da', '001', '10019');
INSERT INTO `question_paper` VALUES ('dcfe383a506c11eabf485c93a27933da', '001', '10020');
INSERT INTO `question_paper` VALUES ('dcfe3bd6506c11eabf485c93a27933da', '001', '10021');
INSERT INTO `question_paper` VALUES ('dcfe3ff4506c11eabf485c93a27933da', '001', '10022');
INSERT INTO `question_paper` VALUES ('dcfe439c506c11eabf485c93a27933da', '001', '10023');
INSERT INTO `question_paper` VALUES ('dcfe4844506c11eabf485c93a27933da', '001', '10024');
INSERT INTO `question_paper` VALUES ('dcfe4c62506c11eabf485c93a27933da', '001', '10025');
INSERT INTO `question_paper` VALUES ('dcfe53b1506c11eabf485c93a27933da', '001', '10026');
INSERT INTO `question_paper` VALUES ('dcfe5ab9506c11eabf485c93a27933da', '001', '10027');
INSERT INTO `question_paper` VALUES ('dcfe5ef3506c11eabf485c93a27933da', '001', '10028');
INSERT INTO `question_paper` VALUES ('dcfe638b506c11eabf485c93a27933da', '001', '110001');
INSERT INTO `question_paper` VALUES ('dcfe6804506c11eabf485c93a27933da', '001', '110002');
INSERT INTO `question_paper` VALUES ('dcfe6bcb506c11eabf485c93a27933da', '001', '110003');
INSERT INTO `question_paper` VALUES ('dcfe6f6b506c11eabf485c93a27933da', '001', '110004');
INSERT INTO `question_paper` VALUES ('dcfe7379506c11eabf485c93a27933da', '001', '110005');
INSERT INTO `question_paper` VALUES ('dcfe7825506c11eabf485c93a27933da', '001', '110006');
INSERT INTO `question_paper` VALUES ('dcfe7bdc506c11eabf485c93a27933da', '001', '110007');
INSERT INTO `question_paper` VALUES ('dcfe7f68506c11eabf485c93a27933da', '001', '110008');
INSERT INTO `question_paper` VALUES ('dcfe836b506c11eabf485c93a27933da', '001', '110009');
INSERT INTO `question_paper` VALUES ('dcfe8771506c11eabf485c93a27933da', '001', '110010');
INSERT INTO `question_paper` VALUES ('dcfe8b14506c11eabf485c93a27933da', '001', '110011');
INSERT INTO `question_paper` VALUES ('dcfe8e8d506c11eabf485c93a27933da', '001', '110012');
INSERT INTO `question_paper` VALUES ('ede101e3506c11eabf485c93a27933da', '001', '120000');
INSERT INTO `question_paper` VALUES ('ede113da506c11eabf485c93a27933da', '001', '120001');
INSERT INTO `question_paper` VALUES ('ede1177d506c11eabf485c93a27933da', '001', '120003');
INSERT INTO `question_paper` VALUES ('ede11a20506c11eabf485c93a27933da', '001', '120004');
INSERT INTO `question_paper` VALUES ('ede11c70506c11eabf485c93a27933da', '001', '120005');
INSERT INTO `question_paper` VALUES ('ede11f1b506c11eabf485c93a27933da', '001', '120006');
INSERT INTO `question_paper` VALUES ('ede12c9d506c11eabf485c93a27933da', '001', '120007');
INSERT INTO `question_paper` VALUES ('ede12f83506c11eabf485c93a27933da', '001', '120008');
INSERT INTO `question_paper` VALUES ('ede131c8506c11eabf485c93a27933da', '001', '120009');
INSERT INTO `question_paper` VALUES ('ede1345b506c11eabf485c93a27933da', '001', '120010');
INSERT INTO `question_paper` VALUES ('ede136fa506c11eabf485c93a27933da', '001', '120011');
INSERT INTO `question_paper` VALUES ('ede13942506c11eabf485c93a27933da', '001', '120012');
INSERT INTO `question_paper` VALUES ('ede13b73506c11eabf485c93a27933da', '001', '120013');
INSERT INTO `question_paper` VALUES ('ede13df6506c11eabf485c93a27933da', '001', '120014');
INSERT INTO `question_paper` VALUES ('ede14072506c11eabf485c93a27933da', '001', '120015');
INSERT INTO `question_paper` VALUES ('ede142b2506c11eabf485c93a27933da', '001', '120016');
INSERT INTO `question_paper` VALUES ('ede144df506c11eabf485c93a27933da', '001', '120017');
INSERT INTO `question_paper` VALUES ('ede14799506c11eabf485c93a27933da', '001', '120018');
INSERT INTO `question_paper` VALUES ('ede14a15506c11eabf485c93a27933da', '001', '120019');
INSERT INTO `question_paper` VALUES ('ede14e66506c11eabf485c93a27933da', '001', '120020');
INSERT INTO `question_paper` VALUES ('ede1532e506c11eabf485c93a27933da', '001', '120021');
INSERT INTO `question_paper` VALUES ('ede15750506c11eabf485c93a27933da', '001', '120022');
INSERT INTO `question_paper` VALUES ('ede1623f506c11eabf485c93a27933da', '001', '120023');
INSERT INTO `question_paper` VALUES ('ede16761506c11eabf485c93a27933da', '001', '120024');
INSERT INTO `question_paper` VALUES ('ede169bd506c11eabf485c93a27933da', '001', '120025');
INSERT INTO `question_paper` VALUES ('ede16c09506c11eabf485c93a27933da', '001', '120026');
INSERT INTO `question_paper` VALUES ('ede16f2b506c11eabf485c93a27933da', '001', '120027');
INSERT INTO `question_paper` VALUES ('ede171a6506c11eabf485c93a27933da', '001', '120028');
INSERT INTO `question_paper` VALUES ('ede173db506c11eabf485c93a27933da', '001', '120029');
INSERT INTO `question_paper` VALUES ('ede1763b506c11eabf485c93a27933da', '001', '120030');
INSERT INTO `question_paper` VALUES ('ede17931506c11eabf485c93a27933da', '001', '120031');
INSERT INTO `question_paper` VALUES ('ede17b81506c11eabf485c93a27933da', '001', '120032');
INSERT INTO `question_paper` VALUES ('ede17da9506c11eabf485c93a27933da', '001', '120033');
INSERT INTO `question_paper` VALUES ('ede17fd2506c11eabf485c93a27933da', '001', '120034');

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
INSERT INTO `t_course` VALUES ('f6ea624a4fad46c0b0dcf17839293387', 'aa', '1', '1.0', '2019-12-12', '2019-12-13', '2019-12-13', '2019-12-20');

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
INSERT INTO `t_course_teacher` VALUES ('15220f5905ad4c738834eab79ef13a5b', 'f6ea624a4fad46c0b0dcf17839293387', '4f8f02dff98044ffb7f7dfbc8c57c596');
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
INSERT INTO `t_grade` VALUES ('0801bdf5d4b945239daa87fbb4c9b99f', '032e7ac5fe4d45ff824c7cf125c70d3f', 'f6ea624a4fad46c0b0dcf17839293387', null, null, '0', '4f8f02dff98044ffb7f7dfbc8c57c596', '0');
INSERT INTO `t_grade` VALUES ('3585bcf9ae5f4119b774f539c8c27ac8', '032e7ac5fe4d45ff824c7cf125c70d3f', 'a3827e5a0bcb4b29a1a531baddd395a8', null, null, '0', 'dbca8e5caec24c6ca4b3dccd053f9102', '0');
INSERT INTO `t_grade` VALUES ('5aaea31d7f604dccbecb05fb3d3a9ed5', '032e7ac5fe4d45ff824c7cf125c70d3f', '86c23626e20e4506947502052d8487a2', null, null, '88', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_grade` VALUES ('673e7ecfc20f4711945cd52920e3cbb6', '032e7ac5fe4d45ff824c7cf125c70d3f', '3ec1ce34d6f542c1ac13fcf0b9224690', null, null, '0', '4f8f02dff98044ffb7f7dfbc8c57c596', '0');
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
INSERT INTO `t_login_log` VALUES ('078d015f58bd4d35bac1bea4bf4a8948', 'fe8147e10e454b259705d10d7514f2ac', '2019-12-13 14:42:33', '192.168.1.102', '1');
INSERT INTO `t_login_log` VALUES ('081549c0f447463a9e48628cbce6b81b', '67eb71f1091911eab9205c93a27933da', '2019-12-12 12:36:42', '192.168.43.152', '147');
INSERT INTO `t_login_log` VALUES ('0a85027a395148f7a63ca6c1fce103a4', '67eb71f1091911eab9205c93a27933da', '2019-11-18 13:16:42', '192.168.43.152', '3');
INSERT INTO `t_login_log` VALUES ('0bbc33519095478aa3325ea386e0513b', '67eb71f1091911eab9205c93a27933da', '2020-02-19 03:35:54', '192.168.43.152', '180');
INSERT INTO `t_login_log` VALUES ('0bef25303fc042a1ac934782d9652b7c', '4f8f02dff98044ffb7f7dfbc8c57c596', '2019-12-01 08:43:52', '192.168.43.152', '3');
INSERT INTO `t_login_log` VALUES ('0c0263ed012d4f7ba01c643dcf019ee5', '67eb71f1091911eab9205c93a27933da', '2019-11-20 13:20:00', '192.168.43.152', '28');
INSERT INTO `t_login_log` VALUES ('0c626ecc257f4e078c1f84b31fb3d9b3', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-26 15:06:15', '192.168.43.152', '2');
INSERT INTO `t_login_log` VALUES ('0edae2179ac54362b69563e8c8008479', '67eb71f1091911eab9205c93a27933da', '2019-11-21 12:17:10', '192.168.43.152', '38');
INSERT INTO `t_login_log` VALUES ('0f7b1a68f9f6471e87df6369d52f425c', '67eb71f1091911eab9205c93a27933da', '2019-11-23 05:22:26', '192.168.43.152', '71');
INSERT INTO `t_login_log` VALUES ('10313cf77a104987a79179d674488eb0', '67eb71f1091911eab9205c93a27933da', '2019-11-24 14:22:31', '192.168.43.152', '114');
INSERT INTO `t_login_log` VALUES ('10c9acd6bc0f4ab3aa8ea0e593a3118d', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-12-14 08:32:30', '192.168.43.152', '13');
INSERT INTO `t_login_log` VALUES ('12548b4d3d3f405d80b06e375c7c171b', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-27 13:01:24', '192.168.43.152', '4');
INSERT INTO `t_login_log` VALUES ('12706022f3d04551aafbb3ce010ab8c1', '67eb71f1091911eab9205c93a27933da', '2019-11-19 12:36:56', '192.168.43.152', '15');
INSERT INTO `t_login_log` VALUES ('12eb76ae273a439890f36c5b0a058370', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:48:49', '192.168.43.152', '57');
INSERT INTO `t_login_log` VALUES ('1416ea5ab2cb4c3d97e0bd415b8cd5a0', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-17 15:27:30', '192.168.43.152', '38');
INSERT INTO `t_login_log` VALUES ('149143cf635841238b00dd0b5fcd4891', '67eb71f1091911eab9205c93a27933da', '2019-11-21 14:07:45', '192.168.43.152', '43');
INSERT INTO `t_login_log` VALUES ('15c04bf1d318437cb8c99d5d625cb8ae', '67eb71f1091911eab9205c93a27933da', '2019-11-30 04:08:55', '192.168.43.152', '130');
INSERT INTO `t_login_log` VALUES ('163d7789734b43dabbc25327d5415d72', '67eb71f1091911eab9205c93a27933da', '2019-11-23 12:15:53', '192.168.43.152', '82');
INSERT INTO `t_login_log` VALUES ('16f154c1a0af4a5c900a1ce61ed7a047', '67eb71f1091911eab9205c93a27933da', '2019-11-23 10:33:15', '192.168.43.152', '78');
INSERT INTO `t_login_log` VALUES ('17008641571448a589a4d00574870c41', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18 05:31:28', '192.168.43.152', '42');
INSERT INTO `t_login_log` VALUES ('17da610e91a0465da502451d4ffd31fa', '67eb71f1091911eab9205c93a27933da', '2019-11-21 14:11:19', '192.168.43.152', '44');
INSERT INTO `t_login_log` VALUES ('1862fe9aa7a8445eaabc60683f6b5b7e', '67eb71f1091911eab9205c93a27933da', '2019-12-14 08:31:09', '192.168.43.152', '160');
INSERT INTO `t_login_log` VALUES ('19745b2f740944b68860fdb1fd5c3b89', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-26 14:56:12', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('1a1dbd7dbdbc4ab9b6c2ab3f88d40bd4', '67eb71f1091911eab9205c93a27933da', '2019-11-19 15:12:35', '192.168.43.152', '23');
INSERT INTO `t_login_log` VALUES ('1adf1f01bbd849b0a995da8112d7f0e7', '67eb71f1091911eab9205c93a27933da', '2019-11-23 13:06:38', '192.168.43.152', '85');
INSERT INTO `t_login_log` VALUES ('1bf30fb2ee2242a883a0f3989714a991', '67eb71f1091911eab9205c93a27933da', '2019-11-21 13:56:07', '192.168.43.152', '41');
INSERT INTO `t_login_log` VALUES ('1ca5371b704444f0aa3fc51204d86469', '67eb71f1091911eab9205c93a27933da', '2019-11-23 12:12:55', '192.168.43.152', '81');
INSERT INTO `t_login_log` VALUES ('1d7ee85651764f49a0413dc823087edf', '67eb71f1091911eab9205c93a27933da', '2019-12-11 13:44:52', '192.168.43.152', '143');
INSERT INTO `t_login_log` VALUES ('2007e52838814730ad9acb7db0485e4b', '67eb71f1091911eab9205c93a27933da', '2019-11-23 02:54:34', '192.168.43.152', '64');
INSERT INTO `t_login_log` VALUES ('20093970ce2b4528b0d81959f84bda0d', '67eb71f1091911eab9205c93a27933da', '2019-11-20 15:23:02', '192.168.43.152', '37');
INSERT INTO `t_login_log` VALUES ('208f7a44d6f54301a128486d17500f62', '67eb71f1091911eab9205c93a27933da', '2019-11-24 06:15:15', '192.168.43.152', '107');
INSERT INTO `t_login_log` VALUES ('2300587a7b654c7886f10611bd363e72', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-12-12 13:34:37', '192.168.43.152', '11');
INSERT INTO `t_login_log` VALUES ('2304d1552efe4b55b1f4c0cb684d6b16', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:32:02', '192.168.43.152', '53');
INSERT INTO `t_login_log` VALUES ('2428a4a0badc453f8e40878031b9c8e4', '67eb71f1091911eab9205c93a27933da', '2019-12-12 13:43:51', '192.168.43.152', '152');
INSERT INTO `t_login_log` VALUES ('24a126523bcb4704906ef345312a2117', '4f8f02dff98044ffb7f7dfbc8c57c596', '2019-12-13 15:10:12', '192.168.1.102', '4');
INSERT INTO `t_login_log` VALUES ('257f0266970f4f89b640dc5e99de3870', '67eb71f1091911eab9205c93a27933da', '2019-11-23 13:52:17', '192.168.43.152', '86');
INSERT INTO `t_login_log` VALUES ('26d9218c5e4f4be69b5ca3b287d30304', '67eb71f1091911eab9205c93a27933da', '2019-11-28 15:08:26', '192.168.43.152', '127');
INSERT INTO `t_login_log` VALUES ('2731f4fcf785431dba0528806a7dcbe4', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 06:04:10', '192.168.43.152', '22');
INSERT INTO `t_login_log` VALUES ('28671958eb634a2b8f46401ae5956622', '67eb71f1091911eab9205c93a27933da', '2019-11-23 12:19:21', '192.168.43.152', '83');
INSERT INTO `t_login_log` VALUES ('28982bb072d44bcc91323b3099e85bc1', '67eb71f1091911eab9205c93a27933da', '2019-11-20 13:32:56', '192.168.43.152', '30');
INSERT INTO `t_login_log` VALUES ('2b16583a93424bdcbb6a1238303a46e3', '67eb71f1091911eab9205c93a27933da', '2020-02-16 03:48:38', '192.168.43.152', '168');
INSERT INTO `t_login_log` VALUES ('2b27dced0cc24adc9ab5f8a99c1b3185', '67eb71f1091911eab9205c93a27933da', '2019-11-24 02:08:59', '192.168.43.152', '96');
INSERT INTO `t_login_log` VALUES ('2b3318fb703546b5aae80db493f24752', '67eb71f1091911eab9205c93a27933da', '2019-11-30 05:04:33', '192.168.43.152', '132');
INSERT INTO `t_login_log` VALUES ('2c86664737fb4b1e9ddaf100ae75a6c4', '95dd55d0a8ae49af83d391ccd36b9a11', '2019-11-23 03:24:21', '192.168.43.152', '3');
INSERT INTO `t_login_log` VALUES ('2d71d7daa58a4bbb8463084ff5f1cc9c', '67eb71f1091911eab9205c93a27933da', '2020-02-18 14:47:16', '192.168.43.152', '178');
INSERT INTO `t_login_log` VALUES ('2e7e06a0819c48ed8d4148220a732831', '67eb71f1091911eab9205c93a27933da', '2019-11-18 15:20:00', '192.168.43.152', '11');
INSERT INTO `t_login_log` VALUES ('2ebfa040359f46d3830d514f0b2fa06d', '67eb71f1091911eab9205c93a27933da', '2019-11-18 13:45:27', '192.168.43.152', '5');
INSERT INTO `t_login_log` VALUES ('3027188689114e9fbb0dcda34971c912', '7b0272d267be43f097af993a4d8bb467', '2019-11-23 03:38:23', '192.168.43.152', '3');
INSERT INTO `t_login_log` VALUES ('30df268ae0be48e5aa985a604be121f9', '67eb71f1091911eab9205c93a27933da', '2019-11-28 14:42:50', '192.168.43.1', '123');
INSERT INTO `t_login_log` VALUES ('32ad653fa19c4ca4b135ed7fcbd108d0', '67eb71f1091911eab9205c93a27933da', '2019-11-20 12:04:39', '192.168.43.152', '25');
INSERT INTO `t_login_log` VALUES ('32d55d10e29849568ef7660248084be7', '67eb71f1091911eab9205c93a27933da', '2019-11-21 13:58:25', '192.168.43.152', '42');
INSERT INTO `t_login_log` VALUES ('330dd963cde3482f96c0b622c7d7c6fd', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 02:42:35', '192.168.43.152', '20');
INSERT INTO `t_login_log` VALUES ('3454b168d2d244a1bebd82f704b1c478', '67eb71f1091911eab9205c93a27933da', '2019-11-28 15:08:20', '192.168.43.152', '126');
INSERT INTO `t_login_log` VALUES ('348c01daecf9414b93b6ad779edc7b68', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18 06:29:42', '192.168.43.152', '47');
INSERT INTO `t_login_log` VALUES ('34b38ca74fe24e299854f3c8fb324a4a', '7b0272d267be43f097af993a4d8bb467', '2019-11-23 14:19:21', '192.168.43.152', '4');
INSERT INTO `t_login_log` VALUES ('34b4bae09c5e4f1e8feccb344fd021bd', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 03:47:46', '192.168.43.152', '21');
INSERT INTO `t_login_log` VALUES ('3504eb8a62b94d63af2ecb004c847a3d', '67eb71f1091911eab9205c93a27933da', '2020-02-19 04:53:12', '192.168.43.152', '185');
INSERT INTO `t_login_log` VALUES ('367f5133783543b6867476baedd679e2', '67eb71f1091911eab9205c93a27933da', '2019-11-23 10:32:42', '192.168.43.152', '77');
INSERT INTO `t_login_log` VALUES ('3760416fa459470ab261604707ba908c', '67eb71f1091911eab9205c93a27933da', '2019-11-24 02:02:30', '192.168.43.152', '95');
INSERT INTO `t_login_log` VALUES ('3877de23575f4ed3b4ab1132c7339eb9', '67eb71f1091911eab9205c93a27933da', '2019-12-12 13:38:18', '192.168.43.152', '151');
INSERT INTO `t_login_log` VALUES ('388b0f990f524b4e8197349740f22a39', '67eb71f1091911eab9205c93a27933da', '2019-11-22 13:22:54', '192.168.43.152', '61');
INSERT INTO `t_login_log` VALUES ('3b1fd37affc648eeb21fa7982018f161', '67eb71f1091911eab9205c93a27933da', '2020-02-19 03:57:23', '192.168.43.152', '184');
INSERT INTO `t_login_log` VALUES ('3c74d5c38e964385ac89bb216dd13af4', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-12-14 13:38:06', '192.168.1.102', '14');
INSERT INTO `t_login_log` VALUES ('3d35080c9c6046afbf314fc278af5374', '67eb71f1091911eab9205c93a27933da', '2019-11-24 15:16:00', '192.168.43.152', '115');
INSERT INTO `t_login_log` VALUES ('3e3f6694095148888d7585aecf6002b5', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-28 13:54:08', '192.168.43.152', '8');
INSERT INTO `t_login_log` VALUES ('3f662916b1cd484a9c7f636b6d0e4a9e', '67eb71f1091911eab9205c93a27933da', '2019-11-22 13:19:04', '192.168.43.152', '60');
INSERT INTO `t_login_log` VALUES ('43e00f8e31dd4f5f8bcdb8e57ede769d', '67eb71f1091911eab9205c93a27933da', '2019-11-20 13:29:27', '192.168.43.152', '29');
INSERT INTO `t_login_log` VALUES ('454b87d6ca314c92b0c9a4fc37006a42', 'fe8147e10e454b259705d10d7514f2ac', '2019-12-14 13:37:14', '192.168.1.102', '4');
INSERT INTO `t_login_log` VALUES ('4661efdd3104450bbaa48b4d05885c78', '67eb71f1091911eab9205c93a27933da', '2020-02-19 03:39:33', '192.168.43.152', '181');
INSERT INTO `t_login_log` VALUES ('4678da70b5b9425e9dbb749a4fa12971', '67eb71f1091911eab9205c93a27933da', '2019-11-19 12:19:19', '192.168.43.152', '14');
INSERT INTO `t_login_log` VALUES ('46b50e58062f486aac4d2ee5d8284d1c', '67eb71f1091911eab9205c93a27933da', '2019-11-23 02:55:43', '192.168.43.152', '65');
INSERT INTO `t_login_log` VALUES ('4706eb2db31548e39927917511152857', '67eb71f1091911eab9205c93a27933da', '2019-11-28 14:51:00', '192.168.43.152', '124');
INSERT INTO `t_login_log` VALUES ('49123b65c8cb427688fcbf2779f277b5', '67eb71f1091911eab9205c93a27933da', '2019-11-18 15:04:04', '192.168.43.152', '9');
INSERT INTO `t_login_log` VALUES ('493674c469dd4667951ca3e8d291b803', '67eb71f1091911eab9205c93a27933da', '2019-11-22 13:40:16', '192.168.43.152', '62');
INSERT INTO `t_login_log` VALUES ('49592290e4f84974aeca06c2d3161ecf', '67eb71f1091911eab9205c93a27933da', '2019-11-18 13:46:29', '192.168.43.152', '6');
INSERT INTO `t_login_log` VALUES ('4973d924e51f475c846d6fa3d562b144', '67eb71f1091911eab9205c93a27933da', '2019-11-24 06:48:08', '192.168.43.152', '108');
INSERT INTO `t_login_log` VALUES ('4a3099439daf45c68a50da3c6b3a695f', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-15 14:53:17', '192.168.43.152', '16');
INSERT INTO `t_login_log` VALUES ('4b41ade1f566446badf53356a9b49df1', '67eb71f1091911eab9205c93a27933da', '2019-12-13 13:02:46', '192.168.1.102', '153');
INSERT INTO `t_login_log` VALUES ('4c303cbcd73b47648e68fd44cdaeedc1', '67eb71f1091911eab9205c93a27933da', '2019-12-12 13:34:58', '192.168.43.152', '150');
INSERT INTO `t_login_log` VALUES ('4d68fa5dadf7421a8397a7ec22c78729', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 09:37:51', '192.168.43.152', '30');
INSERT INTO `t_login_log` VALUES ('4ec5025059b74dbbb12886134b031731', '67eb71f1091911eab9205c93a27933da', '2019-11-23 12:09:47', '192.168.43.152', '80');
INSERT INTO `t_login_log` VALUES ('50f1efaada1944a1a85a1fa1b1347da2', '67eb71f1091911eab9205c93a27933da', '2020-02-19 05:05:29', '192.168.43.152', '188');
INSERT INTO `t_login_log` VALUES ('535e5c178ae74ed58cc028b476804c21', '67eb71f1091911eab9205c93a27933da', '2019-11-25 13:43:06', '192.168.43.152', '117');
INSERT INTO `t_login_log` VALUES ('53bbd24202764ae095ec0bd0bde23764', '67eb71f1091911eab9205c93a27933da', '2019-11-19 12:45:28', '192.168.43.152', '17');
INSERT INTO `t_login_log` VALUES ('53e333cbfa684e99a6fa6f1d3c249941', '67eb71f1091911eab9205c93a27933da', '2019-12-01 08:43:30', '192.168.43.152', '142');
INSERT INTO `t_login_log` VALUES ('5438ea044ddd42f7a533377169847994', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-27 13:27:27', '192.168.43.152', '5');
INSERT INTO `t_login_log` VALUES ('566c31d67f6a4d7db97ec12b35df3400', '67eb71f1091911eab9205c93a27933da', '2019-11-30 06:02:28', '192.168.43.152', '139');
INSERT INTO `t_login_log` VALUES ('576e18a8206b49a98e73eacb26420573', '67eb71f1091911eab9205c93a27933da', '2019-11-18 13:10:04', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('57af49ff7bf84fd0b3092830480c53fd', 'fe8147e10e454b259705d10d7514f2ac', '2019-12-13 14:56:57', '192.168.1.102', '2');
INSERT INTO `t_login_log` VALUES ('5b6469a434ee45b896898cc9f9125cf2', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:02:25', '192.168.43.152', '52');
INSERT INTO `t_login_log` VALUES ('5b7f56705b1443089c1870d8489805f3', '67eb71f1091911eab9205c93a27933da', '2019-11-19 15:38:57', '192.168.43.152', '24');
INSERT INTO `t_login_log` VALUES ('5c945662793943d1a4bcf2d282e91909', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 10:59:43', '192.168.43.152', '32');
INSERT INTO `t_login_log` VALUES ('5c95155a173f4c5e989430d0f92254f4', '67eb71f1091911eab9205c93a27933da', '2020-02-18 14:18:18', '192.168.43.152', '174');
INSERT INTO `t_login_log` VALUES ('5d1f4581828c4a43bcb957370c818589', '67eb71f1091911eab9205c93a27933da', '2019-11-20 13:39:37', '192.168.43.152', '31');
INSERT INTO `t_login_log` VALUES ('5f2cf5c720234493b69989e1964a686e', '67eb71f1091911eab9205c93a27933da', '2019-11-24 13:29:01', '192.168.43.152', '113');
INSERT INTO `t_login_log` VALUES ('629ac249160d47f28a5413305d9732a9', '67eb71f1091911eab9205c93a27933da', '2019-12-14 13:17:01', '192.168.1.102', '161');
INSERT INTO `t_login_log` VALUES ('64a8d38fbf23444d9fa186428e13740a', 'b5bfae4837594015ab1062887329bd97', '2019-11-26 13:02:14', '192.168.43.152', '2');
INSERT INTO `t_login_log` VALUES ('66c7eff4e173427e942c936fb59bc561', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-27 14:02:35', '192.168.43.152', '7');
INSERT INTO `t_login_log` VALUES ('66f7e0e31bd14d2d8fd23e39e1d3eca8', '67eb71f1091911eab9205c93a27933da', '2019-11-21 15:36:18', '192.168.43.152', '49');
INSERT INTO `t_login_log` VALUES ('6868de3bddd643fca04603e1edccce60', '67eb71f1091911eab9205c93a27933da', '2019-11-24 13:20:57', '192.168.43.152', '112');
INSERT INTO `t_login_log` VALUES ('68e1782bb0254d748ecb19f19a9ff2ac', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:46:21', '192.168.43.152', '56');
INSERT INTO `t_login_log` VALUES ('6938119ae38f49b9b37f7d20914d7e5a', '67eb71f1091911eab9205c93a27933da', '2019-11-24 05:17:27', '192.168.43.152', '104');
INSERT INTO `t_login_log` VALUES ('6957c57ed7bf412f8ccf772c9134d28f', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-19 03:32:31', '192.168.43.152', '51');
INSERT INTO `t_login_log` VALUES ('6aabb7c83f06452386b7cd692ade48ae', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 09:14:19', '192.168.43.152', '28');
INSERT INTO `t_login_log` VALUES ('6aca14ab242245e5828444776bc978c8', '67eb71f1091911eab9205c93a27933da', '2019-11-19 15:02:33', '192.168.43.152', '22');
INSERT INTO `t_login_log` VALUES ('6affb71cc40c4a3ba2e99d99d6c6fc63', '67eb71f1091911eab9205c93a27933da', '2019-11-23 14:08:05', '192.168.43.152', '89');
INSERT INTO `t_login_log` VALUES ('6b3fe6ba703648d8a08f8ca5fc943be5', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-15 15:01:51', '192.168.43.152', '18');
INSERT INTO `t_login_log` VALUES ('6b8b8d76fd944bdeaf379b03303f7081', '67eb71f1091911eab9205c93a27933da', '2019-11-21 15:34:06', '192.168.43.152', '48');
INSERT INTO `t_login_log` VALUES ('6c0ec2a625144b95b51fde9fafec6ab6', '6289fb4f0f9311ea99ba5c93a27933da', '2019-11-26 12:52:57', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('706c5b12574047148dc75d496e5da204', '67eb71f1091911eab9205c93a27933da', '2020-02-15 09:44:00', '192.168.43.152', '167');
INSERT INTO `t_login_log` VALUES ('72c865b6372c45afb6223b41e0f3049a', '67eb71f1091911eab9205c93a27933da', '2019-11-23 04:06:29', '192.168.43.152', '70');
INSERT INTO `t_login_log` VALUES ('734d00e9a97f423bb74be4ed971f86a6', '67eb71f1091911eab9205c93a27933da', '2019-11-23 12:48:06', '192.168.43.152', '84');
INSERT INTO `t_login_log` VALUES ('743ff82732094227952e18aa68903191', '67eb71f1091911eab9205c93a27933da', '2019-11-19 12:42:25', '192.168.43.152', '16');
INSERT INTO `t_login_log` VALUES ('749e08b076814a43b4215eaccaff7d87', '67eb71f1091911eab9205c93a27933da', '2019-11-20 12:17:15', '192.168.43.152', '26');
INSERT INTO `t_login_log` VALUES ('74c4d52a4d414d2ea1be617a3350ba47', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-28 14:40:24', '192.168.43.1', '9');
INSERT INTO `t_login_log` VALUES ('74f378dd08744ab1a9a496e70a6b6bb6', '67eb71f1091911eab9205c93a27933da', '2019-11-24 05:23:01', '192.168.43.152', '105');
INSERT INTO `t_login_log` VALUES ('750102ff2bab45e48ee6d7624226dcf9', '67eb71f1091911eab9205c93a27933da', '2019-11-20 12:25:36', '192.168.43.152', '27');
INSERT INTO `t_login_log` VALUES ('77db5d32bd734a93b877392a9da0aa96', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18 01:40:54', '192.168.43.152', '39');
INSERT INTO `t_login_log` VALUES ('78050a9d3522457b8df37c438838e946', '67eb71f1091911eab9205c93a27933da', '2019-12-13 13:07:45', '192.168.1.102', '154');
INSERT INTO `t_login_log` VALUES ('7887e69688da4f29869d9066ca83b81b', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:43:00', '192.168.43.152', '55');
INSERT INTO `t_login_log` VALUES ('792348e82f0f41fbbaed78f595b72781', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 09:56:43', '192.168.43.152', '31');
INSERT INTO `t_login_log` VALUES ('79b44f50fb654bd883aa3557bfce32dd', '67eb71f1091911eab9205c93a27933da', '2019-11-23 14:54:01', '192.168.43.152', '90');
INSERT INTO `t_login_log` VALUES ('7a117df40db84092bfb043af7201debc', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:34:02', '192.168.43.152', '54');
INSERT INTO `t_login_log` VALUES ('7a7cc85280ff4aca978a8ed187388a96', '67eb71f1091911eab9205c93a27933da', '2019-11-23 05:38:04', '192.168.43.152', '72');
INSERT INTO `t_login_log` VALUES ('7d7f9198fcf2480599ccfdd7b245aa02', '67eb71f1091911eab9205c93a27933da', '2019-12-12 12:57:17', '192.168.43.152', '148');
INSERT INTO `t_login_log` VALUES ('814117fdebda46da8ceeda20f84ffbbe', '67eb71f1091911eab9205c93a27933da', '2019-11-20 15:03:32', '192.168.43.152', '36');
INSERT INTO `t_login_log` VALUES ('81fbdf5acf884f3c97ef852210a2ae75', '67eb71f1091911eab9205c93a27933da', '2019-12-14 08:28:50', '192.168.43.152', '159');
INSERT INTO `t_login_log` VALUES ('83b8b2d013624348bd4ee16481a7d726', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-15 15:09:24', '192.168.43.152', '19');
INSERT INTO `t_login_log` VALUES ('8447c446f4e14312b242e0bd4e3055f3', '67eb71f1091911eab9205c93a27933da', '2019-11-21 14:15:44', '192.168.43.152', '45');
INSERT INTO `t_login_log` VALUES ('87b7fd429678406a8a2716721b08cfdc', '67eb71f1091911eab9205c93a27933da', '2019-12-12 13:30:01', '192.168.43.152', '149');
INSERT INTO `t_login_log` VALUES ('882c1ace5f164c1e9cea4bc39328a9f5', '67eb71f1091911eab9205c93a27933da', '2019-11-21 12:56:10', '192.168.43.152', '39');
INSERT INTO `t_login_log` VALUES ('88d76048c73448a19f7556f339487f77', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18 06:25:17', '192.168.43.152', '46');
INSERT INTO `t_login_log` VALUES ('8a7c78908721448ba4dd8ca3131b57ed', '67eb71f1091911eab9205c93a27933da', '2019-12-01 08:41:56', '192.168.43.152', '141');
INSERT INTO `t_login_log` VALUES ('8a95a86c8b2c4ff1ac82ad3b22e2fa81', '67eb71f1091911eab9205c93a27933da', '2020-02-18 14:38:00', '192.168.43.152', '177');
INSERT INTO `t_login_log` VALUES ('8b39628d78a24d8abcdb079db4657cf1', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-15 14:57:14', '192.168.43.152', '17');
INSERT INTO `t_login_log` VALUES ('8b7c725433ba4bd5bfe62a2b2030cae8', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 14:36:12', '192.168.43.152', '35');
INSERT INTO `t_login_log` VALUES ('8cb0352c16724dcfb7c29054c58daa38', '67eb71f1091911eab9205c93a27933da', '2019-12-13 14:56:07', '192.168.1.102', '157');
INSERT INTO `t_login_log` VALUES ('8e4a68c849a24582aa7f9aba137aef0d', '67eb71f1091911eab9205c93a27933da', '2019-11-23 03:26:30', '192.168.43.152', '67');
INSERT INTO `t_login_log` VALUES ('8e589b64f2174826bc2788589b00ceb3', '67eb71f1091911eab9205c93a27933da', '2019-11-18 15:22:27', '192.168.43.152', '12');
INSERT INTO `t_login_log` VALUES ('9014371c12bb4083a68f3c8f8786850e', '67eb71f1091911eab9205c93a27933da', '2019-11-25 14:57:44', '192.168.43.152', '119');
INSERT INTO `t_login_log` VALUES ('9111a2e023204461aa6aa8b85607ce85', '67eb71f1091911eab9205c93a27933da', '2019-11-23 06:00:54', '192.168.43.152', '74');
INSERT INTO `t_login_log` VALUES ('91408d96a407409baa6aed315ceaa79a', '67eb71f1091911eab9205c93a27933da', '2020-02-15 09:28:05', '192.168.43.152', '164');
INSERT INTO `t_login_log` VALUES ('91583bf291ac42feb5dce38c8d2947aa', '67eb71f1091911eab9205c93a27933da', '2019-11-22 13:17:40', '192.168.43.152', '59');
INSERT INTO `t_login_log` VALUES ('929e60a9eec9428fb5399abc7cec6c1b', '67eb71f1091911eab9205c93a27933da', '2019-11-24 03:27:00', '192.168.43.152', '101');
INSERT INTO `t_login_log` VALUES ('92fa30b3dc82409493215c5c90925211', '67eb71f1091911eab9205c93a27933da', '2019-12-13 15:12:18', '192.168.1.102', '158');
INSERT INTO `t_login_log` VALUES ('93110e64642844f7b4c1c21a789d06fd', '67eb71f1091911eab9205c93a27933da', '2019-11-24 13:08:21', '192.168.43.152', '111');
INSERT INTO `t_login_log` VALUES ('936f07c5ba93426e8d0bce93a399d5f8', '67eb71f1091911eab9205c93a27933da', '2019-12-11 13:49:32', '192.168.43.152', '144');
INSERT INTO `t_login_log` VALUES ('94c637cfa9d2485c9174d84b7d9bd3e8', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 11:03:42', '192.168.43.152', '33');
INSERT INTO `t_login_log` VALUES ('9561ac77767143e49e5dc66773302b52', '67eb71f1091911eab9205c93a27933da', '2019-11-23 09:38:25', '192.168.43.152', '76');
INSERT INTO `t_login_log` VALUES ('95db4c3f568c41ec86111ef1f2c8e414', '67eb71f1091911eab9205c93a27933da', '2019-11-24 02:53:28', '192.168.43.152', '98');
INSERT INTO `t_login_log` VALUES ('96c27ad0a8cf4d4a888a3f099e37760d', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-19 05:05:55', '192.168.43.152', '52');
INSERT INTO `t_login_log` VALUES ('96d7a96a0ea74ff6b3260fa8f449a4c8', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 08:40:07', '192.168.43.152', '27');
INSERT INTO `t_login_log` VALUES ('96e432249ed141aba975c83aecaaba07', '67eb71f1091911eab9205c93a27933da', '2019-11-23 10:35:05', '192.168.43.152', '79');
INSERT INTO `t_login_log` VALUES ('9a3d0bbd41824c7ca8b4699f92057c1c', '67eb71f1091911eab9205c93a27933da', '2020-02-15 09:34:03', '192.168.43.152', '166');
INSERT INTO `t_login_log` VALUES ('9a6055dfccb1464eaa3965d513e8d611', '67eb71f1091911eab9205c93a27933da', '2019-11-23 13:54:30', '192.168.43.152', '87');
INSERT INTO `t_login_log` VALUES ('9c8b11d06ab3497da5eae2b7058b47a0', '67eb71f1091911eab9205c93a27933da', '2019-11-18 15:11:44', '192.168.43.152', '10');
INSERT INTO `t_login_log` VALUES ('9e880a0397d4417083d0130096276e74', '95dd55d0a8ae49af83d391ccd36b9a11', '2019-11-22 14:28:32', '192.168.43.152', '2');
INSERT INTO `t_login_log` VALUES ('9ef9923fe47940acb2da02f40b21d81d', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 08:06:00', '192.168.43.152', '24');
INSERT INTO `t_login_log` VALUES ('9f450f457feb4f0f9e983b796e3d3eaf', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 08:18:34', '192.168.43.152', '25');
INSERT INTO `t_login_log` VALUES ('a05238ad9b3b4bd5b59df1e1c20b52a0', '67eb71f1091911eab9205c93a27933da', '2020-02-15 09:29:24', '192.168.43.152', '165');
INSERT INTO `t_login_log` VALUES ('a1797437a565488ca893551b060d636a', '67eb71f1091911eab9205c93a27933da', '2019-11-21 15:38:48', '192.168.43.152', '50');
INSERT INTO `t_login_log` VALUES ('a20eaa07ce264e6aa665d0f8e6eaf2b8', '67eb71f1091911eab9205c93a27933da', '2019-11-20 13:44:14', '192.168.43.152', '33');
INSERT INTO `t_login_log` VALUES ('a41aabc0d01a40b79e05d311b9e34f2b', '67eb71f1091911eab9205c93a27933da', '2019-11-23 14:03:43', '192.168.43.152', '88');
INSERT INTO `t_login_log` VALUES ('a65dbfb81ac94bf781cdda8dbeb0d6da', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:01:07', '192.168.43.152', '51');
INSERT INTO `t_login_log` VALUES ('a713300863a5469ba19cc1be06b956d4', '67eb71f1091911eab9205c93a27933da', '2019-11-23 15:05:02', '192.168.43.152', '92');
INSERT INTO `t_login_log` VALUES ('a907a79526c14205998fbec0044f669f', '67eb71f1091911eab9205c93a27933da', '2019-11-28 14:54:26', '192.168.43.1', '125');
INSERT INTO `t_login_log` VALUES ('a90bc7b0b3a7420c930f718946b76b67', '67eb71f1091911eab9205c93a27933da', '2019-11-22 12:58:04', '192.168.43.152', '58');
INSERT INTO `t_login_log` VALUES ('ab86b71aab884326b55c1476328db3b7', '67eb71f1091911eab9205c93a27933da', '2020-02-19 04:55:59', '192.168.43.152', '186');
INSERT INTO `t_login_log` VALUES ('ace7fc76220e4338bcb48b3f7785ae7b', '67eb71f1091911eab9205c93a27933da', '2019-11-21 14:55:08', '192.168.43.152', '47');
INSERT INTO `t_login_log` VALUES ('ad3d22de3b2e48c7848981671a49664c', '67eb71f1091911eab9205c93a27933da', '2019-11-26 13:01:52', '192.168.43.152', '121');
INSERT INTO `t_login_log` VALUES ('af60429d91f64032974e9f0728ba61eb', '67eb71f1091911eab9205c93a27933da', '2019-11-24 03:47:47', '192.168.43.152', '103');
INSERT INTO `t_login_log` VALUES ('b0332f945f3645babd90c8e01d8c8efa', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18 01:44:01', '192.168.43.152', '40');
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
INSERT INTO `t_login_log` VALUES ('bf923c6d2e5b40eebbcf1aae0904800b', '67eb71f1091911eab9205c93a27933da', '2020-02-18 12:49:25', '192.168.43.152', '172');
INSERT INTO `t_login_log` VALUES ('c002dd4e8ce8477c9b357995bec312fa', '67eb71f1091911eab9205c93a27933da', '2019-11-21 13:14:42', '192.168.43.152', '40');
INSERT INTO `t_login_log` VALUES ('c209393d47dc4e0fa96b7072dda8351c', '67eb71f1091911eab9205c93a27933da', '2019-11-30 05:40:50', '192.168.43.152', '137');
INSERT INTO `t_login_log` VALUES ('c2dccbfc730440da9a35a67e6861ec8a', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18 14:37:00', '192.168.43.152', '50');
INSERT INTO `t_login_log` VALUES ('c3244936f84a4d6cab348c07a16ddb4c', '67eb71f1091911eab9205c93a27933da', '2019-12-01 08:20:15', '192.168.43.152', '140');
INSERT INTO `t_login_log` VALUES ('c3a333ed3cdb4fdaa25fdf05817339b6', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18 06:21:55', '192.168.43.152', '45');
INSERT INTO `t_login_log` VALUES ('c3cf765083374275941655867fce9b8a', '67eb71f1091911eab9205c93a27933da', '2019-11-19 15:01:40', '192.168.43.152', '21');
INSERT INTO `t_login_log` VALUES ('c3db78834bb14406ba32b10003a28d8b', '67eb71f1091911eab9205c93a27933da', '2019-11-23 05:56:02', '192.168.43.152', '73');
INSERT INTO `t_login_log` VALUES ('c402a36dc7814514a00713ca95f4874e', '67eb71f1091911eab9205c93a27933da', '2019-11-20 13:43:18', '192.168.43.152', '32');
INSERT INTO `t_login_log` VALUES ('c42fdb1b04ac4162a68c6933db53a3a2', '67eb71f1091911eab9205c93a27933da', '2019-11-23 03:37:29', '192.168.43.152', '68');
INSERT INTO `t_login_log` VALUES ('c466afc3a20441c0b124fbeb5c0f54e7', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-15 09:34:19', '192.168.43.152', '15');
INSERT INTO `t_login_log` VALUES ('c520084e188949538991eec80656bd3a', '67eb71f1091911eab9205c93a27933da', '2019-11-24 05:46:12', '192.168.43.152', '106');
INSERT INTO `t_login_log` VALUES ('c65404a83abc405f9e02ef4b754e4c42', '67eb71f1091911eab9205c93a27933da', '2020-02-16 11:03:24', '192.168.43.152', '169');
INSERT INTO `t_login_log` VALUES ('c657a21f09034063af1497974826eb20', '95dd55d0a8ae49af83d391ccd36b9a11', '2019-11-23 14:17:35', '192.168.43.152', '4');
INSERT INTO `t_login_log` VALUES ('c7fe4f99c675448eb58db38bae28b2be', '6289fb4f0f9311ea99ba5c93a27933da', '2019-11-26 13:01:16', '192.168.43.152', '2');
INSERT INTO `t_login_log` VALUES ('c87b3ee647d84a029c18fce5418862bd', '67eb71f1091911eab9205c93a27933da', '2020-02-18 14:36:06', '192.168.43.152', '176');
INSERT INTO `t_login_log` VALUES ('c88f6702475d4b2aa6eb9f1248db9874', '67eb71f1091911eab9205c93a27933da', '2019-11-18 13:12:34', '192.168.43.152', '2');
INSERT INTO `t_login_log` VALUES ('c9b4d412267e47458149f5e29a58bbf2', '95dd55d0a8ae49af83d391ccd36b9a11', '2019-11-22 14:12:02', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('c9fa0a29981a449588bb8c5dc7067c66', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-12-13 14:36:34', '192.168.1.102', '12');
INSERT INTO `t_login_log` VALUES ('cafed0e0efc143a2874c965d3b7f77f6', '67eb71f1091911eab9205c93a27933da', '2019-11-25 13:53:07', '192.168.43.152', '118');
INSERT INTO `t_login_log` VALUES ('cf893270945749ffbdaf6f61404ccd94', '67eb71f1091911eab9205c93a27933da', '2019-11-26 12:52:06', '192.168.43.152', '120');
INSERT INTO `t_login_log` VALUES ('cf9f1cc95e514363bee6b2a808b7fb03', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18 02:56:45', '192.168.43.152', '41');
INSERT INTO `t_login_log` VALUES ('d03abfebca1f4e989777014cbe97b9c6', '67eb71f1091911eab9205c93a27933da', '2019-11-18 15:01:20', '192.168.43.152', '8');
INSERT INTO `t_login_log` VALUES ('d06b440e94824a4e8de8b155a23d033a', '67eb71f1091911eab9205c93a27933da', '2019-12-11 13:54:49', '192.168.43.152', '145');
INSERT INTO `t_login_log` VALUES ('d1f5c1b9e5fc4a5d9451ba80fc622fbf', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 08:30:26', '192.168.43.152', '26');
INSERT INTO `t_login_log` VALUES ('d2269da7db1e41a1853b67ea7ba70b3b', 'b5bfae4837594015ab1062887329bd97', '2019-11-24 14:21:07', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('d27f897725754a8f8667b0519b578e09', '67eb71f1091911eab9205c93a27933da', '2019-11-20 14:29:44', '192.168.43.152', '35');
INSERT INTO `t_login_log` VALUES ('d3862072459a420ea9f40ad61dac3f3c', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18 11:13:02', '192.168.43.152', '49');
INSERT INTO `t_login_log` VALUES ('d43ca2a0774f4107b0d9545c766b666e', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 09:19:10', '192.168.43.152', '29');
INSERT INTO `t_login_log` VALUES ('d4958c0e167d432c813a0d1e99da6d70', '1', '2019-11-17 05:16:43', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('d51d88b0eed34406bb3f27e8a460d21a', '67eb71f1091911eab9205c93a27933da', '2019-11-23 14:56:42', '192.168.43.152', '91');
INSERT INTO `t_login_log` VALUES ('d6d17a994d1a467eb4c907e35f04fa36', '67eb71f1091911eab9205c93a27933da', '2020-02-18 14:10:02', '192.168.43.152', '173');
INSERT INTO `t_login_log` VALUES ('d72ce232a5724de885d9f3e38f736ea3', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18 06:32:37', '192.168.43.152', '48');
INSERT INTO `t_login_log` VALUES ('d88a6354acbb4f05b8ae378dac070677', '4f8f02dff98044ffb7f7dfbc8c57c596', '2019-11-28 12:53:21', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('d96bcc4aab1e4389ad2fbaa0c83db9b3', '67eb71f1091911eab9205c93a27933da', '2019-12-13 13:10:48', '192.168.1.102', '155');
INSERT INTO `t_login_log` VALUES ('d9a6804b5091417db9e097aaebb9e82e', '67eb71f1091911eab9205c93a27933da', '2019-11-30 05:26:02', '192.168.43.152', '134');
INSERT INTO `t_login_log` VALUES ('d9ecbdf4d47344d39df958c35aa8443a', '74013ffb091911eab9205c93a27933da', '2019-11-23 14:08:38', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('d9feb5082ff64ede8dd35a1df6bccadf', '67eb71f1091911eab9205c93a27933da', '2019-11-19 14:53:52', '192.168.43.152', '20');
INSERT INTO `t_login_log` VALUES ('da51a2eff4e1497a9c3a360de4e9a283', '67eb71f1091911eab9205c93a27933da', '2020-02-15 04:08:16', '192.168.43.152', '163');
INSERT INTO `t_login_log` VALUES ('dc45a7dd91364b219437c14d4c1decaf', '67eb71f1091911eab9205c93a27933da', '2019-11-19 14:49:00', '192.168.43.152', '19');
INSERT INTO `t_login_log` VALUES ('dc61095499c246988188061edb658ad9', 'fe8147e10e454b259705d10d7514f2ac', '2019-12-14 13:46:23', '192.168.1.102', '5');
INSERT INTO `t_login_log` VALUES ('dd37be225b82415b881784bba9676f87', '67eb71f1091911eab9205c93a27933da', '2019-11-24 01:33:43', '192.168.43.152', '94');
INSERT INTO `t_login_log` VALUES ('dd65a314ce1544e3a586a14789d22d3a', '7b0272d267be43f097af993a4d8bb467', '2019-11-23 03:28:47', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('dfe297dc4fb84af89ca5d5475c72a48b', '7b0272d267be43f097af993a4d8bb467', '2019-11-23 03:29:25', '192.168.43.152', '2');
INSERT INTO `t_login_log` VALUES ('e04cb98c56af4928a998ab56e2746bfa', '67eb71f1091911eab9205c93a27933da', '2020-02-19 03:46:27', '192.168.43.152', '182');
INSERT INTO `t_login_log` VALUES ('e138ec09edd9433f90fc01254ae3f610', '67eb71f1091911eab9205c93a27933da', '2019-11-18 13:52:03', '192.168.43.152', '7');
INSERT INTO `t_login_log` VALUES ('e18cf25400644cc5bfbc07c783dd3934', '7bc5259b091911eab9205c93a27933da', '2019-11-23 14:18:53', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('e1d96e42a3424df8a627b4212819c971', '67eb71f1091911eab9205c93a27933da', '2019-11-22 14:11:28', '192.168.43.152', '63');
INSERT INTO `t_login_log` VALUES ('e283a2809f92421bbc9079e9aab74678', '67eb71f1091911eab9205c93a27933da', '2019-11-24 12:51:21', '192.168.43.152', '110');
INSERT INTO `t_login_log` VALUES ('e2eb0e69875d49b7b4a02e93b8da695e', '67eb71f1091911eab9205c93a27933da', '2019-11-30 05:34:46', '192.168.43.152', '136');
INSERT INTO `t_login_log` VALUES ('e3e15b2e6b6842b1ad365b2748e815ee', '67eb71f1091911eab9205c93a27933da', '2020-02-17 15:12:13', '192.168.43.152', '170');
INSERT INTO `t_login_log` VALUES ('e4122834b324432a86304b9621511db8', '67eb71f1091911eab9205c93a27933da', '2020-02-19 05:00:00', '192.168.43.152', '187');
INSERT INTO `t_login_log` VALUES ('e603aa577e2940fcb3ff7ef1e3131735', '67eb71f1091911eab9205c93a27933da', '2020-02-19 03:50:51', '192.168.43.152', '183');
INSERT INTO `t_login_log` VALUES ('e656e347e8e94afcae7722a27df7f99b', '3e5dfa87593e4a44b8212eb3866aefdb', '2019-11-24 02:12:01', '192.168.43.152', '1');
INSERT INTO `t_login_log` VALUES ('e661cb32936d4f3f93741e440756ad6c', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18 05:56:58', '192.168.43.152', '43');
INSERT INTO `t_login_log` VALUES ('e72b14089a35412e93c7dfdfde8351e9', '67eb71f1091911eab9205c93a27933da', '2019-11-30 04:14:37', '192.168.43.152', '131');
INSERT INTO `t_login_log` VALUES ('e7fdce724bb343a18d859f4a757f1136', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-17 14:09:15', '192.168.43.152', '36');
INSERT INTO `t_login_log` VALUES ('e958ee3142f34a3399728f8487400130', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-18 06:12:25', '192.168.43.152', '44');
INSERT INTO `t_login_log` VALUES ('e95b3346898c41668d35bd1bc9c16446', '67eb71f1091911eab9205c93a27933da', '2019-12-14 13:44:53', '192.168.1.102', '162');
INSERT INTO `t_login_log` VALUES ('eac338101d8243b6a3a9724ffa925aad', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-17 15:12:29', '192.168.43.152', '37');
INSERT INTO `t_login_log` VALUES ('ebb88066ec744caf8a85f5588cbaebfc', '67eb71f1091911eab9205c93a27933da', '2020-02-18 12:27:50', '192.168.43.152', '171');
INSERT INTO `t_login_log` VALUES ('ec096d4c8e0d4bb9a57092022805684d', '032e7ac5fe4d45ff824c7cf125c70d3f', '2019-11-27 13:42:47', '192.168.43.152', '6');
INSERT INTO `t_login_log` VALUES ('ec160d75df3a48cea95879606d9f9b4e', 'fe8147e10e454b259705d10d7514f2ac', '2019-12-14 08:33:06', '192.168.43.152', '3');
INSERT INTO `t_login_log` VALUES ('ee7da6fe35884682b64c9ad8bc993253', '67eb71f1091911eab9205c93a27933da', '2019-12-13 13:11:06', '192.168.1.102', '156');
INSERT INTO `t_login_log` VALUES ('f05c3c1263b04641a3f21e42a3fbca1d', '67eb71f1091911eab9205c93a27933da', '2020-02-19 03:26:30', '192.168.43.152', '179');
INSERT INTO `t_login_log` VALUES ('f09d2f41122b491e8e69ff9c3bd1d283', '67eb71f1091911eab9205c93a27933da', '2019-11-30 03:34:55', '192.168.43.152', '129');
INSERT INTO `t_login_log` VALUES ('f1ee56d492c24a58aa1ab41f94f571c4', '67eb71f1091911eab9205c93a27933da', '2020-02-18 14:33:14', '192.168.43.152', '175');
INSERT INTO `t_login_log` VALUES ('f3fdeff74ba8499082961d0d52c390eb', '67eb71f1091911eab9205c93a27933da', '2019-12-11 14:09:36', '192.168.43.152', '146');
INSERT INTO `t_login_log` VALUES ('f41162c01c3948808b5c3102de488306', '67eb71f1091911eab9205c93a27933da', '2019-11-23 03:23:12', '192.168.43.152', '66');
INSERT INTO `t_login_log` VALUES ('f506f916d47e4c14b40af41d042e9fa4', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 12:31:51', '192.168.43.152', '34');
INSERT INTO `t_login_log` VALUES ('f67f2830a7654988830622f394fe523f', '67eb71f1091911eab9205c93a27933da', '2019-11-23 03:58:42', '192.168.43.152', '69');
INSERT INTO `t_login_log` VALUES ('f837b4794d7c44fb8f23b1af6cd009dc', '032e7ac5fe4d45ff824c7cf125c70d3f', '2020-02-16 06:31:29', '192.168.43.152', '23');
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
INSERT INTO `t_major` VALUES ('46fda4a6e1b14ae3b209ea9f8c0b45a0', '车辆工程', 'clgc01', '307afdce0e6a11ea85a85c93a27933da');
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
INSERT INTO `t_operate_record` VALUES ('00b7e49546094643bd1828847dc755bb', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:06:33', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('00be6c4cc6614623a6daf84b95ce6185', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:22:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('00f8b50080c64f16a9d3a0a31b043d0b', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@71bf434c, org.apache.shiro.web.servlet.ShiroHttpServletRequest@47bd39a6]', 'POST', '2019-11-19 12:36:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('01319b1c544746bfae10ad0ef479456c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:13:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('013373b144d142848041f3c83146119a', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 06:25:18', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('013f983ca00049b4a6b08b62d72dfd1b', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 05:34:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('014559b523cc4b7b980cce628f6262f7', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-19 03:35:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('016a768903f84a2197a51e3867964ec5', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:11:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('019e9165121041798575a0d30b0838dc', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-17 15:14:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('01b92ed8f13a420cac285513cd5fe3fe', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:42:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('01f9d4ed6a6b4c26a211820b4f67da12', '/course/center', '192.168.1.102', null, 'GET', '2019-12-13 14:58:53', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('02185b17b9ae41bdba07bdc40f02b21f', '/clazz/list', '192.168.43.152', null, 'GET', '2019-11-24 06:52:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0268819ec4714dc08c7e53ec9da6f3ae', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:40:28', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0287223b561e4f648289dc4d756bf436', '/user/login', '192.168.43.152', null, 'GET', '2019-11-23 10:32:28', null, '0');
INSERT INTO `t_operate_record` VALUES ('028de9538a294ff0a3c5967812abe404', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 01:53:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('029806db68864d55bb09f927f4e22c4d', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-12-12 12:43:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('032438b9365e4ad788858afa4ba987c3', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 06:32:41', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('032da9a7b4b14f66b16c2a1be754d6ab', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 13:06:37', null, '1');
INSERT INTO `t_operate_record` VALUES ('035f442a8cdb4c26817685050eb73e64', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:53:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('037caa68e8b5471ea87b653159b45a08', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:45:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('039b79fe1c5b43068195b3e27b538802', '/course/center', '192.168.43.152', null, 'GET', '2019-12-14 08:33:10', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('03b0017b298f4330800f818d83d547ef', '/user/login', '192.168.43.152', null, 'POST', '2020-02-15 15:09:23', null, '1');
INSERT INTO `t_operate_record` VALUES ('03c274fc700a4ee2b1c898a1977b7bc9', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 04:55:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('03ed9f2c72124fedb653620078903580', '/role/add', '192.168.43.152', null, 'POST', '2019-11-23 04:09:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('03feaf9a03f2437f91f990486cf03d0b', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:45:40', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0414bd7c7c8046c3a67a18da9c773937', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 10:48:52', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('041ee089b0b8408b8d43fb6a37fb26a1', '/major/add', '192.168.43.152', null, 'POST', '2019-12-12 12:39:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('043de5aec3684579aa5b91f477cd3d77', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:10:16', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('04756b9e1dfc4764931972e28a4062ed', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:52:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0495d59b25d7400cbf63b2ea456d1787', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-12-14 08:33:22', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('049ca6fe8b3841719f6427e287622ba4', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 08:06:51', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('04a4c954ce1b40f4a9df1e4e5a2423df', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:41:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('04c4cbf4faf4498cb47a134821cb74b6', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:23:11', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('04ddaead74fa4fb496b06736e95b61b7', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:12:34', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('04eed46926554697a181c750d6a8c49b', '/course/list', '192.168.43.152', null, 'GET', '2020-02-15 04:13:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('04f14aaee59d4832a816ae240db486e7', '/user/list', '192.168.43.152', null, 'GET', '2019-11-25 13:43:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('050c997d6f9840c198c342c8784f6167', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 11:13:28', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('052e768ea13747fd8a57a6e3935eb375', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:05:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0535db72e58d4eff8fe7a19cd2be082a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 05:45:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('05384fe738f04fde92765903964870ef', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 13:43:17', null, '1');
INSERT INTO `t_operate_record` VALUES ('0545028ebe1a4d80a62f3f8a5ba434be', '/role/findAllRoles', '192.168.43.152', '[RolePerms(id=null, roleId=null, permsId=null), org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2019-11-19 15:29:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('05589276693c416da1e7f16186b2411e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:20:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('05b525ab3d464257b895317d44b1bddf', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 04:55:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0618478737ea415294a3636097211bf2', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:28:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('062200284cb849afb4c139e744b83ab1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 12:15:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('062e3d6217704d969c5aa128dd1d7697', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 13:29:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('063eaadfe482469ea8e996cbe07755a9', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:03:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('064710f8c787475d9c867c2dab08937b', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:37:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0651c5d9dbcd43528159d32d195ef3b9', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-23 03:25:20', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('065faf06a1c5471c9eb883e8e96ff1f0', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:31:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0664b5be273a4d5ca2159671e1c3958b', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:14:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('066801f34e804c40b60a9c88b11dc063', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:32:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('06697f32092e4370bac472c923d65f8d', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 14:11:33', null, '1');
INSERT INTO `t_operate_record` VALUES ('0693a7ae19a041e1a12b5f5268a60524', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:08:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('06a9be077be84578b62e9cb70f1ba7e0', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 04:56:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('06c3669d7a3a46e2b7ea1a2d07ac4ddd', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:14:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('06da2b9bfc95438587f65f177fad3ed0', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 13:02:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('06e1e15ea81147dcae22708d0284d100', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:57:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('06e4181bf0c44105a070aa87584402a7', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:21:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('06fdd0c6c09546aea430f648769bace7', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:23:52', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0713f0bed4cf4a87809f03f6f53582c3', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:54:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0726b1888c6649fa9dda325b77d8aaf3', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:47:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('074dec9b07da43cca27b0d8b8846170b', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 09:38:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0751866403fd4ffcb5b76a21b9d26e6a', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:43:11', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('07802b70f51144dd9bc468db83803dc1', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 10:04:25', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('07d6d560df334d1280fa4d1bdb891378', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 13:08:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('07e99a7bf8a24c80a0f804ac17787a04', '/user/login', '192.168.43.152', null, 'GET', '2019-11-23 05:55:41', null, '0');
INSERT INTO `t_operate_record` VALUES ('0831fa71aa57426b9835f049dafb03e7', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 14:10:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('083f3a787a224f3a9c4b804ee21728c7', '/user/login', '192.168.43.152', null, 'POST', '2020-02-19 04:55:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('084d196f2666400786fc57eb506e2d74', '/student/list', '192.168.43.152', null, 'GET', '2019-12-12 12:41:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0854079c1a354ea7b62c93173d0b4bdb', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 05:52:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('085b0f3eb0724f53a0e928be6cbf4cb6', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 06:51:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('08a91d0ae0604a21abe782c18d67a3b5', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 11:03:57', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('08cbcf486cb94b2297c31a1cd3e683d6', '/user/login;jsessionid=08F4D8900794C3B7FA8D567393508DAF', '0:0:0:0:0:0:0:1', null, 'GET', '2020-02-15 09:28:20', null, '0');
INSERT INTO `t_operate_record` VALUES ('08ce46cc6a1b40e3bc806ba23a8d4d67', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 06:25:21', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('08f68cc6961c43339e23cfe18b9f48ee', '/student/list', '192.168.43.152', null, 'GET', '2020-02-18 12:29:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('08f7fdc1d4bc44fa87539f1551cf36c6', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:45:50', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('091b0c8b560a45a38039103ff003f178', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 15:39:01', null, '1');
INSERT INTO `t_operate_record` VALUES ('0949896eb6c34af9b49f3acc4d811693', '/institute/add', '192.168.43.152', null, 'POST', '2019-11-24 03:36:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0952fa191e554c67a9a0981fca2235f6', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 09:29:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0953d8267f7b4359934ea7c232fa2aea', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:54:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('097341a23bc34fa4bed8d0b50b0ea2dc', '/user/list', '192.168.43.152', null, 'GET', '2019-12-12 13:34:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('097e70ef95e844589154f0a7578aea84', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 06:02:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0a02ce39325c46ae898baabca4268356', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:42:41', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0a0a8e8bed924f7da65348fc4e23c61a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 14:11:00', null, '1');
INSERT INTO `t_operate_record` VALUES ('0a1942b0ffaf4efc83bc6bd6b76d0aad', '/course/mycourse', '192.168.43.1', null, 'GET', '2019-11-28 14:40:43', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0a1b08745d004e3fa7950c258fa00b6b', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:46:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0a209b80f8924899a3db19c3793c18f3', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:55:40', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0a2a64fd6e294d7ba57157836a2acfb3', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 08:30:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0a3245587ef0455598dfca49311ff586', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0a4497d3c9a94867ac0f4a1d8c253407', '/exam/delete', '192.168.43.152', null, 'POST', '2020-02-19 04:56:25', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('0a49b2eea38d4f04b9bb602707a06b9e', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-12-12 12:39:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0aa53b69f7e94f5ba6e597711e95457a', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:21:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0aaf82da0df248ea8ec553591a99eebe', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 03:42:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0abac4d8b09d42668a8e1548a24a5052', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 09:44:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0aeea074e049436e98dc8dbdcde2d135', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2020-02-18 14:18:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0b18e5f504d843a18bb5c60a1c019570', '/student/delete', '192.168.43.152', null, 'POST', '2019-12-12 13:44:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0b4b6cfa88d84a09971c579861f903be', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 14:54:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0ba5a8ccb32940c0be5f944d3ea2eb44', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:44:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0bd10f7b91b448238a0b58a29691f122', '/user/list', '192.168.43.152', null, 'GET', '2019-12-11 13:54:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0c005ce15e4c49bc8607355acdf318c3', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 08:24:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0c05ff6e0c73443294b637dfd79d754c', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 11:36:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0c0c128fdb504723a4486bd09789ad04', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:49:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0c23c530c1ee4a61b267ae2ad84a24d7', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 03:06:33', null, '1');
INSERT INTO `t_operate_record` VALUES ('0c8bfe2c7cbd46d3acd639aea35f7e8e', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:37:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0c9b3b99240b44f689211ed2f0da3f9a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 15:05:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0ca419c636e046cfb9a8b9a89b43dfd5', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:09:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0ca9cf80697f4fa8868e4ed6c28128e9', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:40:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0ccc858d1ab24161ac68c468615b4211', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2020-02-18 14:21:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0ce75fd258804170a47198ef9604ed06', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-23 03:26:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0cf0c4289121410a818c749c32806e90', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-17 15:14:42', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0d40134e60494d0aa702f15c5105d7c4', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 11:53:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0d5318d5210b4bfd8c1f8d230a24da81', '/user/login', '192.168.43.152', null, 'POST', '2020-02-19 05:05:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0d628b56e9114213838abb534377ec6d', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:54:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0d67a925450d4d6fbe2036899d261a9e', '/user/list', '192.168.43.152', null, 'GET', '2020-02-15 04:12:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0dad299dae8b4fa98bb3e41d309d8393', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:44:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0db2e88352da4e028f62cdc306b9c95c', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-23 14:07:07', null, '1');
INSERT INTO `t_operate_record` VALUES ('0db83db104384a4987e8417989510914', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 12:12:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0dc75f1c4eb94c56afb0e3239762c5be', '/perms/list', '192.168.43.152', null, 'GET', '2020-02-18 12:29:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0de32a0f98ca4bb4879c44cdc091e512', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 13:59:13', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('0e293bb6604648f3aa6c9a7a6cdc6e62', '/role/delete', '192.168.43.152', null, 'POST', '2019-11-23 06:02:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0e33a27f612344a4be05e4f3d7e59f8c', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:06:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0e3c38781dab4f30b52cf5935962428d', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 11:37:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0e486c4eefb741fc819a4f23482919cb', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 14:33:13', null, '1');
INSERT INTO `t_operate_record` VALUES ('0e5fde8a74314eef9d52a6fa98419f29', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:07:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0e78f6953cc84e5295bd6bcb443f40c6', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:01:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0ec1ca2e84ed4ea7917f34cb26b599f5', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:47:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0f002a0af0674fa8b846e2fbfb5396f1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 14:32:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('0f27590687724bd6b8acab5425ded0b7', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-19 05:06:14', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('0f27d013b8f54beebb57c151b1d14f82', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 02:20:23', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
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
INSERT INTO `t_operate_record` VALUES ('10945b0c58cb4500ba5a9b6739161718', '/sys/findUserLoginTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:46:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('10d26e3d19204341aef9022709281e3d', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 14:43:08', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('10efd8107ece48fa9957f97fdeb25d70', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-01 08:42:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('111a73f15bbb40c3b3f5df223d1d096f', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 09:44:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1149730e32014b308809b9ebdf49dbac', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:53:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('115c0c2451bd474c9ccabe0f3f96dc74', '/course/center', '192.168.1.102', null, 'GET', '2019-12-13 14:59:34', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('11670465242f4a05bab174ce79443e8d', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:07:07', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('11a39011c98a4966ac718f007791f0a5', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 13:08:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('11a8759453514dc1a2e89c064054abc7', '/role/list', '192.168.43.152', null, 'GET', '2019-12-11 14:10:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('11d49926774642f89b325999ad67d442', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:05:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('11e6fda4c2234bb884fedb45935277fa', '/institute/list', '192.168.43.152', null, 'GET', '2019-12-14 08:29:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('11fe0f0cfea04eb1a41fc3428506eb91', '/user/login', '192.168.43.152', null, 'GET', '2019-11-19 15:38:41', null, '0');
INSERT INTO `t_operate_record` VALUES ('12110782514945fcbaa3ac7526a19c25', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:09:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('122ba38885624deeb45065d20085d68a', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 15:17:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1235a61978c54811acdfc4a2e966390e', '/student/add', '192.168.43.152', null, 'POST', '2019-11-24 13:21:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('12443b34c695417c9666066b9860e283', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:09:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('126ad97496484915acb93e74256addc8', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:02:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('128aa9c5f5e94def84c5b67a3335708e', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:18:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('12bf372464124a849de7bde7090e9a14', '/user/login', '192.168.43.152', null, 'POST', '2020-02-17 15:12:12', null, '1');
INSERT INTO `t_operate_record` VALUES ('12f99dbc056044f7a2cd4bc187c184fb', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:00:40', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('130252815b8442959aaa3145ab56113c', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:34:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1309801f0b404b6398e55ce9143aa521', '/user/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@43039c2a, org.apache.shiro.web.servlet.ShiroHttpServletRequest@ff643ab]', 'POST', '2019-11-19 14:48:55', null, '1');
INSERT INTO `t_operate_record` VALUES ('1312328ba16f42819a8acb5cf4423e30', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:26:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('13231b986ee24f2db872a531ed15aefc', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:13:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('135312c120ba45faa674d40ac3d12178', '/clazz/add', '192.168.43.152', null, 'POST', '2019-11-24 06:51:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('13748fd8c83c458381fd1a368aebc82a', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:46:17', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('138be12111eb4ae5923b2bf54c80e9be', '/user/list', '192.168.43.152', null, 'GET', '2020-02-15 09:44:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('139236de74fc4f9ebe641aee8bed4e70', '/user/login', '192.168.43.152', null, 'GET', '2020-02-17 15:05:16', null, '0');
INSERT INTO `t_operate_record` VALUES ('13bb7a2c12794199b102727f09fa779f', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:17:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('13bda69b9505477d9afca9ca4e6fe484', '/teacher/add', '192.168.43.152', null, 'POST', '2019-11-24 15:19:50', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('13bded87b5e747d6b59a7f31424d255c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:38:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('13d81b5a6e2c4a17ab9aa2a0ffbb91cb', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:37:56', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('13e9b5a0459540ddb40f0b37921c53ee', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-23 03:25:20', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('142e3187882d40a28311a7d988a486b4', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 12:59:12', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('1438252d40ac4a348f8dd3364e8aa139', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 13:54:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('143e8147ab5e4d46929b9eeb971d7eb0', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 08:30:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('145b854410504865adf2712d918ff6a1', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:38:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('147dd471ac8047ae81f8979addea925e', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:39:40', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('1485c2ac958a4b2697f16903641ca298', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 14:22:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1486a5dc242044558079ddac122e132a', '/user/login', '192.168.43.152', null, 'GET', '2020-02-16 14:29:50', null, '0');
INSERT INTO `t_operate_record` VALUES ('149dfc874e2e4240b4c3c8d16193ecb3', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 13:44:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('14b63168b51d4aaab5790cc998c5a45d', '/user/list', '192.168.43.152', null, 'GET', '2020-02-17 15:12:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('14da1ab306e34c3fac0fe26e97fc05ae', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:58:42', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('152e854f03844738a9dbd9c6d81570d3', '/user/login', '192.168.43.152', null, 'GET', '2019-11-20 12:17:02', null, '0');
INSERT INTO `t_operate_record` VALUES ('15416a2d198548c7bbfaa85eae5ed23e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:39:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('154a7015d3d040b3b39bf9f80b7a12de', '/teacher/add', '192.168.43.152', null, 'POST', '2019-11-24 15:19:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('154bff4a3e094d958f64d2cf882a8946', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 13:11:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1575d0f78aa94d96ad6fe3ec3bd55feb', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:27:09', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('15a0bd61be4b4ceeb822fc7622043a64', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 13:02:14', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('15c80100f6a648d792171aba00ec7094', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:58:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('15d4fb44f27a4f98ad43c94e1dedd104', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:12:34', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('15d7e06e35e641299778c352dcee7bec', '/user/login', '192.168.43.152', null, 'POST', '2019-12-12 12:36:38', null, '1');
INSERT INTO `t_operate_record` VALUES ('15e082ace22b47fab7bd342c65bec8fb', '/user/login', '0:0:0:0:0:0:0:1', null, 'GET', '2020-02-15 09:32:16', null, '0');
INSERT INTO `t_operate_record` VALUES ('166c73d5d3954d2095a0b9ac2e19bc6d', '/user/login', '192.168.43.152', null, 'GET', '2019-11-19 15:12:26', null, '0');
INSERT INTO `t_operate_record` VALUES ('167b564b3a1c40789a31a433b9d7c0db', '/dict/add', '192.168.43.152', null, 'POST', '2019-11-23 12:52:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('16a34b1d52194d89add93eb1d3b747c9', '/user/login', '192.168.43.152', null, 'POST', '2020-02-17 14:09:08', null, '1');
INSERT INTO `t_operate_record` VALUES ('16d342afcffa4e658952fa288811e56f', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:47:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('16d9bbb1041944aeb4f55f101cc9680a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 13:58:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('16dd0f68e89d4f999c32c62ef3b95342', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-12-12 12:38:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('170b61f372f74dc7bf6eeb2056fc9fae', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-17 15:17:43', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('174f6d22774a46149e4444496788ed40', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:26:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1780e644542a4f8cb1afe0ff383b61a0', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:51:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('17a08e8668a9456e8eeb64e94f966055', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:31:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('17aa8bbfe06f46b58d305131699509d4', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 02:07:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('17ccb444584c435b837b5874164f8f81', '/clazz/delete', '192.168.43.152', null, 'POST', '2020-02-19 03:59:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('17d545c7475d47bda79af9e2bd264830', '/student/list', '192.168.43.152', null, 'GET', '2019-12-11 14:10:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('180ebff52f084290a0187e26e7effe77', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 13:10:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('181b48b50c0846ada8d581155f706a99', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-12-12 12:39:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('185339e1b39f4a55b08ec42bcdce3e52', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 01:33:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('185de4c527694cf3afdc1b63f14ec32d', '/user/status', '192.168.43.152', null, 'POST', '2019-11-23 03:25:04', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('185f433cf9574c3e9885447e3f153436', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 15:07:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('18648cd45c38426197bf61ebf2666a25', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:13:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('186c59a4c9614b82bd64251e24be8d28', '/user/login', '192.168.43.152', null, 'POST', '2020-02-15 09:29:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('18b8d68e61b441fe85732bace7d44b17', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:52:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1948fc0eb5da40ad951c2870daf88860', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 11:03:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('194af8f974cd4b9191ba022a2bd62dd2', '/course/student', '192.168.43.152', null, 'POST', '2019-12-12 13:34:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('19561f8aa8c3418bafb519e130506c8d', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:11:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('198dff5f8bc44950bf329442d68fdb0e', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@4574da91, org.apache.shiro.web.servlet.ShiroHttpServletRequest@17571e83]', 'POST', '2019-11-18 15:22:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1a05cf716fe640629e43574d228396ad', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 08:18:32', null, '1');
INSERT INTO `t_operate_record` VALUES ('1a0efe4d1ead4464988859bda0ce79b7', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 14:36:18', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('1a10656657ed453eb62a6c6a4acb0c4e', '/user/login', '192.168.43.152', null, 'GET', '2019-11-24 05:17:11', null, '0');
INSERT INTO `t_operate_record` VALUES ('1a29fd50a54b477ea830473e1ef38ba1', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2019-11-23 14:54:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1a32dd5e5f944c228e07d08394b76193', '/student/list', '192.168.43.152', null, 'GET', '2020-02-15 04:13:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1a516af3f2be493caa3973e87bd0c858', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:45:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1a6e28bea6cb43ec81d4cb1ad717a5ce', '/user/list', '192.168.43.152', null, 'GET', '2019-11-27 14:02:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('1a9200b9364c477d9fc0243d6ac7c06c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:48:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1ae4c999c6ee4e8e9a0484d05b1dcd3c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:17:02', '74013ffb091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1b48b7f104914ed89bf399b2b531657c', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 14:37:14', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('1ba078f5b2e3412aabb42d10767193d6', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:02:07', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('1bbef82f79e14be3a26e172686488ade', '/major/list', '192.168.43.152', null, 'GET', '2019-12-12 12:42:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1bebe970f74346048dee8fbb2f657043', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:21:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1bf55388c15b4bc8838e67ade60c811c', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:46:27', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('1c112831e776459b918723d9f4591edb', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 10:59:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('1c7bb98964914d1a971804d3ab8c4806', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:31:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1c8872afb38d4253b7fb443f78d16748', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:14:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1c902ececee942d99b38b152641950ab', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:06:42', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('1c93541861494ab3885ab0fc7ee32354', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 12:01:08', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('1c9ad6558cb043dc9b475dfb29b5c329', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 14:08:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1cf816cd28d14ada8887a0ebdde5542e', '/user/list', '192.168.43.152', null, 'GET', '2019-12-01 08:41:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1d248262597347a98c288e9e03de5894', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:22:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1d276aaeca7a4f23ad8856e455cb64f4', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:00:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1d3b57ea0fca4b7bb0147814b6494fff', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:24:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1d4c71e2bebd40419d7cad02e259fd80', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 15:13:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('1d519a46eb8c4be4a840d4f98d10828d', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1d6d5ecee9934e66800798d8c1e97202', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 06:48:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1dc3e98695bd4cb7908724fb7306b798', '/UserApi/v1/editUserStatus', '192.168.43.152', '[User(id=67eb71f1091911eab9205c93a27933da, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'POST', '2019-11-18 15:22:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1dee8f46731044a48308c07b5c02211f', '/teacher/list', '192.168.43.152', null, 'GET', '2019-11-24 15:20:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1e15ccef9ddc41faaf2c438c90fc288b', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 13:29:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1e934c5e7bdf45bc8ac436a68cd18722', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:38:31', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('1ebe8b57284b4e0c90ad587680f64687', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:31:09', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('1ed04ce64a264e16ad06ad80a23367ce', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 12:12:54', null, '1');
INSERT INTO `t_operate_record` VALUES ('1f41165dc7e04c858aaae44ce14dd5bf', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-12-14 08:33:19', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('1fb5afb6c45147979bde252e10c4fae6', '/user/list', '192.168.43.152', null, 'GET', '2019-12-14 08:33:07', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('1fc3259d765840b68971f3bf16d9c0a7', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 10:48:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('1fd3d87a51c049beaba53b31ff117ad0', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:08:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('20022470fa974400a0f4fafdc4d0e32d', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 08:47:20', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2031aa3d3901429da870e6b4c209e8cb', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:06:23', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('2050c89014414453a55ea870a357230a', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:56:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('206beea8368e438e96925216b5980a93', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 14:33:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('207b0064d6f040359f0b68f4693b0172', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 14:36:26', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2084692b96d94efe821bdc1a9f36e854', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:06:42', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('20a620a0fc744067b2cac79c13fd5882', '/sys/findUserReqTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:50:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('20b96d109bf54102bdeb828b04e070f0', '/course/student', '192.168.43.152', null, 'POST', '2019-11-27 13:43:13', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('20bc60d5e615407f91a5b25568f76329', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 12:52:58', '6289fb4f0f9311ea99ba5c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('20c25e01fca94a2bb996d4a8f67e70d4', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 12:51:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('20c3cea0158349809ff871dca2d8bd66', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:20:01', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2103cde69aa249adb4e2db179597f739', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:38:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('210a62ff33bc4a6fad84315b9cf6de25', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:21:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('210b21fd4e0b4194bec52a887ebd3052', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:08:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2111979f76724d33bfa8821f7d49dabd', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:38:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('21384eea3728497998d990ac4d634a48', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:04:21', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('213dc6a6569348e18df1334d432d6940', '/course/add', '192.168.43.152', null, 'POST', '2019-11-25 13:55:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('214440cc016f4ba5aa89dc73e9e02017', '/user/list', '192.168.43.152', null, 'GET', '2019-11-28 12:53:32', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('214443ce0e90444d95c7941937b1fd15', '/user/login', '192.168.43.152', null, 'GET', '2019-11-25 14:57:35', null, '0');
INSERT INTO `t_operate_record` VALUES ('2144d8ad83144b74935e85360555b563', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 02:20:42', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('215ed0e6f0a54066862f397e81d21ba5', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 06:32:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2163db323b934b40898ac0e79e09fb74', '/user/list', '192.168.43.152', null, 'GET', '2019-12-14 08:31:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('217f90f093f941c0863248b797c81d5a', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:46:54', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('21890cffc74e4077ae0fdf805e899fdb', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:45:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('21900c8689044171bce2dca273c4efb1', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:25:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('219446d71cc749eea39ee78548339aad', '/user/status', '192.168.43.152', null, 'POST', '2019-12-14 08:32:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('21ccd2097b7840f1aae4d0246b601f1e', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 14:11:02', null, '0');
INSERT INTO `t_operate_record` VALUES ('2202e3f305e74dae91a06e9f04665149', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:53:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2221a9489efe40db9c54be788966040f', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:33:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2221f5f79222418bbbafdd1d7f6dfb9a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 02:08:58', null, '1');
INSERT INTO `t_operate_record` VALUES ('2238744ac31c43bdaa77d70ec047e848', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 01:33:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('224a3db2604c4a11941cad0c03520798', '/user/update', '192.168.43.152', null, 'POST', '2019-11-23 14:17:59', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('22d2426f5510409ab2fe072f446fb4b0', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 09:19:12', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('22e7cdcccdb4499c84e3823456e7ce04', '/course/choice', '192.168.43.1', null, 'GET', '2019-11-28 14:40:47', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('22f28952fb77412099e71b2dd5bbd47b', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 06:01:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('22ff82c0a1684323a4d5dd43f06f1d7e', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:15:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('230cd87986964942804209d8d2919d0e', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-17 14:30:33', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2327933f440e44b9ad1c4665f7035197', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:48:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('234a982d586e4c36adb57aeee78db7e1', '/course/mycourse', '192.168.1.102', null, 'GET', '2019-12-14 13:38:09', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2352d9b1feca48f1b3f4c2b7c087df26', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 14:22:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('23677f1c89114ea3b5263a63502a6ce5', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 12:19:31', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2380719d3bdb4c4490401af829436c33', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 12:12:30', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('23922da3557649049a2fdf3654f5a40c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-25 13:53:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('23c61c1188fe4372983216cc078c0daf', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:59:03', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('23d642f34a814a89a2ee522a5f630157', '/clazz/list', '192.168.43.152', null, 'GET', '2019-11-24 06:50:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('23fb4dfe48e0493cb741e165ecb6b85c', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:12:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2402dcd1f264462ca486aadda85e589a', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:17:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('24761178aeb744f9b0fc6ce0220be396', '/user/login', '192.168.43.152', null, 'GET', '2020-02-17 15:07:38', null, '0');
INSERT INTO `t_operate_record` VALUES ('248a4c08e4a74d8882239d90d3c533b0', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:26:30', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('249cae3d4e4b4874b83e0ff16f6ea483', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:45:24', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('24a396cfb1274cb9b4c07c20640a585e', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 11:13:08', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('24b860b80a1a4456a1eb45399f58732d', '/user/login', '192.168.43.152', null, 'POST', '2019-12-01 08:20:08', null, '1');
INSERT INTO `t_operate_record` VALUES ('24bb3f0d79b04fcb93133726de4d2044', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:02:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('24ceabd17ab54108aa891f4cb240aae1', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:52:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('24dbc738de3d4afbad995705bf57f288', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:18:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('24efaa702d744d6f838cf1cd4598351a', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:34:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('256343856f4d4626a5e1851b8b6d5053', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:06:51', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('25aac8af39b647aca017a1166d3723b3', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:18:36', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('25b66aae9b83497db843fd18cb78fd0f', '/user/login', '192.168.43.152', null, 'GET', '2020-02-18 03:57:09', null, '0');
INSERT INTO `t_operate_record` VALUES ('25bdf915f47845f882119449dbc7bb55', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-17 15:28:19', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('25e93d0677bc46839b5652ee1d6f99d2', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2019-11-23 15:19:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('25edbb618aab408da0f04e6cfbf5fd3e', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-17 15:14:42', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('25f9d88da0da4b49b0ec5da1a44fff1d', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:37:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2629b6c69d2a437bb91b863ce64c8b72', '/course/mycourse', '192.168.43.152', null, 'GET', '2020-02-16 03:47:53', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('26316a15ee4b436d91e8fc58a788a5e7', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 05:05:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2689cdc98aca4f4dae98349f31ac04c2', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:25:25', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('26967a9fff7440f8b5c6e6d8b46b939b', '/teacher/list', '192.168.43.152', null, 'GET', '2019-11-24 15:17:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('26dab05447064a498e1cadbce03cb1fb', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:38:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('271d31a8c67e418a8c300ad833666cc2', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:08:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('27319fdbf4d244a98762f1ae90db4335', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 15:23:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('27667508a17041d98685f9aae02e7f9b', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:26:52', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('27cb43ecb7984cb19347b291b5a7ac1e', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 12:09:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('282fa6484de54e1eb36ee1da08a5d707', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:39:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('284dd8712dec455bab5fe3df6d217d57', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 10:32:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('289ce9b701cd4447be5ff835132d4ad3', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 14:37:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('28a65fbfe6f141b5bfc7c7aea2c06cd1', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:43:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('28b75d5f2495434ba2c1ace43c141443', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 13:43:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('28cb848cee7c41fd8250d28b77e81ff4', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2020-02-15 04:14:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('28dd9d9e74c243cf9d38eec6fe1ceec7', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 08:46:17', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('28df66a6196d46148ddbcb02846dcda8', '/major/delete', '192.168.43.152', null, 'POST', '2019-12-12 13:39:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2905e93e0db14db99c1c479069e5e385', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-12-01 08:42:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('290c1fab4b7e4ae094c8ba6474f918cc', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 13:07:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('292984ba79d445cbbc9491f01fa5e855', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:47:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('29372d7dec8e4c5689cfedffa3caf2da', '/user/login', '192.168.43.152', null, 'GET', '2019-11-21 12:55:58', null, '0');
INSERT INTO `t_operate_record` VALUES ('29427ed2ecf24bd79b6848171bd99899', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:59:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('296a3ff6d58e42e1b5cecffe158f4b6d', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:40:55', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('296a587a93164549b1e22ebcd7758f75', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 10:33:46', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('296c1b67df6b4004be4ca93266d56902', '/user/list', '192.168.43.152', null, 'GET', '2019-12-01 08:43:53', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('297cd6546d204c87a86a97bbae27bad3', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 13:43:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2981db1be6c447d59baaea0a82dff9e0', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:03:42', null, '1');
INSERT INTO `t_operate_record` VALUES ('299603c2d6a240ea801776da55c7d10d', '/course/center', '192.168.1.102', null, 'GET', '2019-12-13 14:57:54', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('299c72ee89284c36aa51d15ae7f3b589', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:38:17', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('29a4386677ba42c78f13961a5d2ce212', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 11:03:53', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('29e5603369de4d4ba9bd48288130e742', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 11:03:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2a31a01a7b3a4bb5a3bf0ea975a7b32d', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 14:12:32', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('2a3eb0fc8f1944538a1b7afa71237bd9', '/user/list', '192.168.43.152', null, 'GET', '2019-11-28 15:08:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2a3fbbad890640f790fe397c3ab4ea40', '/user/login', '192.168.43.152', null, 'POST', '2020-02-15 09:34:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2a42fabf8b8946cb890128dc773ccb2f', '/user/login', '192.168.43.152', null, 'GET', '2019-11-30 05:24:33', null, '0');
INSERT INTO `t_operate_record` VALUES ('2a6d180ef2554af79a55c443d8edc49c', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:24:42', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2a7c10facc864fb19e301f638380b8bc', '/user/list', '192.168.43.152', null, 'GET', '2020-02-15 14:53:20', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2a803de894df4e1aab27d5e0620fa61c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 13:19:59', null, '1');
INSERT INTO `t_operate_record` VALUES ('2ac87e70cc4e49e3a4309ffba3e1c234', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-17 15:13:31', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2acf26252f184f949216e0ba34609ca5', '/teacher/list', '192.168.43.152', null, 'GET', '2019-11-25 13:48:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2ad23c262626412cb1c4189f0a23779d', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:38:51', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2addf38a061b43ff8d9ed090b2484736', '/course/list', '192.168.43.152', null, 'GET', '2019-12-12 13:35:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2b092993de7648ba9f9716483c424593', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 06:00:53', null, '1');
INSERT INTO `t_operate_record` VALUES ('2b3f5f0c1f114bbda71a47fa9fec1223', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 08:40:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2b8aa048037d4f5c9603be455a218191', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:07:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2b90bde765e94faba0dfe479e568f880', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:44:55', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2b91f6dec6644e438aca35c555c6f1ba', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 14:08:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2ba6a3383c8d4e449a234fbcd0161986', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 03:48:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2bb445d59f354ea69b670f2aa4d26b14', '/role/list', '192.168.43.152', null, 'GET', '2020-02-18 12:29:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2be3cd33fb824cb18d3a95bc9e356b46', '/paper/add', '192.168.43.152', null, 'POST', '2020-02-19 03:39:57', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('2c415024603949a9b466c1637aae59fe', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:49:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2c477c1714d84c56a5f9f32194d2fc69', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 12:51:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2c967b663c3b4c798fccbe01b861d172', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:55:40', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2cbf72ef387d4012bab8be972a4856b9', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-28 15:08:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2cee3f669e544839b46b5813d0056b6e', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-12-11 14:16:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2d0b255a6f3e499a965054a35e7305d7', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:06:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2d13069b72fb4b4891f23fa616e995da', '/user/login', '192.168.43.152', null, 'GET', '2020-02-16 08:39:33', null, '0');
INSERT INTO `t_operate_record` VALUES ('2d17f68115f14e71aa5d299011d7f4e3', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:35:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2d6e15351c2a4329a0a3e6ea05975ec2', '/user/login', '192.168.43.152', null, 'GET', '2019-11-23 12:09:38', null, '0');
INSERT INTO `t_operate_record` VALUES ('2d7104a2e84f422b93f946862bbdf8f4', '/user/login', '192.168.43.152', null, 'POST', '2019-12-01 08:43:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2d7cd4afc4c542ffa93b85e114e0a3bd', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:41:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2d7fc56c0a0d45028bc0e0d7fb382236', '/user/update', '192.168.43.152', null, 'POST', '2019-11-24 14:22:06', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('2de3477c0a414fe4b794c8b1ad43fd45', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:18:53', '7bc5259b091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2de71a14028b47b483faa35c6c693ac7', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2020-02-18 14:26:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2e4104500d30416c8d427b067113f575', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 12:49:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2e9032e9a3304a879d451e4ae6f10e18', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 14:53:26', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('2e9896dc9b374f0796092ea113e8f614', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 09:42:01', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2e9d9a3eb6014dc280dce0e2266b5bf5', '/user/add', '192.168.43.152', null, 'POST', '2019-11-23 03:27:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2ea906c0175f46d6badcbfa0454750fe', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 13:13:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2ecec794688d47ee9eac2939cd6cd26a', '/user/status', '192.168.43.1', null, 'POST', '2019-11-28 14:37:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2f11a66645db4be48568dc073a119246', '/role/add', '192.168.43.152', null, 'POST', '2019-11-24 01:34:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2f134002f526486c9bea5e859acf116b', '/teacher/list', '192.168.43.152', null, 'GET', '2020-02-18 12:29:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2f35b9073977440ab7a6f47cb1d062c2', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-27 13:01:50', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2f3a5215ede846d99ea546f9242ca918', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 14:42:08', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2f4f4b6592ec46b09242ec31a31c3af9', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:42:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2f4f6476ae604e499c5121fd761176ba', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 15:33:53', null, '1');
INSERT INTO `t_operate_record` VALUES ('2f59759a80a042d5ba3a56210df9be58', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 04:11:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2f5bdb0510a043829443ac2a3f50749f', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 15:19:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2f765b3345064561b99940571c285370', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:19:59', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2f8724e96c1342fe8847c0d67f0eb030', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:54:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('2f8d97438b6b421dad2df58c00206353', '/course/mycourse', '192.168.43.152', null, 'GET', '2020-02-16 10:17:21', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2fc786bb22ff4ed5bf23eeae01b3a207', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 12:04:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('2fced6f299114fd78cae22b8cd989890', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 03:12:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3014c47b002f4534a54a32578a609a89', '/grade/update', '192.168.43.152', null, 'POST', '2019-11-28 13:43:26', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('301eaa7bc7a24902bf287d3f922299ee', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 11:03:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3047ab9a822146ff9ed49973464b3065', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 13:29:00', null, '1');
INSERT INTO `t_operate_record` VALUES ('305a28707cbc41038b8b429803de571f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 12:17:14', null, '1');
INSERT INTO `t_operate_record` VALUES ('305d475b9a5d49a696381ef1a59528b2', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 06:21:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('307dc0109b3248d189f9cdb8b936e1f0', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 15:15:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('309b3e4fadca41f4bc8bc8a80bd13a3e', '/course/mycourse', '192.168.43.152', null, 'GET', '2020-02-16 06:05:29', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('30b11898b07143e0815b07133ef887ed', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 03:14:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('30f6f42c55b6489ebdc905ebbaaed5fa', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 05:56:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('314655f79ff34edea8154de44694b3bb', '/clazz/add', '192.168.43.152', null, 'POST', '2019-12-01 08:42:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('314976c8b85c4e3ba2a0976c24a7ca11', '/course/add', '192.168.43.1', null, 'POST', '2019-11-28 14:44:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('31587b8fd8d24c578b17e009bafc4085', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:44:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('315d229b0434449a8d82e22224114265', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 11:52:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3180f83b178a4fd19247aa4429feb021', '/user/delete', '192.168.43.152', null, 'POST', '2019-12-11 14:17:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('31963d9a17fb4024b12cfde7fdb1837b', '/role/findAllRoles', '192.168.43.152', '[RolePerms(id=null, roleId=null, permsId=null), org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2019-11-19 15:30:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('31a1ca77b9c048ab99349df7e7e739ce', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 09:27:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('31af0c901178433db41ee79052d8e0b8', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2020-02-18 12:30:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('31c44806406f4cc1be0dc6b3c28dba2d', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:26:03', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('32504f51e8064deaa315bab0a2a6abee', '/user/list', '192.168.43.152', null, 'GET', '2019-12-14 08:28:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('325694f0d34b43ec9fb2ba13af11fb9b', '/user/list', '192.168.43.152', null, 'GET', '2019-12-01 08:20:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3264ce521f494f208e0d669133593615', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 06:02:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('32d52ef385684b979e911bae194e4c55', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 14:58:55', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('32e7304628764e8b86c1f49f01cb33fc', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-17 15:27:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3320705ee7e044bb9a223254311d6ad6', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:35:55', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('33260b5f87104a17aea5aa24a128bdff', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-12-12 13:30:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('336abf4d4519421cb8405943ace73ad3', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 06:21:59', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('33795956f0644508b819b513bd0ac10e', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 13:29:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('33b9053cadfe4c7f875823df721cb671', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 13:39:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('33c0ddb8b67a4ced95efbeab37c0a33b', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:02:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('33f16c28c0f3459596f7f4cb53baca71', '/user/update', '192.168.43.152', null, 'POST', '2019-11-23 14:19:34', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('34146e6aa9ca493caae9a210f9af5d23', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:28:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('34162d69fce641b7823437a35ee3c3e3', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-22 14:12:21', null, '1');
INSERT INTO `t_operate_record` VALUES ('3429bae3073c4fd794edc06858f5c726', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:52:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('34592b4e15604c2aa536f48ea3c849f9', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 12:26:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('346203df99384732aaadebaeae63e3e6', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:39:37', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('34631952df4c435787063e0bdf19c668', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:21:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('34677d3eeadf4437bf56d63a72d9f00f', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:10:25', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('3468015596684a80866938f365a983f8', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:24:51', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('34c15e2edd714df2aabce35365d2d5e6', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 14:37:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('34c217dd7e6d4247870750cd144c8ce0', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-17 15:28:26', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('35353f8f8a85448bb8f13613875341c8', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:09:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('35465d246dfa49c7901da035bb37d89e', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 04:14:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('354e993393ac44df99e871e49a416620', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 14:37:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3565d68be9c34161949bafcaf35c8eae', '/teacher/findAllTeacher', '192.168.43.1', null, 'GET', '2019-11-28 14:43:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('35ec6e635e2a4e96b082970848f570e8', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:08:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('367765da18544f718430eefee154f9c8', '/student/list', '192.168.43.152', null, 'GET', '2019-12-14 08:29:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('36d9fcce09ca4472bc49a41a80ff762e', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:40:28', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('36f103e886c44ed79bedd8f4c174f41d', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:49:06', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('36f8b8c013bc450ca7b21ea69d5c79c8', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:43:31', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3703165c822a490094ad20c2eb83dd00', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:47:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3769c5e5932e43558118c159c88aa07d', '/major/list', '192.168.43.152', null, 'GET', '2019-12-12 12:39:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3771c904122a4733997dd8f620a5e325', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 06:49:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('377fbd5a2c2c4881a617a4e05a06ea06', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 12:48:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('37ba66793ac14f269f4621f52fb55d80', '/course/mycourse', '192.168.1.102', null, 'GET', '2019-12-13 14:41:11', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('37bd5944417b469daede8604b3784918', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 01:35:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('37bf961d06ba4e82b7349913e4013aee', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:38:51', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('37c0a2646eeb432b996bb6f7d2908a36', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:46:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('37cb23b9a14b4049beeea1e84abeb731', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:06:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('37feecc131c348cea859367da6e6b11f', '/user/list', '192.168.43.152', null, 'GET', '2019-11-25 13:53:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3809a64a74524c76890c406a835746ca', '/user/list', '192.168.43.152', null, 'GET', '2020-02-19 03:35:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3809dec98a4d40089a6c5250ce37929d', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 08:40:06', null, '1');
INSERT INTO `t_operate_record` VALUES ('38c4f6d6028f4922a3260b0f515d2ada', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 01:40:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('38d52a6506cc46a5ba1d7b1bffb5b6d9', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 15:03:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('38df5f6c5fc647e5b391f0c6d208cccb', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('38fc00e157a04b47ac74346864d7dd56', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2020-02-18 14:24:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3905e850728545c0a91e297f09c06579', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 10:30:21', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('390a88b905ef4f0088765c1aad909838', '/user/login', '192.168.43.152', null, 'POST', '2020-02-19 05:05:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('392194da2ccb46a3bbd1d2825ad7d29d', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2019-12-11 13:50:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('393bd48dfa6d4654a0e5ddf266d778fb', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-12-01 08:42:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3958ce975fcb4ba3aa6376fc2ab77957', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 02:01:58', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3967e5fac69e492eb80118191acc6b58', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:19:21', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('39bc2653865e49248a47f3e3b387edfa', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-12-12 12:38:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('39e889b6c0f64422a713a1898a7345cb', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 02:57:01', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('39f8aebd0ea64f50912c67b8ace326f3', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 14:11:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3a35de8deea142e98bd4066760d45e0e', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 13:40:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3a3dea2126c743f8bee2e6ea660fdc74', '/user/add', '192.168.43.152', null, 'POST', '2019-11-21 12:57:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3a575ba3d001422f8b07d6c7c2975d7b', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 14:02:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3a82f9fbdd9e46cab2823a30e735492e', '/course/center', '192.168.1.102', null, 'GET', '2019-12-13 15:11:31', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('3a87791884684c90804b22ef5429cc46', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 02:57:01', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3aa12b1abeca4ff48713f0753bed8098', '/user/add', '192.168.43.152', null, 'POST', '2019-11-19 15:41:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3aca1866486a414bbc5bcad7a6841f3c', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-27 13:37:41', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3acf57d00b1545fdad06f0c6f54ea303', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:02:08', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3b65c0179ccf43abb2ba045059eae349', '/user/login', '192.168.43.152', null, 'POST', '2020-02-19 03:35:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3b73465fe30e4276aa38093526142b28', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 12:54:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3b7ad757fe1a49ff97fbdf9d49aea589', '/sys/findUserLoginTotal', '192.168.43.152', null, 'GET', '2019-12-14 08:29:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3b8c5d6d19c6421ea94cfe345c3ce698', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 06:04:08', null, '1');
INSERT INTO `t_operate_record` VALUES ('3b8c9fd24b1a49d4adda985609accd73', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:48:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3bb4e2183a2e4712ad722b7611de43e0', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 04:06:28', null, '1');
INSERT INTO `t_operate_record` VALUES ('3bcae534cd6e4a8d9c568dfd7113558c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 14:11:08', null, '1');
INSERT INTO `t_operate_record` VALUES ('3c0bb7e9c418451bae9943f4ca8cdc87', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-23 10:35:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3c39f658b9b04898a9f96663e8aafadd', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:06:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3c7720a1bf9f415d9ac2f88e634ca80d', '/user/list', '192.168.43.152', null, 'GET', '2019-12-11 14:09:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3c8d490b143743debe88c58043b9cd4b', '/clazz/add', '192.168.43.152', null, 'POST', '2019-11-24 06:51:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3cbcb9d3db954b5ba3847de0ac1ffdc3', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:29:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3cc5f4e56ed74a4b9a5c7d6554cb665e', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:34:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3cc8b0a53f5747df9c850da4f12f77db', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 14:22:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3cf2462827b545899b42c4ca506bc93b', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:31:09', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3d28dd61a91f437f81c09762269cda68', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 09:56:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3d64cb7610fc4ae6a9495ce8dd7407d3', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:13:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3d79e5fffcc54e59b728d0f1f0e18adc', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:39:06', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3d7aa29c7c5b442599dc88e77e25f200', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-12-14 08:32:37', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3d7cafea03e942aeb67bf90dd0e6cf37', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:56:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3d88d90c922e496dbd818b7421b12fad', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:36:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3d90af934ecf4b0abd193d9175a01016', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:42:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3d9a671c8e3d4b63acc4288ad7fd5198', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 12:01:12', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3dbe2705f8b74966b485ec09c20d3968', '/user/list', '192.168.43.152', null, 'GET', '2019-12-12 13:43:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3dc1e213c0854365955299940fa93415', '/course/center', '192.168.1.102', null, 'GET', '2019-12-13 15:00:38', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('3e0e4164b41e4b6a85c38f4704dfe908', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 13:44:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3e32d1f14ab34078aa6292f1bd652674', '/role/findAllRoles', '192.168.43.152', '[RolePerms(id=null, roleId=null, permsId=null), org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2019-11-19 15:30:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3e501893a32348f7a76801fa9931bae3', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:17:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3e8361afd1eb448fa0f467c973438831', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 09:14:15', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3ebfd73677094543b5a9f488fa5a1f1f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 06:48:07', null, '1');
INSERT INTO `t_operate_record` VALUES ('3ec30169ea6f48409dcae7097d82cb92', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 13:39:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3ed57b49a9de4c56941fc92a33a5b888', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2020-02-15 04:15:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3f1f78e23cd741faa1741eb2168df277', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:06:19', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('3f2df49060a34a56be06e7e596153121', '/course/student', '192.168.43.152', null, 'POST', '2019-11-27 13:28:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('3f2fc64d74cf4bb5a96d1ec12beedcec', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 12:54:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3f31ba4e791948f18a2cc735d5666c40', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 15:14:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3f3a4f0c6c1c406894e3cc2d414cbbd3', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 04:56:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3f3a87f7c98146e1a0e008e24b96b99c', '/user/add', '192.168.43.152', null, 'POST', '2019-11-19 15:30:38', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('3f53659303474c33b845b76a468e58d6', '/course/add', '192.168.43.1', null, 'POST', '2019-11-28 14:44:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3f670f13d3cd4df3a2a3d32a20166ffe', '/clazz/add', '192.168.43.152', null, 'POST', '2019-12-12 12:42:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3f690f8d4c444ab1b52425f29624f995', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:22:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3f6d1035d0e64141bf8f78b05a3bf1c7', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:31:37', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3f7f93e608094892be3cf41d7bc1a0f0', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 14:23:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3f83ce977cd44739ba5e0417f14ddca1', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=d, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:23:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3f979a17f73f4e65b4285b23525e46f9', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:39:53', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3f9e13770ce54f23bb47efb3b3469f7a', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 09:56:49', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3fbf5e1b950d43a291bdf08efba06857', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:49:09', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('3fe87fa75c034ba1bc392d6f35f911f1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:43:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('3ff07935380040579f000f98de1f762d', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 12:09:46', null, '1');
INSERT INTO `t_operate_record` VALUES ('4036ad886ea04b208039a5bee0612be2', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 12:48:05', null, '1');
INSERT INTO `t_operate_record` VALUES ('4038d4041f8943d8bc35686efc559864', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:10:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('40537c1a1b0443b39edf3f07b3f02ae3', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 05:47:04', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('4057cbffe0154d41b08ed8aece1d8e6a', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-12-01 08:42:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('408f1b52952f4b4d839ab4f2cc145625', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 09:28:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('40e8736c5ff34f198d23a8d75aba4ad3', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 04:53:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('40ef4efc37764100b2c4ee1492571b32', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:01:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('411ea8f1fefe473bb5dd2b0a9890378a', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 09:24:23', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('412d38dd2d804587bae4b587617a1e92', '/user/login', '192.168.43.152', null, 'POST', '2020-02-19 03:50:50', null, '1');
INSERT INTO `t_operate_record` VALUES ('414140ceeb59422fb6b91dd7d478ea6d', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:29:50', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('41698643fc624bb5aade587047704f70', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:26:13', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('41c91fd30b52402996a40ac73098000d', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:49:09', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('41d33141d5224d0ca1159d87eb84cc9c', '/user/status', '192.168.43.1', null, 'POST', '2019-11-28 14:41:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('41dee1b5a2ff4b1e864312186086583d', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 11:19:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('41feb6e3295b4ae291aa9ad20901a986', '/user/login', '192.168.43.1', null, 'POST', '2019-11-28 14:54:25', null, '1');
INSERT INTO `t_operate_record` VALUES ('420031a111d143a0a5c6bffa17cee77f', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 02:42:31', null, '1');
INSERT INTO `t_operate_record` VALUES ('4214edd2b58c465da625f31f8d970475', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:40:34', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('421839bcb04f47fab191cb5769f6f49e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:44:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('422fd0ae785c4d43a32bb2d55f7bc334', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:48:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('42c75d7e8fd34f26bfd27c7676cc375a', '/student/list', '192.168.43.152', null, 'GET', '2019-12-12 12:40:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('42fc694bd75d4f87bd3baed3e9e63690', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 02:09:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('430aa32eb0f041cba1b4fbfd910212ba', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:47:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('43224d67d07046eb9ed9c151723837bb', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 15:15:59', null, '1');
INSERT INTO `t_operate_record` VALUES ('4326aa3597984d679cf69f31ecd86450', '/user/list', '192.168.1.102', null, 'GET', '2019-12-14 13:44:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('436a199797d940b5a64a791189828983', '/student/add', '192.168.43.152', null, 'POST', '2019-11-24 14:23:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4372d5cf5134401d960dcc23524dc90a', '/exam/add', '192.168.43.152', null, 'POST', '2020-02-19 05:00:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('437ebf70146a4b41b3cd06d665848aec', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:41:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4387e312a3b340ec94abdb49691e1b33', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:29:18', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('43e5f2a139c645c7a08c3fcbfa02fec6', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-17 15:13:33', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('43ed5f134fb4445c9b82cfc486680811', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-12-12 13:31:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('44065270979e4facace52064b4f1a297', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:06:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('443a4048dc4d4d9cb8e7bb2e3baad2e5', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:41:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('44588d180a7f40cc9b079d818ca44d17', '/user/login', '192.168.1.102', null, 'POST', '2019-12-13 13:11:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('445bc638223143f3b35b86ab17a970c3', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:45:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('44772842bc374b7a8686e95ebfa1fc35', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 15:34:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('44a93f6e1c2845049b6c5e2d9727d007', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:42:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('44b3ba15d5fc43b29fa85509722f0ab7', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 04:53:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('44b916c0ec394bafafe1c9e88c1a684b', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:04:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('44c510376a6246608e384119bef66b78', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:18:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('450ad6d179e04da498038423721d5f95', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 14:18:17', null, '1');
INSERT INTO `t_operate_record` VALUES ('451379508d5e4097988deb645a6b3651', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2020-02-18 14:22:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('45317a4069934e3297937aa6b15577b2', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-19 05:06:04', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4549a6d4b6d943cf88bcfdb0248eeb2e', '/user/login', '192.168.43.152', null, 'POST', '2020-02-19 03:46:26', null, '1');
INSERT INTO `t_operate_record` VALUES ('454fc8f0b3af46ce86fbb390debee96b', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 04:18:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4552c412d74741d0a996fc014809eaa0', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 01:35:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('455c17775bde4da585d88d1963fd2fad', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:55:42', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('457482ea7afd4b37952f58a3606e08a1', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:35:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4578d66afa09476f94e005456dfb7013', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:15:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('457cfac88b024afb89dba99ed5c77f69', '/institute/delete', '192.168.43.152', null, 'POST', '2019-12-12 13:44:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('45a28a97e71f4c708044ef072549ea6d', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:38:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('45c2bdd841924f53bf07c3be1a9c93bd', '/LoginApi/v1/login', '192.168.43.152', null, 'POST', '2019-11-17 05:17:04', '1', '0');
INSERT INTO `t_operate_record` VALUES ('45ed6926225a4b41aa9ec0d5fe0c3d0a', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:22:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('45fced825cb34874b13e6ae5881baf98', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 12:04:46', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('469055e727ee4c7c84b67f2d5376b5df', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:25:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4697db3117e64e63acedec306ddc2a30', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 02:02:29', null, '1');
INSERT INTO `t_operate_record` VALUES ('46b82dacb7f44f11ad1572c68916f089', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 15:13:07', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('46bc4c21279f4e5888d860d3f0463fd0', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:08:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('46e1a3fef63d40e1b962aaa3c4a0a4ba', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 02:03:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('46e584a23a774a7cba7a81b16ad9e0e6', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:42:51', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('472d91282b4146429e7a7769425bd48d', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:51:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4752c17f5d1544a495059ca712de906b', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-23 14:17:19', null, '1');
INSERT INTO `t_operate_record` VALUES ('4765465c593f4f12aea7b96199091c16', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:37:59', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('4775fa50e6ab4f83a1442be8e7f97cfc', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:39:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('477b19cd981e496f93a1f2a1625fa057', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 05:17:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('477bc3cd50cf40eb93370e77bdf9ccd5', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:10:45', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('47bd006efca94af4a884eb636ba39e24', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-28 12:53:50', '4f8f02dff98044ffb7f7dfbc8c57c596', '0');
INSERT INTO `t_operate_record` VALUES ('47c3f80668924967a787d332b5077fe0', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 14:59:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('47dbd5cf95964d8e98f50f5f5eba731f', '/user/list', '192.168.43.152', null, 'GET', '2020-02-19 05:00:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('47fc86f787d74215af026949c5eaf6e2', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:51:51', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('48025c36ed2742e884472b54c261fbed', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:53:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('48356f41757049a799acc0a3e4452462', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 15:13:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4843a3c7c0c44b0ab9ec0448e66dc0c3', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 12:04:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('484577823d6144eca00f1a83f48cffa0', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 13:20:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('484d98f8560946d0b79770fca8ae752e', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 05:26:00', null, '1');
INSERT INTO `t_operate_record` VALUES ('48ab11ce750e4d1791d91a0876de36d6', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:59:58', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('48ae46c6063d4309902192d68f6511a7', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 12:04:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('48b9bd2577804956a476ed3ae9f87c8c', '/sys/findUserReqTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:55:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('48cb4ee1252f495d92e4d2cd4cb4f2f6', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:48:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('48cd9ce683a4481b9f0d5ca4757e819a', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:35:14', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('48fca1c9691144ffa6bf2116afef007e', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-23 14:19:02', null, '1');
INSERT INTO `t_operate_record` VALUES ('4941ca0ea21940649da840c7a92cd480', '/paper/add', '192.168.43.152', null, 'POST', '2020-02-19 03:53:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4958a071c45340aba9d0ae684a6b731c', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 05:00:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('497dd98689604304a623ac261172da89', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 02:54:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('497e0b7de35b4d03bd284dffd8a8b912', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 03:16:09', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('4998ad71dbe74cd3bcaa5b59a3c586a5', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 04:53:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('499c20c0e81b44108bd6488c2e441e6b', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 13:41:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('49a19a9ac8bb4e3095069b13264fe9fc', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:42:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('49a4d78403c84681bd051c1c6423167e', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:01:27', '4f8f02dff98044ffb7f7dfbc8c57c596', '0');
INSERT INTO `t_operate_record` VALUES ('49d30574733b43e9bb1c3c10fc1feed0', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:17:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('49d4fa7890f24de799e7f5fab27940f0', '/user/delete', '192.168.1.102', null, 'POST', '2019-12-13 14:37:28', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('49e3402cd424494781c21420b6808558', '/course/mycourse', '192.168.1.102', null, 'GET', '2019-12-13 14:38:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('49e56a38161c4302aa41c8bb7e4ff7e0', '/user/login', '192.168.1.102', null, 'POST', '2019-12-14 13:44:53', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('49f1c4611e7f4f47baa3baa85963e7d6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:41:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4a0917329f5043c1abc0d59bcf8c3b0e', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 12:51:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4a112fc9d7e6401a8b3410bfcff569c2', '/clazz/delete', '192.168.43.152', null, 'POST', '2019-12-12 12:41:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4a122f3ff7334d08b728148182deb025', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:39:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4a335621760f46418ee3684e87318afb', '/user/login', '192.168.43.152', null, 'POST', '2020-02-15 09:33:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4a3afb59f86b4f769df36b9811cc0486', '/user/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@43039c2a, org.apache.shiro.web.servlet.ShiroHttpServletRequest@25e35bab]', 'POST', '2019-11-19 15:02:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4a679721e45d47c4939d08280ad4e231', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:18:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4a923fc14eb847c3884b413986227905', '/LoginApi/v1/login', '192.168.43.152', '[admin, dc483e80a7a0bd9ef71d8cf973673924, org.apache.catalina.session.StandardSessionFacade@1a3f217b, org.apache.shiro.web.servlet.ShiroHttpServletRequest@2c657c33]', 'POST', '2019-11-18 15:11:34', null, '1');
INSERT INTO `t_operate_record` VALUES ('4a95ceb4dc4c4cbaaba6ccab2cd4e6db', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@71bf434c, org.apache.shiro.web.servlet.ShiroHttpServletRequest@137fdcd6]', 'POST', '2019-11-19 12:11:02', null, '1');
INSERT INTO `t_operate_record` VALUES ('4aa31dc4d73f4c5980f75efc81d9310c', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4ab0431f57274106b3f5190325956f05', '/sys/findUserLoginTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:48:29', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('4ab830597fdc4a659c6132c6e2fc3f08', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:02:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4abe0dd3268e47f8a1db13c2c7a5efd1', '/course/choice', '192.168.43.152', null, 'GET', '2019-12-12 13:34:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4ac197c17ca54513aa4a1453892952c0', '/course/list', '192.168.43.152', null, 'GET', '2019-12-12 13:39:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4ad1b1040e7544c89fa16f3abbdabe2d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:59:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4ae4b7cd74ca4b9a882ef61f7dfa43d2', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2020-02-15 04:15:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4af3698267bd46d78e31c400e0ad09dd', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:28:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4af7ea642b4c40b39c5d449750fa7dcd', '/grade/update', '192.168.43.152', null, 'POST', '2019-11-28 13:46:54', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('4b02cc7f8d724cc9ad2da1a1ac883b62', '/teacher/add', '192.168.43.152', null, 'POST', '2019-11-24 15:18:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4b0b94a7ccd04076a64de05e486043ff', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 13:15:36', null, '1');
INSERT INTO `t_operate_record` VALUES ('4b3454a84fba4bda9a0e9d67afea9cad', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@6ab2238, org.apache.shiro.web.servlet.ShiroHttpServletRequest@5af5ee05]', 'POST', '2019-11-18 13:09:29', null, '1');
INSERT INTO `t_operate_record` VALUES ('4b3e312c0c2f45c3a31b282c3129924e', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 14:49:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4b64defdd5094e99bcb7792140a1cfa0', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:18:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4b657dede5844124829ec3b9af7f7d66', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:08:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4b8b95533e944f708ebfec01e202fade', '/user/login', '192.168.43.152', null, 'POST', '2019-11-27 13:27:26', null, '1');
INSERT INTO `t_operate_record` VALUES ('4b8e104e4a44438b9513bcb52f264331', '/paper/add', '192.168.43.152', null, 'POST', '2020-02-19 03:52:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4b93d64c338448b2b66dbee1de3a8f8f', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 13:41:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4b9bc0017721463998fbcd16b62bdd7b', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:43:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4c0f9c61801744678facbd90c825afe6', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 10:28:32', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4c1c3b2781bb4b0d97b07b69e469cfa6', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:05:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4c334829d4ee4a96a3af3ac1d1100898', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 12:53:04', '6289fb4f0f9311ea99ba5c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4c8bd4c8d0ca41ac9904a0e2f308fbe7', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-17 15:28:23', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4cf2c487d0e84942858c4271928c540e', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 03:47:45', null, '1');
INSERT INTO `t_operate_record` VALUES ('4d031bca64ca4dc99fc6903a37ef4e2f', '/dict/add', '192.168.43.152', null, 'POST', '2019-11-23 13:13:46', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('4d07a72647404d28bf54a64ffcb9f047', '/course/list', '192.168.43.152', null, 'GET', '2019-11-26 13:03:18', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('4d1f42af2b3b40a9a52e22c681f90ea0', '/course/delete', '192.168.43.152', null, 'POST', '2019-12-12 13:38:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4d650273e4814cae8d5eacbbc0ec755d', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:39:53', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4d8874381f994457b18f31abab435697', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 09:57:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4d8b7eed3dd545069225530ca07486bc', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-12-12 12:58:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4d9be79fb6e24d41afbff11d533095f7', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 12:56:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4db1c219baf74d689bd80a465d8cb32c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:46:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4e05e722bb8f4e2da4fd0e77c3758757', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 11:03:53', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4e0f2b652bb74b7ea1c211550edc5d79', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:29:59', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4e314a478c1e452383331990019bb99d', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:22:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4e574d2e95ba4700b3f5a811c3949a55', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:48:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4e5ed56c8c834b2aa4bebc26a6fef554', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 15:13:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4eeede00311d4393bafcbe63d73415b3', '/user/login', '192.168.43.152', null, 'POST', '2020-02-15 14:57:13', null, '1');
INSERT INTO `t_operate_record` VALUES ('4ef40d7e9be34ac798464bc1b2cff8a2', '/course/mycourse', '192.168.43.152', null, 'GET', '2020-02-16 09:44:58', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4f0a60261da443958f895e9820c837f7', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:42:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4f0fd56a87dc47ff9b871f72e1cdc0e8', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 02:56:59', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4f1658070431478ba5dc072309758550', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:53:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4f1838e4339c420d955804125cd3c8d0', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:04:30', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('4f2cbab81b284963a94d4976f0f0c20f', '/user/status', '192.168.43.1', null, 'POST', '2019-11-28 14:37:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4f501fa40e9844df886a1d82c313518d', '/user/login', '192.168.43.152', null, 'POST', '2019-12-14 08:32:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('4fafe75aaddb4582a66acde3d032f14d', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 05:31:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4fd9ee660ddf49cda34fd5da1c1393bf', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:22:15', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('4ffec7dc9c6846a5808a28ae65c570cd', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 02:56:59', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('503ad321ac70453c992eea2e5c39daa3', '/clazz/list', '192.168.43.152', null, 'GET', '2020-02-18 12:31:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('505169360eb6484cb62317b538ea4908', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:49:33', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('50545053236f44d68d5f2cd0b36b9561', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:52:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('50b2eb777f3640b6a80dbda9588b44e8', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:54:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('50badd0c5ef1409887823eb489088340', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-12-12 12:42:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('50ef913adc954df18a08cf14428b1003', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:38:17', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5115723c9a204493b86302f60db5f396', '/user/list', '192.168.43.152', null, 'GET', '2019-12-11 14:17:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('512ee43ab925499e9bd9bb9554b04237', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:39:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('516166beed3c4160a21dc784e263a795', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:35:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('51be4c6dfeb94c0ab206b92a288712ad', '/user/login', '192.168.1.102', null, 'POST', '2019-12-13 14:36:32', null, '1');
INSERT INTO `t_operate_record` VALUES ('51e87f8c1504427f94e2424be48d0593', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 05:56:02', null, '1');
INSERT INTO `t_operate_record` VALUES ('5206be97af7a4b37b8c397c060dfd6a3', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 09:30:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('520775fe7a30405cbf015e03b8819f8e', '/user/status', '192.168.43.152', null, 'POST', '2019-11-23 03:25:04', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('521c8fdfeae14614807006ed0c4a92df', '/user/login;jsessionid=08F4D8900794C3B7FA8D567393508DAF', '0:0:0:0:0:0:0:1', null, 'GET', '2020-02-15 09:23:22', null, '0');
INSERT INTO `t_operate_record` VALUES ('52209c54a8774a179c6792354007730f', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:58:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('523cc73adea845ff8a59e5ed6ba1e79e', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 06:31:30', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('52cc814ca89545acb1969fe30311f1e8', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:37:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('52cdb938458c4a44afa2d57d04a3ba52', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-21 12:56:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('531f29b39bb44bdcbbaef68265402aa5', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 05:32:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5323d56d4ba740f79ed9d78bb3e724cc', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:17:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('53644f85bedc40df822ede44587073a6', '/user/status', '192.168.43.152', null, 'POST', '2019-11-23 03:24:59', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('5364c785ea9a4b90ac08954b119f87a7', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 08:06:06', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('537650a2535b45cab9043a54e27f717e', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:43:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5385aa74aa8643048bb2a7756022b31d', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 14:05:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('53c5f07603a746bcb55095272f1cc347', '/clazz/list', '192.168.43.152', null, 'GET', '2019-11-24 06:51:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('53e7b006b1654694ad6bce1e85c40f4d', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:44:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('53ec73d4e0cf4f55bb5a0c1c13db1419', '/major/list', '192.168.43.152', null, 'GET', '2019-12-12 12:38:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('53f4d4d2d5274c67a6ea583ed92749eb', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 12:04:35', null, '1');
INSERT INTO `t_operate_record` VALUES ('53f962d7eab44b0ea488d86328712dd4', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 12:07:18', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('53f964be1f894198b3c57e142045e6ee', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 14:29:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5424c6dad9ba439c89da6510e3008ebd', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 05:56:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5436aedf532a461aac9f4de2237966aa', '/sys/findUserLoginTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:49:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('545077696eca47afbfb3678b10016849', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:00:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('54a5eddd18ad43dd819762b1d28f98e9', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 02:01:58', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('54dd7e1374474d14bb31c6dd24597494', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:25:23', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('54eb7494767e42c4a380080b49ef8fd1', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:43:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('54fb27e04b2347d6b56477e7492605b5', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:21:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('551b42261e13487d87c0edc8e35c75f5', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:26:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('552aa5a09b5144878d4820eb438fa0ba', '/course/delete', '192.168.43.152', null, 'POST', '2019-12-12 13:38:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('552abaae27dd4e04a3eccdafb9617581', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-15 15:09:32', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('552afe357ad84109bf1e48f49297252d', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 15:09:20', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('55495fcce5ea49b3a0e5c1f1474d10f3', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:07:23', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('554eac978f834379a4a25cd1763c20ca', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:24:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('55ad2a2d253246e385ce937d4e6eb748', '/clazz/list', '192.168.43.152', null, 'GET', '2020-02-18 12:49:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('55c8d3bfe46043ec88070bcd2400e4c1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 10:35:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('55e37b94f47c42508d475eaebb0c3057', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:26:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('55f093fc034a49ac9c9f437177892dd4', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:52:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('561a7aa32bc1497c88a45442be8056fb', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:03:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5647482ab2c54bfe8eed3b80a296ff38', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:03:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5669964d3ef04d3fba243e03130823e3', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-17 14:09:37', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('56b1ceabfbdd4573a1f41d6d5ff67c07', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:13:50', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('56e1671eaa1b46e884954ee04786c777', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:30:06', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('572a879b0831414c9aeb547ce42bc9f3', '/user/add', '192.168.43.152', null, 'POST', '2019-11-19 15:41:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('57965b2dc34d4982bf1a4d7ff0c985c8', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 14:59:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('57aa6676a586476dae0ebf682f91c7e6', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 11:17:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('57afe280117c4a13992d5c8311930391', '/course/list', '192.168.43.152', null, 'GET', '2019-11-26 15:10:39', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('57bfcd027eeb4c168b23505f1a5db803', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 11:07:12', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('57e9ee29fcf74d8b9df15f7d031beeb6', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:43:31', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('57ebd051bb1c42ea9fedef0abf5a669a', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:52:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('57ffcd1ab9184d8ca14c56e9be2b9c39', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:23:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('580386b675b14d8599ad4ba95f65756f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:22:59', null, '1');
INSERT INTO `t_operate_record` VALUES ('5853ccc08097430b830f89d479bf1ed0', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 05:37:25', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('585cdc817ee4487e820127a8c573f6f6', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:13:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('585f9a196d8c4254b01ce614931ae99e', '/course/list', '192.168.43.152', null, 'GET', '2019-11-26 13:02:30', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('58993061d94a40d483b471e9443a055f', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 15:16:22', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('58c198f77249430d818a5677b8e20209', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:13:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('58ce31215e25499f85f1f2c62793fbe5', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:09:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('58f9de76671f4326bacb21c7008ee190', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:26:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('58fad4aa98604123ac1a066deacdb71d', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 05:45:11', null, '1');
INSERT INTO `t_operate_record` VALUES ('592613808c904f0f81db7b3d2f9ad469', '/user/login', '192.168.43.152', null, 'GET', '2020-02-16 14:20:37', null, '0');
INSERT INTO `t_operate_record` VALUES ('5927d71e421c40cf9f95a436b80025de', '/clazz/delete', '192.168.43.152', null, 'POST', '2019-12-12 12:43:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('59490d761c9144f8a19fc1e93373fc47', '/user/login', '192.168.43.152', null, 'POST', '2020-02-15 09:34:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('59686eab887541d1b6b32df8edc832a9', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 11:46:29', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('597ce47ebfd24c8585e1a7b702580b4b', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:06:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5981b887dcd3455ba349ba008cbc20ff', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:26:41', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('598518da6c81449e998349861e053d99', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 14:56:14', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('59a288a98a934ea7b35eb80d0ba1a34a', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 14:54:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('59a7d764bc934d82a115059d5f2062be', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 06:12:29', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('59c33c503eee484f8b5c49db4225fe11', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2020-02-18 14:20:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('59f9b19eaf2246f19251bfd59f41ca90', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:36:25', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('5a7db5405fba485babdf0d98b3bfa505', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2020-02-19 05:00:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5a846f77c1c14a518cba808676bca6f8', '/user/login', '0:0:0:0:0:0:0:1', null, 'GET', '2020-02-15 09:28:21', null, '0');
INSERT INTO `t_operate_record` VALUES ('5aa1ac1204774d5d9b86f5fd78cdfcd2', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 12:25:35', null, '1');
INSERT INTO `t_operate_record` VALUES ('5abcd66153c64ad094e0d01841db01e1', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 09:28:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5ac09580b62c4d2d92d86b1e5c89adb6', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:00:47', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('5ae629444e42401fbd862f8f0f98ef19', '/user/list', '192.168.43.152', null, 'GET', '2019-12-14 08:32:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5b476e34b1974ceaa6dc460a362aee62', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 06:01:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5b4ab829f0c54f149ad8169abe0c8ffc', '/paper/add', '192.168.43.152', null, 'POST', '2020-02-19 03:54:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5b70c0fce10a4753938404d4df1157ca', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 03:34:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5b949873f0284e83920022ad70946a73', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 05:57:08', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5b992328bd5d445e817af9011fb7d31a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 15:38:47', null, '1');
INSERT INTO `t_operate_record` VALUES ('5c00c38c50c147a39dcce1d1ac3847f6', '/dict/add', '192.168.43.152', null, 'POST', '2019-11-23 13:07:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5c7090494a294d5fad4534efe7085c16', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 13:54:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5c89eb6a978f4702a7947340f8a6c3b5', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:02:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5c93b60b3a0f4899963bfc879c440393', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 05:47:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5c95691127ae4008ad2a05e6afb2321a', '/user/login', '192.168.43.152', null, 'GET', '2020-02-18 06:20:47', null, '0');
INSERT INTO `t_operate_record` VALUES ('5c9652e53b464b26964250f11d5f886f', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:08:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5c99acd6bd9e44fb8551a12932685d0c', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:51:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5cc205bca5674dd6b95e477a15510d6c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 02:54:29', null, '1');
INSERT INTO `t_operate_record` VALUES ('5ccd240fcdb74c989aeeb4d102c664e8', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:48:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5cdd271b3c8648d0b2e60a40e3c483a9', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 14:37:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5cfe8774d0c64f5b8037c77e97b938fc', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:59:03', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5d2c6846c13842d29a06da211be187c0', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2019-12-11 13:46:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5d5a0cdc7a374851b6e50040cd52dd31', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 10:35:39', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5d5c45e56f394b1681775baf97f77d3c', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 11:55:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5d64eeb4ac3941869b4ed91b365dc8b5', '/user/login', '0:0:0:0:0:0:0:1', null, 'GET', '2020-02-15 09:32:16', null, '0');
INSERT INTO `t_operate_record` VALUES ('5d7836ba7acd4dc2964d37a08148230d', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 11:04:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5d8e5f05f34b47c59bc4222da107a718', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@52d9d75, org.apache.shiro.web.servlet.ShiroHttpServletRequest@1c7f8dec]', 'POST', '2019-11-18 13:46:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5e082ee140b54fd8b8c1996e73d01a62', '/course/delete', '192.168.43.152', null, 'POST', '2019-12-12 13:35:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5e08b7bbe4a04a65a874e603bbeeb669', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 05:57:01', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5e46e3b1fc8d4a12af67320ca743f9dd', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 14:36:03', null, '1');
INSERT INTO `t_operate_record` VALUES ('5e6250239a8a4ea0b50c2ed94e76eed3', '/user/status', '192.168.43.1', null, 'POST', '2019-11-28 14:40:34', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('5e6d068629dd426faec40b55ff2dd119', '/user/update', '192.168.43.152', null, 'POST', '2019-11-23 14:17:22', '74013ffb091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5e6fafc0acf54a549635b93a8256af39', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:24:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5e71bae0ade04730b50cdb23849edd3d', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:14:43', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5e7f3762eaf240fdafd0ba677c1e6b8b', '/user/list', '192.168.43.152', null, 'GET', '2020-02-15 04:08:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5ea108d66794412e95bc1aee1bfaebaa', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 15:16:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5ea1a4815fde48f7887a7b7041e86ce1', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 10:05:07', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5eb20df77cc3440db5ab69f0aed653f7', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-22 12:25:38', null, '1');
INSERT INTO `t_operate_record` VALUES ('5ec4111a578e41d19955ab5531015d39', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 15:13:41', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5ec66b6c73f447d0a0eace5237c04c7a', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 12:07:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5ecf07493e6c4f69b39de26c9dee9c10', '/teacher/list', '192.168.43.152', null, 'GET', '2019-11-24 15:18:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5ef3d22721344c909f8e8e7897d92df9', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:22:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5f12e193ad1b4fd090c0e4b583604c77', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 14:55:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5f2c00f598664c1ea2fd2acba935c677', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 13:43:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5f7a22671efe48cdbafec8fe6be9e1aa', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:25:23', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5f83ae613dc84e57b4c43dd52feced18', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:28:42', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5f8dd0e04bbb46a2b7b836add181f607', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 01:34:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('5f95bbb2b036497d949f80002e830d8a', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:05:09', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5fbb40bef4ef49468e868ee2fbae51c3', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 14:41:22', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5fd9de77ed2a476db1aa5c2bb8498794', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 12:36:29', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('5ffa780d7f7f46729719b3bc50db5d79', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:51:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('601512d874c8464aa2fbb4e71db31b31', '/sys/findUserReqTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:59:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6020fbad52344e88b80d0de2910ceee0', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 03:47:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('602d38ea14a74a44b16c4bba9c37956b', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 03:52:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6031d5c33eca4ea89b102742fb9d2a59', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 09:22:09', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('603a61bb8db947478bd0d30d562caee7', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 15:34:46', null, '1');
INSERT INTO `t_operate_record` VALUES ('60405acaaa1a41cb8801043b4113bb02', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 09:37:52', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6050803b8db742ad988aef6b9bfd095a', '/perms/list', '192.168.43.152', null, 'GET', '2020-02-15 04:14:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('60652f1b65e045638e238d391ea92b37', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:06:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('607a5c6f583b442cb5c4e1340d5501e3', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 10:18:50', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('60927348f71f44dea4b984a8318982ef', '/user/list', '192.168.43.152', null, 'GET', '2019-11-28 14:51:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('60cd9829414c4135849bf4f2da0a5f5d', '/user/login', '192.168.43.152', null, 'POST', '2020-02-15 09:28:03', null, '1');
INSERT INTO `t_operate_record` VALUES ('60f8302e24ae4119b7837db529ded741', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:20:01', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('60fd2d9d455b4766b6b553b4bc6c8c7f', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 05:57:08', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('60fe90a294c74afb9a022afb8585b4c9', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:46:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('613cc09a52ed4604a902715118827fe7', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 05:05:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('61ac1a49cfa84dc097f88a43c981fd2d', '/user/login', '192.168.43.152', null, 'POST', '2019-12-11 13:44:50', null, '1');
INSERT INTO `t_operate_record` VALUES ('61c861b6ded54d2ba3b7cea1ab620d5d', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 06:15:14', null, '1');
INSERT INTO `t_operate_record` VALUES ('61dc59e6cce247aab3386cfc6699698f', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 04:14:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('61f0163a010d4ad3be07d9cb938029f2', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:33:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('62000812091746e9aeafea1b6d6cb9c0', '/user/list', '192.168.43.152', null, 'GET', '2019-12-01 08:41:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('621e8877d3bb42bd88745ff1ff952682', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 09:28:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6282517c7e3b4521b6fd5de5cf84104b', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 06:12:26', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('62a1bd798d94416cae28996ef8144bdc', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:10:39', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('62ac43d58bc845549a529dd695ee1e27', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 13:55:59', null, '1');
INSERT INTO `t_operate_record` VALUES ('62c6c4df99b54cb6b2264e7cede5b281', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:37:22', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('62cf2792857d4c6d9dd1aa1f6bde8fd7', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:53:47', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('62e9f78ef5df465b92d71506d6fa66b0', '/user/login', '192.168.43.152', null, 'POST', '2019-11-28 14:51:00', null, '1');
INSERT INTO `t_operate_record` VALUES ('62faa5f7d254420a98ab47ea1e1d9c5e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 14:49:03', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('63098ca95e294015adf265609cdea149', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-28 15:08:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('631b8c6334344488b15afee11ce42012', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:22:15', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('631d6fa6b0c845b9909ba948c7372634', '/student/list', '192.168.43.152', null, 'GET', '2020-02-15 09:32:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('634e5d2381404cd49ca5aaf931d3ced3', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:06:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('636041dc628e43178f5a84ca2fd6746c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:25:06', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('636bd07fb0fd46b792ded2a34fd37186', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 01:35:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('63771e08069e46c9b1e0d509c7aad786', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:22:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('63b872e1def34020a8b0723142d2e1f5', '/sys/findUserReqTotal', '192.168.43.152', null, 'GET', '2020-02-15 04:14:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('63bb69c93ef54a6183aae27d3318cb47', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2020-02-15 04:10:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('63d7eabdc768481ab804749ce7a73d80', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 14:47:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('63d88e197a574a74b1cd65a9a3953eb9', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 15:06:34', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('63f15a9730a244338a80bf22e732cdad', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:47:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('63f5cac952aa47e599a51e1eb0c6da07', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 05:38:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('641656419a804d349a98d07e2924320d', '/student/list', '192.168.43.152', null, 'GET', '2019-12-12 13:39:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('642bdca7f99e4be5b8849b73a4fcbd5a', '/user/login', '192.168.43.152', null, 'POST', '2019-12-14 08:30:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('643f01d13bb842598601b33b461ae1d0', '/user/list', '192.168.43.152', null, 'GET', '2019-12-11 13:49:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('64461fa9375b4928a7ee81163b9d435b', '/course/list', '192.168.43.152', null, 'GET', '2019-12-12 13:38:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('647e175decb149e6b7fff45d8c0145bc', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:47:08', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('647f12abc00a449f90c59e99b543fa86', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 15:13:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('648c1f02b8cc4ac3bc4371bab1a632cd', '/institute/list', '192.168.43.152', null, 'GET', '2020-02-18 12:29:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('649e15869dc6408ab44ec9d252867bfd', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 11:50:21', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('64a3b9aff8d548d29c60eb52768ccea3', '/course/center', '192.168.1.102', null, 'GET', '2019-12-13 14:56:00', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('64b349f3ceb6421abf45ef6b000b1e0c', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:04:21', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('64ce8b4dc4a4451bac1a45cc28ff7a7f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 04:08:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('64d8e736055841969fc988a26fd2df55', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@62ca9c3, org.apache.shiro.web.servlet.ShiroHttpServletRequest@46e319ef]', 'POST', '2019-11-18 15:01:19', null, '1');
INSERT INTO `t_operate_record` VALUES ('64fece8acbcc4e3b9817863ff17231f7', '/clazz/list', '192.168.43.152', null, 'GET', '2020-02-15 04:13:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('65226b25900c417f83764c503a9977c3', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:06:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6538d27235a842c7ace593bdac4d9f7e', '/user/login', '192.168.1.102', null, 'POST', '2019-12-14 13:38:06', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('6547d4dde4d14d499d36ad49b09e6e70', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 08:47:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6568f8f9f791411caa64f8f7f685a5bf', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:49:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6572093fee4944e7aea2d1b1fcad3fa2', '/user/status', '192.168.43.152', null, 'POST', '2019-11-23 03:25:06', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('657c3550d9c44b4493df22bf5d576718', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:15:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6591fd78c0c04e23915f5f0da4bb26a6', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:39:40', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6594ec751a5a4041852520cfb9584adc', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:14:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('65a0f97bc9fd422fa3d31dd431ddec96', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:29:25', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('65b7b7a8d1774fbabc9be3ff63d71b21', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:43:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('65e6776b91194495aebcffdb115d525d', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:49:25', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('660db650b0894f498c191c4436909378', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 05:49:10', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('663276b2257a4c089ddcc9fbbe13efa8', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 12:18:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6644ff3415024c0384b8f534a1d6a526', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-17 15:14:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('66469360fc4145f1b4fe0d48c0acf692', '/user/list', '192.168.43.152', null, 'GET', '2020-02-19 05:05:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('668caba27e934b86a7c4a901859407af', '/user/login', '192.168.43.152', null, 'GET', '2020-02-18 06:20:46', null, '0');
INSERT INTO `t_operate_record` VALUES ('6692fec28fab423bbf47377e9f47531d', '/user/login', '192.168.43.152', null, 'POST', '2019-12-14 08:31:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('66b1e337c0bd469c8768d86c6c6a117c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:03:55', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('67095715199547b4a93d5b9bbf15cc51', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:20:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('671e7033b24247f09822f89e706b5da1', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 03:48:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6748e6a0c7ca4652b94afb6f0550c2ca', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:37:28', null, '1');
INSERT INTO `t_operate_record` VALUES ('6768ea68daad4ab4ac9725a04db22abd', '/user/login', '192.168.1.102', null, 'POST', '2019-12-13 13:09:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('676c13dd5f9643cd9c3d2507a8304c1f', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-21 12:56:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6770f9d4fe824619b3a4a064fee4a486', '/clazz/list', '192.168.43.152', null, 'GET', '2019-11-24 06:49:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('679dfe1745134d69a571d9c8dd0ba69a', '/sys/findUserReqTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:49:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('67a54158eb9e49fba89ead8f6f22b2eb', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 12:35:28', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('67a92182e83e4dfeb2597ee7d444fce7', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 06:50:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('67b31f5644e244359f1f8bc7991d5891', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 05:42:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('67bce262a0024011acd6ce60f47ecde9', '/user/list', '192.168.43.152', null, 'GET', '2019-12-11 14:16:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('68718761ba6a497d93c0fa72c90d9046', '/user/login', '192.168.43.152', null, 'GET', '2020-02-16 14:18:12', null, '0');
INSERT INTO `t_operate_record` VALUES ('688ba7ac33b64673bb555acc1fb1de44', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:21:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('68b6f9052cfe4f02b1b7883374fee8b3', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 14:53:26', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('68b8c2ea3c624f52af3d3e28e559ab66', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:53:25', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('68c9b601c3f244b99f62c5c8f7da1e64', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:35:57', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('68efb2c9ec5a462f949e4617f4f7388f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 14:21:06', null, '1');
INSERT INTO `t_operate_record` VALUES ('68f165b61e0c495fbe0af6303c2b69b4', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:53:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('69456e7ad6014ab693340a51338c1944', '/teacher/list', '192.168.43.152', null, 'GET', '2019-11-25 14:58:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6985459f22684343952f0ae95d02b828', '/user/login', '192.168.43.152', null, 'POST', '2019-12-01 08:43:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('69b99b57a44b42f39b4972db54619ccb', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-12-12 13:31:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('69c0839ebf284431a11ee872da37e15a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 13:01:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('69c2144c8045400cafa164895a0c7978', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 11:07:12', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('69d50a3930c14c6e93e99108f78cb313', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:33:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('69e4e224456f45fdb5a266b73d2eb95e', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:19:04', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('69e549543ae14031991086bf2d6115d5', '/course/center', '192.168.1.102', null, 'GET', '2019-12-13 14:43:25', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('69febdbc6b5f406fb5406c1ca6cec522', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 06:03:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6a44d8bb650742429834b84a12d22cfc', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 12:17:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6a6e2983e3e247b3aafeff858c13159f', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:44:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6a71c9c2a2db4e13b228006dcb24f8fa', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 08:18:52', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6a9ea43593e041d1a2c6099a5e1083f1', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 14:42:34', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('6aeddf4c67fc40c3868b7636d151e824', '/clazz/add', '192.168.43.152', null, 'POST', '2019-12-12 12:40:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6af8778772b54c579b5615ea728c3403', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:33:15', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('6b19ba5a21a84338abd5a10640d1fc86', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:33:28', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6b24f7b828a641ea88d1d52a998935d7', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-17 15:14:22', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6b6df9d9e970441397cecfb00885022d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 14:56:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6baccd034a994de0929e3932b3844941', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 05:32:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6bbdb800b77c4aa0acaab755e5723bf6', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6bc6c54cdf834cf8a1dd481f2d29b1ef', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:50:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6bf7434a20eb43a48a3c130817b100cc', '/user/login', '192.168.43.152', null, 'POST', '2019-12-12 13:43:50', null, '1');
INSERT INTO `t_operate_record` VALUES ('6bfb145db4814994a601b7e3fcbcbf77', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 11:00:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6c10324f3cc0467292e2d7979e99f502', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:01:33', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6c4684fbbe5b4b169ca30936f149340e', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-12-12 12:40:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6c56742095144bf58bdac64b00a9e2be', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 11:03:52', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6c62ca6c0b9f4d6a9eabcafc5d008f19', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:25:25', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6c8d772cfcb941908b578e93f549cfd8', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:13:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6c9dafd6adfb456c8674e9db24bad6c8', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-12-12 13:34:43', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6ca7369f70a04ccba34734633d2a6192', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:25:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6cb451c7c1ed4c83b0cec068ba9f1073', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 08:24:58', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6ced0da707d7408989fd9589d666bfc3', '/course/list', '192.168.43.152', null, 'GET', '2019-12-11 14:10:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6ced37b094494e61a38c9b1cd4c506a4', '/LoginApi/v1/login', '192.168.43.152', null, 'GET', '2019-11-19 13:54:45', null, '0');
INSERT INTO `t_operate_record` VALUES ('6cfda5cc25674743a4ae4231805b7124', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-22 14:27:06', null, '1');
INSERT INTO `t_operate_record` VALUES ('6d1507e4016f46e89b0b9955c393ea35', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 14:37:14', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6d4eacd1dd2c4aad97a2c3a17774d932', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 14:22:20', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('6d4fe011b6854206a959d3851bb7873b', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 13:59:00', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('6d7f746ccc0f457c8e20593e5c9e385f', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 14:15:56', null, '1');
INSERT INTO `t_operate_record` VALUES ('6d85314b9e184a509ba2f47f93e581cb', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2020-02-18 14:20:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6d8c7376032a44859a30489fb5c1abd3', '/major/list', '192.168.43.152', null, 'GET', '2020-02-18 14:26:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6dc62072167c4e9083356f4ee8b5a8b4', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:26:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6ddec60a368f46219689b3cb245560ea', '/role/findAllRoles', '192.168.43.152', '[RolePerms(id=null, roleId=null, permsId=null), org.springframework.validation.BeanPropertyBindingResult: 0 errors]', 'GET', '2019-11-19 15:29:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6df5cea0904e48be87b03af941f9dc92', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:14:15', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('6dfb3d61a32c4dbe9786ebd65c4e69fa', '/user/login', '192.168.43.152', null, 'POST', '2019-11-19 15:38:57', null, '1');
INSERT INTO `t_operate_record` VALUES ('6e369d609d3e40c4929c421354ea96e1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 12:56:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6e389deddada4fd5aadab76028bdecab', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 15:36:35', null, '1');
INSERT INTO `t_operate_record` VALUES ('6e393a9fb9ed45daa9c27eae9fac5b09', '/user/login', '192.168.43.152', null, 'GET', '2020-02-16 08:39:33', null, '0');
INSERT INTO `t_operate_record` VALUES ('6e4644dacf384e0386ce72e77d8ab4c5', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 09:14:25', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6e59308d41224f078cb83b09f68d4856', '/course/list', '192.168.43.152', null, 'GET', '2019-12-12 13:35:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6e706eebf2fe48869b934a3d942429ce', '/major/list', '192.168.43.152', null, 'GET', '2020-02-18 14:26:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6e75e6e170d24fb59c4ff6619eb86d7b', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:40:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6e982bcb67204626ae0cc928a425cc83', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 12:53:12', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6e9b13cd09034588aeaf60f3cd771f24', '/user/update', '192.168.43.152', null, 'POST', '2019-11-21 15:39:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6eb6ab150be74ad293cec304b3c1cdd4', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-19 05:06:03', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6f0d06ec1c3b435d98b05638e5106315', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 14:59:51', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('6f169d6b131c41adb4d59dc139bb2402', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:24:42', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6f39365797954d29a000ed0c932dbf69', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 02:03:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6f7826b220114f48bb47cdc1e0c8f7b1', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:33:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('6f80fa1ea8d040218150e81d9dd5964f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:18:36', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('6fa1f73910c5479c9c4419cf327fae72', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 15:17:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('6ff478cf48e24d5b99d11cbee0bed7d2', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:35:55', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7035f36219d94090816ff745a4258e0d', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:46:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7055008d3ced424b98abb2397f833c0e', '/user/status', '192.168.43.152', null, 'POST', '2019-11-23 14:20:07', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('706c8bae7efa4fdabfd45494a02c2952', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:08:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('708db725d5d8434db4f8a417354f70fa', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:29:50', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('70906379c19944778bb579356b1970bf', '/user/login', '192.168.43.152', null, 'POST', '2019-12-01 08:41:55', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('70a1c789921a497e9f46d0cad51a72cf', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 03:47:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7108a6af7e5c4db88dc987af7b03bf85', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2019-11-23 15:00:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7115429595d8451fa77221aa096f0a97', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 04:53:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7115e570d080498ab1dc6d7bbe6d2208', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 15:22:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('713a7180bb5b48ffa543794ee054d917', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 09:29:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('713d6b0387cb473babdfc8cfd0417a4b', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:14:34', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('713da0327c314937836b8681e23d5a26', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:27:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7168429dbc8a4d80a5f309c09b40943a', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 10:37:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('72302f9b371542a788afe6b0b5e62bdc', '/paper/add', '192.168.43.152', null, 'POST', '2020-02-19 03:52:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7233261163b342469173233da9768e40', '/course/list', '192.168.43.152', null, 'GET', '2019-12-12 13:30:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7239fbac2b8d4cc4a4427af798964988', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:38:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('723a2955695e4888954e2512352596e6', '/user/add', '192.168.43.152', null, 'POST', '2019-11-21 12:56:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('723dc43a1b914b21b1fbc9c6f4160a18', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 09:38:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('72487730f739403b82c2fca566ab05ee', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2020-02-18 14:10:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7248862b6bc44a86a9db25b4662de785', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 14:23:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('725d6d9b62ec4e1b96cf122a210bcee0', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 12:12:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('728961c8b9d0402491682b61d3849e33', '/dict/add', '192.168.43.152', null, 'POST', '2019-11-23 13:13:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('728991b3a86c4b4580b9c49fb8bf0c5a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 13:40:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('729510aaa4da46a79096a0009250db11', '/user/login', '192.168.43.152', null, 'POST', '2019-11-28 12:56:30', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('72b7fab8db7742039523be2ecce6fbc2', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 01:45:12', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('72c14074fa47488aabd4e92132a84c39', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 14:52:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('72d269167fbf4f66a550c14d99f62fa9', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:51:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('72f6132d64164f438310e3dfb3ad1585', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:41:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('72fc378bb9844d18b04bbc9f2d5fa1ff', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 05:17:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7306a2a7c59647a1827fe25c351b297d', '/user/list', '192.168.1.102', null, 'GET', '2019-12-14 13:37:15', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('732b338d0be54f02a0d4f4a26e4b8e2e', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 02:07:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('73338d118be7413384e2eea2114269f3', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:19:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('733af5d3f5ed45b5ae7d1a5d7ae45c59', '/user/login', '192.168.43.152', null, 'POST', '2019-11-27 13:01:21', null, '1');
INSERT INTO `t_operate_record` VALUES ('73447bd632d348e7a35b1533dbfb5fc5', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 14:56:59', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('734d8453668b44d2be1d22ceee7df992', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:16:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('735e1489ab544c6aa2444dd0c84b2e2a', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:31:47', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('73701dfa56d24a0b98613ca601495d3e', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 12:01:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7375ea3b276c49978c7a599730175519', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 11:12:49', null, '1');
INSERT INTO `t_operate_record` VALUES ('73790acd65e14332937c6a1f4efa9699', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:06:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7384453fcf61444d970edc44c3de4400', '/user/add', '192.168.43.152', null, 'POST', '2020-02-15 04:12:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('739fdd1de41a4ef3abaa16ce8d7e7860', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:16:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('73d1e76e28924487a9f65f059f936520', '/user/login', '192.168.43.152', null, 'POST', '2020-02-15 14:53:15', null, '1');
INSERT INTO `t_operate_record` VALUES ('73edef6029f044b591ffc47b17a9e644', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:52:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('74428b0809674ff9a3aa73cbd42a9d3b', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:23:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7449bee61e3d4d56a3604c8ca4446aa0', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2020-02-18 14:24:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('744df8f9f8204fffa2eb49cbba9fa311', '/user/login', '192.168.43.152', null, 'POST', '2019-12-12 13:34:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7458b9b4c56b462caa7fbd130b4ebaf3', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:59:58', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('746cee3471c54e77b329e30e04219a68', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 13:11:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7485120aa3d84bf993f7fd85c4977097', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 13:54:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('749c93c23f644dc682afa32bfdc0cbab', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:22:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('74a16100d5644ed4a9e30c14f12f7bd9', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 12:21:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('74c15467d0574bc78fbfee272ede5bbc', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 05:08:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('74c7979ed5ba46a8b50c72b4876fe55a', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:11:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('74cc117bd6554e188b4faeeb12e2f8a7', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 09:29:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('74e1c5a2d15e45c89873d429df0fa7a3', '/major/delete', '192.168.43.152', null, 'POST', '2019-12-12 13:44:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('752bbd939acc4c0193b4a594121f6361', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:47:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('753dd849c51044cf9851c282cb36ad92', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:23:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('75444f6ba2054943b358215295198a63', '/user/login', '192.168.43.152', null, 'GET', '2020-02-16 06:31:15', null, '0');
INSERT INTO `t_operate_record` VALUES ('757bd23b2ae34cc091a8ebe2f7838c2a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:17:35', '74013ffb091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7594c0c0d79d4538948aac51962c1056', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 12:32:21', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('75a11c02c9cb4d158ac4b7fb77fd856a', '/user/login', '192.168.43.152', null, 'POST', '2019-12-14 08:28:40', null, '1');
INSERT INTO `t_operate_record` VALUES ('75daaad4684c4f3bb6a47cf499ebf044', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 09:19:09', null, '1');
INSERT INTO `t_operate_record` VALUES ('75ded0ed9c5141c6ad45e88016e40784', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 13:40:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('75eced2c463f42f2b75933bc64716ad3', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 15:19:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('75f93b93418b49898fc34a18e3096c37', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:48:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('75fa940395fd426a8b8c15e2797c93af', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:43:19', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('760e1a8356b84a92bcd4ab7e01ff21f8', '/user/list', '192.168.43.152', null, 'GET', '2020-02-19 03:32:31', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7620b2ef19a34c8db421ffc57b1b8d09', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=s, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:22:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('762444e95be94ff09ec7c9583610a01b', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 12:33:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7697f487503544639a802e9adcf4bf09', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 06:02:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('76a2d6be539c41af9203fa2d6b412fe6', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 06:50:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('76d5d39bdcb44b75b29d537f3024cced', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:14:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('76d7d4b7f90f49628ca4f707e461f6bc', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:40:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('774e9f3abe0a42a9aec155b8754bbfbe', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:54:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('77578660b24c49f69feceabae7abeaa2', '/user/login', '0:0:0:0:0:0:0:1', null, 'GET', '2020-02-15 09:30:22', null, '0');
INSERT INTO `t_operate_record` VALUES ('776c77dd8e1846c390bb86acd1334459', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:00:09', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('777bfe1aebcd4bb696f1f02304a36ced', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:43:17', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('778ffe0764634c8cb33accb802ca82ac', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:41:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7795fef498a746078f29b150878251d7', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:11:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7798a7e1e84c48e8b7999856e9134ad1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 13:56:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('77b4be753667407b871d097f546f2d1d', '/user/login', '192.168.43.152', null, 'POST', '2019-12-12 12:57:08', null, '1');
INSERT INTO `t_operate_record` VALUES ('77e9fbb6f39d4e74b181d513fcab79dc', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2020-02-15 04:13:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('780c957c695f43769d4eff011856d773', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:08:53', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('7816d73ddfb54855b4bf6cb33164b97a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 06:02:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7865591b4ad14c408f8968b22cbafce1', '/user/list', '192.168.43.152', null, 'GET', '2019-12-12 13:34:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('78860ac3ea9a42589edf5f102605626a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:19:20', '7bc5259b091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('788e3dad062b46e2b60308ff12c44591', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-26 12:53:18', '6289fb4f0f9311ea99ba5c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('78e60f56870b4c888cd6aa13610413d7', '/user/login', '192.168.1.102', null, 'POST', '2019-12-13 12:58:17', null, '1');
INSERT INTO `t_operate_record` VALUES ('78ef1b73483841eb875fd935d11dd385', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:12:01', '3e5dfa87593e4a44b8212eb3866aefdb', '1');
INSERT INTO `t_operate_record` VALUES ('78f5c7d7b10445d7860e0e5b23a874bd', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 10:48:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7929ff8b59944d24be2485637ccad634', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 15:16:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('792d4978d1244effa6ea8d7895c3b9fc', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 08:34:15', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('792e03d9915943a39b9d0422d833bfba', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:30:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7939941498284366a1420b050507045a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 14:12:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('796d0dbbfabb46ed86f576eed08839e4', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-12-12 12:42:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('79860fdf05b64f328a9f7af9f5196c88', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 09:38:24', null, '1');
INSERT INTO `t_operate_record` VALUES ('79c3bda556344da1ba33fdfc0f4cf71f', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 14:52:41', null, '1');
INSERT INTO `t_operate_record` VALUES ('79c512d77d0e40c89c6e3359387405b6', '/user/login', '192.168.43.152', null, 'POST', '2019-12-11 13:54:48', null, '1');
INSERT INTO `t_operate_record` VALUES ('79cab0d33ae34172b74eaccd195ef0eb', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:22:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('79dc3a6d14714e109445fdef07a467eb', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 15:10:13', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('7a019c695dc14e4ba3dbb8b777de7ed2', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 15:16:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7a0715e56ba543cba4e12a7a0261395d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 14:12:03', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('7a4271c0a9084e4c9ff9b76bf8343bcb', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:06:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7a4d2be52ca14ecb8cdf8a1eb416962a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:24:22', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('7a5db1f264af4e31897d82fa594ebc57', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 10:59:41', null, '1');
INSERT INTO `t_operate_record` VALUES ('7a8c4fdee4444da99177b4b4c399aa0e', '/course/delete', '192.168.43.152', null, 'POST', '2019-12-12 13:35:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7ab2f93103a140559aeff95c286c75c4', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:58:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7acc318d24da4e15a1c03f3ebf38f6fe', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 09:39:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7b0d98c7ea5947b19a6cb42cb9f3eaff', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 08:40:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7b22e49ba25f4bacbde268ef048e4d85', '/user/login', '192.168.43.152', null, 'POST', '2020-02-15 09:33:53', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('7ba19c725f5d4ed98048f59b3bcc29e0', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 05:22:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7ba2ad132d0a4e6c99ae7bc397e99f94', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:47:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7bb146df7088498bb8563fd97ef0f638', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 15:16:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7bb2b04248984f21b734035d8d84ca37', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-17 15:27:37', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7bbce005f43e4ef2ab6f9bf941b8d497', '/user/list', '192.168.43.152', null, 'GET', '2019-12-14 08:32:30', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7bc6489b93f94357bd8a233312b0a98d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 14:31:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7bd3f04dd94d4cfabd6a61d0841aa30e', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 03:07:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7bd4e1c43f0847cab8a2fe147bc15068', '/user/list', '192.168.43.152', null, 'GET', '2020-02-15 14:57:15', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7c439d0f03eb48adb9b3de8928c5ea44', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 14:05:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7c54ea0f598e46c1be7fd1d2e47997ed', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:33:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7c64a792a923411cb1b9b82af6cd8cc8', '/user/login', '192.168.43.152', null, 'POST', '2019-11-25 13:33:38', null, '1');
INSERT INTO `t_operate_record` VALUES ('7c992c7ba6204ce7b49d1e3520ecc19e', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 08:42:37', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7ca4cdedc630474c8b382db58d5c7510', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:02:53', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('7ca8ddb02545416ab0820e55b2f9ca82', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:31:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7cbaf1a2ed564baaa387d0682a8a1d90', '/institute/list', '192.168.43.152', null, 'GET', '2019-12-12 13:44:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7cc3b37d11364af0a7d8c3a488690de9', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 15:15:39', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('7cf7e7bdca5f4c90aa04de9e2d524e2a', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:29:18', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7d03f2d3d30e4f11978ac14e58b4189e', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 09:28:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7d1c1d3310db4975bcb5c3b58bee7656', '/clazz/delete', '192.168.43.152', null, 'POST', '2020-02-19 04:53:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7d1ee35a98714241a5d600594595d287', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-15 14:57:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7d3a851818544821b85e8b28162f077d', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:36:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7d4d5405486549a8a4568e322f10512d', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 04:21:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7d57c6ed4f814fed8a908a7dc61072a4', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:30:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7d5b7edaf2df4c699a864986a8290fb2', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:35:14', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7d5b85a2f5ff48d6abff013d6c7ce1ac', '/exam/add', '192.168.43.152', null, 'POST', '2020-02-19 03:54:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7d6be68f67be4d0d98396c38fa3782f3', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 12:01:08', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7d905df50e6d4e8d8748fab1ba4718de', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 09:30:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7dd6a910bce04b1493b124b1dfe29ad7', '/user/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@43039c2a, org.apache.shiro.web.servlet.ShiroHttpServletRequest@94c2aaf]', 'POST', '2019-11-19 14:53:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7e03481d137c46eeaa7b606e26abab2c', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 05:31:57', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7e04d696635946c6aa85d6e671e6558f', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 14:41:15', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7e2b2f4aa5664ae4b031ce6a759d4ffe', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 06:31:29', null, '1');
INSERT INTO `t_operate_record` VALUES ('7e4bd0b6a34742cda31b2cb454562833', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:49:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7e6bcc78b75749ce8685da8736a7589a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 14:11:28', null, '1');
INSERT INTO `t_operate_record` VALUES ('7e6dcb1d96d24374b4c318f2f789bc5a', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:39:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7e7f670df9554e2c981c18368a2d88af', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 15:23:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7e92a4de2a664af68885b60b1702db89', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:52:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7ea74d950da24765aedcdd32289b4425', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 11:10:13', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7ea75d6e97db44d1aaa3a99869ed34fd', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:26:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7ead2398cb2845bda2664852a323a0e1', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2020-02-18 14:20:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7f029a49634b48e0bea9062ae1ae3f2d', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=admin, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:22:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7f0b60fff16949bda7e0d4ad7440070c', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-17 15:14:22', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7f1df00769a94e09887f50dc8d9d5055', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:21:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7f3476dc71384c588122a64701494c14', '/user/login', '192.168.43.152', null, 'POST', '2019-11-25 14:57:43', null, '1');
INSERT INTO `t_operate_record` VALUES ('7f49144134f0431ab445de498d53d3cd', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@71bf434c, org.apache.shiro.web.servlet.ShiroHttpServletRequest@376b7cbb]', 'POST', '2019-11-19 12:45:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7f4bcdda8a8947da9e2668f6e88cc79c', '/course/student', '192.168.43.152', null, 'POST', '2019-11-27 13:07:30', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7f60509205c4495e8ff7119320d4684f', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 12:32:01', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7f770253eeed4abb9cfa2c33259c6e9e', '/course/student', '192.168.43.152', null, 'POST', '2019-11-27 13:28:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7f87ecaed392421c811425d96c7f5c1e', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 12:15:52', null, '1');
INSERT INTO `t_operate_record` VALUES ('7f9142279244414aba58fbf409f21629', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:32:00', null, '1');
INSERT INTO `t_operate_record` VALUES ('7fa3defb03224ead94fbf504f8780b93', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2020-02-15 04:13:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7fd2804337724a22a9d5c69ec1efa9ce', '/course/mycourse', '192.168.1.102', null, 'GET', '2019-12-13 14:36:51', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('7fec5209c0a2425f8027404630a88560', '/sys/findUserLoginTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:57:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('7fef25a870bd41829218569bb995a53d', '/user/status', '192.168.43.1', null, 'POST', '2019-11-28 14:40:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('8004bb1e196c44c9ae53bf3e56ae653e', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:06:51', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('80189eaca1064cae955dbfb75588ff7e', '/user/login', '192.168.43.152', null, 'POST', '2019-12-01 08:20:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('802e0fef3c46462db28c0ecc5f1b80cd', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 14:29:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8055c0ddad534bb4881737b56af8149b', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 11:35:32', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8076b50087214b378823322cb814c493', '/user/login', '192.168.43.152', null, 'GET', '2019-11-27 14:02:09', null, '0');
INSERT INTO `t_operate_record` VALUES ('80eba9f0da3d44d9a4dd290d9aba8360', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 13:01:51', '6289fb4f0f9311ea99ba5c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('81391e964a6e4f8b9eb9dfae899bf62f', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2019-11-23 15:06:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('815d01c4e5cb418a9b82837ceb456021', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:17:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('815ecc73ee3c472a9498142a5548fa29', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 08:20:07', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8171b3234d084d63966b9049c6675345', '/user/login', '192.168.43.152', null, 'POST', '2019-12-11 14:09:35', null, '1');
INSERT INTO `t_operate_record` VALUES ('8177ff10bd2943a181f520b9fb78eb3f', '/paper/add', '192.168.43.152', null, 'POST', '2020-02-19 03:28:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('817de6c40c284275ae17974d172c80d7', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:37:49', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('8188d4421cb341cda6fb920f5eea517d', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 14:36:13', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('81e40512f5a94cb9b547010a5c31ba34', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:06:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('81ed52b0510d42b6aa1c494b64e6c781', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:30:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8202a7e84bdf4026b08e38a986466724', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:27:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8229658f141a4d62901403596a3afda5', '/course/student', '192.168.43.152', null, 'POST', '2019-12-14 08:32:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8252412e6fef43a09c65260623311db4', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 13:06:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('826d2a5f16c547c2a120cdfed03420fd', '/teacher/list', '192.168.43.152', null, 'GET', '2019-12-11 14:10:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('827188e8a4e9444d9b9a8c1637361f98', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 13:29:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('82b6591528de46869209ec0338dfb971', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 15:36:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('82d5f86ead734d2999a76b856b0c0bba', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 05:31:23', null, '1');
INSERT INTO `t_operate_record` VALUES ('82e9f4231a844753af2359af0ad04e4f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 05:31:05', null, '1');
INSERT INTO `t_operate_record` VALUES ('82f335ec19fc45e486e45e516711e7f0', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 06:51:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('83000d3928234f249c94fdc71b988067', '/sys/findUserReqTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:57:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('831a54f43f964bb99e9696aa95faa84f', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:54:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('831e438997874659830aa5236151576f', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:43:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('834fab0a4e9b49a2b8cb2c8f9c7ea147', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 12:49:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('835a7444a7784fabb02ab195876c5af6', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:13:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('836fe2e8a6174f90b7acfd2f70d16578', '/user/list', '192.168.43.152', null, 'GET', '2020-02-19 04:56:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('83778b503cd94b00a1e392f195671e3d', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:32:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('83d001cc38f64945bcf1bdbe9609fdef', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 13:10:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('83e7cda04e544488b37478a32a381d79', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:58:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('83ef11ef59fd41778638ec632c639cf7', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 05:22:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('83fcb387eb184241af904ddee63ad946', '/user/login', '192.168.43.152', null, 'POST', '2019-12-11 13:49:31', null, '1');
INSERT INTO `t_operate_record` VALUES ('842e35d5d18a41b4aa4f87f2b26751ff', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 03:07:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8439a9de770e4fdfb67a682aa7db2cc0', '/dict/list', '192.168.43.152', null, 'GET', '2020-02-15 04:14:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('846d0ff08bd84892887dff477acbe0b7', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 12:49:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('849e95797a044922984d3887b7870779', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:19:45', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('84a558d76f70447d865d2eba7accfb7f', '/course/mycourse', '192.168.43.152', null, 'GET', '2020-02-16 10:48:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('84a5635309284acab90a9673f0215c57', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 02:55:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('84b1af8794d8453882615fa0b1189e08', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('84bb3de1326e4c9098b91784a270cc73', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 09:27:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('84e61c2b71a84b13878595ef9939f8ca', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:31:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('84e8b68bdc174bfda5bf8592e7b822ad', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:23:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('85238f1dc38c4767b5d06e32cef82042', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:32:28', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('85283104b7f242c089b7c040fc4e0eab', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:06:33', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('854b60f8173348fd84485c46dd2c74a5', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:52:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('85522cf5acdb41c09e4caa562c1d7e94', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:43:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('855f29a0f2794e3ea849488b556429f3', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:01:41', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('8569de692ca04521b99ba8b1e2e8c52d', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 05:54:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('856ff6ab24674ef7be2c9de4740e90c8', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 15:12:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('85712285cbc445a6909ca30578adb48b', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 05:50:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8573c5e8c29b4d6e8a4440c5940d27bf', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:01:46', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('858961767d77467d84c2879888dcf32a', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:32:04', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('85a3d853d83346b4b88f9632a56a9963', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 08:42:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('85b485857b28418bbe14df8b6b3623c5', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:09:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('85b55821abca4d1d978c91d38c76d521', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:40:25', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('85d4df4ed5514bc4ac08fce36fc6b404', '/role/list', '192.168.43.152', null, 'GET', '2020-02-15 04:14:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('85d9576ae2964fae9179a007fae9a084', '/user/login', '192.168.43.152', null, 'GET', '2020-02-16 14:20:36', null, '0');
INSERT INTO `t_operate_record` VALUES ('85edc0e9de934d4fae1ef514fa37b3d5', '/user/list', '192.168.43.152', null, 'GET', '2019-12-11 13:45:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('85eeef45c1c54bf8a4b2ddb8aaf34077', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 05:23:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('85f487340ac948b48f258123d13d0132', '/user/update', '192.168.43.152', null, 'POST', '2019-11-23 14:19:04', '7bc5259b091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('85ff98fd54fd462cbde7a0f45407e160', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 02:56:57', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('861ff1e124ae4226a9e91d73915f6a88', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:39:30', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8624f0bd7e1b497e97e28d8954723870', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:41:57', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8630c67663334e49b01217aeb26ebd99', '/course/mycourse', '192.168.43.152', null, 'GET', '2020-02-16 08:24:33', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8681593be2ba4f44a35ca19b41bdde66', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 12:54:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8688b158541f4210bba0fc3193cd589c', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:38:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('869ece572229497abfaac0823472c7b5', '/user/add', '192.168.43.152', null, 'POST', '2019-11-21 12:57:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('86ade172b8ba4757bd8b832a0dd28702', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-17 14:09:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('86c125f166134cfb81f26c46fab0daf8', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 15:19:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('86f911f578334ceab01b753b1e9dd36b', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:25:04', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('86f9299487b841d39d592845c973bc55', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:19:31', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('86ffe53f5bc34064887de67138a0608f', '/user/list', '192.168.43.152', null, 'GET', '2019-12-12 12:57:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('870a1156daef450fb5de30fec4812a4c', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 14:36:26', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('87bed08a1f4b4df0bb73e590dfc273e6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:08:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('887f6b76a5a74cea8ed16b0d662e3c08', '/user/login', '192.168.43.152', null, 'GET', '2020-02-18 03:57:09', null, '0');
INSERT INTO `t_operate_record` VALUES ('88c0c3c5aaba4c7aa6863edbc0d3ac6c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 12:48:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('88ec45193fcf4e40b171315a6cbbf13b', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:41:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('88f683bf6dbb424db6bf003bd2216491', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:13:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('89ef8041224f42eb891ef8b76ed8bc24', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-12-14 08:32:49', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('89f41faf38fc459f9f8447d7c6743836', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:59:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8a05bd2a0b6b41148fc56fd2907c8558', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:18:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8a077a77fe05416f869656f00785f043', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 06:25:16', null, '1');
INSERT INTO `t_operate_record` VALUES ('8a4232d7dbe14803b7c5ef4cf1466398', '/role/list', '192.168.43.152', null, 'GET', '2019-11-24 01:34:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8a8dcfacc58f45c789e1c36975ba4047', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:35:20', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8a9943ca00d7431b98027bc0ead38008', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:23:55', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8a9bc51b53f4403caa9f07555c388a50', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:39:30', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8aa1e5124a184455abb7119fc72aefba', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-12-12 12:40:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8aa7a1198141466f84f5c574b7727175', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 13:56:49', null, '1');
INSERT INTO `t_operate_record` VALUES ('8acf185c410e4adc9182bbdbba9add2a', '/course/delete', '192.168.43.152', null, 'POST', '2019-12-12 13:35:07', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('8ad2a33f34b94d6a9a938e5bbb55d138', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 12:52:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8af4699662154c3ca280fd07e230f454', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 04:24:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8af47deb29c44f42a9d0753700c7cb87', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 05:48:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8b0f763731244cb392bad4f59ade9862', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 08:06:32', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8b16e399415647f991dc20ef44a79e1a', '/user/login', '192.168.43.152', null, 'POST', '2019-12-12 13:34:57', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8b233907fd764d29adb2af371ddbf7be', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 05:57:06', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8b2fdc97ebdf4c33aa5633ef22a08220', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-14 08:29:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8b613ecbd6ed43ceb2c856bcfc30e9b9', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 12:49:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8b6ae07fddc74aec8a021e54b9b34561', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:05:53', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('8b7259642e944d36b06fb7ef2ef82a7d', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:49:32', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('8b92df01383e49e6a99d868c36e14ee0', '/user/list', '192.168.43.152', null, 'GET', '2020-02-19 03:57:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8bbc42989b2c44c39a991d9b3b835d07', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 03:08:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8bc86b167d6f43d08a9ba615c439273d', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 10:33:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8c0829617457462d92e2189fff9c089a', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-28 12:53:50', '4f8f02dff98044ffb7f7dfbc8c57c596', '0');
INSERT INTO `t_operate_record` VALUES ('8c433ff26fe8403890e6ff1bae110126', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:18:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8c5cf945589a4f65a52c477067d299a8', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:10:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8c6e4c09a0e745fa9ad5643156b97def', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:30:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8cb6c54ce3a843f1887455ce74b30acb', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:26:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8cc13656772447ac8697da28203abd50', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 12:57:49', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('8cd31c9aebaa469fbdb2554309d41228', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-19 15:41:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8cde9f0d7f284f81b28225a2174aeb8c', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:56:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8cfb7efb2e344da083126c084c6578b6', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 06:29:43', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8cfe04545bcc40e48d9a68d1c67fc777', '/clazz/add', '192.168.43.152', null, 'POST', '2019-11-24 06:51:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8d12a972efac448e8b9e531ecf0039a2', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 14:22:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8d219d1cbb964a91a3fd968636e2653f', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:06:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8d303edf8cba4497b873e5a7add0c4a7', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:27:09', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8d39ba865b0c44debc27e44eb703eb5a', '/LoginApi/v1/login', '192.168.43.152', null, 'POST', '2019-11-18 15:11:35', null, '0');
INSERT INTO `t_operate_record` VALUES ('8d3a5c5fc1fc4a89a19dc5fd0ef3140a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-28 15:08:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8d6b3b81dc684e5a88f4ee39f3a69120', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:08:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8d6f268d88d04627861302db20d3f291', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 06:01:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8d7c7c7bb7f04d63958835e0460e51fd', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:39:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8d7cf4f8c4b946909849c55b75eca1d0', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-23 14:07:50', null, '1');
INSERT INTO `t_operate_record` VALUES ('8d7f4465452d4b53b465580f2a1c1485', '/user/login', '192.168.43.152', null, 'GET', '2019-11-20 12:17:00', null, '0');
INSERT INTO `t_operate_record` VALUES ('8dc95d620f2e4a718446f89a8506d8cd', '/sys/findUserReqTotal', '192.168.43.152', null, 'GET', '2020-02-15 04:14:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8de03113940744f3af386a26c95011e6', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 14:39:19', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8df10fd8627040ae9ca5e21cb6de4588', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 05:17:26', null, '1');
INSERT INTO `t_operate_record` VALUES ('8df34ddd82b140edb4bbb6e5867e4183', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:14:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8e3057c151d047069a5b0a20588b89c6', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:04:19', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8e52193b244c44f0a1e892ac011456c3', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:19:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8e87892de90c4cf28c76eea939f44eef', '/major/list', '192.168.43.152', null, 'GET', '2019-12-11 14:10:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8e87f1e7e094423984ad6a1d0a80df5b', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 12:17:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8e9f97714227497ea197dea56c4efef6', '/user/login', '192.168.43.152', null, 'POST', '2019-11-25 13:43:04', null, '1');
INSERT INTO `t_operate_record` VALUES ('8eb1c2092e4442c2a53d9b2cfd41d0d0', '/course/add', '192.168.43.152', null, 'POST', '2019-11-25 14:08:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8eb7a5467c494b32ac9e8ce410eb8b88', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 13:55:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8ebccdff2d5c4e378bfcd0eac6942222', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 08:34:53', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8ebdbfd151b4451e8cda7d9b803bc53e', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:12:32', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8ec13dd6ae7f480ab835cedfdadedab3', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 12:17:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8ec925a7f4444dd18606ba78422a4a14', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:23:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8ee79e6798fb47bebb0c8667e22041fb', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:58:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8f00beba05e240f68faf884d41f94e27', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 15:09:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8f0b272854df4c4c9c269d35e43b709d', '/teacher/list', '192.168.43.152', null, 'GET', '2020-02-15 04:13:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8f170922435945618eafb6713b452e48', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-24 01:34:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8f1bfe65b3b542d4bf8a4e60c680a2f8', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 12:52:04', null, '1');
INSERT INTO `t_operate_record` VALUES ('8f344ec87b7f40c6a0b393fda4cca137', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:37:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8f5bf4a562b04f4e8fca2b71e8cf2fab', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-12-12 12:40:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8f62cbe7c55a4bfa95ec452fb00ead33', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 13:14:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8f87d1254e414139b5b09cce711607c4', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 11:09:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8f925a6b927a441280e3cd39573562a0', '/major/list', '192.168.43.152', null, 'GET', '2020-02-18 12:29:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8f9fa5f6b85d40b4bd1e8db84ae9e6e7', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:18:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8fa2fb3090c74fe4a7f9fd9bc3432e80', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 10:02:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8fa4f5d8cd0f4c478948fabeba4c50a3', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:46:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('8fb8da7e636c4fd0a2596c1890ecc882', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:22:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8fcd3e0cf78645e7901bdfe5b9a23a54', '/institute/add', '192.168.43.152', null, 'POST', '2019-11-24 03:48:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8fd03cdb8f634e10ace5b9463c346aa2', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-24 01:34:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8ff4d24791514b38ac992c1564c591d2', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 14:56:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('8ffc73533bb14353be22a2a2005b0523', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:26:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('904175875386443aa63537fdad758ef6', '/course/mycourse', '192.168.43.152', null, 'GET', '2020-02-16 10:34:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9061a9bccb364e1bafce245aa28543ce', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:45:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('906320b40f0d45569743d77ccbc7f53b', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 09:37:50', null, '1');
INSERT INTO `t_operate_record` VALUES ('908c0b61b7204abc9c3b8fba680aa500', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:02:36', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('9099b4515a35467dbfaa9924450aa446', '/exam/add', '192.168.43.152', null, 'POST', '2020-02-18 14:11:16', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('909d78b6989c4ee1b8b8ae6827ffd9bf', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:42:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('90b9b50995ee43fd9a5a60c93b729763', '/sys/findUserLoginTotal', '192.168.43.152', null, 'GET', '2020-02-15 04:14:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('90b9f2b96b0c42e18b6ee3e7575759bd', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 06:50:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('90bc23f67a6540268af34c6350151fe9', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 15:13:41', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('90cb4ae643bd4d8a8f4d013dffe45264', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 08:42:37', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('90d6b39fa7d04415b26c5a27ef7ff82e', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@52d9d75, org.apache.shiro.web.servlet.ShiroHttpServletRequest@4e3eab31]', 'POST', '2019-11-18 13:45:26', null, '1');
INSERT INTO `t_operate_record` VALUES ('90d6e75271114b18bde8bf409e113cb4', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 03:14:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('90f6bbad423845689f231680177aff15', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2020-02-18 12:30:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('913b4c0d25104adfbf11a660ab4e21a3', '/paper/add', '192.168.43.152', null, 'POST', '2020-02-19 03:28:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('914ee8df0db74ef7b25e5b537eadeefe', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 11:04:01', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9151e9c81f2f4ca8afc1a2005d039fa9', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:44:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('916bde72e8c4455a861ebe1eafd9649d', '/user/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@43039c2a, org.apache.shiro.web.servlet.ShiroHttpServletRequest@492ef227]', 'POST', '2019-11-19 15:01:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('916feec5336842f58d3769759f3bd376', '/user/status', '192.168.43.152', null, 'POST', '2019-11-26 12:53:04', '6289fb4f0f9311ea99ba5c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('91782ddab81c499987b36bc5ce70dfe0', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:45:39', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('91a16c1bb44d4889b518fa3e1267355b', '/student/add', '192.168.43.152', null, 'POST', '2019-11-24 13:14:17', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('91b5295a4a8c4d6caa7d7ad4f3ee097f', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:07:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('91d4b22344ac4577bb4df03264acfdc6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:09:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9216bb32a9fe48bc90cec7c10081ab61', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:40:55', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('921dbcfaefda4e9a9a9698e70760e46e', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 15:11:19', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9240dfb518704793873d732b1be1fd1d', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-19 15:39:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9251535f41334b20ba4c7f94351359c7', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:48:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('926282f357454e6493fdd11102ff7306', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 02:20:23', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('92766c464ab245139b9b85fafd28bc4d', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:46:17', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9286f37773d14671b726bdbf848105f2', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 11:09:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('929c94ec706f4c5db85e594ef0116ac3', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:04:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('92b1dee707e04de2a20d9e7e1c933b96', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:36:26', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('92b24b66a7e44ef89cf370b0a0389ab9', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:41:57', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('92dfff2558ee4a60b8c9f8676e5e05f3', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 12:27:49', null, '1');
INSERT INTO `t_operate_record` VALUES ('92e45b0200bc4abaac976d016e4cf627', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:27:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('931f8871ffbd4966aafe0532b430027c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 01:33:38', null, '1');
INSERT INTO `t_operate_record` VALUES ('93439f0ce5a946e4bcf253374941db02', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:25:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('93500f49e3a64820a14fd1fad2a60d65', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 06:12:23', null, '1');
INSERT INTO `t_operate_record` VALUES ('935b6af818f14de4817d807c7c8d7171', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-22 12:32:18', null, '1');
INSERT INTO `t_operate_record` VALUES ('939841d100a54ae99a6444fcbffb1e89', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 02:45:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('93c7fe100e144d319f7125e7d4f7f0a4', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 04:16:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('93d01a0b5dce49ad92b15638a7a09718', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 03:35:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('93d05bf8aeed41249397124523d178a4', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:31:52', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('93df9f38931840c198855f1b3293b11a', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:08:12', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('94008c57674e4c22895e1450b96dc48c', '/course/list', '192.168.43.1', null, 'GET', '2019-11-28 14:44:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9432fe26344448f7b019440ee1e2b6d2', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 11:03:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('944282b162bc44fea98c9048e659a240', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('94454ca8ef8d43c38c1e1e9cc77401cf', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 12:08:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9448e5155d2d4b67aff7ce78c56b8a5b', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:43:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('94623eab4b084817b9fdab5cbf5eac85', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 10:31:42', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('947a42413eb94f6f8da9c4a07de84823', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 05:46:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('94a6d71b9d6a43f29e1f505b68ae8215', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:09:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('94b7aebcbe3d4b70a368d51a575348bb', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:28:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('94be80b519304129adb33188d0bda8e8', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 11:03:58', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('94df3d81c12c4806a8831f5ec1bdee3b', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:08:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('94e7e22510ae4a54bb4266391add478c', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 12:07:18', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('94efdc2e68ef4261aa168ad97ae59412', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:22:10', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('94fb5a8cc1b543ba96ec7029e345006b', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 12:26:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('950d5bde4519475bb52bbc2447a999c9', '/paper/add', '192.168.43.152', null, 'POST', '2020-02-19 03:46:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('952d9448285042c1b0d0e8db00988b9c', '/user/status', '192.168.43.152', null, 'POST', '2019-11-23 03:25:06', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('95332bfb697c49d9a1a36552a9e52b7b', '/user/login', '192.168.1.102', null, 'POST', '2019-12-13 15:10:12', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('959ce0d969b945afa50fc70cf55f970d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 12:51:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('95a322a3c5ed473fb1d6ccf1a6260d64', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 12:04:46', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('95d9fad46a51476abf9a20103206e8d2', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 08:35:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('95e014eb53614f5180591bd49065eef2', '/clazz/add', '192.168.43.152', null, 'POST', '2019-12-12 12:58:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('95f0a8f5f26a4dedbd5e1ed229a68d08', '/LoginApi/v1/login', '192.168.43.152', null, 'GET', '2019-11-19 13:55:25', null, '0');
INSERT INTO `t_operate_record` VALUES ('95fbe000f2b94801821b77306922e487', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 12:49:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9611eac430784d0d99b229aaa87a28b8', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 01:45:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('96199abb9ff14c1d9ae3bb39b936a5d1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:34:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('963aba8a4c854ccb81833e60a8938624', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:07:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('964ac5c66c34485d823884ac2c9075b6', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 03:43:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9654db66996c42fc82cffbb113bc0d32', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:38:33', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('967edcc8fe674df7ac7d1a74619d3c54', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 04:21:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('969dd205a9184d0aa85e779d04a5e813', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 06:01:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('96eb135af6a24b8d92c17787d766c856', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:36:26', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('97006ffbbf18410992a6c5a65d7d1fab', '/user/update', '192.168.43.152', null, 'POST', '2019-11-21 14:15:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('972accceeea84d82887e6a3d91ac2de5', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:13:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9765126eb51e448fb824a008e9cc6235', '/role/add', '192.168.43.152', null, 'POST', '2019-11-23 04:09:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9776d92576364b228e0de016123e23d9', '/user/login', '192.168.1.102', null, 'POST', '2019-12-13 15:12:18', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('97add897f76e49578c18e00a9dd0fd5d', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 10:59:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('97de41086aa94a2a8701c9c216882a0c', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:38:20', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('981f3a1f67984a5ab37c42ba01afdf1b', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 15:15:39', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('9841da94ccec42c196468ea60b1e3d59', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-11 14:10:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('984d0b47015c4d42b22990abace182f2', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 11:43:20', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('98af500bc02b4fa0897c34ab8151a4df', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 05:57:04', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('98d172d40ee74677ad0385c34c8cbfe1', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:41:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('98e4ad78fa0347cf922e5b5c52bdddae', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 14:36:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('98e6761726904280987d89725d8ee925', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:56:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('98e7093a6bc244ee9a203ba2f705d0ab', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:35:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('98e9b1c681644dfd8e93c2e712792b15', '/course/list', '192.168.43.152', null, 'GET', '2019-11-28 15:08:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('98f204a63ce94f24ae60e25eca309a3f', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2020-02-18 14:20:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('98f5d96e27544f5aa9cf7cb3c1e205bb', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:02:08', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('99004360f2a146fead366f93a79c0a73', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 14:36:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('990170ec19914e638c1a1e94e0d8f0f8', '/teacher/list', '192.168.43.152', null, 'GET', '2019-11-25 13:49:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('99475e7432154959909f701038ba9960', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 08:18:43', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('995e01f7337947299428c44f99d24af9', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2020-02-15 04:14:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9968560547b649fda4568f3eb3925be1', '/user/add', '192.168.43.152', null, 'POST', '2019-11-21 12:56:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('997a4c1d3d4c46d6bb604f643e17d57c', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 11:37:36', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9980f9eb0218424bade6ad39a3b21d57', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 05:38:03', null, '1');
INSERT INTO `t_operate_record` VALUES ('99c7ce4f49f64fafb861b259125e1660', '/clazz/add', '192.168.43.152', null, 'POST', '2019-12-12 12:43:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('99e6cdaadbe24b5e83e4347c3f5c812f', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:41:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('99f27c73095542df9e8a1bcb2b646257', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 12:52:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('99f4cba1f0c34e3894d5f0d006283663', '/clazz/delete', '192.168.43.152', null, 'POST', '2019-12-12 13:39:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('99f7afc33e89483aadd9121b0bb70de1', '/grade/update', '192.168.43.152', null, 'GET', '2019-11-28 13:42:18', '4f8f02dff98044ffb7f7dfbc8c57c596', '0');
INSERT INTO `t_operate_record` VALUES ('9a08805fccd049d4a36f7e0ac9abebc2', '/user/list', '192.168.43.152', null, 'GET', '2020-02-15 09:28:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9a2780481e324ac2a3e2b830f24c58be', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 12:04:32', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9a4748d22fd145a59e4c6e25a365f453', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@75fb2e07, org.apache.shiro.web.servlet.ShiroHttpServletRequest@2b4a805f]', 'POST', '2019-11-17 05:19:25', null, '1');
INSERT INTO `t_operate_record` VALUES ('9a69ade468574e7991fe81cc9c11926a', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 09:42:31', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9a6d31aa2e294ba4b8940c28c483730f', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:03:05', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('9a914192a6d545f3bcb8289316421285', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:42:19', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('9a934a14163644b7af2953cfc9cbc862', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 14:26:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9a9a48ffb2174f8786e9cab3262b157c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 14:53:53', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('9aca1e026df549bbbdedd6c32649d7cf', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 14:59:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9af82bafcce94b6087e756cbbbbc1c72', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:54:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9b2f0ec2bcf3490eaf5e033cf33035c5', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:50:03', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9b2fdfa9af3e4187a9b93525d79a5351', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:28:48', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('9b3729755b244ebca8a7c8b26ae50aeb', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:26:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9b9d218643a246f799c55fe0ec59b800', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:30:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9be276a2f52f42f098bb598ed824ee3f', '/user/login', '192.168.43.152', null, 'GET', '2020-02-16 03:47:21', null, '0');
INSERT INTO `t_operate_record` VALUES ('9c2149f636044000a90c904e45a95865', '/course/mycourse', '192.168.43.152', null, 'GET', '2020-02-16 06:24:18', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9c2e37a132864f068811484f39093164', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:40:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9c606ee0c16641fab56995d73eddfe7a', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2019-11-23 15:05:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9c845a95a4ad44a5bcac99753bf7ab46', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:46:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9c9661621d7f439993627ff5480e9f68', '/user/list', '192.168.43.152', null, 'GET', '2020-02-19 04:53:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9ca0881823974003b3949f1be8ffbcb5', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 08:33:41', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9cd4a7ea972a4465b9bf4bfafe7de7f3', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:53:55', null, '1');
INSERT INTO `t_operate_record` VALUES ('9cd5b14f7bfb41bfb11823639f0e58d1', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:04:22', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('9cd9929f7ce64695a3b17267facd4a4a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:41:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9d08d8f3db3f4925a27bd2b2f3e8cc07', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:43:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9d3051d8d02f4d9ebde8e9b8d13d23d0', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 12:57:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9d36c12165304b73b4f5d5a4f01b8e84', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:22:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9d3e2e42fb1d402d8dbbf088ef9a09fa', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 12:48:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9d522e207dcb4679aa43d3178bc85b8f', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:18:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9d6578bf877d4ddcb2f9dbb358c46d48', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:35:28', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('9d7ee95a836547bc91222e0fb475fa83', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-17 15:27:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9d8ff5dc91cd4d1594f8c8167bc39eea', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 12:27:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9dad77aa9ff84f9fad4ffb91eb65ccc6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:05:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9dcd7d9400b1485f9b2355255e90c805', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2020-02-15 04:14:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9ddc0bc2a5f44044a7a0c7d7d821a4a5', '/clazz/list', '192.168.43.152', null, 'GET', '2019-11-24 06:51:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9dec115099fe4da28a11a707341e4733', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 12:35:28', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9e04d28cac2b47f4871cdaf1a02fac7a', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 14:22:20', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('9e4264ae3c3a42f881f92c7dd580fe1c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 03:41:40', null, '1');
INSERT INTO `t_operate_record` VALUES ('9e897822fad1424ebc25a20854fd4d6f', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 05:38:10', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('9e9abebf0de34cc2a7e9202d5e60dba0', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 12:49:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9ed6b803814644f2b2a2195cfef3a8ba', '/user/login', '192.168.1.102', null, 'POST', '2019-12-13 14:56:07', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('9edd877520814b2e9d7059ce0bcf4876', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 05:08:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9f084e8f99444674833e631c35398234', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 12:01:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9f08592720cd43dc908158faac817359', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9f0b7f6404a643098ef69ecdcc5c8872', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:14:34', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9f2ff29e06d14f17989088bfd1f473df', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:24:10', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9f44be19740a4e13bc1aba92cb697094', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 06:02:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9f54cdef7ae042108000f006e46629f4', '/major/list', '192.168.43.152', null, 'GET', '2020-02-15 04:13:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9f616dac55524ad9886a8f98b169dec3', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 13:41:18', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('9f8f23aedbc54121a5fd7bd95214f961', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:48:46', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('9fb262611c6143d280ac7af812445bae', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:39:18', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('9fb514e224ce469e99a54b05b8f5c795', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:52:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9fcc060bb50941238c057b06ac03e371', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:26:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('9fe9b407895c4b69893bd4927d308e50', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 12:04:32', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a00a07baa6704fa6bdfef739087a3220', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:17:09', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a016ae42a46c40dea6f270f8c27100e7', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 11:41:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a01d5a3d16a147219675e790bef8f356', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:00:02', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('a021546e75894371a762231293de79c6', '/clazz/add', '192.168.43.152', null, 'POST', '2019-11-24 06:51:53', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('a04c6fd352b744a29c0d06a4949f868d', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:31:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a0a0260f493e41df9d46acfe3994f3ff', '/sys/findUserReqTotal', '192.168.43.152', null, 'GET', '2019-12-14 08:29:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a0acd2c978d74db699f5f5c9ae64aca9', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:29:59', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a0c408f37d5e4c33b12e87fc2b74a326', '/user/list', '192.168.43.152', null, 'GET', '2019-12-11 14:17:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a0f001e76da440c69b82ddb597daa619', '/major/list', '192.168.43.152', null, 'GET', '2019-12-12 13:44:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a1457a7c03b04aa4bd7e9737bd616a4d', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:34:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a1557a09a2aa4ea4a67cb8a00fee4fab', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 09:30:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a1a14998610a4334bef082a49a6a8075', '/user/login', '192.168.43.152', null, 'POST', '2020-02-19 04:59:59', null, '1');
INSERT INTO `t_operate_record` VALUES ('a1db9306e98848d49d7ba531b99a3f58', '/user/login', '192.168.43.152', null, 'GET', '2019-11-30 06:01:48', null, '0');
INSERT INTO `t_operate_record` VALUES ('a1ec7cc42f00446a8e02c9eca3695a74', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 15:00:05', null, '1');
INSERT INTO `t_operate_record` VALUES ('a1f7adde0ba8456c929c35456d55e34d', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:19:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a201f14de39c4d4793668b2fe84eeabf', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 04:17:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a2265f368b8245359674327ec08fb92b', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 15:03:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a237cfc39b5f442e98eb1e4a7a4598ec', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 11:17:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a23f74b66bbe4252a3c729be6d8c62e5', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2019-11-23 15:06:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a25480d13b27440e9cf9825f03799fd4', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 03:05:55', null, '1');
INSERT INTO `t_operate_record` VALUES ('a26d5aae174c4dcfafc0c9eb5877c905', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:53:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a27750a34b0746c5ac859735fba6072f', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 12:42:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a27ec3a863f3499581ffa6f589e630a3', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 01:35:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a2ef1d13fd9d481b8de6b690f13d1591', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 09:45:01', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a2f5f5ed2a15463ea15cd7a899fb00ba', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:16:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a336f6b7c2bf41d397d8a7e4601658d4', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 11:04:01', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a33e613eb24842579653938472d965f1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:48:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a35130c92bc34aa9b418c43f3d229b39', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 15:17:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a39f2df2cb354b318200d3237baab8a5', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 08:47:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a3a5b610f92048e480bd2bf07f89d1ef', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 09:44:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a3ca2bb629524a8c85aed32c84943ff9', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 13:17:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a3f55340a2094858a099480138c49421', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 05:31:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a40a7e08ff514116ba7c5c92c826a539', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 05:06:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a417147671df4136bb167648a9c58d20', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:19:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a41f473233e84ceda8227100c0b3a6f1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:48:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a42f15033a2747edb05822774cadcafb', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:14:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a438aba98a28460096766e63d4d6501a', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:41:26', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('a4553d1703794229893e230c98a62a36', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:58:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a4669b60ed014aedb173930a20d255fd', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:22:03', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a485cf53f608423a9293eabe3999c041', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 13:11:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a49306d4b09347fdaf11e490ca8f0fa6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-25 14:57:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a4b47a0837fb47419c4e29b2c1bd17ca', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 12:54:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a4d200b52a0d4cec91ce9364b7d3df08', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 14:43:00', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('a4d5aa8670724216850e66f6122a1dea', '/sys/findUserLoginTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:50:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a51de6b791c64014a4930a4426e8b47d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:06:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a534c729f60e4a9d994935b7ac2a93be', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:14:15', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a558f435e62340e09f810b0c3a6faffa', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:38:20', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a573b80ecfac4e479853988c137c678c', '/user/delete', '192.168.1.102', null, 'POST', '2019-12-13 14:43:00', 'fe8147e10e454b259705d10d7514f2ac', '0');
INSERT INTO `t_operate_record` VALUES ('a574377e7ade490d86658821bdaed881', '/clazz/list', '192.168.43.152', null, 'GET', '2020-02-18 12:29:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a5760a8f18b74ef2938336f5136cd309', '/user/login', '192.168.43.1', null, 'POST', '2019-11-28 14:37:28', null, '1');
INSERT INTO `t_operate_record` VALUES ('a5965f9e56aa468c879c13c7444b10b3', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 12:31:50', null, '1');
INSERT INTO `t_operate_record` VALUES ('a5f2d42dc5f74d5c9309470da331741e', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-24 01:34:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a5fdf2bf888649bb989f71be940db9e2', '/course/mycourse', '192.168.43.152', null, 'GET', '2020-02-15 14:53:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a6485a13f7ad49f9ae80dca76fffc4cc', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 15:09:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a6488362176d4999b0e94bd905e23dcf', '/role/delete', '192.168.43.152', null, 'POST', '2019-11-23 09:29:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a64acb5c191540c6bff981ada0e4ad90', '/course/center', '192.168.1.102', null, 'GET', '2019-12-14 13:46:27', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('a66689e1e7bf42a58c6a90a8ab3e1629', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 12:01:14', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a67090e1ea36499087ac398cc2564268', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 13:19:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a6718aa8c9014dc68417c47824e7b6be', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 02:55:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a67f47d6c8e2450ba0ede6ef6e78dd9f', '/institute/list', '192.168.43.152', null, 'GET', '2019-12-12 12:38:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a7013f7b96e541a49f490d0d79180f13', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 14:47:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a70ebad7370a455ea99472f53986d656', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 09:27:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a7195bcbdb124469a35e4983e5d6c9d7', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 13:13:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a727e747f6df433ea074834596df1038', '/user/status', '192.168.43.152', null, 'POST', '2019-11-20 13:44:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a729ba116ca84a8499afb53e2bc25eb9', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 02:53:27', null, '1');
INSERT INTO `t_operate_record` VALUES ('a72e0016e0974204b453523524692eac', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:40:03', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a73184b56f654f43b014f6d9ce1b45c4', '/user/list', '192.168.43.152', null, 'GET', '2019-11-27 13:42:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a73609c96f084714b936428f89bfa612', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:52:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a73ca82d4dc64ca5b894e91b0b1ac3a8', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 05:34:45', null, '1');
INSERT INTO `t_operate_record` VALUES ('a769e0307ff04d78b38554cd6db80e3e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:42:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a79c01e7a7874964a5548f0b8a25c8d4', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 14:56:11', null, '1');
INSERT INTO `t_operate_record` VALUES ('a7ab89e5f1b94002adfa88b31ed334d1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 03:06:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a7b105fdeec54c8992366e157e6eef3f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:28:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a82277f4db654ab3bf3afad75ca44d99', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:45:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a83e438e11f44f1ca452f7c6429381fc', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 13:52:15', null, '1');
INSERT INTO `t_operate_record` VALUES ('a866a3fd83c142ba8b309efbb599b9b7', '/user/login', '192.168.43.152', null, 'GET', '2020-02-16 12:31:36', null, '0');
INSERT INTO `t_operate_record` VALUES ('a86b27362cd144f1a1ee793dcefdc742', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:46:25', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('a8743c0e407541fc89832c14a92fc298', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:41:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
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
INSERT INTO `t_operate_record` VALUES ('a97ccfd0396f4b4c8874d48c7b9826ad', '/student/list', '192.168.43.152', null, 'GET', '2019-12-12 13:44:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a982ca2eaab34012bc7ad317e067f391', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:11:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a99a1c7c51154ed584228cd2480aef36', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:26:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a9a2630a19484a78800b852fc7d069fa', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 09:30:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a9a9acc971c74fa29325b93c1a701663', '/user/add', '192.168.43.152', null, 'POST', '2020-02-15 04:12:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a9acefbb76724960803d77c8f5901184', '/user/status', '192.168.43.152', null, 'POST', '2019-11-20 12:08:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a9c26589e10f42b3a97dcc5e6dea6acc', '/dict/findListByDictTypeCode', '192.168.43.1', null, 'GET', '2019-11-28 14:44:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a9c3e94423294aa39c96b944ceaed306', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:45:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('a9c9f7a1b1b34fcb93eb01d2ae5698bc', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:22:04', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a9d90484511b441db082cc5f69633c97', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 09:14:29', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('a9efe9b2f2934aa98640a053ded7327a', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:50:03', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('aa06cbc0738a4c12a72df969b2fc1db6', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-28 13:54:11', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('aa1d0077631a46419f0e9ce6d4bd8e8c', '/user/list', '192.168.43.1', null, 'GET', '2019-11-28 14:42:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('aa69ebc023d34519816053fc65410744', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-17 15:13:33', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('aa72619abdaf4886b6c80a230fa81b39', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 14:22:31', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('aaa7828bd51a49d7ac88acba50de8581', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-17 15:13:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('aab84c9c0c0d44beb566a77007806123', '/user/list', '192.168.43.152', null, 'GET', '2020-02-17 15:27:30', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('aac6c74701694325ad1fc15136a2d3e6', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 13:05:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('aadac5449c1d421f823b61ecc742e47b', '/exam/delete', '192.168.43.152', null, 'POST', '2020-02-19 05:00:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('aae0748878344c7ba080d6e301fa3e0f', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:43:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('aaf855c449d7461fb0c2450fabc96088', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:04:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ab4bf2b2b7f342e886d5ef7c1ab4d9b4', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 09:38:03', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ab613d4b0ec34962b19f645143767f72', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:08:11', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('abdd4cfa73e34e268b9993ae01301715', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 08:18:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('abe11c22e58e41ed9e491a67d7db86dc', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:42:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('abf4ef629d8a492aa239f8f05d6f1f50', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 01:35:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ac89e1168fab439296c39e8224040c20', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:16:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('aca2ae558adc4d0cb3ebf1473d45241c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 13:54:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('acbc99311e4849de93a82a50e18171f0', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:01:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('acc40833d23943e494082ab332c18bd4', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:02:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('acec87f405194e11aabd6594a01d8b96', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 12:09:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ad45312119254b70ad5bca9728ba32b8', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 13:29:26', null, '1');
INSERT INTO `t_operate_record` VALUES ('ad8b3afc367941d69c674245ba110c48', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:32:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('adb1c9e4c80e4ba1922333cd26f8cb11', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2020-02-18 14:20:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ade81d3a84cb44cdaee90ab75ec2a134', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:31:56', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('adf21aed5e534292ad0b59aeb39fd680', '/user/login', '192.168.43.152', null, 'GET', '2019-11-24 15:15:41', null, '0');
INSERT INTO `t_operate_record` VALUES ('adfd6d3d3f88496e99dd743fe3c8231d', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 05:00:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('adfe1a1a0f8240738606b698f3897686', '/major/list', '192.168.43.152', null, 'GET', '2019-12-12 13:44:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ae01ee420fe041d5879b7d7bf26fb8b0', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:13:22', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('ae56baeaec5b41cc837686469b017200', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:47:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ae67a3a474a44af69fdf63a8eee46f04', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 05:26:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ae9621530514446c88052b95717743e1', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 08:34:53', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('aeb091d1a9db44fa8045de6a269af41c', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:10:36', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('aecafa0692dd49e99d86ee85b4f910db', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 12:51:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('aeebb5a52438481eb1bb6b2999e60468', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:35:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('af04883945db43d09fe5bddeecf427b6', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:42:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('af39ec437d7d43069b4ee070d833c9c2', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 13:12:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('af3b42dfb8844de8a7ceebccfc340657', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:59:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('af4df4f07cf846a88a683ebb976bb278', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@4e7ee7ba, org.apache.shiro.web.servlet.ShiroHttpServletRequest@3f1ef342]', 'POST', '2019-11-18 13:16:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('af64958e8d7748e09f798550abca36c5', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:04:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('af694df3312a4b0ea37fc6d7fee6df03', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:00:12', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('af7ce66417cc42c692d52f702b060daf', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 05:48:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('af81984767874b6e8476e898d710f8d8', '/user/list', '192.168.43.152', null, 'GET', '2019-11-28 15:08:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('af8837f1019f445893ce0af5b70d0355', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2020-02-18 14:20:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('afb847a6746047c19ed62209e1427251', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:13:51', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('afdf23a4bccb4c46a04d9f65ff0b69b7', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:34:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('affdafcf008b43cda997dcdb9ebd77aa', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:06:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b022a75429714602b19042c2ed3f8106', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:22:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b0295e72c75b4b4f98661398d97d0e06', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 12:51:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b046e4c8e2f14b4eb183aebf4c224876', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 15:13:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b072ec09a8b7417fbaf980044580ba43', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:31:59', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b07dad8d59e64725bdedefc6ba6faa70', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 08:22:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b0a49fba028e4886bcb4408175726a90', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-27 13:07:23', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b0b95a8eb7d0485385d303aab99511f6', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-24 02:09:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b0fd2e375da940feb1b10dc1b35e900c', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 11:06:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b10313826f37447abb7297219c764b3d', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@44a9d56e, org.apache.shiro.web.servlet.ShiroHttpServletRequest@459bf022]', 'POST', '2019-11-17 05:15:44', null, '1');
INSERT INTO `t_operate_record` VALUES ('b111eaf5b2164a8980ca22da8bfebbc5', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:56:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b11243404443415cb94c561dd1ad6407', '/exam/add', '192.168.43.152', null, 'POST', '2020-02-18 14:18:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b117d328408e4033aa3e6e163a3877de', '/user/update', '192.168.43.152', null, 'POST', '2019-11-23 14:07:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b12cab22139549c1aef66bab6c91c0c9', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 09:30:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b13c98c6602e4757a644a1069052df86', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 06:21:54', null, '1');
INSERT INTO `t_operate_record` VALUES ('b14f2f836b774fb59eff876223ac14c3', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-12-11 14:16:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b152f178eb7941318ffd3da8a8036994', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:06:11', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('b175a250a3f04b339b1f30613adad9a4', '/user/list', '192.168.43.152', null, 'GET', '2019-12-14 08:30:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b1a3cf7de15f42f587b0238bc2505d97', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:56:41', null, '1');
INSERT INTO `t_operate_record` VALUES ('b2007d89bde8453bbe3a7f03df8d622c', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@4e7ee7ba, org.apache.shiro.web.servlet.ShiroHttpServletRequest@35a14c6e]', 'POST', '2019-11-18 13:18:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b21ccd57ad8d47d995ccdcf9d828bb33', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:41:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b222f672c68041ebae0069691e9795b1', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 14:59:47', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('b232f23709994b7dbd276fd088bb40a9', '/sys/loginLog/list', '192.168.43.152', null, 'GET', '2020-02-15 04:15:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b252058b59b447d2a325a47bc741b8d1', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:32:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b25b63c9083045918cbb1f030712b6b9', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 14:08:06', null, '1');
INSERT INTO `t_operate_record` VALUES ('b2870d4c3df44dbca8a91fdde32d2fdb', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:04:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b2baed7fa15d457fa2c85cb0036864ad', '/user/list', '192.168.43.152', null, 'GET', '2020-02-15 15:09:26', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b2da6153a73d4e88a186295bbb0fa0ed', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-23 14:17:51', null, '1');
INSERT INTO `t_operate_record` VALUES ('b2e0bd8ce5f94b1d854b575f22e2447c', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:07:25', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('b2eaec11bc0f40efbf3c76ab2a69a989', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-17 15:28:23', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b2f65003b6114b6999c44ad24a83dc7a', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 01:44:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b3069314a66b4f53a34feac6f5726104', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b309db65efe44620b71b9c7b6bae091f', '/user/list', '192.168.43.152', null, 'GET', '2019-12-12 13:30:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b30d1280ceff4f3fa0bd4f85b6a2e62b', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:16:28', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b31f9e0eeb4e4e26a3f81d864640c844', '/user/list', '192.168.43.152', null, 'GET', '2020-02-17 14:09:18', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b38fb50d343441f5bfd8647c1ece3406', '/course/list', '192.168.43.152', null, 'GET', '2019-11-26 15:10:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('b39625d81350465b911fcf5ac720516a', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 06:04:11', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b39913dcba154d1d9ae18e7395a8bcb2', '/user/list', '192.168.43.152', null, 'GET', '2019-12-12 13:38:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b3a405a25f27452aae374be00128a2fe', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-01 08:42:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b3bcf42e8117462fbd78c1c7d05a8412', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:24:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b3cbec2e04d045008e1964237da2537b', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:52:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b40a86111f714d22bec95a547d560eb7', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-15 15:02:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('b41ae1ec77824b41bafcccb26162517e', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 01:41:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b420231c303b43b1b0db29c41e0d5c08', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-12-12 12:40:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b4596b81f1ac431db802b93c5a350a85', '/sys/findUserReqTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:45:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b4d359e824774b5593bd8ab44039a850', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:01:11', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('b4d3856b1cfb4b15b77816d698a3232f', '/institute/add', '192.168.43.152', null, 'POST', '2019-11-24 03:42:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b519772f086042fea3a9f586b1a38df2', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 09:44:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b5336edd97464c448ac40fe43813e6ea', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:02:59', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('b5452cc0074a43729be34d659caf3ba4', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:26:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b565286e9690417380a679e601abcb09', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 09:28:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b57e106bca3c402fac668cbc1b600730', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 11:54:59', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b58221fa3c9746ddbc18822b7e31dfcf', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 10:48:28', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b589ca41d7d1416b9b6f868b41c82045', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:08:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b58b08c209f24cf8821cbcc3d7366a7e', '/dict/list', '192.168.43.152', null, 'GET', '2020-02-18 12:29:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b58fbe5cc2c547db9951e672ee03d5b1', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 06:02:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b594777db5e944dab36a1afbed891410', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 08:34:15', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b5ad98c3fafe47dabe40c1c27b0eb793', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:07:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b5b11ec70eda42748d192423b97101d2', '/paper/add', '192.168.43.152', null, 'POST', '2020-02-19 05:00:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b5b82705005447708b9c6e034f2c7f4e', '/sys/findUserLoginTotal', '192.168.43.152', null, 'GET', '2020-02-15 04:14:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b5ce39084eb84824af514c2bbecf8d89', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:59:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b5d7b2dd30d24a7284d85b0a24ce12c6', '/user/status', '192.168.43.152', null, 'POST', '2019-12-14 08:32:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b63925ef0d0649bc91ee531b36dfa74f', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:34:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b63f26e4fe3c47b791140e23d8237bfe', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@67b2cf64, org.apache.shiro.web.servlet.ShiroHttpServletRequest@26422d0b]', 'POST', '2019-11-19 13:58:58', null, '1');
INSERT INTO `t_operate_record` VALUES ('b64a7e6983f44dbc9697f97558d39b7f', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 04:18:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b66d5c5361844a2cab971d088a902297', '/user/login', '192.168.43.152', null, 'POST', '2020-02-19 03:39:32', null, '1');
INSERT INTO `t_operate_record` VALUES ('b6706852cedf443bb8fce69bf3f3d4dc', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:30:32', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b67b4a50381b42d0a0c953aa26b3fea9', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 06:29:46', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b6ca11fb73e74125af00eb0fec88c818', '/user/login', '192.168.43.1', null, 'POST', '2019-11-28 14:42:50', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b6ce0ca3c6304973a2771e2825b586b7', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:36:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b6df412f6b8247d687110b66b048449a', '/user/list', '192.168.1.102', null, 'GET', '2019-12-14 13:38:07', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b6fbc1a9265045568d56f10dbf811e34', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:02:50', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b70d5c13b613444c9bef8f5268fd83df', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:09:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b739b56269d547eba8f9d4e79e21d8d1', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:52:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b740f59f068f4eb283986b5146c406aa', '/user/login', '192.168.1.102', null, 'POST', '2019-12-14 13:16:50', null, '1');
INSERT INTO `t_operate_record` VALUES ('b748279bc62a4721b2bbad26d3745c8a', '/user/list', '192.168.43.152', null, 'GET', '2019-12-01 08:20:46', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b760bca9631a469b9a54dea8a03eaeb3', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 13:08:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b79f3790abad45e8bbd151459a864324', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:17:09', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b7ba9cad8b0849e283a7f34dc4e20d9d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:41:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b7d76c4fd4a34bfa9cd2a68524436181', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:35:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b7defa52dff64bf7b767cffacde5544e', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:41:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b7fe39f201eb49cd8dc87e93754c8b2c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:17:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b82c823cf0a34b5abf57d1a98300bd91', '/major/list', '192.168.43.152', null, 'GET', '2019-12-12 13:44:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b8678a08517047f389c11f8e4fd7dd6a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:27:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b86983abdbfc41ae86b5686dd666d140', '/user/login', '192.168.43.152', null, 'POST', '2019-11-28 13:54:07', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('b87f28cf849c4ecd91ffafa70804b571', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 14:59:37', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('b8ab73b4456b47df914e606d2badb3d1', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:42:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b9185e365ac14bc9a073ea1135ab1045', '/user/list', '192.168.43.152', null, 'GET', '2019-11-25 13:33:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b9193160d0c64c49a6edd74dc9258451', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:44:51', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b91cfa066be4428b8979c6b8075494b0', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 13:07:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b92590d423ec431788c9f4698af7b8d9', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:00:31', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b942b923abc74644aefca571f58ef60c', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 04:09:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b9452927f1c44be4a018233819dd872b', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-15 15:02:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b94f65df7fdd4e98ada5de13bf9b99d3', '/user/list', '192.168.43.152', null, 'GET', '2020-02-19 03:46:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('b981f6578eb84fbba75fc9a6b74fd863', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:09:23', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b983d0d653654c36a2c8354e19b41ae7', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 05:22:59', null, '1');
INSERT INTO `t_operate_record` VALUES ('b98cfe649bf84e6c9433cce9eb383151', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:24:01', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('b9a0da4e93f84362b3e1fbb9255f413b', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 12:53:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b9a2e9937c5243b7bbc36523a1537668', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:41:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('b9c27519b1a142d3bd1fdf656f031c19', '/user/login', '192.168.43.152', null, 'GET', '2020-02-17 15:07:43', null, '0');
INSERT INTO `t_operate_record` VALUES ('ba3b3296a273472e95b9634e76e65a93', '/user/login', '192.168.1.102', null, 'POST', '2019-12-14 13:46:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ba7ff67972454a9a8a9c19457f3597f9', '/user/list', '192.168.43.152', null, 'GET', '2020-02-17 15:12:29', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ba81c1212ae742f99fb0ec098cf47fb4', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 02:42:58', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('baac28f453d848b59ba0d317594a7538', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 01:35:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bab5232a716d4d85b3882bc9037cce15', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:48:46', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('bad4b690dfe741d497c2896606b8e611', '/user/login;jsessionid=F3A8D0EC34E47CC5EE2B33F38456F396', '192.168.43.152', null, 'GET', '2019-11-21 12:58:17', null, '0');
INSERT INTO `t_operate_record` VALUES ('bada17effed14556a0b4a6eda838d673', '/user/update', '192.168.43.152', null, 'POST', '2019-11-21 13:58:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bafc285b9ca545bf81f9fc955946405f', '/user/add', '192.168.43.152', null, 'POST', '2019-11-24 02:06:27', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('bb35a83454934412a8644ee52b31641e', '/user/login', '192.168.43.152', null, 'POST', '2020-02-17 15:27:30', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('bb45d4d0f0b14c98a2c5b72f5276e53c', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:36:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bb6c0877be6e47ed92e90f6032ae44e7', '/major/list', '192.168.43.152', null, 'GET', '2019-12-12 13:39:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bb93b5ba1ba3465b8ac3155d13abb47a', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 14:37:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('bba4c216ce92462fac097250880dadfa', '/clazz/add', '192.168.43.152', null, 'POST', '2019-11-24 06:52:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bbc5e084de2941f5b7aa18729c99fa1d', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:31:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bc0e1094faec4fbca6d4cb0d5c6791ac', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:40:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bc20f457dd184aa9ab2b28773484f675', '/user/status', '192.168.43.1', null, 'POST', '2019-11-28 14:41:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('bc34284a8edc48e18230b76cd3ddc06b', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 15:13:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bc45f43577114121aa8e04e5eed836c6', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 13:44:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bc4b073383a2456394fbee89857e3a8c', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:30:45', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('bc5602b28faa44c58a2bc3a6477ac4d7', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 06:49:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bc8651e9d0064615a168feec8cedc68c', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 11:03:42', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('bca2ed2ec0c14ef5af1b8349436e323b', '/institute/list', '192.168.43.152', null, 'GET', '2019-12-12 13:44:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bca60d50b02549d18b56756f373c0058', '/exam/add', '192.168.43.152', null, 'POST', '2020-02-18 14:11:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bca8ee72761a446b81653112858e4d04', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:14:22', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('bcb70b0f74094d9394388aa58b8a0d0a', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:49:20', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('bcd2f88481064b08903c2948b1cf25d2', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 09:28:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bcf28e8f9eb34e08b019a18f94f2cd3c', '/user/status', '192.168.43.152', null, 'POST', '2019-11-24 02:12:16', '3e5dfa87593e4a44b8212eb3866aefdb', '1');
INSERT INTO `t_operate_record` VALUES ('bcf9d418b44647578e24e3b9ebc3e49f', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:19:06', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('bd48ae3bc86143378884fee43806039c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:06:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bd50995a921a4cd9a071512123a8f084', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:32:08', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('bd56414e8ed8427583f9119cf2e72cd2', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 05:51:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bd8bb7b11a7b4cf8a56ac27ca8a8afe4', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-12-12 12:40:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bdf57dccd52e4db09b28b247144b405b', '/course/list', '192.168.43.1', null, 'GET', '2019-11-28 14:43:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bdf5c06106c14475a39c5c0cd2cdd613', '/user/list', '192.168.43.152', null, 'GET', '2020-02-19 05:05:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('be4dde948ca54f2e99116b8d56f402f6', '/student/add', '192.168.43.152', null, 'POST', '2019-11-24 13:14:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('be5848fc97e944e29afd70c3aab55033', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-17 15:28:26', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('be67d93752334a4e8dc1fad67baf8ca4', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 06:32:35', null, '1');
INSERT INTO `t_operate_record` VALUES ('be721ada09604620b59d3225ad00cfef', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:43:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('be9a03b462b942dc8583fa3a12932a3f', '/student/add', '192.168.43.152', null, 'POST', '2019-11-24 13:02:31', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('bed996b1e44d441b8bbf9e6143bb6f0f', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 01:53:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('beef842d762741ec82b0dae6a5718fd4', '/UserApi/v1/editUserStatus', '192.168.43.152', '[User(id=67eb71f1091911eab9205c93a27933da, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'POST', '2019-11-18 15:21:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('befa1d641e494198ace10a78e4f70b3d', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:12:17', '3e5dfa87593e4a44b8212eb3866aefdb', '1');
INSERT INTO `t_operate_record` VALUES ('befe5f7cb56c466ca807661d1ba4525f', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:24:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bf133a7b11f643808d5a52a388c354d1', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-12-12 13:30:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bf17c444c72e4eafa06c18b238ea71b6', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:00:20', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('bf220ec401c94fe991f997eb4e4b6040', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 03:06:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bf25a67925b14c33887c623759f74db4', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 12:19:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bf30cc8517c24f53827e4d094482c552', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:24:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bf665de914404deca04f962c2f8b35dc', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:39:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bf700681e3604c81bd629b1476f95126', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 05:46:10', null, '1');
INSERT INTO `t_operate_record` VALUES ('bf8f6050ffb04a729c45885fb2e853d9', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2020-02-18 14:10:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bf9ee105d5214fbab7222e159318a782', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:06:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bf9f769f6ec64a3e95f7ce54ad7246cc', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:23:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bfad4f0ae0424e3c887d38b32694538e', '/exam/add', '192.168.43.152', null, 'POST', '2020-02-18 14:25:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('bfb2b4f25b1e433e9c9bcf0c39269d3f', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 10:06:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('bfd4803269b249d1aec2b99152123b0f', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:56:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c0152fac57cc46778e4e63e65da3fd15', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 14:18:26', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('c031b2456703490099078039c5a12fbb', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:46:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c04ff4351fce43eda8220805bd9b8cbf', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 11:00:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c0572243a255479fa5aa6acf38462436', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 03:43:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c05ff5f614774854858d29cae5d34e43', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 14:27:21', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('c07b32ac2fe243c2a76790cdc4ae6b9a', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:50:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c0871458df5547f285ce32e644f8b1a7', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:04:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c089dba8e2c94196aefaba7e7c621b16', '/user/list', '192.168.43.152', null, 'GET', '2019-11-27 13:27:29', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c0948a8e4e294d25aade2a36f92ceac6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:19:46', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('c095c272ff894c4fac8bba46f242ed2e', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:17:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c0a3494291bc4ec5a5c3954737acceae', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 12:57:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c0c0152a93554753ba8a48b97e7437a7', '/institute/list', '192.168.43.152', null, 'GET', '2019-12-11 14:10:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c1026c40b4d64ea889e9a856fa377f01', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-17 15:14:30', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c16b1852344f43daafd6eacfe2df451d', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:05:20', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('c16d14e75083417fb5fe5ef27745182a', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 14:53:52', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('c1721289c8f446fdb6c0701a9b531818', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:29:28', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('c18e8ced27b7465e834df9b03a1c3bd2', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:00:47', '4f8f02dff98044ffb7f7dfbc8c57c596', '0');
INSERT INTO `t_operate_record` VALUES ('c18ef0e39b7f44dd96dae79cbe5debd9', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:52:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c1c748051a3a46c48db87dfa5de588f8', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:35:14', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c1fea50ea5214bce850bae79b2d1ac7f', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-17 14:09:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c207b9adeda544de83da6ccc27209241', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 03:35:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c22a1882dd28424ba70bc89c8498d0d2', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 03:42:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c250bacc568e42b4b0f485f126296e40', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:58:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c26b5ccc72bd450d91c3cbe533335f15', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-22 12:01:50', null, '1');
INSERT INTO `t_operate_record` VALUES ('c2ac3370c4004290932d518273f030d3', '/course/center', '192.168.1.102', null, 'GET', '2019-12-13 14:43:11', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('c2b3a29374ef43a38208a76b1dbed712', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:05:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c2cc0a198dd44cb7abdfa0d6245718d5', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:08:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c2d10317af994db383317af8cf911e6c', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 08:30:30', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c2f33bd981ef471ebeb5b12088e555d4', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 12:51:20', null, '1');
INSERT INTO `t_operate_record` VALUES ('c329965dfe2b4b2aba0af8594b70db9b', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 12:56:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c32f2395104c44edb15f5ad02246f5c9', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:55:42', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c336b9870afd43818df4b7628107eec1', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-27 13:27:39', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c35ef51f875d45dd97d88e8e1d723d9f', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:45:40', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c3673d04c7af4204828791f0e69137b6', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:02:14', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('c390076df16240c79c8cc6f7b08682a9', '/user/login', '192.168.43.152', null, 'GET', '2019-11-24 02:52:39', null, '0');
INSERT INTO `t_operate_record` VALUES ('c39afe42bff544b781e178b868c6957e', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@4e7ee7ba, org.apache.shiro.web.servlet.ShiroHttpServletRequest@40b90005]', 'POST', '2019-11-18 13:12:34', null, '1');
INSERT INTO `t_operate_record` VALUES ('c3a7dbb63b8742d9b5520c3f1a68da28', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 04:56:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c432424d0ad1413a8fc8bb9b8100e188', '/user/list', '192.168.43.152', null, 'GET', '2019-12-12 12:36:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c44cd160b3024d71bdb327969c06958b', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:57:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c4974c2211ae4d958cb8d4501f3f648b', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 12:36:29', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c4b632974cb04fe080c9d53281dde874', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 14:31:23', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c50839977dcd4e8689b1a6432cc9b728', '/perms/list', '192.168.43.152', null, 'GET', '2019-12-11 14:10:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c51b299a223542c387674d1fd0597b53', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:54:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c55a43783bca4c039d7c057aa81777b3', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 12:56:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c58b349c8fc64b9baf8793a3b9e8a0d8', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 06:48:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c5900f64191346708e9e65e7971b0858', '/user/status', '192.168.43.152', null, 'POST', '2019-11-26 12:53:04', '6289fb4f0f9311ea99ba5c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('c5d2d7e4bc7047cb933dbced6a0b8133', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:33:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c5ed0654acec4936baf07581146cdb7e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c6093039424c4b5f9872b3c212668b63', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 08:20:11', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c62e922779884a81b572be802925bcf8', '/user/login', '192.168.1.102', null, 'POST', '2019-12-13 14:56:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c660d587fb9147818a11b5924e49ea84', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:39:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c663e15d31284964925790633f7fb6f8', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:10:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c6655df911f54384a96c8973d22e58d5', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 09:29:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c66b097fe3a4461298d918edc4053fbf', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:18:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c66ded7364674a3fb644656e04fa2c98', '/dict/findListByDictTypeCode', '192.168.43.1', null, 'GET', '2019-11-28 14:43:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c6c644daa1134c2aac0edcddc6ee3a4a', '/user/login', '192.168.43.152', null, 'POST', '2019-12-12 13:30:00', null, '1');
INSERT INTO `t_operate_record` VALUES ('c6cb6d79eedc4d84b6ca782444e50021', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:05:10', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c6d0eecde6d94574bb49dbae1ce0d6eb', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-17 14:30:33', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c7006c4452b34283bd436367ae26b082', '/user/login', '192.168.43.152', null, 'POST', '2020-02-15 09:44:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c709f57a6b3d41bcbe47a7fcda99f4c2', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 06:49:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c71b183c1ca449748d57e8eef0d6e472', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@71bf434c, org.apache.shiro.web.servlet.ShiroHttpServletRequest@65bd8fc]', 'POST', '2019-11-19 12:42:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c733faaec3f74df0afe07b309b7f8936', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:06:43', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('c73f982dfbe34e6981f20ca77b7d05f3', '/major/add', '192.168.43.152', null, 'POST', '2020-02-18 14:26:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c745e85af4424a98823a7cef4e7455c8', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:47:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c751eac582034746b3fbafef283232a8', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:34:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c774d4f4252a446aa38b5bd633ae11a8', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 12:09:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c778dfb5ca1c4a9bb90b62d2ff7d2281', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 15:16:21', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c7c063b2cb654d4aa7881da5468dd524', '/user/list', '192.168.1.102', null, 'GET', '2019-12-14 13:46:24', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('c7d2a2c627084781afc5fd7e8d00e8ea', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:42:34', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c7e02be7117c40fc876cc18ca5c38739', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 06:02:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c8371c6083814bcdb33207c1b9728ba1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:07:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c85fe2f12cae4055b052dcf0e9cc3e81', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:40:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c866184d4f874be980bb979610892f5f', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 13:01:31', '6289fb4f0f9311ea99ba5c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c87a234203154ff99943ab5c813e1042', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 03:08:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c87b38750d5b4f37b0f3ccb127ec817b', '/student/add', '192.168.43.152', null, 'POST', '2019-11-24 12:54:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c88283be96fa4817a8221c35e91592ed', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@62ca9c3, org.apache.shiro.web.servlet.ShiroHttpServletRequest@63db1a9d]', 'POST', '2019-11-18 15:04:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c8c14fa38b78486296b3682c478969a3', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:19:31', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c8ea0ac5d8dd4a35827843c14ac13422', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 12:19:31', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c8f4e1823ac649d9b24985737463c449', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 14:15:14', null, '1');
INSERT INTO `t_operate_record` VALUES ('c91230775bc3451aaad4872bac34e731', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:13:43', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c917610f238847709cd784b0817c0940', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 06:51:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c9177b6236ba4a15b5d0f356bed18231', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 04:09:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c96508d9902f4c6385015df2ee59c0a3', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-17 15:27:37', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c97980a5eaca4232983f0778a6a12992', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 03:27:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c99121df36064cc896277c19b4f71c66', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 11:33:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('c9b50eb8ff8d4b5d9393e8d07a6d1242', '/user/status', '192.168.43.152', null, 'POST', '2019-11-20 12:07:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('c9e0fa8ec6a24fc49ae0ea090bacb118', '/UserApi/v1/editUserStatus', '192.168.43.152', '[User(id=67eb71f1091911eab9205c93a27933da, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'POST', '2019-11-18 15:21:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ca02fac01d3c4430801e7708cedab255', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 12:01:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ca041eef6cb34aec9aa453ee9a02b917', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:23:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ca3a472bf9004f3c8f425def75668370', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 02:56:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ca5c723286c24e5698ea4217dbfa0d86', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 15:07:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ca8580ec4bef4b94908663d4ef238807', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 14:07:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ca87483468cc4b409f2019d7268c1c2c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 13:19:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('caa3892619a5487aa35c006719e40c4a', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:35:19', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('cac6e330004345b88cbe122129496c36', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 12:49:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('cb6d1183a3b141899124332eedc8a156', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:06:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('cb74f3dfa00d4c709b3b085d10d6919b', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:00:56', null, '1');
INSERT INTO `t_operate_record` VALUES ('cc6bc6843f5f4b71b494a8530b9d7bd9', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:10:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('cc957fc26c814ceabe1edfda24f49ffc', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 05:34:59', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('ccd9e17efab342ddb2da43c1be49d0b7', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:21:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ccde6962c7a14afead18032331f4a788', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:42:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('cce98347b042433c92c3225ef4e11083', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:57:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('cd0a92a775eb48a0bf3f49b969f018cc', '/user/login', '192.168.1.102', null, 'POST', '2019-12-13 13:07:35', null, '1');
INSERT INTO `t_operate_record` VALUES ('cd0c0b23e4504916af65a79fff211d5c', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:28:30', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('cd1582fb466941228bef62253c00ea54', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:57:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('cd48580bbc5b4f9fbe7f49b02e8233b6', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:12:32', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('cdd32d1a5cbf483faa341a1cb2f52de1', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 15:09:20', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('cddb009cafac477d84dac55525b3f92a', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 15:13:46', null, '1');
INSERT INTO `t_operate_record` VALUES ('ce3ceea89e324c5597d50817b118c114', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:31:47', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ce3d41dc5c364ba8af10d8ed732b5837', '/user/list', '192.168.43.152', null, 'GET', '2020-02-19 03:50:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ce64acd51b514cf7a22f5c690d3117cf', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:57:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ce715fec478240088cd2cc70facd3718', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2020-02-19 03:53:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ce74a709b04249748622d97b3fef5674', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 14:18:53', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('ce8f431496484b42a3ff0b8fe9a9c775', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:04:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ce96966bb03b4e7886863f728b16d66c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-27 14:02:34', null, '1');
INSERT INTO `t_operate_record` VALUES ('ce9b8e9384064751ae59b505007a30e5', '/course/add', '192.168.43.152', null, 'POST', '2019-11-25 13:43:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('cec7f1c0fb7e4bed816c266a5e72a125', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 08:40:09', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ced72dbe8f084076976239d8a39b1e39', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 12:49:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('cf080ed0a61d4191b52458a862cae0df', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2020-02-18 14:20:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('cf23c09f504345b5af8c2ac784256ab9', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 13:20:55', null, '1');
INSERT INTO `t_operate_record` VALUES ('cf24f590bf19419c86d10d781ecc99a0', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 05:52:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('cf4dd5834d694308b4a290f91b36c660', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 15:13:53', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('cf7e122d33da475ab3ce42a092b82176', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 13:52:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('cfdf0e1868714f5eb3a5620066fb8675', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:18:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('cffa741a36924f42b9be73a193593b77', '/user/list', '192.168.43.152', null, 'GET', '2019-12-14 08:32:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d03bb4e641234b4ba6b74c276c8db10b', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-19 05:06:14', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d052b3ba0a3f4699b7896e0af42222aa', '/course/center', '192.168.1.102', null, 'GET', '2019-12-13 15:00:18', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('d0570011e9c44ed2b2a5db9271854a7b', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 13:08:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d05b9356fe734150a414888151d9e0d3', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 01:33:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d06fd8db59d34f148dcad740e24ac760', '/user/list', '192.168.1.102', null, 'GET', '2019-12-14 13:17:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d07a872046b441e4a7d4a27f0bd7985c', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 08:05:52', null, '1');
INSERT INTO `t_operate_record` VALUES ('d0837c4cc85d4b998bad7bf2926fb89c', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 15:36:17', null, '1');
INSERT INTO `t_operate_record` VALUES ('d08b9d23539e4c3ca0bd48eab1770318', '/perms/list', '192.168.43.152', null, 'GET', '2019-11-23 09:31:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d08dae39de7843058ecda98bd2122e6f', '/clazz/delete', '192.168.43.152', null, 'POST', '2019-12-12 13:44:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d0a401265b0d472aaa7dee670aa5e628', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 11:06:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d0a82d83dc704ab88de3e0f1345634ad', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:02:50', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d0c74f5b9d71492aa6ec2437a2fe6209', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:51:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d0d4afc757934bb2a6d41e164ccc35ac', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 05:04:29', null, '1');
INSERT INTO `t_operate_record` VALUES ('d0ff436ac3e149999a2e216e66f95f12', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 11:13:28', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d13bc05cc6a042da82d15f8008b18763', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 04:16:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d15254a2641342a8bc2e18103a9426af', '/dict/add', '192.168.43.152', null, 'POST', '2019-11-23 12:59:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d160943646234fd483cc287abee572e7', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-17 15:17:43', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d18512d87a5b48fa99fd5cc108853d97', '/teacher/add', '192.168.43.152', null, 'POST', '2019-11-24 15:20:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d198802abf294092a6a2caae53a9378a', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:24:55', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d19c0eb6114444abb99bd26f56a44e26', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 14:21:09', 'b5bfae4837594015ab1062887329bd97', '1');
INSERT INTO `t_operate_record` VALUES ('d1a6a8256bf24bdfb15fc3ac96c8a25e', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 15:06:32', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d1c7743a863e4efc995f1940bfe445ac', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:28:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d1e7f3d52fdd47e889584098a206f94f', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:49:33', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d2019ffc6f074175b1e5a43d2aab4860', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:34:38', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('d20c1bf76711437a9dc472afaf4d1ae6', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:29:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d22f2a5623c2452fa013de737d3666ee', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 02:20:42', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d23b6dca68984b86a05135ab0ef1bb0c', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 04:14:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d269244db19544058dadda85b9b0a0d9', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-24 01:34:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d2868afec82e4818ac1ed20539b74621', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:00:06', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('d28d65bccd9340839f48c96ae68f1285', '/dict/add', '192.168.43.152', null, 'POST', '2019-11-23 13:01:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d295edc421ff41fa88317b59774af9d3', '/sys/findUserLoginTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:55:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d29f4e4c31c74beebf60dca5f2c21510', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 06:15:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d29f9e4d859d4c4392e1fb31123c7240', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 15:13:07', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d2a41c079e004ffe9372034c954f7d18', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-23 03:26:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d2b3f17d30634ab993283deae8eb41ee', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-12-12 12:43:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d2be9a88fcd640ebbc9efc29be7f2e30', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 13:13:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d2cc51cbeef64ec8adf59b627651ff4c', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:04:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d2d5ce7a37474b558b53b232bb7a1b59', '/user/login', '192.168.43.152', null, 'POST', '2019-11-28 12:53:15', null, '1');
INSERT INTO `t_operate_record` VALUES ('d2d8fef33792485a99558abc4a673141', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 02:56:45', null, '1');
INSERT INTO `t_operate_record` VALUES ('d2faab7b9c564608883fdf10706dfd65', '/user/list', '192.168.43.152', null, 'GET', '2019-12-14 08:32:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d300000768264df387befc3d84cb5e8b', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@71bf434c, org.apache.shiro.web.servlet.ShiroHttpServletRequest@6ecf0afd]', 'POST', '2019-11-19 12:19:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d307dcffd77f4bfe9dca50c13130dba8', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:55:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d34bb9ce7ed44e71ad7250f0a6ecb5d9', '/user/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@75ca9eb0, org.apache.shiro.web.servlet.ShiroHttpServletRequest@6355ebe3]', 'POST', '2019-11-19 15:12:35', null, '1');
INSERT INTO `t_operate_record` VALUES ('d358a539534a4c84a6583f17679a5544', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:53:50', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('d378ea0c26f54f63ba05d9ff1f5e498e', '/role/add', '192.168.43.152', null, 'POST', '2019-11-24 01:34:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d379e8247ebd4d61879a66f31d0f5d36', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:37:04', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d3806ee32ae04c809edf5ed4d036555b', '/user/list', '192.168.43.152', null, 'GET', '2020-02-19 03:26:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d385095b365840c39112e0f105863d0e', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 05:22:24', null, '1');
INSERT INTO `t_operate_record` VALUES ('d3a2fdc3b2c14c7099019bdeb8897541', '/course/mycourse', '192.168.43.152', null, 'GET', '2020-02-16 06:08:07', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d3be0839af4b4f88b3a0f80b0851e8c4', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 15:09:56', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('d3c34fc70a7b455093ce1d36a750435d', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 08:30:25', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d3c8355e0a8549d9b0706f61ae3f7763', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:11:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d40d96b33d174871a8d8aa01f01eb135', '/user/list', '192.168.1.102', null, 'GET', '2019-12-13 14:37:29', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d41ec8b78e31493e917fdbc322bdb8e5', '/institute/list', '192.168.43.152', null, 'GET', '2020-02-15 04:13:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d49227d3fe244d68baec050320d84675', '/course/choice', '192.168.43.152', null, 'GET', '2019-12-14 08:32:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d4abce1845834008b8512a00ca6073db', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:29:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d4ad55e6dc2e4a19a889a7343403c87c', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 03:43:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d4dad844e5a9425d9964b50224171bac', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 15:15:38', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d4fe1f82679646e393223b5711d09a84', '/course/list', '192.168.43.152', null, 'GET', '2019-12-12 13:31:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d545908ff9884e68827a64b0619067e5', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 02:13:01', '3e5dfa87593e4a44b8212eb3866aefdb', '1');
INSERT INTO `t_operate_record` VALUES ('d552654ef60544e9a5a5e2276170f4e0', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 12:53:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d5915a42628348d39c353a0b5aca9533', '/grade/update', '192.168.1.102', null, 'POST', '2019-12-13 15:00:18', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('d5a82145f4384893ad235332c3156d6c', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:27:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d5da906847204d49a98c959cceed582b', '/user/login', '192.168.43.152', null, 'GET', '2020-02-17 15:05:16', null, '0');
INSERT INTO `t_operate_record` VALUES ('d5de965a279442e1a6c6aeef7c3b5e1c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 05:38:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d5e4caeeb00f4635bce2fb88c7349987', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 06:48:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d5f0ff4c447d4967b7666f172a3b2dd4', '/course/add', '192.168.43.152', null, 'POST', '2019-12-12 13:31:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d5fe001839e0478bb9223c6501d4c68b', '/teacher/findAllTeacher', '192.168.43.1', null, 'GET', '2019-11-28 14:44:10', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d61f9597028e480fad2e2175f49e3c83', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:37:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d62d8a5c46414fae814ed73d936b5135', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:26:01', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d63b23e0941d43eb890887564718c5e1', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 12:56:09', null, '1');
INSERT INTO `t_operate_record` VALUES ('d64ff846c4ce40d1a7151952cf254a24', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:20:08', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('d6690c2a2f694e2680c4abd71cdfea6b', '/user/delete', '192.168.1.102', null, 'POST', '2019-12-13 14:43:00', 'fe8147e10e454b259705d10d7514f2ac', '0');
INSERT INTO `t_operate_record` VALUES ('d6933417a0e344d9a136150cb2265a66', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:28:01', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('d6d2cc43773745bbbbfde14fa7b3705f', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:34:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d6f75284329c4687b5c3172905849853', '/course/list', '192.168.43.152', null, 'GET', '2019-12-12 13:38:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d701436204b94c888011f34dbb081077', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-23 14:19:33', null, '1');
INSERT INTO `t_operate_record` VALUES ('d709312ff9904777a996c1057f2cc2a8', '/user/login', '192.168.43.152', null, 'GET', '2019-11-30 05:24:30', null, '0');
INSERT INTO `t_operate_record` VALUES ('d723fa16c6e64f1c802e176ebe96ad95', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 10:33:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d729390fa70c42479fea32f98638e611', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 04:06:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d73d6b8b24284116a74e6015535e2d88', '/user/add', '192.168.43.152', null, 'POST', '2019-11-21 12:56:53', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('d74c71bb78694186a077db49bd4c7558', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@4574da91, org.apache.shiro.web.servlet.ShiroHttpServletRequest@34df2bed]', 'POST', '2019-11-18 15:19:59', null, '1');
INSERT INTO `t_operate_record` VALUES ('d75d0e10b32d440f986ac623fdbb9cd8', '/major/list', '192.168.43.152', null, 'GET', '2019-12-12 13:31:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d76790efc5124ab2bfa0388a6db0c753', '/user/list', '192.168.43.152', null, 'GET', '2020-02-19 03:39:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d77aae616f324f6baa9b5410b9952dbe', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 11:03:46', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d77e08e1a4e04172b13da7162dcf3791', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:23:11', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d7834edbd6624ac5920256d82495db77', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:48:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d7923f57e311457c9b7c767402d4c9c5', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 05:56:56', null, '1');
INSERT INTO `t_operate_record` VALUES ('d79ede19f6004f3fb0acfbd6e172aeb0', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 14:18:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d7a715fb254640f6ae14577560cae3c7', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:08:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d7a80210323a401aa5f7edac95bead9b', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 03:35:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d7ac0c8d4590422fa69a1c95cfc79729', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 05:52:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d7c79ec553c146a4a5a746a02d446772', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:56:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d80bf4777e4645ab85369c6715d4c435', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:52:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d834e721baf14d4eaadb84b53ef0f018', '/user/login', '192.168.43.152', null, 'POST', '2020-02-19 03:26:21', null, '1');
INSERT INTO `t_operate_record` VALUES ('d840573a77de48878c1bce151cf36093', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:00:31', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d8565510785048a68c51adcf7f5f4382', '/course/list', '192.168.43.1', null, 'GET', '2019-11-28 14:44:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d860dd1de40d45a198ae5c1f285c8df1', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:08:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d861167f81d24dfdb1143c5fc0e9baae', '/student/add', '192.168.43.152', null, 'POST', '2019-12-12 12:41:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d8a34b2db6824adbaecb62ece18adb90', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 13:13:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d8bb49f483b9488190c7f6bfb89b0094', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2020-02-18 14:18:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d8c07272cd874f7aad2b69d91cda5b55', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 13:58:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d8cb71546b48401fbdb69e0b667726ef', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:06:37', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d8d748d9a4d441b08191abee05e640f0', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:35:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d8e21fc6a03a4a4f8ffe78e4ece91586', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 10:35:03', null, '1');
INSERT INTO `t_operate_record` VALUES ('d90e3d53910a45c5a3d363555e51a172', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:33:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d923336117b144d8b6eda48b3c3b0313', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-12-12 12:38:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d9402458f70c49da899845aad1160f5c', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:46:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d94ff116383d45f08deac930925e58f4', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:34:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d958c03049134b5e8e1642cf354fd045', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:54:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('d97d7a83d1074c9e8e8b7d5fb1088909', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 06:02:28', null, '1');
INSERT INTO `t_operate_record` VALUES ('d98408455f46462b896ce40d77294ff2', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-24 14:21:54', null, '1');
INSERT INTO `t_operate_record` VALUES ('d9ad28611ab842c4bea087aeeb91d054', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:49:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d9c33285ae914969be9c8971d4834be5', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2020-02-19 03:53:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('d9cdba6cae3a4275bea8ecd7e8df584f', '/user/login', '192.168.43.152', null, 'GET', '2020-02-16 12:31:42', null, '0');
INSERT INTO `t_operate_record` VALUES ('d9fffb82b13745908ffdc0406853ed82', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 01:45:12', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('da10820e49484038a1392195d51df46a', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:41:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('da55458ea7b94550874c9ae7cc7749e6', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 15:06:14', null, '1');
INSERT INTO `t_operate_record` VALUES ('daacfa10ef01461a990b3686adf26605', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 03:48:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('db0c2689aa684cd5b43d94837faeb519', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 04:11:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('db2cd5711e464d7dbff88c2ecda48be2', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 15:11:19', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('db306e35dfe84391bee09c8191748ed9', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:24:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('db328fcaea094b25bc8c4e0e49ac96f4', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:19:25', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('db62241a4bfd4d66bd7de23cca734582', '/paper/add', '192.168.43.152', null, 'POST', '2020-02-19 03:58:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('db67769e58734e9a948f3793ca2d127b', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 12:49:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('db68435e3cf74219989d442b203fcfd7', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 13:21:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('db783bc23509404a9d8591879f15e704', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:10:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('db9af1056cd1464094ecf3a35785d1b3', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:46:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dbe339b6defb4b51a73f73e1fe3fd96b', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 04:24:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dbeff64149704494a76c67273cc5d042', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:52:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dc14302a85cb4410abf7b5854fb4bd91', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:02:34', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('dc17aa311ebe4c01a71e85233cd562bc', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 14:11:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dc4852ecf1774185bfa3d5c6cb994ec9', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-28 12:57:26', '4f8f02dff98044ffb7f7dfbc8c57c596', '0');
INSERT INTO `t_operate_record` VALUES ('dc5283531d84474889af37726d94aa9b', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:15:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dc8eb54d5c794db28e0f2043f0441a18', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:05:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('dce663e6dd1342baac2a166284622f50', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 13:11:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dcf658ca25dd446da312498b1a64c35b', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:52:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dcfb3de42b68499c94077861c19177b6', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 11:20:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('dd35230bb5ee4f1cb7fcc4ab16b93d6c', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-17 15:13:35', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('dd370c43fee947f59f182f937d95e279', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 09:19:15', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('dd9a7930d9264fd18ae1c993de1d9fd2', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 01:44:01', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('dda3d160a0ae48caa9a4067caf075f4a', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:19:34', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('dde1e560be5743a69d8ebaa825d90e0a', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-19 03:33:28', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ddec84f3ae1f4fa7bf7e551d975f3aa3', '/course/mycourse', '192.168.43.152', null, 'GET', '2020-02-15 09:34:25', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('de023a96630c4087b875ba95f4601032', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 14:28:32', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('de0a5e75b4bf469e807626499edaae8f', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 13:21:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('de0d4b31765347da882cdeaa2fe7b150', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-12-12 13:34:49', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('de0d6aaf56494aea85fc075fa5c2fa52', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:37:26', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('de108875c8a34bc4801d1f75ad7814a0', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:06:03', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('de19a03dfaa1429396c47fbbc88f20c2', '/major/list', '192.168.43.152', null, 'GET', '2019-12-12 13:39:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('de60a86ab7764db59e9c4d5aec69e0e0', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:41:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('de6e32d0d5d34709a7c3ec80ac95c4cb', '/user/login', '192.168.43.152', null, 'POST', '2020-02-15 15:01:50', null, '1');
INSERT INTO `t_operate_record` VALUES ('de7e0abeeaf44a4c80c9db4bbfe15f20', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 09:28:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('de84879faebd4260bf458f1cec2c679a', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 12:32:21', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('de92605405bc4fee8b08dab52a918bc4', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 14:56:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dee38b9cf4fe41388d5dd6fee6c205d6', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:29:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dee96996c0d243d3bfad942e89c891d4', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:45:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('df2ffd811e2e45028ab6dbc41fe3c76d', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:30:33', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('df30583c611f4d03a5c30a3bcc0eda4c', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@52d9d75, org.apache.shiro.web.servlet.ShiroHttpServletRequest@7ec32363]', 'POST', '2019-11-18 13:52:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('df356850202d4b1a80bb47106f7731ca', '/course/center', '192.168.1.102', null, 'GET', '2019-12-13 15:10:23', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('df3fdedfed414dcf8e31c059780a71d7', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 06:48:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('df478cf6f257486b86d2a709bdbc1b11', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 04:09:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('df66c8b0244842b3a3f03717512886b4', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 13:29:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dfa17c50164c49aba50fd9d4b08d2635', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 12:38:15', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('dfa654d613954b26be242acbea30cd66', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:29:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('dfb7a242434d46a2a3b07b3947d09bb6', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 13:43:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dfc1bffbaf174e4cabc9a44567cf110a', '/user/login', '192.168.43.152', null, 'POST', '2020-02-19 03:32:30', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dfd071d6947047f0b14088e3bf0b8f11', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:08:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dfd5be04b83e4a3983196d60dea44ec3', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:51:51', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('dfe16e54907c4fefb5c7d143ef97c6ae', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:08:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('dffdb38a40cc409093f5aa58f487b82a', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 10:30:06', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e01e6a9ee289455481454a1cd040f8d0', '/role/list', '192.168.43.152', null, 'GET', '2020-02-18 12:29:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e03da21c41bf4f7dab5b2a6d99ffb218', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 03:35:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e05441ebf1214b92919300a4162d84fb', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:53:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e076d3d5ce864872b00844801613e63e', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:11:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e07e9152c00f4601a0c6f7faaf499d5e', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:26:03', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e081a2aa1e6040fba767253f2276b6b0', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-12-14 08:33:17', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('e099ecb28ff54576b64338077552b979', '/user/list', '192.168.43.152', null, 'GET', '2020-02-15 15:01:52', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e0a6f24fd1a74e81a956280d8f1915b6', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 05:26:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e0ab165c1a79473bb78999b9a548a437', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 11:06:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e0aed882b04f4256be387653c9c784ed', '/user/list', '192.168.43.152', null, 'GET', '2019-11-27 13:01:26', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e0dac56465a44bc5afbeeb9a15f1ddcf', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:49:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e0fed95d673f4071be0eb36655292877', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 13:01:16', '6289fb4f0f9311ea99ba5c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e1139e6fc27b474385f01e9bcffafd8e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:10:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e12a7e187a544c3ca152fdd1b007a589', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e13a8b191651400187002f86ccc812bf', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:55:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e15656aeca2949249d9b9c11b98b76fd', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:22:03', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e15a06f7a0ff45379095f10a4e01f711', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:32:43', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e1633eb3ff3945f686d24b1199b5c497', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:32:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e1afd49bab33416285dba15d58e9a8cc', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:23:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e1ebe3e8563545a8aa44312d89d24201', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:40:48', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e20606257538498a85fa97ac7c96534c', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 05:49:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e21504754f6b40359e1d5629f14eba0a', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:05:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e22c5f608551476b92e5c9633c76c461', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:12:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e23838c6fb6a49dbb337ddd489582e7e', '/user/login', '192.168.43.152', null, 'POST', '2020-02-19 03:57:22', null, '1');
INSERT INTO `t_operate_record` VALUES ('e2ab93c7e58040e6808ff4962a959e33', '/user/status', '192.168.43.152', null, 'POST', '2019-11-23 03:24:59', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('e2c9da81a00445a186088bcf1e431bad', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 06:03:51', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e2cc62d895aa480bb830a9efc18fc4ac', '/user/list', '192.168.43.152', null, 'GET', '2020-02-15 09:34:20', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e2d43779bf6045ec85a4250e4dbcb481', '/sys/findUserLoginTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:45:21', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('e2ead1b67c254b42b331f8f3d302816d', '/user/login', '192.168.43.152', null, 'POST', '2020-02-17 15:12:29', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e373c321f77541e9858bc28a2a9c9c77', '/grade/viewStudent', '192.168.43.152', null, 'GET', '2019-11-28 13:49:42', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('e37fc6e561614b2c879d2cf232a8a59e', '/user/login', '192.168.43.152', null, 'POST', '2019-11-27 13:42:47', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e3bda459a3e4488fb5102b6f1a85177d', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 14:11:18', null, '1');
INSERT INTO `t_operate_record` VALUES ('e40c35f7d0ac40faaa0bfb0cd39ecefc', '/sys/findUserReqTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:46:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e4162176fba44b03b7e14ae3c925c951', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:32:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e43a4186595c48218e624c704c0b9273', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 05:57:06', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e44976ece08e422d86802a840ee39d1b', '/user/uploadHander', '192.168.43.152', null, 'POST', '2019-11-21 14:55:21', null, '1');
INSERT INTO `t_operate_record` VALUES ('e4513fade7dd4ae6b4d0079d5bb9c3af', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:52:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e4635fd105db4793a314c4e11be3e7a9', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 15:05:00', null, '1');
INSERT INTO `t_operate_record` VALUES ('e4b77e221b9a42f3b77a8bbecab735e5', '/user/login', '192.168.43.152', null, 'POST', '2019-11-28 15:08:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e4ccdd57447d4214b8c1ce20e5f01bd7', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 01:45:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e510af04702f488e96c7918152b0e2de', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:12:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e5188d2857ee4e019ce9cfb860da18ea', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 14:28:33', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('e54b8acbb820454ab37344dc033b2c09', '/major/list', '192.168.43.152', null, 'GET', '2019-12-12 12:39:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e54e4ac035bb402795a4c27e050a23a5', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:41:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e5bc485d77c54c1cb68c2ebda7ee92dc', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 11:10:13', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e5c6781354e24e8985c499e1c878998c', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 05:47:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e617701421824317b69a5d5b6625533c', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:42:34', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e6195462356547848d22f8ad6235d946', '/user/login', '192.168.43.152', null, 'POST', '2020-02-19 04:53:11', null, '1');
INSERT INTO `t_operate_record` VALUES ('e6335af01bcb4a9d84383effe213755a', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-18 15:11:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e645d318746a474f8196d84f88c169c4', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 09:26:51', null, '1');
INSERT INTO `t_operate_record` VALUES ('e668b2cf740d4dfcba989841a578115a', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 12:38:15', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e6893f22d80f4971b917b9e8c0664c1f', '/sys/findUserReqTotal', '192.168.43.152', null, 'GET', '2019-12-11 14:10:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e69cdb3b3164468595b4f6b9d2c8ecc2', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:48:36', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e6a200d5581044898e1637548b918044', '/user/login', '192.168.43.152', null, 'GET', '2020-02-18 02:56:11', null, '0');
INSERT INTO `t_operate_record` VALUES ('e6bfa3496db04d8d97abb1352c882863', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:20:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e6d074580eef4cc3a80fa7291e3dca77', '/user/login', '192.168.43.152', null, 'POST', '2019-11-30 05:40:41', null, '1');
INSERT INTO `t_operate_record` VALUES ('e6d0f21a8d6448c08f792bc0668f1df4', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 15:15:53', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e70d2fdf9baa411087a26648962546d2', '/clazz/delete', '192.168.43.152', null, 'POST', '2020-02-19 04:53:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e71138d371d64c689076b95b920e0424', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 09:29:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e73d6ec303d043669233e832da73fee5', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 09:28:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e766e1f76058480a999507ab4ad984fb', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:17:52', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('e77f9f546a484dc79ce61c4b8b467694', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 12:18:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e7854e4bab1a4095bc8fc1180b8e7834', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2020-02-15 04:10:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e7a86aac268742e2a0c4c8fd3ada6815', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:53:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e7b704c6997f4bc5b17a1a0846c9e1f6', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 05:26:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e844518a56d7417abd0d0e20eee620d0', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:15:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e8779fd10f74497fafdf50213e489f49', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-19 15:39:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e88b40c0575a4ccc8eaa3c77f9303cf3', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:32:11', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('e89466056c3b4c99a3e956b4715cb8c2', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:34:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e89b0f48bc864195a928eb5ec29322a9', '/course/mycourse', '192.168.43.152', null, 'GET', '2019-11-26 14:56:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e8b9469c74b74e90ab5001af6782ce87', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 15:06:34', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e8ba5c4343994129b10a680255040af3', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:50:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e8cf0f2d7a494a7bb417f8c348732654', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:51:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e8e778e2017f41298b70e8d1ce830971', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:24:19', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e900ceeedda9495092fe49efe16b85ac', '/clazz/findAllClazz', '192.168.43.152', null, 'GET', '2019-11-24 12:49:42', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('e93bc8e5e15f4492af27e45b6d1d98b0', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:55:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e9418122f8c74c27b41f1bb710e70c83', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 08:35:16', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('e963c87c03be48d2bc4fb3deecf97cc5', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 06:00:55', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e98ac0cfbd6a44f4a4988ce95d3de123', '/user/add', '192.168.43.152', null, 'POST', '2019-12-11 14:17:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e991761f3af64a6c850e6b264aaa508d', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:54:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('e9962c2d86c24fa7b348dd3e649e702b', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 03:48:39', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e9e6d62dc5ac45a1a7e8caca962504fa', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 13:14:43', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('e9fb06fb1ccc4a4d9199431c6aeb1d3f', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:52:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ea1f673d0dab418a9fd2791dad69a57c', '/user/login', '192.168.43.152', null, 'POST', '2019-12-12 13:38:17', null, '1');
INSERT INTO `t_operate_record` VALUES ('ea31743a7b56444b9de4472da98d851c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-26 15:06:15', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ea31da37768f41c9b6d627ed3cb8ed54', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:12:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ea582355fdef4d61820bf4b388401277', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:17:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ea62bdbb69224cc78e41a5ada7257d16', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2020-02-18 14:22:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ea677bac3bdc4ab89ca300b31c8e1099', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 15:09:09', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ea814696cabf4decbaed3ac456487acb', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 13:13:42', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ea8292fb475348a2820d9442bb780626', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 05:45:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('eab35145be234ec0815766289970cd06', '/user/list', '192.168.43.152', null, 'GET', '2019-11-19 15:41:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('eac1b30374154c5badab8095d5fff970', '/user/delete', '192.168.43.152', null, 'POST', '2019-11-20 13:20:12', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('eacda858783d49d4ade6d469ebe33629', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 06:23:10', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('eb62357788534095b4ff4aba0070ffe3', '/user/delete', '192.168.1.102', null, 'POST', '2019-12-13 14:37:28', '032e7ac5fe4d45ff824c7cf125c70d3f', '0');
INSERT INTO `t_operate_record` VALUES ('eb682f8738d44341bc5635fd85ca970e', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:20:53', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ebcb408b72c84ee88977d950873fef74', '/paper/add', '192.168.43.152', null, 'POST', '2020-02-19 03:39:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ebcbb50c8dc648ba8a8a0176d4450bd5', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:48:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ebd5b7310be54655aecf8046bca2c074', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 12:54:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ebd7535929164e6c87891ebf6a6c9776', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:32:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ec0250b5fd404e1ca0d3a4836b8ea8ac', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:54:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ec10f56915e44dfb8340b38d31e4ef7f', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:37:56', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ec11280a3f9a4fddb3c286470654b5cd', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:24:59', '95dd55d0a8ae49af83d391ccd36b9a11', '1');
INSERT INTO `t_operate_record` VALUES ('ec3be58adbb143da84d8443f150c3674', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:54:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ec43a7b6c3e84f2e92f62b70916976cb', '/sys/findUserLoginTotal', '192.168.43.152', null, 'GET', '2019-12-11 14:10:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ec53fb54c5b24e03bf8fc26cd24226fe', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 03:29:24', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_operate_record` VALUES ('ec70a1fd2a7c4cd0b1a9a2c63ed41775', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:19:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ec7bedfbd2164420b02b1a80fdcf0820', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:19:59', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ec8f5cfeae224c6daa2ba8756b2a5507', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 11:49:21', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ecda2757a4e5423db2a2f0af60fd5efa', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:06:28', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('ece49c98e0034434a31e5a14b171cc7d', '/student/list', '192.168.43.152', null, 'GET', '2020-02-18 12:32:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ed1f0811976147498a0ec5a2c13a00c9', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:27:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ed4504050fce4bc2a40168d38cb240f1', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:57:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ed47227cd29245b4815cc8a7d05a681c', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-12-12 12:40:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ed65916e04c5409097a9a8ef80a7a952', '/LoginApi/v1/login', '192.168.43.152', null, 'GET', '2019-11-18 13:44:57', null, '0');
INSERT INTO `t_operate_record` VALUES ('ed8de6d4714e4c1faa0be4665d9d4e7d', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 09:57:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('eda195a74504481788a6feb17095ffc9', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 13:39:35', null, '1');
INSERT INTO `t_operate_record` VALUES ('edd4c0694ad5466ebfca2a720d4962e2', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 12:31:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('edf131644c9b4ede8b439acfea5e50fd', '/user/list', '192.168.43.152', null, 'GET', '2020-02-15 09:34:03', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('edf247a05bc048b1a40bc63e000cad41', '/major/list', '192.168.43.152', null, 'GET', '2019-11-24 05:46:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('edf8d0bc351f4965965500061266bae7', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 04:55:44', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ee08afa0097b4835ad3e96cc496d7482', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:44:11', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('ee383ef1d31e4c8f89021b1c118a6441', '/user/login', '192.168.43.152', null, 'POST', '2019-11-26 13:01:15', null, '1');
INSERT INTO `t_operate_record` VALUES ('ee50956c0edc4977b30e55fb665a3963', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 01:40:48', null, '1');
INSERT INTO `t_operate_record` VALUES ('ee5f01d96f4f4080aa9154b972b31e0e', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 15:09:09', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ee7fdd91be2d4857ad681f5198625f1c', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:05:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ee8ec5485ed7466bbebc7855fabb7158', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 05:00:57', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ef0ea4cec7f94d8182a007a5926476d1', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-19 03:33:28', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ef65a260c0a94063b90ff7d7e9c0f0c2', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2020-02-19 05:00:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ef8e40c1e90c4c3ba1a3bd531522b706', '/user/list', '192.168.43.152', null, 'GET', '2019-12-01 08:43:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('efa0812c6e9a4695a776159dc729ba3b', '/user/add', '192.168.43.152', null, 'POST', '2019-12-11 14:17:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('efa829c4c1f142f598adef1522b87e63', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:09:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('efb47d23fe9641269d00743b484d5ad1', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 13:21:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('efecd47f52fe419e80c112ea8142000b', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-17 14:09:37', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f00020e0168743099a0c501c5cf92ca6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 09:27:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f028f89da81e495689a5742d7138a3ca', '/grade/update', '192.168.43.152', null, 'POST', '2019-11-28 13:49:31', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('f04bfba7bec34c58a3b9110966961759', '/course/center', '192.168.1.102', null, 'GET', '2019-12-13 14:58:42', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('f04fb25fd15749c9a7cba1df1cc5204f', '/user/login', '192.168.43.152', null, 'POST', '2019-11-20 13:32:55', null, '1');
INSERT INTO `t_operate_record` VALUES ('f07c1291db7546ef9e0ec1f6768e8e3b', '/teacher/list', '192.168.43.152', null, 'GET', '2019-11-24 15:16:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f08d10c792d94348ac64946c3e912e6f', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 15:17:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f095da3b039744769ec8d332b7602479', '/course/center', '192.168.43.152', null, 'GET', '2019-11-28 13:32:26', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('f098135120eb4ff7bd7928edbf9c7b87', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 14:55:07', null, '1');
INSERT INTO `t_operate_record` VALUES ('f0a02f4b48d24b75b6653d79b8845293', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:02:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f0a1f600cb8e444697c98e4ab2c61a23', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 03:08:47', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f0a59c84e4134321a4a46ac621e6f0a7', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-19 03:35:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f0a6ef27d10144a6b518217e3fd39545', '/sys/findUserLoginTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:59:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f0aacfdc34a3448b98069ab8514e8450', '/role/perms', '192.168.43.152', null, 'POST', '2019-11-23 05:56:33', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f0de9e7b7d154188b1162e61b36965f6', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 06:32:43', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f0eb01bd967346deac654cfeeada6d18', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:31:41', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f100654041af4d6bbf44309b53bc37b6', '/user/list', '192.168.43.152', null, 'GET', '2019-11-24 02:02:31', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f10e3d127af4440d9e4fb064fb9117bb', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 05:00:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f1242c6c6b1c4736a57ae341b194a610', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-30 03:52:52', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f1296015543a4f2489d17bb15acceb72', '/course/delete', '192.168.43.152', null, 'POST', '2019-12-12 13:36:47', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('f1740b466032499a8b77c5004117e090', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:29:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f17bc4620d3e471f85cc7992409a05ee', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 03:15:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f1ae641cdaca4dd99510ef4beeaacc84', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 09:16:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f1b4d2608dec4a8e8ab9fe641f290e95', '/user/login', '0:0:0:0:0:0:0:1', null, 'GET', '2020-02-15 09:30:22', null, '0');
INSERT INTO `t_operate_record` VALUES ('f1bdfdb65f1c4477a9ccbc7b381a135f', '/role/findRolesPermisByRole', '192.168.43.152', null, 'GET', '2019-11-23 04:17:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f1c12f45bb9e4a99b1570fd21979d991', '/major/add', '192.168.43.152', null, 'POST', '2019-11-24 05:47:35', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('f1f1ccfcbc1349b6827e62e86c2825a1', '/LoginApi/v1/login', '192.168.43.152', '[admin, 1702a132e769a623c1adb78353fc9503, org.apache.catalina.session.StandardSessionFacade@1a3f217b, org.apache.shiro.web.servlet.ShiroHttpServletRequest@491657f4]', 'POST', '2019-11-18 15:11:44', null, '1');
INSERT INTO `t_operate_record` VALUES ('f21cc80df3f844939ebc53a6a1e91ea2', '/user/add', '192.168.43.152', null, 'POST', '2019-11-19 15:39:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f21f3cd608004bb7bd2f0d0b94ebf6c2', '/user/login', '192.168.1.102', null, 'POST', '2019-12-13 14:42:33', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f223c35d18654f0e8727fd4ef52b6711', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 14:17:04', '74013ffb091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f2368b5ed26548079998f3b55deaf318', '/course/add', '192.168.43.152', null, 'POST', '2019-11-30 05:48:46', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('f285ed5a3c7342b5ae9b9b25a31ac12a', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 13:11:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f289b52d106f4b5aadde194d6a7ce6d5', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:37:54', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f2b4dd166ba141fea80dd762a3cb56ae', '/teacher/findAllTeacher', '192.168.43.152', null, 'GET', '2019-11-25 13:43:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f2d53f73e42f4622b963a7613351d53b', '/user/login', '192.168.43.152', null, 'GET', '2020-02-16 03:47:17', null, '0');
INSERT INTO `t_operate_record` VALUES ('f2dcac796f794084a28a8ee9da210151', '/paper/add', '192.168.43.152', null, 'POST', '2020-02-19 03:36:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f2e1d96f6424425dbf9f9e0c52aa1b67', '/exam/delete', '192.168.43.152', null, 'POST', '2020-02-19 04:56:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f3179ec3e06e477cba4ccba5f69ee56d', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:34:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f31e2f79d6b248d5b0ee3fb46fc53bf7', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 14:36:10', null, '1');
INSERT INTO `t_operate_record` VALUES ('f327623c82144ecd99780921452bf10a', '/user/login', '192.168.43.152', null, 'GET', '2019-11-24 06:29:57', null, '0');
INSERT INTO `t_operate_record` VALUES ('f353299b6aa548feb10cf35a2e9bd60f', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:13:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f35500660de04d00b2a26d52d6247182', '/role/list', '192.168.43.152', null, 'GET', '2019-11-24 01:34:38', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f356acd454724f76a2ba6450b578ef69', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 14:49:02', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('f35bb4b6f7cc44f19e927739cef7adfd', '/dict/list', '192.168.43.152', null, 'GET', '2019-12-11 14:10:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f367314952854acc80ebb2dbb7320573', '/clazz/delete', '192.168.43.152', null, 'POST', '2020-02-19 04:55:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f36cebdb49e743f7afe3f4724d017952', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 05:46:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f378112db4044fd5a33e9efae769eb01', '/user/login', '192.168.43.152', null, 'POST', '2019-11-24 02:11:17', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f379170a3a034399b6557a5ee261f787', '/course/center', '192.168.1.102', null, 'GET', '2019-12-14 13:37:24', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('f37bdbb5fcea41e6aa51e8c63026a6e4', '/user/list', '192.168.43.152', null, 'GET', '2020-02-15 09:29:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f3c3034b06ef43c28b00fb8e35b38488', '/paper/add', '192.168.43.152', null, 'POST', '2020-02-19 03:52:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f3ce53538bcd419cbd680fc6527edc5c', '/institute/list', '192.168.43.152', null, 'GET', '2019-11-24 05:17:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f3df15f95f6e4a9997612c43357df6bb', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 05:24:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f3e838f0e95f48688e4c64869455c41d', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-24 14:22:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f3f4b13b746940a3bb7b431f7c8cadeb', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 14:38:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f3f706ef65924d9e947137a0d2a9681b', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 12:58:48', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f4371312f9eb4a5583c34f2e722d9b64', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 14:38:00', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f443f05f41874352bfb4edc494440f33', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 12:12:27', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f464e033aacf4642b9fdd49862eb327c', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:12:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f48f82b724024fefa5e040ce47f2963c', '/user/login', '192.168.43.152', null, 'GET', '2019-11-19 15:38:42', null, '0');
INSERT INTO `t_operate_record` VALUES ('f4cb811f9dc0423986fec887e32ac91b', '/course/list', '192.168.43.152', null, 'GET', '2019-11-25 13:49:21', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f4ce6910400546bc92572efde22cba20', '/user/status', '192.168.43.152', null, 'POST', '2019-12-14 08:31:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f4d147bc3ecd49b1a72758004934f02c', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-26 12:53:18', '6289fb4f0f9311ea99ba5c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f4d22a2337c646178a4d25fd85cd2a7c', '/dict/add', '192.168.43.152', null, 'POST', '2019-11-23 13:14:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f5003c97d8a043a68679abbdd16464a2', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 10:28:41', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f51fe4947bb344f1bf86ad42bbcc76d7', '/major/list', '192.168.43.152', null, 'GET', '2020-02-18 12:32:02', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f55fd62f555749069e41c38ac980551d', '/student/list', '192.168.43.152', null, 'GET', '2019-11-24 13:21:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f5846414fd3a4536b6fbe5cb3ed78f4b', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 05:52:24', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f593ebf48e9246b2b2d7785292973746', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 13:12:18', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f5dbdaa456a74d22b7450e3f3ac02907', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 05:31:57', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f5f13d215767423b8b37c7003f4ef428', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 04:10:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f61a13c676c5411ebedb0d42ceefa779', '/user/list', '192.168.43.152', null, 'GET', '2019-11-28 13:54:08', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f6305c8f062640ae9cf682b387b9d6f3', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 01:45:05', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f63e8b2998ac4406b2f0b55e72f87e7b', '/clazz/delete', '192.168.43.152', null, 'POST', '2019-12-12 12:58:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f63eed170b394f7eb38dd1ab1b321afe', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 06:37:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f65f71e5eea74754b3a890d82c01be38', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 14:52:04', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f66246de6da341c3861719dbf10ce183', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 08:06:49', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f662a779194d45d9a10332913869794a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 12:36:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f662dab1ce614a439cf357bae516c68c', '/user/login', '192.168.43.152', null, 'GET', '2020-02-18 02:56:11', null, '0');
INSERT INTO `t_operate_record` VALUES ('f68c2230c5e14c098f87bdc92c054521', '/user/list', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 15:14:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f6bc4a0755a54459943c2eb504bace46', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 14:54:34', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f6e56344ffc14f35a88c012d1e4900a9', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-17 14:09:23', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f72f8805176b41bdb6a5460e30b3c785', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 12:12:30', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f7401b711dc246d9b150fdd46e2eeda2', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:35:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f77155f25e3d46df888ed37029701ac7', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 13:10:12', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f7748a9834aa40649844516fe5140278', '/user/login', '192.168.43.152', null, 'POST', '2019-11-23 10:32:41', null, '1');
INSERT INTO `t_operate_record` VALUES ('f7a13aff666d4cf5b2a668e879ba1eaa', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-19 15:41:22', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f7c46104922e4f2199ee5defbd62e00d', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-12-12 12:58:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f7d65ba122184492adaeb72516a70f3b', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 06:01:05', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f7e979f384184fae90d590cd8c2620c5', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 14:11:08', null, '0');
INSERT INTO `t_operate_record` VALUES ('f820bdd53c0241f89771b0be899510ec', '/user/login', '192.168.43.1', null, 'POST', '2019-11-28 14:40:24', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f8507ec6374f40d09a152e7f5cd610ad', '/clazz/list', '192.168.43.152', null, 'GET', '2019-12-12 12:36:59', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f887b613d8184eda9eef80d3edd7ac64', '/user/list', '192.168.43.152', null, 'GET', '2020-02-18 14:36:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f8b5c0ea1d2842b391172fb2c292bc20', '/exam/record/add', '192.168.43.152', null, 'POST', '2020-02-18 11:53:44', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f8f3ece2d598453aab475d5f9c6607df', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:11:06', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f8f595c498474c11ae78e92bbd1a897b', '/user/login', '192.168.43.152', null, 'POST', '2019-12-14 08:33:06', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f91bd052e4d042e39f35df5133d4327e', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 06:27:21', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('f9393b08d6e4433ab7aa0aae1bf42e90', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 14:07:44', null, '1');
INSERT INTO `t_operate_record` VALUES ('f94597becd3e461a9694ef48afba7515', '/dict/list', '192.168.43.152', null, 'GET', '2019-12-14 08:30:00', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f9505a5f9e874be2bfb2f69fcc5c5db7', '/grade/viewStudent', '192.168.1.102', null, 'GET', '2019-12-13 15:02:17', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('f96827c7d3f34f6587990817901099ea', '/user/login', '192.168.43.152', null, 'POST', '2019-12-14 08:30:48', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('f9721a4905cc4a1d89064d3a94266601', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 14:12:32', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('f972ab817b814edcb500c8f4bc7b4d33', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 12:45:28', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f9aa1b5142bf40a89ee9556d74a99057', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 12:17:05', null, '1');
INSERT INTO `t_operate_record` VALUES ('f9ad1b19eea14ab1a8dc2c2681760b14', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 13:12:32', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('f9d8d55ac52549a99162cde14a7fff1d', '/user/update', '192.168.43.152', null, 'POST', '2019-11-22 14:14:44', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('fa062e37977e48218c000955b3c88cf6', '/user/login', '192.168.1.102', null, 'POST', '2019-12-14 13:37:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fa4f572b4d014a698b78e3e0647b4ac3', '/user/list', '192.168.43.152', null, 'GET', '2019-11-20 14:15:16', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fa6803d029d342158bcd8eea83ad5b6e', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 14:09:58', null, '1');
INSERT INTO `t_operate_record` VALUES ('fa7abd5f83b04cb0af8bc19c4b93739f', '/student/list', '192.168.43.152', null, 'GET', '2019-12-12 13:44:08', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fa9a262c0af34b6088e13584c08938db', '/major/findAllMajor', '192.168.43.152', null, 'GET', '2019-11-24 12:51:34', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fa9e01e32e8f4f80ac071351ec1cfa7a', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 14:07:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fabac4b99c124d4ea975a6aca8d22c7f', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-19 03:51:26', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('faef279d6f724906a123fa08d734de33', '/user/list', '192.168.43.152', null, 'GET', '2019-11-28 12:56:45', '4f8f02dff98044ffb7f7dfbc8c57c596', '1');
INSERT INTO `t_operate_record` VALUES ('fafe4e73958840b2a231153708735ab6', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 12:53:50', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fb222a1debd643be8c81278dc87b99aa', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-16 08:40:14', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('fb748c1b34e54d60a77eaadd15bfc187', '/course/list', '192.168.43.152', null, 'GET', '2019-11-30 05:45:19', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fb8af9055aef4165a3b724efd4cf6187', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-18 05:31:45', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('fb93080b4bd246589864d41c8f9285d4', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 08:33:56', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('fbae363cab69454d997662755233e1e2', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 12:01:14', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('fbe21fa11d574d75b606828495314fd3', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 06:51:25', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fbf235c8418146ff843586a98fb8c689', '/user/list', '192.168.43.152', null, 'GET', '2020-02-16 02:42:37', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('fc2b61cc0c67404d942a972de7670806', '/paper/add', '192.168.43.152', null, 'POST', '2020-02-19 03:53:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fc319cdc80e945fe8e9fd25dba7c8ebd', '/user/login', '192.168.43.152', null, 'POST', '2019-11-22 12:48:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fc349fbe321241a1bb85069274bf452b', '/role/findAllRoles', '192.168.43.152', null, 'GET', '2019-11-20 12:25:40', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fc6174829a4549c3aa1f765901947430', '/perms/findBasePermission', '192.168.43.152', null, 'GET', '2019-11-23 09:29:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fc94bb6959cc469c92448498fc378205', '/user/login', '192.168.43.152', null, 'POST', '2020-02-18 06:29:41', null, '1');
INSERT INTO `t_operate_record` VALUES ('fc98531e87ca4472a0094c8daecb311b', '/teacher/add', '192.168.43.152', null, 'POST', '2019-11-25 13:49:01', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fd3d7801c390403bb9910a9dee15855a', '/exam/list', '192.168.43.152', null, 'GET', '2020-02-17 15:27:33', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('fd47ede6030243f39a13c36102129635', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-16 09:42:41', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('fd6eaf42b5f543deb5ed8f52d5a95986', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-23 10:33:35', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fd918f35bd77442fbcb0df1c26766ccb', '/UserApi/v1/findUserByPage', '192.168.43.152', null, 'GET', '2019-11-18 15:04:31', '67eb71f1091911eab9205c93a27933da', '0');
INSERT INTO `t_operate_record` VALUES ('fda275ebdc3e4ed3859614dce845c7a5', '/user/login', '192.168.43.152', null, 'GET', '2020-02-16 14:18:13', null, '0');
INSERT INTO `t_operate_record` VALUES ('fda33e57409648eba6add9b5c564d2e7', '/user/login', '192.168.43.152', null, 'POST', '2019-11-21 14:15:42', null, '1');
INSERT INTO `t_operate_record` VALUES ('fdb7fbf02d9644a8a3c1a981e9d8809c', '/dict/list', '192.168.43.152', null, 'GET', '2019-11-23 13:54:46', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fdcb3c145d3b41609350740e19f72878', '/course/choice', '192.168.43.152', null, 'GET', '2019-11-26 15:34:14', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('fdee6bd0ea174a1fb8b1986821920e0a', '/course/mycourse', '192.168.1.102', null, 'GET', '2019-12-13 14:42:02', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('fdf2c1e0dc744c73813a53e611eb6c94', '/sys/operateRecord/list', '192.168.43.152', null, 'GET', '2019-11-23 15:18:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fe26ff85398b46298ebfecb5ded27f9e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-30 05:40:54', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fe290de5e3924ab29119319039dd3453', '/user/add', '192.168.43.152', null, 'POST', '2019-11-20 12:18:15', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fe4542184d644926b904f8b2dff7c2af', '/clazz/list', '192.168.43.152', null, 'GET', '2020-02-18 12:32:14', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fe5872f9662246898fee516cbf60a3b5', '/sys/findUserLoginTotal', '192.168.43.152', null, 'GET', '2019-12-11 13:45:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fe5fb9e808fb43aa9efd5fe284896e3f', '/UserApi/v1/findUserByPage', '192.168.43.152', '[1, 30, User(id=null, username=null, password=null, email=null, photoUrl=null, userType=null, enable=null, createTime=null, lastLoginTime=null, roleId=null, roleName=null, userPerms=null)]', 'GET', '2019-11-19 13:07:13', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fe8014de2b694d3ca6a0ccf3adef5f4b', '/institute/findAllInstitute', '192.168.43.152', null, 'GET', '2019-11-24 06:50:09', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('fe9da26eb59e42a8aa2dc75d24a63712', '/course/center', '192.168.43.152', null, 'GET', '2019-12-14 08:33:13', 'fe8147e10e454b259705d10d7514f2ac', '1');
INSERT INTO `t_operate_record` VALUES ('fede886001034a8899e83aef021ae391', '/role/list', '192.168.43.152', null, 'GET', '2019-11-23 04:08:27', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('feecec6b2a5942cbb65984dde24bab05', '/user/list', '192.168.43.152', null, 'GET', '2019-11-21 15:38:49', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ff167fbd135b4265b10eab9beee235e3', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-25 13:50:07', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ff1ed285ba994cdaac741392cc67dc51', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 11:37:22', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ff2b4a2c7f0644dfbd12c14ca2925cc4', '/user/login', '192.168.43.152', null, 'POST', '2020-02-15 04:07:57', null, '1');
INSERT INTO `t_operate_record` VALUES ('ff5a5ff97d314f34ae950668e71db129', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-16 11:03:58', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ff77355ac61c4d0fb4c73308ce550dbd', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 06:02:45', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ff783fa718244cbaa78436b05904bbf5', '/exam/getExamById', '192.168.43.152', null, 'GET', '2020-02-18 05:37:25', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ff96102dd72d4c34bce1b2c3a766dd1e', '/user/list', '192.168.43.152', null, 'GET', '2019-11-22 14:12:03', '95dd55d0a8ae49af83d391ccd36b9a11', '0');
INSERT INTO `t_operate_record` VALUES ('ff9c918a79a34add81e44d202217ea95', '/dict/findListByDictTypeCode', '192.168.43.152', null, 'GET', '2019-11-30 05:26:20', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ffa3733030074768b08908d9d912c464', '/paper/getPaperById', '192.168.43.152', null, 'GET', '2020-02-18 11:49:06', '032e7ac5fe4d45ff824c7cf125c70d3f', '1');
INSERT INTO `t_operate_record` VALUES ('ffdc84901cdc4f61bbb7b53128287974', '/user/list', '192.168.43.152', null, 'GET', '2019-11-23 03:37:58', '67eb71f1091911eab9205c93a27933da', '1');
INSERT INTO `t_operate_record` VALUES ('ffdcc275fc1146238dcc16475df98d24', '/user/login', '192.168.43.152', null, 'POST', '2020-02-16 11:03:41', '67eb71f1091911eab9205c93a27933da', '1');

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
INSERT INTO `t_perms` VALUES ('139595391c1b11ea83aa5c93a27933da', '统计登录', '/sys/findUserLoginTotal', '3', 'acea8c541c1a11ea83aa5c93a27933da', '85');
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
INSERT INTO `t_perms` VALUES ('43c818ae1c1b11ea83aa5c93a27933da', '统计请求', '/sys/findUserReqTotal', '3', 'acea8c541c1a11ea83aa5c93a27933da', '86');
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
INSERT INTO `t_perms` VALUES ('7cd5fc614fd811eaa4985c93a27933da', '考试管理', '/paper', '2', 'f75c6e824fd711eaa4985c93a27933da', '91');
INSERT INTO `t_perms` VALUES ('7dadb39f4fd711eaa4985c93a27933da', '我的考试', '/exam', '2', '2a8d713f0f9911ea99ba5c93a27933da', '90');
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
INSERT INTO `t_perms` VALUES ('acea8c541c1a11ea83aa5c93a27933da', '统计分析', '/sys/statistics', '2', '3dfc9c48091b11eab9205c93a27933da', '84');
INSERT INTO `t_perms` VALUES ('af5f93ba091e11eab9205c93a27933da', '增加学生', '/student/add', '3', '5ec1d332091e11eab9205c93a27933da', '29');
INSERT INTO `t_perms` VALUES ('afa5548c4fd811eaa4985c93a27933da', '题库管理', '/question', '2', 'f75c6e824fd711eaa4985c93a27933da', '92');
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
INSERT INTO `t_perms` VALUES ('f75c6e824fd711eaa4985c93a27933da', '考试管理', '/', '1', '0', '17');
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
INSERT INTO `t_role_perms` VALUES ('418b8b4f4fd911eaa4985c93a27933da', '1', 'f75c6e824fd711eaa4985c93a27933da');
INSERT INTO `t_role_perms` VALUES ('44c93a9609fb11ea9c4f5c93a27933da', '3', '2a8d713f0f9911ea99ba5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('4c365b7d09fb11ea9c4f5c93a27933da', '3', '4a4808370f9911ea99ba5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('4e320edfb92a4427b0634cc601f8f1cc', 'a4ea24e68fc342c2a52286702061a022', 'ba31aeb4091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('50a2d8f74fd911eaa4985c93a27933da', '1', '7cd5fc614fd811eaa4985c93a27933da');
INSERT INTO `t_role_perms` VALUES ('5afb7d638d724766a6519b4f275b2766', 'fb48455615e4408096340003109af746', 'd7fce144091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('5ce01e2151894c358478bdf75ed27bb9', 'fb48455615e4408096340003109af746', 'f5e9849a093611eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('6372b7044fd911eaa4985c93a27933da', '1', 'afa5548c4fd811eaa4985c93a27933da');
INSERT INTO `t_role_perms` VALUES ('70b7d0291c1b11ea83aa5c93a27933da', '1', 'acea8c541c1a11ea83aa5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('71d8582d986d4a91be402b734292dc98', 'fb48455615e4408096340003109af746', 'fc2eb41a091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('75f7ed994fd911eaa4985c93a27933da', '3', '7dadb39f4fd711eaa4985c93a27933da');
INSERT INTO `t_role_perms` VALUES ('763551a5937549a4843225d8e76e7c18', 'fb48455615e4408096340003109af746', 'a53b3939093711eaabbd5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('7919f3cae30240aba5cdc1be820d86ad', 'a4ea24e68fc342c2a52286702061a022', 'fc2eb41a091d11eab9205c93a27933da');
INSERT INTO `t_role_perms` VALUES ('7ccb8b1f1c1b11ea83aa5c93a27933da', '1', '139595391c1b11ea83aa5c93a27933da');
INSERT INTO `t_role_perms` VALUES ('81d690331c1b11ea83aa5c93a27933da', '1', '43c818ae1c1b11ea83aa5c93a27933da');
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
INSERT INTO `t_user` VALUES ('032e7ac5fe4d45ff824c7cf125c70d3f', '张三', 'd477887b0636e5d87f79cc25c99d7dc9', 'zs@qq.com', '/vue_shiro_photo/userImg/d8883ca3-8647-49e0-af32-596c5300305a.jpg', '1', '2019-11-24 13:21:33', '2020-02-19 05:05:55');
INSERT INTO `t_user` VALUES ('0d5a44e2e9eb487497ea539cd841e22f', '安妮', 'd477887b0636e5d87f79cc25c99d7dc9', 'anni@qq.com', null, '1', '2020-02-15 04:12:28', null);
INSERT INTO `t_user` VALUES ('14ea1023beac462e98ad743739b38f68', 'bb', 'd477887b0636e5d87f79cc25c99d7dc9', 'bb@qq.com', null, '1', '2019-11-24 02:06:44', null);
INSERT INTO `t_user` VALUES ('3e5dfa87593e4a44b8212eb3866aefdb', 'cc', 'd477887b0636e5d87f79cc25c99d7dc9', 'cc@qq.com', null, '1', '2019-11-24 02:09:30', '2019-11-24 02:12:01');
INSERT INTO `t_user` VALUES ('4f8f02dff98044ffb7f7dfbc8c57c596', '李老师', 'd477887b0636e5d87f79cc25c99d7dc9', null, null, '1', '2019-11-25 22:53:58', '2019-12-13 15:10:12');
INSERT INTO `t_user` VALUES ('5603b25e56974e3399e4609477e23c56', '安安', 'd477887b0636e5d87f79cc25c99d7dc9', null, null, '1', '2019-12-12 12:41:05', null);
INSERT INTO `t_user` VALUES ('67eb71f1091911eab9205c93a27933da', 'admin', '10a1b727c497d49a85bfff7351f1a4c4', 'admin@163.com', '/vue_shiro_photo/userImg/57c75417-4dd3-4de8-9b06-313da6356fb9.jpg', '1', '2019-11-18 23:17:12', '2020-02-19 05:05:29');
INSERT INTO `t_user` VALUES ('74013ffb091911eab9205c93a27933da', 'tom', 'd477887b0636e5d87f79cc25c99d7dc9', 'tom@163.com', '/vue_shiro_photo/userImg/1fa36717-8aeb-4ba3-9f3e-a17cc08b45a6.jpg', '1', '2019-11-11 23:17:19', '2019-11-23 14:17:02');
INSERT INTO `t_user` VALUES ('7b0272d267be43f097af993a4d8bb467', 'ff', 'd477887b0636e5d87f79cc25c99d7dc9', 'ff@qq.com', '/vue_shiro_photo/userImg/38ac6782-a958-4726-a3a2-3efd88d1e9b4.jpg', '1', '2019-11-23 03:27:16', '2019-11-23 14:19:46');
INSERT INTO `t_user` VALUES ('7bc5259b091911eab9205c93a27933da', 'student', 'd477887b0636e5d87f79cc25c99d7dc9', 'student@163.com', '/vue_shiro_photo/userImg/6ba3aca5-3bb0-4fcd-a618-81c17d9f0d27.jpg', '0', '2019-11-11 23:18:26', '2019-11-23 14:18:53');
INSERT INTO `t_user` VALUES ('89685bd813b1437cab9aef7bde7637ba', '王五', 'd477887b0636e5d87f79cc25c99d7dc9', null, null, '1', '2019-11-24 14:23:38', null);
INSERT INTO `t_user` VALUES ('95dd55d0a8ae49af83d391ccd36b9a11', 'rr', 'd477887b0636e5d87f79cc25c99d7dc9', 'cc@qq.com', '/vue_shiro_photo/userImg/107c11be-a14c-4917-8f69-4d3828a05af6.jpg', '1', '2019-11-21 12:57:18', '2019-11-23 14:17:36');
INSERT INTO `t_user` VALUES ('9a55056084e14cd58b63bdc38e7b6096', 'aa', 'd477887b0636e5d87f79cc25c99d7dc9', 'aa@qq.com', null, '1', '2019-11-24 02:04:29', null);
INSERT INTO `t_user` VALUES ('caf2659b709e46679244603a5b1a5c41', '李四', 'd477887b0636e5d87f79cc25c99d7dc9', null, null, '1', '2019-11-24 13:30:07', null);
INSERT INTO `t_user` VALUES ('dbca8e5caec24c6ca4b3dccd053f9102', '高老师', 'd477887b0636e5d87f79cc25c99d7dc9', null, null, '1', '2019-11-25 22:54:04', null);
INSERT INTO `t_user` VALUES ('fe8147e10e454b259705d10d7514f2ac', '张老师', 'd477887b0636e5d87f79cc25c99d7dc9', null, null, '1', '2019-11-25 22:54:07', '2019-12-14 13:46:23');

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
INSERT INTO `t_user_role` VALUES ('5158bf96412b4124b7daca416b6fbf2f', '5603b25e56974e3399e4609477e23c56', '3');
INSERT INTO `t_user_role` VALUES ('52008751091911eab9205c93a27933da', '7bc5259b091911eab9205c93a27933da', '3');
INSERT INTO `t_user_role` VALUES ('54fd3f629db34c32a61980e8cc19f619', '0d5a44e2e9eb487497ea539cd841e22f', '1');
INSERT INTO `t_user_role` VALUES ('67a0e980cd7840f2a7c83ac85079efa8', '7b0272d267be43f097af993a4d8bb467', '1');
INSERT INTO `t_user_role` VALUES ('6e5a9081cc5d4f1687efc92c08d7376c', '598cd43a68ea4200ba2f58260b87e761', '2');
INSERT INTO `t_user_role` VALUES ('8ad392e10f9311ea99ba5c93a27933da', '532782800f9311ea99ba5c93a27933da', '2');
INSERT INTO `t_user_role` VALUES ('905d4cf964d646ce979d264ffe291ddd', 'e334e21744924b0eb312b496f9ff3794', '2');
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
DROP TRIGGER IF EXISTS `question_paper_trigger`;
DELIMITER ;;
CREATE TRIGGER `question_paper_trigger` BEFORE INSERT ON `question_paper` FOR EACH ROW BEGIN
	SET new.ID=REPLACE(UUID(),'-','');
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
