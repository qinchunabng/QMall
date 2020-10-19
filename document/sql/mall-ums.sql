/*
SQLyog  v12.2.6 (64 bit)
MySQL - 8.0.21 : Database - mall-ums
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mall-ums` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mall-ums`;

/*Table structure for table `ums_admin` */

DROP TABLE IF EXISTS `ums_admin`;

CREATE TABLE `ums_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `nick_name` varchar(200) DEFAULT NULL COMMENT '昵称',
  `note` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` int DEFAULT '1' COMMENT '帐号启用状态：0->禁用；1->启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='后台用户表';

/*Data for the table `ums_admin` */

insert  into `ums_admin`(`id`,`username`,`password`,`icon`,`email`,`nick_name`,`note`,`create_time`,`login_time`,`status`) values 
(1,'test','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg','test@qq.com','测试账号',NULL,'2018-09-29 13:55:30','2018-09-29 13:55:39',1),
(3,'admin','$2a$10$.E1FokumK5GIXWgKlg.Hc.i/0/2.qdAwYFL1zc5QHdyzpXOr38RZO','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg','admin@163.com','系统管理员','系统管理员','2018-10-08 13:32:47','2019-04-20 12:45:16',1),
(4,'macro','$2a$10$Bx4jZPR7GhEpIQfefDQtVeS58GfT5n6mxs/b4nLLK65eMFa16topa','string','macro@qq.com','macro','macro专用','2019-10-06 15:53:51','2020-02-03 14:55:55',1),
(6,'productAdmin','$2a$10$6/.J.p.6Bhn7ic4GfoB5D.pGd7xSiD1a9M6ht6yO0fxzlKJPjRAGm',NULL,'product@qq.com','商品管理员','只有商品权限','2020-02-07 16:15:08',NULL,1),
(7,'orderAdmin','$2a$10$UqEhA9UZXjHHA3B.L9wNG.6aerrBjC6WHTtbv1FdvYPUI.7lkL6E.',NULL,'order@qq.com','订单管理员','只有订单管理权限','2020-02-07 16:15:50',NULL,1);

/*Table structure for table `ums_admin_login_log` */

DROP TABLE IF EXISTS `ums_admin_login_log`;

CREATE TABLE `ums_admin_login_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_agent` varchar(100) DEFAULT NULL COMMENT '浏览器登录类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 COMMENT='后台用户登录日志表';

/*Data for the table `ums_admin_login_log` */

