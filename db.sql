/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 10.4.13-MariaDB : Database - sig
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


/*Table structure for table `fasilitas` */

DROP TABLE IF EXISTS `fasilitas`;

CREATE TABLE `fasilitas` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `fasilitas` varchar(200) DEFAULT NULL,
  `id_kelurahan` int(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

/*Data for the table `fasilitas` */

insert  into `fasilitas`(`id`,`fasilitas`,`id_kelurahan`,`created_at`,`updated_at`) values 
(1,'Hermina Pasteur Hospital',3,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(2,'SMP Negeri 1 Bandung',1,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(3,'Alun - alun Cicendo',2,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(4,'Samsat Pajajaran',4,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(5,'Stasiun Bandung',5,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(6,'Gerbang Keluar Tol Pasteur',6,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(7,'Masjid Habiburrahman',3,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(8,'SMAN 9 Bandung',3,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(9,'SMP YBB',3,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(10,'SD Negeri 154 Citepus',3,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(11,'Sekolah Kristen Trimulia',3,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(12,'SMAK Trimulia HITS',3,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(13,'BTC Fashion Mall Bandung',3,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(14,'SPBU Pertamina 34',3,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(15,'Shell',3,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(16,'SMA Negeri 6 Bandung',1,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(17,'Sekolah Kristen Bina Bakti',1,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(18,'SMP Negeri 9 Bandung',1,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(19,'Polsek Cicendo',1,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(20,'Samsat Bandung Barat',1,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(21,'SD Negeri 075 Jatayu',2,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(22,'Universitas Nurtanio',2,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(23,'Bandara internasional Husein Sastranegara',2,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(24,'SMP Angkasa',2,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(25,'Samsat Pajajaran',4,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(26,'SMK Negeri 12 Bandung',4,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(27,'Kampus 2 Sekolah Tinggi Ilmu Keperawatan (Stikep) PPNI Jawa Barat',4,'2020-12-29 08:59:12','2020-12-29 08:59:12'),
(28,'RS Melinda 2',5,'2020-12-29 08:58:09','2020-12-29 08:58:09'),
(29,'GOR Pajajaran',5,'2020-12-29 08:58:16','2020-12-29 08:58:16'),
(30,'Apotek Kimia Farma 14',5,'2020-12-29 08:58:23','2020-12-29 08:58:23'),
(31,'SMP Negeri 47 Bandung',6,'2020-12-29 08:59:10','2020-12-29 08:59:10'),
(32,'SMK Negeri 11 Bandung',6,'2020-12-29 08:59:12','2020-12-29 08:59:12');

/*Table structure for table `klasifikasi` */

DROP TABLE IF EXISTS `klasifikasi`;

CREATE TABLE `klasifikasi` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `id_lokasi` int(100) DEFAULT NULL,
  `luas_tanah` float DEFAULT NULL,
  `lahan_terpakai` float DEFAULT NULL,
  `lahan_tersisa` float DEFAULT NULL,
  `id_kelas` int(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

/*Data for the table `klasifikasi` */

insert  into `klasifikasi`(`id`,`id_lokasi`,`luas_tanah`,`lahan_terpakai`,`lahan_tersisa`,`id_kelas`,`created_at`,`updated_at`) values 
(1,31,391,50,340,NULL,'2021-01-07 11:40:07','0000-00-00 00:00:00'),
(2,32,555,100,455,NULL,'2021-01-07 11:40:09','0000-00-00 00:00:00'),
(3,33,3104,100,3004,NULL,'2021-01-07 11:40:10','0000-00-00 00:00:00'),
(4,34,400,50,350,NULL,'2021-01-07 11:40:11','0000-00-00 00:00:00'),
(5,35,2556,200,2356,NULL,'2021-01-07 11:40:12','0000-00-00 00:00:00'),
(6,36,400,50,350,NULL,'2021-01-07 11:40:14','0000-00-00 00:00:00'),
(7,37,6000,300,5700,NULL,'2021-01-07 11:40:16','0000-00-00 00:00:00'),
(8,38,500,250,250,NULL,'2021-01-07 11:40:17','0000-00-00 00:00:00'),
(9,39,3000,200,2800,NULL,'2021-01-07 11:40:19','0000-00-00 00:00:00'),
(10,40,481,50,431,NULL,'2021-01-07 11:40:20','0000-00-00 00:00:00'),
(11,41,130,30,100,NULL,'2021-01-07 11:40:22','0000-00-00 00:00:00'),
(12,42,140,40,100,NULL,'2021-01-07 11:40:23','0000-00-00 00:00:00'),
(13,43,1000,500,500,NULL,'2021-01-07 11:40:24','0000-00-00 00:00:00'),
(14,44,450,30,420,NULL,'2021-01-07 11:40:25','0000-00-00 00:00:00'),
(15,45,450,50,400,NULL,'2021-01-07 11:40:26','0000-00-00 00:00:00'),
(16,46,700,50,650,NULL,'2021-01-07 11:40:28','0000-00-00 00:00:00'),
(17,47,125,25,100,NULL,'2021-01-07 11:40:30','0000-00-00 00:00:00'),
(18,48,162,62,100,NULL,'2021-01-07 11:40:32','0000-00-00 00:00:00'),
(19,49,162,12,150,NULL,'2021-01-07 11:40:33','0000-00-00 00:00:00'),
(20,50,800,50,750,NULL,'2021-01-07 11:40:36','0000-00-00 00:00:00'),
(21,51,700,50,650,NULL,'2021-01-07 11:40:38','0000-00-00 00:00:00'),
(22,52,450,100,350,NULL,'2021-01-07 11:40:41','0000-00-00 00:00:00');

/*Table structure for table `lahan` */

DROP TABLE IF EXISTS `lahan`;

CREATE TABLE `lahan` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nama_lokasi` varchar(255) DEFAULT NULL,
  `id_kelurahan` varchar(255) DEFAULT NULL,
  `id_kecamatan` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;

/*Data for the table `lahan` */

insert  into `lahan`(`id`,`nama_lokasi`,`id_kelurahan`,`id_kecamatan`,`latitude`,`longitude`,`created_at`,`updated_at`) values 
(31,'Jl. Cipaganti No.25, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171\r\n','4','7','-6.900715755323390\r\n','107.60207176208400','2021-01-07 11:20:27','2021-01-07 10:22:47'),
(32,'Jl. DR. Abdul Rivai 11, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171\r\n','4','7','-6.904401026651400\r\n','107.60282278060900\r\n','2021-01-07 11:20:33','2021-01-07 10:23:12'),
(33,'Jl. Dr. Hatta, Tamansari, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40116\r\n','4','7','-6.901993887357850\r\n','107.60340213775600\r\n','2021-01-07 11:20:38','2021-01-07 10:23:18'),
(34,'Jl. Moh. Aleh, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171\r\n','1','7','-6.9083631938630100\r\n','107.59846687316800','2021-01-07 11:36:10','2021-01-07 10:23:51'),
(35,'Jl. Pajajaran No.42, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40173\r\n','1','7','-6.9079797597769800\r\n','107.60421752929600','2021-01-07 11:36:05','2021-01-07 10:23:56'),
(36,'Jl. Kebon Kawung 24, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171\r\n','1','7','-6.912453138098990\r\n','107.60211467742900','2021-01-07 11:29:50','2021-01-07 10:24:36'),
(37,'Jl. Pajajaran 109-113, Arjuna, Kec. Cicendo, Kota Bandung, Jawa Barat 40172\r\n','2','7','-6.907085079033930\r\n','107.59263038635200','2021-01-07 11:29:58','2021-01-07 10:24:56'),
(38,'Jl. Baladewa Asri 1 No.35, Pajajaran, Kec. Cicendo, Kota Bandung, Jawa Barat 40173\r\n','2','7','-6.9020577938689800\r\n','107.58975505828800','2021-01-07 11:36:18','2021-01-07 10:25:15'),
(39,'Jl. Samba, Arjuna, Kec. Cicendo, Kota Bandung, Jawa Barat 40172\r\n','2','7','-6.909854323464160\r\n','107.5934886932370','2021-01-07 11:30:13','2021-01-07 10:25:30'),
(40,'Jl. Sukajadi, Sukabungah, Kec. Sukajadi, Kota Bandung, Jawa Barat 40162\r\n','2','7','-6.896178358736570\r\n','107.59396076202300','2021-01-07 11:30:39','2021-01-07 10:25:47'),
(41,'Jl. Pasteur 33, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171\r\n','3','7','-6.900524035220580\r\n','107.5984239578240','2021-01-07 11:30:46','2021-01-07 10:26:04'),
(42,'Jl. Dr. Cipto No.5, RT.02, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171\r\n','3','7','-6.906446020324170\r\n','107.59932518005300','2021-01-07 11:30:58','2021-01-07 10:26:26'),
(43,'JL. Pasirkaliki 121-123, Bandung, 40173, Pasirkaliki, Cicendo, Bandung City, West Java 40171\r\n','3','7','-6.906339510455270\r\n','107.59675025939900\r\n','2021-01-07 11:31:08','2021-01-07 10:27:33'),
(44,'Jl. Prof. Eyckman, Pasteur, Kec. Sukajadi, Kota Bandung, Jawa Barat 40161\r\n','3','7','-6.896327475747130\r\n','107.59754419326700','2021-01-07 11:31:15','2021-01-07 10:27:49'),
(45,'JL. Patamon, No. 76A Rt. 03/01, Sindanglaya, Cimenyan, Bandung, 40195\r\n','5','7','-6.913688635126940\r\n','107.60971069335900','2021-01-07 11:31:24','2021-01-07 10:28:05'),
(46,'Jl. Sumatera, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115\r\n','5','7','-6.9082353825355400\r\n','107.61168479919400','2021-01-07 11:36:26','2021-01-07 10:28:20'),
(47,'Jl. Purnawarman No.23, Tamansari, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40116\r\n','5','7','-6.9066590399900200\r\n','107.60889530181800','2021-01-07 11:36:44','2021-01-07 10:28:36'),
(48,'Jl. Dr. Djunjunan No.194, Sukagalih, Kec. Sukajadi, Kota Bandung, Jawa Barat 40163\r\n','6','7','-6.892216089551120\r\n','107.58409023284900','2021-01-07 11:34:45','2021-01-07 10:28:52'),
(49,'Jl. Sukaraja 315-317, Sukaraja, Kec. Cicendo, Kota Bandung, Jawa Barat 40175\r\n','6','7','-6.8928338648836200\r\n','107.5747561454770','2021-01-07 11:36:51','2021-01-07 10:29:07'),
(50,'Jl. Kapten Tata Natanegara, Husen Sastranegara, Kec. Cicendo, Kota Bandung, Jawa Barat 40174\r\n','6','7','-6.8955818902249500\r\n','107.57999181747400','2021-01-07 11:37:01','2021-01-07 10:29:25'),
(51,'Jl. Dr. Djunjunan No.236, Husen Sastranegara, Kec. Cicendo, Kota Bandung, Jawa Barat 40174\r\n','6','7','-6.894133320713340\r\n','107.58052825927700','2021-01-07 11:33:14','2021-01-07 10:29:51');

/*Table structure for table `tempat` */

DROP TABLE IF EXISTS `tempat`;

CREATE TABLE `tempat` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nama` text DEFAULT NULL,
  `file` varchar(50) DEFAULT NULL,
  `role` int(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tempat` */

insert  into `tempat`(`id`,`nama`,`file`,`role`,`created_at`,`update_at`) values 
(1,'Arjuna','arjuna.geojson',2,'2021-01-05 18:11:15','0000-00-00 00:00:00'),
(2,'Husein Sastranegara','husein sastranegara.geojson',2,'2021-01-06 15:51:44','0000-00-00 00:00:00'),
(3,'Pajajaran','pajajaran.geojson',2,'2021-01-05 18:04:55','0000-00-00 00:00:00'),
(4,'Pamoyanan','pamoyanan.geojson',2,'2021-01-05 18:04:47','0000-00-00 00:00:00'),
(5,'Pasir Kaliki','pasirkaliki.geojson',2,'2021-01-05 21:39:10','0000-00-00 00:00:00'),
(6,'Sukaraja','sukaraja.geojson',2,'2021-01-05 18:04:28','0000-00-00 00:00:00'),
(7,'Cicendo','cicendo.geojson',1,'2021-01-05 18:04:37','0000-00-00 00:00:00');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nama` text DEFAULT NULL,
  `role` int(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
