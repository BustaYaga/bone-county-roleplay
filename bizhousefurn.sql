CREATE DATABASE  IF NOT EXISTS `s50096_BCRP` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `s50096_BCRP`;


DROP TABLE IF EXISTS `bizzfurn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bizzfurn` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BID` int(11) NOT NULL,
  `Model` int(11) NOT NULL,
  `PosX` double NOT NULL,
  `PosY` double NOT NULL,
  `PosZ` double NOT NULL,
  `AngX` double NOT NULL,
  `AngY` double NOT NULL,
  `AngZ` double NOT NULL,
  `Interior` int(11) NOT NULL,
  `Locked` int(2) NOT NULL DEFAULT '0',
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bizzfurn`
--

LOCK TABLES `bizzfurn` WRITE;
/*!40000 ALTER TABLE `bizzfurn` DISABLE KEYS */;
/*!40000 ALTER TABLE `bizzfurn` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `housefurn`
--

DROP TABLE IF EXISTS `housefurn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `housefurn` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HID` int(11) NOT NULL,
  `Model` int(11) NOT NULL,
  `PosX` double NOT NULL,
  `PosY` double NOT NULL,
  `PosZ` double NOT NULL,
  `AngX` double NOT NULL,
  `AngY` double NOT NULL,
  `AngZ` double NOT NULL,
  `Interior` int(11) NOT NULL,
  `Locked` int(2) NOT NULL DEFAULT '0',
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `housefurn`
--

LOCK TABLES `housefurn` WRITE;
/*!40000 ALTER TABLE `housefurn` DISABLE KEYS */;
/*!40000 ALTER TABLE `housefurn` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses` (
  `ID` int(11) NOT NULL,
  `Xo` float NOT NULL,
  `Yo` float NOT NULL,
  `Zo` float NOT NULL,
  `Xi` float NOT NULL,
  `Yi` float NOT NULL,
  `Zi` float NOT NULL,
  `IntOut` int(11) NOT NULL  DEFAULT '0',
  `IntIn` int(11) NOT NULL  DEFAULT '1',
  `VwOut` int(11) NOT NULL  DEFAULT '0',
  `Owned` int(11) NOT NULL DEFAULT '0',
  `Owner` varchar(25) NOT NULL,
  `Value` int(11) NOT NULL DEFAULT '100000',
  `InvID1` int(11) NOT NULL DEFAULT '0',
  `InvQ1` int(11) NOT NULL DEFAULT '0',
  `InvE1` int(11) NOT NULL DEFAULT '0',
  `InvID2` int(11) NOT NULL DEFAULT '0',
  `InvQ2` int(11) NOT NULL DEFAULT '0',
  `InvE2` int(11) NOT NULL DEFAULT '0',
  `InvID3` int(11) NOT NULL DEFAULT '0',
  `InvQ3` int(11) NOT NULL DEFAULT '0',
  `InvE3` int(11) NOT NULL DEFAULT '0',
  `InvID4` int(11) NOT NULL DEFAULT '0',
  `InvQ4` int(11) NOT NULL DEFAULT '0',
  `InvE4` int(11) NOT NULL DEFAULT '0',
  `InvID5` int(11) NOT NULL DEFAULT '0',
  `InvQ5` int(11) NOT NULL DEFAULT '0',
  `InvE5` int(11) NOT NULL DEFAULT '0',
  `InvID6` int(11) NOT NULL DEFAULT '0',
  `InvQ6` int(11) NOT NULL DEFAULT '0',
  `InvE6` int(11) NOT NULL DEFAULT '0',
  `InvID7` int(11) NOT NULL DEFAULT '0',
  `InvQ7` int(11) NOT NULL DEFAULT '0',
  `InvE7` int(11) NOT NULL DEFAULT '0',
  `InvS1` int(11) NOT NULL DEFAULT '0',
  `InvS2` int(11) NOT NULL DEFAULT '0',
  `InvS3` int(11) NOT NULL DEFAULT '0',
  `InvS4` int(11) NOT NULL DEFAULT '0',
  `InvS5` int(11) NOT NULL DEFAULT '0',
  `InvS6` int(11) NOT NULL DEFAULT '0',
  `InvS7` int(11) NOT NULL DEFAULT '0',
  `Locked` int(11) NOT NULL DEFAULT '0',
  `Radio` int(11) NOT NULL DEFAULT '0',
  `TV` int(11) NOT NULL DEFAULT '0',
  `Class` int(11) NOT NULL DEFAULT '0',
  `gInterior` int(11) NOT NULL DEFAULT '0',
  `hgA` float NOT NULL DEFAULT '0',
  `RentFee` int(11) NOT NULL DEFAULT '0',
  `Basic` int(11) NOT NULL DEFAULT '0',
  `Insurance` int(11) NOT NULL DEFAULT '0',
  `LockLvl` int(11) NOT NULL DEFAULT '0',
  `Alarm` int(11) NOT NULL DEFAULT '0',
  `FurnR` varchar(25) NOT NULL DEFAULT '0',
  `Bank` int(11) NOT NULL DEFAULT '0',
  `BuyValue` int(11) NOT NULL DEFAULT '0',
  `InvCond1` int(11) NOT NULL DEFAULT '0',
  `InvCond2` int(11) NOT NULL DEFAULT '0',
  `InvCond3` int(11) NOT NULL DEFAULT '0',
  `InvCond4` int(11) NOT NULL DEFAULT '0',
  `InvCond5` int(11) NOT NULL DEFAULT '0',
  `InvCond6` int(11) NOT NULL DEFAULT '0',
  `InvCond7` int(11) NOT NULL DEFAULT '0',
  `Combo` int(5) NOT NULL DEFAULT '0',
  `sLocked` int(2) NOT NULL DEFAULT '0',
  `InvID8` int(6) NOT NULL DEFAULT '0',
  `InvQ8` int(6) NOT NULL DEFAULT '0',
  `InvE8` int(6) NOT NULL DEFAULT '0',
  `InvID9` int(6) NOT NULL DEFAULT '0',
  `InvQ9` int(6) NOT NULL DEFAULT '0',
  `InvE9` int(6) NOT NULL DEFAULT '0',
  `InvID10` int(6) NOT NULL DEFAULT '0',
  `InvQ10` int(6) NOT NULL DEFAULT '0',
  `InvE10` int(6) NOT NULL DEFAULT '0',
  `InvID11` int(6) NOT NULL DEFAULT '0',
  `InvQ11` int(6) NOT NULL DEFAULT '0',
  `InvE11` int(6) NOT NULL DEFAULT '0',
  `InvID12` int(6) NOT NULL DEFAULT '0',
  `InvQ12` int(6) NOT NULL DEFAULT '0',
  `InvE12` int(6) NOT NULL DEFAULT '0',
  `InvID13` int(6) NOT NULL DEFAULT '0',
  `InvQ13` int(6) NOT NULL DEFAULT '0',
  `InvE13` int(6) NOT NULL DEFAULT '0',
  `InvID14` int(6) NOT NULL DEFAULT '0',
  `InvQ14` int(6) NOT NULL DEFAULT '0',
  `InvE14` int(6) NOT NULL DEFAULT '0',
  `InvID15` int(6) NOT NULL DEFAULT '0',
  `InvQ15` int(6) NOT NULL DEFAULT '0',
  `InvE15` int(6) NOT NULL DEFAULT '0',
  `InvID16` int(6) NOT NULL DEFAULT '0',
  `InvQ16` int(6) NOT NULL DEFAULT '0',
  `InvE16` int(6) NOT NULL DEFAULT '0',
  `InvID17` int(6) NOT NULL DEFAULT '0',
  `InvQ17` int(6) NOT NULL DEFAULT '0',
  `InvE17` int(6) NOT NULL DEFAULT '0',
  `InvID18` int(6) NOT NULL DEFAULT '0',
  `InvQ18` int(6) NOT NULL DEFAULT '0',
  `InvE18` int(6) NOT NULL DEFAULT '0',
  `InvID19` int(6) NOT NULL DEFAULT '0',
  `InvQ19` int(6) NOT NULL DEFAULT '0',
  `InvE19` int(6) NOT NULL DEFAULT '0',
  `InvID20` int(6) NOT NULL DEFAULT '0',
  `InvQ20` int(6) NOT NULL DEFAULT '0',
  `InvE20` int(6) NOT NULL DEFAULT '0',
  `Materials` int(11) NOT NULL DEFAULT '0',
  `hgXo` float NOT NULL DEFAULT '0',
  `hgYo` float NOT NULL DEFAULT '0',
  `hgZo` float NOT NULL DEFAULT '0',
  `hgAo` float NOT NULL DEFAULT '0',
  `hgXi` float NOT NULL DEFAULT '0',
  `hgYi` float NOT NULL DEFAULT '0',
  `hgZi` float NOT NULL DEFAULT '0',
  `hgAi` float NOT NULL DEFAULT '0',
  `Garage` int(11) NOT NULL DEFAULT '0',
  `InvID0` int(11) NOT NULL DEFAULT '0',
  `InvQ0` int(11) NOT NULL DEFAULT '0',
  `InvE0` int(11) NOT NULL DEFAULT '0',
  `InvS0` int(11) NOT NULL DEFAULT '0',
  `InvS8` int(11) NOT NULL DEFAULT '0',
  `InvS9` int(11) NOT NULL DEFAULT '0',
  `InvS10` int(11) NOT NULL DEFAULT '0',
  `InvS11` int(11) NOT NULL DEFAULT '0',
  `InvS12` int(11) NOT NULL DEFAULT '0',
  `InvS13` int(11) NOT NULL DEFAULT '0',
  `InvS14` int(11) NOT NULL DEFAULT '0',
  `InvS15` int(11) NOT NULL DEFAULT '0',
  `InvS16` int(11) NOT NULL DEFAULT '0',
  `InvS17` int(11) NOT NULL DEFAULT '0',
  `InvS18` int(11) NOT NULL DEFAULT '0',
  `InvS19` int(11) NOT NULL DEFAULT '0',
  `InvS20` int(11) NOT NULL DEFAULT '0',
  `bdXo` float NOT NULL DEFAULT '0',
  `bdYo` float NOT NULL DEFAULT '0',
  `bdZo` float NOT NULL DEFAULT '0',
  `bdXi` float NOT NULL DEFAULT '0',
  `bdYi` float NOT NULL DEFAULT '0',
  `bdZi` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses`
--

LOCK TABLES `houses` WRITE;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interiors`
--