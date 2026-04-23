-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: imperialmotors
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `idBitacora` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `idUsuario` int NOT NULL,
  `usuarioNombre` varchar(100) DEFAULT NULL,
  `accion` varchar(255) NOT NULL,
  PRIMARY KEY (`idBitacora`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (1,'2025-11-23 23:26:25',7,'Admin','Venta Registrada - Folio: 2 - Total: 350000.0'),(6,'2025-11-30 16:35:53',0,'admin@ejemplo','Intento de inicio de sesión fallido'),(7,'2025-11-30 16:35:59',0,'admin@ejemplo','Intento de inicio de sesión fallido'),(8,'2025-11-30 16:36:12',0,'admin@ejemplo','Bloqueo de cuenta por exceso de intentos'),(9,'2025-11-30 16:36:12',0,'admin@ejemplo','Intento de inicio de sesión fallido'),(10,'2025-11-30 16:36:19',7,'Admin','Inicio de sesión exitoso'),(11,'2025-11-30 16:36:23',7,'Admin','Consulta de Reportes/Bitácora'),(12,'2025-11-30 18:39:42',7,'Admin','Inicio de sesión exitoso'),(13,'2025-11-30 18:39:45',7,'Admin','Consulta de Reportes/Bitácora'),(14,'2025-11-30 18:40:08',7,'Admin','Generó vista previa de reporte: Ventas Mensuales'),(15,'2025-11-30 18:40:13',7,'Admin','Generó vista previa de reporte: Inventario'),(16,'2025-11-30 18:40:17',7,'Admin','Generó vista previa de reporte: KPIs y Anomalías'),(17,'2025-11-30 18:41:22',7,'Admin','Exportó PDF: Ventas Mensuales'),(18,'2025-11-30 19:00:30',7,'Admin','Inicio de sesión exitoso'),(19,'2025-11-30 19:00:42',7,'Admin','Consulta de Reportes/Bitácora'),(20,'2025-11-30 19:01:04',7,'Admin','Generó vista previa: Ventas por Día'),(21,'2025-11-30 19:01:10',7,'Admin','Generó vista previa: Ventas del Mes'),(22,'2025-11-30 19:01:13',7,'Admin','Generó vista previa: Ventas por Semana'),(23,'2025-11-30 19:01:18',7,'Admin','Generó vista previa: Inventario Actual'),(24,'2025-11-30 19:01:26',7,'Admin','Generó vista previa: KPIs y Anomalías'),(25,'2025-11-30 19:01:31',7,'Admin','Generó vista previa: KPIs y Anomalías'),(26,'2025-11-30 19:01:33',7,'Admin','Generó vista previa: KPIs y Anomalías'),(27,'2025-11-30 19:01:52',7,'Admin','Exportó PDF: KPIs y Anomalías'),(28,'2025-11-30 19:01:57',7,'Admin','Generó vista previa: Ventas del Mes'),(29,'2025-11-30 19:02:04',7,'Admin','Exportó PDF: Ventas del Mes'),(30,'2025-11-30 19:04:21',7,'Admin','Consulta de Reportes/Bitácora'),(31,'2025-11-30 19:29:27',0,'admin@ejemplo.com','Intento de inicio de sesión fallido'),(32,'2025-11-30 19:29:38',7,'Admin','Inicio de sesión exitoso'),(33,'2025-11-30 19:29:46',7,'Admin','Consulta de Reportes/Bitácora'),(34,'2025-11-30 20:00:48',7,'Admin','Inicio de sesión exitoso'),(35,'2025-11-30 20:54:32',7,'Admin','Inicio de sesión exitoso'),(36,'2025-11-30 21:27:57',7,'Admin','Inicio de sesión exitoso'),(37,'2025-11-30 21:28:02',7,'Admin','Consulta de Reportes/Bitácora'),(38,'2025-11-30 21:28:21',7,'Admin','Generó vista previa: Ventas del Mes'),(39,'2025-11-30 21:28:24',7,'Admin','Consulta de Reportes/Bitácora'),(40,'2025-11-30 21:28:44',7,'Admin','Exportó PDF: Ventas del Mes'),(41,'2025-11-30 21:28:49',7,'Admin','Consulta de Reportes/Bitácora'),(42,'2025-11-30 21:59:02',7,'Admin','Inicio de sesión exitoso'),(43,'2025-11-30 21:59:07',7,'Admin','Consulta de Reportes/Bitácora'),(44,'2025-11-30 21:59:21',7,'Admin','Edición de proveedor: Mustang'),(45,'2025-11-30 21:59:50',7,'Admin','Edición de proveedor: Ferrari'),(46,'2025-11-30 22:00:10',7,'Admin','Edición de proveedor: Chevi'),(47,'2025-11-30 22:00:21',7,'Admin','Edición de proveedor: Mustang'),(48,'2025-11-30 22:01:12',7,'Admin','Registro de nuevo proveedor: Hyundai'),(49,'2025-11-30 22:06:25',7,'Admin','Edición de cliente: Martin Bolaños Cobos'),(50,'2025-11-30 22:06:53',7,'Admin','Edición de cliente: Martin Bolaños Cobos'),(51,'2025-11-30 22:42:33',7,'Admin','Inicio de sesión exitoso'),(52,'2025-11-30 22:42:42',7,'Admin','Exportó PDF (Tabla): Inventario Vehicular'),(53,'2025-12-12 00:22:12',7,'Admin','Inicio de sesión exitoso'),(54,'2025-12-12 00:23:15',7,'Admin','Consulta de Reportes/Bitácora'),(55,'2025-12-12 00:23:21',7,'Admin','Consulta de Reportes/Bitácora'),(56,'2025-12-12 00:30:25',7,'Admin','Inicio de sesión exitoso'),(57,'2025-12-12 00:46:13',7,'Admin','Inicio de sesión exitoso'),(58,'2025-12-12 01:48:02',0,'<p th:utext=\"\'Hello, \' + ${name} + \'!\'\" />','Intento de inicio de sesión fallido'),(59,'2025-12-12 01:48:05',0,'<p th:utext=\"\'Hello, \' + ${name} + \'!\'\" />','Intento de inicio de sesión fallido'),(60,'2025-12-12 02:13:20',7,'Admin','Inicio de sesión exitoso'),(61,'2025-12-12 02:17:10',7,'Admin','Inicio de sesión exitoso'),(62,'2025-12-12 02:19:11',7,'Admin','Inicio de sesión exitoso'),(63,'2025-12-12 02:20:13',7,'Admin','Inicio de sesión exitoso'),(64,'2025-12-12 02:21:10',7,'Admin','Venta Registrada - Folio: 3 - Total: 2600000.0'),(65,'2025-12-12 02:35:09',7,'Admin','Inicio de sesión exitoso'),(66,'2025-12-12 02:39:33',7,'Admin','Venta Registrada - Folio: 4 - Total: 1240000.0'),(67,'2025-12-12 02:39:49',7,'Admin','Generó vista previa: KPIs y Anomalías'),(68,'2025-12-12 02:39:52',7,'Admin','Generó vista previa: Ventas del Mes'),(69,'2025-12-12 02:53:34',7,'Admin','Inicio de sesión exitoso'),(70,'2025-12-12 04:16:27',7,'Admin','Inicio de sesión exitoso'),(71,'2025-12-12 04:40:51',7,'Admin','Inicio de sesión exitoso'),(72,'2025-12-12 04:44:01',7,'Admin','Inicio de sesión exitoso'),(73,'2025-12-12 04:51:41',7,'Admin','Inicio de sesión exitoso'),(74,'2025-12-12 05:06:30',7,'Admin','Inicio de sesión exitoso'),(75,'2025-12-12 05:54:10',7,'Admin','Inicio de sesión exitoso'),(76,'2025-12-12 06:06:57',0,'admin','Intento de inicio de sesión fallido'),(77,'2025-12-12 06:07:05',0,'admin','Intento de inicio de sesión fallido'),(78,'2025-12-12 06:07:07',0,'admin','Intento de inicio de sesión fallido'),(79,'2025-12-12 06:07:07',0,'admin','Bloqueo de cuenta por exceso de intentos'),(80,'2025-12-12 06:07:17',7,'Admin','Inicio de sesión exitoso'),(81,'2025-12-12 06:07:44',7,'Admin','Edición de usuario: admin@ejemplo.com'),(82,'2025-12-12 06:09:18',7,'Roberto','Inicio de sesión exitoso'),(83,'2025-12-12 06:09:51',7,'Roberto','Generó vista previa: Ventas por Semana'),(84,'2025-12-12 06:09:54',7,'Roberto','Generó vista previa: Ventas del Mes'),(85,'2025-12-12 06:09:55',7,'Roberto','Consulta de Reportes/Bitácora'),(86,'2025-12-12 06:38:11',7,'Roberto','Inicio de sesión exitoso'),(87,'2025-12-12 06:40:28',8,'vendedor','Inicio de sesión exitoso'),(88,'2025-12-12 06:40:35',8,'vendedor','Generó vista previa: Ventas del Mes'),(89,'2025-12-12 06:40:41',8,'vendedor','Generó vista previa: Ventas por Día'),(90,'2025-12-12 06:40:46',8,'vendedor','Generó vista previa: Inventario Actual'),(91,'2025-12-12 06:42:00',8,'vendedor','Generó vista previa: Ventas por Semana'),(92,'2025-12-12 06:42:08',8,'vendedor','Exportó PDF: Ventas por Semana'),(93,'2025-12-12 07:00:47',8,'vendedor','Inicio de sesión exitoso'),(94,'2025-12-12 07:01:27',8,'vendedor','Inicio de sesión exitoso'),(95,'2025-12-12 07:01:44',8,'vendedor','Venta Registrada - Folio: 5 - Total: 380000.0'),(96,'2025-12-12 07:03:34',8,'vendedor','Generó vista previa: Ventas por Semana'),(97,'2025-12-12 07:13:37',8,'vendedor','Inicio de sesión exitoso'),(98,'2025-12-12 07:13:44',8,'vendedor','Generó vista previa: Ventas por Semana'),(99,'2025-12-12 07:13:47',8,'vendedor','Generó vista previa: Ventas por Semana'),(100,'2025-12-12 07:13:49',8,'vendedor','Generó vista previa: Ventas del Mes'),(101,'2025-12-12 07:13:51',8,'vendedor','Generó vista previa: Inventario Actual'),(102,'2025-12-12 07:13:54',8,'vendedor','Generó vista previa: KPIs y Anomalías'),(103,'2025-12-12 07:14:09',8,'vendedor','Exportó PDF: KPIs y Anomalías'),(104,'2025-12-12 07:17:03',7,'Roberto','Inicio de sesión exitoso'),(105,'2025-12-12 07:55:47',0,'admin@ejemplo.com','Intento de inicio de sesión fallido'),(106,'2025-12-12 07:55:49',7,'Roberto','Inicio de sesión exitoso'),(107,'2025-12-12 07:56:02',7,'Roberto','Edición de proveedor: Mustang'),(108,'2025-12-12 08:23:34',7,'Roberto','Inicio de sesión exitoso'),(109,'2025-12-12 08:35:42',7,'Roberto','Inicio de sesión exitoso'),(110,'2025-12-12 08:50:07',7,'Roberto','Inicio de sesión exitoso'),(111,'2025-12-12 08:53:37',7,'Roberto','Inicio de sesión exitoso'),(112,'2025-12-12 08:54:38',7,'Roberto','Generó vista previa: Ventas por Día'),(113,'2025-12-12 08:54:42',7,'Roberto','Consulta de Reportes/Bitácora'),(114,'2025-12-12 09:00:38',0,'admin@ejemplo.com','Intento de inicio de sesión fallido'),(115,'2025-12-12 09:00:44',7,'Roberto','Inicio de sesión exitoso'),(116,'2025-12-12 09:01:42',7,'Roberto','Registro de nuevo usuario: jaime@imperialmotors.com'),(117,'2025-12-12 09:05:55',7,'Roberto','Inicio de sesión exitoso'),(118,'2025-12-12 09:08:06',7,'Roberto','Inicio de sesión exitoso'),(119,'2025-12-12 09:08:38',7,'Roberto','Inicio de sesión exitoso'),(120,'2025-12-12 09:09:28',7,'Roberto','Registro de nuevo usuario: marcos@imperialmotors.com'),(121,'2025-12-12 09:12:50',7,'Roberto','Inicio de sesión exitoso'),(122,'2025-12-12 09:13:23',10,'Marcos Zenón','Inicio de sesión exitoso'),(123,'2025-12-12 09:13:54',10,'Marcos Zenón','Registro de nuevo usuario: jorge@imperialmotors.com'),(124,'2025-12-12 09:14:20',10,'Marcos Zenón','Edición de usuario: jorge@imperialmotors.com'),(125,'2025-12-12 09:14:42',10,'Marcos Zenón','Edición de usuario: jorge@imperialmotors.com'),(126,'2025-12-12 09:15:50',10,'Marcos Zenón','Registró vehículo: 4Y1SL65848Z411439'),(127,'2025-12-12 09:34:44',10,'Marcos Zenón','Inicio de sesión exitoso'),(128,'2025-12-12 09:36:20',10,'Marcos Zenón','Inicio de sesión exitoso'),(129,'2025-12-12 09:57:07',0,'marcos@iperialmotors.com','Intento de inicio de sesión fallido'),(130,'2025-12-12 09:57:16',10,'Marcos Zenón','Inicio de sesión exitoso'),(131,'2025-12-12 09:58:00',10,'Marcos Zenón','Registró vehículo: 1G1RC6E47BU118981'),(132,'2025-12-12 12:33:43',0,'marcoszenon@imperialmotors.com','Intento de inicio de sesión fallido'),(133,'2025-12-12 12:33:53',10,'Marcos Zenón','Inicio de sesión exitoso'),(134,'2025-12-12 12:37:01',10,'Marcos Zenón','Inicio de sesión exitoso'),(135,'2025-12-12 12:41:35',11,'Jorge Manuel','Inicio de sesión exitoso'),(136,'2025-12-12 12:42:08',11,'Jorge Manuel','Venta Registrada - Folio: 6 - Total: 230000.0'),(137,'2025-12-12 12:45:10',0,'jorge@vendedor.com','Intento de inicio de sesión fallido'),(138,'2025-12-12 12:45:20',11,'Jorge Manuel','Inicio de sesión exitoso'),(139,'2025-12-12 12:45:49',11,'Jorge Manuel','Venta Registrada - Folio: 7 - Total: 260000.0'),(140,'2025-12-12 13:14:02',10,'Marcos Zenón','Inicio de sesión exitoso'),(141,'2025-12-12 13:17:43',10,'Marcos Zenón','Inicio de sesión exitoso'),(142,'2025-12-12 13:31:09',0,'admin@ejemplo.com','Intento de inicio de sesión fallido'),(143,'2025-12-12 13:31:11',0,'admin@ejemplo.com','Intento de inicio de sesión fallido'),(144,'2025-12-12 13:31:12',0,'admin@ejemplo.com','Intento de inicio de sesión fallido'),(145,'2025-12-12 13:31:12',0,'admin@ejemplo.com','Bloqueo de cuenta por exceso de intentos'),(146,'2025-12-12 13:31:40',0,'marcos@ejemplo.com','Intento de inicio de sesión fallido'),(147,'2025-12-12 13:31:58',10,'Marcos Zenón','Inicio de sesión exitoso'),(148,'2025-12-12 13:32:14',10,'Marcos Zenón','Consulta de Reportes/Bitácora'),(149,'2025-12-12 13:32:44',10,'Marcos Zenón','Generó vista previa: Ventas por Semana'),(150,'2025-12-12 13:32:48',10,'Marcos Zenón','Consulta de Reportes/Bitácora'),(151,'2025-12-12 13:33:48',10,'Marcos Zenón','Exportó PDF: Ventas por Semana'),(152,'2025-12-12 13:34:40',10,'Marcos Zenón','Consulta de Reportes/Bitácora'),(153,'2025-12-12 13:37:00',10,'Marcos Zenón','Exportación de Bitácora a CSV'),(154,'2025-12-12 13:43:00',10,'Marcos Zenón','Registró vehículo: JT2AM81A050012398'),(155,'2025-12-12 13:43:14',10,'Marcos Zenón','Exportó PDF (Tabla): Inventario Vehicular'),(156,'2025-12-12 13:45:03',10,'Marcos Zenón','Registro de nuevo usuario: cosa@imperialmotors.com'),(157,'2025-12-12 13:46:10',10,'Marcos Zenón','Venta Registrada - Folio: 8 - Total: 439999.0'),(158,'2025-12-12 13:46:54',11,'Jorge Manuel','Inicio de sesión exitoso'),(159,'2025-12-12 13:47:16',11,'Jorge Manuel','Generó vista previa: KPIs y Anomalías'),(160,'2025-12-12 13:47:19',11,'Jorge Manuel','Generó vista previa: Ventas del Mes');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellidoPaterno` varchar(100) NOT NULL,
  `apellidoMaterno` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) NOT NULL,
  `correo` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Luis','Martínez','Pérez','5512345678','luis@gmail.com'),(2,'Martin','Bolaños','Cobos','22829298763','Martin@cliente.com'),(3,'Jorge','Cobos','Castro','22827186452','Jorge@comprador.com');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleventa`
--

DROP TABLE IF EXISTS `detalleventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalleventa` (
  `idDetalle` int NOT NULL AUTO_INCREMENT,
  `idVenta` int NOT NULL,
  `VIN` varchar(20) NOT NULL,
  `cantidad` int NOT NULL DEFAULT '1',
  `precioUnitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idDetalle`),
  KEY `idVenta` (`idVenta`),
  KEY `VIN` (`VIN`),
  CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`idVenta`) REFERENCES `venta` (`idVenta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`VIN`) REFERENCES `vehiculo` (`VIN`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `detalleventa_chk_1` CHECK ((`cantidad` > 0)),
  CONSTRAINT `detalleventa_chk_2` CHECK ((`precioUnitario` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleventa`
--

LOCK TABLES `detalleventa` WRITE;
/*!40000 ALTER TABLE `detalleventa` DISABLE KEYS */;
INSERT INTO `detalleventa` VALUES (1,1,'1HGCM82633A123456',1,350000.00),(2,2,'ABC123456789DEF01',1,350000.00),(3,3,'1FA6P8CF9G5000004',1,1200000.00),(4,3,'1HGCM82633A000001',1,450000.00),(5,3,'1HGCM82633A123456',1,350000.00),(6,3,'2T1BURHE9MC000002',1,600000.00),(7,4,'3FA6P8CF9G5000005',1,950000.00),(8,4,'3GNCJKS0000000009',1,290000.00),(9,5,'KMHD84LF000000014',1,380000.00),(10,6,'4Y1SL65848Z411439',1,230000.00),(11,7,'KMHD84LF000000015',1,260000.00),(12,8,'1G1RC6E47BU118981',1,129999.00),(13,8,'3GNCJKS0000000012',1,310000.00);
/*!40000 ALTER TABLE `detalleventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `idProveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `RFC` varchar(12) NOT NULL,
  PRIMARY KEY (`idProveedor`),
  UNIQUE KEY `RFC` (`RFC`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Toyota México','5556789012','ventas@toyota.com','SAMM981231'),(2,'Mustang','2282929762','Mustang@ventas.com','SAMM9831234'),(3,'Ferrari','2282929761','ferrari@proveedor.com','SAMM98312341'),(6,'Chevi','2282929761','Chevi@proveedor.com','SAMM98312342'),(8,'Hyundai','2292982712','Hyundai@ventas.com','JOIU820312HD');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporte`
--

DROP TABLE IF EXISTS `reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporte` (
  `idReporte` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) NOT NULL,
  `fechaRegistro` datetime DEFAULT CURRENT_TIMESTAMP,
  `idUsuario` int NOT NULL,
  PRIMARY KEY (`idReporte`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte`
--

LOCK TABLES `reporte` WRITE;
/*!40000 ALTER TABLE `reporte` DISABLE KEYS */;
INSERT INTO `reporte` VALUES (1,'Reporte de ventas diarias','2025-10-17 13:16:50',1);
/*!40000 ALTER TABLE `reporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `idRol` int NOT NULL AUTO_INCREMENT,
  `rol` varchar(50) NOT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Administrador'),(2,'Vendedor');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellidoPaterno` varchar(100) NOT NULL,
  `apellidoMaterno` varchar(100) DEFAULT NULL,
  `correo` varchar(150) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `idRol` int NOT NULL,
  `estado` enum('ACTIVO','INACTIVO') NOT NULL DEFAULT 'ACTIVO',
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `correo` (`correo`),
  KEY `idRol` (`idRol`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (0,'Sistema','Bitacora',NULL,'sistema@imperial.local','NO_ACCESO',1,'ACTIVO'),(1,'Carlos','López','Mendoza','carlos@imperial.com','potrerodellano123',1,'ACTIVO'),(2,'Ana','Ramírez','Torres','ana@imperial.com','rafaelramirez456',2,'INACTIVO'),(3,'Pepito','Perez',NULL,'pepito@admin.com','0001',1,'INACTIVO'),(4,'Jose','Lopez','Ramirez','jose@vendedor.com','contrasena1',2,'ACTIVO'),(5,'Roberto','Perez','Martinez','admin@admin.com','$2a$10$bd8WNa8E/ZU1pJJIV.CtHu77mKROb0LIM5Nh7.SbGSUjyL8Uw9iCy',1,'INACTIVO'),(6,'German','Nuñez','Valera','vendedor@vendedor.com','$2a$10$oHWKTR02d6s5pNXSWkyGUuzs64Cel3YfFqJisDo6Bcbccg6rY6sMC',2,'ACTIVO'),(7,'Roberto','Carlos','Vela','admin@ejemplo.com','$2a$10$s52FkOE/6E8L05jELESDSOHyjz8l4yPxCsi6mxVSntotXT1zF7BBm',1,'ACTIVO'),(8,'vendedor','vendedor','vendedor','vendedor@ejemplo.com','$2a$10$IrR.UCrirgRmG8e5yIRAtOsUZrzHOEBTD/FJ3jiRw6ybsQuN3L/nG',2,'ACTIVO'),(9,'Jaime','Fernandez','Haddad','jaime@imperialmotors.com','$2a$10$.AIjy40GXjt/.IGum9c5x.2lUFgtK5gGGf8zYH12/9K2B9GLPsH.K',1,'ACTIVO'),(10,'Marcos Zenón','Sánchez','Mendizábal','marcos@imperialmotors.com','$2a$10$PcpCALLr6IXEfQ0U5LGp/.eiq19EaJi0TukQy.hx0rdZ80nyeQZlK',1,'ACTIVO'),(11,'Jorge Manuel','Cobos','Castro','jorge@imperialmotors.com','$2a$10$KtZCLZyQmKroNAEyTR42CODvgAz9amktcWvUGsG2nJUF7SxQwbCJa',2,'ACTIVO'),(12,'Manuel','Perez','Segovia','cosa@imperialmotors.com','$2a$10$r0jcEA.RCpTqnQu9uv1.8ezxaEewaSoOk5rlfeP6nPJDSWkKJAI46',1,'ACTIVO');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `VIN` varchar(17) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `anio` year NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `tipo` enum('Nuevo','Seminuevo') NOT NULL,
  `estado` enum('Disponible','Vendido') DEFAULT 'Disponible',
  `idProveedor` int DEFAULT NULL,
  PRIMARY KEY (`VIN`),
  KEY `idProveedor` (`idProveedor`),
  CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `vehiculo_chk_1` CHECK ((`precio` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES ('1FA6P8CF9G5000004','Ford','Mustang GT',2024,1200000.00,'Nuevo','Vendido',2),('1G1RC6E47BU118981','Toyota','Corolla',2022,129999.00,'Seminuevo','Vendido',1),('1HGCM82633A000001','Toyota','Corolla',2024,450000.00,'Nuevo','Vendido',1),('1HGCM82633A123456','Toyota','Corolla',2023,350000.00,'Nuevo','Vendido',1),('2T1BURHE9MC000002','Toyota','RAV4',2023,600000.00,'Seminuevo','Vendido',1),('3FA6P8CF9G5000005','Ford','Lobo',2022,950000.00,'Seminuevo','Vendido',2),('3GNCJKS0000000009','Chevrolet','Aveo',2024,290000.00,'Nuevo','Vendido',6),('3GNCJKS0000000010','Chevrolet','Suburban',2023,1600000.00,'Seminuevo','Disponible',6),('3GNCJKS0000000011','Chevrolet','Camaro',2024,1100000.00,'Nuevo','Vendido',6),('3GNCJKS0000000012','Chevrolet','Onix',2023,310000.00,'Seminuevo','Vendido',6),('3N1AB7AP5KL000003','Toyota','Camry',2024,550000.00,'Nuevo','Vendido',1),('4Y1SL65848Z411439','Toyota','Corolla',1987,230000.00,'Seminuevo','Vendido',1),('ABC123456789DEF01','Nissan','Versa',2024,350000.00,'Nuevo','Vendido',1),('JT2AM81A050012398','Toyota','Modelo',2023,2299999.00,'Seminuevo','Disponible',1),('KMHD84LF000000013','Hyundai','Tucson',2025,620000.00,'Nuevo','Disponible',8),('KMHD84LF000000014','Hyundai','Elantra',2022,380000.00,'Seminuevo','Vendido',8),('KMHD84LF000000015','Hyundai','Grand i10',2024,260000.00,'Nuevo','Vendido',8),('ZFF89AMS000000006','Ferrari','Roma',2024,5500000.00,'Nuevo','Disponible',3),('ZFF89AMS000000007','Ferrari','F8 Tributo',2023,6200000.00,'Seminuevo','Vendido',3),('ZFF89AMS000000008','Ferrari','Portofino',2022,4800000.00,'Seminuevo','Disponible',3);
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `idVenta` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `importe` decimal(10,2) NOT NULL,
  `idUsuario` int NOT NULL,
  `idCliente` int NOT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `venta_chk_1` CHECK ((`importe` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,'2025-10-12',350000.00,2,1),(2,'2025-11-23',350000.00,7,2),(3,'2025-12-12',2600000.00,7,3),(4,'2025-12-12',1240000.00,7,3),(5,'2025-12-12',380000.00,8,3),(6,'2025-12-12',230000.00,11,3),(7,'2025-12-12',260000.00,11,2),(8,'2025-12-12',439999.00,10,2);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'imperialmotors'
--

--
-- Dumping routines for database 'imperialmotors'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-09 20:19:50
