/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - coway
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`coway` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `coway`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`email`,`password`,`name`) values ('goyal.himanshu@live.in','26080594','Himanshu Goyal');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedbackid` varchar(200) NOT NULL,
  `email` varchar(50) default NULL,
  `feedback` varchar(500) default NULL,
  `replied` varchar(5) NOT NULL default 'false',
  PRIMARY KEY  (`feedbackid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`feedbackid`,`email`,`feedback`,`replied`) values ('28edc232-f918-440f-bc69-90fe3531b716','pariharharsh000@yahoo.com','qwer','true'),('510a2ab7-e7a9-4b65-9fd0-45b475176fe5','pariharharsh000@yahoo.com','zxcvbn','true'),('6aea0b06-a097-4ea5-9dac-095d6bbd7fb6','pariharharsh000@yahoo.com','qwer','true'),('73a0921c-dc61-4bb1-a039-14a099567cba','pariharharsh000@yahoo.com','bxdd','false'),('958dd081-b291-41d6-960c-c928b927b14d','pariharharsh000@yahoo.com','vgbhnjmk,','false'),('982eb9e7-7ca4-43dc-93d9-32f42bdcfc25','pariharharsh000@yahoo.com','qwerty','false');

/*Table structure for table `report` */

DROP TABLE IF EXISTS `report`;

CREATE TABLE `report` (
  `reportid` varchar(50) NOT NULL,
  `rideid` varchar(10) NOT NULL,
  `reporteremail` varchar(100) NOT NULL,
  `reason` varchar(1000) NOT NULL,
  `status` varchar(5) default 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `report` */

insert  into `report`(`reportid`,`rideid`,`reporteremail`,`reason`,`status`) values ('28edc232-f918-440f-bc69-90fe3531b716','7596542','pariharharsh000@yahoo.com','qwert','false'),('73a0921c-dc61-4bb1-a039-14a099567cba','1452985','pariharharsh000@yahoo.com','asdfg','false');

/*Table structure for table `rides` */

DROP TABLE IF EXISTS `rides`;

CREATE TABLE `rides` (
  `userid` varchar(50) NOT NULL,
  `rideid` varchar(10) NOT NULL,
  `dep_place` varchar(100) NOT NULL,
  `des_place` varchar(100) NOT NULL,
  `total_dist` varchar(20) NOT NULL,
  `total_time` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `cost` varchar(5) NOT NULL,
  `total_seats` varchar(1) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `approval` varchar(5) NOT NULL default 'false',
  PRIMARY KEY  (`rideid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rides` */

insert  into `rides`(`userid`,`rideid`,`dep_place`,`des_place`,`total_dist`,`total_time`,`date`,`time`,`cost`,`total_seats`,`description`,`approval`) values ('11','1','1','1','1','1','1','1','1','1','1','true'),('22','2','2','2','2','2','2','2','2','2','2','false');

/*Table structure for table `userdata` */

DROP TABLE IF EXISTS `userdata`;

CREATE TABLE `userdata` (
  `userid` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) default NULL,
  `age` varchar(3) default NULL,
  `friend_count` varchar(10) default NULL,
  `picurl` varchar(500) default NULL,
  `blocked` varchar(10) NOT NULL default 'false',
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userdata` */

insert  into `userdata`(`userid`,`name`,`email`,`age`,`friend_count`,`picurl`,`blocked`) values ('889079204496214','Himanshu Goyal','goyal.himanshu2605@gmail.com','21','15','https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/c33.12.149.149/150253_105692436168232_1664250_n.jpg?oh=6c4cdfd8f7e400125d83c32b2e14bd15&oe=571CBB3C&__gda__=1461093923_ddc96774a63eff647d7987aeb8829158','false'),('994427217268465','Himanshu Goyal','himanshugoyal2605@gmail.com','21','288','https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash2/v/t1.0-1/c9.0.200.200/p200x200/1240041_631776550200202_1501397133_n.jpg?oh=406c16803819243424155250b0055a07&oe=57127B71&__gda__=1457121139_c939351e7404a9b6121fc00148287424','false');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
