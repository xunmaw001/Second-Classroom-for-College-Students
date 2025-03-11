-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm92d05
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
-- Table structure for table `canyuwenjuan`
--

DROP TABLE IF EXISTS `canyuwenjuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canyuwenjuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `huifuwenjian` varchar(200) DEFAULT NULL COMMENT '回复文件',
  `yijianjianyi` varchar(200) DEFAULT NULL COMMENT '意见建议',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617777351110 DEFAULT CHARSET=utf8 COMMENT='参与问卷';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canyuwenjuan`
--

LOCK TABLES `canyuwenjuan` WRITE;
/*!40000 ALTER TABLE `canyuwenjuan` DISABLE KEYS */;
INSERT INTO `canyuwenjuan` VALUES (91,'2021-04-07 06:28:53','学号1','姓名1','标题1','','意见建议1'),(92,'2021-04-07 06:28:53','学号2','姓名2','标题2','','意见建议2'),(93,'2021-04-07 06:28:53','学号3','姓名3','标题3','','意见建议3'),(94,'2021-04-07 06:28:53','学号4','姓名4','标题4','','意见建议4'),(95,'2021-04-07 06:28:53','学号5','姓名5','标题5','','意见建议5'),(96,'2021-04-07 06:28:53','学号6','姓名6','标题6','','意见建议6'),(1617777351109,'2021-04-07 06:35:50','1','1','XX','','XXXX');
/*!40000 ALTER TABLE `canyuwenjuan` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm92d05/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm92d05/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm92d05/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusshuodongchengguo`
--

DROP TABLE IF EXISTS `discusshuodongchengguo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusshuodongchengguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='活动成果评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusshuodongchengguo`
--

LOCK TABLES `discusshuodongchengguo` WRITE;
/*!40000 ALTER TABLE `discusshuodongchengguo` DISABLE KEYS */;
INSERT INTO `discusshuodongchengguo` VALUES (101,'2021-04-07 06:28:53',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-04-07 06:28:53',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-04-07 06:28:53',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-04-07 06:28:53',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-04-07 06:28:53',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-04-07 06:28:53',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusshuodongchengguo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongbaoming`
--

DROP TABLE IF EXISTS `huodongbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) DEFAULT NULL COMMENT '活动类型',
  `baomingriqi` date DEFAULT NULL COMMENT '报名日期',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617777326649 DEFAULT CHARSET=utf8 COMMENT='活动报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongbaoming`
--

LOCK TABLES `huodongbaoming` WRITE;
/*!40000 ALTER TABLE `huodongbaoming` DISABLE KEYS */;
INSERT INTO `huodongbaoming` VALUES (51,'2021-04-07 06:28:52','学号1','姓名1','活动名称1','活动类型1','2021-04-07','13823888881','是','XX'),(52,'2021-04-07 06:28:52','学号2','姓名2','活动名称2','活动类型2','2021-04-07','13823888882','是',''),(53,'2021-04-07 06:28:52','学号3','姓名3','活动名称3','活动类型3','2021-04-07','13823888883','是',''),(54,'2021-04-07 06:28:52','学号4','姓名4','活动名称4','活动类型4','2021-04-07','13823888884','是',''),(55,'2021-04-07 06:28:52','学号5','姓名5','活动名称5','活动类型5','2021-04-07','13823888885','是',''),(56,'2021-04-07 06:28:52','学号6','姓名6','活动名称6','活动类型6','2021-04-07','13823888886','是',''),(1617777326648,'2021-04-07 06:35:26','1','1','XXX','类型1','2021-04-08','15468535246','否',NULL);
/*!40000 ALTER TABLE `huodongbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongchengguo`
--

DROP TABLE IF EXISTS `huodongchengguo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongchengguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) DEFAULT NULL COMMENT '活动类型',
  `huodongguocheng` varchar(200) DEFAULT NULL COMMENT '活动过程',
  `xiangguanfujian` varchar(200) DEFAULT NULL COMMENT '相关附件',
  `huodongbaogao` longtext COMMENT '活动报告',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617777387884 DEFAULT CHARSET=utf8 COMMENT='活动成果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongchengguo`
--

LOCK TABLES `huodongchengguo` WRITE;
/*!40000 ALTER TABLE `huodongchengguo` DISABLE KEYS */;
INSERT INTO `huodongchengguo` VALUES (61,'2021-04-07 06:28:52','学号1','姓名1','活动名称1','活动类型1','活动过程1','','活动报告1','2021-04-07','http://localhost:8080/ssm92d05/upload/huodongchengguo_tupian1.jpg','是','',2,1),(62,'2021-04-07 06:28:52','学号2','姓名2','活动名称2','活动类型2','活动过程2','','活动报告2','2021-04-07','http://localhost:8080/ssm92d05/upload/huodongchengguo_tupian2.jpg','是','',2,2),(63,'2021-04-07 06:28:52','学号3','姓名3','活动名称3','活动类型3','活动过程3','','活动报告3','2021-04-07','http://localhost:8080/ssm92d05/upload/huodongchengguo_tupian3.jpg','是','',3,3),(64,'2021-04-07 06:28:52','学号4','姓名4','活动名称4','活动类型4','活动过程4','','活动报告4','2021-04-07','http://localhost:8080/ssm92d05/upload/huodongchengguo_tupian4.jpg','是','',4,4),(65,'2021-04-07 06:28:52','学号5','姓名5','活动名称5','活动类型5','活动过程5','','活动报告5','2021-04-07','http://localhost:8080/ssm92d05/upload/huodongchengguo_tupian5.jpg','是','',5,5),(66,'2021-04-07 06:28:52','学号6','姓名6','活动名称6','活动类型6','活动过程6','','活动报告6','2021-04-07','http://localhost:8080/ssm92d05/upload/huodongchengguo_tupian6.jpg','是','',6,6),(1617777387883,'2021-04-07 06:36:27','1','1','SS','XX','SSS','','<p>SS</p>','2021-04-13','','否','',0,0);
/*!40000 ALTER TABLE `huodongchengguo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongleixing`
--

DROP TABLE IF EXISTS `huodongleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='活动类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongleixing`
--

LOCK TABLES `huodongleixing` WRITE;
/*!40000 ALTER TABLE `huodongleixing` DISABLE KEYS */;
INSERT INTO `huodongleixing` VALUES (41,'2021-04-07 06:28:52','XX'),(42,'2021-04-07 06:28:52','类型2'),(43,'2021-04-07 06:28:52','类型3'),(44,'2021-04-07 06:28:52','类型4'),(45,'2021-04-07 06:28:52','类型5'),(46,'2021-04-07 06:28:52','类型6');
/*!40000 ALTER TABLE `huodongleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongxinxi`
--

DROP TABLE IF EXISTS `huodongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) DEFAULT NULL COMMENT '活动类型',
  `huodongmubiao` varchar(200) DEFAULT NULL COMMENT '活动目标',
  `zhubandanwei` varchar(200) DEFAULT NULL COMMENT '主办单位',
  `yujirenshu` int(11) DEFAULT NULL COMMENT '预计人数',
  `huodongneirong` longtext COMMENT '活动内容',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodongriqi` date DEFAULT NULL COMMENT '活动日期',
  `beizhu` longtext COMMENT '备注',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='活动信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongxinxi`
--

LOCK TABLES `huodongxinxi` WRITE;
/*!40000 ALTER TABLE `huodongxinxi` DISABLE KEYS */;
INSERT INTO `huodongxinxi` VALUES (31,'2021-04-07 06:28:52','XXX','类型1','XX','XXX',10,'<p>XX</p>','XXX','2021-04-08','XX','http://localhost:8080/ssm92d05/upload/huodongxinxi_tupian1.jpg'),(32,'2021-04-07 06:28:52','活动名称2','活动类型2','活动目标2','主办单位2',2,'活动内容2','活动地点2','2021-04-07','备注2','http://localhost:8080/ssm92d05/upload/huodongxinxi_tupian2.jpg'),(33,'2021-04-07 06:28:52','活动名称3','活动类型3','活动目标3','主办单位3',3,'活动内容3','活动地点3','2021-04-07','备注3','http://localhost:8080/ssm92d05/upload/huodongxinxi_tupian3.jpg'),(34,'2021-04-07 06:28:52','活动名称4','活动类型4','活动目标4','主办单位4',4,'活动内容4','活动地点4','2021-04-07','备注4','http://localhost:8080/ssm92d05/upload/huodongxinxi_tupian4.jpg'),(35,'2021-04-07 06:28:52','活动名称5','活动类型5','活动目标5','主办单位5',5,'活动内容5','活动地点5','2021-04-07','备注5','http://localhost:8080/ssm92d05/upload/huodongxinxi_tupian5.jpg'),(36,'2021-04-07 06:28:52','活动名称6','活动类型6','活动目标6','主办单位6',6,'活动内容6','活动地点6','2021-04-07','备注6','http://localhost:8080/ssm92d05/upload/huodongxinxi_tupian6.jpg');
/*!40000 ALTER TABLE `huodongxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','gtep0aisruqvvjgpuh42ltydpan1icv2','2021-04-07 06:32:37','2021-04-07 07:32:37'),(2,11,'1','xuesheng','学生','bm2hjszkl13lml6b4q7ptt0yukqxllnw','2021-04-07 06:35:03','2021-04-07 07:35:03');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-07 06:28:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenjuandiaocha`
--

DROP TABLE IF EXISTS `wenjuandiaocha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wenjuandiaocha` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `timushu` longtext COMMENT '题目数',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `beizhu` longtext COMMENT '备注',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='问卷调查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenjuandiaocha`
--

LOCK TABLES `wenjuandiaocha` WRITE;
/*!40000 ALTER TABLE `wenjuandiaocha` DISABLE KEYS */;
INSERT INTO `wenjuandiaocha` VALUES (81,'2021-04-07 06:28:52','XX','XX','XX','','XX','http://localhost:8080/ssm92d05/upload/wenjuandiaocha_tupian1.jpg','2021-04-08'),(82,'2021-04-07 06:28:52','标题2','类型2','题目数2','','备注2','http://localhost:8080/ssm92d05/upload/wenjuandiaocha_tupian2.jpg','2021-04-07'),(83,'2021-04-07 06:28:52','标题3','类型3','题目数3','','备注3','http://localhost:8080/ssm92d05/upload/wenjuandiaocha_tupian3.jpg','2021-04-07'),(84,'2021-04-07 06:28:52','标题4','类型4','题目数4','','备注4','http://localhost:8080/ssm92d05/upload/wenjuandiaocha_tupian4.jpg','2021-04-07'),(85,'2021-04-07 06:28:52','标题5','类型5','题目数5','','备注5','http://localhost:8080/ssm92d05/upload/wenjuandiaocha_tupian5.jpg','2021-04-07'),(86,'2021-04-07 06:28:52','标题6','类型6','题目数6','','备注6','http://localhost:8080/ssm92d05/upload/wenjuandiaocha_tupian6.jpg','2021-04-07');
/*!40000 ALTER TABLE `wenjuandiaocha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuefenchengji`
--

DROP TABLE IF EXISTS `xuefenchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuefenchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shehuishijian` int(11) DEFAULT NULL COMMENT '社会实践',
  `shegongshetuan` int(11) DEFAULT NULL COMMENT '社工社团',
  `yanjianggoutong` int(11) DEFAULT NULL COMMENT '演讲沟通',
  `zonghexiezuo` int(11) DEFAULT NULL COMMENT '综合写作',
  `canjiajiangzuo` int(11) DEFAULT NULL COMMENT '参加讲座',
  `dushuhuodong` int(11) DEFAULT NULL COMMENT '读书活动',
  `kejiwenhua` int(11) DEFAULT NULL COMMENT '科技文化',
  `zonghedefen` int(11) DEFAULT NULL COMMENT '综合得分',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='学分成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuefenchengji`
--

LOCK TABLES `xuefenchengji` WRITE;
/*!40000 ALTER TABLE `xuefenchengji` DISABLE KEYS */;
INSERT INTO `xuefenchengji` VALUES (71,'2021-04-07 06:28:52','1','1','302',10,5,3,6,8,2,5,39,'XX'),(72,'2021-04-07 06:28:52','学号2','姓名2','班级2',2,2,2,2,2,2,2,2,'备注2'),(73,'2021-04-07 06:28:52','学号3','姓名3','班级3',3,3,3,3,3,3,3,3,'备注3'),(74,'2021-04-07 06:28:52','学号4','姓名4','班级4',4,4,4,4,4,4,4,4,'备注4'),(75,'2021-04-07 06:28:52','学号5','姓名5','班级5',5,5,5,5,5,5,5,5,'备注5'),(76,'2021-04-07 06:28:52','学号6','姓名6','班级6',6,6,6,6,6,6,6,6,'备注6');
/*!40000 ALTER TABLE `xuefenchengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-04-07 06:28:52','1','1','1','女','302','电气','13823888881','773890001@qq.com','http://localhost:8080/ssm92d05/upload/xuesheng_tupian1.jpg'),(12,'2021-04-07 06:28:52','学生2','123456','姓名2','男','班级2','专业2','13823888882','773890002@qq.com','http://localhost:8080/ssm92d05/upload/xuesheng_tupian2.jpg'),(13,'2021-04-07 06:28:52','学生3','123456','姓名3','男','班级3','专业3','13823888883','773890003@qq.com','http://localhost:8080/ssm92d05/upload/xuesheng_tupian3.jpg'),(14,'2021-04-07 06:28:52','学生4','123456','姓名4','男','班级4','专业4','13823888884','773890004@qq.com','http://localhost:8080/ssm92d05/upload/xuesheng_tupian4.jpg'),(15,'2021-04-07 06:28:52','学生5','123456','姓名5','男','班级5','专业5','13823888885','773890005@qq.com','http://localhost:8080/ssm92d05/upload/xuesheng_tupian5.jpg'),(16,'2021-04-07 06:28:52','学生6','123456','姓名6','男','班级6','专业6','13823888886','773890006@qq.com','http://localhost:8080/ssm92d05/upload/xuesheng_tupian6.jpg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanyeleixing`
--

DROP TABLE IF EXISTS `zhuanyeleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanyeleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='专业类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanyeleixing`
--

LOCK TABLES `zhuanyeleixing` WRITE;
/*!40000 ALTER TABLE `zhuanyeleixing` DISABLE KEYS */;
INSERT INTO `zhuanyeleixing` VALUES (21,'2021-04-07 06:28:52','电气'),(22,'2021-04-07 06:28:52','分类2'),(23,'2021-04-07 06:28:52','分类3'),(24,'2021-04-07 06:28:52','分类4'),(25,'2021-04-07 06:28:52','分类5'),(26,'2021-04-07 06:28:52','分类6');
/*!40000 ALTER TABLE `zhuanyeleixing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-10 21:48:24
