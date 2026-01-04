-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2026 at 03:23 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(12) NOT NULL,
  `id_detail_menu` text NOT NULL,
  `id_meja` int(12) NOT NULL,
  `nama_pemesan` varchar(250) NOT NULL,
  `nomor_hp` varchar(250) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `tanggal_reservasi` date NOT NULL,
  `total_pembayaran` int(12) NOT NULL,
  `total_sudah_dibayar` int(12) NOT NULL,
  `batas_pembayaran_dp` datetime NOT NULL,
  `status_pembayaran` varchar(250) NOT NULL,
  `bukti_pembayaran` text DEFAULT NULL,
  `note_reservasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_detail_menu`, `id_meja`, `nama_pemesan`, `nomor_hp`, `tanggal_pesan`, `tanggal_reservasi`, `total_pembayaran`, `total_sudah_dibayar`, `batas_pembayaran_dp`, `status_pembayaran`, `bukti_pembayaran`, `note_reservasi`) VALUES
(1, 'INV20260104204426', 0, 'Usain Bolt', '083652783982', '2026-01-04 20:44:26', '2026-01-04', 84000, 84000, '2026-01-05 20:44:26', 'Lunas', '04012026144556BuktiPembayaran.jpg', 'Es Jangan Terlalu Banyak (Cappucino), Ayam Bakar Madu, Mozarella Stick Pedas'),
(2, 'INV20260104204857', 5, 'Jackie Chan', '084637287432', '2026-01-04 20:48:57', '2026-01-10', 412000, 412000, '2026-01-05 20:48:57', 'Lunas', '04012026144959BuktiPembayaran.jpg', 'Hari Sabtu, Jam 19.00');

-- --------------------------------------------------------

--
-- Table structure for table `gambar_menu`
--

