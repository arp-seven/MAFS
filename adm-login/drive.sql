-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Des 2021 pada 03.20
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drive`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok`
--

CREATE TABLE `kelompok` (
  `id` int(10) NOT NULL,
  `nama_kelompok` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ketua` varchar(50) NOT NULL,
  `link` varchar(255) CHARACTER SET latin1 NOT NULL,
  `wa` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelompok`
--

INSERT INTO `kelompok` (`id`, `nama_kelompok`, `ketua`, `link`, `wa`) VALUES
(1, 'Kelompok Pak Bagus W.P | SI', 'Agus', 'https://drive.google.com/drive/folders/1PJTw1dVYzgrKcZhnz2IWqGoVIbwNN9Dw?usp=sharing', '083819867469'),
(2, 'Kelompok Pak Deni Muharram | SI', 'Mulyana', 'https://drive.google.com/drive/folders/1QtQm0j1dVW5vKAX-w-B0tpxsvqzwCFDY?usp=sharing', '089671624002'),
(3, 'Kelompok Dr Dayuf Jusuf | SI', 'Mutiara Rachim S', 'https://drive.google.com/drive/folders/1vbI42XLJL5PrcFneVr9XymrTJFihUTjY?usp=sharing', '085773951109'),
(4, 'Kelompok Pak Ilham Aristanto | DM', 'Diki Wahyudi', 'https://drive.google.com/drive/folders/1IeebgTfoK0bUyDcO0YJx3MjodNHp0Q1h?usp=sharing', '08567609213'),
(5, 'Kelompok Pak Samsuri Yahya | SPK ', 'Ahmad Muhajir', 'https://drive.google.com/drive/folders/1PyGO4RjFRQ-YlygVgtWqwjST4KCHnpef?usp=sharing', '081288630454'),
(6, 'Kelompok Pak Suhendra Anjar Dinata | SI', 'Rizki Amalia Anisa', 'https://drive.google.com/drive/folders/1Ccxx8X_WwpWS9rvLYB4IBb9PlTFTBwC7?usp=sharing', '087888323283'),
(7, 'Kelompok Pak Victor Ilyas Sugara | SI', 'M Haris Suhada', 'https://drive.google.com/drive/folders/1dAX9g3Z-7GQeaS67u3qOR6NfTt-eidlt?usp=sharing', '08999575181');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 NOT NULL,
  `usertype` varchar(25) NOT NULL,
  `link` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `usertype`, `link`) VALUES
