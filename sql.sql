/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.17 : Database - demo1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`demo1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `demo1`;

/*Table structure for table `team` */

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `team` */

insert  into `team`(`id`,`name`,`address`) values (1,'张三丰','武当山'),(2,'张三丰','武当山');

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `userpwd` varchar(50) DEFAULT NULL,
  `memo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

/*Data for the table `userinfo` */

insert  into `userinfo`(`userid`,`username`,`userpwd`,`memo`) values (28,'zhang0','9999990','beizhushuoming0'),(29,'zhang1','9999991','beizhushuoming1'),(30,'zhang2','9999992','beizhushuoming2'),(31,'zhang3','9999993','beizhushuoming3'),(32,'zhang4','9999994','beizhushuoming4'),(33,'zhang5','9999995','beizhushuoming5'),(34,'zhang6','9999996','beizhushuoming6'),(35,'zhang7','9999997','beizhushuoming7'),(36,'zhang8','9999998','beizhushuoming8'),(37,'zhang9','9999999','beizhushuoming9'),(38,'zhang10','99999910','beizhushuoming10'),(39,'zhang11','99999911','beizhushuoming11'),(40,'zhang12','99999912','beizhushuoming12'),(41,'zhang13','99999913','beizhushuoming13'),(42,'zhang14','99999914','beizhushuoming14'),(43,'zhang15','99999915','beizhushuoming15'),(44,'zhang16','99999916','beizhushuoming16'),(45,'zhang17','99999917','beizhushuoming17'),(46,'zhang18','99999918','beizhushuoming18'),(47,'zhang19','99999919','beizhushuoming19'),(48,'zhang20','99999920','beizhushuoming20'),(49,'zhang21','99999921','beizhushuoming21'),(50,'zhang22','99999922','beizhushuoming22'),(51,'zhang23','99999923','beizhushuoming23'),(52,'zhang24','99999924','beizhushuoming24'),(53,'zhang25','99999925','beizhushuoming25'),(54,'zhang26','99999926','beizhushuoming26'),(55,'zhang27','99999927','beizhushuoming27'),(56,'zhang28','99999928','beizhushuoming28'),(57,'zhang29','99999929','beizhushuoming29'),(58,'zhang30','99999930','beizhushuoming30'),(59,'zhang31','99999931','beizhushuoming31'),(60,'zhang32','99999932','beizhushuoming32'),(61,'zhang33','99999933','beizhushuoming33'),(62,'zhang34','99999934','beizhushuoming34'),(63,'zhang35','99999935','beizhushuoming35'),(64,'zhang36','99999936','beizhushuoming36'),(65,'zhang37','99999937','beizhushuoming37'),(66,'zhang38','99999938','beizhushuoming38'),(67,'zhang39','99999939','beizhushuoming39'),(68,'zhang40','99999940','beizhushuoming40'),(69,'zhang41','99999941','beizhushuoming41'),(70,'zhang42','99999942','beizhushuoming42'),(71,'zhang43','99999943','beizhushuoming43'),(72,'zhang44','99999944','beizhushuoming44'),(73,'zhang45','99999945','beizhushuoming45'),(74,'zhang46','99999946','beizhushuoming46'),(75,'zhang47','99999947','beizhushuoming47'),(76,'zhang48','99999948','beizhushuoming48'),(77,'zhang49','99999949','beizhushuoming49'),(78,'zhang0','9999990','beizhushuoming0'),(79,'zhang1','9999991','beizhushuoming1'),(80,'zhang2','9999992','beizhushuoming2'),(81,'zhang3','9999993','beizhushuoming3'),(82,'zhang4','9999994','beizhushuoming4'),(83,'zhang5','9999995','beizhushuoming5'),(84,'zhang6','9999996','beizhushuoming6'),(85,'zhang7','9999997','beizhushuoming7'),(86,'zhang8','9999998','beizhushuoming8'),(87,'zhang9','9999999','beizhushuoming9'),(88,'zhang10','99999910','beizhushuoming10'),(89,'zhang11','99999911','beizhushuoming11'),(90,'zhang12','99999912','beizhushuoming12'),(91,'zhang13','99999913','beizhushuoming13'),(92,'zhang14','99999914','beizhushuoming14'),(93,'zhang15','99999915','beizhushuoming15'),(94,'zhang16','99999916','beizhushuoming16'),(95,'zhang17','99999917','beizhushuoming17'),(96,'zhang18','99999918','beizhushuoming18'),(97,'zhang19','99999919','beizhushuoming19'),(98,'zhang20','99999920','beizhushuoming20'),(99,'zhang21','99999921','beizhushuoming21'),(100,'zhang22','99999922','beizhushuoming22'),(101,'zhang23','99999923','beizhushuoming23'),(102,'zhang24','99999924','beizhushuoming24'),(103,'zhang25','99999925','beizhushuoming25'),(104,'zhang26','99999926','beizhushuoming26'),(105,'zhang27','99999927','beizhushuoming27'),(106,'zhang28','99999928','beizhushuoming28'),(107,'zhang29','99999929','beizhushuoming29'),(108,'zhang30','99999930','beizhushuoming30'),(109,'zhang31','99999931','beizhushuoming31'),(110,'zhang32','99999932','beizhushuoming32'),(111,'zhang33','99999933','beizhushuoming33'),(112,'zhang34','99999934','beizhushuoming34'),(113,'zhang35','99999935','beizhushuoming35'),(114,'zhang36','99999936','beizhushuoming36'),(115,'zhang37','99999937','beizhushuoming37'),(116,'zhang38','99999938','beizhushuoming38'),(117,'zhang39','99999939','beizhushuoming39'),(118,'zhang40','99999940','beizhushuoming40'),(119,'zhang41','99999941','beizhushuoming41'),(120,'zhang42','99999942','beizhushuoming42'),(121,'zhang43','99999943','beizhushuoming43'),(122,'zhang44','99999944','beizhushuoming44'),(123,'zhang45','99999945','beizhushuoming45'),(124,'zhang46','99999946','beizhushuoming46'),(125,'zhang47','99999947','beizhushuoming47'),(126,'zhang48','99999948','beizhushuoming48'),(127,'zhang49','99999949','beizhushuoming49');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