CREATE TABLE `gambar_menu` (
  `id_gambar` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `gambar` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gambar_menu`
--

INSERT INTO `gambar_menu` (`id_gambar`, `id_menu`, `gambar`) VALUES
(2, 2, '22092021172127mie-ayam.jpg'),
(3, 2, '22092021174747miee2.jpg'),
(5, 2, '22092021175050mi2asd.jpg'),
(6, 1, '22092021180735Bakso_mi_bihun.jpg'),
(7, 1, '220920211807421140357898.jpg'),
(8, 8, '0610202109160311Jugosylicuadosquetequitanlaansiedadyteayudanabajardepeso.jpg'),
(9, 8, '06102021091612Esjerukphotography.jpg'),
(10, 7, '06102021091833Sips-KatieChrist.jpg'),
(12, 7, '06102021091907EsTehSerai-LemongrassIceTea.jpg'),
(14, 16, '06102021092328orange-coconutmilkshake.jpg'),
(16, 16, '06102021092756024b5b71-b655-4e9b-9f7e-fc37ed0eb720.jpg'),
(17, 16, '06102021092845TheBestStrawberryMilkshake-BakingMischief.jpg'),
(19, 12, '06102021093111NasiGoreng(IndonesianFriedRice).jpg'),
(20, 12, '06102021093206BrownRiceNasiGoreng(IndonesianFriedRice)IGeorgieEats.jpg'),
(25, 15, '06102021093836SopBuntut_IndonesianOxtailSoup.jpg'),
(26, 11, '06102021093956ResepSotoLamonganAsliJawaTimurDenganSuwiranAyamDanKuahKuning.jpg'),
(28, 17, '04012026120731pepperoni.jpg'),
(29, 17, '04012026120753cheesepizza.jpg'),
(30, 17, '04012026120926supremepizza.jpg'),
(31, 29, '04012026130939melted-cheese-sticks.jpg'),
(32, 29, '04012026130948delicious-orange-bun-table.jpg'),
(34, 30, '04012026131130front-view-delicious-tiramisu-concept.jpg'),
(35, 30, '04012026131312delicious-food-presentation(1)(1).jpg'),
(36, 28, '04012026131514chicken-parmesan-caesar-salad-with-fresh-lettuce-bread-crackers-cherry-tomatoes-white-plate(1).jpg'),
(38, 27, '04012026131816close-up-burger-meal.jpg'),
(39, 27, '04012026131839still-life-delicious-american-hamburger.jpg'),
(40, 26, '04012026132214spaghetti-carbonara(1).jpg'),
(41, 26, '04012026132332italian-pasta-with-meat-plate.jpg'),
(46, 25, '04012026132802grilled-chicken-cut-with-french-fries.jpg'),
(47, 25, '04012026132811side-view-grilled-chicken-fillet-with-french-fries-wooden-board.jpg'),
(48, 24, '04012026133004world-cuisine-with-delicious-food.jpg'),
(49, 24, '04012026133011top-view-steak-with-baked-potatoes-vegetable-salad.jpg'),
(50, 23, '04012026133205fried-prawn-shrimp-with-garlic.jpg'),
(51, 23, '04012026133214fried-chicken-tendon-serve-with-sauce.jpg'),
(52, 21, '04012026133303fried-chicken-wings-garnished-with-diced-green-onion-sauce-lemon-slice.jpg'),
(53, 22, '04012026133335fried-tilapia-with-chili-sauce-lemon-salad-garlic-plate-white-wooden-table(1).jpg'),
(54, 20, '04012026133511azure-cocktail-table.jpg'),
(55, 20, '04012026133520lychee-jelly-seasonal-fruit-beautifully-decorated-thai-dessert-concept.jpg'),
(56, 26, '04012026133618delicious-food-presentation.jpg'),
(59, 19, '04012026133914high-angle-milkshake-glasses-with-mint-chocolate.jpg'),
(60, 19, '04012026133924close-up-winter-dessert-with-cinnamon.jpg'),
(63, 18, '04012026134159coffee-cup.jpg'),
(64, 18, '04012026134206glasses-with-coffee-with-whipped-cream-table.jpg'),
(65, 18, '04012026134213high-angle-delicious-iced-coffee.jpg'),
(66, 13, '04012026134532delicious-street-food-still-life.jpg'),
(67, 13, '0401202613463106102021093547ResepSateKambingolehXandersKitchen.jpg'),
(68, 13, '0401202613464706102021093623EnaknyaBakaranSateKambingdirumahaja_Resep,CaraLangkah-TOPWISATA.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `lupa_password`
--

CREATE TABLE `lupa_password` (
  `id_lupa_password` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `pertanyaankeamanan1` varchar(255) NOT NULL,
  `pertanyaankeamanan2` varchar(255) NOT NULL,
  `jawabankeamanan1` varchar(255) NOT NULL,
  `jawabankeamanan2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lupa_password`
--

INSERT INTO `lupa_password` (`id_lupa_password`, `id_pegawai`, `pertanyaankeamanan1`, `pertanyaankeamanan2`, `jawabankeamanan1`, `jawabankeamanan2`) VALUES
(1, 1, 'Berapa angka favorit anda?(Contoh: 99)', 'Siapakah nama hewan peliharaan anda?', '7', 'alfan'),
(2, 3, 'Apa hewan kesayangan anda?', 'Apa cita-cita anda semasa kecil?', 'Harimau Sumatra', 'Progamer');

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `id_meja` int(11) NOT NULL,
  `nomor_meja` varchar(50) NOT NULL,
  `kapasitas_meja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`id_meja`, `nomor_meja`, `kapasitas_meja`) VALUES
(0, 'Take Away (Bungkus / Dibawa Pulang)', 0),
(1, '1', 4),
(3, '5', 10),
(4, '3', 6),
(5, '2', 2),
(6, '4', 10),
(8, '6', 20),
(11, '7', 8),
(12, '9', 2);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `detail_menu` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `stok` varchar(50) NOT NULL DEFAULT 'Tersedia',
  `harga` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `detail_menu`, `kategori`, `stok`, `harga`) VALUES
