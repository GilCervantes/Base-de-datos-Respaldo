CREATE DATABASE  IF NOT EXISTS `enrutame_triggers` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `enrutame_triggers`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: enrutame_triggers
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `calificacion`
--

DROP TABLE IF EXISTS `calificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificacion` (
  `id_califiacion` int(11) NOT NULL AUTO_INCREMENT,
  `califacion` int(5) DEFAULT NULL,
  `id_ruta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_califiacion`),
  KEY `integradora` (`califacion`),
  KEY `id_ruta` (`id_ruta`),
  CONSTRAINT `calificacion_ibfk_1` FOREIGN KEY (`id_ruta`) REFERENCES `ruta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion`
--

LOCK TABLES `calificacion` WRITE;
/*!40000 ALTER TABLE `calificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `calificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `detalles`
--

DROP TABLE IF EXISTS `detalles`;
/*!50001 DROP VIEW IF EXISTS `detalles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `detalles` AS SELECT 
 1 AS `nombre_ruta`,
 1 AS `num_buses`,
 1 AS `espera`,
 1 AS `espera_finde`,
 1 AS `precio_pref`,
 1 AS `precio_regular`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ruta`
--

DROP TABLE IF EXISTS `ruta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruta` (
  `id` int(11) DEFAULT NULL,
  `num_buses` int(11) DEFAULT NULL,
  `nombre_ruta` varchar(120) DEFAULT NULL,
  `precio_pref` varchar(80) DEFAULT NULL,
  `precio_regular` varchar(80) DEFAULT NULL,
  KEY `RUTAS` (`id`,`num_buses`,`nombre_ruta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruta`
--

LOCK TABLES `ruta` WRITE;
/*!40000 ALTER TABLE `ruta` DISABLE KEYS */;
INSERT INTO `ruta` VALUES (NULL,2,'20 Aniversario (Directo)',NULL,NULL),(NULL,2,'20 Aniversario (Inverso)',NULL,NULL),(NULL,2,'Ruta 100',NULL,NULL),(NULL,3,'Fco. Portillo (Directo)',NULL,NULL),(NULL,3,'Infonavit (Directo)',NULL,NULL),(NULL,4,'Av. Zarco (Esperanza)',NULL,NULL),(NULL,4,'Av. Zarco (Martín López)',NULL,NULL),(NULL,4,'Av. Zarco (Zootecnia)',NULL,NULL),(NULL,4,'Circuito Universitario',NULL,NULL),(NULL,4,'Panamericana (San Felipe)',NULL,NULL),(NULL,4,'Villas del Norte (Directo)',NULL,NULL),(NULL,4,'Villas del Norte (Inverso)',NULL,NULL),(NULL,5,'Komatsu (Directo)',NULL,NULL),(NULL,5,'Komatsu (Inverso)',NULL,NULL),(NULL,5,'Panamericana (Mirador)',NULL,NULL),(NULL,5,'Ruta 15 (Directo)',NULL,NULL),(NULL,5,'Ruta 15 (inverso)',NULL,NULL),(NULL,5,'Sierra Azul',NULL,NULL),(NULL,6,'Camino Real',NULL,NULL),(NULL,6,'Infonavit (Inverso)',NULL,NULL),(NULL,6,'Jardines de Oriente',NULL,NULL),(NULL,6,'Nombre de Dios Ojo (Directo)',NULL,NULL),(NULL,6,'Nombre de Dios Ojo (Inverso)',NULL,NULL),(NULL,6,'Ruta 3 (Directo)',NULL,NULL),(NULL,6,'Ruta 3 (Inverso)',NULL,NULL),(NULL,7,'Bolivar Zarco (104a)',NULL,NULL),(NULL,7,'Dale Up',NULL,NULL),(NULL,8,'Dos de Octubre',NULL,NULL),(NULL,8,'Villas del Prado (Urbi)',NULL,NULL),(NULL,9,'Campesina (Santa Rosa)',NULL,NULL),(NULL,9,'Campesina (Sector 3)',NULL,NULL),(NULL,9,'Cerro de la Cruz (11a)',NULL,NULL),(NULL,9,'Cerro de la Cruz (Centro)',NULL,NULL),(NULL,10,'Ávalos Plan de Ayala',NULL,NULL),(NULL,10,'Tarahumara (Directo)',NULL,NULL),(NULL,10,'Tarahumara (Inverso)',NULL,NULL),(NULL,10,'Tec II (Colón)',NULL,NULL),(NULL,10,'Tec II (Industrial)',NULL,NULL),(NULL,11,'Villa Juárez Kennedy',NULL,NULL),(NULL,14,'Punta Oriente',NULL,NULL),(NULL,14,'Ramiro Valles Concordia',NULL,NULL),(NULL,14,'Reloj Desarrollo Urbano',NULL,NULL),(NULL,14,'Rosario',NULL,NULL),(NULL,7,'Fco. Portillo (Inverso)',NULL,NULL),(NULL,20,'Circunvalacion 1 (Sube Zarco)',NULL,NULL),(NULL,20,'Circunvalacion 1 (Baja Zarco)',NULL,NULL),(NULL,20,'Circunvalacion 2 (Baja Mirador)',NULL,NULL),(NULL,20,'Circunvalacion 2 (Baja Salle)',NULL,NULL),(NULL,20,'Circunvalacion 2 (sube Salle)',NULL,NULL),(NULL,20,'Circunvalacion 2 (Sube Mirador)',NULL,NULL),(NULL,16,'Marmol (Vistas Cerro Grande)',NULL,NULL),(NULL,4,'Panamericana (San Felipe)',NULL,NULL),(NULL,12,'Riberas del Sacramento (Directo)',NULL,NULL),(NULL,12,'Riberas del Sacramento (Inverso)',NULL,NULL),(NULL,10,'Tarahumara Directo','4.50','9.00'),(NULL,3,'Infonavit (Directo)','4.50','9.00'),(NULL,3,'Fco. Portillo (Directo)','4.50','9.00'),(NULL,6,'Camino Real','4.50','9.00');
/*!40000 ALTER TABLE `ruta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `rutas_abc`
--

DROP TABLE IF EXISTS `rutas_abc`;
/*!50001 DROP VIEW IF EXISTS `rutas_abc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `rutas_abc` AS SELECT 
 1 AS `id`,
 1 AS `num_buses`,
 1 AS `nombre_ruta`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tiempo`
--

DROP TABLE IF EXISTS `tiempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tiempo` (
  `id` int(11) DEFAULT NULL,
  `id_factores` int(11) DEFAULT NULL,
  `id_ruta` int(11) DEFAULT NULL,
  `espera` varchar(30) DEFAULT NULL,
  `espera_finde` varchar(30) DEFAULT NULL,
  KEY `TIEMPOR` (`id`),
  KEY `id_factores` (`id_factores`),
  KEY `id_ruta` (`id_ruta`),
  CONSTRAINT `tiempo_ibfk_1` FOREIGN KEY (`id_factores`) REFERENCES `factores` (`id`),
  CONSTRAINT `tiempo_ibfk_2` FOREIGN KEY (`id_ruta`) REFERENCES `ruta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiempo`
--

LOCK TABLES `tiempo` WRITE;
/*!40000 ALTER TABLE `tiempo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'enrutame_triggers'
--
/*!50003 DROP PROCEDURE IF EXISTS `mas_3_bus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mas_3_bus`(in num_buses int)
begin
select nombre_ruta, num_buses from ruta where num_buses > 3;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `retraso_0_20` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `retraso_0_20`(in retraso time)
select * from tiempo where retraso < '00:20:00' ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `rutas_a_j` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rutas_a_j`(in nombre_ruta varchar(30))
begin 
select * from ruta where nombre_ruta like '%a%' or nombre_ruta like '%j%';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `detalles`
--

/*!50001 DROP VIEW IF EXISTS `detalles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `detalles` AS select `ruta`.`nombre_ruta` AS `nombre_ruta`,`ruta`.`num_buses` AS `num_buses`,`tiempo`.`espera` AS `espera`,`tiempo`.`espera_finde` AS `espera_finde`,`ruta`.`precio_pref` AS `precio_pref`,`ruta`.`precio_regular` AS `precio_regular` from (`tiempo` join `ruta`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rutas_abc`
--

/*!50001 DROP VIEW IF EXISTS `rutas_abc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rutas_abc` AS select `ruta`.`id` AS `id`,`ruta`.`num_buses` AS `num_buses`,`ruta`.`nombre_ruta` AS `nombre_ruta` from `ruta` where ((`ruta`.`nombre_ruta` like 'a%') or (0 <> 'b%') or (0 <> 'c%')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-14 22:20:30
