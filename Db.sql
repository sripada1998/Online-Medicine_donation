/*
SQLyog Community v13.1.2 (64 bit)
MySQL - 5.5.29 : Database - online_medicine
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`online_medicine` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `online_medicine`;

/*Table structure for table `donated` */

DROP TABLE IF EXISTS `donated`;

CREATE TABLE `donated` (
  `did` int(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `mandt` varchar(100) DEFAULT NULL,
  `expdt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `donated` */

insert  into `donated`(`did`,`username`,`name`,`price`,`mandt`,`expdt`) values 
(8,'Krishna','Dolo 650','100','2019-05-05','2019-05-27'),
(9,'Krishna','fever','1000','2019-05-05','2019-05-27'),
(10,'Krishna','coldact','50','2019-06-06','2019-06-30'),
(11,'Vamshi','Dolo 650','100','2019-05-05','2019-05-27'),
(12,'Vamshi','fever','1000','2019-05-05','2019-05-27');

/*Table structure for table `executive` */

DROP TABLE IF EXISTS `executive`;

CREATE TABLE `executive` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `cnumber` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `executive` */

insert  into `executive`(`username`,`password`,`email`,`location`,`cnumber`) values 
('Ramu','1234','r@gmail.com','Hyd','7456321456');

/*Table structure for table `medicine` */

DROP TABLE IF EXISTS `medicine`;

CREATE TABLE `medicine` (
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `mandt` varchar(100) DEFAULT NULL,
  `expdt` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `medicine` */

insert  into `medicine`(`name`,`price`,`mandt`,`expdt`) values 
('Dolo 650','100','2019-05-05','2019-05-27'),
('fever','1000','2019-05-05','2019-05-27'),
('coldact','50','2019-06-06','2019-06-30');

/*Table structure for table `ngo` */

DROP TABLE IF EXISTS `ngo`;

CREATE TABLE `ngo` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `cnumber` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ngo` */

insert  into `ngo`(`username`,`password`,`email`,`location`,`cnumber`) values 
('hari','Hari','hari@gmail.com','hyd','9533621549'),
('sainath','sainath','sai@gmail.com','hyd','1234567890'),
('tyson','tyson','tyson@gmail.com','hyd','1234567890'),
('hello','hello','hello@gmai.com','hyd','1234567890'),
('hari','123','hari@gmail.com','hyderabad','9988774455');

/*Table structure for table `orphans` */

DROP TABLE IF EXISTS `orphans`;

CREATE TABLE `orphans` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `cnumber` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orphans` */

/*Table structure for table `purchased` */

DROP TABLE IF EXISTS `purchased`;

CREATE TABLE `purchased` (
  `pid` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `mandt` varchar(100) DEFAULT NULL,
  `expdt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `purchased` */

insert  into `purchased`(`pid`,`username`,`name`,`price`,`mandt`,`expdt`) values 
(13,'Vamshi','coldact','50','2019-06-06','2019-06-30');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `cnumber` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  `executive` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`email`,`address`,`cnumber`,`status`,`executive`) values 
(7,'Krishna','1234','hk.1000projects@gmail.com','Hyd','7978418005','Collected','Ramu'),
(8,'Moulali','1234','moulali.1000projects@gmail.com','Hyd','8541236547','pending',NULL),
(9,'Vamshi','1234','v@gmail.com','Hyd','7456321456','Collected','Ramu');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
