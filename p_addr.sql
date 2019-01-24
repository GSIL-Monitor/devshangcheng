/*
Navicat MySQL Data Transfer

Source Server         : bendi
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : cs_365_6

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-01-24 17:09:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `p_addr`
-- ----------------------------
DROP TABLE IF EXISTS `p_addr`;
CREATE TABLE `p_addr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(24) DEFAULT NULL,
  `province` varchar(24) DEFAULT NULL COMMENT '省份',
  `city` varchar(24) DEFAULT NULL COMMENT '城市',
  `county` varchar(24) DEFAULT NULL COMMENT '区/县',
  `addr` varchar(255) DEFAULT NULL,
  `state` int(1) DEFAULT '1' COMMENT '1',
  `isdefault` int(1) DEFAULT '0' COMMENT '1 默认',
  `addtime` datetime DEFAULT NULL,
  `updatetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_addr
-- ----------------------------
INSERT INTO `p_addr` VALUES ('1', '6', '李海龙', '18883287644', '北京市', '北京市', '西城区', '方飞萨阿杜111', '1', '0', '2019-01-17 15:06:58', '2019-01-17 15:10:11');
INSERT INTO `p_addr` VALUES ('2', '4', 'Admin', '15922917289', '北京市', '北京市', '西城区', '打算发斯蒂芬', '1', '0', '2019-01-17 15:10:25', '2019-01-17 15:32:54');
INSERT INTO `p_addr` VALUES ('3', '4', 'Admin', '15922917289', '省份', '地级市', '区、县级市', '打算发斯蒂芬', '1', '0', '2019-01-17 15:15:33', '2019-01-17 16:39:45');
INSERT INTO `p_addr` VALUES ('4', '4', 'Admin', '15922917289', '省份', '地级市', '区、县级市', '打算发斯蒂芬', '1', '1', '2019-01-17 15:17:17', '2019-01-17 16:39:46');
INSERT INTO `p_addr` VALUES ('5', '2', '绩效管理', '15922917289', '北京市', '北京市', '崇文区', 'dsfasdfasfsdfasdf', '1', '1', '2019-01-17 16:41:25', '2019-01-17 17:23:26');
INSERT INTO `p_addr` VALUES ('6', '4', '绩效管理', '15922917289', '天津市', '天津市', '河西区', 'fasdfasdfasdfasdf', '1', '1', '2019-01-17 18:10:42', '2019-01-19 17:18:43');
INSERT INTO `p_addr` VALUES ('7', '5', 'admin', '13649588123', '北京市', '北京市', '崇文区', 'asdfasdfasfaf', '1', '1', '2019-01-20 13:01:38', null);

-- ----------------------------
-- Table structure for `p_banner`
-- ----------------------------
DROP TABLE IF EXISTS `p_banner`;
CREATE TABLE `p_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(256) DEFAULT NULL,
  `coment` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_banner
-- ----------------------------

-- ----------------------------
-- Table structure for `p_cart`
-- ----------------------------
DROP TABLE IF EXISTS `p_cart`;
CREATE TABLE `p_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT '1' COMMENT '1购物车  2 收藏',
  `addtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_cart
-- ----------------------------
INSERT INTO `p_cart` VALUES ('1', '644', '2', '1', '1', '2019-01-07 20:22:02');
INSERT INTO `p_cart` VALUES ('2', '644', '3', '1', '1', '2019-01-07 20:22:35');
INSERT INTO `p_cart` VALUES ('3', '644', '4', '1', '1', '2019-01-07 20:23:01');
INSERT INTO `p_cart` VALUES ('4', '644', '1', '1', '1', '2019-01-07 20:23:03');
INSERT INTO `p_cart` VALUES ('5', '11', '1', '2', '1', '2019-01-07 20:23:53');
INSERT INTO `p_cart` VALUES ('6', '644', '11', '1', '1', '2019-01-07 20:44:55');
INSERT INTO `p_cart` VALUES ('7', '12', '1', '2', '1', '2019-01-09 14:34:04');
INSERT INTO `p_cart` VALUES ('11', '12', '5', '2', '1', '2019-01-20 20:24:15');
INSERT INTO `p_cart` VALUES ('9', '10', '5', '1', '1', '2019-01-15 15:55:08');

-- ----------------------------
-- Table structure for `p_cashapply`
-- ----------------------------
DROP TABLE IF EXISTS `p_cashapply`;
CREATE TABLE `p_cashapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `shopid` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '1 申请  2 已完成 3取消',
  `addtime` datetime DEFAULT NULL,
  `updatetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `overtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_cashapply
-- ----------------------------
INSERT INTO `p_cashapply` VALUES ('1', '5', '5', '1000', '1', '2019-01-23 21:05:41', null, null);
INSERT INTO `p_cashapply` VALUES ('2', '5', '5', '2000', '1', '2019-01-23 21:38:48', null, '2019-01-24 21:38:48');
INSERT INTO `p_cashapply` VALUES ('3', '5', '5', '1000', '1', '2019-01-23 21:39:18', null, '2019-01-24 21:39:18');

-- ----------------------------
-- Table structure for `p_express`
-- ----------------------------
DROP TABLE IF EXISTS `p_express`;
CREATE TABLE `p_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(24) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL COMMENT '快递名称',
  `addtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_express
-- ----------------------------
INSERT INTO `p_express` VALUES ('1', 'SF', '顺丰速运', null);
INSERT INTO `p_express` VALUES ('2', 'HTKY', '百世快递', null);
INSERT INTO `p_express` VALUES ('3', 'ZTO', '中通快递', null);
INSERT INTO `p_express` VALUES ('4', 'STO', '申通快递', null);
INSERT INTO `p_express` VALUES ('5', 'YTO', '圆通速递', null);
INSERT INTO `p_express` VALUES ('6', 'YD', '韵达速递', null);
INSERT INTO `p_express` VALUES ('7', 'YZPY', '邮政快递', null);
INSERT INTO `p_express` VALUES ('8', 'EMS', 'EMS', null);
INSERT INTO `p_express` VALUES ('9', 'HHTT', '天天快递', null);
INSERT INTO `p_express` VALUES ('10', 'JD', '京东快递', '2019-01-19 17:46:53');

-- ----------------------------
-- Table structure for `p_incomelog`
-- ----------------------------
DROP TABLE IF EXISTS `p_incomelog`;
CREATE TABLE `p_incomelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recordBody` varchar(125) DEFAULT '' COMMENT '记录详情',
  `recordPrice` decimal(11,0) DEFAULT '1' COMMENT '1收入   2支出 3失败',
  `recordNowPrice` int(11) DEFAULT NULL,
  `recordStatus` int(1) DEFAULT NULL COMMENT '增加或减少标识：0-减少  1-增加',
  `recordType` int(1) DEFAULT NULL COMMENT '当前记录对应账户类型：0-金额  1-积分',
  `recordMold` int(1) DEFAULT NULL COMMENT '账单类型：0-排单 1-抢单 2-收款  3-提现  4-赠送(接收)积分  6商城下单 ',
  `recordToObject` varchar(255) DEFAULT NULL COMMENT '当前记录对应对象',
  `recordToUserId` int(11) DEFAULT NULL COMMENT '当前记录对应的用户id',
  `recordToAccountId` int(11) DEFAULT NULL COMMENT '关联账户',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=710 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_incomelog
-- ----------------------------
INSERT INTO `p_incomelog` VALUES ('698', '下单购买', '24', '76', '0', '0', '6', '购买商品，订单号201901191124273384', '5', '5', '2019-01-19 11:24:30');
INSERT INTO `p_incomelog` VALUES ('699', '下单购买', '2', '74', '0', '0', '6', '购买商品，订单号201901191129215186', '5', '5', '2019-01-19 11:29:29');
INSERT INTO `p_incomelog` VALUES ('700', '下单购买', '24', '50', '0', '0', '6', '购买商品，订单号201901191124273384', '5', '5', '2019-01-19 13:04:54');
INSERT INTO `p_incomelog` VALUES ('701', '下单购买', '2', '48', '0', '0', '6', '购买商品，订单号201901191129215186', '5', '5', '2019-01-19 18:37:42');
INSERT INTO `p_incomelog` VALUES ('702', '下单购买', '222', '778', '0', '0', '6', '购买商品，订单号201901201302389797', '5', '5', '2019-01-20 13:02:42');
INSERT INTO `p_incomelog` VALUES ('703', '下单购买', '222', '556', '0', '0', '6', '购买商品，订单号201901201301441489', '5', '5', '2019-01-20 13:05:53');
INSERT INTO `p_incomelog` VALUES ('704', '下单购买扣除余额', '1', '462', '0', '0', '6', '201901241336556383', '5', '6', '2019-01-24 13:36:57');
INSERT INTO `p_incomelog` VALUES ('705', '下单购买扣除积分', '10', '70', '0', '1', '6', '201901241336556383', '5', '6', '2019-01-24 13:36:57');
INSERT INTO `p_incomelog` VALUES ('706', '下单购买扣除余额', '37', '425', '0', '0', '6', '201901241339155926', '5', '6', '2019-01-24 13:39:17');
INSERT INTO `p_incomelog` VALUES ('707', '下单购买扣除积分', '10', '60', '0', '1', '6', '201901241339155926', '5', '6', '2019-01-24 13:39:17');
INSERT INTO `p_incomelog` VALUES ('709', '售卖商品', '1', '1', '1', '0', '7', '201901241336556383', '8', '5', '2019-01-24 14:21:30');

-- ----------------------------
-- Table structure for `p_login`
-- ----------------------------
DROP TABLE IF EXISTS `p_login`;
CREATE TABLE `p_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pwd` text CHARACTER SET utf8,
  `addymd` date DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `ip` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of p_login
-- ----------------------------
INSERT INTO `p_login` VALUES ('1', 'admin', '123asd', '2017-09-16', '1505552484', null);
INSERT INTO `p_login` VALUES ('2', 'admin', '123asd', '2017-09-16', '1505552539', '127.0.0.1');

-- ----------------------------
-- Table structure for `p_ordercommits`
-- ----------------------------
DROP TABLE IF EXISTS `p_ordercommits`;
CREATE TABLE `p_ordercommits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(32) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `shopid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 好评 2中评 3 差评',
  `commits` text,
  `addtime` datetime DEFAULT NULL,
  `updatetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_ordercommits
-- ----------------------------
INSERT INTO `p_ordercommits` VALUES ('4', '201901191129215186', '5', '5', '10', '1', '\r\n		撒大声地', '2019-01-19 21:29:09', '2019-01-20 14:08:27');
INSERT INTO `p_ordercommits` VALUES ('3', '201901191124273384', '5', '5', '11', '2', 'niceadfad\r\n		', '2019-01-19 21:06:27', '2019-01-19 21:19:46');
INSERT INTO `p_ordercommits` VALUES ('5', '201901201302389797', '5', '5', '12', '3', '不好不好', '2019-01-20 13:09:39', '2019-01-20 13:09:39');

-- ----------------------------
-- Table structure for `p_orderlog`
-- ----------------------------
DROP TABLE IF EXISTS `p_orderlog`;
CREATE TABLE `p_orderlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL COMMENT '用户id',
  `shopid` int(11) DEFAULT NULL COMMENT '店铺ID',
  `productid` int(11) NOT NULL,
  `productname` varchar(256) DEFAULT NULL,
  `productmoney` decimal(10,0) DEFAULT NULL COMMENT '产品带来的利润',
  `producturl` varchar(128) DEFAULT NULL,
  `state` int(1) NOT NULL DEFAULT '1' COMMENT '1待支付 2完成支付待收货 3已发货 4收货待评价  5 交易完成 6 已取消 7退换货',
  `orderid` varchar(128) NOT NULL COMMENT '订单id',
  `num` int(5) DEFAULT NULL COMMENT '购买数量',
  `totals` decimal(10,0) DEFAULT NULL,
  `type` int(2) DEFAULT '1',
  `option` varchar(512) DEFAULT NULL COMMENT '其他说明',
  `addtime` datetime DEFAULT NULL,
  `updatetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `addrid` int(11) NOT NULL COMMENT '收货地址id',
  `express` varchar(12) DEFAULT NULL COMMENT '快递',
  `expressname` varchar(64) DEFAULT NULL COMMENT '快递名称',
  `expressorderid` varchar(128) DEFAULT NULL COMMENT '快递单号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_orderlog
-- ----------------------------
INSERT INTO `p_orderlog` VALUES ('100', '5', '5', '11', '法国加力果12个装 进口新鲜水果 嘎啦苹果 包邮', '12', '/Public/Uploads/2019-01-02/5c2cbeebcf33e.png', '5', '201901191124273384', '2', '24', '1', '好好', '2019-01-19 11:24:27', '2019-01-19 20:21:53', '6', 'SF', '顺丰速运', '14124214123412');
INSERT INTO `p_orderlog` VALUES ('101', '5', '5', '10', '特价武夷山桐木关正山小种红茶高档礼盒2', '1', '/Public/Uploads/2019-01-02/5c2cbe49e0073.png', '5', '201901191129215186', '2', '2', '1', '', '2019-01-19 11:29:21', '2019-01-19 21:29:09', '6', 'HTKY', '百世快递', '23412412341234');
INSERT INTO `p_orderlog` VALUES ('102', '5', '5', '12', '法国加力果12个装 进口新鲜水果 嘎啦苹果 包邮3', '111', '/Public/Uploads/2019-01-02/5c2cc1183e08a.png', '2', '201901201301441489', '2', '222', '1', '', '2019-01-20 13:01:44', '2019-01-20 13:05:53', '7', null, null, null);
INSERT INTO `p_orderlog` VALUES ('103', '5', '5', '12', '法国加力果12个装 进口新鲜水果 嘎啦苹果 包邮3', '111', '/Public/Uploads/2019-01-02/5c2cc1183e08a.png', '5', '201901201302389797', '2', '222', '1', '', '2019-01-20 13:02:38', '2019-01-20 13:09:39', '7', 'ZTO', '中通快递', '123456789');
INSERT INTO `p_orderlog` VALUES ('104', '5', '3', '10', '特价武夷山桐木关正山小种红茶高档礼盒2', '1', '/Public/Uploads/2019-01-02/5c2cbe49e0073.png', '4', '201901241336556383', '1', '1', '1', '', '2019-01-24 13:36:55', '2019-01-24 14:21:30', '7', 'ZTO', '中通快递', '12312312');
INSERT INTO `p_orderlog` VALUES ('105', '5', '3', '14', '104', '24', 'http://df.cqyuyan.cn/_2019-01-06_5c3198ddcc021.png', '2', '201901241339155926', '1', '37', '1', '', '2019-01-24 13:39:15', '2019-01-24 14:20:20', '7', null, null, null);
INSERT INTO `p_orderlog` VALUES ('106', '5', '3', '9', '特价武夷山桐木关正山小种红茶高档礼盒1', '13', 'http://df.cqyuyan.cn/_2019-01-09_5c35b08508dc8.png', '2', '201901241339155926', '1', '37', '1', '', '2019-01-24 13:39:15', '2019-01-24 14:20:20', '7', null, null, null);

-- ----------------------------
-- Table structure for `p_product`
-- ----------------------------
DROP TABLE IF EXISTS `p_product`;
CREATE TABLE `p_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '产品名',
  `cont` text COMMENT '产品描述',
  `type` int(1) DEFAULT '1' COMMENT '1',
  `pic` varchar(255) DEFAULT NULL COMMENT '产品图片',
  `price` decimal(10,0) DEFAULT NULL COMMENT '售卖价格',
  `ftype` int(10) DEFAULT NULL COMMENT '父级别分类',
  `ctype` int(10) DEFAULT NULL COMMENT '子类类型',
  `istui` int(1) DEFAULT '0' COMMENT '0 不推荐   1推荐',
  `iste` int(1) DEFAULT '0' COMMENT '0非特色  1特色',
  `isjing` int(1) DEFAULT '0' COMMENT '0不是精品  1精品',
  `state` int(3) DEFAULT '1' COMMENT '1上架  2下架',
  `addtime` datetime DEFAULT NULL,
  `salenum` int(11) DEFAULT '0',
  `shopid` int(11) NOT NULL COMMENT '店铺ID',
  `youfei` decimal(10,0) DEFAULT '0' COMMENT '邮费',
  `isdelete` int(1) DEFAULT '0' COMMENT '0 未删除 1已删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_product
-- ----------------------------
INSERT INTO `p_product` VALUES ('12', '法国加力果12个装 进口新鲜水果 嘎啦苹果 包邮3', '31241234124123412', '1', '/Public/Uploads/2019-01-02/5c2cc1183e08a.png', '111', '1', '6', '1', '1', '0', '1', '2019-01-06 10:29:53', '0', '3', null, '0');
INSERT INTO `p_product` VALUES ('9', '特价武夷山桐木关正山小种红茶高档礼盒1', '								121231					    	', '1', 'http://df.cqyuyan.cn/_2019-01-09_5c35b08508dc8.png', '13', '1', '6', '0', '0', '0', '1', '2019-01-09 16:27:49', '0', '3', null, '0');
INSERT INTO `p_product` VALUES ('10', '特价武夷山桐木关正山小种红茶高档礼盒2', '123adsfasdfasdf', '1', '/Public/Uploads/2019-01-02/5c2cbe49e0073.png', '1', '1', '6', '0', '1', '1', '1', '2019-01-06 10:30:12', '0', '3', null, '0');
INSERT INTO `p_product` VALUES ('11', '法国加力果12个装 进口新鲜水果 嘎啦苹果 包邮', '', '1', '/Public/Uploads/2019-01-02/5c2cbeebcf33e.png', '12', '1', '6', '1', '1', '1', '2', '2019-01-06 10:30:20', '0', '3', null, '0');
INSERT INTO `p_product` VALUES ('13', '13000000003', '32312423', '1', 'http://df.cqyuyan.cn/_2019-01-13_5c3adb51120e5.png', '12', '1', '6', '0', '0', '0', '2', '2019-01-13 14:31:45', '0', '3', null, '0');
INSERT INTO `p_product` VALUES ('14', '104', '21312', '1', 'http://df.cqyuyan.cn/_2019-01-06_5c3198ddcc021.png', '24', '1', '6', '0', '0', '0', '1', '2019-01-06 13:57:50', '10', '3', '0', '0');

-- ----------------------------
-- Table structure for `p_product_banner`
-- ----------------------------
DROP TABLE IF EXISTS `p_product_banner`;
CREATE TABLE `p_product_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proid` int(11) DEFAULT NULL COMMENT '产品ID',
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `addtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_product_banner
-- ----------------------------
INSERT INTO `p_product_banner` VALUES ('8', '0', null, 'http://df.cqyuyan.cn/_2019-01-22_5c471cb797764.png', '2019-01-22 21:38:00');
INSERT INTO `p_product_banner` VALUES ('9', '0', null, 'http://df.cqyuyan.cn/_2019-01-22_5c471cbb7a812.png', '2019-01-22 21:38:03');
INSERT INTO `p_product_banner` VALUES ('10', '9', null, 'http://df.cqyuyan.cn/_2019-01-22_5c471ce6975fa.png', '2019-01-22 21:38:47');
INSERT INTO `p_product_banner` VALUES ('11', '9', null, 'http://df.cqyuyan.cn/_2019-01-22_5c471cea36eec.png', '2019-01-22 21:38:50');
INSERT INTO `p_product_banner` VALUES ('12', '9', null, 'http://df.cqyuyan.cn/_2019-01-22_5c471d1b22cdd.png', '2019-01-22 21:39:42');
INSERT INTO `p_product_banner` VALUES ('13', '9', null, 'http://df.cqyuyan.cn/_2019-01-22_5c471d2fc6239.png', '2019-01-22 21:40:00');
INSERT INTO `p_product_banner` VALUES ('14', '9', null, 'http://df.cqyuyan.cn/_2019-01-22_5c471d4f6fe41.png', '2019-01-22 21:40:32');
INSERT INTO `p_product_banner` VALUES ('15', '9', null, 'http://df.cqyuyan.cn/_2019-01-22_5c471d8e51d96.png', '2019-01-22 21:41:35');

-- ----------------------------
-- Table structure for `p_shop`
-- ----------------------------
DROP TABLE IF EXISTS `p_shop`;
CREATE TABLE `p_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `online` int(11) DEFAULT '1' COMMENT '1 在营业  0 未营业',
  `ontime` varchar(255) DEFAULT NULL COMMENT '营业时间',
  `tel` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `zhizhao` varchar(255) DEFAULT NULL COMMENT '营业执照',
  `status` int(11) DEFAULT '0' COMMENT '0审核中  1 正常 2封店',
  `intro` text,
  `pic` varchar(255) DEFAULT NULL COMMENT '门店照片',
  `istui` int(1) DEFAULT '0' COMMENT '0不推荐 1推荐',
  `addtime` datetime DEFAULT NULL,
  `updatetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `account` decimal(10,0) DEFAULT '0' COMMENT '商户余额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_shop
-- ----------------------------
INSERT INTO `p_shop` VALUES ('1', '6', '店小二111', 'http://df.cqyuyan.cn/_2019-01-14_5c3c91e95a697.png', '1', '9--18111', '1337689900111', '重庆花花村子111', 'http://df.cqyuyan.cn/_2019-01-14_5c3c91e8a133e.png', '1', '开、修、换各式民用锁具（各类普通房门、防盗门、车库门、密码箱开、修、换各式民用锁具（各类普通房门、防盗门、车库门、密码箱', '/Public/Home/images/test.jpg', '1', '2019-01-15 14:41:31', '2019-01-23 20:26:27', '0');
INSERT INTO `p_shop` VALUES ('2', '7', '钱小鸭1', 'http://df.cqyuyan.cn/_2019-01-14_5c3c96483e749.jpg', '1', '9点到6点', '18883287644', '重庆渝北区', 'http://df.cqyuyan.cn/_2019-01-14_5c3c96465560c.png', '1', '阿斯顿发斯蒂芬阿斯顿发生', '/Public/Home/images/test.jpg', null, '2019-01-15 14:33:49', '2019-01-23 20:26:29', '0');
INSERT INTO `p_shop` VALUES ('3', '8', '唐笑话', 'http://df.cqyuyan.cn/_2019-01-14_5c3c975d9e841.png', '1', '90：----11:00', '18883287644', '湖北省宜昌市', 'http://df.cqyuyan.cn/_2019-01-14_5c3c975c69083.png', '1', '阿斯顿发送到发送到', '/Public/Home/images/test.jpg', null, null, '2019-01-24 14:21:30', '1');
INSERT INTO `p_shop` VALUES ('5', '5', '糖糖化12311', 'http://df.cqyuyan.cn/_2019-01-14_5c3c97a08fc69.png', '1', '90：----11:00', '136495881231', '重庆花花村子', 'http://df.cqyuyan.cn/_2019-01-14_5c3c97a05f306.png', '1', '撒打发斯蒂芬', '/Public/Home/images/test.jpg', null, '2019-01-15 14:32:20', '2019-01-23 21:39:18', '6000');

-- ----------------------------
-- Table structure for `p_type`
-- ----------------------------
DROP TABLE IF EXISTS `p_type`;
CREATE TABLE `p_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL COMMENT '父ID',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `state` int(1) DEFAULT '1' COMMENT '状态1 有效',
  `sort` int(5) DEFAULT NULL COMMENT '排序',
  `addtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_type
-- ----------------------------
INSERT INTO `p_type` VALUES ('1', '0', '粮油大米', null, '1', '1', '2019-01-02 21:16:00');
INSERT INTO `p_type` VALUES ('2', '0', '烟酒饮料', null, '1', '2', '2019-01-02 21:16:01');
INSERT INTO `p_type` VALUES ('3', '0', '休闲食品', null, '1', '3', '2019-01-02 21:16:02');
INSERT INTO `p_type` VALUES ('4', '0', '个人洗护', null, '1', '4', '2019-01-02 21:16:03');
INSERT INTO `p_type` VALUES ('5', '0', '家居家纺', null, '1', '5', '2019-01-02 21:16:05');
INSERT INTO `p_type` VALUES ('6', '1', '米面粮油', '/Public/Home/images/test6.png', '1', null, '2019-01-10 21:38:56');
INSERT INTO `p_type` VALUES ('7', '1', '食用油', '/Public/Home/images/test7.png', '1', null, '2019-01-10 21:42:48');
INSERT INTO `p_type` VALUES ('8', '2', '厨房调料', '/Public/Home/images/test8.png', '1', null, '2019-01-10 21:42:50');
INSERT INTO `p_type` VALUES ('9', '3', '特色干货', '/Public/Home/images/test9.png', '1', null, '2019-01-10 21:42:52');

-- ----------------------------
-- Table structure for `p_user`
-- ----------------------------
DROP TABLE IF EXISTS `p_user`;
CREATE TABLE `p_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '登录名',
  `password` varchar(125) DEFAULT NULL,
  `state` int(1) DEFAULT '1' COMMENT '1 有效',
  `addtime` datetime DEFAULT NULL COMMENT '注册时间',
  `updatetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_user
-- ----------------------------
INSERT INTO `p_user` VALUES ('1', '0', '123asd', '1', '2017-03-10 13:56:27', null);
INSERT INTO `p_user` VALUES ('2', '0', '123456', '1', '2017-03-10 13:56:27', null);
INSERT INTO `p_user` VALUES ('16', '6', '2', '1', '2019-01-18 13:54:02', '2019-01-18 13:58:49');
INSERT INTO `p_user` VALUES ('17', '5', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2019-01-18 13:59:28', '2019-01-18 13:59:28');