(7, 'Ice Tea', 'Jasmine, Lychee, Oolong', 'Minuman', 'Tersedia', 8000),
(8, 'Es Jeruk', 'Nipis, Lemon, Jeruk Asli', 'Minuman', 'Tersedia', 10000),
(11, 'Soto Lamongan ', 'Dengan Topping ayam', 'Makanan', 'Tersedia', 15000),
(12, 'Nasi Goreng', 'Jawa, Mawut, Seafood', 'Makanan', 'Tersedia', 25000),
(13, 'Sate Daging', 'Ayam asli, Kambing, Sapi', 'Makanan', 'Tersedia', 25000),
(17, 'Pizza', 'Pepperoni, Cheese, Supreme', 'Makanan', 'Tersedia', 68000),
(18, 'Kopi', 'Kopi Susu Gula Aren, Kopi Susu Caramel, Cappuccino, Latte Vanilla', 'Minuman', 'Tersedia', 19000),
(19, 'Coklat & Susu', 'Chocolate Hazelnut, Chocolate Mint, Susu Vanilla, Susu Strawberry', 'Minuman', 'Tersedia', 15000),
(20, 'Mocktail', 'Blue Ocean, Sparkling Lemon, Sparkling Orange, Mojito Lychee', 'Minuman', 'Tersedia', 22000),
(21, 'Ayam Bakar', 'Ayam Bakar Madu, Ayam Bakar Kalasan', 'Makanan', 'Tersedia', 29000),
(22, 'Ikan Bakar', 'Kecap, Rica-Rica', 'Makanan', 'Tersedia', 24000),
(23, 'Seafood', 'Cumi Goreng Tepung, Udang Saus Padang', 'Makanan', 'Tersedia', 17000),
(24, 'Beef Steak', 'Sirloin, Tenderloin, Wagyu', 'Makanan', 'Tersedia', 112000),
(25, 'Chicken Steak', 'Blackpepper, Mushroom, BBQ, Crispy', 'Makanan', 'Tersedia', 46000),
(26, 'Pasta', 'Bolognese, Carbonara, Aglio Olio, Mac & Cheese', 'Makanan', 'Tersedia', 28000),
(27, 'Hamburger', 'Beef Classic, Cheese, Chicken Crispy, Double Patty', 'Makanan', 'Tersedia', 22000),
(28, 'Salad', 'Caesar, Garden, Chicken, Coleslaw', 'Makanan', 'Tersedia', 29000),
(29, 'Appetizer', 'Garlic Bread , Cheese Fries, Mozzarella Stick', 'Makanan', 'Tersedia', 18000),
(30, 'Dessert', 'Chocolate Lava Cake, Cheesecake Tiramisu, Ice Cream Sundae', 'Makanan', 'Tersedia', 36000);

-- --------------------------------------------------------

--
-- Table structure for table `menu_dibooking`
--

