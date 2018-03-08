/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50543
Source Host           : localhost:3306
Source Database       : rentyisha

Target Server Type    : MYSQL
Target Server Version : 50543
File Encoding         : 65001

Date: 2017-05-26 10:11:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin1', '123');

-- ----------------------------
-- Table structure for `cart_detail`
-- ----------------------------
DROP TABLE IF EXISTS `cart_detail`;
CREATE TABLE `cart_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `gid` varchar(255) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8EA0D650961DC18` (`cart_id`),
  KEY `FK8EA0D650E859CEDD` (`gid`),
  CONSTRAINT `cart_detail_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `ug_cart` (`id`),
  CONSTRAINT `cart_detail_ibfk_2` FOREIGN KEY (`gid`) REFERENCES `good` (`gid`),
  CONSTRAINT `FK8EA0D650961DC18` FOREIGN KEY (`cart_id`) REFERENCES `ug_cart` (`id`),
  CONSTRAINT `FK8EA0D650E859CEDD` FOREIGN KEY (`gid`) REFERENCES `good` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart_detail
-- ----------------------------
INSERT INTO `cart_detail` VALUES ('1', '4', '0011', 'S');
INSERT INTO `cart_detail` VALUES ('2', '5', '0012', 'S');
INSERT INTO `cart_detail` VALUES ('11', '14', '0022', 'S');
INSERT INTO `cart_detail` VALUES ('12', '15', '0025', 'S');
INSERT INTO `cart_detail` VALUES ('14', '17', '0022', 'S');
INSERT INTO `cart_detail` VALUES ('16', '19', '0017', 'S');
INSERT INTO `cart_detail` VALUES ('17', '20', '0026', 'S');
INSERT INTO `cart_detail` VALUES ('18', '27', '0026', 'S');
INSERT INTO `cart_detail` VALUES ('19', '28', '0014', 'S');
INSERT INTO `cart_detail` VALUES ('20', '29', '0007', 'S');
INSERT INTO `cart_detail` VALUES ('21', '30', '0021', 'S');
INSERT INTO `cart_detail` VALUES ('22', '31', '0016', 'S');
INSERT INTO `cart_detail` VALUES ('24', '33', '0017', 'S');
INSERT INTO `cart_detail` VALUES ('25', '34', '0001', 'L');
INSERT INTO `cart_detail` VALUES ('26', '35', '0001', 'L');

-- ----------------------------
-- Table structure for `catagory`
-- ----------------------------
DROP TABLE IF EXISTS `catagory`;
CREATE TABLE `catagory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of catagory
-- ----------------------------
INSERT INTO `catagory` VALUES ('1', '晚礼服');
INSERT INTO `catagory` VALUES ('2', '婚纱');
INSERT INTO `catagory` VALUES ('3', '西服');
INSERT INTO `catagory` VALUES ('4', '学士服');
INSERT INTO `catagory` VALUES ('5', '民国服');
INSERT INTO `catagory` VALUES ('6', '民族服');
INSERT INTO `catagory` VALUES ('7', '古代服装');

