-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 03:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv`
--

CREATE TABLE `inv` (
  `invid` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `tgl_inv` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pembayaran` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inv`
--

INSERT INTO `inv` (`invid`, `invoice`, `tgl_inv`, `pembayaran`, `kembalian`, `status`) VALUES
(50, 'AD1723184436', '2023-07-01 11:44:18', 0, 0, 'proses'),
(60, 'AD1723201536', '2023-07-01 13:15:57', 0, 0, 'proses'),
(67, 'AD1723203836', '2023-07-01 13:38:57', 0, 0, 'proses'),
(68, 'AD1723203936', '2023-07-01 13:39:20', 0, 0, 'proses'),
(69, 'AD1723203936', '2023-07-01 13:39:42', 0, 0, 'proses'),
(70, 'AD1723204036', '2023-07-01 13:40:03', 0, 0, 'proses'),
(71, 'AD1723204036', '2023-07-01 13:40:22', 0, 0, 'proses'),
(75, 'AD2723140936', '2023-07-02 07:09:03', 0, 0, 'proses'),
(81, 'AD2723145736', '2023-07-02 07:57:21', 20000, 0, 'selesai'),
(82, 'AD2723145936', '2023-07-02 07:59:07', 0, 0, 'proses'),
(83, 'AD2723151436', '2023-07-02 08:14:54', 0, 0, 'proses'),
(84, 'AD2723151836', '2023-07-02 08:18:51', 100000, 70000, 'selesai'),
(86, 'AD2723152336', '2023-07-02 08:23:11', 0, 0, 'proses'),
(101, 'AD2723154343', '2023-07-02 08:43:07', 20000, 0, 'selesai'),
(108, 'AD2723160303', '2023-07-02 09:03:18', 0, 0, 'proses'),
(109, 'AD2723160404', '2023-07-02 09:04:17', 0, 0, 'proses'),
(110, 'AD2723160405', '2023-07-02 09:04:51', 0, 0, 'proses'),
(111, 'AD2723160505', '2023-07-02 09:05:09', 0, 0, 'proses'),
(113, 'AD2723161213', '2023-07-02 09:12:56', 0, 0, 'proses'),
(114, 'AD2723161613', '2023-07-02 09:16:15', 0, 0, 'proses'),
(115, 'AD2723161617', '2023-07-02 09:16:56', 0, 0, 'proses'),
(117, 'AD2723162725', '2023-07-02 09:27:58', 0, 0, 'proses'),
(128, 'AD2723203737', '2023-07-02 13:37:44', 0, 0, 'proses'),
(141, 'AD2723204343', '2023-07-02 13:43:23', 20000, -10000, 'selesai'),
(142, 'AD2723204344', '2023-07-02 13:43:53', 210000, 120000, 'selesai'),
(143, 'AD2723204344', '2023-07-02 13:43:53', 210000, 120000, 'selesai'),
(144, 'AD2723204344', '2023-07-02 13:43:53', 210000, 120000, 'selesai'),
(145, 'AD2723204444', '2023-07-02 13:44:26', 100000, 40000, 'selesai'),
(146, 'AD2723204445', '2023-07-02 13:44:37', 100000, 55000, 'selesai'),
(147, 'AD2723204545', '2023-07-02 13:45:43', 210000, 30000, 'selesai'),
(148, 'AD2723204646', '2023-07-02 13:46:18', 210000, 108000, 'selesai'),
(149, 'AD2723204747', '2023-07-02 13:47:17', 100000, 40000, 'selesai'),
(150, 'AD2723204848', '2023-07-02 13:48:52', 20000, 0, 'selesai'),
(151, 'AD2723204949', '2023-07-02 13:49:09', 100000, 70000, 'selesai'),
(152, 'AD2723222050', '2023-07-02 15:20:59', 100000, 70000, 'selesai'),
(153, 'AD2723222121', '2023-07-02 15:21:25', 14000, 4000, 'selesai'),
(155, 'AD2723230522', '2023-07-02 16:05:35', 400000, 124000, 'selesai'),
(156, 'AD2723230606', '2023-07-02 16:06:54', 40000, 4000, 'selesai'),
(157, 'AD2723231707', '2023-07-02 16:18:29', 700000, 10000, 'selesai'),
(158, 'AD4723133118', '2023-07-04 06:32:57', 80000, 30000, 'selesai'),
(159, 'AD4723134932', '2023-07-04 06:49:35', 10000, 4000, 'selesai'),
(160, 'AD4723142050', '2023-07-04 07:20:52', 50000, 5000, 'selesai'),
(161, 'AD4723142821', '2023-07-04 07:28:09', 10000, 1000, 'selesai'),
(162, 'AD4723144429', '2023-07-04 07:44:14', 19000, 10000, 'selesai'),
(163, 'AD4723150045', '2023-07-04 08:00:56', 20000, 2000, 'selesai'),
(164, 'AD4723150301', '2023-07-04 08:03:42', 66000, 31000, 'selesai'),
(165, 'AD4723150504', '2023-07-04 08:05:36', 31000, 1000, 'selesai'),
(166, 'AD4723153506', '2023-07-04 08:35:25', 50000, 5000, 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `idlaporan` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`idlaporan`, `invoice`, `kode_produk`, `nama_produk`, `harga`, `harga_modal`, `qty`, `subtotal`) VALUES
(75, 'AD2723145736', 'BRG001', 'sabun', 10000, 0, 2, 20000),
(76, 'AD2723151836', 'BRG001', 'sabun', 10000, 0, 3, 30000),
(92, 'AD2723154343', 'BRG001', 'sabun', 10000, 0, 2, 20000),
(123, 'AD2723204343', 'BRG001', 'sabun', 10000, 0, 3, 30000),
(124, 'AD2723204344', 'BRG001', 'sabun', 10000, 0, 2, 20000),
(125, 'AD2723204344', 'BRG002', 'minyak', 30000, 0, 2, 60000),
(126, 'AD2723204344', 'BRG002', 'minyak', 30000, 0, 3, 90000),
(127, 'AD2723204444', 'BRG002', 'minyak', 30000, 0, 2, 60000),
(128, 'AD2723204445', 'BRG003', 'sampoo', 15000, 0, 3, 45000),
(129, 'AD2723204545', 'BRG002', 'minyak', 30000, 0, 6, 180000),
(130, 'AD2723204646', 'BRG003', 'sampoo', 15000, 0, 6, 90000),
(131, 'AD2723204646', 'BRG004', 'Pensil', 3000, 0, 4, 12000),
(133, 'AD2723204747', 'BRG003', 'sampoo', 15000, 0, 4, 60000),
(134, 'AD2723204848', 'BRG005', 'penghapus', 5000, 0, 4, 20000),
(135, 'AD2723204949', 'BRG005', 'penghapus', 5000, 0, 6, 30000),
(136, 'AD2723222050', 'BRG001', 'sabun', 10000, 0, 3, 30000),
(137, 'AD2723222121', 'BRG001', 'sabun', 10000, 0, 1, 10000),
(138, 'AD2723230522', 'BRG001', 'sabun', 10000, 0, 2, 20000),
(139, 'AD2723230522', 'BRG002', 'minyak', 30000, 0, 3, 90000),
(140, 'AD2723230522', 'BRG003', 'sampoo', 15000, 0, 9, 135000),
(141, 'AD2723230522', 'BRG004', 'Pensil', 3000, 0, 7, 21000),
(142, 'AD2723230522', 'BRG005', 'penghapus', 5000, 0, 2, 10000),
(145, 'AD2723230606', 'BRG004', 'Pensil', 3000, 0, 12, 36000),
(146, 'AD2723231707', 'BRG001', 'sabun lifeboy', 10000, 0, 5, 50000),
(147, 'AD2723231707', 'BRG002', 'minyak sunco', 30000, 0, 5, 150000),
(148, 'AD2723231707', 'BRG003', 'shampoo sunsilk', 15000, 0, 5, 75000),
(149, 'AD2723231707', 'BRG004', 'pensil steadler', 3000, 0, 5, 15000),
(150, 'AD2723231707', 'BRG005', 'penghapus faber castell', 5000, 0, 5, 25000),
(151, 'AD2723231707', 'BRG006', 'bolpoint sarasa hitam', 6000, 0, 5, 30000),
(152, 'AD2723231707', 'BRG007', 'chitato sapi panggang', 10000, 0, 5, 50000),
(153, 'AD2723231707', 'BRG008', 'cheetos bbq', 6000, 0, 5, 30000),
(154, 'AD2723231707', 'BRG009', 'mizone orange', 7000, 0, 5, 35000),
(155, 'AD2723231707', 'BRG010', 'tepung roti', 13000, 0, 5, 65000),
(156, 'AD2723231707', 'BRG011', 'pocari sweat', 8500, 0, 5, 42500),
(157, 'AD2723231707', 'BRG012', 'wafer nabati keju', 4500, 0, 5, 22500),
(158, 'AD2723231707', 'BRG013', 'waer tango vanila', 8000, 0, 5, 40000),
(159, 'AD2723231707', 'BRG014', 'susu ultramilk strawberry', 6000, 0, 5, 30000),
(160, 'AD2723231707', 'BRG015', 'coca cola', 6000, 0, 5, 30000),
(161, 'AD4723133118', 'BRG001', 'sabun lifeboy', 10000, 0, 2, 20000),
(162, 'AD4723133118', 'BRG003', 'shampoo sunsilk', 15000, 0, 2, 30000),
(164, 'AD4723134932', 'BRG004', 'pensil steadler', 3000, 0, 2, 6000),
(165, 'AD4723142050', 'BRG003', 'shampoo sunsilk', 15000, 0, 3, 45000),
(166, 'AD4723142821', 'BRG004', 'pensil steadler', 3000, 0, 3, 9000),
(167, 'AD4723144429', 'BRG004', 'pensil steadler', 3000, 0, 3, 9000),
(168, 'AD4723150045', 'BRG008', 'cheetos bbq', 6000, 0, 3, 18000),
(169, 'AD4723150301', 'BRG005', 'penghapus faber castell', 5000, 0, 7, 35000),
(170, 'AD4723150504', 'BRG002', 'minyak sunco', 30000, 0, 1, 30000),
(171, 'AD4723153506', 'BRG003', 'shampoo sunsilk', 15000, 0, 3, 45000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `toko` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `username`, `password`, `toko`, `alamat`, `telepon`, `logo`) VALUES
(1, 'nicho', '$2y$10$lxHtWuqbuCVPXauO7KThmel.caPQg6dPdGeIFrWYZb4boI1QNTUiG', 'kasirku', 'jalan tanahmas', '00000989', 'Screenshot 2023-05-17 091643.png'),
(2, 'reyno', '$2y$10$E/qT8pI1BYO8U.ix.4uLbeFRYCeklrRjWCXZB1jAd2MFqG7kHg7CC', 'Supermarket Suka Benar', 'Jl. Suka Indah no.6 Semarang', '082374930273', 'logotoko.png'),
(3, 'admin', '$2y$10$SVXeBgIwL6HuydqcYwT8uOlbbBXkWVr3qdwI5fej5ZgNJFKduW1.q', 'Supermarket Suka Benar', 'Jl. Pahlawan no.277 Semarang', '082375478298', 'logotoko.png');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `Stok_barang` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `kode_produk`, `nama_produk`, `Stok_barang`, `harga_jual`, `tgl_input`) VALUES
(5, '8851019000343', 'Pocky Almond 36g', 293, 8500, '2023-07-04 13:54:14'),
(6, '8999777004484', 'Deodorant Rexona', 209, 30000, '2023-07-04 13:56:16'),
(7, '749921010162', 'NutriSari Sweet Mango', 300, 5000, '2023-07-04 13:56:05'),
(8, 'BRG004', 'pensil steadler', 287, 3000, '2023-07-04 08:38:03'),
(9, 'BRG005', 'penghapus faber castell', 234, 5000, '2023-07-04 08:38:14'),
(10, 'BRG006', 'bolpoint sarasa hitam', 225, 6000, '2023-07-02 16:17:43'),
(12, 'BRG007', 'chitato sapi panggang', 395, 10000, '2023-07-02 16:17:46'),
(13, 'BRG008', 'cheetos bbq', 300, 6000, '2023-07-04 08:37:51'),
(14, 'BRG009', 'mizone orange', 374, 7000, '2023-07-04 08:37:58'),
(15, 'BRG010', 'tepung roti', 298, 13000, '2023-07-04 08:37:44'),
(16, 'BRG011', 'pocari sweat', 65, 8500, '2023-07-02 16:18:08'),
(17, 'BRG012', 'wafer nabati keju', 85, 4500, '2023-07-02 16:18:11'),
(18, 'BRG013', 'waer tango vanila', 95, 8000, '2023-07-02 16:18:13'),
(19, 'BRG014', 'susu ultramilk strawberry', 85, 6000, '2023-07-02 16:18:17'),
(20, 'BRG015', 'coca cola', 115, 6000, '2023-07-02 16:18:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`);

--
-- Indexes for table `inv`
--
ALTER TABLE `inv`
  ADD PRIMARY KEY (`invid`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`idlaporan`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `inv`
--
ALTER TABLE `inv`
  MODIFY `invid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `idlaporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
