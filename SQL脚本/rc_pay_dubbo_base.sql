# Host: 192.168.1.215  (Version 5.6.26-log)
# Date: 2016-09-19 00:32:27
# Generator: MySQL-Front 5.3  (Build 7.5)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "rp_notify_record"
#

DROP TABLE IF EXISTS `rp_notify_record`;
CREATE TABLE `rp_notify_record` (
  `id` varchar(50) NOT NULL,
  `version` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `editor` varchar(100) DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `notify_times` int(11) NOT NULL,
  `limit_notify_times` int(11) NOT NULL,
  `url` varchar(2000) NOT NULL,
  `merchant_order_no` varchar(50) NOT NULL,
  `merchant_no` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL COMMENT '100:成功 101:失败',
  `notify_type` varchar(30) DEFAULT NULL COMMENT '通知类型',
  PRIMARY KEY (`id`),
  KEY `AK_KEY_2` (`merchant_order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知记录表 RP_NOTIFY_RECORD';

#
# Data for table "rp_notify_record"
#


#
# Structure for table "rp_notify_record_log"
#

DROP TABLE IF EXISTS `rp_notify_record_log`;
CREATE TABLE `rp_notify_record_log` (
  `id` varchar(50) NOT NULL,
  `version` int(11) NOT NULL,
  `editor` varchar(100) DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `create_time` datetime NOT NULL,
  `notify_id` varchar(50) NOT NULL,
  `request` varchar(2000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `merchant_no` varchar(50) NOT NULL,
  `merchant_order_no` varchar(50) NOT NULL COMMENT '商户订单号',
  `http_status` varchar(50) NOT NULL COMMENT 'HTTP状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知记录日志表 RP_NOTIFY_RECORD_LOG';

#
# Data for table "rp_notify_record_log"
#


#
# Structure for table "rp_pay_product"
#

DROP TABLE IF EXISTS `rp_pay_product`;
CREATE TABLE `rp_pay_product` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `status` varchar(36) NOT NULL,
  `product_code` varchar(50) NOT NULL COMMENT '支付产品编号',
  `product_name` varchar(200) NOT NULL COMMENT '支付产品名称',
  `audit_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付产品表';

#
# Data for table "rp_pay_product"
#

INSERT INTO `rp_pay_product` VALUES ('5ac23e853c454edcb2bf51624bdbc194','2016-07-19 17:53:12','2016-07-19 17:58:21',0,'ACTIVE','RonCooPay','龙果支付','YES'),('7e496b1206714527863fa2cf3f836db5','2016-07-19 18:51:38','2016-07-21 16:39:58',0,'ACTIVE','RC','RC','YES'),('ec7502bbf1894cb69ede121433594285','2016-09-17 18:08:50','2016-09-17 18:09:16',0,'UNACTIVE','BBB','BBB','NO');

#
# Structure for table "rp_pay_way"
#

DROP TABLE IF EXISTS `rp_pay_way`;
CREATE TABLE `rp_pay_way` (
  `ID` varchar(50) NOT NULL COMMENT 'ID',
  `version` bigint(20) NOT NULL DEFAULT '0' COMMENT 'version',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `pay_way_code` varchar(50) NOT NULL COMMENT '支付方式编号',
  `pay_way_name` varchar(100) NOT NULL COMMENT '支付方式名称',
  `pay_type_code` varchar(50) NOT NULL COMMENT '支付类型编号',
  `pay_type_name` varchar(100) NOT NULL COMMENT '支付类型名称',
  `pay_product_code` varchar(50) DEFAULT NULL COMMENT '支付产品编号',
  `status` varchar(36) NOT NULL COMMENT '状态(100:正常状态,101非正常状态)',
  `sorts` int(11) DEFAULT '1000' COMMENT '排序(倒序排序,默认值1000)',
  `pay_rate` double NOT NULL COMMENT '商户支付费率',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付方式';

#
# Data for table "rp_pay_way"
#

INSERT INTO `rp_pay_way` VALUES ('1431d5a280fc4c51afcfbca9f32822d8',0,'2016-07-19 17:53:52',NULL,'WEIXIN','微信','SCANPAY','扫码支付','RonCooPay','ACTIVE',NULL,0.8),('3ee734a9ed68405c89ead08683cad6c7',0,'2016-09-17 18:09:05','2016-09-17 18:09:10','TEST_PAY','测试模拟支付','TEST_PAY','测试模拟支付','BBB','UNACTIVE',NULL,9),('a4af58b75b3e40c4bd38ac647e27800f',0,'2016-07-19 18:51:52',NULL,'TEST_PAY','测试模拟支付','TEST_PAY','测试模拟支付','RC','ACTIVE',NULL,0.8),('c5cdda3d8f1e47bca9ac96ffb2ea17b1',0,'2016-07-19 17:54:16','2016-07-19 17:54:25','ALIPAY','支付宝','DIRECT_PAY','即时到账','RonCooPay','ACTIVE',NULL,0.8),('db522b1446ff4dc2bd6fcd73bc1f3423',0,'2016-07-21 16:39:51',NULL,'TEST_PAY_HTTP_CLIENT','测试模拟httpclient支付','TEST_PAY_HTTP_CLIENT','测试模拟httpclient支付','RC','ACTIVE',NULL,0.8),('dcda9a88435e47b3b6d24df2c6358be1',0,'2016-07-19 18:52:41',NULL,'ALIPAY','支付宝','DIRECT_PAY','即时到账','RC','ACTIVE',NULL,0.8),('ff242c5f9c3e4ea7a857860e57f6ddd4',0,'2016-07-19 18:52:29',NULL,'WEIXIN','微信','SCANPAY','扫码支付','RC','ACTIVE',NULL,0.8);

#
# Structure for table "rp_user_info"
#

DROP TABLE IF EXISTS `rp_user_info`;
CREATE TABLE `rp_user_info` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `status` varchar(36) NOT NULL,
  `user_no` varchar(50) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `account_no` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `AK_Key_2` (`account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表用来存放用户的基本信息';

#
# Data for table "rp_user_info"
#

INSERT INTO `rp_user_info` VALUES ('0101ff47cd1f43a5b6a52144e9a78e30','2016-07-24 20:20:26','ACTIVE','88882016072400000006','hpt','99992016072400000006'),('0764455933ce43a093bbe0f60867ee91','2016-07-22 15:56:26','ACTIVE','88882016072200000005','Along','99992016072200000005'),('18fee8f2fafe4251a5aa2e95e30dc126','2016-07-21 01:06:51','ACTIVE','88882016072100000004','wusc','99992016072100000004'),('64b098ee76574c5681710b47d10bcd64','2016-07-24 20:21:45','ACTIVE','88882016072400000007','leslie','99992016072400000007'),('c48f5ac8024a4547878b5708b311215c','2016-07-19 16:55:09','ACTIVE','88882016071900000003','roncoo','99992016071900000003');

#
# Structure for table "rp_user_pay_config"
#

DROP TABLE IF EXISTS `rp_user_pay_config`;
CREATE TABLE `rp_user_pay_config` (
  `id` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` varchar(36) NOT NULL,
  `audit_status` varchar(45) DEFAULT NULL,
  `is_auto_sett` varchar(36) NOT NULL DEFAULT 'NO',
  `product_code` varchar(50) NOT NULL COMMENT '支付产品编号',
  `product_name` varchar(200) NOT NULL COMMENT '支付产品名称',
  `user_no` varchar(50) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `risk_day` int(11) DEFAULT NULL,
  `pay_key` varchar(50) DEFAULT NULL,
  `fund_into_type` varchar(50) DEFAULT NULL,
  `pay_secret` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付设置表';

#
# Data for table "rp_user_pay_config"
#

INSERT INTO `rp_user_pay_config` VALUES ('2a7f8f1c8ebf4379a42a6f88b8b8bc56','2016-07-22 15:57:40',NULL,0,NULL,'ACTIVE','YES','NO','RC','RC','88882016072100000004','wusc',1,'8ba459f55ff04f39b0128a3cb4a48f2b','PLAT_RECEIVES','3e2ca2eb1f024570b241d65eb4832c37'),('3eef704ce6ef4f27b39f8b9ba1af71e4','2016-07-24 20:22:48',NULL,0,NULL,'ACTIVE','YES','NO','RC','RC','88882016072400000007','leslie',1,'93d1ea2f9f3b448994f39d6efc7746ef','PLAT_RECEIVES','fad7ea79810c4af7a973c091aa7c6143'),('8d5a1884969a4bf68dc9c19b7a0bdc18','2016-07-22 15:56:57',NULL,0,NULL,'ACTIVE','YES','NO','RC','RC','88882016072200000005','Along',1,'abcf900288114d5fa7fde764966eb2ff','PLAT_RECEIVES','d94d7c2d56eb4b06828cf746c8be17e6'),('c101c24326554b848f0f497234f129d7','2016-07-19 17:59:38','2016-07-21 16:40:17',0,NULL,'ACTIVE','YES','NO','RC','RC','88882016071900000003','roncoo',1,'4c52295065654407b42797cda80dd07d','PLAT_RECEIVES','6606353e0dab4f7b9a723f2d3e3276b7'),('e510d10eed13497d9fafb492688d09d3','2016-07-24 20:23:11',NULL,0,NULL,'ACTIVE','YES','NO','RC','RC','88882016072400000006','hpt',1,'ca6577dff6d647ac882dfb405ceda21e','PLAT_RECEIVES','1b8da6c9b7544856955fcff6bf920f84');

#
# Structure for table "rp_user_pay_info"
#

DROP TABLE IF EXISTS `rp_user_pay_info`;
CREATE TABLE `rp_user_pay_info` (
  `id_` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` varchar(36) NOT NULL,
  `app_id` varchar(50) NOT NULL,
  `app_sectet` varchar(100) DEFAULT NULL,
  `merchant_id` varchar(50) DEFAULT NULL,
  `app_type` varchar(50) DEFAULT NULL,
  `user_no` varchar(50) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `partner_key` varchar(100) DEFAULT NULL,
  `pay_way_code` varchar(50) NOT NULL COMMENT '支付方式编号',
  `pay_way_name` varchar(100) NOT NULL COMMENT '支付方式名称',
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表用来存放用户开通的第三方支付信息';

#
# Data for table "rp_user_pay_info"
#

INSERT INTO `rp_user_pay_info` VALUES ('04a257f258f74d4eb8a2182b627a199f','2016-07-24 20:22:48',NULL,0,NULL,'ACTIVE','',NULL,'',NULL,'88882016072400000007','leslie','','WEIXIN','微信'),('1834040201214f9a8ca0557045fc7c72','2016-07-24 20:23:11',NULL,0,NULL,'ACTIVE','',NULL,'',NULL,'88882016072400000006','hpt','','ALIPAY','支付宝'),('45ecd39829cb4c009ad9c5a1153cbd57','2016-07-22 15:56:57',NULL,0,NULL,'ACTIVE','',NULL,'',NULL,'88882016072200000005','Along','','WEIXIN','微信'),('4821fb3f63db4f58a0fc75a91a38bc04','2016-07-22 15:57:40',NULL,0,NULL,'ACTIVE','',NULL,'',NULL,'88882016072100000004','wusc','','WEIXIN','微信'),('4ee1f39ecb0544e792ef5d5df6ec6fb2','2016-07-24 20:23:11',NULL,0,NULL,'ACTIVE','',NULL,'',NULL,'88882016072400000006','hpt','','WEIXIN','微信'),('52bca84256154c588d2952b34a68dad4','2016-07-22 15:56:57',NULL,0,NULL,'ACTIVE','',NULL,'',NULL,'88882016072200000005','Along','','ALIPAY','支付宝'),('8a23a87d6afb425cb8974110bb015f06','2016-07-22 15:57:40',NULL,0,NULL,'ACTIVE','',NULL,'',NULL,'88882016072100000004','wusc','','ALIPAY','支付宝'),('8f3064039e8241029b71be1b8a9be7ce','2016-07-19 17:59:38','2016-07-21 16:40:17',0,NULL,'ACTIVE','',NULL,'',NULL,'88882016071900000003','roncoo','','ALIPAY','支付宝'),('981cd025a111452cafb9c103c5df0f9d','2016-07-24 20:22:48',NULL,0,NULL,'ACTIVE','',NULL,'',NULL,'88882016072400000007','leslie','','ALIPAY','支付宝'),('d6ecaedb883149a28356d2510b711793','2016-07-19 17:59:38','2016-07-21 16:40:17',0,NULL,'ACTIVE','',NULL,'',NULL,'88882016071900000003','roncoo','','WEIXIN','微信');

#
# Structure for table "seq_table"
#

DROP TABLE IF EXISTS `seq_table`;
CREATE TABLE `seq_table` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `CURRENT_VALUE` bigint(20) NOT NULL DEFAULT '1000000002',
  `INCREMENT` smallint(6) NOT NULL DEFAULT '1',
  `REMARK` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "seq_table"
#

INSERT INTO `seq_table` VALUES ('ACCOUNT_NO_SEQ',1000000007,1,'账户--账户编号'),('USER_NO_SEQ',1000000007,1,'用户--用户编号');

#
# Function "FUN_DATE_ADD"
#

DROP FUNCTION IF EXISTS `FUN_DATE_ADD`;
CREATE FUNCTION `FUN_DATE_ADD`(STR_DATE VARCHAR(10), STR_INTERVAL INTEGER) RETURNS date
BEGIN
     RETURN date_add(STR_DATE, INTERVAL STR_INTERVAL DAY);
END;

#
# Function "FUN_NOW"
#

DROP FUNCTION IF EXISTS `FUN_NOW`;
CREATE FUNCTION `FUN_NOW`() RETURNS datetime
BEGIN 
		RETURN now();
END;

#
# Function "FUN_SEQ"
#

DROP FUNCTION IF EXISTS `FUN_SEQ`;
CREATE FUNCTION `FUN_SEQ`(SEQ VARCHAR(50)) RETURNS bigint(20)
BEGIN
     UPDATE SEQ_TABLE
     SET CURRENT_VALUE = CURRENT_VALUE + INCREMENT
     WHERE  SEQ_NAME=SEQ;
     RETURN FUN_SEQ_CURRENT_VALUE(SEQ);
END;

#
# Function "FUN_SEQ_CURRENT_VALUE"
#

DROP FUNCTION IF EXISTS `FUN_SEQ_CURRENT_VALUE`;
CREATE FUNCTION `FUN_SEQ_CURRENT_VALUE`(SEQ VARCHAR(50)) RETURNS bigint(20)
BEGIN
    DECLARE VALUE INTEGER;
    SET VALUE=0;
    SELECT CURRENT_VALUE INTO VALUE
    FROM SEQ_TABLE 
    WHERE SEQ_NAME=SEQ;
    RETURN VALUE;
END;

#
# Function "FUN_SEQ_SET_VALUE"
#

DROP FUNCTION IF EXISTS `FUN_SEQ_SET_VALUE`;
CREATE FUNCTION `FUN_SEQ_SET_VALUE`(SEQ VARCHAR(50), VALUE INTEGER) RETURNS bigint(20)
BEGIN
     UPDATE SEQ_TABLE 
     SET CURRENT_VALUE=VALUE
     WHERE SEQ_NAME=SEQ;
     RETURN FUN_SEQ_CURRENT_VALUE(SEQ);
END;