insert  into `ums_admin_login_log`(`id`,`admin_id`,`create_time`,`ip`,`address`,`user_agent`) values 
(1,3,'2018-12-23 14:27:00','0:0:0:0:0:0:0:1',NULL,NULL),
(2,3,'2019-04-07 16:04:39','0:0:0:0:0:0:0:1',NULL,NULL),
(3,3,'2019-04-08 21:47:52','0:0:0:0:0:0:0:1',NULL,NULL),
(4,3,'2019-04-08 21:48:18','0:0:0:0:0:0:0:1',NULL,NULL),
(5,3,'2019-04-18 22:18:40','0:0:0:0:0:0:0:1',NULL,NULL),
(6,3,'2019-04-20 12:45:16','0:0:0:0:0:0:0:1',NULL,NULL),
(7,3,'2019-05-19 14:52:12','0:0:0:0:0:0:0:1',NULL,NULL),
(8,3,'2019-05-25 15:00:17','0:0:0:0:0:0:0:1',NULL,NULL),
(9,3,'2019-06-19 20:11:42','0:0:0:0:0:0:0:1',NULL,NULL),
(10,3,'2019-06-30 10:33:48','0:0:0:0:0:0:0:1',NULL,NULL),
(11,3,'2019-06-30 10:34:31','0:0:0:0:0:0:0:1',NULL,NULL),
(12,3,'2019-06-30 10:35:34','0:0:0:0:0:0:0:1',NULL,NULL),
(13,3,'2019-07-27 17:11:01','0:0:0:0:0:0:0:1',NULL,NULL),
(14,3,'2019-07-27 17:13:18','0:0:0:0:0:0:0:1',NULL,NULL),
(15,3,'2019-07-27 17:15:35','0:0:0:0:0:0:0:1',NULL,NULL),
(16,3,'2019-07-27 17:17:11','0:0:0:0:0:0:0:1',NULL,NULL),
(17,3,'2019-07-27 17:18:34','0:0:0:0:0:0:0:1',NULL,NULL),
(18,3,'2019-07-27 21:21:52','0:0:0:0:0:0:0:1',NULL,NULL),
(19,3,'2019-07-27 21:34:29','0:0:0:0:0:0:0:1',NULL,NULL),
(20,3,'2019-07-27 21:35:17','0:0:0:0:0:0:0:1',NULL,NULL),
(21,3,'2019-07-27 21:35:48','0:0:0:0:0:0:0:1',NULL,NULL),
(22,3,'2019-07-27 21:40:33','0:0:0:0:0:0:0:1',NULL,NULL),
(23,3,'2019-08-18 16:00:38','0:0:0:0:0:0:0:1',NULL,NULL),
(24,3,'2019-08-18 16:01:06','0:0:0:0:0:0:0:1',NULL,NULL),
(25,3,'2019-08-18 16:47:01','0:0:0:0:0:0:0:1',NULL,NULL),
(26,3,'2019-10-06 15:54:23','0:0:0:0:0:0:0:1',NULL,NULL),
(27,3,'2019-10-06 16:03:28','0:0:0:0:0:0:0:1',NULL,NULL),
(28,3,'2019-10-06 16:04:51','0:0:0:0:0:0:0:1',NULL,NULL),
(29,3,'2019-10-06 16:06:44','0:0:0:0:0:0:0:1',NULL,NULL),
(30,3,'2019-10-06 16:14:51','0:0:0:0:0:0:0:1',NULL,NULL),
(31,1,'2019-10-06 16:15:09','0:0:0:0:0:0:0:1',NULL,NULL),
(32,1,'2019-10-06 16:16:14','0:0:0:0:0:0:0:1',NULL,NULL),
(33,3,'2019-10-06 16:16:35','0:0:0:0:0:0:0:1',NULL,NULL),
(34,3,'2019-10-06 16:16:42','0:0:0:0:0:0:0:1',NULL,NULL),
(35,3,'2019-10-07 15:20:48','0:0:0:0:0:0:0:1',NULL,NULL),
(36,3,'2019-10-07 15:40:07','0:0:0:0:0:0:0:1',NULL,NULL),
(37,3,'2019-10-07 16:34:15','0:0:0:0:0:0:0:1',NULL,NULL),
(38,3,'2019-10-09 21:19:08','0:0:0:0:0:0:0:1',NULL,NULL),
(39,4,'2019-10-09 21:30:35','0:0:0:0:0:0:0:1',NULL,NULL),
(40,4,'2019-10-09 21:31:30','0:0:0:0:0:0:0:1',NULL,NULL),
(41,4,'2019-10-09 21:32:39','0:0:0:0:0:0:0:1',NULL,NULL),
(42,4,'2019-10-09 21:33:27','0:0:0:0:0:0:0:1',NULL,NULL),
(43,4,'2019-10-09 21:33:50','0:0:0:0:0:0:0:1',NULL,NULL),
(44,3,'2019-10-20 16:02:53','0:0:0:0:0:0:0:1',NULL,NULL),
(45,3,'2019-10-23 21:20:55','0:0:0:0:0:0:0:1',NULL,NULL),
(46,3,'2019-10-27 21:41:45','0:0:0:0:0:0:0:1',NULL,NULL),
(47,3,'2019-11-09 16:44:57','0:0:0:0:0:0:0:1',NULL,NULL),
(48,3,'2019-11-09 16:46:56','0:0:0:0:0:0:0:1',NULL,NULL),
(49,3,'2019-11-09 16:49:55','0:0:0:0:0:0:0:1',NULL,NULL),
(50,3,'2019-11-23 14:17:16','0:0:0:0:0:0:0:1',NULL,NULL),
(51,6,'2019-11-23 14:52:30','0:0:0:0:0:0:0:1',NULL,NULL),
(52,3,'2019-11-23 15:07:24','0:0:0:0:0:0:0:1',NULL,NULL),
(53,3,'2019-11-30 21:25:30','192.168.3.185',NULL,NULL),
(54,3,'2019-11-30 21:27:54','192.168.3.185',NULL,NULL),
(55,3,'2019-12-28 15:23:01','0:0:0:0:0:0:0:1',NULL,NULL),
(56,3,'2020-01-01 15:21:46','0:0:0:0:0:0:0:1',NULL,NULL),
(57,3,'2020-01-04 16:00:54','192.168.3.185',NULL,NULL),
(58,3,'2020-02-01 15:05:19','0:0:0:0:0:0:0:1',NULL,NULL),
(59,3,'2020-02-01 15:36:05','0:0:0:0:0:0:0:1',NULL,NULL),
(60,3,'2020-02-01 15:36:36','0:0:0:0:0:0:0:1',NULL,NULL),
(61,3,'2020-02-01 15:37:30','0:0:0:0:0:0:0:1',NULL,NULL),
(62,3,'2020-02-01 15:37:46','0:0:0:0:0:0:0:1',NULL,NULL),
(63,3,'2020-02-01 15:38:20','0:0:0:0:0:0:0:1',NULL,NULL),
(64,3,'2020-02-01 15:38:33','0:0:0:0:0:0:0:1',NULL,NULL),
(65,3,'2020-02-01 15:39:06','0:0:0:0:0:0:0:1',NULL,NULL),
(66,3,'2020-02-01 15:41:31','0:0:0:0:0:0:0:1',NULL,NULL),
(67,3,'2020-02-01 15:43:17','0:0:0:0:0:0:0:1',NULL,NULL),
(68,3,'2020-02-01 15:44:34','0:0:0:0:0:0:0:1',NULL,NULL),
(69,3,'2020-02-01 15:45:10','0:0:0:0:0:0:0:1',NULL,NULL),
(70,3,'2020-02-01 15:46:04','0:0:0:0:0:0:0:1',NULL,NULL),
(71,3,'2020-02-01 15:48:33','0:0:0:0:0:0:0:1',NULL,NULL),
(72,3,'2020-02-01 16:00:07','0:0:0:0:0:0:0:1',NULL,NULL),
(73,3,'2020-02-01 16:07:25','0:0:0:0:0:0:0:1',NULL,NULL),
(74,3,'2020-02-01 16:08:22','0:0:0:0:0:0:0:1',NULL,NULL),
(75,3,'2020-02-02 15:28:13','0:0:0:0:0:0:0:1',NULL,NULL),
(76,3,'2020-02-02 15:44:37','0:0:0:0:0:0:0:1',NULL,NULL),
(77,3,'2020-02-02 15:45:25','0:0:0:0:0:0:0:1',NULL,NULL),
(78,3,'2020-02-02 15:52:32','0:0:0:0:0:0:0:1',NULL,NULL),
(79,3,'2020-02-02 15:53:44','0:0:0:0:0:0:0:1',NULL,NULL),
(80,3,'2020-02-02 15:54:36','0:0:0:0:0:0:0:1',NULL,NULL),
(81,3,'2020-02-02 16:01:00','0:0:0:0:0:0:0:1',NULL,NULL),
(82,3,'2020-02-02 16:05:19','0:0:0:0:0:0:0:1',NULL,NULL),
(83,3,'2020-02-02 16:06:31','0:0:0:0:0:0:0:1',NULL,NULL),
(84,3,'2020-02-02 16:17:26','0:0:0:0:0:0:0:1',NULL,NULL),
(85,3,'2020-02-02 16:18:45','0:0:0:0:0:0:0:1',NULL,NULL),
(86,3,'2020-02-02 16:19:05','0:0:0:0:0:0:0:1',NULL,NULL),
(87,3,'2020-02-02 16:19:23','0:0:0:0:0:0:0:1',NULL,NULL),
(88,3,'2020-02-02 16:22:27','0:0:0:0:0:0:0:1',NULL,NULL),
(89,3,'2020-02-02 16:23:30','0:0:0:0:0:0:0:1',NULL,NULL),
(90,3,'2020-02-02 16:23:48','0:0:0:0:0:0:0:1',NULL,NULL),
(91,3,'2020-02-02 16:24:38','0:0:0:0:0:0:0:1',NULL,NULL),
(92,3,'2020-02-02 16:25:22','0:0:0:0:0:0:0:1',NULL,NULL),
(93,3,'2020-02-02 16:26:19','0:0:0:0:0:0:0:1',NULL,NULL),
(94,3,'2020-02-02 16:26:31','0:0:0:0:0:0:0:1',NULL,NULL),
(95,3,'2020-02-02 16:27:08','0:0:0:0:0:0:0:1',NULL,NULL),
(96,3,'2020-02-02 16:31:02','0:0:0:0:0:0:0:1',NULL,NULL),
(97,3,'2020-02-02 16:31:08','0:0:0:0:0:0:0:1',NULL,NULL),
(98,3,'2020-02-02 16:31:25','0:0:0:0:0:0:0:1',NULL,NULL),
(99,3,'2020-02-02 16:31:50','0:0:0:0:0:0:0:1',NULL,NULL),
(100,3,'2020-02-02 16:33:22','0:0:0:0:0:0:0:1',NULL,NULL),
(101,3,'2020-02-02 16:33:41','0:0:0:0:0:0:0:1',NULL,NULL),
(102,3,'2020-02-02 16:34:58','0:0:0:0:0:0:0:1',NULL,NULL),
(103,3,'2020-02-02 16:38:42','0:0:0:0:0:0:0:1',NULL,NULL),
(104,3,'2020-02-02 16:39:41','0:0:0:0:0:0:0:1',NULL,NULL),
(105,3,'2020-02-02 16:42:22','0:0:0:0:0:0:0:1',NULL,NULL),
(106,3,'2020-02-02 16:46:21','0:0:0:0:0:0:0:1',NULL,NULL),
(107,3,'2020-02-02 16:50:23','0:0:0:0:0:0:0:1',NULL,NULL),
(108,3,'2020-02-02 16:51:11','0:0:0:0:0:0:0:1',NULL,NULL),
(109,3,'2020-02-02 16:51:22','0:0:0:0:0:0:0:1',NULL,NULL),
(110,3,'2020-02-02 16:52:00','0:0:0:0:0:0:0:1',NULL,NULL),
(111,3,'2020-02-02 17:01:05','0:0:0:0:0:0:0:1',NULL,NULL),
(112,3,'2020-02-03 10:43:22','0:0:0:0:0:0:0:1',NULL,NULL),
(113,3,'2020-02-03 10:45:29','0:0:0:0:0:0:0:1',NULL,NULL),
(114,3,'2020-02-03 10:46:33','0:0:0:0:0:0:0:1',NULL,NULL),
(115,3,'2020-02-03 10:54:33','0:0:0:0:0:0:0:1',NULL,NULL),
(116,3,'2020-02-03 14:24:47','0:0:0:0:0:0:0:1',NULL,NULL),
(117,3,'2020-02-03 14:25:38','0:0:0:0:0:0:0:1',NULL,NULL),
(118,5,'2020-02-03 15:22:28','0:0:0:0:0:0:0:1',NULL,NULL),
(119,5,'2020-02-03 15:23:00','0:0:0:0:0:0:0:1',NULL,NULL),
(120,5,'2020-02-03 15:24:29','0:0:0:0:0:0:0:1',NULL,NULL),
(121,3,'2020-02-03 15:24:50','0:0:0:0:0:0:0:1',NULL,NULL),
(122,5,'2020-02-03 15:27:18','0:0:0:0:0:0:0:1',NULL,NULL),
(123,3,'2020-02-03 15:27:33','0:0:0:0:0:0:0:1',NULL,NULL),
(124,3,'2020-02-03 15:29:06','0:0:0:0:0:0:0:1',NULL,NULL),
(125,5,'2020-02-03 15:33:25','0:0:0:0:0:0:0:1',NULL,NULL),
(126,3,'2020-02-03 15:33:51','0:0:0:0:0:0:0:1',NULL,NULL),
(127,1,'2020-02-03 15:34:35','0:0:0:0:0:0:0:1',NULL,NULL),
(128,3,'2020-02-03 15:34:47','0:0:0:0:0:0:0:1',NULL,NULL),
(129,3,'2020-02-04 14:14:46','0:0:0:0:0:0:0:1',NULL,NULL),
(130,3,'2020-02-05 10:33:35','0:0:0:0:0:0:0:1',NULL,NULL),
(131,3,'2020-02-05 10:36:21','0:0:0:0:0:0:0:1',NULL,NULL),
(132,3,'2020-02-05 16:34:37','0:0:0:0:0:0:0:1',NULL,NULL),
(133,4,'2020-02-05 16:58:37','0:0:0:0:0:0:0:1',NULL,NULL),
(134,3,'2020-02-05 16:59:03','0:0:0:0:0:0:0:1',NULL,NULL),
(135,3,'2020-02-06 10:25:02','0:0:0:0:0:0:0:1',NULL,NULL),
(136,3,'2020-02-07 14:34:34','0:0:0:0:0:0:0:1',NULL,NULL),
(137,3,'2020-02-07 14:36:20','0:0:0:0:0:0:0:1',NULL,NULL),
(138,1,'2020-02-07 14:43:34','0:0:0:0:0:0:0:1',NULL,NULL),
(139,3,'2020-02-07 15:18:06','0:0:0:0:0:0:0:1',NULL,NULL),
(140,3,'2020-02-07 15:20:07','0:0:0:0:0:0:0:1',NULL,NULL),
(141,3,'2020-02-07 15:22:20','0:0:0:0:0:0:0:1',NULL,NULL),
(142,3,'2020-02-07 15:22:28','0:0:0:0:0:0:0:1',NULL,NULL),
(143,3,'2020-02-07 15:55:11','0:0:0:0:0:0:0:1',NULL,NULL),
(144,3,'2020-02-07 15:56:04','0:0:0:0:0:0:0:1',NULL,NULL),
(145,3,'2020-02-07 15:58:49','0:0:0:0:0:0:0:1',NULL,NULL),
(146,6,'2020-02-07 16:16:21','0:0:0:0:0:0:0:1',NULL,NULL),
(147,7,'2020-02-07 16:16:37','0:0:0:0:0:0:0:1',NULL,NULL),
(148,3,'2020-02-07 16:18:39','0:0:0:0:0:0:0:1',NULL,NULL),
(149,7,'2020-02-07 16:20:06','0:0:0:0:0:0:0:1',NULL,NULL),
(150,3,'2020-02-07 16:20:44','0:0:0:0:0:0:0:1',NULL,NULL),
(151,3,'2020-02-07 16:32:31','0:0:0:0:0:0:0:1',NULL,NULL),
(152,3,'2020-02-07 19:32:34','0:0:0:0:0:0:0:1',NULL,NULL),
(153,3,'2020-02-07 19:32:48','0:0:0:0:0:0:0:1',NULL,NULL),
(154,3,'2020-02-07 19:33:01','0:0:0:0:0:0:0:1',NULL,NULL),
(155,3,'2020-02-07 19:33:06','0:0:0:0:0:0:0:1',NULL,NULL),
(156,3,'2020-02-07 19:33:21','0:0:0:0:0:0:0:1',NULL,NULL),
(157,3,'2020-02-07 19:35:33','0:0:0:0:0:0:0:1',NULL,NULL),
(158,3,'2020-02-07 19:37:10','0:0:0:0:0:0:0:1',NULL,NULL),
(159,3,'2020-02-07 19:37:14','0:0:0:0:0:0:0:1',NULL,NULL),
(160,3,'2020-02-07 19:37:25','0:0:0:0:0:0:0:1',NULL,NULL),
(161,3,'2020-02-07 19:45:41','0:0:0:0:0:0:0:1',NULL,NULL),
(162,3,'2020-02-07 19:47:45','0:0:0:0:0:0:0:1',NULL,NULL),
(163,3,'2020-02-07 20:02:25','0:0:0:0:0:0:0:1',NULL,NULL),
(164,6,'2020-02-07 20:10:55','0:0:0:0:0:0:0:1',NULL,NULL),
(165,6,'2020-02-07 20:11:02','0:0:0:0:0:0:0:1',NULL,NULL),
(166,6,'2020-02-07 20:13:44','0:0:0:0:0:0:0:1',NULL,NULL),
(167,6,'2020-02-07 20:17:14','0:0:0:0:0:0:0:1',NULL,NULL),
(168,3,'2020-02-07 20:17:44','0:0:0:0:0:0:0:1',NULL,NULL),
(169,6,'2020-02-07 20:18:13','0:0:0:0:0:0:0:1',NULL,NULL),
(170,3,'2020-02-10 10:28:14','0:0:0:0:0:0:0:1',NULL,NULL),
(171,3,'2020-02-10 10:45:15','0:0:0:0:0:0:0:1',NULL,NULL),
(172,3,'2020-02-10 10:57:46','0:0:0:0:0:0:0:1',NULL,NULL),
(173,3,'2020-02-10 10:59:06','0:0:0:0:0:0:0:1',NULL,NULL),
(174,3,'2020-02-10 11:04:19','0:0:0:0:0:0:0:1',NULL,NULL),
(175,3,'2020-02-10 11:05:55','0:0:0:0:0:0:0:1',NULL,NULL),
(176,3,'2020-02-10 11:06:45','0:0:0:0:0:0:0:1',NULL,NULL),
(177,3,'2020-02-10 11:07:41','0:0:0:0:0:0:0:1',NULL,NULL),
(178,3,'2020-02-10 11:08:13','0:0:0:0:0:0:0:1',NULL,NULL),
(179,3,'2020-02-10 11:10:02','0:0:0:0:0:0:0:1',NULL,NULL),
(180,6,'2020-02-10 14:25:17','0:0:0:0:0:0:0:1',NULL,NULL),
(181,6,'2020-02-10 14:29:14','0:0:0:0:0:0:0:1',NULL,NULL),
(182,3,'2020-02-10 16:09:16','0:0:0:0:0:0:0:1',NULL,NULL),
(183,3,'2020-02-20 14:39:19','0:0:0:0:0:0:0:1',NULL,NULL),
(184,8,'2020-02-20 17:14:58','0:0:0:0:0:0:0:1',NULL,NULL),
(185,8,'2020-02-20 17:17:04','0:0:0:0:0:0:0:1',NULL,NULL),
(186,8,'2020-02-20 17:17:42','0:0:0:0:0:0:0:1',NULL,NULL),
(187,8,'2020-02-21 10:26:56','0:0:0:0:0:0:0:1',NULL,NULL),
(188,8,'2020-02-21 10:28:54','0:0:0:0:0:0:0:1',NULL,NULL),
(189,8,'2020-02-21 10:32:25','0:0:0:0:0:0:0:1',NULL,NULL),
(190,8,'2020-02-21 10:33:41','0:0:0:0:0:0:0:1',NULL,NULL),
(191,8,'2020-02-21 10:35:58','0:0:0:0:0:0:0:1',NULL,NULL),
(192,8,'2020-02-21 10:36:49','0:0:0:0:0:0:0:1',NULL,NULL),
(193,3,'2020-02-21 11:10:11','0:0:0:0:0:0:0:1',NULL,NULL),
(194,3,'2020-02-25 16:11:13','0:0:0:0:0:0:0:1',NULL,NULL),
(195,3,'2020-02-25 16:46:29','0:0:0:0:0:0:0:1',NULL,NULL),
(196,6,'2020-08-24 13:39:59','192.168.5.145',NULL,NULL),
(197,3,'2020-08-24 13:40:08','192.168.5.145',NULL,NULL),
(198,3,'2020-08-24 13:40:14','192.168.5.145',NULL,NULL),
(199,3,'2020-08-24 13:40:20','192.168.5.145',NULL,NULL),
(200,1,'2020-08-24 13:40:55','192.168.5.145',NULL,NULL),
(201,3,'2020-08-24 13:42:42','192.168.5.145',NULL,NULL),
(202,6,'2020-08-24 13:45:28','192.168.5.145',NULL,NULL),
(203,3,'2020-08-24 13:45:39','192.168.5.145',NULL,NULL);

