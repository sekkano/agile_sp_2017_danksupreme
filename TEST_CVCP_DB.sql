-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: chippewavalleycarpool
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `UserID_FK_Users` int(11) NOT NULL,
  `LocationID_FK_Locations` int(11) NOT NULL,
  `DateTime` datetime DEFAULT NULL,
  KEY `UserID_idx` (`UserID_FK_Users`),
  KEY `LocationID_idx` (`LocationID_FK_Locations`),
  CONSTRAINT `LocationID_FK_Locations` FOREIGN KEY (`LocationID_FK_Locations`) REFERENCES `locations` (`LocationID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `UserID_FK_Users` FOREIGN KEY (`UserID_FK_Users`) REFERENCES `users` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,1,'2017-10-04 00:00:00'),(3,2,'2017-10-04 00:00:00');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `LocationID` int(11) NOT NULL AUTO_INCREMENT,
  `AddressPickUp` text,
  `AddressDropOff` text,
  `EventName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`LocationID`),
  UNIQUE KEY `LocationID_UNIQUE` (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'213 Trope Dr','112 Event Dr','Phone Event'),(2,'567 Meme St','785 End St','Meme Event');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `SettingsID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) DEFAULT NULL,
  `Smoking` tinyint(4) DEFAULT NULL,
  `QuantityOfPassengers` int(11) DEFAULT NULL,
  `IsDriving` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SettingsID`),
  UNIQUE KEY `SettingsID_UNIQUE` (`SettingsID`),
  KEY `UserID_idx` (`UserID`),
  CONSTRAINT `UserID` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,1,0,4,1),(2,2,1,2,0),(3,3,1,8,1),(4,4,0,16,0),(5,5,0,1,1);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `UserName` varchar(25) DEFAULT NULL,
  `Address` text,
  `City` text,
  `StateCode` varchar(2) DEFAULT NULL,
  `PhoneNumber` varchar(12) DEFAULT NULL,
  `EmailAddress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `userID_UNIQUE` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Corey','Leavitt','cleavitt1','1234 Sesame St','Eau Claire','WI','715-684-1010','cleavitt1@student.cvtc.edu'),(2,'Mike','Van Dyke','mVanDyke','777 Lucky St','Eau Claire','WI','715-832-8392','mVanDyke@student.cvtc.edu'),(3,'Tony','Xiong','tXiong','291 Mouse St','Eau Claire','WI','715-921-3291','tXiong@student.cvtc.edu'),(4,'Drew','Klick','dKlick','392 Phone St.','Eau Claire','WI','715-875-0291','dKlick@student.cvtc.edu'),(5,'Mandy','Wagner','mWagner','493 Cord St','Eau Claire','WI','715-489-9182','mWagner@student.cvtc.edu');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-06 20:57:19
