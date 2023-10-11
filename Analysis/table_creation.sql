-- MySQL dump 10.13  Distrib 8.0.33, for macos13.3 (x86_64)
--
-- Host: localhost    Database: bt
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `all_bdaddrs`
--

DROP TABLE IF EXISTS `all_bdaddrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_bdaddrs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr_type` int NOT NULL,
  `device_bdaddr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr_type`,`device_bdaddr`)
) ENGINE=InnoDB AUTO_INCREMENT=993637 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bdaddr_to_CID`
--

DROP TABLE IF EXISTS `bdaddr_to_CID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bdaddr_to_CID` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `device_CID` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`device_CID`)
) ENGINE=InnoDB AUTO_INCREMENT=4654 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BT_CID_to_company`
--

DROP TABLE IF EXISTS `BT_CID_to_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BT_CID_to_company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_BT_CID` int NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_BT_CID`,`company_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BTC2th_LMP_features_res`
--

DROP TABLE IF EXISTS `BTC2th_LMP_features_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BTC2th_LMP_features_res` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` tinyint unsigned NOT NULL,
  `features` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`page`,`features`)
) ENGINE=InnoDB AUTO_INCREMENT=11300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BTC2th_LMP_name_res`
--

DROP TABLE IF EXISTS `BTC2th_LMP_name_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BTC2th_LMP_name_res` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`device_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10805 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BTC2th_LMP_version_res`
--

DROP TABLE IF EXISTS `BTC2th_LMP_version_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BTC2th_LMP_version_res` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lmp_version` tinyint unsigned NOT NULL,
  `device_BT_CID` smallint unsigned NOT NULL,
  `lmp_sub_version` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`lmp_version`,`device_BT_CID`,`lmp_sub_version`)
) ENGINE=InnoDB AUTO_INCREMENT=12790 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `count_adv_names`
--

DROP TABLE IF EXISTS `count_adv_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `count_adv_names` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr_type` int NOT NULL,
  `device_bdaddr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr_type`,`device_bdaddr`,`device_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1066735 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `count_classic_names`
--

DROP TABLE IF EXISTS `count_classic_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `count_classic_names` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`device_name`)
) ENGINE=InnoDB AUTO_INCREMENT=106331 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EIR_bdaddr_to_DevID`
--

DROP TABLE IF EXISTS `EIR_bdaddr_to_DevID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EIR_bdaddr_to_DevID` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `vendor_id_source` int NOT NULL,
  `vendor_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_version` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`vendor_id_source`,`vendor_id`,`product_id`,`product_version`)
) ENGINE=InnoDB AUTO_INCREMENT=215751 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EIR_bdaddr_to_flags`
--

DROP TABLE IF EXISTS `EIR_bdaddr_to_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EIR_bdaddr_to_flags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `le_limited_discoverable_mode` tinyint(1) NOT NULL,
  `le_general_discoverable_mode` tinyint(1) NOT NULL,
  `le_bredr_support_controller` tinyint(1) NOT NULL,
  `le_bredr_support_host` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`le_limited_discoverable_mode`,`le_general_discoverable_mode`,`le_bredr_support_controller`,`le_bredr_support_host`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EIR_bdaddr_to_mf_specific`
--

DROP TABLE IF EXISTS `EIR_bdaddr_to_mf_specific`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EIR_bdaddr_to_mf_specific` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `device_BT_CID` int NOT NULL,
  `mf_specific_data` varchar(480) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`device_BT_CID`,`mf_specific_data`)
) ENGINE=InnoDB AUTO_INCREMENT=56936 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EIR_bdaddr_to_name`
--

DROP TABLE IF EXISTS `EIR_bdaddr_to_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EIR_bdaddr_to_name` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `device_name_type` tinyint NOT NULL,
  `device_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`device_name_type`,`device_name`)
) ENGINE=InnoDB AUTO_INCREMENT=126779 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EIR_bdaddr_to_PSRM_CoD`
--

