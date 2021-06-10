-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jun 2021 pada 09.24
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gap_analysis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `business_goal`
--

CREATE TABLE `business_goal` (
  `ID_BUSINESS` int(11) NOT NULL,
  `ID_PERSPECTIVE` int(11) NOT NULL,
  `DESC_BUSINESS` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi_kriteria`
--

CREATE TABLE `informasi_kriteria` (
  `ID_KRITERIA` int(11) NOT NULL,
  `NAMA_KRITERIA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_maturity`
--

CREATE TABLE `info_maturity` (
  `ID_MATURIY` int(11) NOT NULL,
  `ID_JAWABAN` int(11) NOT NULL,
  `ID_USER` int(11) NOT NULL,
  `MATURITY_AS_IS` float DEFAULT NULL,
  `MATURITY_TARGET` float NOT NULL,
  `GAP` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `it_goals`
--

CREATE TABLE `it_goals` (
  `ID_IT_GOALS` int(11) NOT NULL,
  `IT_GOALS` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `it_process`
--

CREATE TABLE `it_process` (
  `ID_IT_PROCESS` int(11) NOT NULL,
  `ID_JENIS_IT` int(11) NOT NULL,
  `KODE_IT` varchar(4) NOT NULL,
  `IT_PROCESS` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_it_proses_kuesioner`
--

CREATE TABLE `jawaban_it_proses_kuesioner` (
  `ID_JAWABAN` int(11) NOT NULL,
  `ID_MATURIY` int(11) NOT NULL,
  `ID_REKOMENDASI` int(11) DEFAULT NULL,
  `ID_USER` int(11) NOT NULL,
  `ID_IT_PROCESS` int(11) NOT NULL,
  `JAWABAN` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`JAWABAN`)),
  `LEVEL` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`LEVEL`)),
  `NILAI` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`NILAI`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_it_process`
--

CREATE TABLE `jenis_it_process` (
  `ID_JENIS_IT` int(11) NOT NULL,
  `NAMA_JENIS` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_pertanyaan`
--