CREATE TABLE `menu_dibooking` (
  `id_menu_dibooking` int(12) NOT NULL,
  `id_detail_menu` text NOT NULL,
  `nama_makanan` varchar(250) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `sub_total` int(12) NOT NULL,
  `status_order` varchar(255) NOT NULL DEFAULT 'success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_dibooking`
--

INSERT INTO `menu_dibooking` (`id_menu_dibooking`, `id_detail_menu`, `nama_makanan`, `jumlah`, `sub_total`, `status_order`) VALUES
(1, 'INV20260104204426', 'Kopi', 1, 19000, 'success'),
(2, 'INV20260104204426', 'Ayam Bakar', 1, 29000, 'success'),
(3, 'INV20260104204426', 'Appetizer', 2, 36000, 'success'),
(4, 'INV20260104204857', 'Mocktail', 2, 44000, 'success'),
(5, 'INV20260104204857', 'Beef Steak', 2, 224000, 'success'),
(6, 'INV20260104204857', 'Appetizer', 3, 54000, 'success'),
(7, 'INV20260104204857', 'Seafood', 2, 34000, 'success'),
(8, 'INV20260104204857', 'Pasta', 2, 56000, 'success');

-- --------------------------------------------------------

--
-- Table structure for table `metode_pembayaran`
--

CREATE TABLE `metode_pembayaran` (
  `id_metode` int(12) NOT NULL,
  `nama_merchant` varchar(250) NOT NULL,
  `atas_nama` varchar(250) NOT NULL,
  `kode_pembayaran` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metode_pembayaran`
--

INSERT INTO `metode_pembayaran` (`id_metode`, `nama_merchant`, `atas_nama`, `kode_pembayaran`) VALUES
(1, 'Bank Syariah Indonesia (BSI)', 'SiMangat Resto &amp; Chill', '7187389283'),
(2, ' Bank Central Asia (BCA)', 'SiMangat Resto &amp; Chill', '7187389283'),
(4, 'Dana', 'SiMangat Resto &amp; Chill', '084837823894'),
(5, 'GoPay', 'SiMangat Resto &amp; Chill', '084837823894'),
(9, 'OVO', 'SiMangat Resto &amp; Chill', '084837823894');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `jabatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `email`, `alamat`, `password`, `telepon`, `jenis_kelamin`, `jabatan`) VALUES
(3, 'Bos Admin', 'admin@gmail.com', 'Jl. Anggrek 51 Malang', '21232f297a57a5a743894a0e4a801fc3', '081222333444', 'Pria', 'admin'),
(10, 'Icha', 'licha@gmail.com', 'JL. Perjuangan, Kota Lhokseumawe', '63fd460428b34ba63b042ff42f94ad86', '085273689182', 'Perempuan', 'pegawai'),
(11, 'Rafif', 'apip@gmail.com', 'Jl. Sukaramai, Krueng Geukuh', 'b92b52df66da4409b241dfbc244cd054', '085283711984', 'Laki-laki', 'pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `profil_usaha`
--

CREATE TABLE `profil_usaha` (
  `id` int(12) NOT NULL,
  `nama_usaha` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `nomor_telepon` varchar(17) NOT NULL,
  `email` varchar(100) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `facebook` varchar(250) NOT NULL,
  `maps_link` text NOT NULL,
  `foto_usaha_1` text NOT NULL,
  `foto_usaha_2` text NOT NULL,
  `foto_usaha_3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil_usaha`
--

INSERT INTO `profil_usaha` (`id`, `nama_usaha`, `deskripsi`, `alamat`, `nomor_telepon`, `email`, `instagram`, `facebook`, `maps_link`, `foto_usaha_1`, `foto_usaha_2`, `foto_usaha_3`) VALUES
(1, 'SiMangat Resto &amp; Chill', 'SiMangat Resto &amp; Chill menghadirkan pengalaman bersantap yang hangat dan nyaman dalam suasana modern yang elegan namun tetap santai. Menyajikan beragam menu berkualitas dengan cita rasa khas dan penyajian yang berkelas. Didukung oleh pelayanan yang ramah dan profesional, SiMangat menjadi pilihan ideal untuk menikmati waktu bersama keluarga, sahabat, maupun orang istimewa. Untuk kemudahan pelanggan, tersedia layanan reservasi dan take away, sehingga hidangan favorit dapat dinikmati baik di tempat maupun dibawa pulang sesuai kebutuhan.', 'JL. Darussalam No 34, Kp. Jawa Baru, Kec. Banda Sakti, Kota Lhokseumawe, Aceh', '084837823894', 'SiMangatRestonChill@gmail.com', 'SiMangatResto&amp;Chill', 'SiMangatResto&amp;Chill', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d502.6424159598367!2d97.13889082784617!3d5.179237537381826!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x304f23c79db4b4bb%3A0x28a53f2f6c200aab!2sJalan%20Darussalam%2C%20Kota%20Lhokseumawe%2C%20Aceh!5e0!3m2!1sid!2sid!4v1706845826000', '16012024045151gambar1.png', '16012024045151gambar2.png', '16012024045151gambar3.png');

-- --------------------------------------------------------

--
-- Table structure for table `saran_kritik`
--

CREATE TABLE `saran_kritik` (
  `id_saran` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saran_kritik`
--

INSERT INTO `saran_kritik` (`id_saran`, `nama_pelanggan`, `email`, `tanggal`, `saran`) VALUES
(1, 'Jackie Chan', 'Jichan@gmail.com', '2026-01-04', 'Pelayanan restoran secara keseluruhan sudah sangat baik, mulai dari proses reservasi yang cepat hingga keramahan staf saat menyambut. Makanan disajikan dengan rasa yang enak dan tampilan menarik. Ke depannya, akan lebih baik jika waktu penyajian bisa sedikit lebih konsisten saat jam ramai. Terima kasih atas pengalaman yang menyenangkan, ??');

-- --------------------------------------------------------

--
-- Table structure for table `saw_hasil`
--

CREATE TABLE `saw_hasil` (
  `id` int(11) NOT NULL,
  `tanggal_penghitungan` date NOT NULL,
  `pegawai_terpilih` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `saw_kriteria`
--

CREATE TABLE `saw_kriteria` (
  `id` int(11) NOT NULL,
  `nama_kriteria` varchar(256) NOT NULL,
  `penjelasan_kriteria` text NOT NULL,
  `bobot_kriteria` varchar(10) NOT NULL,
  `kategori_bobot` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saw_kriteria`
--

INSERT INTO `saw_kriteria` (`id`, `nama_kriteria`, `penjelasan_kriteria`, `bobot_kriteria`, `kategori_bobot`) VALUES
(1, 'Disiplin', 'Menilai ketaatan hadir saat kerja. Range Nilai 10-90. Semakin banyak nilai maka semakin disiplin pegawai tsb.', '0.25', 'Benefit'),
(2, 'Kerja Sama', 'Menilai tingkat kemampuan bekerjasama dengan atasan atau rekan kerja dalam melaksanakan tugas. Range Nilai 10-90.', '0.15', 'Benefit'),
(4, 'Komplain Pengunjung', 'Menilai tingkat komplain dari pengunjung untuk pegawai Range 10-50', '0.2', 'Cost'),
(5, 'Etika Kerja', 'Menilai hubungan baik antar pegawai, customer atau pun atasan. Range 10-50.', '0.25', 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `saw_pegawai`
--

CREATE TABLE `saw_pegawai` (
  `id` int(11) NOT NULL,
  `nama_pegawai` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saw_pegawai`
--

INSERT INTO `saw_pegawai` (`id`, `nama_pegawai`) VALUES
(1, 'Icha'),
(2, 'Rafif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `gambar_menu`
--
ALTER TABLE `gambar_menu`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `lupa_password`
--
ALTER TABLE `lupa_password`
  ADD PRIMARY KEY (`id_lupa_password`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`id_meja`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `menu_dibooking`
--
ALTER TABLE `menu_dibooking`
  ADD PRIMARY KEY (`id_menu_dibooking`);

--
-- Indexes for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `profil_usaha`
--
ALTER TABLE `profil_usaha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saran_kritik`
--
ALTER TABLE `saran_kritik`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `saw_hasil`
--
ALTER TABLE `saw_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saw_kriteria`
--
ALTER TABLE `saw_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saw_pegawai`
--
ALTER TABLE `saw_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gambar_menu`
--
ALTER TABLE `gambar_menu`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `lupa_password`
--
ALTER TABLE `lupa_password`
  MODIFY `id_lupa_password` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
  MODIFY `id_meja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `menu_dibooking`
--
ALTER TABLE `menu_dibooking`
  MODIFY `id_menu_dibooking` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  MODIFY `id_metode` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profil_usaha`
--
ALTER TABLE `profil_usaha`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `saran_kritik`
--
ALTER TABLE `saran_kritik`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `saw_hasil`
--
ALTER TABLE `saw_hasil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saw_kriteria`
--
ALTER TABLE `saw_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `saw_pegawai`
--
ALTER TABLE `saw_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
