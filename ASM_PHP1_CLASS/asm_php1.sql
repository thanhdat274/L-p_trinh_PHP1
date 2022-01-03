-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 12, 2021 lúc 11:31 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `asm_php1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `tai_khoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `tai_khoan`, `mat_khau`, `mat_khau2`, `ten`, `sdt`, `dia_chi`, `anh`) VALUES
(1, 'vannamhdvt', '22165791', '22165791', 'Tráº§n VÄƒn Nam', '0886458972', 'Nam Äá»‹nh', '/ASM_PHP1_CLASS/images/68891807_411255342845161_5715659558878183424_o.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

DROP TABLE IF EXISTS `don_hang`;
CREATE TABLE `don_hang` (
  `id` int(11) NOT NULL,
  `ten_khach_hang` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `ten_san_pham` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `so_luong` int(11) NOT NULL,
  `gia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`id`, `ten_khach_hang`, `ten_san_pham`, `anh`, `so_luong`, `gia`, `ma`) VALUES
(76, 'Tráº§n VÄƒn Nam', 'GiÃ y Nike XÃ¡m - VÃ ng', '/ASM_PHP1_CLASS/images/product-1.png', 2, '1549000', '13'),
(77, 'Tráº§n VÄƒn Nam', 'GiÃ y Nike Äen', '/ASM_PHP1_CLASS/images/product-2.png', 1, '1569000', '13'),
(78, 'Tráº§n VÄƒn Nam', 'GiÃ y Nike Xanh DÆ°Æ¡ng', '/ASM_PHP1_CLASS/images/product-6.png', 1, '2699000', '13'),
(79, 'Tráº§n VÄƒn Nam', 'GiÃ y Nike Tráº¯ng', '/ASM_PHP1_CLASS/images/product-3.png', 1, '869000', '13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

DROP TABLE IF EXISTS `khach_hang`;
CREATE TABLE `khach_hang` (
  `id` int(11) NOT NULL,
  `tai_khoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`id`, `tai_khoan`, `mat_khau`, `ten`, `dia_chi`, `sdt`) VALUES
(5, 'vannamhdvt', '22165791', 'Tráº§n VÄƒn Nam', 'Nam Äá»‹nh', '0886458973');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `so_luong` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten`, `so_luong`, `gia`, `anh`, `trang_thai`) VALUES
(6, 'GiÃ y Nike XÃ¡m - VÃ ng', '11', '1549000', '/ASM_PHP1_CLASS/images/product-1.png', 1),
(7, 'GiÃ y Nike Äen', '12', '1569000', '/ASM_PHP1_CLASS/images/product-2.png', 1),
(8, 'GiÃ y Nike Xanh DÆ°Æ¡ng', '22', '2699000', '/ASM_PHP1_CLASS/images/product-6.png', 1),
(9, 'GiÃ y Nike Tráº¯ng', '32', '869000', '/ASM_PHP1_CLASS/images/product-3.png', 1),
(11, 'GiÃ y Nike', '11', '1689000', '/ASM_PHP1_CLASS/images/product-4.png', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