/*Table structure for table `ums_admin_permission_relation` */

DROP TABLE IF EXISTS `ums_admin_permission_relation`;

CREATE TABLE `ums_admin_permission_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `permission_id` bigint DEFAULT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台用户和权限关系表(除角色中定义的权限以外的加减权限)';

/*Data for the table `ums_admin_permission_relation` */

/*Table structure for table `ums_admin_role_relation` */

DROP TABLE IF EXISTS `ums_admin_role_relation`;

CREATE TABLE `ums_admin_role_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='后台用户和角色关系表';

/*Data for the table `ums_admin_role_relation` */

insert  into `ums_admin_role_relation`(`id`,`admin_id`,`role_id`) values 
(26,3,5),
(27,6,1),
(28,7,2),
(29,1,5),
(30,4,5);

/*Table structure for table `ums_growth_change_history` */

DROP TABLE IF EXISTS `ums_growth_change_history`;

CREATE TABLE `ums_growth_change_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `change_type` int DEFAULT NULL COMMENT '改变类型：0->增加；1->减少',
  `change_count` int DEFAULT NULL COMMENT '积分改变数量',
  `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人员',
  `operate_note` varchar(200) DEFAULT NULL COMMENT '操作备注',
  `source_type` int DEFAULT NULL COMMENT '积分来源：0->购物；1->管理员修改',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='成长值变化历史记录表';

