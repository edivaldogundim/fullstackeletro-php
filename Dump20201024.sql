CREATE DATABASE  IF NOT EXISTS `fseletro` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fseletro`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: fseletro
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `idpedido` int(11) NOT NULL AUTO_INCREMENT,
  `idpedido_prod` int(11) NOT NULL,
  `cliente` varchar(60) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `produto` varchar(70) NOT NULL,
  `valor_unit` decimal(8,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor_total` decimal(8,2) NOT NULL,
  PRIMARY KEY (`idpedido`,`idpedido_prod`),
  KEY `fk_produto_pedido_idx` (`idpedido_prod`),
  CONSTRAINT `fk_produto_pedido` FOREIGN KEY (`idpedido_prod`) REFERENCES `produto` (`idproduto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,5,'José Ferreira','Av Augusta, n125 - São Paulo -SP','(11)94624-8127','fogao',519.70,2,1039.40),(2,2,'Maria Lurdes','Av Ipiranga, n347 - São Paulo - SP','(11)96281-8531','geladeira',1910.90,1,1910.90),(3,7,'Fernando Henrique','Rua Pedro Primeiro, n55 - Itapevi - SP','(11)92471-4857','microondas',464.53,3,1393.59),(4,9,'Julia Silva','Av Cruzeiro do Sul, n119 - Osasco - SP','(11)98471-2189','lavadora',1214.10,1,1214.10),(5,11,'João Victor','Rua Palmares, n152 - Barueri - SP','(11)92148-1924','lavaloucas',2799.90,2,2799.90);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `data_inclusao` datetime DEFAULT NULL,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idproduto`),
  UNIQUE KEY `imagem_UNIQUE` (`imagem`),
  KEY `ind_data_inclusao` (`data_inclusao`),
  KEY `ind_categoria` (`categoria`),
  KEY `ind_descricao` (`descricao`),
  KEY `ind_preco` (`preco`),
  KEY `ind_preco_final` (`precofinal`),
  KEY `ind_imagem` (`imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,NULL,'geladeira','Geladeira Brastemp BRM50N Frost Free Duplex 429 Litros',6389.00,5019.00,'imagens/geladeira-brastemp.png'),(2,NULL,'geladeira','Geladeira Consul CRM43HK Frost Free Duplex',2069.60,1910.90,'imagens/geladeira-consul.png'),(3,NULL,'geladeira','Geladeira/Refrigerador Electrolux 240L RE31 - Branco',2199.90,2069.00,'imagens/geladeira-eletrolux.jpg'),(4,NULL,'fogao','Fogão Electrolux 5 Bocas 76SAS',1209.99,1129.00,'imagens/fog%C3%A3o-eletrolux.jpg'),(5,NULL,'fogao','Fogão Brastemp 5 Bocas',609.90,519.70,'imagens/fogao-brastemp.jpg'),(6,NULL,'microondas','Micro-ondas Electrolux 31 Litros ME41X',580.00,409.88,'imagens/microondas-electrolux.jpg'),(7,NULL,'microondas','Micro-ondas Panasonic 32 Litros NN-ST654WRU',508.70,464.53,'imagens/microondas-panasonic.jpg'),(8,NULL,'microondas','Micro-ondas Philco 30 L Espelhado 220V - PME31',459.00,436.05,'imagens/microondas-philco.jpg'),(9,NULL,'lavadora','Lavadora de Roupas Turbo Electrolux LT12F, 12 Kg',1600.00,1214.10,'imagens/lavadora-de-roupas-electrolux.png'),(10,NULL,'lavadora','Lavadora de Roupas Consul CWB09AB, 9 Kg',2399.90,2179.90,'imagens/lavadora-de-roupas-consul.jpg'),(11,NULL,'lavaloucas','Lava-Louça Electrolux Inox com 10 Serviços',3500.00,2799.90,'imagens/lava-lou%C3%A7a-eletrolux.jpg'),(12,NULL,'lavaloucas','Lava-Louças de Piso Brastemp BLF08AS 5 Programas',1970.50,1730.61,'imagens/lava-lou%C3%A7a-brastemp.jpg');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-24 18:26:20
