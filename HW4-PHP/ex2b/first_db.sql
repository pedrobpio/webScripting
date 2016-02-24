-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: first_db
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Table structure for table `Book`
--

DROP TABLE IF EXISTS `Book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Book` (
  `Title` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `PublishedYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Book`
--

LOCK TABLES `Book` WRITE;
/*!40000 ALTER TABLE `Book` DISABLE KEYS */;
INSERT INTO `Book` VALUES ('Harry Potter and the Sorcerers Stone','J. K. Rowling',1997),('Harry Potter and the Chamber of Secrets','J. K. Rowling',1998),('Harry Potter and the Prisoner of Azkaban','J. K. Rowling',1999),('Harry Potter and the Goblet of Fire','J. K. Rowling',2000),('Harry Potter and the Order of the Phoenix','J. K. Rowling',2003),('Harry Potter and the Half-Blood Prince','J. K. Rowling',2005),('Harry Potter and the Deathly Hallows','J. K. Rowling',2007),('The Girl with the Dragon Tattoo','Stieg Larsson',2005),('The Girl Who Played with Fire','Stieg Larsson',2006),('The Girl Who Kicked the Hornets Nest','Stieg Larsson',2007),('The Dark Tower: The Gunslinger','Stephen King',1982),('The Dark Tower II: The Drawing of the Three','Stephen King',1987),('The Dark Tower III: The Waste Lands','Stephen King',1991),('The Dark Tower IV: Wizard and Glass','Stephen King',1997),('The Dark Tower V: Wolves of the Calla','Stephen King',2003),('The Dark Tower VI: Song of Susannah','Stephen King',2004),('The Dark Tower VII: The Dark Tower','Stephen King',2004);
/*!40000 ALTER TABLE `Book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Game`
--

DROP TABLE IF EXISTS `Game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Game` (
  `Title` varchar(255) NOT NULL,
  `Producer` varchar(255) NOT NULL,
  `PublishedYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Game`
--

LOCK TABLES `Game` WRITE;
/*!40000 ALTER TABLE `Game` DISABLE KEYS */;
INSERT INTO `Game` VALUES ('Final Fantasy VII','Square',1997),('Final Fantasy VIII','Square',1999),('Final Fantasy IX','Square',2000),('Final Fantasy X','Square',2001),('Final Fantasy XII','Square-enix',2006),('Final Fantasy XIII','Square-enix',2009),('Crisis Core: Final Fantasy VII','Square-enix',2007),('Diablo','Blizzard Entertainment',1996),('Diablo II','Blizzard Entertainment',2000),('Diablo III','Blizzard Entertainment',2012),('Assassins Creed','Ubisoft',2007),('Assassins Creed II','Ubisoft',2009),('Assassins Creed III','Ubisoft',2012),('Assassins Creed IV','Ubisoft',2013),('Crash Bandicoot: Warped','Naughty Dog',1998),('Rocket League','Psyonix',2015);
/*!40000 ALTER TABLE `Game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Person`
--

DROP TABLE IF EXISTS `Person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person` (
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person`
--

LOCK TABLES `Person` WRITE;
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
INSERT INTO `Person` VALUES ('John','John@lost',40),('Jack','Jack@lost',35),('Hurley','Hurley@lost',30),('Sawyer','Sawyer@lost',35),('Kate','Kate@lost',33),('Charlie','Charlie@lost',25),('Claire','Claire@lost',25),('Ben','Ben@lost',40),('Desmond','Desmond@lost',34),('MrEko','MrEko@lost',31),('Sayid','Sayid@lost',37),('Cloud','Cloud@ff7',21),('Aries','Aries@ff7',22),('Zack','Zack@ff7',23),('Sephiroth','Sephiroth@ff7',25);
/*!40000 ALTER TABLE `Person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-16  3:01:08
