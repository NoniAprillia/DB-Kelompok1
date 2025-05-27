/*
 Navicat MySQL Dump SQL

 Source Server         : sistem_manajemen_magang
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : sistem_manajemen_magang

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 20/05/2025 21:20:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for magang
-- ----------------------------
DROP TABLE IF EXISTS `magang`;
CREATE TABLE `magang`  (
  `id_magang` int NOT NULL AUTO_INCREMENT,
  `npm_mhs` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_perusahaan` int NULL DEFAULT NULL,
  `nidn_pembimbing` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tgl_mulai` date NULL DEFAULT NULL,
  `tgl_selesai` date NULL DEFAULT NULL,
  `status_magang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_magang`) USING BTREE,
  UNIQUE INDEX `npm_mhs`(`npm_mhs` ASC, `id_perusahaan` ASC) USING BTREE,
  INDEX `id_perusahaan`(`id_perusahaan` ASC) USING BTREE,
  INDEX `nidn_pembimbing`(`nidn_pembimbing` ASC) USING BTREE,
  CONSTRAINT `magang_ibfk_1` FOREIGN KEY (`npm_mhs`) REFERENCES `mahasiswa` (`npm_mhs`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `magang_ibfk_2` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan` (`id_perusahaan`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `magang_ibfk_3` FOREIGN KEY (`nidn_pembimbing`) REFERENCES `pembimbing` (`nidn_pembimbing`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of magang
-- ----------------------------
INSERT INTO `magang` VALUES (3, '230102030', 3010, '2000002', '2025-08-15', '2025-09-15', 'mandiri');

-- ----------------------------
-- Table structure for mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa`  (
  `npm_mhs` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nama_mhs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `prodi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `alamat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `no_telp` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`npm_mhs`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mahasiswa
-- ----------------------------
INSERT INTO `mahasiswa` VALUES ('230102030', 'Aulia Zuifani', 'Teknik Informatika', 'Jalan Ternate', '089979110352', 'Fani@gmail.com');
INSERT INTO `mahasiswa` VALUES ('230102039', 'Muhammad Alva Rezal', 'Teknik Informatika', 'Jalan Kuntul', '089979110281', 'Rezal@gmail.com');
INSERT INTO `mahasiswa` VALUES ('230102040', 'Noni Aprillia', 'Teknik Informatika', 'Jalan Kuntul', '089979110052', 'Noni@gmail.com');

-- ----------------------------
-- Table structure for pembimbing
-- ----------------------------
DROP TABLE IF EXISTS `pembimbing`;
CREATE TABLE `pembimbing`  (
  `nidn_pembimbing` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nama_pembimbing` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `no_telp` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nidn_pembimbing`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pembimbing
-- ----------------------------
INSERT INTO `pembimbing` VALUES ('2000001', 'adphr@gmail.com', 'Andesita Prihantara, S.T., M. Eng.', '811223344155');
INSERT INTO `pembimbing` VALUES ('2000002', 'fjrmdk@gmail.com', 'Fajar Mahardika, S.Kom., M.Kom', '813445566787');

-- ----------------------------
-- Table structure for perusahaan
-- ----------------------------
DROP TABLE IF EXISTS `perusahaan`;
CREATE TABLE `perusahaan`  (
  `id_perusahaan` int NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `no_telp` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `alamat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email_perusahaan` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_perusahaan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3013 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of perusahaan
-- ----------------------------
INSERT INTO `perusahaan` VALUES (3010, 'PT. Maju Sejahtera', '92187654321', 'Jl. Sudirman No.5, Jakarta', 'admin@ptmajusejahtera.com');
INSERT INTO `perusahaan` VALUES (3011, 'PT. Dharmapala Usaha Sukses', '8123679152', 'Jl. Tambakreja', 'dusclp@gmail.com');
INSERT INTO `perusahaan` VALUES (3012, 'PT Sukses Selalu', '08234567890', 'Jl. Bisnis N0.456, Bandung', 'contact@suksesselalu');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'aulia', '11111', 'admin');

-- ----------------------------
-- View structure for v_magangg
-- ----------------------------
DROP VIEW IF EXISTS `v_magangg`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_magangg` AS select `mahasiswa`.`nama_mhs` AS `nama_mhs`,`pembimbing`.`nama_pembimbing` AS `nama_pembimbing`,`perusahaan`.`id_perusahaan` AS `id_perusahaan`,`perusahaan`.`nama_perusahaan` AS `nama_perusahaan`,`magang`.`tgl_mulai` AS `tgl_mulai`,`magang`.`tgl_selesai` AS `tgl_selesai`,`magang`.`status_magang` AS `status_magang` from (((`magang` join `mahasiswa` on((`magang`.`npm_mhs` = `mahasiswa`.`npm_mhs`))) join `pembimbing` on((`magang`.`nidn_pembimbing` = `pembimbing`.`nidn_pembimbing`))) join `perusahaan` on((`magang`.`id_perusahaan` = `perusahaan`.`id_perusahaan`)));

SET FOREIGN_KEY_CHECKS = 1;
