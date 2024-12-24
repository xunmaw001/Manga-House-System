-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootp68f1
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springbootp68f1`
--

/*!40000 DROP DATABASE IF EXISTS `springbootp68f1`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootp68f1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootp68f1`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2022-04-19 03:38:58',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2022-04-19 03:38:58',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2022-04-19 03:38:58',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2022-04-19 03:38:58',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2022-04-19 03:38:58',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2022-04-19 03:38:58',16,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2022-04-19 03:38:58',1,1,'提问1','回复1',1),(82,'2022-04-19 03:38:58',2,2,'提问2','回复2',2),(83,'2022-04-19 03:38:58',3,3,'提问3','回复3',3),(84,'2022-04-19 03:38:58',4,4,'提问4','回复4',4),(85,'2022-04-19 03:38:58',5,5,'提问5','回复5',5),(86,'2022-04-19 03:38:58',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmanhua`
--

DROP TABLE IF EXISTS `discussmanhua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmanhua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='漫画评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmanhua`
--

LOCK TABLES `discussmanhua` WRITE;
/*!40000 ALTER TABLE `discussmanhua` DISABLE KEYS */;
INSERT INTO `discussmanhua` VALUES (151,'2022-04-19 03:38:58',1,1,'用户名1','评论内容1','回复内容1'),(152,'2022-04-19 03:38:58',2,2,'用户名2','评论内容2','回复内容2'),(153,'2022-04-19 03:38:58',3,3,'用户名3','评论内容3','回复内容3'),(154,'2022-04-19 03:38:58',4,4,'用户名4','评论内容4','回复内容4'),(155,'2022-04-19 03:38:58',5,5,'用户名5','评论内容5','回复内容5'),(156,'2022-04-19 03:38:58',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussmanhua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmanhuahuodong`
--

DROP TABLE IF EXISTS `discussmanhuahuodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmanhuahuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='漫画活动评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmanhuahuodong`
--

LOCK TABLES `discussmanhuahuodong` WRITE;
/*!40000 ALTER TABLE `discussmanhuahuodong` DISABLE KEYS */;
INSERT INTO `discussmanhuahuodong` VALUES (171,'2022-04-19 03:38:58',1,1,'用户名1','评论内容1','回复内容1'),(172,'2022-04-19 03:38:58',2,2,'用户名2','评论内容2','回复内容2'),(173,'2022-04-19 03:38:58',3,3,'用户名3','评论内容3','回复内容3'),(174,'2022-04-19 03:38:58',4,4,'用户名4','评论内容4','回复内容4'),(175,'2022-04-19 03:38:58',5,5,'用户名5','评论内容5','回复内容5'),(176,'2022-04-19 03:38:58',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussmanhuahuodong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpin`
--

DROP TABLE IF EXISTS `discussshangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='商品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpin`
--

LOCK TABLES `discussshangpin` WRITE;
/*!40000 ALTER TABLE `discussshangpin` DISABLE KEYS */;
INSERT INTO `discussshangpin` VALUES (181,'2022-04-19 03:38:58',1,1,'用户名1','评论内容1','回复内容1'),(182,'2022-04-19 03:38:58',2,2,'用户名2','评论内容2','回复内容2'),(183,'2022-04-19 03:38:58',3,3,'用户名3','评论内容3','回复内容3'),(184,'2022-04-19 03:38:58',4,4,'用户名4','评论内容4','回复内容4'),(185,'2022-04-19 03:38:58',5,5,'用户名5','评论内容5','回复内容5'),(186,'2022-04-19 03:38:58',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstongrenchahua`
--

DROP TABLE IF EXISTS `discusstongrenchahua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstongrenchahua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='同人插画评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstongrenchahua`
--

LOCK TABLES `discusstongrenchahua` WRITE;
/*!40000 ALTER TABLE `discusstongrenchahua` DISABLE KEYS */;
INSERT INTO `discusstongrenchahua` VALUES (161,'2022-04-19 03:38:58',1,1,'用户名1','评论内容1','回复内容1'),(162,'2022-04-19 03:38:58',2,2,'用户名2','评论内容2','回复内容2'),(163,'2022-04-19 03:38:58',3,3,'用户名3','评论内容3','回复内容3'),(164,'2022-04-19 03:38:58',4,4,'用户名4','评论内容4','回复内容4'),(165,'2022-04-19 03:38:58',5,5,'用户名5','评论内容5','回复内容5'),(166,'2022-04-19 03:38:58',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusstongrenchahua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='漫友交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2022-04-19 03:38:58','帖子标题1','帖子内容1',0,1,'用户名1','开放'),(92,'2022-04-19 03:38:58','帖子标题2','帖子内容2',0,2,'用户名2','开放'),(93,'2022-04-19 03:38:58','帖子标题3','帖子内容3',0,3,'用户名3','开放'),(94,'2022-04-19 03:38:58','帖子标题4','帖子内容4',0,4,'用户名4','开放'),(95,'2022-04-19 03:38:58','帖子标题5','帖子内容5',0,5,'用户名5','开放'),(96,'2022-04-19 03:38:58','帖子标题6','帖子内容6',0,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manhua`
--

DROP TABLE IF EXISTS `manhua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manhua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `manhuamingcheng` varchar(200) DEFAULT NULL COMMENT '漫画名称',
  `manhualeixing` varchar(200) DEFAULT NULL COMMENT '漫画类型',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='漫画';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manhua`
--

LOCK TABLES `manhua` WRITE;
/*!40000 ALTER TABLE `manhua` DISABLE KEYS */;
INSERT INTO `manhua` VALUES (21,'2022-04-19 03:38:58','漫画名称1','原创漫画','玄幻','upload/manhua_tupian1.jpg','内容1','2022-04-19','用户账号1','用户姓名1','是','',1,1),(22,'2022-04-19 03:38:58','漫画名称2','原创漫画','玄幻','upload/manhua_tupian2.jpg','内容2','2022-04-19','用户账号2','用户姓名2','是','',2,2),(23,'2022-04-19 03:38:58','漫画名称3','原创漫画','玄幻','upload/manhua_tupian3.jpg','内容3','2022-04-19','用户账号3','用户姓名3','是','',3,3),(24,'2022-04-19 03:38:58','漫画名称4','原创漫画','玄幻','upload/manhua_tupian4.jpg','内容4','2022-04-19','用户账号4','用户姓名4','是','',4,4),(25,'2022-04-19 03:38:58','漫画名称5','原创漫画','玄幻','upload/manhua_tupian5.jpg','内容5','2022-04-19','用户账号5','用户姓名5','是','',5,5),(26,'2022-04-19 03:38:58','漫画名称6','原创漫画','玄幻','upload/manhua_tupian6.jpg','内容6','2022-04-19','用户账号6','用户姓名6','是','',6,6);
/*!40000 ALTER TABLE `manhua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manhuahuodong`
--

DROP TABLE IF EXISTS `manhuahuodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manhuahuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirongxiangqing` longtext COMMENT '内容详情',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='漫画活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manhuahuodong`
--

LOCK TABLES `manhuahuodong` WRITE;
/*!40000 ALTER TABLE `manhuahuodong` DISABLE KEYS */;
INSERT INTO `manhuahuodong` VALUES (41,'2022-04-19 03:38:58','标题1','upload/manhuahuodong_fengmian1.jpg','内容详情1','2022-04-19','用户账号1','用户姓名1','是','',1,1),(42,'2022-04-19 03:38:58','标题2','upload/manhuahuodong_fengmian2.jpg','内容详情2','2022-04-19','用户账号2','用户姓名2','是','',2,2),(43,'2022-04-19 03:38:58','标题3','upload/manhuahuodong_fengmian3.jpg','内容详情3','2022-04-19','用户账号3','用户姓名3','是','',3,3),(44,'2022-04-19 03:38:58','标题4','upload/manhuahuodong_fengmian4.jpg','内容详情4','2022-04-19','用户账号4','用户姓名4','是','',4,4),(45,'2022-04-19 03:38:58','标题5','upload/manhuahuodong_fengmian5.jpg','内容详情5','2022-04-19','用户账号5','用户姓名5','是','',5,5),(46,'2022-04-19 03:38:58','标题6','upload/manhuahuodong_fengmian6.jpg','内容详情6','2022-04-19','用户账号6','用户姓名6','是','',6,6);
/*!40000 ALTER TABLE `manhuahuodong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` varchar(200) DEFAULT NULL COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` varchar(200) DEFAULT NULL COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (141,'2022-04-19 03:38:58',1,'用户名1','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(142,'2022-04-19 03:38:58',2,'用户名2','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(143,'2022-04-19 03:38:58',3,'用户名3','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(144,'2022-04-19 03:38:58',4,'用户名4','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(145,'2022-04-19 03:38:58',5,'用户名5','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(146,'2022-04-19 03:38:58',6,'用户名6','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `logistics` longtext COMMENT '物流',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpin`
--

DROP TABLE IF EXISTS `shangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) NOT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinmingcheng` (`shangpinmingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpin`
--

LOCK TABLES `shangpin` WRITE;
/*!40000 ALTER TABLE `shangpin` DISABLE KEYS */;
INSERT INTO `shangpin` VALUES (51,'2022-04-19 03:38:58','商品编号1','商品名称1','upload/shangpin_tupian1.jpg','数量1','2022-04-19','用户账号1','用户姓名1','是','',1,1,99.9),(52,'2022-04-19 03:38:58','商品编号2','商品名称2','upload/shangpin_tupian2.jpg','数量2','2022-04-19','用户账号2','用户姓名2','是','',2,2,99.9),(53,'2022-04-19 03:38:58','商品编号3','商品名称3','upload/shangpin_tupian3.jpg','数量3','2022-04-19','用户账号3','用户姓名3','是','',3,3,99.9),(54,'2022-04-19 03:38:58','商品编号4','商品名称4','upload/shangpin_tupian4.jpg','数量4','2022-04-19','用户账号4','用户姓名4','是','',4,4,99.9),(55,'2022-04-19 03:38:58','商品编号5','商品名称5','upload/shangpin_tupian5.jpg','数量5','2022-04-19','用户账号5','用户姓名5','是','',5,5,99.9),(56,'2022-04-19 03:38:58','商品编号6','商品名称6','upload/shangpin_tupian6.jpg','数量6','2022-04-19','用户账号6','用户姓名6','是','',6,6,99.9);
/*!40000 ALTER TABLE `shangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongrenchahua`
--

DROP TABLE IF EXISTS `tongrenchahua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tongrenchahua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='同人插画';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongrenchahua`
--

LOCK TABLES `tongrenchahua` WRITE;
/*!40000 ALTER TABLE `tongrenchahua` DISABLE KEYS */;
INSERT INTO `tongrenchahua` VALUES (31,'2022-04-19 03:38:58','名称1','upload/tongrenchahua_tupian1.jpg','内容1','2022-04-19','用户账号1','用户姓名1','是','',1,1),(32,'2022-04-19 03:38:58','名称2','upload/tongrenchahua_tupian2.jpg','内容2','2022-04-19','用户账号2','用户姓名2','是','',2,2),(33,'2022-04-19 03:38:58','名称3','upload/tongrenchahua_tupian3.jpg','内容3','2022-04-19','用户账号3','用户姓名3','是','',3,3),(34,'2022-04-19 03:38:58','名称4','upload/tongrenchahua_tupian4.jpg','内容4','2022-04-19','用户账号4','用户姓名4','是','',4,4),(35,'2022-04-19 03:38:58','名称5','upload/tongrenchahua_tupian5.jpg','内容5','2022-04-19','用户账号5','用户姓名5','是','',5,5),(36,'2022-04-19 03:38:58','名称6','upload/tongrenchahua_tupian6.jpg','内容6','2022-04-19','用户账号6','用户姓名6','是','',6,6);
/*!40000 ALTER TABLE `tongrenchahua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-19 03:38:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-04-19 03:38:58','用户账号1','用户姓名1','123456','男','13823888881','upload/yonghu_touxiang1.jpg',100),(12,'2022-04-19 03:38:58','用户账号2','用户姓名2','123456','男','13823888882','upload/yonghu_touxiang2.jpg',100),(13,'2022-04-19 03:38:58','用户账号3','用户姓名3','123456','男','13823888883','upload/yonghu_touxiang3.jpg',100),(14,'2022-04-19 03:38:58','用户账号4','用户姓名4','123456','男','13823888884','upload/yonghu_touxiang4.jpg',100),(15,'2022-04-19 03:38:58','用户账号5','用户姓名5','123456','男','13823888885','upload/yonghu_touxiang5.jpg',100),(16,'2022-04-19 03:38:58','用户账号6','用户姓名6','123456','男','13823888886','upload/yonghu_touxiang6.jpg',100);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuegao`
--

DROP TABLE IF EXISTS `yuegao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuegao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhutimingcheng` varchar(200) DEFAULT NULL COMMENT '主题名称',
  `chuangzuofanwei` varchar(200) DEFAULT NULL COMMENT '创作范围',
  `zhutixianzhi` longtext COMMENT '主题限制',
  `gaofei` varchar(200) DEFAULT NULL COMMENT '稿费',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='约稿';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuegao`
--

LOCK TABLES `yuegao` WRITE;
/*!40000 ALTER TABLE `yuegao` DISABLE KEYS */;
INSERT INTO `yuegao` VALUES (61,'2022-04-19 03:38:58','主题名称1','创作范围1','主题限制1','稿费1','用户账号1','用户姓名1','13823888881','是',''),(62,'2022-04-19 03:38:58','主题名称2','创作范围2','主题限制2','稿费2','用户账号2','用户姓名2','13823888882','是',''),(63,'2022-04-19 03:38:58','主题名称3','创作范围3','主题限制3','稿费3','用户账号3','用户姓名3','13823888883','是',''),(64,'2022-04-19 03:38:58','主题名称4','创作范围4','主题限制4','稿费4','用户账号4','用户姓名4','13823888884','是',''),(65,'2022-04-19 03:38:58','主题名称5','创作范围5','主题限制5','稿费5','用户账号5','用户姓名5','13823888885','是',''),(66,'2022-04-19 03:38:58','主题名称6','创作范围6','主题限制6','稿费6','用户账号6','用户姓名6','13823888886','是','');
/*!40000 ALTER TABLE `yuegao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuegaogonggao`
--

DROP TABLE IF EXISTS `yuegaogonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuegaogonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirongxiangqing` longtext COMMENT '内容详情',
  `yaoqiu` varchar(200) DEFAULT NULL COMMENT '要求',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='约稿公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuegaogonggao`
--

LOCK TABLES `yuegaogonggao` WRITE;
/*!40000 ALTER TABLE `yuegaogonggao` DISABLE KEYS */;
INSERT INTO `yuegaogonggao` VALUES (71,'2022-04-19 03:38:58','标题1','upload/yuegaogonggao_fengmian1.jpg','内容详情1','要求1','2022-04-19','用户账号1','用户姓名1','是',''),(72,'2022-04-19 03:38:58','标题2','upload/yuegaogonggao_fengmian2.jpg','内容详情2','要求2','2022-04-19','用户账号2','用户姓名2','是',''),(73,'2022-04-19 03:38:58','标题3','upload/yuegaogonggao_fengmian3.jpg','内容详情3','要求3','2022-04-19','用户账号3','用户姓名3','是',''),(74,'2022-04-19 03:38:58','标题4','upload/yuegaogonggao_fengmian4.jpg','内容详情4','要求4','2022-04-19','用户账号4','用户姓名4','是',''),(75,'2022-04-19 03:38:58','标题5','upload/yuegaogonggao_fengmian5.jpg','内容详情5','要求5','2022-04-19','用户账号5','用户姓名5','是',''),(76,'2022-04-19 03:38:58','标题6','upload/yuegaogonggao_fengmian6.jpg','内容详情6','要求6','2022-04-19','用户账号6','用户姓名6','是','');
/*!40000 ALTER TABLE `yuegaogonggao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-20 14:54:33