-- ----------------------------
-- Table structure for `good`
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `gid` varchar(255) NOT NULL,
  `gname` varchar(255) DEFAULT NULL,
  `imgAddr` varchar(255) DEFAULT NULL,
  `yaMoney` double NOT NULL,
  `zuMoney` double NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `detail` text,
  `proAddr` varchar(255) DEFAULT NULL,
  `rest` bigint(11) DEFAULT NULL,
  `money` double DEFAULT NULL,
  PRIMARY KEY (`gid`),
  KEY `FK3080BDFA113F16` (`cid`),
  CONSTRAINT `FK3080BDFA113F16` FOREIGN KEY (`cid`) REFERENCES `catagory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES ('0001', '时尚绚丽的职业装晚礼服', 'wanlifu1.png', '500', '500', '1', null, '2017-04-29', '\r\n    袖长: 五分袖\r\n    货号: 257\r\n    品牌: 天使嫁衣\r\n    礼服摆型: 蓬蓬裙\r\n    颜色分类: 浅蓝色\r\n    尺码: XXL XXXL XS S M L XL\r\n    上市年份季节: 2017年春季\r\n    适用场景: 婚礼 成人礼 聚会 公司年会 表演\r\n    材质: 网纱\r\n    流行元素: 绑带\r\n    风格: 韩版\r\n    适用年龄: 18-25周岁\r\n    腰型: 中腰\r\n    款式: 一字肩\r\n    服装款式细节: 花朵\r\n    花朵: 非手工花\r\n    袖型: 喇叭袖\r\n    礼服裙长: 长裙\r\n\r\n    材质: 网纱\r\n    流行元素: 绑带\r\n    风格: 韩版\r\n    适用年龄: 18-25周岁\r\n    腰型: 中腰\r\n    款式: 一字肩\r\n    服装款式细节: 花朵\r\n    花朵: 非手工花\r\n    袖型: 喇叭袖\r\n    礼服裙长: 长裙\r\n    品牌: 天使嫁衣', '浙江绍兴', '1000', '500');
INSERT INTO `good` VALUES ('0002', '天使嫁衣 花仙子 蓝色手工花瓣新娘婚纱敬酒服晚宴年会礼服257 ', 'wanlifu2.png', '10', '369', '1', '思朵', '2017-04-29', '材质成分: 聚对苯二甲酸乙二酯(涤纶)100%\r\n袖长: 无袖\r\n货号: 80572\r\n品牌: 思朵\r\n礼服摆型: 蓬蓬裙\r\n颜色分类: 粉色\r\n尺码: S M L XL XXL\r\n上市年份季节: 2016年夏季\r\n适用场景: 婚礼 成人礼 聚会 公司年会 表演 日常 约会\r\n流行元素: 拉链\r\n风格: 知性\r\n适用年龄: 26岁-35岁\r\n腰型: 中腰\r\n款式: 深V领\r\n服装款式细节: 刺绣\r\n服饰工艺: 机绣\r\n袖型: 常规\r\n图案: 纯色\r\n礼服裙长: 短裙', '广东东莞', '1000', '369');
INSERT INTO `good` VALUES ('0003', '姐妹裙晚礼服韩式', 'wanlifu3.jpg', '10', '200', '1', '爱美', '2017-04-29', '袖型: 其他袖型 	细节: 缎带 	风格: 文艺\r\n尺码: XS,XXS号,XXL,S,L,M,XL 	腰型: 中腰 	场合: 聚会\r\n裙长: 中裙（91-105cm） 	材质: 其他 	摆型: 短裙摆\r\n颜色: 843香槟色C短款,843香槟色A中长款,843香槟色B中长款,843香槟色E中长款,843香槟色E短款,843香槟色D短款,843香槟色A短款,843香槟色C中长款,843香槟色F中长款,843香槟色D中长款,843香槟色B短款,843香槟色F短款 	元素: 透视,纯色 	领型: 其他领型\r\n图案: 纯色 	季节: 春夏 	袖长: 长袖', '江苏南京', '1000', '200');
INSERT INTO `good` VALUES ('0004', '公司聚会宴会小礼服香槟色连衣裙女显瘦小礼服', 'wanlifu4.jpg', '10', '208', '1', '艾薇', '2017-04-30', '袖型: 常规袖 	细节: 花朵 	风格: 性感,名媛\r\n尺码: XS,XXL,S,L,M,XL 	腰型: 中腰 	场合: 宴会/年会\r\n裙长: 短裙（76-90cm） 	材质: 其他 	摆型: 短裙摆\r\n颜色: 香槟色 	领型: 一字领 	图案: 花色\r\n季节: 夏季 	袖长: 短袖\r\n', '浙江杭州', '1000', '208');
INSERT INTO `good` VALUES ('0005', '伴娘服短款2017新款夏宴会修身香槟色小礼服显瘦韩版女晚礼服', 'wanlifu5.jpg', '10', '198', '1', '埃文', '2017-04-30', '袖型: 其他袖型 	细节: 缎带 	风格: 小清新,甜美,韩系\r\n尺码: XXL,S,L,M,XL 	腰型: 中腰 	场合: 聚会\r\n裙长: 短裙（76-90cm） 	材质: 其他 	摆型: 短裙摆\r\n颜色: 香槟色 	元素: 蕾丝 	领型: 圆领\r\n图案: 纯色 	季节: 夏季 	袖长: 无袖', '江苏苏州', '1000', '198');
INSERT INTO `good` VALUES ('0006', '名门新娘红色婚纱礼服 新娘齐地2016新款一字肩婚纱红色冬季2398 ', 'jinjiufu1.png', '100', '498', '2', '名门', '2017-05-02', 'jinjiufu1detail1.jpg,jinjiufu1detail2.jpg,jinjiufu1detail3.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '498');
INSERT INTO `good` VALUES ('0007', '名门新娘婚纱礼服2015秋冬 红色婚纱 梦幻花瓣大拖尾2548 ', 'jinjiufu2.png', '100', '588', '2', null, '2017-05-02', 'jinjiufu2detail1.jpg,jinjiufu2detail2.jpg,jinjiufu2detail4.jpg,jinjiufu2detail5.jpg,jinjiufu2detail6.jpg,jinjiufu2detail6.jpg,jinjiufu2detail7.jpg,jinjiufu2detail8.jpg,jinjiufu2detail3.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '588');
INSERT INTO `good` VALUES ('0008', '名门新娘红色婚纱礼服 新娘齐地2016新款 抹胸婚纱红色冬季2399 ', 'jinjiufu3.png', '100', '688', '2', '名门', '2017-05-02', 'jinjijufu3detail1.jpg,jinjiufu3detail2.jpg,jinjiufu3detail3.jpg,jinjiufu3detail4.jpg,jinjiufu3detail5.jpg,jinjiufu3detail6.jpg,jinjiufu3detail7.jpg,jinjiufu3detail8.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '688');
INSERT INTO `good` VALUES ('0009', '名门新娘婚纱礼服敬酒服2016新款秋冬 红色结婚长款礼服宴会238', 'jinjiufu4.png', '100', '298', '2', '名门', '2017-05-02', 'jinjijufu4detail1.jpg,jinjiufu4detail2.jpg,jinjiufu4detail3.jpg,jinjiufu4detail4.jpg,jinjiufu4detail5.jpg,jinjiufu4detail6.jpg,jinjiufu4detail7.jpg,jinjiufu4detail8.jpg,jinjiufu4detail9.jpg,jinjiufu4detail10.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '688');
INSERT INTO `good` VALUES ('0010', '名门新娘婚纱礼服 2017红色敬酒服 结婚短款年会礼服女宴会2455', 'jinjiufu5.png', '100', '288', '2', '名门', '2017-05-02', 'jinjiufu5detail1.jpg,jinjiufu5detail2.jpg,jinjiufu5detail3.jpg,jinjiufu5detail4.jpg,jinjiufu5detail5.jpg,jinjiufu5detail6.jpg,jinjiufu5detail7.jpg,jinjiufu5detail8.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '288');
INSERT INTO `good` VALUES ('0011', '名门新娘婚纱礼服 2017红色敬酒服 结婚长款年会礼服女宴会2460 ', 'jinjiufu6.png', '100', '598', '2', null, '2017-05-02', 'jinjiufu6detail1.jpg,jinjiufu6detail2.jpg,jinjiufu6detail3.jpg,jinjiufu6detail4.jpg,jinjiufu6detail4.jpg,jinjiufu6detail5.jpg,jinjiufu6detail6.jpg,jinjiufu6detail7.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '598');
INSERT INTO `good` VALUES ('0012', '名门新娘婚纱礼服 2017红色敬酒服 结婚长款年会礼服女宴会2426 ', 'jinjiufu7.png', '100', '699', '2', '名门', '2017-05-02', 'jinjiufu7detail1.jpg,jinjiufu7detail2.jpg,jinjiufu7detail3.jpg,jinjiufu7detail4.jpg,jinjiufu7detail5.jpg,jinjiufu7detail6.jpg,jinjiufu7detail7.jpg,jinjiufu7detail8.jpg,jinjiufu7detail9.jpg,jinjiufu7detail10.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '699');
INSERT INTO `good` VALUES ('0013', '名门新娘敬酒服2016新款 红色晚礼服结婚订婚回门短款小礼服6041 ', 'jinjiufu8.png', '100', '598', '2', '名门', '2017-05-02', 'jinjiufu8detail1.jpg,jinjiufudetail2.jpg,jinjiufu8detail3.jpg,jinjiufu8detail4.jpg,jinjiufu8detail5.jpg,jinjiufu8detail6.jpg,jinjiufu8detail7.jpg,jinjiufu8detail8.jpg,jinjiu8detail9.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '598');
INSERT INTO `good` VALUES ('0014', '名门新娘名门新娘2015冬新款红色敬酒礼服蕾丝长款礼服晚宴服2288 ', 'jinjiufu9.png', '100', '788', '2', null, '2017-05-02', 'jinjiufu9detail1.jpg,jinjiufu9detail2.jpg,jinjiufu9detail3.jpg,jinjiufu9detail4.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '788');
INSERT INTO `good` VALUES ('0015', '名门新娘嫁衣中式结婚礼服女敬酒服旗袍新娘秋冬婚礼红色礼服2436 ', 'jinjiufu10.png', '100', '288', '2', '名门', '2017-05-02', 'jinjiufu10detail1.jpg,jinjiufu10detail2.jpg,jinjiufu10detail3.jpg,jinjiufu10detail4.jpg,jinjiufu10detail5.jpg,jinjiufu10detail6.jpg,jinjiufu10detail7.jpg,jinjiufu10detail8.jpg,jinjiufu10detail9.jpg,jinjiufu10detail10.jpg,jinjiufu10detail11.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '288');
INSERT INTO `good` VALUES ('0016', '名门新娘婚纱礼服2016新款 新娘齐地婚纱一字肩婚纱公主婚礼2734', 'hunsha1.png', '100', '598', '2', null, '2017-05-02', 'hunsha1detail1.jpg,hunsha1detail2.jpg,hunsha1detail3.jpg,hunsha1detail4.jpg,hunsha1detail5.jpg,hunsha1detail6.jpg,hunsha1detail7.jpg,hunsha1detail8.jpg,hunsha1detail8.jpg,hunsha1detail9.jpg,hunsha1detail10.jpg,hunsha1detail11.jpg,hunsha1detail12.jpg,hunsha1detail13.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '598');
INSERT INTO `good` VALUES ('0017', '名门新娘 手工花瓣 婚纱礼服新娘2015冬季新款 抹胸长拖尾婚纱991 ', 'hunsha2.png', '100', '998', '2', null, '2017-05-02', 'hunsha2detail1.jpg,hunsha2detail2.jpg,hunsha2detail3.jpg,hunsha2detail4.jpg,hunsha2detail5.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '998');
INSERT INTO `good` VALUES ('0018', '名门新娘2015秋冬季新娘结婚纱礼服长袖一字肩梦幻花瓣大拖尾2512', 'hunsha3.png', '100', '588', '2', '名门', '2017-05-02', 'hunsha3detail1.jpg,hunsha3detail2.jpg,hunsha3detail3.jpg,hunsha3detail4.jpg,hunsha3detail5.jpg,hunsha3detail6.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '588');
INSERT INTO `good` VALUES ('0019', '名门新娘秋冬款新娘婚礼婚纱礼服梦幻手工花瓣公主齐地一字肩2296 ', 'hunsha4.png', '100', '598', '2', '名门', '2017-05-02', 'hunsha4detail1.jpg,hunsha4detail2.jpg,hunsha4detail3.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '598');
INSERT INTO `good` VALUES ('0020', '名门新娘2015秋冬季新娘结婚纱礼服长袖一字肩梦幻花瓣大拖尾2594 ', 'hunsha5.png', '100', '1588', '2', null, '2017-05-02', 'hunsha5detail1.jpg,hunsha5detail2.jpg,hunsha5detail3.jpg,hunsha5detail4.jpg,hunsha5detail5.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '1588');
INSERT INTO `good` VALUES ('0021', '名门新娘婚纱礼服2015冬季新娘抹胸梦幻花朵拖尾鱼尾手工婚纱2603 ', 'hunsha6.png', '100', '898', '2', null, '2017-05-02', 'hunsha6detail1.jpg,hunsha6detail2.jpg,hunsha6detail3.jpg,hunsha6detail4.jpg,hunsha6detail5.jpg,hunsha6detail6.jpg,hunsha6detail7.jpg,hunsha6detail8.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '898');
INSERT INTO `good` VALUES ('0022', '名门新娘男士西装2016冬季西服套装商务修身正装结婚礼服 ', 'xifu1.png', '100', '2499', '3', null, '2017-05-02', 'xifu1detail1.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '898');
INSERT INTO `good` VALUES ('0023', '名门新娘男士西装2016冬季西服套装商务修身正装结婚礼服 ', 'xifu2.png', '500', '3980', '3', '名门 ', '2017-05-03', null, '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '3980');
INSERT INTO `good` VALUES ('0024', '名门新娘男士西装2016冬季西服套装商务修身正装结婚礼服', 'xifu3.png', '500', '3980', '3', null, '2017-05-03', 'xifu3grey.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '3980');
INSERT INTO `good` VALUES ('0025', '名门新娘男士西装2016冬季西服套装商务修身正装结婚礼服 ', 'xifu4.png', '500', '3980', '3', null, '2017-05-03', '', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '3980');
INSERT INTO `good` VALUES ('0026', '名门新娘男士西装2016冬季西服套装商务修身正装结婚礼服 ', 'xifu5.png', '500', '3980', '3', null, '2017-05-03', 'xifu5detail1.jpg', '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '3980');
INSERT INTO `good` VALUES ('0027', '名门新娘男士西装2016冬季西服套装商务修身正装结婚礼服', 'xifu6.png', '500', '3980', '3', '名门', '2017-05-03', null, '深圳市福田区车公庙深南大道6025号英龙大厦11楼11-12室(地铁车公庙站C出口直走200米左右，楼下有个建设银行)', '1000', '3980');

-- ----------------------------
-- Table structure for `gooddetail`
-- ----------------------------
DROP TABLE IF EXISTS `gooddetail`;
CREATE TABLE `gooddetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(255) DEFAULT NULL,
  `gid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF834574EE859CEDD` (`gid`),
  CONSTRAINT `FKF834574EE859CEDD` FOREIGN KEY (`gid`) REFERENCES `good` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gooddetail
