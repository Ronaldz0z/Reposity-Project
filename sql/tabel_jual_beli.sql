-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Sep 2023 pada 06.26
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
-- Database: `tabel_jual_beli`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_barang`
--

CREATE TABLE `tabel_barang` (
  `ID_Barang` int(11) NOT NULL,
  `Nama_Barang` varchar(20) NOT NULL,
  `Harga_Barang` int(12) NOT NULL,
  `Jenis_Barang` varchar(20) NOT NULL,
  `ID_Toko` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_barang`
--

INSERT INTO `tabel_barang` (`ID_Barang`, `Nama_Barang`, `Harga_Barang`, `Jenis_Barang`, `ID_Toko`) VALUES
(1, 'Monitor', 4000000, 'Componen Computer', 1),
(2, 'Keyboard', 350000, 'Componen Computer', 1),
(3, 'Mouse', 120000, 'Componen Computer', 2),
(4, 'laptop', 44000000, 'Componen Computer', 3),
(5, 'HDMI', 50000, 'Componen Computer', 2),
(6, 'Speaker', 135000, 'Componen Computer', 1),
(7, 'MousePad', 67000, 'Componen Computer', 2),
(8, 'TP-LINK722N', 125000, 'Componen Computer', 2),
(9, 'Flasdisk', 800000, 'Componen Computer', 3),
(10, 'Card Reader', 100000, 'Componen Computer', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pembeli`
--

CREATE TABLE `tabel_pembeli` (
  `ID_Pembeli` int(11) NOT NULL,
  `Nama_Pembeli` varchar(20) NOT NULL,
  `Alamat_Pembeli` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_pembeli`
--

INSERT INTO `tabel_pembeli` (`ID_Pembeli`, `Nama_Pembeli`, `Alamat_Pembeli`) VALUES
(1, 'Aria', 'Jl.ImogiriTimur'),
(2, 'Rizky', 'Jl.Parangtritis'),
(3, 'Dina', 'Jl.JenderalSudirman'),
(4, 'Rayhan', 'Jl. Palagan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_supplier`
--

CREATE TABLE `tabel_supplier` (
  `ID_Supplier` int(11) NOT NULL,
  `Nama_Supplier` varchar(20) NOT NULL,
  `Alamat_Supplier` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_supplier`
--

INSERT INTO `tabel_supplier` (`ID_Supplier`, `Nama_Supplier`, `Alamat_Supplier`) VALUES
(1, 'PT, Surakarta', 'Jl. Jenderal Sudirma'),
(2, 'PT, Kamboja', 'Jl. Gatot Subroto, S');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_toko`
--

CREATE TABLE `tabel_toko` (
  `ID_Toko` int(11) NOT NULL,
  `Nama_toko` varchar(20) NOT NULL,
  `Pemiliki_Toko` varchar(20) NOT NULL,
  `ID_Suppiler` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_toko`
--

INSERT INTO `tabel_toko` (`ID_Toko`, `Nama_toko`, `Pemiliki_Toko`, `ID_Suppiler`) VALUES
(1, 'KomputerTech', 'Arif Susanto', 1),
(2, 'Motherboard Master', 'ArifSusanto', 2),
(3, 'RAM Revolution', 'Rini Setiawan', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `ID_Transaksi` int(11) NOT NULL,
  `Tanggal_transaksi` date NOT NULL,
  `Nama_Pembeli` varchar(10) NOT NULL,
  `Total_Bayar` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`ID_Transaksi`, `Tanggal_transaksi`, `Nama_Pembeli`, `Total_Bayar`) VALUES
(1, '2021-01-17', 'Aria', 12000000),
(2, '2023-03-18', 'Aria', 700000),
(3, '2020-04-19', 'Aria', 120000),
(4, '2021-11-20', 'Rizky', 44000000),
(5, '2023-01-21', 'Rizky', 300000),
(6, '2023-01-22', 'Rizky', 945000),
(7, '2023-07-23', 'Rizky', 201000),
(8, '2023-06-24', 'Dina', 1250000),
(9, '2020-12-25', 'Rayhan', 8800000),
(10, '2017-11-26', 'Rayhan', 400000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_transaksi_barang`
--

CREATE TABLE `tabel_transaksi_barang` (
  `ID_Transaksi` int(11) NOT NULL,
  `Tanggal_Transaksi` date NOT NULL,
  `ID_Pembeli` int(11) NOT NULL,
  `ID_Barang` int(11) NOT NULL,
  `Jumlah_Beli_Barang` int(5) NOT NULL,
  `Total_Bayar` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_transaksi_barang`
--

INSERT INTO `tabel_transaksi_barang` (`ID_Transaksi`, `Tanggal_Transaksi`, `ID_Pembeli`, `ID_Barang`, `Jumlah_Beli_Barang`, `Total_Bayar`) VALUES
(1, '2021-01-17', 1, 1, 3, 12000000),
(2, '2023-03-18', 1, 2, 2, 700000),
(3, '2020-05-19', 1, 3, 1, 120000),
(4, '2021-11-20', 2, 4, 1, 44000000),
(5, '2021-01-21', 3, 5, 6, 300000),
(6, '2021-01-22', 2, 6, 7, 945000),
(7, '2021-07-23', 4, 7, 3, 201000),
(8, '2016-06-24', 1, 8, 10, 1250000),
(9, '2020-12-25', 3, 9, 11, 8800000),
(10, '2017-11-26', 3, 10, 4, 400000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`ID_Barang`),
  ADD KEY `FK_Toko` (`ID_Toko`);

--
-- Indeks untuk tabel `tabel_pembeli`
--
ALTER TABLE `tabel_pembeli`
  ADD PRIMARY KEY (`ID_Pembeli`);

--
-- Indeks untuk tabel `tabel_supplier`
--
ALTER TABLE `tabel_supplier`
  ADD PRIMARY KEY (`ID_Supplier`);

--
-- Indeks untuk tabel `tabel_toko`
--
ALTER TABLE `tabel_toko`
  ADD PRIMARY KEY (`ID_Toko`),
  ADD KEY `FK_supplier` (`ID_Suppiler`);

--
-- Indeks untuk tabel `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`ID_Transaksi`);

--
-- Indeks untuk tabel `tabel_transaksi_barang`
--
ALTER TABLE `tabel_transaksi_barang`
  ADD PRIMARY KEY (`ID_Transaksi`),
  ADD KEY `ID_Pembeli` (`ID_Pembeli`),
  ADD KEY `FK_Barang` (`ID_Barang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  MODIFY `ID_Barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tabel_pembeli`
--
ALTER TABLE `tabel_pembeli`
  MODIFY `ID_Pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tabel_supplier`
--
ALTER TABLE `tabel_supplier`
  MODIFY `ID_Supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tabel_toko`
--
ALTER TABLE `tabel_toko`
  MODIFY `ID_Toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  MODIFY `ID_Transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tabel_transaksi_barang`
--
ALTER TABLE `tabel_transaksi_barang`
  MODIFY `ID_Transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD CONSTRAINT `FK_Toko` FOREIGN KEY (`ID_Toko`) REFERENCES `tabel_toko` (`ID_Toko`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tabel_toko`
--
ALTER TABLE `tabel_toko`
  ADD CONSTRAINT `FK_supplier` FOREIGN KEY (`ID_Suppiler`) REFERENCES `tabel_supplier` (`ID_Supplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tabel_transaksi_barang`
--
ALTER TABLE `tabel_transaksi_barang`
  ADD CONSTRAINT `FK_Barang` FOREIGN KEY (`ID_Barang`) REFERENCES `tabel_barang` (`ID_Barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Pembeli` FOREIGN KEY (`ID_Pembeli`) REFERENCES `tabel_pembeli` (`ID_Pembeli`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