(1, 'admin1', 'admin@admin.com', 'mimin:07', 'admin', ''),
(11, 'Dosen2', 'dosen2@gmail.com', '332211', 'dosen', '-'),
(12, 'Dosen1', 'dosen1@gmail.com', '112233', 'dosen', '-'),
(14, 'Agus', 'agus@gmail.com', '123', 'mahasiswa', 'https://drive.google.com/drive/folders/1j-VLv-X55_DS0lQ2z_8csw5t3SfARV4K?usp=sharing'),
(15, 'Mutaz', 'mutaz@gmail.com', '123', 'mahasiswa', 'https://drive.google.com/drive/folders/1pyS1v2uM-29m1Xrc_2glGhoL4LEPe8Q5?usp=sharing'),
(16, 'Dendi', 'dendi@gmail.com', '123', 'mahasiswa', 'https://drive.google.com/drive/folders/1uPImoHdfkDjJctFMeGmahNUBx864bwWP?usp=sharing'),
(17, 'Anshar', 'ansar@gmail.com', '123', 'mahasiswa', 'https://drive.google.com/drive/folders/1y7XjR78_yS5rpQv9_QwOvFO8WvQ78mif?usp=sharing'),
(18, 'Falih', 'falih@gmail.com', '123', 'mahasiswa', 'https://drive.google.com/drive/folders/17VJB8-_2s3-ArUx0kjnEeVIl5aSs2YPq?usp=sharing'),
(19, 'Rafid', 'rafid@gmail.com', '123', 'mahasiswa', 'https://drive.google.com/drive/folders/1i-NuJKQq4U27VUCybVULXtz8PkH2LQbd?usp=sharing'),
(20, 'Rendra', 'rendra@gmail.com', '123', 'mahasiswa', 'https://drive.google.com/drive/folders/1EU-ui6h59Bl27ObLbVZRsrquSkiEQztT?usp=sharing'),
(21, 'Asep', 'asep@gmail.com', '321', 'mahasiswa', 'https://drive.google.com/drive/folders/1QjYzYfG9ixDEEpDGoNT345wNOZ5az4b-?usp=sharing'),
(22, 'Ayat', 'ayat@gmail.com', '321', 'mahasiswa', 'https://drive.google.com/drive/folders/1_I0iN2UVDMwOLIcsRmK8t5VSoTjXcfyC?usp=sharing'),
(23, 'Dadang', 'dadang@gmail.com', '321', 'mahasiswa', 'https://drive.google.com/drive/folders/1aneZut8q0p7MxSfc2OO3uLDEdiLVhpi_?usp=sharing'),
(24, 'Dodi', 'dodi@gmail.com', '321', 'mahasiswa', 'https://drive.google.com/drive/folders/1I-ZabeXyM595UCOqm1GzomV4FAXfmeL_?usp=sharing'),
(25, 'Yahya', 'yahya@gmail.com', '321', 'mahasiswa', 'https://drive.google.com/drive/folders/1jVyd3toz9eYvkoSWdJEiXiOcZxH0hGzM?usp=sharing'),
(26, 'Aldiani', 'aldiani@gmail.com', '321', 'mahasiswa', 'https://drive.google.com/drive/folders/1F4oOr1YLkLjDmwmzO7Ma1LEVsN1eCHmv?usp=sharing'),
(27, 'Mulyana', 'mulyana@gmail.com', '321', 'mahasiswa', 'https://drive.google.com/drive/folders/1Ellewk554JnsQzWlKb-HEShUAYk3tuQT?usp=sharing'),
(28, 'Rifki', 'rifki@gmail.com', '321', 'mahasiswa', 'https://drive.google.com/drive/folders/1stw6mv7JXvL9t1K8o-fKNdmDIQLT9BCt?usp=sharing'),
(29, 'Afifatul', 'afif@gmail.com', '890', 'mahasiswa', 'https://drive.google.com/drive/folders/1r0npLy_0N9eOVdXOUSSW-jSAikGeVLbH?usp=sharing'),
(30, 'Lina', 'lina@gmail.com', '890', 'mahasiswa', 'https://drive.google.com/drive/folders/1WIGXGb5TxXpwCP1y6HOOX3YfoUXzZfjF?usp=sharing'),
(31, 'Mahrun', 'mahrun@gmail.com', '890', 'mahasiswa', 'https://drive.google.com/drive/folders/17428CGGrUogJsIDxIJ2d8ChiFard_els?usp=sharing'),
(32, 'Mila', 'mila@gmail.com', '890', 'mahasiswa', 'https://drive.google.com/drive/folders/1Lm7Veazv0jf9U_zrzyfMQxizmsU6X6EN?usp=sharing'),
(33, 'Muhaeroh', 'eroh@gmail.com', '890', 'mahasiswa', 'https://drive.google.com/drive/folders/15cDn0wkJdZGhO4yv_dLBmOYbvWqSxHzr?usp=sharing'),
(34, 'Mutiara', 'ara@gmail.com', '890', 'mahasiswa', 'https://drive.google.com/drive/folders/19lPXzQCvvxsqZqu_-GI4_Xef2ITM3faO?usp=sharing'),
(35, 'Sarah', 'sarah@gmail.com', '890', 'mahasiswa', 'https://drive.google.com/drive/folders/1bMCyHsfXV89wLdjQ28Bnv31NgVOsO7hg?usp=sharing'),
(36, 'Vega', 'vega@gmail.com', '890', 'mahasiswa', 'https://drive.google.com/drive/folders/1bZSQrtu7DNO35tNnrPUuGZEmN-2VBs7g?usp=sharing'),
(37, 'Ruhyat', 'ajiganteng@gmail.com', '123:890', 'mahasiswa', 'https://drive.google.com/drive/folders/1zCMa01_K7J84Y08NV6HGZV2IWVQZ2LXl?usp=sharing'),
(38, 'Arga', 'arga@gmail.com', '098', 'mahasiswa', 'https://drive.google.com/drive/folders/1HhbWf1l4yNRk54mQBjttyR4tl0jsAHPz?usp=sharing'),
(39, 'Deni', 'deni@gmail.com', '098', 'mahasiswa', 'https://drive.google.com/drive/folders/1yZeUoiW5DE2gjq82fXgBKXdKGChcxxQs?usp=sharing'),
(40, 'Lugas', 'lugas@gmail.com', '098', 'mahasiswa', 'https://drive.google.com/drive/folders/1HRlOm7spOt6_EKySbEydkmyMdejbpyW_?usp=sharing'),
(41, 'Diki', 'diki@gmail.com', '098', 'mahasiswa', 'https://drive.google.com/drive/folders/1FcRXjbQdRfd-2XM1W90Bv_NeW7IL74rE?usp=sharing'),
(42, 'Dzikri', 'dzikri@gmail.com', '098', 'mahasiswa', 'https://drive.google.com/drive/folders/1fupuzh9HJrfZHXZ4ZgLffJvx_envcH0g?usp=sharing'),
(43, 'Taufiq', 'taufiq@gmail.com', '098', 'mahasiswa', 'https://drive.google.com/drive/folders/1ZU4XF0YhKG_eLoWg3-hEOxIpVvyiChX8?usp=sharing'),
(44, 'Firdaus', 'ahmadfirdaus@gmail.com', '567', 'mahasiswa', 'https://drive.google.com/drive/folders/1_Dqlz4G0lzxaKNsvCSwJORe7htKlyvQo?usp=sharing'),
(45, 'Muhajir', 'ahmadmuhajir@gmail.com', '567', 'mahasiswa', 'https://drive.google.com/drive/folders/1z9m93rtGYf_v2D1htVzSKhE6dJ06_0sX?usp=sharing'),
(46, 'Ardiansyah', 'ardi@gmail.com', '567', 'mahasiswa', 'https://drive.google.com/drive/folders/1mVSWS1TxqwTRYesGBCCyla-9cjyffAGw?usp=sharing'),
(47, 'Fahruli', 'fahruli@gmail.com', '567', 'mahasiswa', 'https://drive.google.com/drive/folders/1pYIq1pBdSXbSETiurRz5J_GLjfMQHCZg?usp=sharing'),
(48, 'Kory', 'kory@gmail.com', '567', 'mahasiswa', 'https://drive.google.com/drive/folders/11eQ8cZxsxgyBwJA1J2U2cWSmlXbklTTI?usp=sharing'),
(49, 'Nurhadi', 'nurhadi@gmail.com', '567', 'mahasiswa', 'https://drive.google.com/drive/folders/1s6EJK1RMqepSlLLLxB37E-Sl12yNVwx4?usp=sharing'),
(50, 'Warnadi', 'warnadi@gmail.com', '567', 'mahasiswa', 'https://drive.google.com/drive/folders/1YFMniMhyboytc9KL_57XmHPslYoxQCMc?usp=sharing'),
(51, 'Anisa', 'anisaoktapiani@gmail.com', '765', 'mahasiswa', 'https://drive.google.com/drive/folders/1wRhiL4NPMtChaxcURydocKWo_hIdFdyb?usp=sharing'),
(52, 'Asti', 'asti@gmail.com', '765', 'mahasiswa', 'https://drive.google.com/drive/folders/15nXj1ZO9nZrEwdVhszm_XXqvWN29QLG_?usp=sharing'),
(53, 'Rizky', 'rizkyamalia@gmail.com', '765', 'mahasiswa', 'https://drive.google.com/drive/folders/1SEjLR-Xul9Xg10cu2iOKKgGEl-GPsTGy?usp=sharing'),
(54, 'Silvi', 'silvi@gmail.com', '765', 'mahasiswa', 'https://drive.google.com/drive/folders/1ZMcT2IpfmqotiXYAi2giAs6ztdG0ZAMb?usp=sharing'),
(55, 'Asiah', 'asiah@gmail.com', '765', 'mahasiswa', 'https://drive.google.com/drive/folders/1O8r298_sqh6bUAHougMahDMWgzhqnLF_?usp=sharing'),
(56, 'Supriah', 'supriah@gmail.com', '765', 'mahasiswa', 'https://drive.google.com/drive/folders/1AWy0cKLFz8S002B5lfnpRA8Dyx-dViNP?usp=sharing'),
(57, 'Yuli', 'yuli@gmail.com', '765', 'mahasiswa', 'https://drive.google.com/drive/folders/1oSB2Ph5VA8yVUatGey-KEbtJ5e-v2HQF?usp=sharing'),
(59, 'Andre', 'andretasmara@gmail.com', '150', 'mahasiswa', 'https://drive.google.com/drive/folders/1ZrLkdbVdQCp0chWUNmFFmnC6JnYLx3hB?usp=sharing'),
(60, 'Hoerul', 'hoerul@gmail.com', '150', 'mahasiswa', 'https://drive.google.com/drive/folders/1_jwhSZlL9u9lKlzzvvcyptW7n7f1Jnq5?usp=sharing'),
(61, 'Lukman', 'lukman@gmail.com', '150', 'mahasiswa', 'https://drive.google.com/drive/folders/1FsiPOF1X9fkPGWaGcUjBGVuU1mr6Tg9-?usp=sharing'),
(62, 'Ridwan', 'ridwan@gmail.com', '150', 'mahasiswa', 'https://drive.google.com/drive/folders/1v-IuWvSm9e7wwkFMt8Z3gy9mYArqbNXh?usp=sharing'),
(63, 'Septa', 'septa@gmail.com', '150', 'mahasiswa', 'https://drive.google.com/drive/folders/1xg5qhLMGBkIZALswaYjZOZ4F9pSd_XqG?usp=sharing'),
(64, 'Haris', 'haris@gmail.com', '150', 'mahasiswa', 'https://drive.google.com/drive/folders/1jke_XLNJVW_muMGzMd9lcXGylw_d717o?usp=sharing'),
(65, 'Nopal', 'nopal@gmail.com', '150', 'mahasiswa', 'https://drive.google.com/drive/folders/1-vwHH379yq7p0BWTneiS1K3mFO28HmPV?usp=sharing');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelompok`
--
ALTER TABLE `kelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kelompok`
--
ALTER TABLE `kelompok`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
