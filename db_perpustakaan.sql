-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26 Feb 2021 pada 04.45
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `nis` int(10) NOT NULL,
  `nama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tempat_lahir` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('l','p') COLLATE latin1_general_ci NOT NULL,
  `kelas` enum('X','XI','XII') COLLATE latin1_general_ci NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tb_anggota`
--

INSERT INTO `tb_anggota` (`nis`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `kelas`, `tgl_input`) VALUES
(1111, 'Caryta Angelina', 'Karanganyar', '2020-10-23', 'p', 'XI', '2021-02-10 02:37:27'),
(1112, 'Anindya', 'Karanganyar', '2020-10-31', 'p', 'XI', '2020-10-23 01:55:17'),
(1113, 'Banuwati', 'Sukoharjo', '2020-11-20', 'p', 'XII', '2020-11-04 02:18:11'),
(1114, 'Sandrina', 'Jakarta', '2021-02-01', 'p', 'XI', '2021-02-01 03:47:46'),
(11115, 'Angel', 'Jakarta', '2020-12-30', 'l', 'XII', '2021-02-10 02:38:10'),
(1555, 'Deavita', 'Palur', '2021-02-24', 'p', 'XII', '2021-02-24 10:42:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `pengarang` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `penerbit` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tahun_terbit` varchar(4) COLLATE latin1_general_ci NOT NULL,
  `isbn` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `lokasi` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `jumlah_buku`, `lokasi`, `tgl_input`) VALUES
(27, 'Bahasa Indonesia', 'Nurul Akhma', 'Erlangga', '2008', '1234556', 2, 'Rak 2', '2020-11-04 01:58:27'),
(31, 'PBO', 'Caryta', 'Angelina', '2010', '0909', 0, 'Rak 2', '2021-02-01 03:48:36'),
(29, 'Basis Data', 'Imam', 'Erlangga', '2012', '11111122222', 2, 'Rak 1', '2021-02-01 03:48:41'),
(30, 'Editing Video', 'Lugas', 'Yoga', '2009', '7777666666', 2, 'Rak 1', '2021-02-19 12:18:18'),
(32, 'Matematika', 'Erlangga', 'Gramedia', '2014', '123456', 3, 'Rak 2', '2021-02-19 12:23:33'),
(33, 'Tematik 6', 'Ikha Sulistiyawati', 'Fokus', '1992', '978602333', 2, 'Rak 1', '2021-02-25 07:10:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_lokasi`
--

CREATE TABLE `tb_lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `lokasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_lokasi`
--

INSERT INTO `tb_lokasi` (`id_lokasi`, `lokasi`) VALUES
(1, 'Rak 1'),
(4, 'Rak 2'),
(5, 'Rak 3'),
(6, 'Rak 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `judul` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `nis` int(11) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tgl_pinjam` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `tgl_kembali` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `id_buku`, `judul`, `nis`, `nama`, `tgl_pinjam`, `tgl_kembali`, `status`, `tgl_input`) VALUES
(385, 30, 'Editing Video', 1113, 'Banuwati', '19-02-2021', '26-02-2022', 'Pinjam', '2021-02-19 12:22:18'),
(384, 31, 'PBO', 1114, 'Sandrina', '01-02-2021', '08-02-2022', 'Pinjam', '2021-02-01 03:48:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `tipe` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`, `tipe`) VALUES
(1, 'admin', 'admin', 'Caryta', 'admin'),
(2, 'caryta', 'caryta', 'manda', 'user'),
(12, 'admin', 'admin', 'Diva', 'admin'),
(2222, 'caryta', 'caryta', 'manda', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- Indexes for table `tb_lokasi`
--
ALTER TABLE `tb_lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `tb_lokasi`
--
ALTER TABLE `tb_lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
