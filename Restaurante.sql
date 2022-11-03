-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: Restaurante
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `idCliente` int NOT NULL,
  `nomeCliente` varchar(100) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1,'Lucas'),(2,'Ana'),(3,'Agatha'),(4,'Raquel'),(5,'Bruno'),(6,'Renan'),(7,'Luiz'),(8,'Isabel'),(9,'Maria'),(10,'Alice'),(11,'Nicolas'),(12,'Leandro'),(13,'Rebeca'),(14,'Yuri'),(15,'Daniel'),(16,'Sarah'),(17,'Cauê'),(18,'Alice'),(19,'Cláudia'),(20,'André');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contém`
--

DROP TABLE IF EXISTS `Contém`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Contém` (
  `idItem` int NOT NULL,
  `idPedido` int NOT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`idItem`,`idPedido`),
  KEY `idPedido` (`idPedido`),
  CONSTRAINT `Contém_ibfk_1` FOREIGN KEY (`idItem`) REFERENCES `Itens_Consumo` (`idItem`),
  CONSTRAINT `Contém_ibfk_2` FOREIGN KEY (`idPedido`) REFERENCES `Pedidos` (`idPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contém`
--

LOCK TABLES `Contém` WRITE;
/*!40000 ALTER TABLE `Contém` DISABLE KEYS */;
INSERT INTO `Contém` VALUES (1,1,1),(1,5,1),(1,9,1),(1,25,1),(2,8,1),(3,15,1),(4,4,1),(4,21,2),(5,12,1),(6,10,1),(7,6,1),(7,17,1),(7,22,1),(8,1,1),(8,5,1),(8,14,1),(8,17,2),(9,7,1),(9,10,1),(9,18,1),(10,5,1),(10,12,2),(10,25,1),(11,4,1),(11,5,2),(11,11,1),(11,14,1),(11,18,1),(11,22,1),(12,3,2),(12,8,1),(12,9,3),(12,15,1),(12,20,3),(13,2,1),(13,13,2),(13,19,1),(13,23,1),(14,16,1),(15,7,1),(15,19,1),(16,2,1),(16,3,1),(16,4,1),(16,6,1),(16,7,2),(16,9,2),(16,10,1),(16,11,1),(16,12,2),(16,13,2),(16,14,1),(16,15,1),(16,16,1),(16,17,1),(16,18,2),(16,20,2),(16,23,1),(16,25,1),(17,1,1),(17,3,1),(17,9,1),(17,14,1),(17,19,1),(17,22,2),(17,24,1),(18,8,1),(18,21,1);
/*!40000 ALTER TABLE `Contém` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Itens_Consumo`
--

DROP TABLE IF EXISTS `Itens_Consumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Itens_Consumo` (
  `idItem` int NOT NULL,
  `nomeItem` varchar(30) NOT NULL,
  `precoUnit` decimal(4,2) NOT NULL,
  `categoria` varchar(10) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idItem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Itens_Consumo`
--

LOCK TABLES `Itens_Consumo` WRITE;
/*!40000 ALTER TABLE `Itens_Consumo` DISABLE KEYS */;
INSERT INTO `Itens_Consumo` VALUES (1,'Batata Frita',10.50,'Porção',NULL),(2,'Polenta Frita',12.00,'Porção',NULL),(3,'Calabresa Acebolada',11.00,'Porção',NULL),(4,'Contrafilé Acebolado',13.00,'Porção',NULL),(5,'Iscas de Frango',12.00,'Porção',NULL),(6,'Bolinho de Bacalhau',14.00,'Porção',NULL),(7,'Quibe',12.50,'Porção',NULL),(8,'Hamburguer',6.00,'Lanche',NULL),(9,'X-Salada',7.20,'Lanche',NULL),(10,'X-Bacon',8.40,'Lanche',NULL),(11,'X-Egg',8.40,'Lanche',NULL),(12,'X-Tudo',9.60,'Lanche',NULL),(13,'Pizza de Calabresa',16.00,'Pizza',NULL),(14,'Pizza 4 Queijos',17.50,'Pizza',NULL),(15,'Pizza Portuguesa',18.00,'Pizza',NULL),(16,'Coca-Cola',3.00,'Bebida',NULL),(17,'Guaraná',2.80,'Bebida',NULL),(18,'Pepsi',2.50,'Bebida',NULL);
/*!40000 ALTER TABLE `Itens_Consumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mesa`
--

DROP TABLE IF EXISTS `Mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mesa` (
  `idMesa` int NOT NULL,
  `NumeroMesa` int NOT NULL,
  PRIMARY KEY (`idMesa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mesa`
--

LOCK TABLES `Mesa` WRITE;
/*!40000 ALTER TABLE `Mesa` DISABLE KEYS */;
INSERT INTO `Mesa` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `Mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nota`
--

DROP TABLE IF EXISTS `Nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Nota` (
  `idPedido` int NOT NULL,
  `numeroNota` int NOT NULL,
  `dtPagamento` date NOT NULL,
  PRIMARY KEY (`numeroNota`,`dtPagamento`),
  UNIQUE KEY `idPedido_2` (`idPedido`),
  KEY `idPedido` (`idPedido`),
  CONSTRAINT `Nota_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `Pedidos` (`idPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nota`
--

LOCK TABLES `Nota` WRITE;
/*!40000 ALTER TABLE `Nota` DISABLE KEYS */;
INSERT INTO `Nota` VALUES (1,8508,'2016-02-17'),(2,1011,'2016-04-02'),(3,9421,'2016-07-27'),(4,6217,'2016-11-13'),(5,7113,'2017-03-01'),(6,8041,'2017-08-29'),(7,4615,'2018-06-16'),(8,1548,'2018-07-24'),(9,1574,'2018-07-30'),(10,6066,'2019-02-05'),(11,2800,'2019-05-22'),(12,9959,'2019-05-23'),(13,4666,'2019-06-12'),(14,5102,'2019-10-10'),(15,6549,'2019-12-17'),(16,5057,'2019-12-28'),(17,8339,'2021-01-14'),(18,7476,'2021-01-20'),(19,9327,'2021-02-08'),(20,2003,'2021-03-12'),(21,9580,'2021-03-16'),(22,3497,'2021-05-27'),(23,8916,'2021-05-30'),(24,4499,'2021-06-05'),(25,4233,'2021-06-14');
/*!40000 ALTER TABLE `Nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pedidos`
--

DROP TABLE IF EXISTS `Pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pedidos` (
  `idPedido` int NOT NULL AUTO_INCREMENT,
  `dtPedido` date NOT NULL,
  `motivoCancel` varchar(100) DEFAULT NULL,
  `situacao` varchar(100) NOT NULL,
  `idMesa` int NOT NULL,
  `idCliente` int NOT NULL,
  PRIMARY KEY (`idPedido`),
  KEY `idMesa` (`idMesa`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `Pedidos_ibfk_1` FOREIGN KEY (`idMesa`) REFERENCES `Mesa` (`idMesa`),
  CONSTRAINT `Pedidos_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `Cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pedidos`
--

LOCK TABLES `Pedidos` WRITE;
/*!40000 ALTER TABLE `Pedidos` DISABLE KEYS */;
INSERT INTO `Pedidos` VALUES (1,'2016-02-17',NULL,'Completo',4,20),(2,'2016-04-02',NULL,'Completo',2,5),(3,'2016-07-27',NULL,'Completo',4,2),(4,'2016-11-13',NULL,'Completo',4,15),(5,'2017-03-01',NULL,'Completo',1,16),(6,'2017-08-29',NULL,'Completo',4,6),(7,'2018-06-16',NULL,'Completo',1,13),(8,'2018-07-24',NULL,'Completo',4,12),(9,'2018-07-30',NULL,'Completo',4,10),(10,'2019-02-05',NULL,'Completo',3,18),(11,'2019-05-22',NULL,'Completo',4,4),(12,'2019-05-23',NULL,'Completo',3,14),(13,'2019-06-12',NULL,'Completo',2,3),(14,'2019-10-10',NULL,'Completo',4,7),(15,'2019-12-17',NULL,'Completo',3,17),(16,'2019-12-28',NULL,'Completo',1,1),(17,'2021-01-14',NULL,'Completo',4,11),(18,'2021-01-20',NULL,'Completo',3,8),(19,'2021-02-08',NULL,'Completo',2,9),(20,'2021-03-12',NULL,'Completo',2,19),(21,'2021-03-16',NULL,'Completo',4,9),(22,'2021-05-27',NULL,'Completo',2,5),(23,'2021-05-30',NULL,'Completo',3,13),(24,'2021-06-14',NULL,'Completo',3,6),(25,'2021-06-05',NULL,'Completo',4,19);
/*!40000 ALTER TABLE `Pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Telefone_Cliente`
--

DROP TABLE IF EXISTS `Telefone_Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Telefone_Cliente` (
  `idCliente` int NOT NULL,
  `telefone` char(15) NOT NULL,
  PRIMARY KEY (`idCliente`,`telefone`),
  CONSTRAINT `Telefone_Cliente_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `Cliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Telefone_Cliente`
--

LOCK TABLES `Telefone_Cliente` WRITE;
/*!40000 ALTER TABLE `Telefone_Cliente` DISABLE KEYS */;
INSERT INTO `Telefone_Cliente` VALUES (1,'(21) 91477-5462'),(1,'(21) 92211-7099'),(2,'(21) 92594-8636'),(3,'(21) 94112-9300'),(3,'(21) 95165-1723'),(3,'(21) 97252-4483'),(4,'(21) 94116-7114'),(5,'(21) 93184-9484'),(6,'(21) 98744-4966'),(7,'(21) 90228-1689'),(7,'(21) 94285-2139'),(8,'(21) 96437-6733'),(9,'(21) 95813-8380'),(9,'(21) 97188-1608'),(10,'(21) 91686-2794'),(11,'(21) 93716-4481'),(12,'(21) 95325-7372'),(13,'(21) 93956-8957'),(14,'(21) 94933-5363'),(15,'(21) 90318-7485'),(15,'(21) 91871-9626'),(15,'(21) 94111-8639'),(16,'(21) 93447-4376'),(17,'(21) 93227-8908'),(18,'(21) 92404-1482'),(19,'(21) 95175-0819'),(19,'(21) 97753-2169'),(20,'(21) 98647-8915');
/*!40000 ALTER TABLE `Telefone_Cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-02 21:46:11