DROP TABLE IF EXISTS `EIR_bdaddr_to_PSRM_CoD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EIR_bdaddr_to_PSRM_CoD` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `page_scan_rep_mode` tinyint NOT NULL,
  `class_of_device` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`page_scan_rep_mode`,`class_of_device`)
) ENGINE=InnoDB AUTO_INCREMENT=29655 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EIR_bdaddr_to_tx_power`
--

DROP TABLE IF EXISTS `EIR_bdaddr_to_tx_power`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EIR_bdaddr_to_tx_power` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `device_tx_power` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`device_tx_power`)
) ENGINE=InnoDB AUTO_INCREMENT=20552 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EIR_bdaddr_to_UUID128s`
--

DROP TABLE IF EXISTS `EIR_bdaddr_to_UUID128s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EIR_bdaddr_to_UUID128s` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `list_type` tinyint NOT NULL,
  `str_UUID128s` varchar(480) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`list_type`,`str_UUID128s`)
) ENGINE=InnoDB AUTO_INCREMENT=92523 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EIR_bdaddr_to_UUID16s`
--

DROP TABLE IF EXISTS `EIR_bdaddr_to_UUID16s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EIR_bdaddr_to_UUID16s` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `list_type` tinyint NOT NULL,
  `str_UUID16s` varchar(480) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`list_type`,`str_UUID16s`)
) ENGINE=InnoDB AUTO_INCREMENT=96421 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EIR_bdaddr_to_UUID32s`
--

DROP TABLE IF EXISTS `EIR_bdaddr_to_UUID32s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EIR_bdaddr_to_UUID32s` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `list_type` tinyint NOT NULL,
  `str_UUID32s` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`list_type`,`str_UUID32s`)
) ENGINE=InnoDB AUTO_INCREMENT=70017 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FP_LL_FEATUREs`
--

DROP TABLE IF EXISTS `FP_LL_FEATUREs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FP_LL_FEATUREs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr_type` int NOT NULL,
  `device_bdaddr` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `opcode` tinyint unsigned NOT NULL,
  `features` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr_type`,`device_bdaddr`,`opcode`,`features`)
) ENGINE=InnoDB AUTO_INCREMENT=18881 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FP_LL_LENGTHs`
--

DROP TABLE IF EXISTS `FP_LL_LENGTHs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FP_LL_LENGTHs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr_type` int NOT NULL,
  `device_bdaddr` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `opcode` tinyint unsigned NOT NULL,
  `max_rx_octets` smallint unsigned NOT NULL,
  `max_rx_time` smallint unsigned NOT NULL,
  `max_tx_octets` smallint unsigned NOT NULL,
  `max_tx_time` smallint unsigned NOT NULL,
  `raw_bytes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr_type`,`device_bdaddr`,`opcode`,`max_rx_octets`,`max_rx_time`,`max_tx_octets`,`max_tx_time`,`raw_bytes`)
) ENGINE=InnoDB AUTO_INCREMENT=18386 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FP_LL_PHYs`
--

DROP TABLE IF EXISTS `FP_LL_PHYs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FP_LL_PHYs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr_type` int NOT NULL,
  `device_bdaddr` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tx_phys` smallint unsigned NOT NULL,
  `rx_phys` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr_type`,`device_bdaddr`,`tx_phys`,`rx_phys`)
) ENGINE=InnoDB AUTO_INCREMENT=9232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FP_LL_PING_RSP`
--

DROP TABLE IF EXISTS `FP_LL_PING_RSP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FP_LL_PING_RSP` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr_type` int NOT NULL,
  `device_bdaddr` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ping_rsp` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr_type`,`device_bdaddr`,`ping_rsp`)
) ENGINE=InnoDB AUTO_INCREMENT=15660 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FP_LL_UNKNOWN_RSP`
--

DROP TABLE IF EXISTS `FP_LL_UNKNOWN_RSP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FP_LL_UNKNOWN_RSP` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr_type` int NOT NULL,
  `device_bdaddr` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unknown_opcode` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr_type`,`device_bdaddr`,`unknown_opcode`)
) ENGINE=InnoDB AUTO_INCREMENT=1709 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FP_LL_VERSION_IND`
--

