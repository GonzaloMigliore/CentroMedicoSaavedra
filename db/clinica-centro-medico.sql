CREATE DATABASE  IF NOT EXISTS `clinica-centro-medico` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `clinica-centro-medico`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: clinica-centro-medico
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.13-MariaDB

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
-- Table structure for table `apointments`
--

DROP TABLE IF EXISTS `apointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apointments` (
  `id` int(11) NOT NULL,
  `date` varchar(45) NOT NULL,
  `hour` varchar(45) NOT NULL,
  `coment` varchar(45) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `file` varchar(45) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apointments`
--

LOCK TABLES `apointments` WRITE;
/*!40000 ALTER TABLE `apointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `apointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apointmentspatients`
--

DROP TABLE IF EXISTS `apointmentspatients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apointmentspatients` (
  `id` int(11) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `patients_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apointmentspatients`
--

LOCK TABLES `apointmentspatients` WRITE;
/*!40000 ALTER TABLE `apointmentspatients` DISABLE KEYS */;
/*!40000 ALTER TABLE `apointmentspatients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicalhistories`
--

DROP TABLE IF EXISTS `medicalhistories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicalhistories` (
  `id` int(11) NOT NULL,
  ` visitamedica` varchar(145) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicalhistories`
--

LOCK TABLES `medicalhistories` WRITE;
/*!40000 ALTER TABLE `medicalhistories` DISABLE KEYS */;
INSERT INTO `medicalhistories` VALUES (0,'asd',NULL,NULL,NULL);
/*!40000 ALTER TABLE `medicalhistories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `medical_insurance` varchar(45) DEFAULT NULL,
  `insurance_number` int(11) DEFAULT NULL,
  `adress` varchar(45) DEFAULT NULL,
  `adress_number` int(11) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `diabetes` varchar(45) DEFAULT NULL,
  `dlp` varchar(45) DEFAULT NULL,
  `hta` varchar(45) DEFAULT NULL,
  `crm` varchar(45) DEFAULT NULL,
  `atc` varchar(45) DEFAULT NULL,
  `iam` varchar(45) DEFAULT NULL,
  `acv` varchar(45) DEFAULT NULL,
  `aortic_aneurysm` varchar(45) DEFAULT NULL,
  `ic` varchar(45) DEFAULT NULL,
  `evp` varchar(45) DEFAULT NULL,
  `irc` varchar(45) DEFAULT NULL,
  `epoc` varchar(45) DEFAULT NULL,
  `obesity` varchar(45) DEFAULT NULL,
  `nhc` varchar(45) DEFAULT NULL,
  `section` varchar(45) DEFAULT NULL,
  `medicalhistory_id` int(11) DEFAULT NULL,
  `coments` varchar(45) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `dni_UNIQUE` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (72,'Juana','Gimenez','femenino','2020-09-10','Juana@gmail.com',32960913,'swiss medical',1234124123,'Rector Vicente Gallo',2573,1149407095,'on',NULL,NULL,NULL,'on',NULL,'on',NULL,NULL,NULL,NULL,'on',NULL,'132','H',NULL,NULL,'2020-09-27 15:22:41','2020-09-27 15:22:41',NULL),(73,'Pedro','Motoa','masculino','2020-09-23','pedro@gmail.com',34322342,'osde',2147483647,'Rector Vicente Gallo',2573,1149407095,NULL,'on',NULL,'on',NULL,NULL,NULL,'on',NULL,NULL,NULL,'on','on','132','c',NULL,NULL,'2020-09-27 15:23:26','2020-09-27 15:23:26',NULL);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patienttreatments`
--

DROP TABLE IF EXISTS `patienttreatments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patienttreatments` (
  `id` int(11) NOT NULL,
  `patients_id` varchar(45) NOT NULL,
  `treatments_id` varchar(45) CHARACTER SET big5 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patienttreatments`
--

LOCK TABLES `patienttreatments` WRITE;
/*!40000 ALTER TABLE `patienttreatments` DISABLE KEYS */;
/*!40000 ALTER TABLE `patienttreatments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientusers`
--

DROP TABLE IF EXISTS `patientusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientusers` (
  `id` int(11) NOT NULL,
  `users_id` varchar(45) NOT NULL,
  `patients_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientusers`
--

LOCK TABLES `patientusers` WRITE;
/*!40000 ALTER TABLE `patientusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatments`
--

DROP TABLE IF EXISTS `treatments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treatments` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatments`
--

LOCK TABLES `treatments` WRITE;
/*!40000 ALTER TABLE `treatments` DISABLE KEYS */;
/*!40000 ALTER TABLE `treatments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `roles` int(11) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (51,'Milagros','Collard','MilagrosCollard','Milagros@gmail.com',1,'$2a$10$wP5FAmJ8zQBj.O2y3FhEUe792NuYU3P6/Xz2vhO15rM23F69KmIgu',1149407095,'Hombre','2020-09-05 01:01:24','2020-09-05 01:01:24',NULL),(52,'Valentin','Ramallo','Valentina','Valentina@gmail.com',1,'$2a$10$Vz4GkicttL1PuPSqUe1pb.4FYAsiD2ym.uo18mP2NUR6cBDjE0uyK',1149407095,'Hombre','2020-09-06 00:02:15','2020-09-06 00:02:15',NULL),(53,'Juan','Spada','spadajuan','Juanspada@gmail.com',1,'$2a$10$2ye51Y4Sl8hxRJYocfX4fO0BB.lTgKAzLl2y9RQ8AzIUHJQt.kHVO',1149407095,'Hombre','2020-09-08 15:14:54','2020-09-08 15:14:54',NULL),(54,'gonzalo','paolella','Gonzalp','Gonzalop@gmail.com',1,'$2a$10$LBu0a.gi3OZ524MGaJwLIuTuYMb90E9DMOKcpGCMbMZ/79683zljO',1149407095,'Hombre','2020-09-10 14:15:10','2020-09-10 14:15:10',NULL),(55,'Valentin','Albisu','valentin','Valentin@gmail.com',1,'$2a$10$A1lzZuc0eOHwgdU7z.clPe5ABSN.yAIsX34IMxnrVLkLaO8DUqeUe',1149407095,'Mujer','2020-09-10 22:20:52','2020-09-10 22:20:52',NULL),(56,'Gonzalo','Migliore','GonzaloMigliore','Gonzalomigliore@gmail.com',1,'$2a$10$eyZH9Jzd5bmNnNgl2EqGLuZ6WEyWSoyp6L4IXvhUYlgx7vtzAhg0a',1149407095,'Hombre','2020-09-25 13:31:19','2020-09-25 13:31:19',NULL),(57,'Juan','Migliore','juancho','Juanmigliore61@gmail.com',1,'$2a$10$YRZPxSoInX6bWLBC1jXb/OUjUj8EwxmpslxasyXORTAQLhPc8dbra',1140459411,'Hombre','2020-09-25 16:49:39','2020-09-25 16:49:39',NULL);
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

-- Dump completed on 2020-09-27 20:09:51
