-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 05:42 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata semarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `wisata semarang`
--

CREATE TABLE `wisata semarang` (
  `id` int(11) NOT NULL,
  `nama wisata` varchar(225) COLLATE utf8mb4_croatian_ci NOT NULL,
  `alamat wisata` varchar(255) COLLATE utf8mb4_croatian_ci NOT NULL,
  `deskripsi wisata` text COLLATE utf8mb4_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `wisata semarang`
--

INSERT INTO `wisata semarang` (`id`, `nama wisata`, `alamat wisata`, `deskripsi wisata`) VALUES
(1, 'lawang sewu', 'jl.pemuda, sekayu, kec.semarang tengah, kota semarang', 'Lawang Sewu adalah gedung bersejarah milik PT Kereta Api Indonesia (Persero) yang awalnya digunakan sebagai Kantor Pusat perusahaan kereta api swasta Nederlandsch-Indische Spoorweg Maatschappij (NISM). Gedung Lawang Sewu dibangun secara bertahap di atas lahan seluas 18.232 m2.'),
(2, 'simpang lima ', 'Jalan Pahlawan, Jalan Pandanaran, Jalan Ahmad Yani, Jalan Gajah Mada dan Jalan Ahmad Dahlan.', 'sebuah persimpangan yang berada di pusat kota Semarang. Persimpangan ini merupakan pertemuan dari lima jalan yang menyatu, yaitu Jalan Pahlawan, Jalan Pandanaran, Jalan Ahmad Yani, Jalan Gajah Mada dan Jalan Ahmad Dahlan. Di tengahnya terdapat lapangan, yang disebut juga Lapangan Pancasila.'),
(3, 'pantai marina semarang ', '29WP+4FC, Tawangsari, Kota Semarang, Jawa Tengah 50144', 'merupakan salah satu taman rekreasi pantai di kota Semarang yang bersebelahan dengan PRPP dan Mareokoco, setelah perumahan puri Anjasmoro Semarang, Kecamatan Semarang utara. Di pantai ini pengujung bisa berkeliling pantai menggunakan perahu, memancing atau sekedar duduk bersantai menikmati deburan ombak.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wisata semarang`
--
ALTER TABLE `wisata semarang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wisata semarang`
--
ALTER TABLE `wisata semarang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