DROP TABLE IF EXISTS `FP_LL_VERSION_IND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FP_LL_VERSION_IND` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr_type` int NOT NULL,
  `device_bdaddr` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ll_version` tinyint unsigned NOT NULL,
  `device_BT_CID` smallint unsigned NOT NULL,
  `ll_sub_version` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr_type`,`device_bdaddr`,`ll_version`,`device_BT_CID`,`ll_sub_version`)
) ENGINE=InnoDB AUTO_INCREMENT=16897 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FP_LMP_version_res`
--

DROP TABLE IF EXISTS `FP_LMP_version_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FP_LMP_version_res` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lmp_version` tinyint unsigned NOT NULL,
  `device_BT_CID` smallint unsigned NOT NULL,
  `lmp_sub_version` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`lmp_version`,`device_BT_CID`,`lmp_sub_version`)
) ENGINE=InnoDB AUTO_INCREMENT=1613 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GATT_characteristics`
--

DROP TABLE IF EXISTS `GATT_characteristics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GATT_characteristics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr_type` int NOT NULL,
  `device_bdaddr` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `declaration_handle` smallint unsigned NOT NULL,
  `char_properties` tinyint unsigned NOT NULL,
  `char_value_handle` smallint unsigned NOT NULL,
  `char_UUID128` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr_type`,`device_bdaddr`,`declaration_handle`,`char_properties`,`char_value_handle`,`char_UUID128`)
) ENGINE=InnoDB AUTO_INCREMENT=799882 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GATT_characteristics_values`
--

DROP TABLE IF EXISTS `GATT_characteristics_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GATT_characteristics_values` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr_type` int NOT NULL,
  `device_bdaddr` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_handle` smallint unsigned NOT NULL,
  `byte_values` blob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr_type`,`device_bdaddr`,`read_handle`,`byte_values`(1024))
) ENGINE=InnoDB AUTO_INCREMENT=223615 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GATT_descriptors`
--

DROP TABLE IF EXISTS `GATT_descriptors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GATT_descriptors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr_type` int NOT NULL,
  `device_bdaddr` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptor_handle` smallint unsigned NOT NULL,
  `UUID128` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr_type`,`device_bdaddr`,`descriptor_handle`,`UUID128`)
) ENGINE=InnoDB AUTO_INCREMENT=1620040 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GATT_services`
--

DROP TABLE IF EXISTS `GATT_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GATT_services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr_type` int NOT NULL,
  `device_bdaddr` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `begin_handle` smallint unsigned NOT NULL,
  `end_handle` smallint unsigned NOT NULL,
  `UUID128` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr_type`,`device_bdaddr`,`begin_handle`,`end_handle`,`UUID128`)
) ENGINE=InnoDB AUTO_INCREMENT=342642 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gps_specific`
--

DROP TABLE IF EXISTS `gps_specific`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gps_specific` (
  `unix_host_time` int NOT NULL,
  `unix_gps_time` int NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lon` decimal(11,8) NOT NULL,
  PRIMARY KEY (`unix_host_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IEEE_bdaddr_to_company`
--

DROP TABLE IF EXISTS `IEEE_bdaddr_to_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IEEE_bdaddr_to_company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`company_name`),
  KEY `idx_device_bdaddr` (`device_bdaddr`)
) ENGINE=InnoDB AUTO_INCREMENT=33782 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LE_bdaddr_to_appearance`
--

DROP TABLE IF EXISTS `LE_bdaddr_to_appearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LE_bdaddr_to_appearance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `bdaddr_random` tinyint(1) NOT NULL,
  `le_evt_type` smallint NOT NULL,
  `appearance` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`bdaddr_random`,`le_evt_type`,`appearance`)
) ENGINE=InnoDB AUTO_INCREMENT=37759 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LE_bdaddr_to_CoD`
--

DROP TABLE IF EXISTS `LE_bdaddr_to_CoD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LE_bdaddr_to_CoD` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `bdaddr_random` tinyint(1) NOT NULL,
  `le_evt_type` smallint NOT NULL,
  `class_of_device` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`bdaddr_random`,`le_evt_type`,`class_of_device`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LE_bdaddr_to_connect_interval`
