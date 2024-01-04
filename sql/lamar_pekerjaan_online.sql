-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Nov 2023 pada 05.15
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lamar pekerjaan online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelamar`
--

CREATE TABLE `pelamar` (
  `nama_pelamar` int(50) NOT NULL,
  `cv` varchar(225) NOT NULL,
  `ijasah` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `platfrom lamaran online`
--

CREATE TABLE `platfrom lamaran online` (
  `No_id` int(11) NOT NULL,
  `Nama_akun` varchar(225) NOT NULL,
  `Pendidikan_terakhir` varchar(225) NOT NULL,
  `Pengalaman_kerja` varchar(225) NOT NULL,
  `Keahlian` varchar(225) NOT NULL,
  `Biodata` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tempat yang dilamar`
--

CREATE TABLE `tempat yang dilamar` (
  `Jenis_pekerjaan` int(11) NOT NULL,
  `Status_pekerjaan` int(11) NOT NULL,
  `persyaratan_pekerjaan` int(11) NOT NULL,
  `Job_deskripsi` int(11) NOT NULL,
  `Id_pekerjaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pelamar`
--
ALTER TABLE `pelamar`
  ADD PRIMARY KEY (`nama_pelamar`);

--
-- Indeks untuk tabel `platfrom lamaran online`
--
ALTER TABLE `platfrom lamaran online`
  ADD PRIMARY KEY (`No_id`);

--
-- Indeks untuk tabel `tempat yang dilamar`
--
ALTER TABLE `tempat yang dilamar`
  ADD PRIMARY KEY (`Id_pekerjaan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pelamar`
--
ALTER TABLE `pelamar`
  MODIFY `nama_pelamar` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `platfrom lamaran online`
--
ALTER TABLE `platfrom lamaran online`
  MODIFY `No_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pelamar`
--
ALTER TABLE `pelamar`
  ADD CONSTRAINT `fk_nama` FOREIGN KEY (`nama_pelamar`) REFERENCES `platfrom lamaran online` (`No_id`);

--
-- Ketidakleluasaan untuk tabel `tempat yang dilamar`
--
ALTER TABLE `tempat yang dilamar`
  ADD CONSTRAINT `fk_id` FOREIGN KEY (`Id_pekerjaan`) REFERENCES `platfrom lamaran online` (`No_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
