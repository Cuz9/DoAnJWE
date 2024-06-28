CREATE DATABASE  IF NOT EXISTS `quanlykhachsan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quanlykhachsan`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: quanlykhachsan
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `chitietdichvu`
--

DROP TABLE IF EXISTS `chitietdichvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietdichvu` (
  `MaPhieuThuePhong` varchar(50) NOT NULL,
  `MaDichVu` varchar(50) NOT NULL,
  `SoLuong` int DEFAULT NULL,
  PRIMARY KEY (`MaPhieuThuePhong`,`MaDichVu`),
  KEY `MaDichVu` (`MaDichVu`),
  CONSTRAINT `chitietdichvu_ibfk_1` FOREIGN KEY (`MaPhieuThuePhong`) REFERENCES `phieuthuephong` (`MaPhieuThuePhong`),
  CONSTRAINT `chitietdichvu_ibfk_2` FOREIGN KEY (`MaDichVu`) REFERENCES `dichvu` (`MaDichVu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietdichvu`
--

LOCK TABLES `chitietdichvu` WRITE;
/*!40000 ALTER TABLE `chitietdichvu` DISABLE KEYS */;
INSERT INTO `chitietdichvu` VALUES ('PTP001','DV001',2),('PTP001','DV002',3),('PTP002','DV001',1),('PTP002','DV003',2);
/*!40000 ALTER TABLE `chitietdichvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dichvu`
--

DROP TABLE IF EXISTS `dichvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dichvu` (
  `MaDichVu` varchar(50) NOT NULL,
  `TenDichVu` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `GiaTien` float NOT NULL,
  PRIMARY KEY (`MaDichVu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dichvu`
--

LOCK TABLES `dichvu` WRITE;
/*!40000 ALTER TABLE `dichvu` DISABLE KEYS */;
INSERT INTO `dichvu` VALUES ('DV001','Dịch vụ giặt ủi',200000),('DV002','Dịch vụ đưa đón sân bay',300000),('DV003','Dịch vụ thuê xe',350000);
/*!40000 ALTER TABLE `dichvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `MaHoaDon` varchar(50) NOT NULL,
  `NgayThanhToan` date NOT NULL,
  `MaPhieuThuePhong` varchar(50) DEFAULT NULL,
  `TongTien` float NOT NULL,
  PRIMARY KEY (`MaHoaDon`),
  KEY `MaPhieuThuePhong` (`MaPhieuThuePhong`),
  CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaPhieuThuePhong`) REFERENCES `phieuthuephong` (`MaPhieuThuePhong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES ('HD01','2024-06-30','PTP001',20800000),('HD02','2024-06-30','PTP002',18300000);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `MaKhachHang` varchar(50) NOT NULL,
  `TaiKhoan` varchar(50) DEFAULT NULL,
  `MatKhau` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TenKhachHang` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `GioiTinh` bit(1) DEFAULT NULL,
  `CMND` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `SoDienThoai` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`MaKhachHang`),
  UNIQUE KEY `TaiKhoan` (`TaiKhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES ('KH001','user','123','Nguyen Van A',_binary '','123456789','123 Quận 1 paris','a.nguyen@example.com','0912345678'),('KH002','user1','123','Tran Thi B',_binary '\0','987654321','456 Đường B, Quận 2, TP.HCM','b.tran@example.com','0987654321');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaiphong`
--

DROP TABLE IF EXISTS `loaiphong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaiphong` (
  `MaLoaiPhong` varchar(50) NOT NULL,
  `TenLoaiPhong` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MoTa` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`MaLoaiPhong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaiphong`
--

LOCK TABLES `loaiphong` WRITE;
/*!40000 ALTER TABLE `loaiphong` DISABLE KEYS */;
INSERT INTO `loaiphong` VALUES ('LP001','Phòng abc','Phòng cho người lười'),('LP002','Phòng Đôi','Phòng đôi cho hai người.'),('LP003','Phòng Gia Đình','Phòng lớn dành cho gia đình.'),('LP004','Phòng Suite','Phòng cao cấp với nhiều tiện nghi.');
/*!40000 ALTER TABLE `loaiphong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoiquantri`
--

DROP TABLE IF EXISTS `nguoiquantri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoiquantri` (
  `TaiKhoan` varchar(50) NOT NULL,
  `MatKhau` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TenNguoiQuanTri` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `GioiTinh` bit(1) DEFAULT NULL,
  `CMND` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `SoDienThoai` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`TaiKhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoiquantri`
--

LOCK TABLES `nguoiquantri` WRITE;
/*!40000 ALTER TABLE `nguoiquantri` DISABLE KEYS */;
INSERT INTO `nguoiquantri` VALUES ('admin','123','Admin',_binary '','111111111','789 Đường C, Quận 3, TP.HCM','admin1@example.com','0123456789'),('admin1','123','Admin 2',_binary '\0','222222222','456 Đường B, Quận 2, TP.HCM','admin2@example.com','0987654321');
/*!40000 ALTER TABLE `nguoiquantri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieuthuephong`
--

DROP TABLE IF EXISTS `phieuthuephong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieuthuephong` (
  `MaPhieuThuePhong` varchar(50) NOT NULL,
  `MaPhong` varchar(50) DEFAULT NULL,
  `MaKhachHang` varchar(50) DEFAULT NULL,
  `NgayDen` date NOT NULL,
  `TienCoc` float NOT NULL,
  PRIMARY KEY (`MaPhieuThuePhong`),
  KEY `MaKhachHang` (`MaKhachHang`),
  KEY `MaPhong` (`MaPhong`),
  CONSTRAINT `phieuthuephong_ibfk_1` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`),
  CONSTRAINT `phieuthuephong_ibfk_2` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieuthuephong`
--

LOCK TABLES `phieuthuephong` WRITE;
/*!40000 ALTER TABLE `phieuthuephong` DISABLE KEYS */;
INSERT INTO `phieuthuephong` VALUES ('PTP001','P001','KH001','2024-06-10',500000),('PTP002','P002','KH002','2024-06-12',600000),('PTP1719599278571','P009','KH001','2024-06-30',700000),('PTP1719600874822','P007','KH001','2024-06-30',500000),('PTP1719601090528','P013','KH001','2024-07-01',900000),('PTP1719601519221','P004','KH002','2024-06-30',200000),('PTP1719602041723','P011','KH001','2024-07-02',700000);
/*!40000 ALTER TABLE `phieuthuephong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phong`
--

DROP TABLE IF EXISTS `phong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phong` (
  `MaPhong` varchar(50) NOT NULL,
  `MaLoaiPhong` varchar(50) DEFAULT NULL,
  `TenPhong` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL,
  `SucChua` int DEFAULT NULL,
  `DonGia` float DEFAULT NULL,
  `MoTa` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `TinhTrang` bit(1) NOT NULL,
  PRIMARY KEY (`MaPhong`),
  KEY `MaLoaiPhong` (`MaLoaiPhong`),
  CONSTRAINT `phong_ibfk_1` FOREIGN KEY (`MaLoaiPhong`) REFERENCES `loaiphong` (`MaLoaiPhong`),
  CONSTRAINT `phong_chk_1` CHECK ((`TinhTrang` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phong`
--

LOCK TABLES `phong` WRITE;
/*!40000 ALTER TABLE `phong` DISABLE KEYS */;
INSERT INTO `phong` VALUES ('P001','LP001','101','https://thietkethicong.org/images/Product/thiet-ke-noi-that-khach-san-a1-13.jpg',1,1000000,'Phòng đơn tầng 1',_binary ''),('P002','LP001','102','https://thietkethicong.org/images/Product/thiet-ke-noi-that-khach-san-a1-13.jpg',1,1000000,'Phòng đơn tầng 1',_binary ''),('P003','LP001','103','https://thietkethicong.org/images/Product/thiet-ke-noi-that-khach-san-a1-13.jpg',1,1000000,'Phòng đơn tầng 1',_binary ''),('P004','LP001','104','https://thietkethicong.org/images/Product/thiet-ke-noi-that-khach-san-a1-13.jpg',1,1000000,'Phòng đơn tầng 1',_binary ''),('P005','LP002','201','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDJyi6ZwO6ddcS_PKQTbxLmWMKu8c3zPr1Aw&s',2,2500000,'Phòng đôi tầng 2',_binary ''),('P006','LP002','202','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDJyi6ZwO6ddcS_PKQTbxLmWMKu8c3zPr1Aw&s',2,2500000,'Phòng đôi tầng 2',_binary ''),('P007','LP002','203','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDJyi6ZwO6ddcS_PKQTbxLmWMKu8c3zPr1Aw&s',2,2500000,'Phòng đôi tầng 2',_binary ''),('P008','LP002','204','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDJyi6ZwO6ddcS_PKQTbxLmWMKu8c3zPr1Aw&s',2,2500000,'Phòng đôi tầng 2',_binary ''),('P009','LP003','301','https://i.pinimg.com/736x/af/e6/68/afe668580604a3377ecf065ac86a9a5a.jpg',4,3500000,'Phòng gia đình tầng 3',_binary ''),('P010','LP003','302','https://i.pinimg.com/736x/af/e6/68/afe668580604a3377ecf065ac86a9a5a.jpg',4,3500000,'Phòng gia đình tầng 3',_binary ''),('P011','LP003','303','https://i.pinimg.com/736x/af/e6/68/afe668580604a3377ecf065ac86a9a5a.jpg',4,3500000,'Phòng gia đình tầng 3',_binary ''),('P012','LP003','304','https://i.pinimg.com/736x/af/e6/68/afe668580604a3377ecf065ac86a9a5a.jpg',4,3500000,'Phòng gia đình tầng 3',_binary ''),('P013','LP004','Suite 1','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThk1TfMr8uNbTx-276WmPbXCyteBm-UIHTdQ&s',2,4500000,'Suite cao cấp tầng 4',_binary ''),('P014','LP004','Suite 2','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThk1TfMr8uNbTx-276WmPbXCyteBm-UIHTdQ&s',2,4500000,'Suite cao cấp tầng 4',_binary ''),('P015','LP004','Suite 3','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThk1TfMr8uNbTx-276WmPbXCyteBm-UIHTdQ&s',2,4500000,'Suite cao cấp tầng 4',_binary ''),('P016','LP004','Suite 4','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThk1TfMr8uNbTx-276WmPbXCyteBm-UIHTdQ&s',2,4500000,'Suite cao cấp tầng 4',_binary '');
/*!40000 ALTER TABLE `phong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'quanlykhachsan'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-29  3:39:20