--

DROP TABLE IF EXISTS `LE_bdaddr_to_connect_interval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LE_bdaddr_to_connect_interval` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `bdaddr_random` tinyint(1) NOT NULL,
  `le_evt_type` smallint NOT NULL,
  `interval_min` smallint NOT NULL,
  `interval_max` smallint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`bdaddr_random`,`le_evt_type`,`interval_min`,`interval_max`)
) ENGINE=InnoDB AUTO_INCREMENT=12283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LE_bdaddr_to_flags`
--

DROP TABLE IF EXISTS `LE_bdaddr_to_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LE_bdaddr_to_flags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `bdaddr_random` tinyint(1) NOT NULL,
  `le_evt_type` smallint NOT NULL,
  `le_limited_discoverable_mode` tinyint(1) NOT NULL,
  `le_general_discoverable_mode` tinyint(1) NOT NULL,
  `le_bredr_support_controller` tinyint(1) NOT NULL,
  `le_bredr_support_host` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`bdaddr_random`,`le_evt_type`,`le_limited_discoverable_mode`,`le_general_discoverable_mode`,`le_bredr_support_controller`,`le_bredr_support_host`)
) ENGINE=InnoDB AUTO_INCREMENT=8183832 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LE_bdaddr_to_mf_specific`
--

DROP TABLE IF EXISTS `LE_bdaddr_to_mf_specific`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LE_bdaddr_to_mf_specific` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `bdaddr_random` tinyint(1) NOT NULL,
  `le_evt_type` smallint NOT NULL,
  `device_BT_CID` int NOT NULL,
  `mf_specific_data` varchar(480) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`bdaddr_random`,`le_evt_type`,`device_BT_CID`,`mf_specific_data`)
) ENGINE=InnoDB AUTO_INCREMENT=11883925 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LE_bdaddr_to_name`
--

DROP TABLE IF EXISTS `LE_bdaddr_to_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LE_bdaddr_to_name` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `bdaddr_random` tinyint(1) NOT NULL,
  `le_evt_type` smallint NOT NULL,
  `device_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`bdaddr_random`,`le_evt_type`,`device_name`)
) ENGINE=InnoDB AUTO_INCREMENT=292187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LE_bdaddr_to_other_le_bdaddr`
--

DROP TABLE IF EXISTS `LE_bdaddr_to_other_le_bdaddr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LE_bdaddr_to_other_le_bdaddr` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `bdaddr_random` tinyint(1) NOT NULL,
  `le_evt_type` smallint NOT NULL,
  `other_bdaddr` varchar(20) DEFAULT NULL,
  `other_bdaddr_random` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`bdaddr_random`,`le_evt_type`,`other_bdaddr`,`other_bdaddr_random`)
) ENGINE=InnoDB AUTO_INCREMENT=1653 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LE_bdaddr_to_public_target_bdaddr`
--

DROP TABLE IF EXISTS `LE_bdaddr_to_public_target_bdaddr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LE_bdaddr_to_public_target_bdaddr` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `bdaddr_random` tinyint(1) NOT NULL,
  `le_evt_type` smallint NOT NULL,
  `other_bdaddr` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`bdaddr_random`,`le_evt_type`,`other_bdaddr`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LE_bdaddr_to_tx_power`
--

DROP TABLE IF EXISTS `LE_bdaddr_to_tx_power`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LE_bdaddr_to_tx_power` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `bdaddr_random` tinyint(1) NOT NULL,
  `le_evt_type` smallint NOT NULL,
  `device_tx_power` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`bdaddr_random`,`le_evt_type`,`device_tx_power`)
) ENGINE=InnoDB AUTO_INCREMENT=7332233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LE_bdaddr_to_URI`
--

DROP TABLE IF EXISTS `LE_bdaddr_to_URI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LE_bdaddr_to_URI` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `bdaddr_random` tinyint(1) NOT NULL,
  `le_evt_type` smallint NOT NULL,
  `str_URI` varchar(240) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`bdaddr_random`,`le_evt_type`,`str_URI`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LE_bdaddr_to_UUID128_service_solicit`
