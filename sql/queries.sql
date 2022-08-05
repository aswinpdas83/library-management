-- MySQL dump 10.13  Distrib 8.0.13, for macos10.14 (x86_64)
--
-- Host: localhost    Database: librarymanagement
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booktable`
--

DROP TABLE IF EXISTS `booktable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booktable` (
  `serial` int NOT NULL AUTO_INCREMENT,
  `isbn` varchar(10) NOT NULL,
  `bookname` varchar(30) NOT NULL,
  `author` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`serial`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktable`
--

LOCK TABLES `booktable` WRITE;
/*!40000 ALTER TABLE `booktable` DISABLE KEYS */;
INSERT INTO `booktable` VALUES (1,'isb12','Java1','csfs','asfaf',2019),(2,'isb13','java2','afaf','afaf',2020),(3,'isb14','java3','afaf','asasf',2010),(4,'isb12','java4','asfasf','asasf',2011),(5,'isb15','java5','aff','asasf',2012),(6,'isb12','Java1','csfs','asfaf',2019),(7,'isb13','java2','afaf','afaf',2020),(8,'isb14','java3','afaf','asasf',2010),(9,'isb12','java4','asfasf','asasf',2011),(10,'isb15','java5','aff','asasf',2012),(11,'isb12','Java1','csfs','asfaf',2019),(12,'isb13','java2','afaf','afaf',2020),(13,'isb14','java3','afaf','asasf',2010),(14,'isb12','java4','asfasf','asasf',2011),(15,'isb15','java5','aff','asasf',2012),(16,'isb16','java7','faf','afaf',2016),(17,'isb12','Java1','csfs','asfaf',2019),(18,'isb13','java2','afaf','afaf',2020),(19,'isb14','java3','afaf','asasf',2010),(20,'isb12','java4','asfasf','asasf',2011),(21,'isb15','java5','aff','asasf',2012),(22,'isb16','java7','faf','afaf',2016),(23,'isb12','Java1','csfs','asfaf',2019),(24,'isb13','java2','afaf','afaf',2020),(25,'isb14','java3','afaf','asasf',2010),(26,'isb12','java4','asfasf','asasf',2011),(27,'isb15','java5','aff','asasf',2012),(28,'isb16','java7','faf','afaf',2016),(29,'isb12','Java1','csfs','asfaf',2019),(30,'isb13','java2','afaf','afaf',2020),(31,'isb14','java3','afaf','asasf',2010),(32,'isb12','java4','asfasf','asasf',2011),(33,'isb15','java5','aff','asasf',2012),(34,'isb16','java7','faf','afaf',2016);
/*!40000 ALTER TABLE `booktable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carttable`
--

DROP TABLE IF EXISTS `carttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `carttable` (
  `cartid` int NOT NULL AUTO_INCREMENT,
  `cartdate` date NOT NULL,
  `userid` int NOT NULL,
  `isbn` varchar(10) NOT NULL,
  `bookname` varchar(30) NOT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB AUTO_INCREMENT=10127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carttable`
--

LOCK TABLES `carttable` WRITE;
/*!40000 ALTER TABLE `carttable` DISABLE KEYS */;
INSERT INTO `carttable` VALUES (10001,'2001-04-04',2222,'b2g2','java'),(10062,'2020-04-17',2356,'vdgr55','java 8.1'),(10063,'2020-04-17',2356,'dfdfs324','fsgsgs'),(10064,'2020-04-17',2356,'asdt','java 8.7'),(10065,'2020-04-17',2356,'12fsfs','sagg');
/*!40000 ALTER TABLE `carttable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reqtable`
--

DROP TABLE IF EXISTS `reqtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reqtable` (
  `reqid` varchar(36) NOT NULL,
  `serial` int DEFAULT NULL,
  `isbn` varchar(10) NOT NULL,
  `bookname` varchar(30) NOT NULL,
  `reqdate` date NOT NULL,
  `validfrom` date DEFAULT NULL,
  `validto` date DEFAULT NULL,
  `relatedreqid` varchar(36) NOT NULL,
  `status` varchar(10) NOT NULL,
  `paidfine` int DEFAULT NULL,
  `userid` int NOT NULL,
  `returndate` date DEFAULT NULL,
  PRIMARY KEY (`reqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reqtable`
--

LOCK TABLES `reqtable` WRITE;
/*!40000 ALTER TABLE `reqtable` DISABLE KEYS */;
INSERT INTO `reqtable` VALUES ('489b20b8-c8b6-43d4-919c-bf20c2efc363',5,'12fsfs','sagg','2020-04-25','2020-03-25','2020-05-10','a005817a-af7c-4c87-9a3e-7d237a48ef9f','renewed',0,2355,NULL),('580ff131-92c8-4a03-8d13-49cfbfd79cde',5,'12fsfs','sagg','2020-04-25','2020-03-25','2020-05-10','489b20b8-c8b6-43d4-919c-bf20c2efc363','returned',50,2355,'2020-03-01'),('a005817a-af7c-4c87-9a3e-7d237a48ef9f',5,'12fsfs','sagg','2020-04-25','2020-03-25','2020-05-10','a005817a-af7c-4c87-9a3e-7d237a48ef9f','returned',30,2355,'2020-04-27'),('b6b20808-4270-418e-985b-8811ea2ecfe6',7,'bdgdh','java 8.9','2020-04-25','2020-04-25','2020-05-10','b6b20808-4270-418e-985b-8811ea2ecfe6','retuned',20,2355,NULL),('c1af7511-b337-4619-ade2-781798fe1fb3',8,'drtdt4','java 13','2020-04-25','2020-04-25','2020-05-10','d2f8006c-d89c-4530-aea6-c81c37881a5c','returned',100,2355,'2020-02-10'),('d2f8006c-d89c-4530-aea6-c81c37881a5c',8,'drtdt4','java 13','2020-04-25','2020-04-01','2020-04-15','d2f8006c-d89c-4530-aea6-c81c37881a5c','renewed',50,2355,'2020-04-07'),('d5309223-3354-4cf2-a2f2-cea8f72b0b2d',4,'dfdfs324','fsgsgs','2020-04-25','2020-03-26','2020-05-11','d5309223-3354-4cf2-a2f2-cea8f72b0b2d','expired',0,2355,NULL),('d9adc645-3ee6-4803-b7a7-2ddcb9395c51',NULL,'asdt','java 8.7','2020-04-25',NULL,NULL,'d9adc645-3ee6-4803-b7a7-2ddcb9395c51','reqpending',0,2355,NULL),('e54f7e33-07aa-40e7-b28d-3603de1940bd',7,'bdgdh','java 8.9','2020-04-25','2020-04-25','2020-05-10','b6b20808-4270-418e-985b-8811ea2ecfe6','expired',0,2355,NULL),('f433f09c-e8ab-4c68-9985-892475ab6776',8,'drtdt4','java 13','2020-04-25','2020-04-25','2020-05-10','c1af7511-b337-4619-ade2-781798fe1fb3','returned',0,2355,NULL);
/*!40000 ALTER TABLE `reqtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settingstable`
--

DROP TABLE IF EXISTS `settingstable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `settingstable` (
  `settingkey` varchar(20) NOT NULL,
  `settingvalue` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settingstable`
--

LOCK TABLES `settingstable` WRITE;
/*!40000 ALTER TABLE `settingstable` DISABLE KEYS */;
INSERT INTO `settingstable` VALUES ('expdays','15'),('fine','5'),('expdays','15'),('fine','5'),('cartlimit','5'),('count','3'),('cartlimit','5'),('count','3');
/*!40000 ALTER TABLE `settingstable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `test` (
  `uname` varchar(20) NOT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES ('admin'),('admin1');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usertable` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `password` varchar(20) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3337 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertable`
--

LOCK TABLES `usertable` WRITE;
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
INSERT INTO `usertable` VALUES (1234,'admin','Aswin P','male','2001-03-04','pathiyarathu,kurathikad,thekkekara p.o mavelikkara','8078500479','aswinpdas83@gmail.com','admin'),(2350,'1992/03/02','avinsh','male','1992-03-02','jainivas','9876543212','avinash4@gamil.com','user'),(2353,'1992/03/02','avinsh','male','1992-03-02','aaadfwfa','9876543212','avinash@gamil.com','user'),(2354,'1992/03/02','avinsh','male','1992-03-02','aaadfwfa','9876543212','avinash@gamil.com','user'),(2355,'','avinsh','male','1992-03-02','aaadfwfa','9876543212','avinash@gamil.com','user'),(2356,'1234','avinsh','male','1992-03-02','aaadfwfa','9876543212','avinash@gamil.com','user'),(2357,'1992/03/02','avinsh','male','1992-03-02','aaadfwfa','9876543212','avinash@gamil.com','user'),(2358,'1992/03/02','avinsh','male','1992-03-02','aaadfwfa','9876543212','avinash@gamil.com','user'),(2359,'1992/03/02','avinsh','male','1992-03-02','aaadfwfa','9876543212','avinash@gamil.com','user'),(2360,'1234/09/08','sfavag','male','1234-09-08','sdfcvgc','9876543212','afgfx','user'),(2361,'1234/09/08','sfavag','male','1234-09-08','sdfcvgc','9876543212','afgfx','user'),(2362,'1234/09/08','sfavag','male','1234-09-08','sdfcvgc','9876543212','afgfx','user'),(2363,'1234/09/08','sfavag','male','1234-09-08','sdfcvgc','9876543212','afgfx','user'),(2365,'1234/09/08','sfavag','male','1234-09-08','sdfcvgc','9876543212','afgfx','user'),(2366,'1234/09/08','sfavag','male','1234-09-08','sdfcvgc','9876543212','afgfx','user'),(2367,'1234/09/08','sfavag','male','1234-09-08','sdfcvgc','9876543212','afgfx','user'),(2369,'1234/09/08','sfavag','male','1234-09-08','sdfcvgc','9876543212','afgfx','user'),(2370,'','gffzsgfzhw','male','1234-09-08','fergteg','9876543212','adfgrrgre','librarian'),(2371,'1234','eregreht','male','1231-09-07','cergergergq','9876543212','hgwfgdwfqdfw','librarian'),(2372,'1992/02/07','avinash','male','1992-02-07','asfsdsds','9876543212','acfsdvdvsvs','librarian'),(2373,'1992/07/23','avinash','male','1992-07-23','dfqhww','9876543212','afgfdgdfsgdsfgd','librarian'),(2374,'1992/08/03','avinasH','male','1992-08-03','csdccac','9876543212','ascsdsvsg','librarian'),(3333,'testuser','testuser','male','2001-04-03','dfdadgfgfda','8078500479','dtdrtrstrsts','user'),(3334,'2020-05-15','aswin','male','2020-05-15','sfsafas','757883','asfasfasfas','user'),(3335,'2020-05-15','','others','2020-05-15','','','','user'),(3336,'2020-05-15','aas','male','2020-05-15','','','','user');
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-17 20:08:25