-- ----------------------------
INSERT INTO `gooddetail` VALUES ('1', 'L', '0001');
INSERT INTO `gooddetail` VALUES ('2', 'XL', '0001');
INSERT INTO `gooddetail` VALUES ('3', 'M', '0001');
INSERT INTO `gooddetail` VALUES ('4', 'XXL', '0001');
INSERT INTO `gooddetail` VALUES ('5', 'S', '0002');
INSERT INTO `gooddetail` VALUES ('6', 'M', '0002');
INSERT INTO `gooddetail` VALUES ('7', 'L', '0002');
INSERT INTO `gooddetail` VALUES ('8', 'XL', '0002');
INSERT INTO `gooddetail` VALUES ('9', 'S', '0003');
INSERT INTO `gooddetail` VALUES ('10', 'M', '0003');
INSERT INTO `gooddetail` VALUES ('11', 'L', '0003');
INSERT INTO `gooddetail` VALUES ('12', 'XL', '0003');
INSERT INTO `gooddetail` VALUES ('15', 'XS', '0004');
INSERT INTO `gooddetail` VALUES ('16', 'S', '0004');
INSERT INTO `gooddetail` VALUES ('17', 'M', '0004');
INSERT INTO `gooddetail` VALUES ('18', 'L', '0004');
INSERT INTO `gooddetail` VALUES ('19', 'S', '0005');
INSERT INTO `gooddetail` VALUES ('20', 'M', '0005');
INSERT INTO `gooddetail` VALUES ('21', 'L', '0005');
INSERT INTO `gooddetail` VALUES ('22', 'XL', '0005');
INSERT INTO `gooddetail` VALUES ('23', null, null);
INSERT INTO `gooddetail` VALUES ('24', 'S', '0006');
INSERT INTO `gooddetail` VALUES ('25', 'M', '0006');
INSERT INTO `gooddetail` VALUES ('26', 'XL', '0006');
INSERT INTO `gooddetail` VALUES ('27', 'L', '0006');
INSERT INTO `gooddetail` VALUES ('28', 'S', '0007');
INSERT INTO `gooddetail` VALUES ('29', 'M', '0007');
INSERT INTO `gooddetail` VALUES ('30', 'L', '0007');
INSERT INTO `gooddetail` VALUES ('31', 'XL', '0007');
INSERT INTO `gooddetail` VALUES ('32', 'S', '0008');
INSERT INTO `gooddetail` VALUES ('33', 'M', '0008');
INSERT INTO `gooddetail` VALUES ('34', 'L', '0008');
INSERT INTO `gooddetail` VALUES ('35', 'XL', '0008');
INSERT INTO `gooddetail` VALUES ('36', 'S', '0009');
INSERT INTO `gooddetail` VALUES ('37', 'M', '0009');
INSERT INTO `gooddetail` VALUES ('38', 'L', '0009');
INSERT INTO `gooddetail` VALUES ('39', 'XL', '0009');
INSERT INTO `gooddetail` VALUES ('40', 'S', '0010');
INSERT INTO `gooddetail` VALUES ('41', 'M', '0010');
INSERT INTO `gooddetail` VALUES ('42', 'L', '0010');
INSERT INTO `gooddetail` VALUES ('43', 'XL', '0010');
INSERT INTO `gooddetail` VALUES ('44', 'S', '0011');
INSERT INTO `gooddetail` VALUES ('45', 'M', '0011');
INSERT INTO `gooddetail` VALUES ('46', 'L', '0011');
INSERT INTO `gooddetail` VALUES ('47', 'XL', '0011');
INSERT INTO `gooddetail` VALUES ('48', 'S', '0012');
INSERT INTO `gooddetail` VALUES ('49', 'M', '0012');
INSERT INTO `gooddetail` VALUES ('50', 'L', '0012');
INSERT INTO `gooddetail` VALUES ('51', 'XL', '0012');
INSERT INTO `gooddetail` VALUES ('52', 'S', '0013');
INSERT INTO `gooddetail` VALUES ('53', 'M', '0013');
INSERT INTO `gooddetail` VALUES ('54', 'L', '0013');
INSERT INTO `gooddetail` VALUES ('55', 'XL', '0013');
INSERT INTO `gooddetail` VALUES ('56', 'S', '0014');
INSERT INTO `gooddetail` VALUES ('57', 'M', '0014');
INSERT INTO `gooddetail` VALUES ('58', 'L', '0014');
INSERT INTO `gooddetail` VALUES ('59', 'XL', '0014');
INSERT INTO `gooddetail` VALUES ('60', 'S', '0015');
INSERT INTO `gooddetail` VALUES ('61', 'M', '0015');
INSERT INTO `gooddetail` VALUES ('62', 'L', '0015');
INSERT INTO `gooddetail` VALUES ('63', 'XL', '0015');
INSERT INTO `gooddetail` VALUES ('64', 'S', '0016');
INSERT INTO `gooddetail` VALUES ('65', 'M', '0016');
INSERT INTO `gooddetail` VALUES ('66', 'L', '0016');
INSERT INTO `gooddetail` VALUES ('67', 'XL', '0016');
INSERT INTO `gooddetail` VALUES ('68', 'S', '0017');
INSERT INTO `gooddetail` VALUES ('69', 'M', '0017');
INSERT INTO `gooddetail` VALUES ('70', 'L', '0017');
INSERT INTO `gooddetail` VALUES ('71', 'XL', '0017');
INSERT INTO `gooddetail` VALUES ('72', 'S', '0018');
INSERT INTO `gooddetail` VALUES ('73', 'M', '0018');
INSERT INTO `gooddetail` VALUES ('74', 'L', '0018');
INSERT INTO `gooddetail` VALUES ('75', 'XL', '0018');
INSERT INTO `gooddetail` VALUES ('76', 'S', '0019');
INSERT INTO `gooddetail` VALUES ('77', 'M', '0019');
INSERT INTO `gooddetail` VALUES ('78', 'L', '0019');
INSERT INTO `gooddetail` VALUES ('79', 'XL', '0019');
INSERT INTO `gooddetail` VALUES ('80', 'S', '0021');
INSERT INTO `gooddetail` VALUES ('81', 'M', '0021');
INSERT INTO `gooddetail` VALUES ('82', 'L', '0021');
INSERT INTO `gooddetail` VALUES ('83', 'XL', '0021');
INSERT INTO `gooddetail` VALUES ('84', 'S', '0022');
INSERT INTO `gooddetail` VALUES ('85', 'M', '0022');
INSERT INTO `gooddetail` VALUES ('86', 'XL', '0022');
INSERT INTO `gooddetail` VALUES ('87', 'L', '0022');
INSERT INTO `gooddetail` VALUES ('88', 'S', '0023');
INSERT INTO `gooddetail` VALUES ('89', 'M', '0023');
INSERT INTO `gooddetail` VALUES ('90', 'L', '0023');
INSERT INTO `gooddetail` VALUES ('91', 'XL', '0023');
INSERT INTO `gooddetail` VALUES ('92', 'S', '0024');
INSERT INTO `gooddetail` VALUES ('93', 'M', '0024');
INSERT INTO `gooddetail` VALUES ('94', 'L', '0024');
INSERT INTO `gooddetail` VALUES ('95', 'XL', '0024');
INSERT INTO `gooddetail` VALUES ('96', 'S', '0025');
INSERT INTO `gooddetail` VALUES ('97', 'M', '0025');
INSERT INTO `gooddetail` VALUES ('98', 'L', '0025');
INSERT INTO `gooddetail` VALUES ('99', 'XL', '0025');
INSERT INTO `gooddetail` VALUES ('100', 'S', '0026');
INSERT INTO `gooddetail` VALUES ('101', 'L', '0026');
INSERT INTO `gooddetail` VALUES ('102', 'XL', '0027');
INSERT INTO `gooddetail` VALUES ('103', 'S', '0020');
INSERT INTO `gooddetail` VALUES ('104', 'M', '0020');
INSERT INTO `gooddetail` VALUES ('106', 'L', '0020');
INSERT INTO `gooddetail` VALUES ('107', 'XL', '0020');