--

DROP TABLE IF EXISTS `LE_bdaddr_to_UUID128_service_solicit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LE_bdaddr_to_UUID128_service_solicit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `bdaddr_random` tinyint(1) NOT NULL,
  `le_evt_type` smallint NOT NULL,
  `str_UUID128s` varchar(480) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`bdaddr_random`,`le_evt_type`,`str_UUID128s`)
) ENGINE=InnoDB AUTO_INCREMENT=624 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LE_bdaddr_to_UUID128s`
--

DROP TABLE IF EXISTS `LE_bdaddr_to_UUID128s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LE_bdaddr_to_UUID128s` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `bdaddr_random` tinyint(1) NOT NULL,
  `le_evt_type` smallint NOT NULL,
  `list_type` tinyint NOT NULL,
  `str_UUID128s` varchar(480) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`bdaddr_random`,`le_evt_type`,`list_type`,`str_UUID128s`)
) ENGINE=InnoDB AUTO_INCREMENT=19381 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LE_bdaddr_to_UUID16_service_solicit`
--

DROP TABLE IF EXISTS `LE_bdaddr_to_UUID16_service_solicit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LE_bdaddr_to_UUID16_service_solicit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `bdaddr_random` tinyint(1) NOT NULL,
  `le_evt_type` smallint NOT NULL,
  `str_UUID16s` varchar(480) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`bdaddr_random`,`le_evt_type`,`str_UUID16s`)
) ENGINE=InnoDB AUTO_INCREMENT=624 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LE_bdaddr_to_UUID16s`
--

DROP TABLE IF EXISTS `LE_bdaddr_to_UUID16s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LE_bdaddr_to_UUID16s` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `bdaddr_random` tinyint(1) NOT NULL,
  `le_evt_type` smallint NOT NULL,
  `list_type` tinyint NOT NULL,
  `str_UUID16s` varchar(480) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`bdaddr_random`,`le_evt_type`,`list_type`,`str_UUID16s`)
) ENGINE=InnoDB AUTO_INCREMENT=507030 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LE_bdaddr_to_UUID32s`
--

DROP TABLE IF EXISTS `LE_bdaddr_to_UUID32s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LE_bdaddr_to_UUID32s` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `bdaddr_random` tinyint(1) NOT NULL,
  `le_evt_type` smallint NOT NULL,
  `list_type` tinyint NOT NULL,
  `str_UUID32s` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`bdaddr_random`,`le_evt_type`,`list_type`,`str_UUID32s`)
) ENGINE=InnoDB AUTO_INCREMENT=4123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RSP_bdaddr_to_name`
--

DROP TABLE IF EXISTS `RSP_bdaddr_to_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RSP_bdaddr_to_name` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_bdaddr` varchar(20) NOT NULL,
  `device_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_bdaddr`,`device_name`)
) ENGINE=InnoDB AUTO_INCREMENT=64484 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp_adv_specific`
--

DROP TABLE IF EXISTS `tmp_adv_specific`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tmp_adv_specific` (
  `id` int NOT NULL AUTO_INCREMENT,
  `capture_date_unix` int NOT NULL,
  `rssi` tinyint NOT NULL,
  `device_bdaddr_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `device_bdaddr` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `device_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1953944 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp_gps_specific`
--

DROP TABLE IF EXISTS `tmp_gps_specific`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tmp_gps_specific` (
  `unix_host_time` int NOT NULL,
  `unix_gps_time` int NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lon` decimal(11,8) NOT NULL,
  PRIMARY KEY (`unix_host_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `USB_CID_to_company`
--

DROP TABLE IF EXISTS `USB_CID_to_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USB_CID_to_company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_USB_CID` int NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`device_USB_CID`,`company_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3422 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UUID16_to_company`
--

DROP TABLE IF EXISTS `UUID16_to_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UUID16_to_company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `str_UUID16_CID` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name` (`str_UUID16_CID`,`company_name`)
) ENGINE=InnoDB AUTO_INCREMENT=584 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-11  7:36:50