/*Data for the table `ums_growth_change_history` */

insert  into `ums_growth_change_history`(`id`,`member_id`,`create_time`,`change_type`,`change_count`,`operate_man`,`operate_note`,`source_type`) values 
(1,1,'2018-08-29 17:16:35',0,1000,'test','测试使用',1);

/*Table structure for table `ums_integration_change_history` */

DROP TABLE IF EXISTS `ums_integration_change_history`;

CREATE TABLE `ums_integration_change_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `change_type` int DEFAULT NULL COMMENT '改变类型：0->增加；1->减少',
  `change_count` int DEFAULT NULL COMMENT '积分改变数量',
  `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人员',
  `operate_note` varchar(200) DEFAULT NULL COMMENT '操作备注',
  `source_type` int DEFAULT NULL COMMENT '积分来源：0->购物；1->管理员修改',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分变化历史记录表';

/*Data for the table `ums_integration_change_history` */

/*Table structure for table `ums_integration_consume_setting` */

DROP TABLE IF EXISTS `ums_integration_consume_setting`;

CREATE TABLE `ums_integration_consume_setting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `deduction_per_amount` int DEFAULT NULL COMMENT '每一元需要抵扣的积分数量',
  `max_percent_per_order` int DEFAULT NULL COMMENT '每笔订单最高抵用百分比',
  `use_unit` int DEFAULT NULL COMMENT '每次使用积分最小单位100',
  `coupon_status` int DEFAULT NULL COMMENT '是否可以和优惠券同用；0->不可以；1->可以',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='积分消费设置';

/*Data for the table `ums_integration_consume_setting` */

insert  into `ums_integration_consume_setting`(`id`,`deduction_per_amount`,`max_percent_per_order`,`use_unit`,`coupon_status`) values 
(1,100,50,100,1);

/*Table structure for table `ums_member` */

DROP TABLE IF EXISTS `ums_member`;

CREATE TABLE `ums_member` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_level_id` bigint DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(64) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(64) DEFAULT NULL COMMENT '手机号码',
  `status` int DEFAULT NULL COMMENT '帐号启用状态:0->禁用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '注册时间',
  `icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `gender` int DEFAULT NULL COMMENT '性别：0->未知；1->男；2->女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `city` varchar(64) DEFAULT NULL COMMENT '所做城市',
  `job` varchar(100) DEFAULT NULL COMMENT '职业',
  `personalized_signature` varchar(200) DEFAULT NULL COMMENT '个性签名',
  `source_type` int DEFAULT NULL COMMENT '用户来源',
  `integration` int DEFAULT NULL COMMENT '积分',
  `growth` int DEFAULT NULL COMMENT '成长值',
  `luckey_count` int DEFAULT NULL COMMENT '剩余抽奖次数',
  `history_integration` int DEFAULT NULL COMMENT '历史积分数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  UNIQUE KEY `idx_phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='会员表';

