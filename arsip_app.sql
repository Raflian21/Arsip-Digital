-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Agu 2023 pada 03.26
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsip_app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nip` varchar(22) DEFAULT NULL,
  `nohp` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `id_jabatan`, `username`, `nama_lengkap`, `nip`, `nohp`, `alamat`) VALUES
(1, 1, 'admin', 'Admin', '123123', '0812342324', 'Jl Ngalau'),
(3, NULL, 'admin2', 'admin2', NULL, '08123456789', 'Kota Padang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, ''),
(2, 'ketua'),
(3, 'sekretaris'),
(4, 'komisioner'),
(5, 'kasubbag');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_keterangan`
--

CREATE TABLE `jenis_keterangan` (
  `id_jenis_keterangan` int(11) NOT NULL,
  `jenis_keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_keterangan`
--

INSERT INTO `jenis_keterangan` (`id_jenis_keterangan`, `jenis_keterangan`) VALUES
(1, 'Surat Keterangan Usaha'),
(2, 'Surat Keterangan Domisili'),
(3, 'Surat Keterangan Rekomendasi Nikah'),
(4, 'Surat Keterangan Tidak Mampu'),
(5, 'Surat Keterangan Rentan Ekonomi'),
(6, 'Surat Keterangan Berkelakuan Baik'),
(7, 'Surat Keterangan Penghasilan'),
(8, 'Surat Keterangan Meninggal Dunia'),
(9, 'Surat Keterangan Beda Dokumen'),
(10, 'Surat Keterangan Digigit Hewan'),
(11, 'Surat Keterangan Anak Yatim');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepala_kantor`
--

CREATE TABLE `kepala_kantor` (
  `id_kepala_kantor` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nohp` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kepala_kantor`
--

INSERT INTO `kepala_kantor` (`id_kepala_kantor`, `id_jabatan`, `username`, `nama_lengkap`, `nip`, `nohp`, `alamat`) VALUES
(2, 2, 'candra', 'Candra Januardi, S.Ip', '19860101 2011011 001', '0812081212', 'Jl Padang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nip` varchar(22) NOT NULL,
  `nohp` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `id_jabatan`, `username`, `nama_lengkap`, `nip`, `nohp`, `alamat`) VALUES
(2, 3, 'pegawai', 'Pegawai', '912233282 282920 01292', '08123456789', 'Payakumuh'),
(3, 4, 'yoga', 'Yoga Tri Wahyudi', '912233282 282920 01292', '08123456789', 'Kota Padang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id_surat_keluar` int(11) NOT NULL,
  `nomor_surat` varchar(255) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `lampiran_surat` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `tujuan_surat` varchar(255) NOT NULL,
  `yg_bertandatgn` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_keluar`
--

INSERT INTO `surat_keluar` (`id_surat_keluar`, `nomor_surat`, `tanggal_surat`, `lampiran_surat`, `perihal`, `tujuan_surat`, `yg_bertandatgn`, `gambar`) VALUES
(1, '12341412', '2004-05-13', 'qwdwqdqw', 'makan', '123415', '', '4841-pem.jpeg'),
(2, '124234234', '2012-09-17', 'dqdqd', 'minum', '124234234', '4', '9047-draf.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keputusan`
--

CREATE TABLE `surat_keputusan` (
  `id_surat_keputusan` int(11) NOT NULL,
  `nomor_surat_keputusan` varchar(100) NOT NULL,
  `tentang` varchar(100) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `yg_bertandatgn` varchar(50) NOT NULL,
  `lampiran` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keterangan`
--

CREATE TABLE `surat_keterangan` (
  `id_surat_keterangan` int(11) NOT NULL,
  `id_jenis_keterangan` int(11) NOT NULL,
  `nomor_surat` varchar(255) NOT NULL,
  `pemohon` varchar(255) NOT NULL,
  `kepala_keluarga` varchar(255) NOT NULL,
  `tanggungan` varchar(255) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `yg_bertandatgn` varchar(255) NOT NULL,
  `yg_meninggal` varchar(255) NOT NULL,
  `keterangan_meninggal` varchar(255) NOT NULL,
  `ahli_waris` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_surat_masuk` int(11) NOT NULL,
  `asal_surat` varchar(255) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `nomor_surat` varchar(255) NOT NULL,
  `lampiran_surat` varchar(50) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `gambar` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_masuk`
--

INSERT INTO `surat_masuk` (`id_surat_masuk`, `asal_surat`, `tanggal_surat`, `nomor_surat`, `lampiran_surat`, `perihal`, `gambar`) VALUES
(1, 'Kantor Pertanahan Kota Payakumbuh', '2022-02-28', '024/UND- 13.76/I/2022', '1 Lembar', 'Pengambilan Sumpah Pantia Ajudikasi PTSL Tahun 2022', 0x323733312d616e696d2e6a7067),
(2, 'malang', '2005-04-13', '12345', 'rgregerg', 'sembako', 0x353939302d667572792e6a7067),
(3, 'malangg', '2017-11-17', '12678', 'wrffw', 'saldo', 0x343338312d6b70752e706e67),
(4, 'karlos', '2022-06-17', '87585', 'dytd', 'dana', 0x343230352d4b50555f4c6f676f2e706e67);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `ket` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `status`, `ket`) VALUES
(1, 'admin', 'admin', 1, 'admin'),
(5, 'candra', 'candra', 3, 'kepala kantor'),
(10, 'ahmad', 'ahmad', 3, 'kepala kantor'),
(12, 'admin2', 'admin2', 1, 'admin'),
(17, 'pegawai', 'pegawai', 2, 'pegawai'),
(20, 'yoga', 'yoga', 2, 'pegawai');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `jenis_keterangan`
--
ALTER TABLE `jenis_keterangan`
  ADD PRIMARY KEY (`id_jenis_keterangan`);

--
-- Indeks untuk tabel `kepala_kantor`
--
ALTER TABLE `kepala_kantor`
  ADD PRIMARY KEY (`id_kepala_kantor`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id_surat_keluar`);

--
-- Indeks untuk tabel `surat_keputusan`
--
ALTER TABLE `surat_keputusan`
  ADD PRIMARY KEY (`id_surat_keputusan`);

--
-- Indeks untuk tabel `surat_keterangan`
--
ALTER TABLE `surat_keterangan`
  ADD PRIMARY KEY (`id_surat_keterangan`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_surat_masuk`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `jenis_keterangan`
--
ALTER TABLE `jenis_keterangan`
  MODIFY `id_jenis_keterangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kepala_kantor`
--
ALTER TABLE `kepala_kantor`
  MODIFY `id_kepala_kantor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id_surat_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `surat_keputusan`
--
ALTER TABLE `surat_keputusan`
  MODIFY `id_surat_keputusan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_keterangan`
--
ALTER TABLE `surat_keterangan`
  MODIFY `id_surat_keterangan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_surat_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