-- ----------------------------
-- Table structure for `images`
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgAddr1` varchar(255) DEFAULT NULL,
  `imgAddr2` varchar(255) DEFAULT NULL,
  `imgAddr3` varchar(255) DEFAULT NULL,
  `gid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKB95A8278E859CEDD` (`gid`),
  CONSTRAINT `FKB95A8278E859CEDD` FOREIGN KEY (`gid`) REFERENCES `good` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('1', 'wanlifu1grey.png', 'wanlifu1blue.png', 'wanlifu1pink.png', '0001');
INSERT INTO `images` VALUES ('2', 'wanlifu2grey.png', 'wanlifu2blue.png', 'wanlifu2pink.png', '0002');
INSERT INTO `images` VALUES ('3', 'wanlifu3grey.jpg', 'wanlifu3blue.jpg', 'wanlifu3pink.jpg', '0003');
INSERT INTO `images` VALUES ('4', 'wanlifu4grey.jpg', 'wanlifu4blue.jpg', 'wanlifu4pink.jpg', '0004');
INSERT INTO `images` VALUES ('5', 'wanlifu5grey.jpg', 'wanlifu5blue.jpg', 'wanlifu5pink.jpg', '0005');
INSERT INTO `images` VALUES ('6', 'jinjiufu1grey.jpg', 'jinjiufu1blue.jpg', 'jinjiufu1pink.jpg', '0006');
INSERT INTO `images` VALUES ('7', 'jinjiufu2grey.jpg', 'jinjiufu2blue.jpg', 'jinjiufu2pink.jpg', '0007');
INSERT INTO `images` VALUES ('8', 'jinjiufu3grey.jpg', 'jinjiufu3blue.jpg', 'jinjiufu2pink.jpg', '0008');
INSERT INTO `images` VALUES ('9', 'jinjiufu4grey.jpg', 'jinjiufu4blue.jpg', 'jinjiufu4blue.jpg', '0009');
INSERT INTO `images` VALUES ('10', 'jinjiufu5grey.jpg', 'jinjiufu5blue.jpg', 'jinjiufu5pink.jpg', '0010');
INSERT INTO `images` VALUES ('11', 'jinjiufu6grey.jpg', 'jinjiufu6blue.jpg', 'jinjiufu6pink.jpg', '0011');
INSERT INTO `images` VALUES ('12', 'jinjiufu7grey.jpg', 'jinjiufu7blue.jpg', 'jinjiufu7pink.jpg', '0012');
INSERT INTO `images` VALUES ('13', 'jinjiufu8grey.jpg', 'jinjiufu8blue.jpg', 'jinjiufu8pink.jpg', '0013');
INSERT INTO `images` VALUES ('14', 'jinjiufu9grey.jpg', 'jinjiufu9blue.jpg', 'jinjiufu9pink.jpg', '0014');
INSERT INTO `images` VALUES ('15', 'jinjiufu10grey.jpg', 'jinjiufu10blue.jpg', 'jinjiufu10pink.jpg', '0015');
INSERT INTO `images` VALUES ('16', 'hunsha1grey.jpg', 'hunsha1blue.jpg', 'hunsha1pink.jpg', '0016');
INSERT INTO `images` VALUES ('17', 'hunsha1grey.jpg', 'hunsha1blue.jpg', 'hunsha1pink.jpg', '0017');
INSERT INTO `images` VALUES ('18', 'hunsha3grey.jpg', 'hunsha3blue.jpg', 'hunsha3pink.jpg', '0018');
INSERT INTO `images` VALUES ('19', 'hunsha4grey.jpg', 'hunsha4blue.jpg', 'hunsha4pink.jpg', '0019');
INSERT INTO `images` VALUES ('20', 'hunsha5grey.jpg', 'hunsha5blue.jpg', 'hunsha5pink.jpg', '0020');
INSERT INTO `images` VALUES ('21', 'hunsha6grey.jpg', 'hunsha6blue.jpg', 'hunsha6pink.jpg', '0021');
INSERT INTO `images` VALUES ('22', 'xifu2.png', 'xifu2.png', 'xifu2.png', '0023');
INSERT INTO `images` VALUES ('23', 'xifu3blue.png', 'xifu3blue.png', 'xifu3blue.png', '0024');
INSERT INTO `images` VALUES ('24', 'xifu1grey.png', 'xifu1blue.png', 'xifu1pink.png', '0022');
INSERT INTO `images` VALUES ('25', 'xifu4.png', 'xifu4pink.png', 'xifu4pink.png', '0025');
INSERT INTO `images` VALUES ('26', 'xifu5.png', 'xifu5.png', 'xifu5.png', '0026');
INSERT INTO `images` VALUES ('27', 'xifu6.png', 'xifu6.png', 'xifu6.png', '0027');

-- ----------------------------
-- Table structure for `orderr`
-- ----------------------------
DROP TABLE IF EXISTS `orderr`;
CREATE TABLE `orderr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `songhuoaddr` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE,
  KEY `id` (`id`),
  CONSTRAINT `orderr_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of orderr
-- ----------------------------
INSERT INTO `orderr` VALUES ('9', '05b3b44d-3185-4ac1-83c9-e23ca5bd5506', '6', '中国广东', '18634096781,', '林凯俊', '2599', '1');
INSERT INTO `orderr` VALUES ('15', '1acbfcaf-4f0d-4330-b45e-1a3db27db7e2', '1', '美国纽约, ', '15195986002, ', '贾斯汀比伯, ', '2599', '1');
INSERT INTO `orderr` VALUES ('16', '3410898c-94a4-4987-bd0f-77571f4d4d67', '3', '中国南京栖霞区羊山北路1号, ', '13209978653, ', '玛丽, ', '799', '1');
INSERT INTO `orderr` VALUES ('17', '222adc11-31a9-4c67-8886-9cb8efd63556', '5', '中国江苏南通, ', '15230987675, ', '雨具, ', '1098', '1');
INSERT INTO `orderr` VALUES ('18', '4c7da405-f0dd-4afe-af59-e582ae225c3b', '2', '中国台湾台北, ', '13218830756, ', '林依晨, ', '1396', '2');
INSERT INTO `orderr` VALUES ('19', 'ec5cf6d8-6a8e-4c5f-9f62-440cc48af30b', '4', '中国黑龙江, ', '13209786542, ', '于朦胧, ', '4480', '1');
INSERT INTO `orderr` VALUES ('37', '7b30d4d3-c1a6-458a-9c32-7b6a917cfeb7', '3', '中国南京栖霞区羊山北路1号, ', '13209978653, ', '玛丽, ', '1098', '1');
INSERT INTO `orderr` VALUES ('38', '0268a7ce-35c9-434f-a2fb-d5508aecc600', '8', '中国广东东莞, ', '13218830790, ', '周家成, ', '1688', '1');
INSERT INTO `orderr` VALUES ('39', 'ba5d9e38-50b5-498b-9901-ff1cecec968d', '5', '中国江苏南通, ', '15230987675, ', '雨具, ', '1098', '1');
INSERT INTO `orderr` VALUES ('40', 'ab27e4d3-0b0a-453f-9855-04de33195e25', '7', '中国浙江嘉兴, ', '13245609678, ', '周佳宁, ', '4480', '1');
INSERT INTO `orderr` VALUES ('41', '48e1ab03-624f-48d0-8289-da6e4e8881a3', '9', '英国伦敦, ', '15195780452, ', '贝蒂, ', '888', '1');
INSERT INTO `orderr` VALUES ('42', '1d03ac37-e069-4209-be23-40f808dbe3fd', '9', '英国伦敦, ', '15195780452, ', '贝蒂, ', '688', '1');
INSERT INTO `orderr` VALUES ('43', 'a63fc6ab-57e0-42ba-8d14-68a908a405ef', '9', '英国伦敦, ', '15195780452, ', '贝蒂, ', '998', '1');
INSERT INTO `orderr` VALUES ('44', '2a78b2ea-e081-451d-958a-fc2456527401', '10', '中国江苏南通启东, ', '18263409806, ', '李成利, ', '698', '1');
INSERT INTO `orderr` VALUES ('45', 'd561e6d3-016c-4337-a12d-f0a6170f8a3c', '10', '中国江苏南通启东, ', '18263409806, ', '李成利, ', '1098', '1');
INSERT INTO `orderr` VALUES ('46', '727d0578-a362-4da3-9ed9-83607bd094e6', '11', '中国江苏南通启东, ', '15194058672, ', '安迪, ', '1000', '1');
INSERT INTO `orderr` VALUES ('47', '5bb5a698-016c-471e-9ee4-ebba7d9d3d91', '12', '中国北京, ', '1529786407, ', '安迪, ', '2000', '2');

-- ----------------------------
-- Table structure for `order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `date1` datetime DEFAULT NULL,
  `date2` datetime DEFAULT NULL,
  `gid` varchar(255) NOT NULL DEFAULT '',
  `oid` int(11) NOT NULL DEFAULT '0',
  `size` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `og_orderdetail_ibfk_2` (`oid`) USING BTREE,
  KEY `FK3E2ED538D0F5F28E` (`size`) USING BTREE,
  KEY `FK3E2ED538E859CEDD` (`gid`) USING BTREE,
  CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`gid`) REFERENCES `good` (`gid`),
  CONSTRAINT `order_detail_ibfk_4` FOREIGN KEY (`oid`) REFERENCES `orderr` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('1020170518082059', '2017-05-18 20:20:59', '2017-05-18 21:20:59', '2017-05-18 22:20:59', '0017', '45', 'S', '0');
