/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm88j08
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm88j08` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm88j08`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='在线交流';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (111,'2021-05-17 10:32:14',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (112,'2021-05-17 10:32:14',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (113,'2021-05-17 10:32:14',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (114,'2021-05-17 10:32:14',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (115,'2021-05-17 10:32:14',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (116,'2021-05-17 10:32:14',6,6,'提问6','回复6',6);

/*Table structure for table `chufangfenxi` */

DROP TABLE IF EXISTS `chufangfenxi`;

CREATE TABLE `chufangfenxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenxibianhao` varchar(200) DEFAULT NULL COMMENT '分析编号',
  `chufangbianhao` varchar(200) DEFAULT NULL COMMENT '厨房编号',
  `chufangmingcheng` varchar(200) DEFAULT NULL COMMENT '厨房名称',
  `shiyongcishu` int(11) DEFAULT NULL COMMENT '使用次数',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenxibianhao` (`fenxibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='厨房分析';

/*Data for the table `chufangfenxi` */

insert  into `chufangfenxi`(`id`,`addtime`,`fenxibianhao`,`chufangbianhao`,`chufangmingcheng`,`shiyongcishu`,`dengjiriqi`,`beizhu`) values (101,'2021-05-17 10:32:14','分析编号1','厨房编号1','厨房名称1',1,'2021-05-17','备注1');
insert  into `chufangfenxi`(`id`,`addtime`,`fenxibianhao`,`chufangbianhao`,`chufangmingcheng`,`shiyongcishu`,`dengjiriqi`,`beizhu`) values (102,'2021-05-17 10:32:14','分析编号2','厨房编号2','厨房名称2',2,'2021-05-17','备注2');
insert  into `chufangfenxi`(`id`,`addtime`,`fenxibianhao`,`chufangbianhao`,`chufangmingcheng`,`shiyongcishu`,`dengjiriqi`,`beizhu`) values (103,'2021-05-17 10:32:14','分析编号3','厨房编号3','厨房名称3',3,'2021-05-17','备注3');
insert  into `chufangfenxi`(`id`,`addtime`,`fenxibianhao`,`chufangbianhao`,`chufangmingcheng`,`shiyongcishu`,`dengjiriqi`,`beizhu`) values (104,'2021-05-17 10:32:14','分析编号4','厨房编号4','厨房名称4',4,'2021-05-17','备注4');
insert  into `chufangfenxi`(`id`,`addtime`,`fenxibianhao`,`chufangbianhao`,`chufangmingcheng`,`shiyongcishu`,`dengjiriqi`,`beizhu`) values (105,'2021-05-17 10:32:14','分析编号5','厨房编号5','厨房名称5',5,'2021-05-17','备注5');
insert  into `chufangfenxi`(`id`,`addtime`,`fenxibianhao`,`chufangbianhao`,`chufangmingcheng`,`shiyongcishu`,`dengjiriqi`,`beizhu`) values (106,'2021-05-17 10:32:14','分析编号6','厨房编号6','厨房名称6',6,'2021-05-17','备注6');

/*Table structure for table `chufangshebei` */

DROP TABLE IF EXISTS `chufangshebei`;

CREATE TABLE `chufangshebei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yongtu` longtext COMMENT '用途',
  `shebeixiangqing` longtext COMMENT '设备详情',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='厨房设备';

/*Data for the table `chufangshebei` */

insert  into `chufangshebei`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`yongtu`,`shebeixiangqing`,`dengjiriqi`) values (31,'2021-05-17 10:32:14','设备编号1','设备名称1','http://localhost:8080/ssm88j08/upload/chufangshebei_tupian1.jpg','用途1','设备详情1','2021-05-17');
insert  into `chufangshebei`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`yongtu`,`shebeixiangqing`,`dengjiriqi`) values (32,'2021-05-17 10:32:14','设备编号2','设备名称2','http://localhost:8080/ssm88j08/upload/chufangshebei_tupian2.jpg','用途2','设备详情2','2021-05-17');
insert  into `chufangshebei`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`yongtu`,`shebeixiangqing`,`dengjiriqi`) values (33,'2021-05-17 10:32:14','设备编号3','设备名称3','http://localhost:8080/ssm88j08/upload/chufangshebei_tupian3.jpg','用途3','设备详情3','2021-05-17');
insert  into `chufangshebei`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`yongtu`,`shebeixiangqing`,`dengjiriqi`) values (34,'2021-05-17 10:32:14','设备编号4','设备名称4','http://localhost:8080/ssm88j08/upload/chufangshebei_tupian4.jpg','用途4','设备详情4','2021-05-17');
insert  into `chufangshebei`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`yongtu`,`shebeixiangqing`,`dengjiriqi`) values (35,'2021-05-17 10:32:14','设备编号5','设备名称5','http://localhost:8080/ssm88j08/upload/chufangshebei_tupian5.jpg','用途5','设备详情5','2021-05-17');
insert  into `chufangshebei`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`yongtu`,`shebeixiangqing`,`dengjiriqi`) values (36,'2021-05-17 10:32:14','设备编号6','设备名称6','http://localhost:8080/ssm88j08/upload/chufangshebei_tupian6.jpg','用途6','设备详情6','2021-05-17');

