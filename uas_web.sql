-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jun 2021 pada 17.42
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_web`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `covid`
--

CREATE TABLE `covid` (
  `kode_daerah` char(5) NOT NULL,
  `nama_daerah` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `covid`
--

INSERT INTO `covid` (`kode_daerah`, `nama_daerah`) VALUES
('DIY', 'JOGJA'),
('DPK', 'DEPOK'),
('JKT', 'JAKARTA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pantauan`
--

CREATE TABLE `tb_pantauan` (
  `id_number` int(5) NOT NULL,
  `kode_daerah` char(5) NOT NULL,
  `Nama_daerah` varchar(50) NOT NULL,
  `positif_covid` varchar(100) NOT NULL,
  `dirawat` varchar(100) DEFAULT NULL,
  `sembuh` varchar(15) NOT NULL,
  `meninggal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pantauan`
--

INSERT INTO `tb_pantauan` (`id_number`, `kode_daerah`, `Nama_daerah`, `positif_covid`, `dirawat`, `sembuh`, `meninggal`) VALUES
(4, 'JKT', 'JAKARTA', '370.582', '3.463', '357.100', '6.160'),
(10, 'DPK', 'DEPOK', '200.002', '4.678', '467.200', '5.200'),
(12, 'DIY', 'JOGJA', '100.300', '2.965', '289.100', '1.500'),
(23, 'JKT', 'JAKARTA', '123123', ' 123123', '1231@13', ' 123123'),
(25, 'DPK', 'JAKARTA', '123123', ' 123123', '123', ' 123123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`) VALUES
(1, 'wira', '$2y$10$11ozkSKlDUurVR2e3bvdGurGWv2uqrxClGApj8t0pBnnE9ULWxNcy'),
(2, 'admin', '$2y$10$15w5WEl0gVtM1/JDAKmySek88wK4T1wrIIkHOhyUYZkV10dvfr1o2'),
(3, 'administrator', '$2y$10$BSdwXZrvkYvxaTBhbzhMleLfAi7PzoLOLD8Z9IuoB.UZ.lpcsjf42'),
(4, 'eki', '$2y$10$LUZvCLQGYMFGE5vswb6fguHwm6QmBMCTac2hW.dUiR.3MG6VxgTnK'),
(5, 'ekieki', '$2y$10$HjHpWdTx20yQjsK6QF5t7erViN6I0/jK3D9U71HijkOaepM.x8KqO');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `covid`
--
ALTER TABLE `covid`
  ADD PRIMARY KEY (`kode_daerah`);

--
-- Indeks untuk tabel `tb_pantauan`
--
ALTER TABLE `tb_pantauan`
  ADD PRIMARY KEY (`id_number`),
  ADD KEY `kode_daerah` (`kode_daerah`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_pantauan`
--
ALTER TABLE `tb_pantauan`
  MODIFY `id_number` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_pantauan`
--
ALTER TABLE `tb_pantauan`
  ADD CONSTRAINT `covid` FOREIGN KEY (`kode_daerah`) REFERENCES `covid` (`kode_daerah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