INSERT INTO `order_detail` VALUES ('1020170518114027', '2017-05-18 11:40:27', '2017-05-18 12:40:27', '2017-05-18 13:40:27', '0016', '44', 'S', '0');
INSERT INTO `order_detail` VALUES ('1120170524073356', '2017-05-24 19:33:56', '2017-05-24 20:33:56', '2017-05-24 21:33:56', '0001', '46', 'L', '0');
INSERT INTO `order_detail` VALUES ('120170513082119', '2017-05-13 20:21:19', '2017-05-13 21:21:19', '2017-05-13 22:21:19', '0022', '15', 'S', '2');
INSERT INTO `order_detail` VALUES ('1220170525020608', '2017-05-25 14:06:08', '2017-05-25 15:06:08', '2017-05-25 16:06:08', '0001', '47', 'L', '0');
INSERT INTO `order_detail` VALUES ('220170514080106', '2017-05-14 08:01:06', '2017-05-14 09:01:06', '2017-05-14 10:01:06', '0011', '18', 'S', '2');
INSERT INTO `order_detail` VALUES ('320170513082556', '2017-05-13 20:25:56', '2017-05-13 21:25:56', '2017-05-13 22:25:56', '0012', '16', 'S', '2');
INSERT INTO `order_detail` VALUES ('320170514113151', '2017-05-14 11:31:51', '2017-05-14 12:31:51', '2017-05-14 13:31:51', '0017', '37', 'S', '2');
INSERT INTO `order_detail` VALUES ('420170514082358', '2017-05-14 08:23:58', '2017-05-14 09:23:58', '2017-05-14 10:23:58', '0025', '19', 'S', '2');
INSERT INTO `order_detail` VALUES ('520170513091513', '2017-05-13 21:15:13', '2017-05-13 22:15:13', '2017-05-13 23:15:13', '0017', '17', 'S', '2');
INSERT INTO `order_detail` VALUES ('620170513052032', '2017-05-13 17:20:32', '2017-05-13 18:20:32', '2017-05-13 19:20:32', '0022', '9', 'S', '2');
INSERT INTO `order_detail` VALUES ('720170515050619', '2017-05-15 17:06:19', '2017-05-15 18:06:19', '2017-05-15 19:06:19', '0026', '40', 'S', '2');
INSERT INTO `order_detail` VALUES ('820170514011800', '2017-05-14 13:18:00', '2017-05-14 14:18:00', '2017-05-14 15:18:00', '0020', '38', 'S', '2');
INSERT INTO `order_detail` VALUES ('920170515050913', '2017-05-15 17:09:13', '2017-05-15 18:09:13', '2017-05-15 19:09:13', '0014', '41', 'S', '2');
INSERT INTO `order_detail` VALUES ('920170515051005', '2017-05-15 17:10:05', '2017-05-15 18:10:05', '2017-05-15 19:10:05', '0007', '42', 'S', '2');
INSERT INTO `order_detail` VALUES ('920170515051044', '2017-05-15 17:10:44', '2017-05-15 18:10:44', '2017-05-15 19:10:44', '0021', '43', 'S', '2');