/*Table structure for table `chufangxinxi` */

DROP TABLE IF EXISTS `chufangxinxi`;

CREATE TABLE `chufangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chufangbianhao` varchar(200) NOT NULL COMMENT '厨房编号',
  `chufangmingcheng` varchar(200) NOT NULL COMMENT '厨房名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `yudingdingjin` int(11) NOT NULL COMMENT '预订定金',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `shiyongrenshu` int(11) DEFAULT NULL COMMENT '使用人数',
  `jibenpeizhi` longtext COMMENT '基本配置',
  `xiangxishuoming` longtext COMMENT '详细说明',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='厨房信息';

/*Data for the table `chufangxinxi` */

insert  into `chufangxinxi`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`tupian`,`didian`,`yudingdingjin`,`zhuangtai`,`shiyongrenshu`,`jibenpeizhi`,`xiangxishuoming`,`clicktime`,`clicknum`) values (21,'2021-05-17 10:32:14','厨房编号1','厨房名称1','http://localhost:8080/ssm88j08/upload/chufangxinxi_tupian1.jpg','地点1',1,'使用中',1,'基本配置1','详细说明1','2021-05-17 10:32:14',1);
insert  into `chufangxinxi`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`tupian`,`didian`,`yudingdingjin`,`zhuangtai`,`shiyongrenshu`,`jibenpeizhi`,`xiangxishuoming`,`clicktime`,`clicknum`) values (22,'2021-05-17 10:32:14','厨房编号2','厨房名称2','http://localhost:8080/ssm88j08/upload/chufangxinxi_tupian2.jpg','地点2',2,'使用中',2,'基本配置2','详细说明2','2021-05-17 10:32:14',2);
insert  into `chufangxinxi`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`tupian`,`didian`,`yudingdingjin`,`zhuangtai`,`shiyongrenshu`,`jibenpeizhi`,`xiangxishuoming`,`clicktime`,`clicknum`) values (23,'2021-05-17 10:32:14','厨房编号3','厨房名称3','http://localhost:8080/ssm88j08/upload/chufangxinxi_tupian3.jpg','地点3',3,'使用中',3,'基本配置3','详细说明3','2021-05-17 10:35:04',5);
insert  into `chufangxinxi`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`tupian`,`didian`,`yudingdingjin`,`zhuangtai`,`shiyongrenshu`,`jibenpeizhi`,`xiangxishuoming`,`clicktime`,`clicknum`) values (24,'2021-05-17 10:32:14','厨房编号4','厨房名称4','http://localhost:8080/ssm88j08/upload/chufangxinxi_tupian4.jpg','地点4',4,'使用中',4,'基本配置4','详细说明4','2021-05-17 10:32:14',4);
insert  into `chufangxinxi`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`tupian`,`didian`,`yudingdingjin`,`zhuangtai`,`shiyongrenshu`,`jibenpeizhi`,`xiangxishuoming`,`clicktime`,`clicknum`) values (25,'2021-05-17 10:32:14','厨房编号5','厨房名称5','http://localhost:8080/ssm88j08/upload/chufangxinxi_tupian5.jpg','地点5',5,'使用中',5,'基本配置5','详细说明5','2021-05-17 10:32:14',5);
insert  into `chufangxinxi`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`tupian`,`didian`,`yudingdingjin`,`zhuangtai`,`shiyongrenshu`,`jibenpeizhi`,`xiangxishuoming`,`clicktime`,`clicknum`) values (26,'2021-05-17 10:32:14','厨房编号6','厨房名称6','http://localhost:8080/ssm88j08/upload/chufangxinxi_tupian6.jpg','地点6',6,'使用中',6,'基本配置6','详细说明6','2021-05-17 10:32:14',6);

/*Table structure for table `chufangyuding` */