/*Data for the table `ums_member` */

insert  into `ums_member`(`id`,`member_level_id`,`username`,`password`,`nickname`,`phone`,`status`,`create_time`,`icon`,`gender`,`birthday`,`city`,`job`,`personalized_signature`,`source_type`,`integration`,`growth`,`luckey_count`,`history_integration`) values 
(1,4,'test','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','windir','18061581849',1,'2018-08-02 10:35:44',NULL,1,'2009-06-01','上海','学生','test',NULL,5000,NULL,NULL,NULL),
(3,4,'windy','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','windy','18061581848',1,'2018-08-03 16:46:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(4,4,'zhengsan','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','zhengsan','18061581847',1,'2018-11-12 14:12:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5,4,'lisi','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','lisi','18061581841',1,'2018-11-12 14:12:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(6,4,'wangwu','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','wangwu','18061581842',1,'2018-11-12 14:13:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(7,4,'lion','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','lion','18061581845',1,'2018-11-12 14:21:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(8,4,'shari','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','shari','18061581844',1,'2018-11-12 14:22:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(9,4,'aewen','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','aewen','18061581843',1,'2018-11-12 14:22:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `ums_member_level` */

DROP TABLE IF EXISTS `ums_member_level`;

CREATE TABLE `ums_member_level` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `growth_point` int DEFAULT NULL,
  `default_status` int DEFAULT NULL COMMENT '是否为默认等级：0->不是；1->是',
  `free_freight_point` decimal(10,2) DEFAULT NULL COMMENT '免运费标准',
  `comment_growth_point` int DEFAULT NULL COMMENT '每次评价获取的成长值',
  `priviledge_free_freight` int DEFAULT NULL COMMENT '是否有免邮特权',
  `priviledge_sign_in` int DEFAULT NULL COMMENT '是否有签到特权',
  `priviledge_comment` int DEFAULT NULL COMMENT '是否有评论获奖励特权',
  `priviledge_promotion` int DEFAULT NULL COMMENT '是否有专享活动特权',
  `priviledge_member_price` int DEFAULT NULL COMMENT '是否有会员价格特权',
  `priviledge_birthday` int DEFAULT NULL COMMENT '是否有生日特权',
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员等级表';

/*Data for the table `ums_member_level` */

insert  into `ums_member_level`(`id`,`name`,`growth_point`,`default_status`,`free_freight_point`,`comment_growth_point`,`priviledge_free_freight`,`priviledge_sign_in`,`priviledge_comment`,`priviledge_promotion`,`priviledge_member_price`,`priviledge_birthday`,`note`) values 
(1,'黄金会员',1000,0,199.00,5,1,1,1,1,1,1,NULL),
(2,'白金会员',5000,0,99.00,10,1,1,1,1,1,1,NULL),
(3,'钻石会员',15000,0,69.00,15,1,1,1,1,1,1,NULL),
(4,'普通会员',1,1,199.00,20,1,1,1,1,0,0,NULL);

/*Table structure for table `ums_member_login_log` */

DROP TABLE IF EXISTS `ums_member_login_log`;

CREATE TABLE `ums_member_login_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `login_type` int DEFAULT NULL COMMENT '登录类型：0->PC；1->android;2->ios;3->小程序',
  `province` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员登录记录';

/*Data for the table `ums_member_login_log` */

/*Table structure for table `ums_member_member_tag_relation` */

DROP TABLE IF EXISTS `ums_member_member_tag_relation`;

CREATE TABLE `ums_member_member_tag_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `tag_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和标签关系表';

/*Data for the table `ums_member_member_tag_relation` */

/*Table structure for table `ums_member_product_category_relation` */

DROP TABLE IF EXISTS `ums_member_product_category_relation`;

CREATE TABLE `ums_member_product_category_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `product_category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员与产品分类关系表（用户喜欢的分类）';

/*Data for the table `ums_member_product_category_relation` */

/*Table structure for table `ums_member_receive_address` */

DROP TABLE IF EXISTS `ums_member_receive_address`;

CREATE TABLE `ums_member_receive_address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '收货人名称',
  `phone_number` varchar(64) DEFAULT NULL,
  `default_status` int DEFAULT NULL COMMENT '是否为默认',
  `post_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `province` varchar(100) DEFAULT NULL COMMENT '省份/直辖市',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `region` varchar(100) DEFAULT NULL COMMENT '区',
  `detail_address` varchar(128) DEFAULT NULL COMMENT '详细地址(街道)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员收货地址表';

/*Data for the table `ums_member_receive_address` */

insert  into `ums_member_receive_address`(`id`,`member_id`,`name`,`phone_number`,`default_status`,`post_code`,`province`,`city`,`region`,`detail_address`) values 
(1,1,'大梨','18033441849',0,'518000','广东省','深圳市','南山区','科兴科学园'),
(3,1,'大梨','18033441849',0,'518000','广东省','深圳市','福田区','清水河街道'),
(4,1,'大梨','18033441849',1,'518000','广东省','深圳市','福田区','东晓街道');

/*Table structure for table `ums_member_rule_setting` */

DROP TABLE IF EXISTS `ums_member_rule_setting`;

CREATE TABLE `ums_member_rule_setting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `continue_sign_day` int DEFAULT NULL COMMENT '连续签到天数',
  `continue_sign_point` int DEFAULT NULL COMMENT '连续签到赠送数量',
  `consume_per_point` decimal(10,2) DEFAULT NULL COMMENT '每消费多少元获取1个点',
  `low_order_amount` decimal(10,2) DEFAULT NULL COMMENT '最低获取点数的订单金额',
  `max_point_per_order` int DEFAULT NULL COMMENT '每笔订单最高获取点数',
  `type` int DEFAULT NULL COMMENT '类型：0->积分规则；1->成长值规则',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员积分成长规则表';

/*Data for the table `ums_member_rule_setting` */

/*Table structure for table `ums_member_statistics_info` */

DROP TABLE IF EXISTS `ums_member_statistics_info`;

CREATE TABLE `ums_member_statistics_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `consume_amount` decimal(10,2) DEFAULT NULL COMMENT '累计消费金额',
  `order_count` int DEFAULT NULL COMMENT '订单数量',
  `coupon_count` int DEFAULT NULL COMMENT '优惠券数量',
  `comment_count` int DEFAULT NULL COMMENT '评价数',
  `return_order_count` int DEFAULT NULL COMMENT '退货数量',
  `login_count` int DEFAULT NULL COMMENT '登录次数',
  `attend_count` int DEFAULT NULL COMMENT '关注数量',
  `fans_count` int DEFAULT NULL COMMENT '粉丝数量',
  `collect_product_count` int DEFAULT NULL,
  `collect_subject_count` int DEFAULT NULL,
  `collect_topic_count` int DEFAULT NULL,
  `collect_comment_count` int DEFAULT NULL,
  `invite_friend_count` int DEFAULT NULL,
  `recent_order_time` datetime DEFAULT NULL COMMENT '最后一次下订单时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员统计信息';

/*Data for the table `ums_member_statistics_info` */

/*Table structure for table `ums_member_tag` */

DROP TABLE IF EXISTS `ums_member_tag`;

CREATE TABLE `ums_member_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `finish_order_count` int DEFAULT NULL COMMENT '自动打标签完成订单数量',
  `finish_order_amount` decimal(10,2) DEFAULT NULL COMMENT '自动打标签完成订单金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户标签表';

/*Data for the table `ums_member_tag` */

/*Table structure for table `ums_member_task` */

DROP TABLE IF EXISTS `ums_member_task`;

CREATE TABLE `ums_member_task` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `growth` int DEFAULT NULL COMMENT '赠送成长值',
  `intergration` int DEFAULT NULL COMMENT '赠送积分',
  `type` int DEFAULT NULL COMMENT '任务类型：0->新手任务；1->日常任务',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员任务表';

/*Data for the table `ums_member_task` */

/*Table structure for table `ums_menu` */

DROP TABLE IF EXISTS `ums_menu`;

CREATE TABLE `ums_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint DEFAULT NULL COMMENT '父级ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `title` varchar(100) DEFAULT NULL COMMENT '菜单名称',
  `level` int DEFAULT NULL COMMENT '菜单级数',
  `sort` int DEFAULT NULL COMMENT '菜单排序',
  `name` varchar(100) DEFAULT NULL COMMENT '前端名称',
  `icon` varchar(200) DEFAULT NULL COMMENT '前端图标',
  `hidden` int DEFAULT NULL COMMENT '前端隐藏',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

/*Data for the table `ums_menu` */

insert  into `ums_menu`(`id`,`parent_id`,`create_time`,`title`,`level`,`sort`,`name`,`icon`,`hidden`) values 
(1,0,'2020-02-02 14:50:36','商品',0,0,'pms','product',0),
(2,1,'2020-02-02 14:51:50','商品列表',1,0,'product','product-list',0),
(3,1,'2020-02-02 14:52:44','添加商品',1,0,'addProduct','product-add',0),
(4,1,'2020-02-02 14:53:51','商品分类',1,0,'productCate','product-cate',0),
(5,1,'2020-02-02 14:54:51','商品类型',1,0,'productAttr','product-attr',0),
(6,1,'2020-02-02 14:56:29','品牌管理',1,0,'brand','product-brand',0),
(7,0,'2020-02-02 16:54:07','订单',0,0,'oms','order',0),
(8,7,'2020-02-02 16:55:18','订单列表',1,0,'order','product-list',0),
(9,7,'2020-02-02 16:56:46','订单设置',1,0,'orderSetting','order-setting',0),
(10,7,'2020-02-02 16:57:39','退货申请处理',1,0,'returnApply','order-return',0),
(11,7,'2020-02-02 16:59:40','退货原因设置',1,0,'returnReason','order-return-reason',0),
(12,0,'2020-02-04 16:18:00','营销',0,0,'sms','sms',0),
(13,12,'2020-02-04 16:19:22','秒杀活动列表',1,0,'flash','sms-flash',0),
(14,12,'2020-02-04 16:20:16','优惠券列表',1,0,'coupon','sms-coupon',0),
(16,12,'2020-02-07 16:22:38','品牌推荐',1,0,'homeBrand','product-brand',0),
(17,12,'2020-02-07 16:23:14','新品推荐',1,0,'homeNew','sms-new',0),
(18,12,'2020-02-07 16:26:38','人气推荐',1,0,'homeHot','sms-hot',0),
(19,12,'2020-02-07 16:28:16','专题推荐',1,0,'homeSubject','sms-subject',0),
(20,12,'2020-02-07 16:28:42','广告列表',1,0,'homeAdvertise','sms-ad',0),
(21,0,'2020-02-07 16:29:13','权限',0,0,'ums','ums',0),
(22,21,'2020-02-07 16:29:51','用户列表',1,0,'admin','ums-admin',0),
(23,21,'2020-02-07 16:30:13','角色列表',1,0,'role','ums-role',0),
(24,21,'2020-02-07 16:30:53','菜单列表',1,0,'menu','ums-menu',0),
(25,21,'2020-02-07 16:31:13','资源列表',1,0,'resource','ums-resource',0);

/*Table structure for table `ums_permission` */

DROP TABLE IF EXISTS `ums_permission`;

CREATE TABLE `ums_permission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pid` bigint DEFAULT NULL COMMENT '父级权限id',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `value` varchar(200) DEFAULT NULL COMMENT '权限值',
  `icon` varchar(500) DEFAULT NULL COMMENT '图标',
  `type` int DEFAULT NULL COMMENT '权限类型：0->目录；1->菜单；2->按钮（接口绑定权限）',
  `uri` varchar(200) DEFAULT NULL COMMENT '前端资源路径',
  `status` int DEFAULT NULL COMMENT '启用状态；0->禁用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `sort` int DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='后台用户权限表';

/*Data for the table `ums_permission` */

insert  into `ums_permission`(`id`,`pid`,`name`,`value`,`icon`,`type`,`uri`,`status`,`create_time`,`sort`) values 
(1,0,'商品',NULL,NULL,0,NULL,1,'2018-09-29 16:15:14',0),
(2,1,'商品列表','pms:product:read',NULL,1,'/pms/product/index',1,'2018-09-29 16:17:01',0),
(3,1,'添加商品','pms:product:create',NULL,1,'/pms/product/add',1,'2018-09-29 16:18:51',0),
(4,1,'商品分类','pms:productCategory:read',NULL,1,'/pms/productCate/index',1,'2018-09-29 16:23:07',0),
(5,1,'商品类型','pms:productAttribute:read',NULL,1,'/pms/productAttr/index',1,'2018-09-29 16:24:43',0),
(6,1,'品牌管理','pms:brand:read',NULL,1,'/pms/brand/index',1,'2018-09-29 16:25:45',0),
(7,2,'编辑商品','pms:product:update',NULL,2,'/pms/product/updateProduct',1,'2018-09-29 16:34:23',0),
(8,2,'删除商品','pms:product:delete',NULL,2,'/pms/product/delete',1,'2018-09-29 16:38:33',0),
(9,4,'添加商品分类','pms:productCategory:create',NULL,2,'/pms/productCate/create',1,'2018-09-29 16:43:23',0),
(10,4,'修改商品分类','pms:productCategory:update',NULL,2,'/pms/productCate/update',1,'2018-09-29 16:43:55',0),
(11,4,'删除商品分类','pms:productCategory:delete',NULL,2,'/pms/productAttr/delete',1,'2018-09-29 16:44:38',0),
(12,5,'添加商品类型','pms:productAttribute:create',NULL,2,'/pms/productAttr/create',1,'2018-09-29 16:45:25',0),
(13,5,'修改商品类型','pms:productAttribute:update',NULL,2,'/pms/productAttr/update',1,'2018-09-29 16:48:08',0),
(14,5,'删除商品类型','pms:productAttribute:delete',NULL,2,'/pms/productAttr/delete',1,'2018-09-29 16:48:44',0),
(15,6,'添加品牌','pms:brand:create',NULL,2,'/pms/brand/add',1,'2018-09-29 16:49:34',0),
(16,6,'修改品牌','pms:brand:update',NULL,2,'/pms/brand/update',1,'2018-09-29 16:50:55',0),
(17,6,'删除品牌','pms:brand:delete',NULL,2,'/pms/brand/delete',1,'2018-09-29 16:50:59',0),
(18,0,'首页',NULL,NULL,0,NULL,1,'2018-09-29 16:51:57',0);

/*Table structure for table `ums_resource` */

DROP TABLE IF EXISTS `ums_resource`;

CREATE TABLE `ums_resource` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) DEFAULT NULL COMMENT '资源URL',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `category_id` bigint DEFAULT NULL COMMENT '资源分类ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='后台资源表';

/*Data for the table `ums_resource` */

insert  into `ums_resource`(`id`,`create_time`,`name`,`url`,`description`,`category_id`) values 
(1,'2020-02-04 17:04:55','商品品牌管理','/brand/**',NULL,1),
(2,'2020-02-04 17:05:35','商品属性分类管理','/productAttribute/**',NULL,1),
(3,'2020-02-04 17:06:13','商品属性管理','/productAttribute/**',NULL,1),
(4,'2020-02-04 17:07:15','商品分类管理','/productCategory/**',NULL,1),
(5,'2020-02-04 17:09:16','商品管理','/product/**',NULL,1),
(6,'2020-02-04 17:09:53','商品库存管理','/sku/**',NULL,1),
(8,'2020-02-05 14:43:37','订单管理','/order/**','',2),
(9,'2020-02-05 14:44:22',' 订单退货申请管理','/returnApply/**','',2),
(10,'2020-02-05 14:45:08','退货原因管理','/returnReason/**','',2),
(11,'2020-02-05 14:45:43','订单设置管理','/orderSetting/**','',2),
(12,'2020-02-05 14:46:23','收货地址管理','/companyAddress/**','',2),
(13,'2020-02-07 16:37:22','优惠券管理','/coupon/**','',3),
(14,'2020-02-07 16:37:59','优惠券领取记录管理','/couponHistory/**','',3),
(15,'2020-02-07 16:38:28','限时购活动管理','/flash/**','',3),
(16,'2020-02-07 16:38:59','限时购商品关系管理','/flashProductRelation/**','',3),
(17,'2020-02-07 16:39:22','限时购场次管理','/flashSession/**','',3),
(18,'2020-02-07 16:40:07','首页轮播广告管理','/home/advertise/**','',3),
(19,'2020-02-07 16:40:34','首页品牌管理','/home/brand/**','',3),
(20,'2020-02-07 16:41:06','首页新品管理','/home/newProduct/**','',3),
(21,'2020-02-07 16:42:16','首页人气推荐管理','/home/recommendProduct/**','',3),
(22,'2020-02-07 16:42:48','首页专题推荐管理','/home/recommendSubject/**','',3),
(23,'2020-02-07 16:44:56',' 商品优选管理','/prefrenceArea/**','',5),
(24,'2020-02-07 16:45:39','商品专题管理','/subject/**','',5),
(25,'2020-02-07 16:47:34','后台用户管理','/admin/**','',4),
(26,'2020-02-07 16:48:24','后台用户角色管理','/role/**','',4),
(27,'2020-02-07 16:48:48','后台菜单管理','/menu/**','',4),
(28,'2020-02-07 16:49:18','后台资源分类管理','/resourceCategory/**','',4),
(29,'2020-02-07 16:49:45','后台资源管理','/resource/**','',4),
(31,'2020-08-24 13:43:54','登录后获取用户信息','/admin/info','后台用户登录需要配置',4),
(32,'2020-08-24 13:44:37','后台用户登出','/admin/logout','后台用户登出需要配置',4);

/*Table structure for table `ums_resource_category` */

DROP TABLE IF EXISTS `ums_resource_category`;

CREATE TABLE `ums_resource_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `sort` int DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='资源分类表';

/*Data for the table `ums_resource_category` */

insert  into `ums_resource_category`(`id`,`create_time`,`name`,`sort`) values 
(1,'2020-02-05 10:21:44','商品模块',0),
(2,'2020-02-05 10:22:34','订单模块',0),
(3,'2020-02-05 10:22:48','营销模块',0),
(4,'2020-02-05 10:23:04','权限模块',0),
(5,'2020-02-07 16:34:27','内容模块',0),
(6,'2020-02-07 16:35:49','其他模块',0);

/*Table structure for table `ums_role` */

DROP TABLE IF EXISTS `ums_role`;

CREATE TABLE `ums_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `admin_count` int DEFAULT NULL COMMENT '后台用户数量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int DEFAULT '1' COMMENT '启用状态：0->禁用；1->启用',
  `sort` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='后台用户角色表';

/*Data for the table `ums_role` */

insert  into `ums_role`(`id`,`name`,`description`,`admin_count`,`create_time`,`status`,`sort`) values 
(1,'商品管理员','只能查看及操作商品',0,'2020-02-03 16:50:37',1,0),
(2,'订单管理员','只能查看及操作订单',0,'2018-09-30 15:53:45',1,0),
(5,'超级管理员','拥有所有查看和操作功能',0,'2020-02-02 15:11:05',1,0);

/*Table structure for table `ums_role_menu_relation` */

DROP TABLE IF EXISTS `ums_role_menu_relation`;

CREATE TABLE `ums_role_menu_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='后台角色菜单关系表';

/*Data for the table `ums_role_menu_relation` */

insert  into `ums_role_menu_relation`(`id`,`role_id`,`menu_id`) values 
(33,1,1),
(34,1,2),
(35,1,3),
(36,1,4),
(37,1,5),
(38,1,6),
(53,2,7),
(54,2,8),
(55,2,9),
(56,2,10),
(57,2,11),
(72,5,1),
(73,5,2),
(74,5,3),
(75,5,4),
(76,5,5),
(77,5,6),
(78,5,7),
(79,5,8),
(80,5,9),
(81,5,10),
(82,5,11),
(83,5,12),
(84,5,13),
(85,5,14),
(86,5,16),
(87,5,17),
(88,5,18),
(89,5,19),
(90,5,20),
(91,5,21),
(92,5,22),
(93,5,23),
(94,5,24),
(95,5,25);

/*Table structure for table `ums_role_permission_relation` */

DROP TABLE IF EXISTS `ums_role_permission_relation`;

CREATE TABLE `ums_role_permission_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL,
  `permission_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='后台用户角色和权限关系表';

/*Data for the table `ums_role_permission_relation` */

insert  into `ums_role_permission_relation`(`id`,`role_id`,`permission_id`) values 
(1,1,1),
(2,1,2),
(3,1,3),
(4,1,7),
(5,1,8),
(6,2,4),
(7,2,9),
(8,2,10),
(9,2,11),
(10,3,5),
(11,3,12),
(12,3,13),
(13,3,14),
(14,4,6),
(15,4,15),
(16,4,16),
(17,4,17);

/*Table structure for table `ums_role_resource_relation` */

DROP TABLE IF EXISTS `ums_role_resource_relation`;

CREATE TABLE `ums_role_resource_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL COMMENT '角色ID',
  `resource_id` bigint DEFAULT NULL COMMENT '资源ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8 COMMENT='后台角色资源关系表';

/*Data for the table `ums_role_resource_relation` */

insert  into `ums_role_resource_relation`(`id`,`role_id`,`resource_id`) values 
(178,5,1),
(179,5,2),
(180,5,3),
(181,5,4),
(182,5,5),
(183,5,6),
(184,5,8),
(185,5,9),
(186,5,10),
(187,5,11),
(188,5,12),
(189,5,13),
(190,5,14),
(191,5,15),
(192,5,16),
(193,5,17),
(194,5,18),
(195,5,19),
(196,5,20),
(197,5,21),
(198,5,22),
(199,5,23),
(200,5,24),
(201,5,25),
(202,5,26),
(203,5,27),
(204,5,28),
(205,5,29),
(206,5,31),
(207,5,32),
(208,2,8),
(209,2,9),
(210,2,10),
(211,2,11),
(212,2,12),
(213,2,31),
(214,2,32),
(215,1,1),
(216,1,2),
(217,1,3),
(218,1,4),
(219,1,5),
(220,1,6),
(221,1,23),
(222,1,24),
(223,1,31),
(224,1,32);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
