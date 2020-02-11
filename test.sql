/*
SQLyog Ultimate v12.2.6 (64 bit)
MySQL - 5.5.44 : Database - bagevent_test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bagevent_test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bagevent_test`;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cellphone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `state` tinyint(1) DEFAULT '1' COMMENT '0/1',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_name`,`email`,`cellphone`,`password`,`salt`,`state`,`create_time`) values 
(3,'12323',NULL,NULL,NULL,NULL,NULL,NULL),
(4,'12323sf',NULL,NULL,NULL,NULL,NULL,NULL),
(5,'dsf',NULL,NULL,NULL,NULL,NULL,NULL),
(6,'admin',NULL,NULL,NULL,NULL,NULL,NULL),
(7,'zhsdfsd','1548314601@qq.com','17327764199','12312321','sdfsf',1,NULL),
(8,'giao','sdf','sdfs','admin','sdf',1,'2020-02-11 17:24:23'),
(9,'adminsdf','sdfsdfa','sdfsd','202cb962ac59075b964b07152d234b70','sdfsf',1,'2020-02-11 17:33:51'),
(10,'zz','sdf','sdfsd','202cb962ac59075b964b07152d234b70','asdas',1,'2020-02-11 17:50:57'),
(11,'giaosdf','sdfsd','sdfsdf','21232f297a57a5a743894a0e4a801fc3','sdfd',1,'2020-02-11 19:22:06'),
(12,'giao123','','','21232f297a57a5a743894a0e4a801fc3','',1,'2020-02-11 19:47:15'),
(13,'giasdfo','sdf','','21232f297a57a5a743894a0e4a801fc3','',1,'2020-02-11 20:12:43'),
(14,'gifao','','','d41d8cd98f00b204e9800998ecf8427e','',1,'2020-02-11 20:12:49'),
(15,'','','','21232f297a57a5a743894a0e4a801fc3','',1,'2020-02-11 20:13:29'),
(16,'giao','','','21232f297a57a5a743894a0e4a801fc3','',1,'2020-02-11 20:15:13'),
(17,'giao','sdfsdf','','21232f297a57a5a743894a0e4a801fc3','',1,'2020-02-11 20:19:34');

/*Table structure for table `userloginlog` */

DROP TABLE IF EXISTS `userloginlog`;

CREATE TABLE `userloginlog` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `login_time` datetime DEFAULT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`login_id`,`user_id`),
  KEY `fk_UserLoginLogId_UserUserId` (`user_id`),
  CONSTRAINT `fk_UserLoginLogId_UserUserId` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `userloginlog` */

insert  into `userloginlog`(`login_id`,`user_id`,`login_time`,`login_ip`) values 
(1,10,'2020-02-11 19:23:42','0:0:0:0:0:0:0:1'),
(2,10,'2020-02-11 19:30:05','0:0:0:0:0:0:0:1'),
(3,10,'2020-02-11 19:34:36','0:0:0:0:0:0:0:1'),
(4,10,'2020-02-11 20:20:30','0:0:0:0:0:0:0:1'),
(5,10,'2020-02-11 20:20:36','0:0:0:0:0:0:0:1'),
(6,10,'2020-02-11 20:20:38','0:0:0:0:0:0:0:1'),
(7,10,'2020-02-11 23:50:04','0:0:0:0:0:0:0:1'),
(8,10,'2020-02-12 00:30:46','0:0:0:0:0:0:0:1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