DROP TABLE IF EXISTS `chufangyuding`;

CREATE TABLE `chufangyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chufangbianhao` varchar(200) DEFAULT NULL COMMENT '厨房编号',
  `chufangmingcheng` varchar(200) DEFAULT NULL COMMENT '厨房名称',
  `yudingdingjin` int(11) DEFAULT NULL COMMENT '预订定金',
  `shifouyuding` varchar(200) DEFAULT NULL COMMENT '是否预订',
  `yudingshijian` datetime DEFAULT NULL COMMENT '预订时间',
  `yudingshizhang` int(11) DEFAULT NULL COMMENT '预订时长',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='厨房预订';

/*Data for the table `chufangyuding` */

insert  into `chufangyuding`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`yudingdingjin`,`shifouyuding`,`yudingshijian`,`yudingshizhang`,`beizhu`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (41,'2021-05-17 10:32:14','厨房编号1','厨房名称1',1,'是','2021-05-17 10:32:14',1,'备注1','账号1','姓名1','是','','未支付');
insert  into `chufangyuding`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`yudingdingjin`,`shifouyuding`,`yudingshijian`,`yudingshizhang`,`beizhu`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (42,'2021-05-17 10:32:14','厨房编号2','厨房名称2',2,'是','2021-05-17 10:32:14',2,'备注2','账号2','姓名2','是','','未支付');
insert  into `chufangyuding`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`yudingdingjin`,`shifouyuding`,`yudingshijian`,`yudingshizhang`,`beizhu`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (43,'2021-05-17 10:32:14','厨房编号3','厨房名称3',3,'是','2021-05-17 10:32:14',3,'备注3','账号3','姓名3','是','','未支付');
insert  into `chufangyuding`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`yudingdingjin`,`shifouyuding`,`yudingshijian`,`yudingshizhang`,`beizhu`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (44,'2021-05-17 10:32:14','厨房编号4','厨房名称4',4,'是','2021-05-17 10:32:14',4,'备注4','账号4','姓名4','是','','未支付');
insert  into `chufangyuding`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`yudingdingjin`,`shifouyuding`,`yudingshijian`,`yudingshizhang`,`beizhu`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (45,'2021-05-17 10:32:14','厨房编号5','厨房名称5',5,'是','2021-05-17 10:32:14',5,'备注5','账号5','姓名5','是','','未支付');
insert  into `chufangyuding`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`yudingdingjin`,`shifouyuding`,`yudingshijian`,`yudingshizhang`,`beizhu`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (46,'2021-05-17 10:32:14','厨房编号6','厨房名称6',6,'是','2021-05-17 10:32:14',6,'备注6','账号6','姓名6','是','','未支付');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm88j08/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm88j08/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm88j08/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chufangbianhao` varchar(200) DEFAULT NULL COMMENT '厨房编号',
  `chufangmingcheng` varchar(200) DEFAULT NULL COMMENT '厨房名称',
  `shiyongzhuangtai` varchar(200) DEFAULT NULL COMMENT '使用状态',
  `zongjia` int(11) DEFAULT NULL COMMENT '总价',
  `yudingdingjin` int(11) DEFAULT NULL COMMENT '预订定金',
  `yingfujine` varchar(200) DEFAULT NULL COMMENT '应付金额',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`shiyongzhuangtai`,`zongjia`,`yudingdingjin`,`yingfujine`,`dengjishijian`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (51,'2021-05-17 10:32:14','厨房编号1','厨房名称1','完成使用',1,1,'应付金额1','2021-05-17 10:32:14','账号1','姓名1','是','','未支付');
insert  into `dingdanxinxi`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`shiyongzhuangtai`,`zongjia`,`yudingdingjin`,`yingfujine`,`dengjishijian`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (52,'2021-05-17 10:32:14','厨房编号2','厨房名称2','完成使用',2,2,'应付金额2','2021-05-17 10:32:14','账号2','姓名2','是','','未支付');
insert  into `dingdanxinxi`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`shiyongzhuangtai`,`zongjia`,`yudingdingjin`,`yingfujine`,`dengjishijian`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (53,'2021-05-17 10:32:14','厨房编号3','厨房名称3','完成使用',3,3,'应付金额3','2021-05-17 10:32:14','账号3','姓名3','是','','未支付');
insert  into `dingdanxinxi`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`shiyongzhuangtai`,`zongjia`,`yudingdingjin`,`yingfujine`,`dengjishijian`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (54,'2021-05-17 10:32:14','厨房编号4','厨房名称4','完成使用',4,4,'应付金额4','2021-05-17 10:32:14','账号4','姓名4','是','','未支付');
insert  into `dingdanxinxi`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`shiyongzhuangtai`,`zongjia`,`yudingdingjin`,`yingfujine`,`dengjishijian`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (55,'2021-05-17 10:32:14','厨房编号5','厨房名称5','完成使用',5,5,'应付金额5','2021-05-17 10:32:14','账号5','姓名5','是','','未支付');
insert  into `dingdanxinxi`(`id`,`addtime`,`chufangbianhao`,`chufangmingcheng`,`shiyongzhuangtai`,`zongjia`,`yudingdingjin`,`yingfujine`,`dengjishijian`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (56,'2021-05-17 10:32:14','厨房编号6','厨房名称6','完成使用',6,6,'应付金额6','2021-05-17 10:32:14','账号6','姓名6','是','','未支付');

/*Table structure for table `fenxikehu` */

DROP TABLE IF EXISTS `fenxikehu`;

CREATE TABLE `fenxikehu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongjibianhao` varchar(200) DEFAULT NULL COMMENT '统计编号',
  `kehushuliang` int(11) DEFAULT NULL COMMENT '客户数量',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tongjibianhao` (`tongjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='分析客户';

/*Data for the table `fenxikehu` */

insert  into `fenxikehu`(`id`,`addtime`,`tongjibianhao`,`kehushuliang`,`dengjiriqi`,`beizhu`) values (91,'2021-05-17 10:32:14','统计编号1',1,'2021-05-17','备注1');
insert  into `fenxikehu`(`id`,`addtime`,`tongjibianhao`,`kehushuliang`,`dengjiriqi`,`beizhu`) values (92,'2021-05-17 10:32:14','统计编号2',2,'2021-05-17','备注2');
insert  into `fenxikehu`(`id`,`addtime`,`tongjibianhao`,`kehushuliang`,`dengjiriqi`,`beizhu`) values (93,'2021-05-17 10:32:14','统计编号3',3,'2021-05-17','备注3');
insert  into `fenxikehu`(`id`,`addtime`,`tongjibianhao`,`kehushuliang`,`dengjiriqi`,`beizhu`) values (94,'2021-05-17 10:32:14','统计编号4',4,'2021-05-17','备注4');
insert  into `fenxikehu`(`id`,`addtime`,`tongjibianhao`,`kehushuliang`,`dengjiriqi`,`beizhu`) values (95,'2021-05-17 10:32:14','统计编号5',5,'2021-05-17','备注5');
insert  into `fenxikehu`(`id`,`addtime`,`tongjibianhao`,`kehushuliang`,`dengjiriqi`,`beizhu`) values (96,'2021-05-17 10:32:14','统计编号6',6,'2021-05-17','备注6');

/*Table structure for table `kehuxinxi` */

DROP TABLE IF EXISTS `kehuxinxi`;

CREATE TABLE `kehuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehubianhao` varchar(200) DEFAULT NULL COMMENT '客户编号',
  `kehumingcheng` varchar(200) NOT NULL COMMENT '客户名称',
  `fuzeren` varchar(200) NOT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kehubianhao` (`kehubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='客户信息';

/*Data for the table `kehuxinxi` */

insert  into `kehuxinxi`(`id`,`addtime`,`kehubianhao`,`kehumingcheng`,`fuzeren`,`lianxidianhua`,`dizhi`,`beizhu`) values (71,'2021-05-17 10:32:14','客户编号1','客户名称1','负责人1','13823888881','地址1','备注1');
insert  into `kehuxinxi`(`id`,`addtime`,`kehubianhao`,`kehumingcheng`,`fuzeren`,`lianxidianhua`,`dizhi`,`beizhu`) values (72,'2021-05-17 10:32:14','客户编号2','客户名称2','负责人2','13823888882','地址2','备注2');
insert  into `kehuxinxi`(`id`,`addtime`,`kehubianhao`,`kehumingcheng`,`fuzeren`,`lianxidianhua`,`dizhi`,`beizhu`) values (73,'2021-05-17 10:32:14','客户编号3','客户名称3','负责人3','13823888883','地址3','备注3');
insert  into `kehuxinxi`(`id`,`addtime`,`kehubianhao`,`kehumingcheng`,`fuzeren`,`lianxidianhua`,`dizhi`,`beizhu`) values (74,'2021-05-17 10:32:14','客户编号4','客户名称4','负责人4','13823888884','地址4','备注4');
insert  into `kehuxinxi`(`id`,`addtime`,`kehubianhao`,`kehumingcheng`,`fuzeren`,`lianxidianhua`,`dizhi`,`beizhu`) values (75,'2021-05-17 10:32:14','客户编号5','客户名称5','负责人5','13823888885','地址5','备注5');
insert  into `kehuxinxi`(`id`,`addtime`,`kehubianhao`,`kehumingcheng`,`fuzeren`,`lianxidianhua`,`dizhi`,`beizhu`) values (76,'2021-05-17 10:32:14','客户编号6','客户名称6','负责人6','13823888886','地址6','备注6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (121,'2021-05-17 10:32:14','标题1','简介1','http://localhost:8080/ssm88j08/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (122,'2021-05-17 10:32:14','标题2','简介2','http://localhost:8080/ssm88j08/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (123,'2021-05-17 10:32:14','标题3','简介3','http://localhost:8080/ssm88j08/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (124,'2021-05-17 10:32:14','标题4','简介4','http://localhost:8080/ssm88j08/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (125,'2021-05-17 10:32:14','标题5','简介5','http://localhost:8080/ssm88j08/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (126,'2021-05-17 10:32:14','标题6','简介6','http://localhost:8080/ssm88j08/upload/news_picture6.jpg','内容6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','z88gx71cooj0r79f4pety8e7tdo63llw','2021-05-17 10:34:13','2021-05-17 11:34:14');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-17 10:32:14');

/*Table structure for table `weixiujilu` */

DROP TABLE IF EXISTS `weixiujilu`;

CREATE TABLE `weixiujilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `weixiuneirong` longtext COMMENT '维修内容',
  `weixiuyuanyin` longtext COMMENT '维修原因',
  `weixiuzhuangtai` varchar(200) DEFAULT NULL COMMENT '维修状态',
  `dengjiriqi` datetime DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621218877192 DEFAULT CHARSET=utf8 COMMENT='维修记录';

/*Data for the table `weixiujilu` */

insert  into `weixiujilu`(`id`,`addtime`,`mingcheng`,`tupian`,`weixiuneirong`,`weixiuyuanyin`,`weixiuzhuangtai`,`dengjiriqi`) values (81,'2021-05-17 10:32:14','名称1','http://localhost:8080/ssm88j08/upload/weixiujilu_tupian1.jpg','维修内容1','维修原因1','已修好','2021-05-17 10:32:14');
insert  into `weixiujilu`(`id`,`addtime`,`mingcheng`,`tupian`,`weixiuneirong`,`weixiuyuanyin`,`weixiuzhuangtai`,`dengjiriqi`) values (82,'2021-05-17 10:32:14','名称2','http://localhost:8080/ssm88j08/upload/weixiujilu_tupian2.jpg','维修内容2','维修原因2','已修好','2021-05-17 10:32:14');
insert  into `weixiujilu`(`id`,`addtime`,`mingcheng`,`tupian`,`weixiuneirong`,`weixiuyuanyin`,`weixiuzhuangtai`,`dengjiriqi`) values (83,'2021-05-17 10:32:14','名称3','http://localhost:8080/ssm88j08/upload/weixiujilu_tupian3.jpg','维修内容3','维修原因3','已修好','2021-05-17 10:32:14');
insert  into `weixiujilu`(`id`,`addtime`,`mingcheng`,`tupian`,`weixiuneirong`,`weixiuyuanyin`,`weixiuzhuangtai`,`dengjiriqi`) values (84,'2021-05-17 10:32:14','名称4','http://localhost:8080/ssm88j08/upload/weixiujilu_tupian4.jpg','维修内容4','维修原因4','已修好','2021-05-17 10:32:14');
insert  into `weixiujilu`(`id`,`addtime`,`mingcheng`,`tupian`,`weixiuneirong`,`weixiuyuanyin`,`weixiuzhuangtai`,`dengjiriqi`) values (85,'2021-05-17 10:32:14','名称5','http://localhost:8080/ssm88j08/upload/weixiujilu_tupian5.jpg','维修内容5','维修原因5','已修好','2021-05-17 10:32:14');
insert  into `weixiujilu`(`id`,`addtime`,`mingcheng`,`tupian`,`weixiuneirong`,`weixiuyuanyin`,`weixiuzhuangtai`,`dengjiriqi`) values (86,'2021-05-17 10:32:14','名称6','http://localhost:8080/ssm88j08/upload/weixiujilu_tupian6.jpg','维修内容6','维修原因6','已修好','2021-05-17 10:32:14');
insert  into `weixiujilu`(`id`,`addtime`,`mingcheng`,`tupian`,`weixiuneirong`,`weixiuyuanyin`,`weixiuzhuangtai`,`dengjiriqi`) values (1621218877191,'2021-05-17 10:34:36','士大夫士大夫sd','http://localhost:8080/ssm88j08/upload/1621218864550.png','<p>电饭锅的给对方关掉给对方给对方给对方</p><p><img src=\"http://localhost:8080/ssm88j08/upload/1621218875257.jpg\"></p>','个电饭锅地方给对方','未修好','2021-05-17 10:32:23');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` varchar(200) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (11,'2021-05-17 10:32:14','用户1','123456','姓名1','年龄1','男','13823888881','http://localhost:8080/ssm88j08/upload/yonghu_zhaopian1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (12,'2021-05-17 10:32:14','用户2','123456','姓名2','年龄2','男','13823888882','http://localhost:8080/ssm88j08/upload/yonghu_zhaopian2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (13,'2021-05-17 10:32:14','用户3','123456','姓名3','年龄3','男','13823888883','http://localhost:8080/ssm88j08/upload/yonghu_zhaopian3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (14,'2021-05-17 10:32:14','用户4','123456','姓名4','年龄4','男','13823888884','http://localhost:8080/ssm88j08/upload/yonghu_zhaopian4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (15,'2021-05-17 10:32:14','用户5','123456','姓名5','年龄5','男','13823888885','http://localhost:8080/ssm88j08/upload/yonghu_zhaopian5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (16,'2021-05-17 10:32:14','用户6','123456','姓名6','年龄6','男','13823888886','http://localhost:8080/ssm88j08/upload/yonghu_zhaopian6.jpg');

/*Table structure for table `yonghupingjia` */

DROP TABLE IF EXISTS `yonghupingjia`;

CREATE TABLE `yonghupingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pingjiabianhao` varchar(200) DEFAULT NULL COMMENT '评价编号',
  `chufangpingjia` varchar(200) DEFAULT NULL COMMENT '厨房评价',
  `fuwupingjia` varchar(200) DEFAULT NULL COMMENT '服务评价',
  `pingyu` longtext COMMENT '评语',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pingjiabianhao` (`pingjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='用户评价';

/*Data for the table `yonghupingjia` */

insert  into `yonghupingjia`(`id`,`addtime`,`pingjiabianhao`,`chufangpingjia`,`fuwupingjia`,`pingyu`,`pingjiashijian`,`zhanghao`,`xingming`) values (61,'2021-05-17 10:32:14','评价编号1','★','★','评语1','2021-05-17 10:32:14','账号1','姓名1');
insert  into `yonghupingjia`(`id`,`addtime`,`pingjiabianhao`,`chufangpingjia`,`fuwupingjia`,`pingyu`,`pingjiashijian`,`zhanghao`,`xingming`) values (62,'2021-05-17 10:32:14','评价编号2','★','★','评语2','2021-05-17 10:32:14','账号2','姓名2');
insert  into `yonghupingjia`(`id`,`addtime`,`pingjiabianhao`,`chufangpingjia`,`fuwupingjia`,`pingyu`,`pingjiashijian`,`zhanghao`,`xingming`) values (63,'2021-05-17 10:32:14','评价编号3','★','★','评语3','2021-05-17 10:32:14','账号3','姓名3');
insert  into `yonghupingjia`(`id`,`addtime`,`pingjiabianhao`,`chufangpingjia`,`fuwupingjia`,`pingyu`,`pingjiashijian`,`zhanghao`,`xingming`) values (64,'2021-05-17 10:32:14','评价编号4','★','★','评语4','2021-05-17 10:32:14','账号4','姓名4');
insert  into `yonghupingjia`(`id`,`addtime`,`pingjiabianhao`,`chufangpingjia`,`fuwupingjia`,`pingyu`,`pingjiashijian`,`zhanghao`,`xingming`) values (65,'2021-05-17 10:32:14','评价编号5','★','★','评语5','2021-05-17 10:32:14','账号5','姓名5');
insert  into `yonghupingjia`(`id`,`addtime`,`pingjiabianhao`,`chufangpingjia`,`fuwupingjia`,`pingyu`,`pingjiashijian`,`zhanghao`,`xingming`) values (66,'2021-05-17 10:32:14','评价编号6','★','★','评语6','2021-05-17 10:32:14','账号6','姓名6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