-- ----------------------------
-- Table structure for `ug_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ug_cart`;
CREATE TABLE `ug_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodCount` int(11) NOT NULL,
  `sumprice` double NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKE26570ADE8606E79` (`uid`),
  KEY `ug_cart_ibfk_1` (`oid`),
  CONSTRAINT `FKE26570ADE8606E79` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `ug_cart_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `orderr` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ug_cart
-- ----------------------------
INSERT INTO `ug_cart` VALUES ('4', '1', '698', '2', '18');
INSERT INTO `ug_cart` VALUES ('5', '1', '799', '3', '16');
INSERT INTO `ug_cart` VALUES ('14', '1', '2599', '1', '15');
INSERT INTO `ug_cart` VALUES ('15', '1', '4480', '4', '19');
INSERT INTO `ug_cart` VALUES ('17', '1', '2599', '6', '9');
INSERT INTO `ug_cart` VALUES ('19', '1', '1098', '5', '39');
INSERT INTO `ug_cart` VALUES ('20', '1', '4480', '4', null);
INSERT INTO `ug_cart` VALUES ('25', '1', '1098', '3', '37');
INSERT INTO `ug_cart` VALUES ('26', '1', '1688', '8', '38');
INSERT INTO `ug_cart` VALUES ('27', '1', '4480', '7', '40');
INSERT INTO `ug_cart` VALUES ('28', '1', '888', '9', '41');
INSERT INTO `ug_cart` VALUES ('29', '1', '688', '9', '42');
INSERT INTO `ug_cart` VALUES ('30', '1', '998', '9', '43');
INSERT INTO `ug_cart` VALUES ('31', '1', '698', '10', '44');
INSERT INTO `ug_cart` VALUES ('33', '1', '1098', '10', '45');
INSERT INTO `ug_cart` VALUES ('34', '2', '2000', '11', '46');
INSERT INTO `ug_cart` VALUES ('35', '2', '2000', '12', '47');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `imgAddr` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `randomid` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '美国纽约华尔街', '135', '2017-04-28', 'biber@126.com', null, 'biber', '123', 'Ao3s20170428054036', '0', '男', '15195986002', '贾斯汀比伯');
INSERT INTO `user` VALUES ('2', '中国台湾台北', '148', '2017-04-28', 'lucy@qq.com', null, 'lucy', '123', 'km1s20170428060930', '0', '女', '13218830756', '林依晨');
INSERT INTO `user` VALUES ('3', '中国南京栖霞区羊山北路1号', '44', '2017-04-29', 'mary@qq.com', 'default.jpg', 'mary', '123', 'Qw2/20170429064811', '0', '女', '13209978653', '玛丽');
INSERT INTO `user` VALUES ('4', '中国黑龙江', '89', '2017-04-30', 'moon@qq.com', 'default.jpg', 'moon', '123', 'kP]120170430075357', '0', '男', '13209786542', '于朦胧');
INSERT INTO `user` VALUES ('5', '中国江苏南通', '5', '2017-04-30', 'yuju@qq.com', 'default.jpg', 'yuju', '123', '8csZ20170430093531', '0', '女', '15230987675', '雨具');
INSERT INTO `user` VALUES ('6', '中国广东', '35', '2017-05-12', 'kaijun@qq.com', 'default.jpg', 'KaiJun', '123', 'l/_j20170512061242', '0', '男', '18634096781', '林凯俊');
INSERT INTO `user` VALUES ('7', '中国浙江嘉兴', '40', '2017-05-14', 'jakson@qq.com', 'default.jpg', 'Jakson', '123', 'xogI20170514093048', '0', '男', '13245609678', '周佳宁');
INSERT INTO `user` VALUES ('8', '中国广东东莞', '1', '2017-05-14', 'apple@qq.com', 'default.jpg', 'apple', '123', ']eMI20170514011555', '0', '男', '13218830790', '周家成');
INSERT INTO `user` VALUES ('9', '英国伦敦', '2', '2017-05-15', 'betty@qq.com', 'default.jpg', 'Betty', '123', 'XM@N20170515025459', '0', '女', '15195780452', '贝蒂');
INSERT INTO `user` VALUES ('10', '中国江苏南通启东', '15', '2017-05-17', 'bingo@qq.com', 'default.jpg', 'bingo', '123', '62m220170517094149', '0', '男', '18263409806', '李成利');
INSERT INTO `user` VALUES ('11', '中国江苏南通启东', '1', '2017-05-24', 'andy1@qq.com', null, 'andy1', '123', 'STcs20170524065408', '0', '女', '15194058672', '安迪');
INSERT INTO `user` VALUES ('12', '中国北京', '1', '2017-05-25', 'amy@qq.com', 'default.jpg', 'amy', '123', ']%XN20170525020414', '0', '女', '1529786407', '安迪');
