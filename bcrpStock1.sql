CREATE DATABASE  IF NOT EXISTS `s50096_BCRP` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `s50096_BCRP`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: 2rrp
-- ------------------------------------------------------
-- Server version	5.6.24-log

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

DROP TABLE IF EXISTS `garages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garages` (
  `ID` int(11) NOT NULL,
  `Owned` int(11) NOT NULL,
  `OwnerID` int(11) NOT NULL,
  `OwnerName` varchar(25) NOT NULL,
  `Type` int(11) NOT NULL,
  `Xcor` float NOT NULL,
  `Ycor` float NOT NULL,
  `Zcor` float NOT NULL,
  `VirtualWorld` int(11) NOT NULL,
  `IntID` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Locked` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garages`
--

LOCK TABLES `garages` WRITE;
/*!40000 ALTER TABLE `garages` DISABLE KEYS */;
/*!40000 ALTER TABLE `garages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gates`
--

DROP TABLE IF EXISTS `gates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gates` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Model` int(6) NOT NULL DEFAULT '0',
  `cPosX` double NOT NULL,
  `cPosY` double NOT NULL,
  `cPosZ` double NOT NULL,
  `cPosRX` double NOT NULL,
  `cPosRY` double NOT NULL,
  `cPosRZ` double NOT NULL,
  `oPosX` double NOT NULL,
  `oPosY` double NOT NULL,
  `oPosZ` double NOT NULL,
  `oPosRX` double NOT NULL,
  `oPosRY` double NOT NULL,
  `oPosRZ` double NOT NULL,
  `VW` int(11) NOT NULL,
  `Int` int(11) NOT NULL,
  `Password` varchar(21) NOT NULL,
  `Member` int(3) NOT NULL DEFAULT '0',
  `Rank` int(3) NOT NULL DEFAULT '0',
  `oSound` int(11) NOT NULL DEFAULT '0',
  `cSound` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gates`
--

LOCK TABLES `gates` WRITE;
/*!40000 ALTER TABLE `gates` DISABLE KEYS */;
INSERT INTO `gates` VALUES (1,987,2056.55,-2072.05,12.5583,-1,-0.3,86.9,2056.66,-2072.02,6.28935,-1,-0.3,86.9,0,0,'',1,0,6400,6400),(2,1500,2587.9,-1496.65,-50.0122,-0.099999,0.2,0,2587.9,-1496.65,-50.0122,-0.099999,0.2,-98.8,1,1,'',1,0,6400,6400),(3,1500,2594.43,-1487.19,-49.96,0.9,-1,-0.5,2594.43,-1487.19,-49.96,0.9,-1,-107.4,1,1,'',1,0,6400,6400),(4,1500,2577.49,-1484.8,-49.9389,0.299999,-1,-89.8,2577.49,-1484.8,-49.9389,0.299999,-1,176.6,1,1,'1234',1,0,6400,6400),(6,1500,2573.45,-1532.14,-49.9065,-0.199999,0.299999,-180,2573.45,-1532.14,-49.9065,-0.199999,0.299999,84.6001,1,1,'',1,0,1100,1101),(7,987,2113.99,-2100.28,12.4113,-1,-1,-9.90001,2114.08,-2100.4,6.13319,-1,-1,-9.90001,0,0,'2811',1,0,0,0),(10,19302,2589.03,-1502.52,-48.6827,-0.3,-1,91.2999,2589.07,-1504.17,-48.7114,-0.3,-1,91.2999,1,1,'',0,0,0,0),(20,977,2263.29,-1076.11,1049.01,-1,-1,101.1,2263.29,-1076.11,1049.01,-1,-1,11,408,1,'',0,0,0,0);
/*!40000 ALTER TABLE `gates` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `mapfurn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapfurn` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Owner` varchar(25) NOT NULL,
  `Model` int(11) NOT NULL,
  `PosX` double NOT NULL,
  `PosY` double NOT NULL,
  `PosZ` double NOT NULL,
  `AngX` double NOT NULL,
  `AngY` double NOT NULL,
  `AngZ` double NOT NULL,
  `Interior` int(11) NOT NULL,
  `VW` int(11) NOT NULL,
  `Locked` int(2) NOT NULL,
  `Layer0` int(2) NOT NULL,
  `Layer1` int(2) NOT NULL,
  `Layer2` int(2) NOT NULL,
  `Layer3` int(2) NOT NULL,
  `Layer4` int(2) NOT NULL,
  `Layer5` int(2) NOT NULL,
  `Layer6` int(2) NOT NULL,
  `Layer7` int(2) NOT NULL,
  `Layer8` int(2) NOT NULL,
  `Layer9` int(2) NOT NULL,
  `Layer10` int(2) NOT NULL,
  `Layer11` int(2) NOT NULL,
  `Layer12` int(2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapfurn`
--

LOCK TABLES `mapfurn` WRITE;
/*!40000 ALTER TABLE `mapfurn` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapfurn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toys`
--

DROP TABLE IF EXISTS `toys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toys` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerName` varchar(30) NOT NULL,
  `modelid` int(11) NOT NULL,
  `bone` int(11) NOT NULL,
  `OffSetX` double NOT NULL DEFAULT '0',
  `OffSetY` double NOT NULL DEFAULT '0',
  `OffSetZ` double NOT NULL DEFAULT '0',
  `RotX` double NOT NULL DEFAULT '0',
  `RotY` double NOT NULL DEFAULT '0',
  `RotZ` double NOT NULL DEFAULT '0',
  `ScaleX` double NOT NULL DEFAULT '0',
  `ScaleY` double NOT NULL DEFAULT '0',
  `ScaleZ` double NOT NULL DEFAULT '0',
  `indexID` int(11) NOT NULL DEFAULT '0',
  `Color` int(3) NOT NULL DEFAULT '0',
  `Color2` int(3) NOT NULL DEFAULT '0',
  `Equipped` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toys`
--

LOCK TABLES `toys` WRITE;
/*!40000 ALTER TABLE `toys` DISABLE KEYS */;
/*!40000 ALTER TABLE `toys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiclefurn`
--

DROP TABLE IF EXISTS `vehiclefurn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehiclefurn` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VID` int(11) NOT NULL,
  `Model` int(11) NOT NULL,
  `PosX` double NOT NULL,
  `PosY` double NOT NULL,
  `PosZ` double NOT NULL,
  `AngX` double NOT NULL,
  `AngY` double NOT NULL,
  `AngZ` double NOT NULL,
  `Indoor` int(2) NOT NULL,
  `Layer0` int(2) NOT NULL DEFAULT '0',
  `Layer1` int(2) NOT NULL DEFAULT '0',
  `Layer2` int(2) NOT NULL DEFAULT '0',
  `Layer3` int(2) NOT NULL DEFAULT '0',
  `Layer4` int(2) NOT NULL DEFAULT '0',
  `Layer5` int(2) NOT NULL DEFAULT '0',
  `Layer6` int(2) NOT NULL DEFAULT '0',
  `Layer7` int(2) NOT NULL DEFAULT '0',
  `Layer8` int(2) NOT NULL DEFAULT '0',
  `Layer9` int(2) NOT NULL DEFAULT '0',
  `Layer10` int(2) NOT NULL DEFAULT '0',
  `Layer11` int(2) NOT NULL DEFAULT '0',
  `Layer12` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiclefurn`
--

LOCK TABLES `vehiclefurn` WRITE;
/*!40000 ALTER TABLE `vehiclefurn` DISABLE KEYS */;
INSERT INTO `vehiclefurn` VALUES (1,498,18652,0.676,-0.212,-1.544,7,0.5,-5.244,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,498,1138,-1.205,1.178,-0.224,0,0,87.797,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,501,3077,-1501.45,2512.72,3207.65,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `vehiclefurn` ENABLE KEYS */;
UNLOCK TABLES;
