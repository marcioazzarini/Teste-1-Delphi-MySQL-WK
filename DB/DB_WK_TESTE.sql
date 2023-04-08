CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.5.27-log

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `ClienteId` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Cidade` varchar(100) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ClienteId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Marcio Azzarini','Sorocaba','SP'),(2,'Silmara Pezzoni','Buri','SP'),(3,'Silvia Pezzoni Azzarini','Araçoiaba da Serra','SP'),(4,'Miguel da Silva','Sorocaba','SP'),(5,'Miguel da Silva','Sorocaba','SP'),(6,'Lucas Bueno','Itapetininga','SP'),(7,'Antonio da Silva','São Paulo','SP'),(8,'Mario Cesar','Sorocaba','SP'),(9,'Daniel Pereira','Itapetininga','SP'),(10,'Luiz Augusto','Sorocaba','SP'),(11,'Maria das Graças','Barueri','SP'),(12,'Luiza Pereira','Florianópolis','SC'),(13,'Marcos Batista','Florianópolis','SC'),(14,'Anabela da Silva','Curitiba','PR'),(15,'Ailton dos Santos','Curitiba','PR'),(16,'Heloisa Santos','Rio de Janeiro','RJ'),(17,'Aparecida das Graças','Rio de Janeiro','RJ'),(18,'Patricia Souza','Sorocaba','SP'),(19,'Paloma Andrade','Salto','SP'),(20,'Juliana Silva','Sorocaba','SP'),(21,'Carla Beatriz','Belo Horizonte','MG'),(22,'Wilian Santos','Sorocaba','SP');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalhepedido`
--

DROP TABLE IF EXISTS `detalhepedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalhepedido` (
  `DetalhePedidoId` int(11) NOT NULL AUTO_INCREMENT,
  `NumPedido` int(11) NOT NULL,
  `ProdutoId` int(11) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `ValorUnitario` decimal(13,2) DEFAULT NULL,
  `ValorTotal` decimal(13,2) DEFAULT NULL,
  PRIMARY KEY (`DetalhePedidoId`),
  KEY `fk_DetalhePedido_Pedido1_idx` (`NumPedido`),
  KEY `fk_DetalhePedido_Produto1_idx` (`ProdutoId`),
  CONSTRAINT `fk_DetalhePedido_Pedido1` FOREIGN KEY (`NumPedido`) REFERENCES `pedido` (`NumPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_DetalhePedido_Produto1` FOREIGN KEY (`ProdutoId`) REFERENCES `produto` (`ProdutoId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalhepedido`
--

LOCK TABLES `detalhepedido` WRITE;
/*!40000 ALTER TABLE `detalhepedido` DISABLE KEYS */;
INSERT INTO `detalhepedido` VALUES (4,1,3,1,2.50,2.50),(5,1,7,1,12.99,12.99),(6,2,1,5,5.50,27.50),(7,2,14,2,20.99,41.98),(8,2,17,1,1.05,1.05),(9,2,1,2,5.50,11.00),(10,3,21,12,1.43,17.16),(11,4,1,1,5.50,5.50),(12,4,18,2,3.35,6.70);
/*!40000 ALTER TABLE `detalhepedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `NumPedido` int(11) NOT NULL,
  `DataEmissao` datetime NOT NULL,
  `ClienteId` int(11) NOT NULL,
  `ValorTotal` decimal(13,2) DEFAULT NULL,
  PRIMARY KEY (`NumPedido`),
  KEY `fk_Pedido_Cliente_idx` (`ClienteId`),
  CONSTRAINT `fk_Pedido_Cliente` FOREIGN KEY (`ClienteId`) REFERENCES `cliente` (`ClienteId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'0000-00-00 00:00:00',1,15.49),(2,'0000-00-00 00:00:00',3,81.53),(3,'0000-00-00 00:00:00',18,17.16),(4,'2023-04-07 19:56:37',9,12.20);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `ProdutoId` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(100) NOT NULL,
  `PrecoVenda` decimal(13,2) NOT NULL,
  PRIMARY KEY (`ProdutoId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Caneta Azul',5.50),(2,'Lápis Preto',1.20),(3,'Borracha',2.50),(4,'Régua',6.00),(5,'Esquadro',9.00),(6,'Transferidor',4.45),(7,'Caderno Grande',12.99),(8,'Caderno Pequeno',9.99),(9,'Pacote Folha A4',23.50),(10,'Tinta Guache Azul',1.00),(11,'Tinta Guache Vermelha',1.10),(12,'Tinta Guache Amarela',1.20),(13,'Tinta Guache Preta',1.30),(14,'Lápis de Cor 24 cores',20.99),(15,'Giz de Cera',8.99),(16,'Compasso',10.00),(17,'Papel de Seda',1.05),(18,'Cola Branca',3.35),(19,'Cola Bastão',4.45),(20,'Marca Texto',2.45),(21,'Papel Cartão',1.43),(22,'Cartolina',2.99),(23,'Pasta Organizadora',18.99),(24,'Fichário',14.99),(25,'Elástico',1.75);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-07 21:08:40