CREATE TABLE `list_pertanyaan` (
  `ID_PERTANYAAN` int(11) NOT NULL,
  `ID_IT_PROCESS` int(11) NOT NULL,
  `DESKRIP_PERTANYAAN` varchar(1000) NOT NULL,
  `LEVEL` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`LEVEL`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `memilih_2`
--

CREATE TABLE `memilih_2` (
  `ID_USER` int(11) NOT NULL,
  `ID_BUSINESS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `memiliki`
--

CREATE TABLE `memiliki` (
  `ID_BUSINESS` int(11) NOT NULL,
  `ID_KRITERIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mempunyai`
--

CREATE TABLE `mempunyai` (
  `ID_BUSINESS` int(11) NOT NULL,
  `ID_IT_GOALS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mempunyai_3`
--

CREATE TABLE `mempunyai_3` (
  `ID_IT_GOALS` int(11) NOT NULL,
  `ID_IT_PROCESS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perspective_goal`
--

CREATE TABLE `perspective_goal` (
  `ID_PERSPECTIVE` int(11) NOT NULL,
  `PERSPECTIVE` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perspective_goal`
--

INSERT INTO `perspective_goal` (`ID_PERSPECTIVE`, `PERSPECTIVE`) VALUES
(1, 'Financial Perspective'),
(2, 'Customer Perspective'),
(3, 'Internal Perspective'),
(4, 'Learning and Growth Perspective');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekomendasi`
--

CREATE TABLE `rekomendasi` (
  `ID_REKOMENDASI` int(11) NOT NULL,
  `ID_JAWABAN` int(11) NOT NULL,
  `DESKRIP_REKOMENDASI` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`DESKRIP_REKOMENDASI`)),
  `LEVEL` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`LEVEL`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `ID_USER` int(11) NOT NULL,
  `NAMA_USER` varchar(255) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `NO_HANDPHONE` varchar(12) NOT NULL,
  `ALAMAT` varchar(255) NOT NULL,
  `ROLE` enum('admin','user') DEFAULT NULL,
  `STATUS` enum('aktif','tidak aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`ID_USER`, `NAMA_USER`, `USERNAME`, `EMAIL`, `PASSWORD`, `NO_HANDPHONE`, `ALAMAT`, `ROLE`, `STATUS`) VALUES
(1, 'Rida Adila', 'ridaadila', 'ridaadila10@gmail.com', 'Panda123', '082140063816', 'Surabaya 78', 'user', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `business_goal`
--
ALTER TABLE `business_goal`
  ADD PRIMARY KEY (`ID_BUSINESS`),
  ADD KEY `FK_MEMPUNYAI_6` (`ID_PERSPECTIVE`);

--
-- Indeks untuk tabel `informasi_kriteria`
--
ALTER TABLE `informasi_kriteria`
  ADD PRIMARY KEY (`ID_KRITERIA`);

--
-- Indeks untuk tabel `info_maturity`
--
ALTER TABLE `info_maturity`
  ADD PRIMARY KEY (`ID_MATURIY`),
  ADD KEY `FK_MEMILIKI_7` (`ID_JAWABAN`),
  ADD KEY `FK_MEMPUNYAI_7` (`ID_USER`);

--
-- Indeks untuk tabel `it_goals`
--
ALTER TABLE `it_goals`
  ADD PRIMARY KEY (`ID_IT_GOALS`);

--
-- Indeks untuk tabel `it_process`
--
ALTER TABLE `it_process`
  ADD PRIMARY KEY (`ID_IT_PROCESS`),
  ADD KEY `FK_MEMPUNYAI_5` (`ID_JENIS_IT`);

--
-- Indeks untuk tabel `jawaban_it_proses_kuesioner`
--
ALTER TABLE `jawaban_it_proses_kuesioner`
  ADD PRIMARY KEY (`ID_JAWABAN`),
  ADD KEY `FK_MEMILIKI_11` (`ID_MATURIY`),
  ADD KEY `FK_MEMILIKI_8` (`ID_REKOMENDASI`),
  ADD KEY `FK_MENGISI` (`ID_USER`),
  ADD KEY `FK_RELATIONSHIP_9` (`ID_IT_PROCESS`);

--
-- Indeks untuk tabel `jenis_it_process`
--
ALTER TABLE `jenis_it_process`
  ADD PRIMARY KEY (`ID_JENIS_IT`);

--
-- Indeks untuk tabel `list_pertanyaan`
--
ALTER TABLE `list_pertanyaan`
  ADD PRIMARY KEY (`ID_PERTANYAAN`),
  ADD KEY `FK_MEMILIKI_9` (`ID_IT_PROCESS`);

--
-- Indeks untuk tabel `memilih_2`
--
ALTER TABLE `memilih_2`
  ADD PRIMARY KEY (`ID_USER`,`ID_BUSINESS`),
  ADD KEY `FK_MEMILIH_3` (`ID_BUSINESS`);

--
-- Indeks untuk tabel `memiliki`
--
ALTER TABLE `memiliki`
  ADD PRIMARY KEY (`ID_BUSINESS`,`ID_KRITERIA`),
  ADD KEY `FK_MEMILIKI2` (`ID_KRITERIA`);

--
-- Indeks untuk tabel `mempunyai`
--
ALTER TABLE `mempunyai`
  ADD PRIMARY KEY (`ID_BUSINESS`,`ID_IT_GOALS`),
  ADD KEY `FK_MEMPUNYAI2` (`ID_IT_GOALS`);

--
-- Indeks untuk tabel `mempunyai_3`
--
ALTER TABLE `mempunyai_3`
  ADD PRIMARY KEY (`ID_IT_GOALS`,`ID_IT_PROCESS`),
  ADD KEY `FK_MEMPUNYAI_4` (`ID_IT_PROCESS`);

--
-- Indeks untuk tabel `perspective_goal`
--
ALTER TABLE `perspective_goal`
  ADD PRIMARY KEY (`ID_PERSPECTIVE`);

--
-- Indeks untuk tabel `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD PRIMARY KEY (`ID_REKOMENDASI`),
  ADD KEY `FK_MEMILIKI_10` (`ID_JAWABAN`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID_USER`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `business_goal`
--
ALTER TABLE `business_goal`
  MODIFY `ID_BUSINESS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `informasi_kriteria`
--
ALTER TABLE `informasi_kriteria`
  MODIFY `ID_KRITERIA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `info_maturity`
--
ALTER TABLE `info_maturity`
  MODIFY `ID_MATURIY` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `it_goals`
--
ALTER TABLE `it_goals`
  MODIFY `ID_IT_GOALS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `it_process`
--
ALTER TABLE `it_process`
  MODIFY `ID_IT_PROCESS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jawaban_it_proses_kuesioner`
--
ALTER TABLE `jawaban_it_proses_kuesioner`
  MODIFY `ID_JAWABAN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jenis_it_process`
--
ALTER TABLE `jenis_it_process`
  MODIFY `ID_JENIS_IT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `list_pertanyaan`
--
ALTER TABLE `list_pertanyaan`
  MODIFY `ID_PERTANYAAN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `perspective_goal`
--
ALTER TABLE `perspective_goal`
  MODIFY `ID_PERSPECTIVE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rekomendasi`
--
ALTER TABLE `rekomendasi`
  MODIFY `ID_REKOMENDASI` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `business_goal`
--
ALTER TABLE `business_goal`
  ADD CONSTRAINT `FK_MEMPUNYAI_6` FOREIGN KEY (`ID_PERSPECTIVE`) REFERENCES `perspective_goal` (`ID_PERSPECTIVE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `info_maturity`
--
ALTER TABLE `info_maturity`
  ADD CONSTRAINT `FK_MEMILIKI_7` FOREIGN KEY (`ID_JAWABAN`) REFERENCES `jawaban_it_proses_kuesioner` (`ID_JAWABAN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MEMPUNYAI_7` FOREIGN KEY (`ID_USER`) REFERENCES `users` (`ID_USER`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `it_process`
--
ALTER TABLE `it_process`
  ADD CONSTRAINT `FK_MEMPUNYAI_5` FOREIGN KEY (`ID_JENIS_IT`) REFERENCES `jenis_it_process` (`ID_JENIS_IT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jawaban_it_proses_kuesioner`
--
ALTER TABLE `jawaban_it_proses_kuesioner`
  ADD CONSTRAINT `FK_MEMILIKI_11` FOREIGN KEY (`ID_MATURIY`) REFERENCES `info_maturity` (`ID_MATURIY`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MEMILIKI_8` FOREIGN KEY (`ID_REKOMENDASI`) REFERENCES `rekomendasi` (`ID_REKOMENDASI`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MENGISI` FOREIGN KEY (`ID_USER`) REFERENCES `users` (`ID_USER`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`ID_IT_PROCESS`) REFERENCES `it_process` (`ID_IT_PROCESS`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `list_pertanyaan`
--
ALTER TABLE `list_pertanyaan`
  ADD CONSTRAINT `FK_MEMILIKI_9` FOREIGN KEY (`ID_IT_PROCESS`) REFERENCES `it_process` (`ID_IT_PROCESS`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `memilih_2`
--
ALTER TABLE `memilih_2`
  ADD CONSTRAINT `FK_MEMILIH_2` FOREIGN KEY (`ID_USER`) REFERENCES `users` (`ID_USER`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MEMILIH_3` FOREIGN KEY (`ID_BUSINESS`) REFERENCES `business_goal` (`ID_BUSINESS`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `memiliki`
--
ALTER TABLE `memiliki`
  ADD CONSTRAINT `FK_MEMILIKI` FOREIGN KEY (`ID_BUSINESS`) REFERENCES `business_goal` (`ID_BUSINESS`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MEMILIKI2` FOREIGN KEY (`ID_KRITERIA`) REFERENCES `informasi_kriteria` (`ID_KRITERIA`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mempunyai`
--
ALTER TABLE `mempunyai`
  ADD CONSTRAINT `FK_MEMPUNYAI` FOREIGN KEY (`ID_BUSINESS`) REFERENCES `business_goal` (`ID_BUSINESS`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MEMPUNYAI2` FOREIGN KEY (`ID_IT_GOALS`) REFERENCES `it_goals` (`ID_IT_GOALS`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mempunyai_3`
--
ALTER TABLE `mempunyai_3`
  ADD CONSTRAINT `FK_MEMPUNYAI_3` FOREIGN KEY (`ID_IT_GOALS`) REFERENCES `it_goals` (`ID_IT_GOALS`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MEMPUNYAI_4` FOREIGN KEY (`ID_IT_PROCESS`) REFERENCES `it_process` (`ID_IT_PROCESS`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD CONSTRAINT `FK_MEMILIKI_10` FOREIGN KEY (`ID_JAWABAN`) REFERENCES `jawaban_it_proses_kuesioner` (`ID_JAWABAN`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
