-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Des 2023 pada 07.39
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keamanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mpu6050`
--

CREATE TABLE `mpu6050` (
  `id` int(15) NOT NULL,
  `status_sensor` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mpu6050`
--

INSERT INTO `mpu6050` (`id`, `status_sensor`, `updated_at`, `created_at`) VALUES
(139, 'Normal', '2023-12-15 06:38:55', '2023-12-15 06:38:55'),
(140, 'Belakang', '2023-12-15 06:38:57', '2023-12-15 06:38:57'),
(141, 'Normal', '2023-12-15 06:38:59', '2023-12-15 06:38:59'),
(142, 'Kiri', '2023-12-15 06:39:02', '2023-12-15 06:39:02');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mpu6050`
--
ALTER TABLE `mpu6050`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mpu6050`
--
ALTER TABLE `mpu6050`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
