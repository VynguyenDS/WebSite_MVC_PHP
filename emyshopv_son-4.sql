-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2019 at 04:26 PM
-- Server version: 10.3.18-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emyshopv_son`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitien`
--

CREATE TABLE `chitien` (
  `id_ct` int(11) NOT NULL,
  `ma_ct` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_thang` date NOT NULL,
  `taikhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `so_tien` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitien`
--

INSERT INTO `chitien` (`id_ct`, `ma_ct`, `ngay_thang`, `taikhoan`, `so_tien`, `noi_dung`) VALUES
(2, 'CT', '2019-10-05', 'sonnguyencntt041999@gmail.com', '200000  ', 'test......');

-- --------------------------------------------------------

--
-- Table structure for table `chuyenbay`
--

CREATE TABLE `chuyenbay` (
  `id_cb` int(11) NOT NULL,
  `ma_cb` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hang_hk` text COLLATE utf8_unicode_ci NOT NULL,
  `diem_xp` text COLLATE utf8_unicode_ci NOT NULL,
  `diem_den` text COLLATE utf8_unicode_ci NOT NULL,
  `tg_bay` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chuyenbay`
--

INSERT INTO `chuyenbay` (`id_cb`, `ma_cb`, `hang_hk`, `diem_xp`, `diem_den`, `tg_bay`) VALUES
(10, '7C803', 'Jeju Air', 'Seoul Incheon', 'Hanoi', '09:10 pm'),
(11, '7C804', 'Jeju Air', 'Hanoi', 'Seoul Incheon', '01:15 am'),
(17, 'BX 730', 'Air Busan', 'Hanoi', 'Busan', '01:45 am'),
(16, 'BX 739', 'Air Busan', 'Busan', 'Hanoi', '10:35 pm'),
(20, 'KE0679', 'Korean Air', 'Seoul Incheon', 'Hanoi', '07:05 pm'),
(21, 'KE680', 'Korean Air ', 'Hanoi', 'Seoul Incheon', '12:27 pm'),
(12, 'LJ057', 'Jin Air', 'Seoul Incheon', 'Hanoi', '08:35 pm'),
(13, 'LJ058', 'Jin Air', 'Hanoi', 'Seoul Incheon ', '12:50 am'),
(8, 'OZ729', 'Asiana Airlines', ' Seoul Incheon', 'Ha noi', '10:35 am'),
(9, 'OZ730', 'Asiana Airlines', 'Hanoi', 'Seoul Incheon', '02:30 pm'),
(15, 'TW164', 'Tway Air', 'Hanoi', 'Seoul Incheon', '03:30 am'),
(14, 'TW167', 'Tway Air', 'Seoul Incheon', 'hanoi', '11:30 pm'),
(19, 'VN414', 'Vietnam Airlines', 'Hanoi', 'Seoul Incheon', '10:25 am');

-- --------------------------------------------------------

--
-- Table structure for table `ct4ngay`
--

CREATE TABLE `ct4ngay` (
  `id_ct4ngay` int(11) NOT NULL,
  `ma_tour` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dodai_tour` int(11) NOT NULL,
  `ten_tour` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_1` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_2` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_3` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_4` text COLLATE utf8_unicode_ci NOT NULL,
  `loaict` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ct4ngay`
--

INSERT INTO `ct4ngay` (`id_ct4ngay`, `ma_tour`, `dodai_tour`, `ten_tour`, `ngay_1`, `ngay_2`, `ngay_3`, `ngay_4`, `loaict`) VALUES
(100, 'asdasdasda', 123, '123123312', '123123', '1231231231', '1231313123', '', 'ct3n'),
(102, 'CT4N', 100, 'asda', 'adasdadasda', 'asdasdasdasda', 'dasdadasdda', 'sdadasdadads', 'ct4n');

-- --------------------------------------------------------

--
-- Table structure for table `dangnhap`
--

CREATE TABLE `dangnhap` (
  `id_dn` int(11) NOT NULL,
  `ma_vp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `taikhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mk` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `ten_hdh` text COLLATE utf8_unicode_ci NOT NULL,
  `hovaten` text COLLATE utf8_unicode_ci NOT NULL,
  `loaitaikhoan` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dangnhap`
--

INSERT INTO `dangnhap` (`id_dn`, `ma_vp`, `taikhoan`, `mk`, `diachi`, `email`, `sdt`, `ten_hdh`, `hovaten`, `loaitaikhoan`) VALUES
(5, 'MAJOR', 'giamdoc', 'giamdocA1', '234', 'sonnguyencntt041999@gmail.com', '234', '234', '234', 'GD'),
(6, 'JUN', 'ketoan', 'ketoanA1', '234234', 'sonnguyencntt04@gmail.com', '234234234', 'tour', '24324', 'KT'),
(8, 'HAPPY', 'nhanvien', 'nhanvienA1', '123123123', 'sonnguyencntt04@gmail.cb', '123123123', 'tour', 'dassasaddsa', 'Nv'),
(7, 'JUN', 'quanly', 'quanlyA1', '23424', 'sonnguyencntt04@gmail.co', '234234', '2342', '2342', 'QL');

-- --------------------------------------------------------

--
-- Table structure for table `doan`
--

CREATE TABLE `doan` (
  `id_doan` int(11) NOT NULL,
  `id_dn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_vp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_don` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tien` text COLLATE utf8_unicode_ci NOT NULL,
  `ma_doan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loai_tour` text COLLATE utf8_unicode_ci NOT NULL,
  `ten_tour` text COLLATE utf8_unicode_ci NOT NULL,
  `ma_tour` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ma_cb_don` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ma_cb_tien` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_lon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tre_em` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cost_sin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cost_twin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cost_dou` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cost_trip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_ks_1` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dem_sk_1` int(50) NOT NULL,
  `ma_ks_2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dem_ks_2` int(50) NOT NULL,
  `ma_ks_3` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dem_ks_3` int(50) NOT NULL,
  `ma_hd` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `truong_doan` text COLLATE utf8_unicode_ci NOT NULL,
  `thanh_tien` float NOT NULL,
  `tour_phi` float NOT NULL,
  `thanh_toan` text COLLATE utf8_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doan`
--

INSERT INTO `doan` (`id_doan`, `id_dn`, `ma_vp`, `ngay_don`, `ngay_tien`, `ma_doan`, `loai_tour`, `ten_tour`, `ma_tour`, `ma_cb_don`, `ma_cb_tien`, `nguoi_lon`, `tre_em`, `cost_sin`, `cost_twin`, `cost_dou`, `cost_trip`, `ma_ks_1`, `dem_sk_1`, `ma_ks_2`, `dem_ks_2`, `ma_ks_3`, `dem_ks_3`, `ma_hd`, `sdt`, `truong_doan`, `thanh_tien`, `tour_phi`, `thanh_toan`, `stt`) VALUES
(34, 'giamdoc', 'DO -DREAM', '2019-09-26', '2019-09-28', 'DO -DREAM-26/09/2019-1', 'Group Tour', 'ct4n', 'CT4N', '7C803', 'OZ730', '234', '234', '234', '234', '234', '234', 'MTBN', 234, 'MTVT', 234, 'ALANA', 234, '0363752782', 'bui duy thuan', '234', 234, 246402, 'Đã thanh toán', 1),
(30, '5', 'DO -DREAM', '2019-09-26', '2019-09-23', 'DO -DREAM-26/09/2019-2', 'Incentive', 'ct3n', 'asdasdasda', 'LJ058', 'VN414', '2342', '234234', '2342', '2342', '234', '2342', 'MTMN', 23424, 'MTMN', 2342, 'MTHL', 234243, '0973367011', 'le van mau', '243234', 21471200, 5104710000000, 'Đã thanh toán', 2);

-- --------------------------------------------------------

--
-- Table structure for table `huongdan`
--

CREATE TABLE `huongdan` (
  `stt_hd` int(11) NOT NULL,
  `mahuongdan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hovanten` text COLLATE utf8_unicode_ci NOT NULL,
  `sothe` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hanche` text COLLATE utf8_unicode_ci NOT NULL,
  `cmnd` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `huongdan`
--

INSERT INTO `huongdan` (`stt_hd`, `mahuongdan`, `hovanten`, `sothe`, `hanche`, `cmnd`, `sdt`, `diachi`) VALUES
(15, 'BDT', 'Bùi Duy Thuận', '148180974', '01/01/2022', '113477784', '0363752782', 'Hà nội'),
(16, 'BNS', 'Bùi Ngọc Sơn', '112170138', '02/02/2022', '135303363', '0978405822', 'Vĩnh Tường - Vĩnh Phúc'),
(58, 'DAT', 'Đào Anh Tuấn', '142190162', '05/06/2022', '183725283', '0941175111', 'Vượng Lộc - Hà Tĩnh'),
(18, 'DTH', 'Doãn Thị Huyền', '148180328', '05/05/2022', '173313260', '0947123338', 'Thanh Hóa'),
(19, 'DTN', 'Doãn Thị Nhàn', '127160169', '02/10/2022', '172396984', '0946208088', 'Vĩnh Phúc'),
(17, 'DXT', 'Đặng Xuân Tuất', '101184600', '10/10/2022', '022088002', '0989790510', 'Quảng Ninh'),
(20, 'HTTQ', 'Hoàng Thị Thu Quyên', '125180139', '25/10/2022', '131492288', '0972056659', 'Vĩnh Phúc'),
(21, 'KVH', 'Kiều Văn Hảo', '101184432', '23/02/2022', '127396270', '0376306879', 'Quảng Ninh'),
(14, 'LAT', 'Lê Anh Tuấn', '110160446', '10/10/2022', '112033296', '0974180286', 'Phúc Thọ - Hà Nội'),
(22, 'LMP', 'Lê Minh Phúc', '166180103', '10/05/2022', '241101125', '0949426429', 'Quảng Ninh'),
(23, 'LNM', 'Lê Ngọc Minh', '112170136', '12/02/2022', '026086002', '0946321986', 'Vĩnh Phúc'),
(24, 'LTM', 'Lê Thị Mai', '127180185', '15/10/2022', '381880046', '0328623936', 'Thanh Hóa'),
(25, 'LVB', 'Lê Văn Bảo', '112170133', '12/03/2022', '135304616', '0975625446', 'HÀ NỘi'),
(61, 'LVM', 'Lê Văn Mậu', '126190220', '19/07/2022', '260870045', '0973367011', 'Yên Bình - Vĩnh Phúc'),
(26, 'LVT', 'Long Văn Thiết', '101132619', '02/12/2022', '070653922', '0947143968', 'Tuyên Quang'),
(27, 'MAT', 'Mầu Anh Tuấn', '134100103', '15/12/2022', '034079006', '0903237529', 'HÀ Nội'),
(28, 'NCC', 'Nguyễn Cao Chí', '101100568', '10/10/2022', '108100237', '0987012939', 'HÀ Nội'),
(56, 'NDH', 'Nguyến Duy Hiển', '101174018', '14/07/2022', '001082015', '0389226437', 'Đông Anh - Hà Nội'),
(29, 'NĐH', 'Nguyễn Đình Hòa', '011953729', '13/02/2022', '011953729', '0913533740', 'Hà Nội'),
(30, 'NNC', 'Nguyễn Ngọc Chung', '134170182', '15/01/2022', '340740030', '0984495468', 'Thái Bình'),
(31, 'NTC', 'Nguyễn Thanh Chương', '127160167', '20/08/2022', '011801033', '0972657883', 'Hà Nội'),
(32, 'NTH', 'Nguyễn Thị Hiền', '148180263', '14/07/2022', '173230837', '0961691687', 'Thanh Hóa'),
(33, 'NTHo', 'Nguyễn Thị Hòe', '133180333', '12/12/2022', '142438133', '0356800686', 'HẢi Dương'),
(34, 'NTHue', 'Nguyễn Thị Huệ', '127170180', '02/05/2022', '125264298', '0963100586', 'BẮc Ninh'),
(59, 'NTKC', 'Nguyễn Thị Kim Chi', '148180282', '19/07/2022', '250774059', '0378622204', 'Nam Từ Liêm -Hà Nội'),
(35, 'NTL', 'Nguyễn Thị Lưu', '101163686', '10/05/2022', '187483174', '0989451722', 'HÀ Nội'),
(36, 'NTM', 'Nguyễn Tiến Mạnh', '101132455', '16/12/2022', '107800200', '0963215652', 'Hà Nội'),
(62, 'NTThan', 'Nguyễn Thị Thân', '101173892', '15/12/2022', '187253682', '0988273107', 'Tân Kỳ - Nghệ An'),
(37, 'NVH', 'Nguyễn Văn Huân', '101111727', '10/12/2022', '027076000', '0982295493', 'Hà Nội'),
(38, 'NVHuy', 'Nguyễn Văn Huy', '126170157', '05/05/2022', '022093001', '0348625883', 'Hà Nội'),
(40, 'NVT', 'Nguyễn Văn Tiến', '101174133', '23/10/2022', '220860022', '0966039855', 'Hà nội'),
(39, 'NVTH', 'Nguyễn Văn Thanh', '127170174', '25/10/2022', '001073014', '0915987990', 'Vĩnh Phúc'),
(57, 'PHT', 'Phan Hoài Thương', '148180202', '23/12/2022', '022195000', '0395114685', 'Tiên Lãng - Hải Phòng'),
(41, 'PVT', 'Phạm Văn Thực', '148180071', '20/05/2022', '230848442', '0938639007', 'Gia Lai'),
(54, 'PVToan', 'Phạm Văn Toản', '101100128', '12/01/2022', '001075005', '0943179289', 'Văn Tự, Thường Tín, HN'),
(60, 'PVTue', 'Phạm Văn Tuệ ', '101112035', '15/09/2022', '125204309', '0978997199', 'Lạc Vệ - Bắc Ninh'),
(42, 'QĐT', 'Quách Đình Tuân', '134180186', '16/12/2022', '034086000', '0968304669', 'Thái Thụy - Thái Bình'),
(44, 'TNH', 'Trần Như Hưng', '148180298', '26/10/2022', '125159202', '0916530747', 'Bắc Ninh'),
(43, 'TNK', 'Trần Ngọc Khanh', '126180205', '25/10/2022', '135610784', '0968434499', 'Vĩnh Phúc'),
(48, 'TTA', 'Trần Tuấn Anh', '101111770', '17/07/2022', '001081000', '0975413961', 'Đống Đa - Hà Nội'),
(45, 'TTNA', 'Trần Thị Ngọc Ánh', '101184454', '19/10/2022', '101195140', '0376247696', 'Thái Bình'),
(46, 'TTO', 'Trần Thị Oanh', '140190199', '14/09/2022', '040188000', '0961143195', 'Thường Tín - Hà Nội'),
(47, 'TTTH', 'Trần Thị Thu Hà', '101184920', '17/03/2022', '011730027', '0987140773', 'Sài Đồng - Long Biên - Hà Nội'),
(63, 'TTTHang', 'Trần Thị Thu Hằng', '130130127', '27/08/2022', '030185006', '0904261870', 'Sao Đỏ, Chí Linh, Hải Dương'),
(49, 'TVH', 'Trần Văn Hậu', '101184705', '14/04/2022', '260960023', '0968839694', 'Vĩnh Tường - Vĩnh Phúc'),
(55, 'TVHop', 'Trần Văn Hợp', '110160452', '15/06/2022', '135170036', '0932089688', 'Yên Bình - Vĩnh Tường - Vĩnh Phúc '),
(50, 'TVK', 'Trần Văn Khánh', '110140314', '06/12/2022', '026076003', '0968448366', 'Vĩnh Phúc'),
(52, 'TVL', 'Trịnh Văn Lâm', '126180203', '06/05/2022', '101284003', '0987513294', 'Đồng Triều - Quảng Ninh'),
(51, 'TVT', 'Trần Văn Triệu', '101184891', '05/12/2022', '145290149', '0944898955', 'Hưng Yên'),
(53, 'VML', 'Vũ Minh Luận', '148180279', '12/12/2022', '001088010', '0944355755', 'Phú Xuyên - Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `khachsan`
--

CREATE TABLE `khachsan` (
  `id_ks` int(11) NOT NULL,
  `ma_ks` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ten_ks` text COLLATE utf8_unicode_ci NOT NULL,
  `so_sao` int(5) NOT NULL,
  `gp_single` float NOT NULL,
  `gp_twin` float NOT NULL,
  `gp_double` float NOT NULL,
  `gp_triple` float NOT NULL,
  `gp_vip` float NOT NULL,
  `thoi_han` text COLLATE utf8_unicode_ci NOT NULL,
  `ma_hd` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` text COLLATE utf8_unicode_ci NOT NULL,
  `sdt_sale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sdt_kt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email_sale` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_booking` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_kt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loai_tt` text COLLATE utf8_unicode_ci NOT NULL,
  `ten_vp` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachsan`
--

INSERT INTO `khachsan` (`id_ks`, `ma_ks`, `ten_ks`, `so_sao`, `gp_single`, `gp_twin`, `gp_double`, `gp_triple`, `gp_vip`, `thoi_han`, `ma_hd`, `dia_chi`, `sdt_sale`, `sdt_kt`, `email_sale`, `email_booking`, `email_kt`, `loai_tt`, `ten_vp`) VALUES
(27, 'ALANA', 'ALANA HOTEL', 4, 1400000, 1500000, 1800000, 1900000, 2600000, '31/12/2019', '06012019', 'NHA TRANG', '0979756789', '0979584756', 'sales@alana.com', 'sales@alana.com', 'sales@alana.com', 'Hàn Quốc', 'tc'),
(22, 'Bảo Sơn', 'Bao Sơn hotel', 4, 1300000, 1400000, 1500000, 1600000, 1900000, '31/12/2019', '150119', 'Hà Nội', '0977865961', '0901023058', 'sales@baoson.com', 'sales@baoson.com', 'sales@baoson.com', 'Hàn Quốc', 'w'),
(15, 'Central', 'Central Hotel', 5, 1400000, 1500000, 1600000, 1800000, 2300000, '31/12/2019', '01112019', 'Hạ Long', '0912789450', '0983152123', 'sales@central.com', 'sales@central.com', 'sales@central.com', 'hàn QUốc', 'k'),
(24, 'chicland', 'Chicland hotel', 5, 1600000, 1800000, 1800000, 1900000, 2500000, '31/12/2019', '010419', 'Đà nẵng', '0977361258', '0977271369', 'sales@chicland.com', 'sales@chicland.com', 'sales@chicland.com', 'HÀn QUốc', 'ec'),
(35, 'coo', 'hanoitoday', 5, 1500000, 1500000, 1500000, 1500000, 1500000, '31/12/2019', '090819', 'hà nôi', '069841266', '156968522', 'sales@kkdsfjs.com', 'sales@kkdsfjs.com', 'sales@kkdsfjs.com', 'HQ', 'fwsgrej2'),
(7, 'daewoo', 'Daewoo', 5, 1500000, 1600000, 1700000, 1900000, 3000000, '31/12/2019', '01042019', 'Nguyễn Chí Thanh', '0977361275', '0345869895', 'nhungdaewoo@gmail.com', 'nhungdaewoo@gmail.com', 'nhungdaewoo@gmail.com', 'Hàn Quốc', 'b'),
(19, 'Dream', 'Dream hotel', 5, 1300000, 1400000, 1500000, 1600000, 1900000, '31/12/2019', '100519', 'Hạ Long', '0912123456', '0942178986', 'sales@dream.com', 'sales@dream.com', 'sales@dream.com', 'Hàn QUốc', 'q'),
(20, 'FLC hạ Long', 'FLC Hạ Long Hotel', 5, 1500000, 1600000, 1700000, 1900000, 2600000, '31/12/2019', '200119', 'Hạ Long', '0945812451', '0362741852', 'sales@flchalong.com', 'sales@flchalong.com', 'sales@flchalong.com', 'Hàn Quốc', 'r'),
(34, 'fortuna', 'FORTUNA HOTEL', 5, 1600000, 1800000, 1900000, 2500000, 2900000, '31/12/2019', '060419', 'HÀ nội', '0967458478', '0964781002', 'sales@fortuna.com', 'sales@fortuna.com', 'sales@fortuna.com', 'HÀn Quốc', 'dhall'),
(18, 'galaxy', 'Galaxy Hotel', 5, 1600000, 1800000, 1900000, 2500000, 2700000, '31/12/2019', '100319', 'Hạ Long', '0842241562', '0844521223', 'sales@galaxy.com', 'sales@galaxy.com', 'sales@galaxy.com', 'Hàn Quốc', 'p'),
(14, 'Golden', 'Golden Hotel', 4, 1400000, 1500000, 1600000, 1800000, 1900000, '31/12/2019', '10022019', 'Hạ Long', '0913452451', '0962352369', 'sales@golden.com', 'sales@golden.com', 'sales@golden.com', 'Hàn Quốc', 'l'),
(4, 'GRP', 'Grand Plaza', 5, 1800000, 2100000, 2300000, 2400000, 5800000, '18/11/2020', 'GR2019', 'Trần Duy Hưng', '3124355', '2443543543', 'fusefk@gmail.com', 'rheuthgr@gmail.com', 'hfjshgk@gmail.com', 'Hàn QUốc', 'Jun Tour'),
(26, 'HANOI LOTUS', 'HA NOI LOTUS HOTEL', 5, 1900000, 1950000, 2500000, 2700000, 2800000, '31/12/2019', '01052019', 'HÀ NỘI', '0982125148', '0982147158', 'sales@hanoilotus.com', 'sales@hanoilotus.com', 'sales@hanoilotus.com', 'hàn Quốc', 'rc'),
(10, 'Lotte', 'Lotte hotel', 5, 2000000, 2100000, 2400000, 2600000, 3600000, '31/12/2019', '050119', 'Đào Tấn', '0982141562', '0965156148', 'sales@lotte.com.vn', 'sales@lotte.com.vn', 'sales@lotte.com.vn', 'Hàn Quốc', 'e'),
(11, 'Lotus villa', 'Lotus villa Hotel', 5, 1600000, 1700000, 1800000, 1900000, 2500000, '31/12/2019', '060119', 'Hạ Long', '0964147148', '0977458489', 'sales@lotusvilla.com.vn', 'sales@lotusvilla.com.vn', 'sales@lotusvilla.com.vn', 'Hàn Quốc', 'f'),
(17, 'Morning', 'Morning Hotel', 5, 1500000, 1600000, 1700000, 1800000, 2600000, '31/12/2019', '120119', 'Hạ Long', '0346256189', '0347169843', 'sales@morning.com', 'sales@morning.com', 'sales@morning.com', 'hàn Quốc', 'o'),
(30, 'MTBN', 'Mường thanh Bắc Ninh', 5, 1500000, 1600000, 1800000, 1900000, 2900000, '31/12/2019', '020319', 'BẮc Ninh', '0344198589', '0344596589', 'sales@mtbnbn.com', 'sales@mtbnbn.com', 'sales@mtbnbn.com', 'Hàn Quốc', 'qya'),
(5, 'MTHL', 'Mường Thanh', 4, 1500000, 1700000, 1600000, 1500000, 3500000, '31/12/2019', '010119', 'Hạ Long', '0985789456', '0358692123', 'sales@muwongthanh.com', 'sales@muwongthanh.com', 'sales@muwongthanh.com', 'HÀn Quốc', 'VP1'),
(3, 'MTHN', 'Mường Thanh', 4, 1000000, 1200000, 1300000, 1500000, 4500000, '31/12/2019', 'MT01', 'hà Đông', '3214214020', '4320424242', 'sfkjskfskfsk@gmail.com', 'fdshfkshfk@gmail.com', 'fkesfjsjk@gmail.com', 'Hàn Quốc', 'JS Tour'),
(28, 'MTMN', 'Mường Thanh Mũi Né', 4, 1500000, 1600000, 1800000, 2500000, 3500000, '31/12/2019', '01082019', 'mũi né Bình Thuận', '0983589569', '0983256244', 'sales@mtmn.com', 'sales@mtmn.com', 'sales@mtmn.com', 'Hàn Quốc', 'uh'),
(29, 'MTQN', 'Mường thanh Quảng Ninh', 5, 1300000, 1400000, 1500000, 2500000, 2600000, '31/12/2019', '090119', 'Quảng Ninh', '0964156158', '0964258257', 'sales@mtqnn.com', 'sales@mtqnn.com', 'sales@mtqnn.com', 'HÀn QUốc', 'han'),
(31, 'MTSP', 'Mường Thanh Sa Pa', 5, 1800000, 1850000, 1900000, 1958000, 2600000, '31/12/2019', '050219', 'LÀo Cai', '0346705123', '0346125147', 'sales@mtlcc.com', 'sales@mtlcc.com', 'sales@mtlcc.com', 'Hàn Quốc', 'qiuo'),
(32, 'MTVT', 'Mường Thanh Vũng Tàu', 5, 1200000, 1300000, 1800000, 1900000, 2400000, '31/12/2019', '050619', 'Vũng tàu', '034418984', '0344014047', 'sales@mtvtv.com', 'sales@mtvtv.com', 'sales@mtvtv.com', 'HÀn QUỐC', 'UQASA'),
(6, 'MTXL', 'Mường thanh', 4, 1500000, 1600000, 1800000, 2000000, 3000000, '31/12/2019', '011019', 'Hà Đông', '0345265245', '0365125126', 'sales@mtxl.com.vn', 'sales@mtxl.com.vn', 'sales@mtxl.com.vn', 'Hàn Quốc', 'Hà nội'),
(16, 'palace', 'Palace Hotel', 5, 1200000, 1300000, 1500000, 1800000, 2000000, '31/12/2019', '1012019', 'hạ long', '0904124189', '0904178145', 'sales@palace.com', 'sales@palace.com', 'sales@palace.com', 'Hàn Quốc', 'n'),
(9, 'Pan Pacific', 'Pan Pacific hotel', 5, 1800000, 1900000, 2000000, 2100000, 3500000, '31/12/2019', '030109', 'Thanh niên Ba đình Hà nôi', '0965126154', '0977586596', 'sales@panpacific.com.vn', 'sales@panpacific.com.vn', 'sales@panpacific.com.vn', 'Hàn Quốc', 'd'),
(21, 'Paradise Suite', 'Paradise Suite Hotel', 5, 1700000, 1800000, 1900000, 2300000, 3500000, '31/12/2019', '250119', 'hạ Long', '0974210023', '0972014025', 'sales@paradisesuite.com', 'sales@paradisesuite.com', 'sales@paradisesuite.com', 'Hàn Quốc', 's'),
(33, 'SEN ', 'SEN HOTEL', 4, 1500000, 1800000, 1700000, 1900000, 2500000, '31/12/2019', '060719', 'HÀ NỘI', '0974012036', '0974089045', 'sales@senhn.com', 'sales@senhn.com', 'sales@senhn.com', 'HÀn Quốc', 'ahjj'),
(8, 'Sheraton', 'Sheraton hotel', 5, 1700000, 1600000, 1800000, 2000000, 3500000, '31/12/2019', '02012019', 'Quảng An tây Hồ', '0942456789', '0345756152', 'Sales@Sheraton.com.vn', 'Sales@Sheraton.com.vn', 'Sales@Sheraton.com.vn', 'Hàn Quốc', 'c'),
(23, 'top', 'TOP HOTEL', 4, 1200000, 1500000, 1600000, 1900000, 2300000, '31/12/2019', '15012019', 'HÀ NỘI', '0365123456', '0912153128', 'sales@top.com', 'sales@top.com', 'sales@top.com', 'Hàn Quốc', 'ac'),
(12, 'Vinpearl', 'Vinpearl hotel', 5, 1500000, 1600000, 1700000, 1800000, 2500000, '31/12/2019', '10012019', 'HẠ Long', '0982151298', '0977371271', 'sales@vinpearl.com', 'sales@vinpearl.com', 'sales@vinpearl.com', 'Hàn Quốc', 'g'),
(13, 'WyndhamLegend', 'Wyndham Legend Hotel', 5, 1800000, 1900000, 2000000, 2400000, 3000000, '31/12/2019', '100219', 'Hạ Long', '0744568956', '0352125148', 'sales@wyndhamlegend.com', 'sales@wyndhamlegend.com', 'sales@wyndhamlegend.com', 'HÀn Quốc', 'h');

-- --------------------------------------------------------

--
-- Table structure for table `lichsuchitien`
--

CREATE TABLE `lichsuchitien` (
  `id_ct` int(11) NOT NULL,
  `id_dn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_ct` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_thang` date NOT NULL,
  `taikhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `so_tien` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `lydo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lichsuchitien`
--

INSERT INTO `lichsuchitien` (`id_ct`, `id_dn`, `ma_ct`, `ngay_thang`, `taikhoan`, `so_tien`, `noi_dung`, `lydo`) VALUES
(1, 'giamdoc', 'CT', '2019-10-05', 'sonnguyencntt041999@gmail.com', '200000  ', 'test......', '234234234234'),
(2, 'giamdoc', 'CT', '2019-10-05', 'sonnguyencntt041999@gmail.com', '200000  ', 'test......', '234234234234');

-- --------------------------------------------------------

--
-- Table structure for table `lichsuchuyenbay`
--

CREATE TABLE `lichsuchuyenbay` (
  `id_cb` int(11) NOT NULL,
  `id_dn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_cb` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hang_hk` text COLLATE utf8_unicode_ci NOT NULL,
  `diem_xp` text COLLATE utf8_unicode_ci NOT NULL,
  `diem_den` text COLLATE utf8_unicode_ci NOT NULL,
  `tg_bay` text COLLATE utf8_unicode_ci NOT NULL,
  `lydo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lichsuchuyenbay`
--

INSERT INTO `lichsuchuyenbay` (`id_cb`, `id_dn`, `ma_cb`, `hang_hk`, `diem_xp`, `diem_den`, `tg_bay`, `lydo`) VALUES
(2, 'ketoan', 'KE680', 'Korean Air ', 'Hanoi', 'Seoul Incheon', '12:27 pm', 'ahihihihi'),
(3, 'nhanvien', 'KE680', 'Korean Air ', 'Hanoi', 'Seoul Incheon', '12:27 pm', '2131231231231');

-- --------------------------------------------------------

--
-- Table structure for table `lichsuct3ngay`
--

CREATE TABLE `lichsuct3ngay` (
  `id_ct3ngay` int(11) NOT NULL,
  `id_dn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_tour` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ten_ct` text COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ct3ngay',
  `dodai_tour` int(11) NOT NULL,
  `ten_tour` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_1` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_2` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_3` text COLLATE utf8_unicode_ci NOT NULL,
  `lydo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lichsuct3ngay`
--

INSERT INTO `lichsuct3ngay` (`id_ct3ngay`, `id_dn`, `ma_tour`, `ten_ct`, `dodai_tour`, `ten_tour`, `ngay_1`, `ngay_2`, `ngay_3`, `lydo`) VALUES
(1, 'giamdoc', 'asdasdasda', 'ct3ngay', 123, '123123312', '123123', '1231231231', '1231313123', 'ajjjjjasdjaj'),
(2, 'ketoan', 'asdasdasda', 'ct3ngay', 123, '123123312', '123123', '1231231231', '1231313123', 'ahohohohoh');

-- --------------------------------------------------------

--
-- Table structure for table `lichsuct4ngay`
--

CREATE TABLE `lichsuct4ngay` (
  `id_ct4ngay` int(11) NOT NULL,
  `id_dn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_tour` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dodai_tour` int(11) NOT NULL,
  `ten_tour` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_1` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_2` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_3` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_4` text COLLATE utf8_unicode_ci NOT NULL,
  `lydo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lichsuct4ngay`
--

INSERT INTO `lichsuct4ngay` (`id_ct4ngay`, `id_dn`, `ma_tour`, `dodai_tour`, `ten_tour`, `ngay_1`, `ngay_2`, `ngay_3`, `ngay_4`, `lydo`) VALUES
(3, 'ketoan', 'CT4N', 100, 'asda', 'adasdadasda', 'asdasdasdasda', 'dasdadasdda', 'sdadasdadads', '2342342423424');

-- --------------------------------------------------------

--
-- Table structure for table `lichsudoan`
--

CREATE TABLE `lichsudoan` (
  `id_doan` int(11) NOT NULL,
  `id_dn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_vp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_don` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tien` text COLLATE utf8_unicode_ci NOT NULL,
  `ma_doan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loai_tour` text COLLATE utf8_unicode_ci NOT NULL,
  `ten_tour` text COLLATE utf8_unicode_ci NOT NULL,
  `ma_tour` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ma_cb_don` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ma_cb_tien` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_lon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tre_em` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cost_sin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cost_twin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cost_dou` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cost_trip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_ks_1` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dem_sk_1` int(50) NOT NULL,
  `ma_ks_2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dem_ks_2` int(50) NOT NULL,
  `ma_ks_3` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dem_ks_3` int(50) NOT NULL,
  `ma_hd` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `truong_doan` text COLLATE utf8_unicode_ci NOT NULL,
  `thanh_tien` int(11) NOT NULL,
  `tour_phi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `thanh_toan` text COLLATE utf8_unicode_ci NOT NULL,
  `lydo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lichsudoan`
--

INSERT INTO `lichsudoan` (`id_doan`, `id_dn`, `ma_vp`, `ngay_don`, `ngay_tien`, `ma_doan`, `loai_tour`, `ten_tour`, `ma_tour`, `ma_cb_don`, `ma_cb_tien`, `nguoi_lon`, `tre_em`, `cost_sin`, `cost_twin`, `cost_dou`, `cost_trip`, `ma_ks_1`, `dem_sk_1`, `ma_ks_2`, `dem_ks_2`, `ma_ks_3`, `dem_ks_3`, `ma_hd`, `sdt`, `truong_doan`, `thanh_tien`, `tour_phi`, `thanh_toan`, `lydo`) VALUES
(1, 'giamdoc', 'DO -DREAM', '2019-09-20', '2019-09-23', 'DO -DREAM-20/09/2019', 'Group Tour', 'ct3n', 'asdasdasda', 'LJ058', 'VN414', '2342', '234234', '2342', '2342', '234', '2342', 'MTMN', 23424, 'MTMN', 2342, 'MTHL', 234243, '0973367011', 'le van mau', '243', 21471200, '222147000000', 'Đã thanh toán', '23423423423423'),
(2, 'ketoan', 'DO -DREAM', '2019-09-20', '2019-09-23', 'DO -DREAM-20/09/2019', 'Group Tour', 'ct3n', 'asdasdasda', 'LJ058', 'VN414', '2342', '234234', '2342', '2342', '234', '2342', 'MTMN', 23424, 'MTMN', 2342, 'MTHL', 234243, '0973367011', 'le van mau', '243', 21471200, '222147000000', 'Đã thanh toán', 'ahlhlhlkkk'),
(4, 'giamdoc', 'MAJOR', '2019-09-21', '2019-09-23', 'MAJOR-21/09/2019', 'Group Tour', 'ct3n', 'asdasdasda', 'OZ729', 'BX 739', '21', '123', '213', '213', '123', '23', 'MTHL', 123, 'Morning', 123, 'MTBN', 123, '0363752782', 'bui duy th', '123', 123123324, '30473022690', 'Đã thanh toán', '234234234'),
(5, 'giamdoc', 'MAJOR', '2019-09-21', '2019-09-22', 'MAJOR-21/09/2019', 'Group Tour', 'ct3n', 'asdasdasda', 'OZ729', 'BX 739', '21', '123', '213', '213', '123', '23', 'MTHL', 123, 'Morning', 123, 'MTBN', 123, '0363752782', 'bui duy th', '123', 123123000, '30473000000', 'Đã thanh toán', '2342342423432'),
(15, 'giamdoc', 'DO -DREAM', '2019-09-25', '2019-09-23', 'DO -DREAM-25/09/2019', 'Incentive', 'ct3n', 'asdasdasda', 'LJ058', 'VN414', '2342', '234234', '2342', '2342', '234', '2342', 'MTMN', 23424, 'MTMN', 2342, 'MTHL', 234243, '0973367011', 'le van mau', '243234', 21471200, '5104710000000', 'Đã thanh toán', '23423423424'),
(16, 'giamdoc', 'DO -DREAM', '2019-09-26', '2019-09-23', 'DO -DREAM-26/09/2019', 'Incentive', 'ct3n', 'asdasdasda', 'LJ058', 'VN414', '2342', '234234', '2342', '2342', '234', '2342', 'MTMN', 23424, 'MTMN', 2342, 'MTHL', 234243, '0973367011', 'le van mau', '243234', 21471200, '5104710000000', 'Đã thanh toán', '234234234234'),
(17, 'giamdoc', 'DO -DREAM', '2019-09-26', '2019-09-23', 'DO -DREAM-26/09/2019', 'Incentive', 'ct3n', 'asdasdasda', 'LJ058', 'VN414', '2342', '234234', '2342', '2342', '234', '2342', 'MTMN', 23424, 'MTMN', 2342, 'MTHL', 234243, '0973367011', 'le van mau', '243234', 21471200, '5104710000000', 'Đã thanh toán', '234234234'),
(18, 'giamdoc', 'DO -DREAM', '2019-09-25', '2019-09-23', 'DO -DREAM-25/09/2019', 'Incentive', 'ct3n', 'asdasdasda', 'LJ058', 'VN414', '2342', '234234', '2342', '2342', '234', '2342', 'MTMN', 23424, 'MTMN', 2342, 'MTHL', 234243, '0973367011', 'le van mau', '243234', 21471200, '5104710000000', 'Đã thanh toán', '123123123123'),
(19, 'giamdoc', 'DO -DREAM', '2019-09-26', '2019-09-23', 'DO -DREAM-26/09/2019-2', 'Incentive', 'ct3n', 'asdasdasda', 'LJ058', 'VN414', '2342', '234234', '2342', '2342', '234', '2342', 'MTMN', 23424, 'MTMN', 2342, 'MTHL', 234243, '0973367011', 'le van mau', '243234', 21471200, '5104710000000', 'Đã thanh toán', '123123123123');

-- --------------------------------------------------------

--
-- Table structure for table `lichsuhuongdan`
--

CREATE TABLE `lichsuhuongdan` (
  `stt_hd` int(11) NOT NULL,
  `id_dn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mahuongdan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hovanten` text COLLATE utf8_unicode_ci NOT NULL,
  `sothe` text COLLATE utf8_unicode_ci NOT NULL,
  `hanche` text COLLATE utf8_unicode_ci NOT NULL,
  `cmnd` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `Lydo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lichsuhuongdan`
--

INSERT INTO `lichsuhuongdan` (`stt_hd`, `id_dn`, `mahuongdan`, `hovanten`, `sothe`, `hanche`, `cmnd`, `sdt`, `diachi`, `Lydo`) VALUES
(3, 'giamdoc', 'TTTHang', 'Trần Thị Thu Hằng', '130130127', '27/08/2022', '030185006', '0904261870', 'Sao Đỏ, Chí Linh, Hải Dương', '234234234243'),
(4, 'ketoan', 'TTTHang', 'Trần Thị Thu Hằng', '130130127', '27/08/2022', '030185006', '0904261870', 'Sao Đỏ, Chí Linh, Hải Dương', '1231312312313'),
(5, 'ketoan', 'TTTHang', 'Trần Thị Thu Hằng', '130130127', '27/08/2022', '030185006', '0904261870', 'Sao Đỏ, Chí Linh, Hải Dương', '123123123123'),
(6, 'ketoan', 'TTTHang', 'Trần Thị Thu Hằng', '130130127', '27/08/2022', '030185006', '0904261870', 'Sao Đỏ, Chí Linh, Hải Dương', 'ahhihihihi');

-- --------------------------------------------------------

--
-- Table structure for table `lichsukhachsan`
--

CREATE TABLE `lichsukhachsan` (
  `id_ks` int(11) NOT NULL,
  `id_dn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_ks` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ten_ks` text COLLATE utf8_unicode_ci NOT NULL,
  `so_sao` int(5) NOT NULL,
  `gp_single` float NOT NULL,
  `gp_twin` float NOT NULL,
  `gp_double` float NOT NULL,
  `gp_triple` float NOT NULL,
  `gp_vip` float NOT NULL,
  `thoi_han` text COLLATE utf8_unicode_ci NOT NULL,
  `ma_hd` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` text COLLATE utf8_unicode_ci NOT NULL,
  `sdt_sale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sdt_kt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email_sale` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_booking` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_kt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loai_tt` text COLLATE utf8_unicode_ci NOT NULL,
  `ten_vp` text COLLATE utf8_unicode_ci NOT NULL,
  `lydo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lichsukhachsan`
--

INSERT INTO `lichsukhachsan` (`id_ks`, `id_dn`, `ma_ks`, `ten_ks`, `so_sao`, `gp_single`, `gp_twin`, `gp_double`, `gp_triple`, `gp_vip`, `thoi_han`, `ma_hd`, `dia_chi`, `sdt_sale`, `sdt_kt`, `email_sale`, `email_booking`, `email_kt`, `loai_tt`, `ten_vp`, `lydo`) VALUES
(5, 'ketoan', 'coo', 'hanoitoday', 5, 1500000, 1500000, 1500000, 1500000, 1500000, '31/12/2019', '090819', 'hà nôi', '069841266', '156968522', 'sales@kkdsfjs.com', 'sales@kkdsfjs.com', 'sales@kkdsfjs.com', 'HQ', 'fwsgrej2', 'ahihihihi'),
(6, 'giamdoc', 'coo', 'hanoitoday', 5, 1500000, 1500000, 1500000, 1500000, 1500000, '31/12/2019', '090819', 'hà nôi', '069841266', '156968522', 'sales@kkdsfjs.com', 'sales@kkdsfjs.com', 'sales@kkdsfjs.com', 'HQ', 'fwsgrej2', 'ahohohoho'),
(7, 'nhanvien', 'coo', 'hanoitoday', 5, 1500000, 1500000, 1500000, 1500000, 1500000, '31/12/2019', '090819', 'hà nôi', '069841266', '156968522', 'sales@kkdsfjs.com', 'sales@kkdsfjs.com', 'sales@kkdsfjs.com', 'HQ', 'fwsgrej2', '123123123123123');

-- --------------------------------------------------------

--
-- Table structure for table `lichsuphieudientu`
--

CREATE TABLE `lichsuphieudientu` (
  `id_dt` int(11) NOT NULL,
  `id_dn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_dt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_thang` date NOT NULL,
  `taikhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_bi_thu` text COLLATE utf8_unicode_ci NOT NULL,
  `sdt` float NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `so_tien` float NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `lydo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lichsuphieudientu`
--

INSERT INTO `lichsuphieudientu` (`id_dt`, `id_dn`, `ma_dt`, `ngay_thang`, `taikhoan`, `nguoi_bi_thu`, `sdt`, `email`, `so_tien`, `noi_dung`, `lydo`) VALUES
(1, 'giamdoc', 'PDT', '2019-10-05', 'sonnguyencntt041999@gmail.com', 'nguyễn hồng sơn', 10000000, '17520989@gm.uit.edu.vn', 123123000, 'test/////', '234234234243'),
(2, 'giamdoc', 'PDT', '2019-10-05', 'sonnguyencntt041999@gmail.com', 'nguyễn hồng thi', 10000000, '17520989@gm.uit.edu.vn', 123123000, 'test/////', '23424234234'),
(3, 'giamdoc', 'PDT', '2019-10-05', 'sonnguyencntt041999@gmail.com', 'nguyễn hồng sơn', 10000000, '17520989@gm.uit.edu.vn', 123123000, 'test/////', '12312sadsadasd'),
(4, 'ketoan', 'PDT', '2019-10-05', 'sonnguyencntt041999@gmail.com', 'nguyễn hồng sơn', 10000000, '17520989@gm.uit.edu.vn', 123123000, 'test/////', 'asdasdasdasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `lichsuthutien`
--

CREATE TABLE `lichsuthutien` (
  `id_thu` int(11) NOT NULL,
  `id_dn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_thu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_thang` date NOT NULL,
  `taikhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `so_tien` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `lydo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lichsuthutien`
--

INSERT INTO `lichsuthutien` (`id_thu`, `id_dn`, `ma_thu`, `ngay_thang`, `taikhoan`, `so_tien`, `noi_dung`, `lydo`) VALUES
(1, 'ketoan', 'MTT', '2019-10-05', 'sonnguyencntt041999@gmail.com', '200000', 'test......aaa', ''),
(2, 'ketoan', 'MTT', '2019-10-05', 'sonnguyencntt041999@gmail.com', '200000', 'test......aaa', ''),
(3, 'ketoan', 'MTT', '2019-10-05', 'sonnguyencntt041999@gmail.com', '200000', 'test......aaa', 'asdasdasdasdasd'),
(4, 'ketoan', 'MTT', '2019-10-05', 'sonnguyencntt041999@gmail.com', '200000', 'test......aaa', 'asdasdasdasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `lichsuvanphong`
--

CREATE TABLE `lichsuvanphong` (
  `id_vp` int(11) NOT NULL,
  `id_dn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_vp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ten_vp` text COLLATE utf8_unicode_ci NOT NULL,
  `ten_hdh` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `lydo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lichsuvanphong`
--

INSERT INTO `lichsuvanphong` (`id_vp`, `id_dn`, `ma_vp`, `ten_vp`, `ten_hdh`, `email`, `sdt`, `diachi`, `lydo`) VALUES
(6, 'giamdoc', 'DO -DREAM', 'DO - DREAM Tours', 'Trương Vân Anh', 'dodreamhanoi@aulactours.com', '0347185555', 'Số 43, Ngõ 57, Vĩnh Tuy, Q.Hai Bà Trưng, Hà Nộiaa', '12312312313'),
(7, 'ketoan', 'DO -DREAM', 'DO - DREAM Tours', 'Trương Vân Anh', 'dodreamhanoi@aulactours.com', '0347185555', 'Số 43, Ngõ 57, Vĩnh Tuy, Q.Hai Bà Trưng, Hà Nộiaa', '123123123123');

-- --------------------------------------------------------

--
-- Table structure for table `phieudientu`
--

CREATE TABLE `phieudientu` (
  `id_dt` int(11) NOT NULL,
  `ma_dt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_thang` date NOT NULL,
  `taikhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_bi_thu` text COLLATE utf8_unicode_ci NOT NULL,
  `sdt` float NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `so_tien` float NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phieudientu`
--

INSERT INTO `phieudientu` (`id_dt`, `ma_dt`, `ngay_thang`, `taikhoan`, `nguoi_bi_thu`, `sdt`, `email`, `so_tien`, `noi_dung`) VALUES
(1, 'PDT', '2019-10-05', 'sonnguyencntt041999@gmail.com', 'nguyễn hồng sơn', 10000000, '17520989@gm.uit.edu.vn', 123123000, 'test/////');

-- --------------------------------------------------------

--
-- Table structure for table `thutien`
--

CREATE TABLE `thutien` (
  `id_thu` int(11) NOT NULL,
  `ma_thu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_thang` date NOT NULL,
  `taikhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `so_tien` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thutien`
--

INSERT INTO `thutien` (`id_thu`, `ma_thu`, `ngay_thang`, `taikhoan`, `so_tien`, `noi_dung`) VALUES
(8, 'MTT', '2019-10-05', 'sonnguyencntt041999@gmail.com', '200000', 'test......aaa');

-- --------------------------------------------------------

--
-- Table structure for table `vanphong`
--

CREATE TABLE `vanphong` (
  `id_vp` int(11) NOT NULL,
  `ma_vp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ten_vp` text COLLATE utf8_unicode_ci NOT NULL,
  `ten_hdh` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vanphong`
--

INSERT INTO `vanphong` (`id_vp`, `ma_vp`, `ten_vp`, `ten_hdh`, `email`, `sdt`, `diachi`) VALUES
(4, 'CLUBNOW', 'Club Now', 'Trần Thị Dung', 'nowplus@aulactours.com', '0387384138', 'Số 9, Phố Đỗ Quang, P.Trung Hòa, Q.Cầu Giấy, Hà Nội'),
(16, 'DO -DREAM', 'DO - DREAM Tours', 'Trương Vân Anh', 'dodreamhanoi@aulactours.com', '0347185555', 'Số 43, Ngõ 57, Vĩnh Tuy, Q.Hai Bà Trưng, Hà Nộiaa'),
(14, 'GOGO', 'GOGO Tours', 'Trần Thị Thơm', 'gogohanoi@aulactours.com', '0983836252', 'Số 69 Nguyễn Thị Định, Trung Hòa, Cầu Giấy, Hà Nội'),
(7, 'HAPPY', 'Happy Tours', 'Hồ Thị Hồng', 'happy@aulactours.com', '0971075784', 'P1007, Chung cư F4, Đơn Nguyên 1,Trung Kính ,Cầu Giấy'),
(11, 'ICAN', 'ICAN Tours', 'Lê Thị Thương', 'icanhanoi@aulactours.com', '0984736703', '4th floor, 29T2 Building, Hoang Dao Thuy street, Trung Hoa Nhan Chinh ward, Cau Giay district, Ha Noi.'),
(15, 'IS', 'JS Tours', 'Trần Thị Trang', 'ishanoi@aulactours.com', '0868231998', 'Phòng 603A licogi13, Khuất Duy Tiến, Nhân Chính, Thanh Xuân, HN'),
(12, 'JINI', 'JINI Tours ', 'Trần Thị Vân', 'jiniworldhanoi@aulactours.com', '0987729410', 'Số 16, Nguyễn Thị Định, phường Trung Hòa, quận Cầu Giấy, Hà Nội'),
(5, 'JUN', 'Jun Tours', 'Trần Thị Hương', 'junhanoi@aulactours.com', '0974826063', 'Tầng 4, B5-12B Shop house, Vinhome Gardenia , Đường Hàm Nghi, P.Cầu Diễn, Q. Nam Từ Liêm, Hà Nội.'),
(8, 'KK', 'KK Tours', 'Nguyễn Thị Minh Thu', 'kkhanoi@aulactours.com', '0943904025', 'Số 5, ngõ 70 Nguyễn Hoàng, Mỹ Đình I, Nam Từ Liêm, Hà Nội'),
(6, 'MAJOR', 'Major Tours', 'Trương Thị Hường', 'majorhanoi@aulactours.com', '0983662029', 'Lô 3, BT4-3 KĐT Trung Văn, Nam Từ Liêm, HN'),
(13, 'RAON', 'RAON Tours ', 'Vũ Thị Thanh', 'raonhanoi@aulactours.com', '0983430698', '2308, B Building, Thang Long Number One, 285 Khuat Duy Tien Street, Trung Hoa Ward, Cau Giay District, Hanoi, Vietnam'),
(10, 'TOC', 'TOC Tours', 'Trần Thị Nụ', 'tochanoi@aulactours.com', '0907771186', '12BLK11A, Khu đô thị Mộ Lao, Hà Đông, Hà Nội'),
(9, 'VEVELY', 'VEVELY Tours', 'Đinh Phương Thảo', 'vevelytour@aulactours.com', '0972480049', 'Phòng 4007, tòa S4 – Seasons avenue, Mỗ Lao, Hà Đông, Hà Nội.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitien`
--
ALTER TABLE `chitien`
  ADD PRIMARY KEY (`ma_ct`),
  ADD UNIQUE KEY `id_ct` (`id_ct`),
  ADD KEY `taikhoan` (`taikhoan`);

--
-- Indexes for table `chuyenbay`
--
ALTER TABLE `chuyenbay`
  ADD PRIMARY KEY (`ma_cb`),
  ADD UNIQUE KEY `id_cb` (`id_cb`);

--
-- Indexes for table `ct4ngay`
--
ALTER TABLE `ct4ngay`
  ADD PRIMARY KEY (`ma_tour`),
  ADD UNIQUE KEY `id_ct4ngay` (`id_ct4ngay`);

--
-- Indexes for table `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD PRIMARY KEY (`taikhoan`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `sdt` (`sdt`),
  ADD KEY `id_dn` (`id_dn`),
  ADD KEY `dangnhap_ibfk_1` (`ma_vp`);

--
-- Indexes for table `doan`
--
ALTER TABLE `doan`
  ADD PRIMARY KEY (`ma_doan`),
  ADD UNIQUE KEY `id_doan` (`id_doan`),
  ADD KEY `ma_cb_don` (`ma_cb_don`),
  ADD KEY `ma_cb_tien` (`ma_cb_tien`),
  ADD KEY `ma_ks_1` (`ma_ks_1`),
  ADD KEY `ma_ks_2` (`ma_ks_2`),
  ADD KEY `ma_ks_3` (`ma_ks_3`),
  ADD KEY `ma_vp` (`ma_vp`),
  ADD KEY `ma_cb_don_2` (`ma_cb_don`),
  ADD KEY `ma_hd` (`ma_hd`),
  ADD KEY `ma_tour` (`ma_tour`),
  ADD KEY `ma_vp_2` (`ma_vp`),
  ADD KEY `ma_tour_2` (`ma_tour`);

--
-- Indexes for table `huongdan`
--
ALTER TABLE `huongdan`
  ADD PRIMARY KEY (`mahuongdan`),
  ADD UNIQUE KEY `stt_hd` (`stt_hd`),
  ADD UNIQUE KEY `cmnd` (`cmnd`),
  ADD UNIQUE KEY `sdt` (`sdt`),
  ADD UNIQUE KEY `sothe` (`sothe`);

--
-- Indexes for table `khachsan`
--
ALTER TABLE `khachsan`
  ADD PRIMARY KEY (`ma_ks`),
  ADD UNIQUE KEY `ma_hd` (`ma_hd`),
  ADD UNIQUE KEY `id_ks` (`id_ks`),
  ADD UNIQUE KEY `sdt_sale` (`sdt_sale`),
  ADD UNIQUE KEY `sdt_kt` (`sdt_kt`),
  ADD UNIQUE KEY `email_sale` (`email_sale`),
  ADD UNIQUE KEY `email_booking` (`email_booking`),
  ADD UNIQUE KEY `email_kt` (`email_kt`);

--
-- Indexes for table `lichsuchitien`
--
ALTER TABLE `lichsuchitien`
  ADD PRIMARY KEY (`id_ct`),
  ADD KEY `id_dn` (`id_dn`);

--
-- Indexes for table `lichsuchuyenbay`
--
ALTER TABLE `lichsuchuyenbay`
  ADD PRIMARY KEY (`id_cb`),
  ADD KEY `id_dn` (`id_dn`);

--
-- Indexes for table `lichsuct3ngay`
--
ALTER TABLE `lichsuct3ngay`
  ADD PRIMARY KEY (`id_ct3ngay`),
  ADD KEY `id_dn` (`id_dn`);

--
-- Indexes for table `lichsuct4ngay`
--
ALTER TABLE `lichsuct4ngay`
  ADD PRIMARY KEY (`id_ct4ngay`),
  ADD KEY `id_dn` (`id_dn`);

--
-- Indexes for table `lichsudoan`
--
ALTER TABLE `lichsudoan`
  ADD PRIMARY KEY (`id_doan`),
  ADD KEY `id_dn` (`id_dn`);

--
-- Indexes for table `lichsuhuongdan`
--
ALTER TABLE `lichsuhuongdan`
  ADD PRIMARY KEY (`stt_hd`),
  ADD KEY `id_dn` (`id_dn`);

--
-- Indexes for table `lichsukhachsan`
--
ALTER TABLE `lichsukhachsan`
  ADD PRIMARY KEY (`id_ks`),
  ADD KEY `id_dn` (`id_dn`);

--
-- Indexes for table `lichsuphieudientu`
--
ALTER TABLE `lichsuphieudientu`
  ADD PRIMARY KEY (`id_dt`),
  ADD KEY `id_dn` (`id_dn`);

--
-- Indexes for table `lichsuthutien`
--
ALTER TABLE `lichsuthutien`
  ADD PRIMARY KEY (`id_thu`),
  ADD KEY `id_dn` (`id_dn`);

--
-- Indexes for table `lichsuvanphong`
--
ALTER TABLE `lichsuvanphong`
  ADD PRIMARY KEY (`id_vp`),
  ADD KEY `id_dn` (`id_dn`);

--
-- Indexes for table `phieudientu`
--
ALTER TABLE `phieudientu`
  ADD PRIMARY KEY (`ma_dt`),
  ADD UNIQUE KEY `id_dt` (`id_dt`),
  ADD KEY `taikhoan` (`taikhoan`);

--
-- Indexes for table `thutien`
--
ALTER TABLE `thutien`
  ADD PRIMARY KEY (`ma_thu`),
  ADD UNIQUE KEY `id_thu` (`id_thu`),
  ADD KEY `taikhoan` (`taikhoan`);

--
-- Indexes for table `vanphong`
--
ALTER TABLE `vanphong`
  ADD PRIMARY KEY (`ma_vp`),
  ADD UNIQUE KEY `id_vp` (`id_vp`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `sdt` (`sdt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitien`
--
ALTER TABLE `chitien`
  MODIFY `id_ct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chuyenbay`
--
ALTER TABLE `chuyenbay`
  MODIFY `id_cb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ct4ngay`
--
ALTER TABLE `ct4ngay`
  MODIFY `id_ct4ngay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `dangnhap`
--
ALTER TABLE `dangnhap`
  MODIFY `id_dn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doan`
--
ALTER TABLE `doan`
  MODIFY `id_doan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `huongdan`
--
ALTER TABLE `huongdan`
  MODIFY `stt_hd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `khachsan`
--
ALTER TABLE `khachsan`
  MODIFY `id_ks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `lichsuchitien`
--
ALTER TABLE `lichsuchitien`
  MODIFY `id_ct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lichsuchuyenbay`
--
ALTER TABLE `lichsuchuyenbay`
  MODIFY `id_cb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lichsuct3ngay`
--
ALTER TABLE `lichsuct3ngay`
  MODIFY `id_ct3ngay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lichsuct4ngay`
--
ALTER TABLE `lichsuct4ngay`
  MODIFY `id_ct4ngay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lichsudoan`
--
ALTER TABLE `lichsudoan`
  MODIFY `id_doan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `lichsuhuongdan`
--
ALTER TABLE `lichsuhuongdan`
  MODIFY `stt_hd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lichsukhachsan`
--
ALTER TABLE `lichsukhachsan`
  MODIFY `id_ks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lichsuphieudientu`
--
ALTER TABLE `lichsuphieudientu`
  MODIFY `id_dt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lichsuthutien`
--
ALTER TABLE `lichsuthutien`
  MODIFY `id_thu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lichsuvanphong`
--
ALTER TABLE `lichsuvanphong`
  MODIFY `id_vp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `phieudientu`
--
ALTER TABLE `phieudientu`
  MODIFY `id_dt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `thutien`
--
ALTER TABLE `thutien`
  MODIFY `id_thu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vanphong`
--
ALTER TABLE `vanphong`
  MODIFY `id_vp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitien`
--
ALTER TABLE `chitien`
  ADD CONSTRAINT `chitien_ibfk_1` FOREIGN KEY (`taikhoan`) REFERENCES `dangnhap` (`email`) ON UPDATE CASCADE;

--
-- Constraints for table `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD CONSTRAINT `dangnhap_ibfk_1` FOREIGN KEY (`ma_vp`) REFERENCES `vanphong` (`ma_vp`) ON UPDATE NO ACTION;

--
-- Constraints for table `doan`
--
ALTER TABLE `doan`
  ADD CONSTRAINT `doan_ibfk_1` FOREIGN KEY (`ma_vp`) REFERENCES `vanphong` (`ma_vp`),
  ADD CONSTRAINT `doan_ibfk_2` FOREIGN KEY (`ma_cb_don`) REFERENCES `chuyenbay` (`ma_cb`) ON UPDATE CASCADE,
  ADD CONSTRAINT `doan_ibfk_3` FOREIGN KEY (`ma_cb_tien`) REFERENCES `chuyenbay` (`ma_cb`) ON UPDATE CASCADE,
  ADD CONSTRAINT `doan_ibfk_4` FOREIGN KEY (`ma_ks_1`) REFERENCES `khachsan` (`ma_ks`) ON UPDATE CASCADE,
  ADD CONSTRAINT `doan_ibfk_5` FOREIGN KEY (`ma_ks_2`) REFERENCES `khachsan` (`ma_ks`) ON UPDATE CASCADE,
  ADD CONSTRAINT `doan_ibfk_6` FOREIGN KEY (`ma_ks_3`) REFERENCES `khachsan` (`ma_ks`) ON UPDATE CASCADE,
  ADD CONSTRAINT `doan_ibfk_7` FOREIGN KEY (`ma_hd`) REFERENCES `huongdan` (`sdt`) ON UPDATE CASCADE,
  ADD CONSTRAINT `doan_ibfk_8` FOREIGN KEY (`ma_tour`) REFERENCES `ct4ngay` (`ma_tour`) ON UPDATE CASCADE;

--
-- Constraints for table `lichsuchitien`
--
ALTER TABLE `lichsuchitien`
  ADD CONSTRAINT `lichsuchitien_ibfk_1` FOREIGN KEY (`id_dn`) REFERENCES `dangnhap` (`taikhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lichsuchuyenbay`
--
ALTER TABLE `lichsuchuyenbay`
  ADD CONSTRAINT `lichsuchuyenbay_ibfk_1` FOREIGN KEY (`id_dn`) REFERENCES `dangnhap` (`taikhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lichsuct3ngay`
--
ALTER TABLE `lichsuct3ngay`
  ADD CONSTRAINT `lichsuct3ngay_ibfk_1` FOREIGN KEY (`id_dn`) REFERENCES `dangnhap` (`taikhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lichsuct4ngay`
--
ALTER TABLE `lichsuct4ngay`
  ADD CONSTRAINT `lichsuct4ngay_ibfk_1` FOREIGN KEY (`id_dn`) REFERENCES `dangnhap` (`taikhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lichsudoan`
--
ALTER TABLE `lichsudoan`
  ADD CONSTRAINT `lichsudoan_ibfk_1` FOREIGN KEY (`id_dn`) REFERENCES `dangnhap` (`taikhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lichsuhuongdan`
--
ALTER TABLE `lichsuhuongdan`
  ADD CONSTRAINT `lichsuhuongdan_ibfk_1` FOREIGN KEY (`id_dn`) REFERENCES `dangnhap` (`taikhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lichsukhachsan`
--
ALTER TABLE `lichsukhachsan`
  ADD CONSTRAINT `lichsukhachsan_ibfk_1` FOREIGN KEY (`id_dn`) REFERENCES `dangnhap` (`taikhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lichsuphieudientu`
--
ALTER TABLE `lichsuphieudientu`
  ADD CONSTRAINT `lichsuphieudientu_ibfk_1` FOREIGN KEY (`id_dn`) REFERENCES `dangnhap` (`taikhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lichsuthutien`
--
ALTER TABLE `lichsuthutien`
  ADD CONSTRAINT `lichsuthutien_ibfk_1` FOREIGN KEY (`id_dn`) REFERENCES `dangnhap` (`taikhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lichsuvanphong`
--
ALTER TABLE `lichsuvanphong`
  ADD CONSTRAINT `lichsuvanphong_ibfk_1` FOREIGN KEY (`id_dn`) REFERENCES `dangnhap` (`taikhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phieudientu`
--
ALTER TABLE `phieudientu`
  ADD CONSTRAINT `phieudientu_ibfk_1` FOREIGN KEY (`taikhoan`) REFERENCES `dangnhap` (`email`) ON UPDATE CASCADE;

--
-- Constraints for table `thutien`
--
ALTER TABLE `thutien`
  ADD CONSTRAINT `thutien_ibfk_1` FOREIGN KEY (`taikhoan`) REFERENCES `dangnhap` (`email`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
