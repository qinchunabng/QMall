/*
SQLyog  v12.2.6 (64 bit)
MySQL - 8.0.21 : Database - mall-cms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mall-cms` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mall-cms`;

/*Table structure for table `cms_help` */

DROP TABLE IF EXISTS `cms_help`;

CREATE TABLE `cms_help` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_id` bigint DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `show_status` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `read_count` int DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帮助表';

/*Data for the table `cms_help` */

/*Table structure for table `cms_help_category` */

DROP TABLE IF EXISTS `cms_help_category`;

CREATE TABLE `cms_help_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
  `help_count` int DEFAULT NULL COMMENT '专题数量',
  `show_status` int DEFAULT NULL,
  `sort` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帮助分类表';

/*Data for the table `cms_help_category` */

/*Table structure for table `cms_member_report` */

DROP TABLE IF EXISTS `cms_member_report`;

CREATE TABLE `cms_member_report` (
  `id` bigint DEFAULT NULL,
  `report_type` int DEFAULT NULL COMMENT '举报类型：0->商品评价；1->话题内容；2->用户评论',
  `report_member_name` varchar(100) DEFAULT NULL COMMENT '举报人',
  `create_time` datetime DEFAULT NULL,
  `report_object` varchar(100) DEFAULT NULL,
  `report_status` int DEFAULT NULL COMMENT '举报状态：0->未处理；1->已处理',
  `handle_status` int DEFAULT NULL COMMENT '处理结果：0->无效；1->有效；2->恶意',
  `note` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户举报表';

/*Data for the table `cms_member_report` */

/*Table structure for table `cms_prefrence_area` */

DROP TABLE IF EXISTS `cms_prefrence_area`;

CREATE TABLE `cms_prefrence_area` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `pic` varbinary(500) DEFAULT NULL COMMENT '展示图片',
  `sort` int DEFAULT NULL,
  `show_status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='优选专区';

/*Data for the table `cms_prefrence_area` */

insert  into `cms_prefrence_area`(`id`,`name`,`sub_title`,`pic`,`sort`,`show_status`) values 
(1,'让音质更出众','音质不打折 完美现场感',NULL,NULL,1),
(2,'让音质更出众22','让音质更出众22',NULL,NULL,NULL),
(3,'让音质更出众33',NULL,NULL,NULL,NULL),
(4,'让音质更出众44',NULL,NULL,NULL,NULL);

/*Table structure for table `cms_prefrence_area_product_relation` */

DROP TABLE IF EXISTS `cms_prefrence_area_product_relation`;

CREATE TABLE `cms_prefrence_area_product_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `prefrence_area_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='优选专区和产品关系表';

/*Data for the table `cms_prefrence_area_product_relation` */

insert  into `cms_prefrence_area_product_relation`(`id`,`prefrence_area_id`,`product_id`) values 
(1,1,12),
(2,1,13),
(3,1,14),
(4,1,18),
(5,1,7),
(6,2,7),
(7,1,22),
(24,1,23);

/*Table structure for table `cms_subject` */

DROP TABLE IF EXISTS `cms_subject`;

CREATE TABLE `cms_subject` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_id` bigint DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `pic` varchar(500) DEFAULT NULL COMMENT '专题主图',
  `product_count` int DEFAULT NULL COMMENT '关联产品数量',
  `recommend_status` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `collect_count` int DEFAULT NULL,
  `read_count` int DEFAULT NULL,
  `comment_count` int DEFAULT NULL,
  `album_pics` varchar(1000) DEFAULT NULL COMMENT '画册图片用逗号分割',
  `description` varchar(1000) DEFAULT NULL,
  `show_status` int DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
  `content` text,
  `forward_count` int DEFAULT NULL COMMENT '转发数',
  `category_name` varchar(200) DEFAULT NULL COMMENT '专题分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='专题表';

/*Data for the table `cms_subject` */

insert  into `cms_subject`(`id`,`category_id`,`title`,`pic`,`product_count`,`recommend_status`,`create_time`,`collect_count`,`read_count`,`comment_count`,`album_pics`,`description`,`show_status`,`content`,`forward_count`,`category_name`) values 
(1,1,'polo衬衫的也时尚',NULL,NULL,NULL,'2018-11-11 13:26:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'服装专题'),
(2,2,'大牌手机低价秒',NULL,NULL,NULL,'2018-11-12 13:27:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'手机专题'),
(3,2,'晓龙845新品上市',NULL,NULL,NULL,'2018-11-13 13:27:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'手机专题'),
(4,1,'夏天应该穿什么',NULL,NULL,NULL,'2018-11-01 13:27:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'服装专题'),
(5,1,'夏季精选',NULL,NULL,NULL,'2018-11-06 13:27:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'服装专题'),
(6,2,'品牌手机降价',NULL,NULL,NULL,'2018-11-07 13:27:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'手机专题');

/*Table structure for table `cms_subject_category` */

DROP TABLE IF EXISTS `cms_subject_category`;

CREATE TABLE `cms_subject_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
  `subject_count` int DEFAULT NULL COMMENT '专题数量',
  `show_status` int DEFAULT NULL,
  `sort` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='专题分类表';

/*Data for the table `cms_subject_category` */

insert  into `cms_subject_category`(`id`,`name`,`icon`,`subject_count`,`show_status`,`sort`) values 
(1,'服装专题',NULL,NULL,NULL,NULL),
(2,'手机专题',NULL,NULL,NULL,NULL);

/*Table structure for table `cms_subject_comment` */

DROP TABLE IF EXISTS `cms_subject_comment`;

CREATE TABLE `cms_subject_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject_id` bigint DEFAULT NULL,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `member_icon` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `show_status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题评论表';

/*Data for the table `cms_subject_comment` */

/*Table structure for table `cms_subject_product_relation` */

DROP TABLE IF EXISTS `cms_subject_product_relation`;

CREATE TABLE `cms_subject_product_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='专题商品关系表';

/*Data for the table `cms_subject_product_relation` */

insert  into `cms_subject_product_relation`(`id`,`subject_id`,`product_id`) values 
(1,1,12),
(2,1,13),
(3,1,14),
(4,1,18),
(5,1,7),
(6,2,7),
(7,1,22),
(29,1,23),
(30,4,23),
(31,5,23),
(41,2,26),
(42,3,26),
(43,6,26);

/*Table structure for table `cms_topic` */

DROP TABLE IF EXISTS `cms_topic`;

CREATE TABLE `cms_topic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_id` bigint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `attend_count` int DEFAULT NULL COMMENT '参与人数',
  `attention_count` int DEFAULT NULL COMMENT '关注人数',
  `read_count` int DEFAULT NULL,
  `award_name` varchar(100) DEFAULT NULL COMMENT '奖品名称',
  `attend_type` varchar(100) DEFAULT NULL COMMENT '参与方式',
  `content` text COMMENT '话题内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='话题表';

/*Data for the table `cms_topic` */

/*Table structure for table `cms_topic_category` */

DROP TABLE IF EXISTS `cms_topic_category`;

CREATE TABLE `cms_topic_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
  `subject_count` int DEFAULT NULL COMMENT '专题数量',
  `show_status` int DEFAULT NULL,
  `sort` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='话题分类表';

/*Data for the table `cms_topic_category` */

/*Table structure for table `cms_topic_comment` */

DROP TABLE IF EXISTS `cms_topic_comment`;

CREATE TABLE `cms_topic_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `topic_id` bigint DEFAULT NULL,
  `member_icon` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `show_status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题评论表';

/*Data for the table `cms_topic_comment` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
