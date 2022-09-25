-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 25, 2022 lúc 03:52 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thuctapcoso`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'phu', 'phu@gmail.com', 'phuAdmin', 'e10adc3949ba59abbe56e057f20f883e', 0),
(2, 'admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(6, 'Samsum'),
(7, 'Apple'),
(8, 'Huawei'),
(9, 'Oppo'),
(10, 'Dell'),
(12, 'Viettel'),
(13, 'OEM'),
(14, 'TP-Link');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(1, 7, '0omn99jipm7namf6srjhj4kva2', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 3, '6deaf01c29.jpg'),
(2, 7, 'up8l6ff347ik19fsoa18qff452', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(3, 7, '9lmppj5kalib60o1s7soiiaqo4', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(4, 8, '9lmppj5kalib60o1s7soiiaqo4', 'Äiá»‡n Thoáº¡i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(8, 6, 'c6o66m1rfnpfhqmdffk77pu083', 'MÃ¡y tÃ­nh Dell A503', '10000000', 1, 'dbb417a309.jpg'),
(9, 8, '3e1a29t1pgb3ock6s8hi8ho2d5', 'Äiá»‡n Thoáº¡i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(13, 17, 'grfc2bmmrmga6mn5q7484i87f2', 'á»” Cá»©ng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - HÃ ng Nháº­p Kháº©u', '1099000', 1, '785e8d373d.jpg'),
(14, 19, '39p4lauudimhcb91i8mhna4bf2', 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 3, '6d72eb58ae.jpg'),
(18, 18, '3eg83l0tcklmed91e5h8raqsa2', 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', 1000, '32942e9470.jpg'),
(19, 19, 'hlkksgphiqn70b37sjg3u89unu', 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 1, '6d72eb58ae.jpg'),
(24, 21, '43auoeb0mu8g70th2qj79ggugt', 'Apple New For Mysql Server', '50000', 3, 'ad351ef94f.png'),
(27, 22, 'copfmb8356885rmntm071kt1ed', 'Apple New For Mysql Server', '60000', 3, '3cf061e944.jpg'),
(28, 21, 'copfmb8356885rmntm071kt1ed', 'Màn hình Apple Pro Dislay XDR Nano Texture Glass SOA (MWPF2SA/A) (31.5inch/6K/Retina/60Hz/1000nits/Thunderbolt-USBC)', '149999000', 1, 'dc21a2c230.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`, `image`) VALUES
(3, 'Laptop', ''),
(4, 'Desktop', ''),
(5, 'Mobile Phones', ''),
(6, 'Accessories', ''),
(7, 'Software', ''),
(15, 'Test', ''),
(16, 'Äá»“ng Há»“ ThÃ´ng Minh', ''),
(17, 'Thiáº¿t bá»‹ máº¡ng', 'db0a26a812.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(3, 'Ng.Anh tu', '113 Láº¡c Long QuÃ¢n HCM', 'TPHCM', 'hcm', '700000', '099999123', 'thanhviendangki@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'vÃµ thá»‹ tháº£o nguyÃªn', '149 LÅ©y BÃ¡n BÃ­ch, phÆ°á»ng TÃ¢n Thá»›i HÃ²a, quáº­n TÃ¢n PhÃº, TP.HCM', 'TPHCM', 'hcm', '700000', '522525294', 'hoathuytinh071@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'Sin', '149 LÃ½ ThÃ¡i Tá»•', 'TPHCM', 'hcm', '700000', '0522525294', 'abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'cuongpham2107', 'Ninh Bình', 'Ninh Bình', 'Ninh Bình', '24000', '0984559557', 'cuongpham2107@gmail.com', '530ba8de88ea386f3f2a84858caa0a36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_news`
--

CREATE TABLE `tbl_news` (
  `newId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_news`
--

INSERT INTO `tbl_news` (`newId`, `title`, `description`, `body`, `type`, `status`, `image`) VALUES
(1, 'Hiện thực hóa đô thị thành phố Thái Nguyên hiện đại, văn minh', '<p>Hiện thực h&oacute;a đ&ocirc; thị th&agrave;nh phố Th&aacute;i Nguy&ecirc;n hiện đại, văn min</p>', '<p>ới mục ti&ecirc;u x&acirc;y dựng, quản l&yacute; v&agrave; ph&aacute;t triển đ&ocirc; thị theo hướng văn minh, hiện đại, những năm qua, tỉnh Th&aacute;i Nguy&ecirc;n đ&atilde; tập trung đẩy mạnh việc thực hiện nhiều giải ph&aacute;p để ph&aacute;t triển đ&ocirc; thị.</p>\r\n<p>Th&agrave;nh phố Th&aacute;i Nguy&ecirc;n l&agrave; một trong những địa phương đ&atilde; từng bước khằng định được vai tr&ograve;, vị thế của một đ&ocirc; thị trung t&acirc;m, tạo tiền đề quan trọng trong việc x&acirc;y dựng, ph&aacute;t triển tỉnh Th&aacute;i Nguy&ecirc;n theo hướng văn minh, hiện đại. Tuy nhi&ecirc;n, trải qua gần 60 năm x&acirc;y dựng v&agrave; trưởng th&agrave;nh, th&agrave;nh phố Th&aacute;i Nguy&ecirc;n vẫn c&ograve;n nhiều việc phải l&agrave;m, cần đột ph&aacute; để tiến tới mục ti&ecirc;u lớn.</p>\r\n<p>Bước đột ph&aacute; cho sự ph&aacute;t triển tầm vĩ m&ocirc; ấy l&agrave; ng&agrave;y 26/11/2021, Thủ tướng Ch&iacute;nh phủ đ&atilde; k&yacute; Quyết định số 1989/QĐ-TTg ph&ecirc; duyệt điều chỉnh cục bộ Quy hoạch chung th&agrave;nh phố Th&aacute;i Nguy&ecirc;n, tỉnh Th&aacute;i Nguy&ecirc;n đến năm 2035. Trong đ&oacute;, điều chỉnh cục bộ thuộc khu vực phường Trưng Vương, th&agrave;nh phố Th&aacute;i Nguy&ecirc;n trở th&agrave;nh đất hỗn hợp để thực hiện dự &aacute;n.</p>\r\n<p>Ngay sau khi Thủ tướng Ch&iacute;nh phủ ph&ecirc; duyệt điều chỉnh quy hoạch cục bộ, tỉnh Th&aacute;i Nguy&ecirc;n đ&atilde; tổ chức triển khai c&aacute;c bước tiếp theo, thực hiện mời tham gia thi tuyển &yacute; tưởng quy hoạch khu đ&ocirc; thị mới, phố đi bộ trung t&acirc;m th&agrave;nh phố Th&aacute;i Nguy&ecirc;n v&agrave; phương &aacute;n kiến tr&uacute;c Trụ sở l&agrave;m việc Khối c&aacute;c cơ quan tỉnh Th&aacute;i Nguy&ecirc;n. Th&aacute;i Nguy&ecirc;n đặt mục ti&ecirc;u dự &aacute;n ho&agrave;n th&agrave;nh v&agrave; đưa v&agrave;o sử dụng trước năm 2025, g&oacute;p phần n&acirc;ng tầm đ&ocirc; thị Th&aacute;i Nguy&ecirc;n với &yacute; nghĩa l&agrave; đ&ocirc; thị trung t&acirc;m v&ugrave;ng.</p>\r\n<p>G&oacute;p phần c&ugrave;ng với nỗ lực của cấp ủy, ch&iacute;nh quyền địa phương, nhiều nh&agrave; đầu tư cũng đ&atilde; dồn hết t&acirc;m sức cho c&aacute;c c&ocirc;ng tr&igrave;nh - dự &aacute;n nhằm hiện thực h&oacute;a đ&ocirc; thị th&agrave;nh phố Th&aacute;i Nguy&ecirc;n hiện đại, văn minh.</p>\r\n<p>Một trong những c&ocirc;ng tr&igrave;nh cần phải nhắc tới l&agrave; c&ocirc;ng tr&igrave;nh Tổ hợp nh&agrave; ở, kh&aacute;ch sạn v&agrave; Trung t&acirc;m thương mại Prime Th&aacute;i Nguy&ecirc;n (gọi tắt l&agrave; T&ograve;a th&aacute;p đ&ocirc;i Prime Th&aacute;i Nguy&ecirc;n) do C&ocirc;ng ty TNHH Prime Th&aacute;i Nguy&ecirc;n l&agrave;m chủ đầu tư.&nbsp; Sau một thời gian d&agrave;i dừng thi c&ocirc;ng x&acirc;y dựng, thay đổi chủ đầu tư, thay đổi thiết kế v&agrave; thi tuyển kiến tr&uacute;c, từ năm 2021 c&ocirc;ng tr&igrave;nh đ&atilde; được t&aacute;i khởi động việc thi c&ocirc;ng.</p>\r\n<p>Dự &aacute;n c&oacute; quy m&ocirc; x&acirc;y dựng hơn 60.000m2, được thiết kế với 4 hạng mục ch&iacute;nh gồm: Hầm ngầm với c&ocirc;ng năng để xe 2 tầng, diện t&iacute;ch x&acirc;y dựng gần 8.000m2; khối đế gồm 4 tầng với c&ocirc;ng năng l&agrave; trung t&acirc;m thương mại (với nhiều tiện &iacute;ch như khu si&ecirc;u thị, vui chơi cho trẻ em, chăm s&oacute;c sức khỏe, bể bơi 4 m&ugrave;a, nh&agrave; h&agrave;ng ẩm thực v&agrave; cafe giải kh&aacute;t); khối th&aacute;p 1 gồm 13 tầng với c&ocirc;ng năng l&agrave; kh&aacute;ch sạn 5 sao; khối th&aacute;p 2 gồm 22 tầng với 188 căn hộ cao cấp.</p>\r\n<p>T&iacute;nh đến th&aacute;ng 6/2022, T&ograve;a th&aacute;p đ&ocirc;i Prime Th&aacute;i Nguy&ecirc;n đ&atilde; x&acirc;y cất l&ecirc;n tầng thứ 16 tr&ecirc;n tổng số 26 tầng v&agrave; đặt mục ti&ecirc;u ho&agrave;n th&agrave;nh trong qu&yacute; II/2023. Sau khi ho&agrave;n th&agrave;nh, dự &aacute;n kh&ocirc;ng chỉ c&oacute; c&ocirc;ng năng, tiện &iacute;ch sử dụng m&agrave; c&ograve;n g&oacute;p phần tạo điểm nhấn quan trọng n&acirc;ng tầm đ&ocirc; thị Th&aacute;i Nguy&ecirc;n.</p>\r\n<p>Trao đổi với ch&uacute;ng t&ocirc;i, &ocirc;ng Chu Phương Đ&ocirc;ng - Chủ tịch HĐTV C&ocirc;ng ty TNHH Prime Th&aacute;i Nguy&ecirc;n, cho biết: Sau 8 th&aacute;ng t&aacute;i khởi động, c&ocirc;ng ty gặp nhiều kh&oacute; khăn do dịch bệnh, gi&aacute; nguy&ecirc;n vật liệu x&acirc;y dựng, xăng dầu tăng cao, trong khi dự to&aacute;n của Dự &aacute;n lập từ đầu năm 2019 nhưng đến nay, mức đầu tư đ&atilde; tăng l&ecirc;n rất nhiều. Tuy nhi&ecirc;n, chủ đầu tư c&ugrave;ng c&aacute;c nh&agrave; thầu quyết t&acirc;m khắc phục mọi kh&oacute; khăn, đưa tiến độ x&acirc;y dựng nhanh nhất c&oacute; thể, phấn đấu trong th&aacute;ng 9/2022 sẽ cất n&oacute;c th&aacute;p 26 tầng (ho&agrave;n th&agrave;nh g&oacute;i thầu số 1) v&agrave; đến th&aacute;ng 4/2023 ho&agrave;n th&agrave;nh g&oacute;i số 2 v&agrave; g&oacute;i số 3.</p>\r\n<p>Cũng theo &ocirc;ng Chu Phương Đ&ocirc;ng, hiện nay kh&oacute; khăn của c&aacute;c dự &aacute;n bất động sản ngo&agrave;i việc gi&aacute; nguy&ecirc;n vật liệu x&acirc;y dựng tăng cao th&igrave; việc Ng&acirc;n h&agrave;ng Nh&agrave; nước đang y&ecirc;u cầu c&aacute;c Ng&acirc;n h&agrave;ng thương mại thắt chặt giảm cho vay vốn trong lĩnh vực bất động sản đ&atilde; l&agrave;m cho chủ đầu tư c&aacute;c dự &aacute;n đang rất kh&oacute; khăn.</p>\r\n<p>Tuy nhi&ecirc;n, ch&uacute;ng t&ocirc;i hy vọng Dự &aacute;n t&ograve;a th&aacute;p đ&ocirc;i Prime Th&aacute;i Nguy&ecirc;n - một c&ocirc;ng tr&igrave;nh đa chức năng lại l&agrave; một c&ocirc;ng tr&igrave;nh m&agrave; khi ho&agrave;n th&agrave;nh sẽ l&agrave; biểu tượng của th&agrave;nh phố Th&aacute;i Nguy&ecirc;n. Nhất l&agrave; khi nh&igrave;n v&agrave;o t&iacute;nh khả thi cao của dự &aacute;n; cũng như c&aacute;c tiện &iacute;ch mang lại cho đại đa số người d&acirc;n Th&agrave;nh phố Th&aacute;i Nguy&ecirc;n th&igrave; ng&acirc;n h&agrave;ng cũng sẽ c&oacute; g&oacute;c nh&igrave;n đ&uacute;ng để đồng h&agrave;nh với chủ đầu tư đến khi c&ocirc;ng tr&igrave;nh ho&agrave;n th&agrave;nh.</p>\r\n<p>Theo KTS Nguyễn Văn Cường - Chủ tịch Hội KTS Th&aacute;i Nguy&ecirc;n: Việc c&aacute;c c&ocirc;ng tr&igrave;nh thương mại - dịch vụ tầm cỡ ở khu vực trung t&acirc;m th&agrave;nh phố Th&aacute;i Nguy&ecirc;n được triển khai sẽ tạo th&agrave;nh trục cảnh quan quan trọng kết nối Quảng trường V&otilde; Nguy&ecirc;n Gi&aacute;p với s&ocirc;ng Cầu, phục vụ cộng đồng v&agrave; sinh hoạt văn h&oacute;a cho nh&acirc;n d&acirc;n, n&acirc;ng cao chất lượng đ&ocirc; thị theo hướng văn minh, hiện đại cũng như khắc phục tối đa những bất cập, yếu tố k&igrave;m h&atilde;m ph&aacute;t triển hiện hữu.</p>\r\n<p>Kh&ocirc;ng ai kh&aacute;c người d&acirc;n Th&aacute;i Nguy&ecirc;n sẽ l&agrave; người thụ hưởng từ ch&iacute;nh những th&agrave;nh quả n&agrave;y v&agrave; đ&ocirc; thị th&agrave;nh phố Th&aacute;i Nguy&ecirc;n sẽ l&agrave; điểm đến hấp dẫn c&aacute;c nh&agrave; đầu tư, du kh&aacute;ch trong nước v&agrave; quốc tế</p>', '1', 0, '3178085193.png'),
(2, 'Thái Nguyên: 17 dự án đủ điều kiện hy động vốn', '<p class=\"detail__summary\"><span style=\"font-size: x-small;\">Sở X&acirc;y dựng tỉnh Th&aacute;i Nguy&ecirc;n vừa ban h&agrave;nh danh mục gồm 7 dự &aacute;n đủ điều kiện bất động sản h&igrave;nh th&agrave;nh trong tương lai được đưa v&agrave;o kinh doanh ', '<p>Cụ thể, c&aacute;c dự &aacute;n đủ điều kiện bất động sản h&igrave;nh th&agrave;nh trong tương lai được đưa v&agrave;o kinh doanh l&agrave;:</p>\r\n<p>Dự &aacute;n t&ograve;a nh&agrave; hỗn hợp Th&aacute;i Nguy&ecirc;n Tower tại phường Trưng Vương, TP. Th&aacute;i Nguy&ecirc;n với 314 căn do li&ecirc;n danh C&ocirc;ng ty cổ phần Ph&acirc;n phối b&aacute;n lẻ VNF1 v&agrave; C&ocirc;ng ty cổ phần Đầu tư v&agrave; x&acirc;y dựng C&ocirc;ng tr&igrave;nh 578 l&agrave;m chủ đầu tư; Dự &aacute;n khu đ&ocirc; thị mới Th&aacute;i Hưng Eco City (đợt 4) TP. Th&aacute;i Nguy&ecirc;n c&oacute; 136 căn, đợt 5 với 80 căn do C&ocirc;ng ty cổ phần thương mại Th&aacute;i Hưng l&agrave;m chủ đầu tư.</p>\r\n<p>Dự &aacute;n khu nh&agrave; ở để b&aacute;n v&agrave; cho thu&ecirc; phường Thịnh Đ&aacute;n, TP.Th&aacute;i Nguy&ecirc;n do C&ocirc;ng ty TNHH Thương mại v&agrave; Dịch vụ may th&aacute;ng T&aacute;m l&agrave;m chủ đầu tư; Dự &aacute;n khu d&acirc;n cư Y&ecirc;n Thứ (đợt 1) phường Ba H&agrave;ng, TP. Phổ Y&ecirc;n c&oacute; 97 căn do C&ocirc;ng ty cổ phần X&acirc;y dựng v&agrave; sản xuất vật liệu cầu Đa Ph&uacute;c l&agrave;m chủ đầu tư.</p>\r\n<p>Dự &aacute;n khu d&acirc;n cư Tấn Đức JSC địa chỉ tại TP. Phổ Y&ecirc;n do C&ocirc;ng ty cổ phần Đầu tư x&acirc;y dựng hạ tầng Tấn Đức JSC l&agrave;m chủ đầu tư; Dự &aacute;n tổ hợp nh&agrave; ở - kh&aacute;ch sạn - Trung t&acirc;m thương mại Th&aacute;i Nguy&ecirc;n tại địa chỉ tại phường Ho&agrave;ng Văn Thụ, TP.Th&aacute;i Nguy&ecirc;n với 188 căn do C&ocirc;ng ty TNHH Prime Th&aacute;i Nguy&ecirc;n l&agrave;m chủ đầu tư.</p>\r\n<p>C&ograve;n c&aacute;c dự &aacute;n đủ điều kiện huy động vốn gồm: Dự &aacute;n khu đ&ocirc; thị s&acirc;n vận động trung t&acirc;m huyện Đại Từ, địa điểm thị trấn H&ugrave;ng Sơn, huyện Đại Từ c&oacute; diện t&iacute;ch 85.100m2 do C&ocirc;ng ty TNHH Nalico l&agrave;m chủ đầu tư; Dự &aacute;n khu nh&agrave; ở Cao Ngạn địa điểm tại TP. Th&aacute;i Nguy&ecirc;n c&oacute; diện t&iacute;ch 234.115m2 do C&ocirc;ng ty cổ phần tập đo&agrave;n Danko l&agrave;m chủ đầu tư;</p>\r\n<p>Dự &aacute;n khu đ&ocirc; thị Việt H&agrave;n, thị x&atilde; Phổ Y&ecirc;n, nay l&agrave; th&agrave;nh phố Phổ Y&ecirc;n c&oacute; diện t&iacute;ch 269.800m2 do li&ecirc;n danh C&ocirc;ng ty cổ phần bất động sản Hải Long Land v&agrave; C&ocirc;ng ty cổ phần Đầu tư đ&ocirc; thị v&agrave; khu c&ocirc;ng nghiệp S&ocirc;ng Đ&agrave; 7 l&agrave;m chủ đầu tư; Dự &aacute;n điểm d&acirc;n cư n&ocirc;ng th&ocirc;n trung t&acirc;m x&atilde; K&yacute; Ph&uacute;, huyện Đại Từ, diện t&iacute;ch 26.355m2 do C&ocirc;ng ty TNHH Đầu tư đ&ocirc; thị K&yacute; Ph&uacute; l&agrave;m chủ đầu tư;</p>\r\n<div>&nbsp;</div>\r\n<p>Dự &aacute;n điểm d&acirc;n cư n&ocirc;ng th&ocirc;n x&oacute;m Trung Na 2 x&atilde; Ti&ecirc;n Hội, huyện Đại Từ, diện t&iacute;ch 48.752m2 do C&ocirc;ng ty TNHH Đầu tư đ&ocirc; thị Trung Na l&agrave;m chủ đầu tư; Dự &aacute;n khu đ&ocirc; thị số 11, phường Gia S&agrave;ng, TP. Th&aacute;i Nguy&ecirc;n, diện t&iacute;ch 67.789m2 do C&ocirc;ng ty cổ phần Kosy l&agrave;m chủ đầu tư.</p>\r\n<p>Dự &aacute;n Khu d&acirc;n cư Tấn Đức JSC, thị x&atilde; Phổ Y&ecirc;n nay l&agrave; th&agrave;nh phố Phổ Y&ecirc;n, diện t&iacute;ch 91.897,1 m2 do C&ocirc;ng ty cổ phần Đầu tư x&acirc;y dựng hạ tầng Tấn Đức JSC l&agrave;m chủ đầu tư; Dự &aacute;n khu nh&agrave; ở B&aacute;ch Quang, phường B&aacute;ch Quang, TP. S&ocirc;ng C&ocirc;ng diện t&iacute;ch 68.858,8 m2 do C&ocirc;ng ty cổ phần tập đo&agrave;n Danko l&agrave;m chủ đầu tư; Dự &aacute;n điểm d&acirc;n cư n&ocirc;ng th&ocirc;n mới Xu&acirc;n Phương, x&atilde; Xu&acirc;n Phương, huyện Ph&uacute; B&igrave;nh, diện t&iacute;ch 27.998,3 m2 do C&ocirc;ng ty cổ phần Đầu tư ph&aacute;t triển v&agrave; c&ocirc;ng nghiệp Ph&uacute; B&igrave;nh l&agrave;m chủ đầu tư.</p>\r\n<p>Dự &aacute;n khu đ&ocirc; thị số 2 phường Mỏ Ch&egrave;, TP.S&ocirc;ng C&ocirc;ng diện t&iacute;ch 33.780,8 m2 do C&ocirc;ng ty cổ phần Thương mại v&agrave; x&acirc;y dựng Thi&ecirc;n Lộc l&agrave;m chủ đầu tư; Dự &aacute;n khu đ&ocirc; thị Phố Chợ 1, thị trấn H&ugrave;ng Sơn, huyện Đại Từ, diện t&iacute;ch 27.229,8 m2 do C&ocirc;ng ty cổ phần Đầu tư v&agrave; ph&aacute;t triển Hồng Ph&aacute;t l&agrave;m chủ đầu tư; Dự &aacute;n khu đ&ocirc; thị Cầu Tr&uacute;c phường B&aacute;ch Quang, TP.S&ocirc;ng C&ocirc;ng diện t&iacute;ch 102.787,3 m2 do C&ocirc;ng ty cổ phần NHM S&ocirc;ng C&ocirc;ng l&agrave;m chủ đầu tư.</p>\r\n<p>Dự &aacute;n x&acirc;y dựng nh&agrave; ở để b&aacute;n hoặc để b&aacute;n kết hợp cho thu&ecirc; thuộc khu d&acirc;n cư x&oacute;m G&ograve; Cao, x&atilde; H&oacute;a Thượng, huyện Đồng Hỷ, diện t&iacute;ch 5.063,5 m2 do C&ocirc;ng ty cổ phần Trường Hải l&agrave;m chủ đầu tư; Dự &aacute;n khu đ&ocirc; thị Y&ecirc;n B&igrave;nh (giai đoạn 1) địa điểm phường Đồng Tiến, TP.Phổ Y&ecirc;n, diện t&iacute;ch 198.492,1 do C&ocirc;ng ty cổ phần đầu tư ph&aacute;t triển Y&ecirc;n B&igrave;nh l&agrave; chủ đầu tư; Dự &aacute;n khu đ&ocirc; thị 1D diện t&iacute;ch 47.238 m2 v&agrave; Dự &aacute;n khu đ&ocirc; thị 1C diện t&iacute;ch 84.640,4 m2 đều c&oacute; địa điểm tại thị trấn H&ugrave;ng Sơn, huyện Đại Từ v&agrave; c&ugrave;ng do C&ocirc;ng ty cổ phần BCĐ Group l&agrave;m chủ đầu tư; Dự &aacute;n Khu đ&ocirc; thị Y&ecirc;n B&igrave;nh (giai đoạn 1, đợt 2) địa điểm phường Đồng Tiến, TP.Phổ Y&ecirc;n diện t&iacute;ch 85.048 m2 do C&ocirc;ng ty cổ phần đầu tư ph&aacute;t triển Y&ecirc;n B&igrave;nh l&agrave;m chủ đầu tư.</p>', '1', 0, '06c35ddc20.jpg'),
(3, 'Thái Nguyên: Tái khởi động dự án Tổ hợp nhà ở, khách sạn và trung tâm thương mại Prime', '<p><span style=\"font-size: x-small;\">(X&acirc;y dựng) - Sau một thời gian d&agrave;i dừng thi c&ocirc;ng x&acirc;y dựng, thay đổi chủ đầu tư, thay đổi thiết kế v&agrave; thi tuyển kiến tr&uacute;c, C&ocirc;ng ty TNHH Prime Th&aacute;i Nguy&ecirc;n đ&atild', '<p>Dự &aacute;n Trung t&acirc;m thương mại Prime Th&aacute;i Nguy&ecirc;n (địa chỉ số 1, đường Ho&agrave;ng Văn Thụ, gần đảo tr&ograve;n trung t&acirc;m th&agrave;nh phố), đoạn giao nhau giữa đường C&aacute;ch Mạng Th&aacute;ng T&aacute;m, đường Ho&agrave;ng Văn Thụ v&agrave; đường Bắc Kạn (tr&ecirc;n địa b&agrave;n phường Phan Đ&igrave;nh Ph&ugrave;ng) được xem l&agrave; vị tr&iacute; &ldquo;đất v&agrave;ng&rdquo; ở th&agrave;nh phố Th&aacute;i Nguy&ecirc;n. Được khởi c&ocirc;ng từ năm 2010, đến năm 2013, c&ocirc;ng tr&igrave;nh đ&atilde; x&acirc;y dựng xong cơ bản phần kết cấu gồm phần m&oacute;ng v&agrave; 02 tầng hầm tới độ cao &plusmn;0.000. Từ đ&oacute; đến nay, phần hầm được chủ đầu tư ph&aacute; dỡ thay đổi kết cấu tại một số vị tr&iacute;. Th&aacute;ng 4/2019 chủ đầu tư đ&atilde; c&oacute; kết quả kiểm định hiện trạng do C&ocirc;ng ty cổ phần tư vấn Khoa học c&ocirc;ng nghệ v&agrave; Kiểm định x&acirc;y dựng lập, chất lượng c&ocirc;ng tr&igrave;nh x&acirc;y dựng được thi c&ocirc;ng đảm bảo theo hồ sơ thiết kế v&agrave; hồ sơ ho&agrave;n c&ocirc;ng của c&ocirc;ng tr&igrave;nh.</p>\r\n<p>Ng&agrave;y 19/7/2019, C&ocirc;ng ty TNHH Prime Th&aacute;i Nguy&ecirc;n đ&atilde; k&yacute; hợp đồng thi c&ocirc;ng c&ocirc;ng tr&igrave;nh Tổ hợp nh&agrave; ở, kh&aacute;ch sạn v&agrave; trung t&acirc;m thương mại Th&aacute;i Nguy&ecirc;n với Tổng C&ocirc;ng ty x&acirc;y dựng Bạch đằng - C&ocirc;ng ty Cổ phần x&acirc;y dựng 204. Theo đ&oacute;, dự &aacute;n được x&acirc;y dựng tr&ecirc;n diện t&iacute;ch 6.000m2, gồm 2 t&ograve;a th&aacute;p l&agrave; th&aacute;p chung cư cao 25 tầng v&agrave; th&aacute;p văn ph&ograve;ng kh&aacute;ch sạn cao 18 tầng, trong đ&oacute; c&oacute; nhiều tiện &iacute;ch như nh&agrave; h&agrave;ng, ph&ograve;ng tập gym, si&ecirc;u thị, rạp chiếu phim... Đặc biệt, sau khi được cơ quan chức năng v&agrave; ch&iacute;nh quyền địa phương cho ph&eacute;p, nh&agrave; đầu tư quyết định chuyển đổi c&ocirc;ng năng sử dụng từ Trung t&acirc;m thương mại v&agrave; dịch vụ kh&aacute;ch sạn th&agrave;nh Tổ hợp nh&agrave; ở, kh&aacute;ch sạn v&agrave; trung t&acirc;m thương mại.</p>\r\n<p>Theo thiết kế, to&agrave;n khối c&ocirc;ng tr&igrave;nh sử dụng những đường n&eacute;t đơn giản, mạch lạc về kiến tr&uacute;c. Phong c&aacute;ch t&acirc;n cổ điển với m&agrave;u trắng sang trọng. Khối đế dịch vụ thương mại sử dụng c&aacute;c mảng k&iacute;nh lớn kết hợp với c&aacute;c hệ cuốn cửa lớn th&ocirc;ng tầng. Khối căn hộ đường n&eacute;t đơn giản, kết hợp mảng tường đặc với khoảng trống của c&aacute;c l&ocirc; gia, cửa sổ.</p>\r\n<p>Với chức năng hai th&aacute;p ri&ecirc;ng biệt: Th&aacute;p cao 25 tầng với chức năng nh&agrave; ở chung cư bao gồm sảnh tầng, lối v&agrave;o, c&aacute;c căn hộ, c&aacute;c kh&ocirc;ng gian chức năng trong căn hộ được thiết kế th&ocirc;ng tho&aacute;ng, tận dụng tối đa chiếu s&aacute;ng tự nhi&ecirc;n. Th&aacute;p 18 tầng với chức năng căn hộ dịch vụ, kh&aacute;ch sạn bao gồm sảnh tầng, c&aacute;c lối v&agrave;o, c&aacute;c căn hộ kh&aacute;ch sạn, căn hộ dịch vụ.</p>\r\n<p>C&oacute; 3 cổng ra v&agrave;o ch&iacute;nh của c&ocirc;ng tr&igrave;nh. Cổng ph&iacute;a Đ&ocirc;ng kết nối trực tiếp với sảnh chung cư v&agrave; lối xuống của phương tiện giao th&ocirc;ng tại tầng hầm 1. Cổng ph&iacute;a T&acirc;y Bắc kết nối trực tiếp với sảnh văn ph&ograve;ng. Cổng nhập h&agrave;ng nằm ph&iacute;a Đ&ocirc;ng Nam kết hợp với sảnh nhập h&agrave;ng. C&aacute;c cổng ph&acirc;n luồng giao th&ocirc;ng chức năng ri&ecirc;ng biệt, tạo sự sang trọng, ri&ecirc;ng tư v&agrave; tr&aacute;nh chồng ch&eacute;o giữa c&aacute;c luồng người trong c&ocirc;ng tr&igrave;nh c&oacute; t&iacute;nh chất hỗn hợp đa chức năng. Tại tầng 1, bố tr&iacute; c&aacute;c mảng c&acirc;y xanh kết hợp s&acirc;n. C&aacute;c h&agrave;ng c&acirc;y xanh chạy theo khu&ocirc;n vi&ecirc;n c&ocirc;ng tr&igrave;nh đảm bảo b&oacute;ng m&aacute;t, thẩm mỹ, tăng tiện nghi vi kh&iacute; hậu. Tại c&aacute;c mặt vỉa h&egrave;, mở c&aacute;c lối tiếp cận của khu trung t&acirc;m thương mại, tăng sự kết nối với cư d&acirc;n, đảm bảo hoạt đ&ocirc;ng thường xuy&ecirc;n v&agrave; hiệu quả của khu thương mại tại khối đế. Ngo&agrave;i ra, c&ocirc;ng tr&igrave;nh bố tr&iacute; một số chỗ đỗ xe linh hoạt tại tầng 1, đảm bảo nhu cầu sử dụng trong thời gian ngắn.</p>\r\n<p>Đ&aacute;nh gi&aacute; của c&aacute;c chuy&ecirc;n gia cho thấy: Với việc thay đổi chức năng từ khu Trung t&acirc;m thương mại th&agrave;nh khu Tổ hợp trong đ&oacute; c&oacute; nh&agrave; ở, kh&aacute;ch sạn l&agrave; một ph&eacute;p t&iacute;nh kinh tế ph&ugrave; hợp với xu thế ph&aacute;t triển kinh tế - x&atilde; hội tại địa phương.</p>\r\n<p>Theo kế hoạch, tiến độ dự &aacute;n Tổ hợp nh&agrave; ở, kh&aacute;ch sạn v&agrave; trung t&acirc;m thương mại Prime sẽ được thi c&ocirc;ng x&acirc;y dựng xong 4 tầng khối đế l&agrave; trung t&acirc;m thương mại v&agrave;o cuối năm 2021, 2 th&aacute;p chung cư v&agrave; th&aacute;p kh&aacute;ch sạn sẽ thi c&ocirc;ng xong v&agrave;o cuối năm 2022</p>', '1', 0, '3f6824d573.jpg'),
(4, 'Thái Nguyên: Đẩy mạnh xây dựng, phát triển đô thị theo hướng tiện ích và hiện đại', '<p><span>Th&aacute;ng 8/2019, Dự &aacute;n chung cư Th&aacute;i Nguy&ecirc;n Tower được khởi c&ocirc;ng tại địa chỉ số 01, đường Nha Trang, th&agrave;nh phố Th&aacute;i Nguy&ecirc;n, ch&iacute;nh thức đặt nền m&oacute;ng cho một c&ocirc;ng tr&igrave;nh ca', '<p>Mới đ&acirc;y, UBND tỉnh Th&aacute;i Nguy&ecirc;n đ&atilde; chấp thuận chủ trương đầu tư Dự &aacute;n x&acirc;y dựng t&ograve;a nh&agrave; hỗn hợp ở, thương mại dịch vụ cao tầng tại phường Ho&agrave;ng Văn Thụ, th&agrave;nh phố Th&aacute;i Nguy&ecirc;n. Dự &aacute;n c&oacute; quy m&ocirc; 38 tầng hứa hẹn sẽ l&agrave; c&ocirc;ng tr&igrave;nh lập kỷ lục mới về số tầng v&agrave; chiều cao tại Th&aacute;i Nguy&ecirc;n. So với 14 tỉnh trong v&ugrave;ng trung du v&agrave; miền n&uacute;i ph&iacute;a Bắc, Th&aacute;i Nguy&ecirc;n l&agrave; địa phương dẫn đầu về số c&ocirc;ng tr&igrave;nh nh&agrave; cao tầng v&agrave; lọt Top c&aacute;c tỉnh dẫn đầu về số c&ocirc;ng tr&igrave;nh cao tầng tại miền Bắc nước ta.</p>\r\n<p>Việc ph&aacute;t triển c&aacute;c dự &aacute;n nh&agrave; ở cao tầng l&agrave; minh chứng cho thấy tốc độ ph&aacute;t triển kinh tế - x&atilde; hội, tốc độ đ&ocirc; thị h&oacute;a của tỉnh Th&aacute;i Nguy&ecirc;n theo hướng văn minh, tiện &iacute;ch v&agrave; hiện đại. Những c&ocirc;ng tr&igrave;nh nh&agrave; cao tầng g&oacute;p phần tạo cho kiến tr&uacute;c đ&ocirc; thị đa sắc m&agrave;u l&agrave; những n&eacute;t chấm ph&aacute; t&ocirc; thắm cho bức tranh đ&ocirc; thị, mang lại những gi&aacute; trị thẩm mỹ v&agrave; hiện đại.</p>\r\n<p>Kh&ocirc;ng chỉ vậy, c&aacute;c t&ograve;a nh&agrave; cao tầng c&ograve;n g&oacute;p phần n&acirc;ng cao gi&aacute; trị, hiệu quả sử dụng đất. Đ&acirc;y l&agrave; xu thế tất yếu tr&ecirc;n thế giới v&agrave; Việt Nam khi lượng người ng&agrave;y tập trung sinh sống học tập v&agrave; l&agrave;m việc tại c&aacute;c đ&ocirc; thị lớn ng&agrave;y c&agrave;ng đ&ocirc;ng, trong khi diện t&iacute;ch đất th&igrave; hữu hạn. Về mặt x&atilde; hội, việc ph&aacute;t triển c&aacute;c dự &aacute;n nh&agrave; cao tầng trong đ&ocirc; thị sẽ giải quyết được nhiều nhất nhu cầu nh&agrave; ở, diện t&iacute;ch thương mại v&agrave; dần h&igrave;nh th&agrave;nh nếp sống văn minh đ&ocirc; thị hiện đại ph&ugrave; hợp với chủ trương, định hướng của Đảng, Nh&agrave; nước v&agrave; mỗi địa phương. X&eacute;t tr&ecirc;n b&igrave;nh diện to&agrave;n quốc, số nh&agrave; cao tầng hiện hữu đ&atilde; minh chứng vị thế đ&ocirc; thị, tiềm lực kinh tế, tốc độ ph&aacute;t triển của địa phương n&agrave;y so với c&aacute;c địa phương kh&aacute;c.</p>\r\n<p>B&ecirc;n cạnh quan t&acirc;m ph&aacute;t triển c&aacute;c dự &aacute;n nh&agrave; cao tầng, Th&aacute;i Nguy&ecirc;n đ&atilde; th&uacute;c đẩy quy hoạch, k&eacute;o gi&atilde;n kh&ocirc;ng gian đ&ocirc; thị, ph&aacute;t triển kết cầu hạ tầng giao th&ocirc;ng, hạ tầng đ&ocirc; thị, hạ tầng điện nước đồng bộ. Tỉnh khuyến kh&iacute;ch c&aacute;c nh&agrave; đầu tư trong v&agrave; ngo&agrave;i nước đến Th&aacute;i Nguy&ecirc;n nghi&ecirc;n cứu v&agrave; triển khai c&aacute;c dự &aacute;n đầu tư hạ tầng, dự &aacute;n d&acirc;n cư, đ&ocirc; thị, xử l&yacute; r&aacute;c thải, ph&aacute;t triển thương mại, dịch vụ v&agrave; hệ thống giao th&ocirc;ng c&ocirc;ng cộng.</p>\r\n<p>Do vậy, c&aacute;c tuyến đường mới li&ecirc;n tục được mở ra, c&aacute;c trung t&acirc;m thương mại được đầu tư ph&aacute;t triển; hệ thống vườn hoa, c&acirc;y xanh đ&ocirc; thị được đầu tư đồng bộ, quy chuẩn v&agrave; x&acirc;y dựng theo hướng gắn lợi &iacute;ch, tr&aacute;ch nhiệm giữa Nh&agrave; nước - nh&acirc;n d&acirc;n nhằm huy động tối đa nguồn lực từ x&atilde; hội h&oacute;a. Từ đ&oacute;, c&aacute;c khu đ&ocirc; thị lớn dần được h&igrave;nh th&agrave;nh, bộ mặt đ&ocirc; thị ng&agrave;y c&agrave;ng khang trang, sạch đẹp v&agrave; hiện đại.</p>', '1', 0, 'bf3d3760c1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(56, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:54:42'),
(57, 22, 'Apple New For Mysql Server', 3, 4, '240000', '643929ce40.jpg', 1, '2019-07-17 00:56:49'),
(58, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:57:49'),
(59, 20, 'Router Wifi 4G Huawei 300Mbps B593S-12', 3, 10, '12400000', '49b106217c.jpg', 1, '2019-07-17 01:51:22'),
(60, 20, 'Router Wifi 4G Huawei 300Mbps B593S-12', 6, 1, '1240000', 'bad0b4b600.jpg', 1, '2022-09-25 20:33:40'),
(61, 21, 'Màn hình Apple Pro Dislay XDR Nano Texture Glass SOA (MWPF2SA/A) (31.5inch/6K/Retina/60Hz/1000nits/Thunderbolt-USBC)', 6, 1, '149999000', 'dc21a2c230.jpg', 1, '2022-09-25 20:33:40'),
(62, 22, 'Apple New For Mysql Server', 6, 1, '60000', '3cf061e944.jpg', 1, '2022-09-25 20:33:40'),
(63, 17, 'á»” Cá»©ng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - HÃ ng Nháº­p Kháº©u', 6, 1, '1099000', '785e8d373d.jpg', 1, '2022-09-25 20:33:40'),
(64, 20, 'Router Wifi 4G Huawei 300Mbps B593S-12', 6, 1, '1240000', 'bad0b4b600.jpg', 1, '2022-09-25 20:35:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `product_body` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sale_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `product_body`, `type`, `price`, `sale_price`, `image`) VALUES
(6, 'MÃ¡y tÃ­nh Dell A503', 'MH1122', '50', '0', '50', 3, 10, '<p>M&aacute;y t&iacute;nh Dell A503M&aacute;y t&iacute;nh Dell A503M&aacute;y t&iacute;nh Dell A503M&aacute;y t&iacute;nh Dell A503M&aacute;y t&iacute;nh Dell A503</p>', '', 1, '10000000', '', 'dbb417a309.jpg'),
(7, 'Äiá»‡n thoáº¡i samsung S10+', 'MH1123', '60', '0', '60', 5, 6, '<p>Äiá»‡n thoáº¡i samsung S10+Äiá»‡n thoáº¡i samsung S10+Äiá»‡n thoáº¡i samsung S10+Äiá»‡n thoáº¡i samsung S10+Äiá»‡n thoáº¡i samsung S10+</p>', '', 0, '12000000', '', 'f71a0935f3.jpg'),
(8, 'Äiá»‡n Thoáº¡i Huawei Pro', 'MH1124', '70', '0', '70', 5, 8, '<p>Äiá»‡n Thoáº¡i Huawei ProÄiá»‡n Thoáº¡i Huawei ProÄiá»‡n Thoáº¡i Huawei ProÄiá»‡n Thoáº¡i Huawei Pro</p>', '', 0, '5000000', '', '03ae5f8327.jpg'),
(9, 'IPad Xsmax', 'MH1125', '100', '0', '100', 3, 7, '<p>IPad XsmaxIPad XsmaxIPad XsmaxIPad XsmaxIPad XsmaxIPad XsmaxIPad XsmaxIPad Xsmax</p>', '', 0, '8000000', '', '7418d9b02e.jpg'),
(13, 'Äá»“ng Há»“ ThÃ´ng Minh Theo DÃµi Váº­n Äá»™ng Theo DÃµi Sá»©c Khá»e Garmin Forerunner', 'MH1126', '30', '0', '30', 16, 13, '<p>Chá»‘ng nÆ°á»›c 5ATM</p>\r\n<p>Pin sáº¡c Lithium-ion</p>\r\n<p>Cá»•ng káº¿t ná»‘i: Bluetooth Smart vaÌ€ ANT+</p>\r\n<p>Bá»™ nhá»›: 200 giá» dá»¯ liá»‡u hoáº¡t Ä‘á»™ng</p>\r\n<p>M&agrave;n h&igrave;nh: 215 x 180 pixel</p>', '', 1, '4690000', '', '25ebd2d0ff.jpg'),
(15, 'Pháº§n Má»m Diá»‡t Virus BKAV Profressional 1 PC 12 ThÃ¡ng', 'MH1127', '20', '0', '20', 7, 9, '<p>Pháº§n Má»m Diá»‡t Virus BKAV Profressional 1 PC 12 Th&aacute;ngPháº§n Má»m Diá»‡t Virus BKAV Profressional 1 PC 12 Th&aacute;ngPháº§n Má»m Diá»‡t Virus BKAV Profressional 1 PC 12 Th&aacute;ngPháº§n Má»m Diá»‡t Virus BKAV Profressional 1 PC 12 Th&aacute;ngPháº§n Má»m Diá»‡t Virus BKAV Profressional 1 PC 12 Th&aacute;ngPháº§n Má»m Diá»‡t Virus BKAV Profressional 1 PC 12 Th&aacute;ng</p>', '', 0, '195000', '', '4167b1a4c5.jpg'),
(16, 'TP - Link TL- WN725N - USB Wifi Nano Chuáº©n N Tá»‘c Äá»™ 150Mbps', 'MH1128', '90', '0', '90', 17, 14, '<p>Thiáº¿t káº¿ thu nhá» cá»±c gá»n, cá»±c xinh</p>\r\n<p>Tá»‘c Ä‘á»™ kh&ocirc;ng d&acirc;y 150Mbps</p>\r\n<p>M&atilde; h&oacute;a WPA/WPA2 - Báº£o máº­t n&acirc;ng cao</p>\r\n<p>ÄÄ©a CD Ä‘i k&egrave;m cho Hoáº¡t Ä‘á»™ng dá»… d&agrave;ng</p>\r\n<p>Bao b&igrave; sáº£n pháº©m c&oacute; thá»ƒ thay Ä‘á»•i theo tá»«ng Ä‘á»£t h&agrave;ng nháº­p</p>', '', 0, '125000', '', '6c53b185b0.jpg'),
(17, 'á»” Cá»©ng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - HÃ ng Nháº­p Kháº©u', 'MH1129', '100', '0', '100', 7, 6, '<p>2.5 inch - H&agrave;ng Nháº­p Kháº©u</p>', '', 0, '1099000', '', '785e8d373d.jpg'),
(18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', 'MH1130', '120', '0', '120', 3, 10, '<p>Chip: Intel Core i7-8750H (2.2GHz up to 4.1GHz, 9MB)</p>\r\n<p>RAM: 8GB DDR4 2400MHz</p>\r\n<p>á»” cá»©ng: HDD 1TB 5400rpm + 128GB SSD M.2</p>\r\n<p>Chipset Ä‘á»“ há»a: NVIDIA GeForce GTX 1050Ti 4GB GDDR5</p>\r\n<p>M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080) IPS, Anti-Glare, LED Backlit Display</p>\r\n<p>Há»‡ Ä‘iá»u h&agrave;nh: Windows 10 Home</p>\r\n<p>Pin: 4 Cell 56 Whrs</p>', '', 0, '2589900', '', '32942e9470.jpg'),
(19, 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', 'MH1140', '65', '0', '65', 16, 7, '<p>K&iacute;ch th&AElig;&deg;&aacute;&raquo;&rsaquo;c m&agrave;n h&igrave;nh c&oacute; 2 lo&aacute;&ordm;&iexcl;i: 40mm v&agrave; 44mm</p>\r\n<p>Chu&aacute;&ordm;&copy;n kh&aacute;ng n&AElig;&deg;&aacute;&raquo;&rsaquo;c ISO 22810:2010</p>\r\n<p>K&aacute;&ordm;&iquest;t n&aacute;&raquo;&lsquo;i: Wi-Fi (802.11b / g / n 2,4 GHz), bluetooth 5.0</p>\r\n<p>T&AElig;&deg;&AElig;&iexcl;ng th&iacute;ch: iPhone</p>\r\n<p>Ch&aacute;&raquo;&copy;c n&Auml;&fnof;ng: Ca&Igrave;&permil;m bi&ecirc;&Igrave;n nhi&Igrave;&pound;p tim, ch&AElig;&deg;&Igrave;c n&Auml;&fnof;ng &Auml;&lsquo;o &Auml;&lsquo;i&ecirc;&Igrave;&pound;n t&acirc;m &Auml;&lsquo;&ocirc;&Igrave;&euro; (EKG)</p>\r\n<p>T&iacute;ch h&aacute;&raquo;&pound;p GPS, GLONASS, Galileo v&agrave; QZSS</p>\r\n<p>Gia t&aacute;&raquo;&lsquo;c &Auml;&lsquo;&AElig;&deg;&aacute;&raquo;&pound;c c&aacute;&ordm;&pound;i thi&aacute;&raquo;&Dagger;n l&ecirc;n t&aacute;&raquo;&rsaquo;i 32 g&acirc;&euro;&lsquo;forces</p>\r\n<p>Th&ocirc;ng b&aacute;o cu&aacute;&raquo;&trade;c g&aacute;&raquo;i, tin nh&aacute;&ordm;&macr;n</p>\r\n<p>C&oacute; th&aacute;&raquo;&fnof; nghe nh&aacute;&ordm;&iexcl;c, xem b&aacute;&ordm;&pound;n &Auml;&lsquo;&aacute;&raquo;&ldquo;</p>\r\n<p>Th&aacute;&raquo;i gian s&aacute;&raquo;&shy; d&aacute;&raquo;&yen;ng l&ecirc;n &Auml;&lsquo;&aacute;&ordm;&iquest;n 18 gi&aacute;&raquo;</p>\r\n<p>Pin lithium-ion s&aacute;&ordm;&iexcl;c l&aacute;&ordm;&iexcl;i &Auml;&lsquo;&AElig;&deg;&aacute;&raquo;&pound;c t&iacute;ch h&aacute;&raquo;&pound;p s&aacute;&ordm;&micro;n</p>', '', 0, '9700000', '', 'a5ada808f4.jpg'),
(20, 'Router Wifi 4G Huawei 300Mbps B593S-12', 'MH1150', '70', '10', '65', 17, 8, '<p>T&ocirc;&Igrave;c &Auml;&lsquo;&ocirc;&Igrave;&pound; ma&Igrave;&pound;ng 4G/LTE FDD link Speed: Downstream: 100Mbps Upstream: 50Mbps</p>\r\n<p>Nhi&ecirc;&Igrave;&euro;u ma&Igrave;y truy c&acirc;&Igrave;&pound;p va&Igrave;&euro; s&AElig;&deg;&Igrave;&permil; du&Igrave;&pound;ng cu&Igrave;&euro;ng m&ocirc;&Igrave;&pound;t th&AElig;&iexcl;&Igrave;&euro;i gian, &Auml;&lsquo;i&Igrave;&pound;a &Auml;&lsquo;i&ecirc;&Igrave;&permil;m</p>\r\n<p>Thi&Igrave;ch h&AElig;&iexcl;&Igrave;&pound;p v&AElig;&iexcl;&Igrave;i ca&Igrave;c loa&Igrave;&pound;i sim 3G, 4G tr&ecirc;n thi&Igrave;&pound; tr&AElig;&deg;&AElig;&iexcl;&Igrave;&euro;ng hi&ecirc;&Igrave;&pound;n nay</p>\r\n<p>Thi&ecirc;&Igrave;t k&ecirc;&Igrave; sang tro&Igrave;&pound;ng, go&Igrave;&pound;n nhe&Igrave;&pound;, ti&ecirc;&Igrave;&pound;n l&AElig;&iexcl;&Igrave;&pound;i cho ng&AElig;&deg;&AElig;&iexcl;&Igrave;&euro;i du&Igrave;&euro;ng</p>', '', 0, '1240000', '', 'bad0b4b600.jpg'),
(21, 'Màn hình Apple Pro Dislay XDR Nano Texture Glass SOA (MWPF2SA/A) (31.5inch/6K/Retina/60Hz/1000nits/Thunderbolt-USBC)', 'MH1115', '5', '0', '5', 4, 7, '<p>M&agrave;n h&igrave;nh : 32-inch</p>\r\n<p>Độ ph&acirc;n giải : 6016 by 3384 pixels (20.4 million pixels)</p>\r\n<p>Độ s&aacute;ng : 1000 nits sustained (full screen), 1600 nits peak</p>\r\n<p>M&agrave;u sắc : P3 wide color gamut, 10-bit depth for 1.073 billion colors</p>\r\n<p>Cổng kết nối : 1x Thunderbolt 3 (USB-C) port, 3x USB-C ports</p>\r\n<p>Trọng lượng : 7.48 Kg</p>', '<div class=\"title_module_main heading-bar d-flex justify-content-between align-items-center\">\r\n<h2 class=\"heading-bar__title \">ĐẶC ĐIỂM NỔI BẬT</h2>\r\n</div>\r\n<div id=\"ega-uti-editable-content\" class=\"rte js-product-getcontent product_getcontent pos-relative\" data-platform=\"haravan\" data-id=\"1041123291\">\r\n<div id=\"content\" class=\"content js-content\">\r\n<h2>Đặc điểm nổi bật</h2>\r\n<ul>\r\n<li>Ng&agrave;y 4/6/2019, m&agrave;n h&igrave;nh Pro Display XDR đẹp nhất của Apple ra mắt.</li>\r\n<li>K&iacute;ch thước m&agrave;n h&igrave;nh lớn 32-inch hỗ trợ độ ph&acirc;n giải 6K.</li>\r\n<li>Pro Display XDR loại bỏ &aacute;nh s&aacute;ng ch&oacute;i ở mức tốt nhất nhờ độ phản chiếu 1,65%.</li>\r\n<li>Hỗ trợ hiển thị h&igrave;nh ảnh tốt m&agrave;n h&igrave;nh dọc v&agrave; ngang.</li>\r\n<li>Kết hợp c&ugrave;ng ch&acirc;n đến Pro Stand cho ph&eacute;p t&ugrave;y chỉnh độ cao, g&oacute;c hiển thị m&agrave;n.</li>\r\n<li>L&agrave; chiếc m&agrave;n h&igrave;nh độ chuẩn m&agrave;u cao v&agrave; hiển thị sắc n&eacute;t nhất tr&ecirc;n thị trường.</li>\r\n</ul>\r\n<div>&nbsp;</div>\r\n<div>\r\n<h2>Với mức gi&aacute; l&ecirc;n đến 5.000 USD chỉ ri&ecirc;ng m&agrave;n h&igrave;nh v&agrave; 1.000 USD chỉ ri&ecirc;ng phần ch&acirc;n đế, liệu chiếc m&agrave;n h&igrave;nh Pro Display XDR của Apple c&oacute; thể l&agrave;m được những g&igrave;.</h2>\r\n<p>Nếu bạn quan t&acirc;m đến chiếc m&agrave;n h&igrave;nh chuy&ecirc;n nghiệp n&agrave;y c&oacute; thể theo d&otilde;i qu&aacute; tr&igrave;nh mở hộp v&agrave; trải nghiệm nhanh chiếc m&agrave;n h&igrave;nh n&agrave;y dưới đ&acirc;y.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000300544/file/apple-pro-display-xdr-top-features-desk-9to5mac_9180deeeb7734e18b255e7abd0fdd63f_grande.jpg\" alt=\"\" /></p>\r\n<h3>&nbsp;</h3>\r\n<h3><span>Thiết kế</span></h3>\r\n<p>Pro Display XDR l&agrave; một m&agrave;n h&igrave;nh được thiết kế đẹp mắt được l&agrave;m chủ yếu bằng k&iacute;nh v&agrave; nh&ocirc;m. Apple n&oacute;i rằng hệ thống lỗ ở ph&iacute;a sau của Pro Display XDR l&agrave;m tăng luồng kh&iacute;, hoạt động như một bộ tản nhiệt khổng lồ trong khi tạo điều kiện cho luồng kh&ocirc;ng kh&iacute; v&agrave; giảm trọng lượng. N&oacute; cũng t&igrave;nh cờ khớp với mẫu tương tự được t&igrave;m thấy tr&ecirc;n Mac Pro.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000300544/file/apple-pro-display-xdr-top-features-portrait-rear-2_db6d87625226484497bdd6cedf9e56cd_grande.jpeg\" alt=\"\" /></p>\r\n<h3>&nbsp;</h3>\r\n<h3><span>C&aacute;p bện</span></h3>\r\n<p>Giống như Mac Pro, XDR Pro Display đi k&egrave;m với c&aacute;p bện, c&oacute; chất lượng si&ecirc;u cao. Bao gồm trong hộp l&agrave; c&aacute;p nguồn bện c&ugrave;ng với c&aacute;p Thunderbolt 3 hoạt động d&agrave;i 2 m&eacute;t để kết nối với thiết bị Mac hoặc eGPU đủ điều kiện. Nhờ c&aacute;c d&acirc;y c&aacute;p bện, n&ecirc;n c&oacute; &iacute;t rối v&agrave; hao m&ograve;n tổng thể &iacute;t hơn so với c&aacute;p bọc cao su th&ocirc;ng thường.</p>\r\n<h3><span>Ch&acirc;n đế điều chỉnh</span></h3>\r\n<p>Ngay từ đầu, Pro Stand đ&atilde; g&acirc;y sự ch&uacute; &yacute; li&ecirc;n quan đến gi&aacute; của n&oacute;. Với mức gi&aacute; 999 đ&ocirc; la, n&oacute; kh&ocirc;ng hề rẻ v&agrave; một số người sẽ cho rằng n&oacute; qu&aacute; đắt.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000300544/file/apple-pro-display-xdr-top-features-pro-stand-box_e38c2d256a5145d4ba40af5b7c46f226_grande.jpeg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Với Pro Stand, chất lượng ho&agrave;n thiện kh&ocirc;ng c&oacute; g&igrave; đ&aacute;ng lo ngại. Ch&acirc;n đế đẹp được l&agrave;m từ một khối nh&ocirc;m chắc chắn, cho ph&eacute;p n&oacute; tự tin giữ chắc Pro Display XDR, ho&agrave;n to&agrave;n kh&ocirc;ng bị lung lay. Pro Stand ph&ugrave; hợp ho&agrave;n hảo với chất lượng x&acirc;y dựng của Pro Display XDR. C&aacute;c chi tiết nhỏ, như c&aacute;c cạnh v&aacute;t b&ecirc;n trong lỗ luồn d&acirc;y c&aacute;p.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000300544/file/apple-pro-display-xdr-top-features-pro-stand-in-hand_c1b82e89fcaa446681c1767558286ff5_grande.jpeg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Nhưng điều ấn tượng nhất về Pro Stand l&agrave; hệ thống đối trọng của n&oacute;. N&oacute; cho ph&eacute;p bạn điều chỉnh độ nghi&ecirc;ng v&agrave; chiều cao của Pro Display XDR dễ d&agrave;ng bằng một tay. V&agrave; ngay cả ở vị tr&iacute; chiều cao đầy đủ của n&oacute;, Pro Display XDR thực hiện tốt c&ocirc;ng việc chống rung lắc trong khi g&otilde; - thực sự ấn tượng.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000300544/file/apple-pro-display-xdr-top-features-pro-stand-cable-routing-hole_757958c5891547cf8505d77163e5afc5_grande.jpeg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Ch&acirc;n đế c&oacute; khả năng nghi&ecirc;ng m&agrave;n h&igrave;nh +25 hoặc -5 độ, v&agrave; l&agrave;m như vậy l&agrave; một việc ho&agrave;n to&agrave;n dễ d&agrave;ng. Điều tương tự cũng xảy ra đối với việc điều chỉnh độ cao, với ch&acirc;n đế c&oacute; thể di chuyển m&agrave;n h&igrave;nh tổng chiều cao 120mm - 60mm theo mỗi hướng.</p>\r\n<p>V&agrave; điều tuyệt vời l&agrave; một khi m&agrave;n h&igrave;nh được điều chỉnh, n&oacute; sẽ giữ ch&iacute;nh x&aacute;c nơi bạn rời khỏi n&oacute;. Kh&ocirc;ng c&oacute; sự chao đảo hay chuyển động, v&agrave; kh&ocirc;ng c&oacute; sự kh&ocirc;ng chắc chắn.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000300544/file/apple-pro-display-xdr-top-features-mounting-on-stand_61973c2f6d2545b7821cc841a1afc0f9_grande.jpeg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Đế Pro c&oacute; khả năng xoay M&agrave;n h&igrave;nh Pro XDR 90 độ để xem m&agrave;n h&igrave;nh ở chế độ dọc. Điều n&agrave;y đ&ograve;i hỏi người d&ugrave;ng phải trượt cơ chế kh&oacute;a ở ph&iacute;a sau của thiết bị nằm b&ecirc;n dưới c&aacute;nh tay đối trọng.</p>\r\n<p>Điều đặc biệt th&uacute; vị về g&oacute;c quay, một điều nữa thể hiện cảm gi&aacute;c chi tiết nhạy b&eacute;n của Apple, đ&oacute; l&agrave; kh&oacute;a vẫn ở c&ugrave;ng một vị tr&iacute; v&agrave; hướng, bất kể m&agrave;n h&igrave;nh hiển thị ở chế độ dọc hay ở chế độ ngang. Điều n&agrave;y gi&uacute;p người d&ugrave;ng dễ d&agrave;ng, đặc biệt l&agrave; khi điều chỉnh xoay từ ph&iacute;a trước m&agrave;n h&igrave;nh, v&igrave; kh&oacute;a lu&ocirc;n ở c&ugrave;ng một vị tr&iacute;.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000300544/file/apple-pro-display-xdr-top-features-portrait-web-browsing_a0c447dfd2564d7b902ed521d047d4f7_grande.jpeg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Tương tự, c&aacute;c d&acirc;y c&aacute;p được định vị theo c&aacute;ch sao cho ch&uacute;ng kh&ocirc;ng bị xoắn hoặc căng thẳng trong khi xoay m&agrave;n h&igrave;nh. C&aacute;c d&acirc;y c&aacute;p rơi một c&aacute;ch duy&ecirc;n d&aacute;ng th&ocirc;ng qua lỗ mở ở ch&acirc;n đế của Pro Stand khi ch&uacute;ng chạy về đ&iacute;ch.</p>\r\n<h3><span>Chế độ ch&acirc;n dung tự động</span></h3>\r\n<p>XDR Pro Display c&oacute; thể biết khi n&agrave;o bạn xoay m&agrave;n h&igrave;nh v&agrave; n&oacute; sẽ tự động chuyển sang hiển thị chế độ ch&acirc;n dung, bạn kh&ocirc;ng phải mất c&ocirc;ng thay đổi trong T&ugrave;y chọn hệ thống nữa.</p>\r\n<h3><span>Bezels mỏng</span></h3>\r\n<p>Một trong những ph&agrave;n n&agrave;n lớn nhất với iMac Pro l&agrave; c&aacute;c bezels lớn của n&oacute;, chưa kể đến v&ugrave;ng cằm lớn ph&iacute;a dưới của n&oacute;. So với m&agrave;n h&igrave;nh 5K trong iMac Pro, Pro Display XDR tr&ocirc;ng hiện đại hơn, nhờ c&aacute;c viền đối xứng nhỏ 9mm bao quanh mặt ngo&agrave;i to&agrave;n k&iacute;nh.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000300544/file/apple-pro-display-xdr-top-features-bezels_227a8c1078b24c7e839dd37c5c23284c_grande.jpeg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<h3><span>M&agrave;n h&igrave;nh 32 inch 218 PPI</span></h3>\r\n<p>Pro Display XDR c&oacute; m&agrave;n h&igrave;nh lớn 32 inch (đường ch&eacute;o) với 218 PPI tương tự iMac 27 inch. Phi&ecirc;n bản mặt k&iacute;nh b&oacute;ng ti&ecirc;u chuẩn so với k&iacute;nh kết cấu nano $999: T&ugrave;y v&agrave;o th&oacute;i quen, sở th&iacute;ch v&agrave; điều kiện sử dụng, nếu thường xuy&ecirc;n l&agrave;m việc trong m&ocirc;i trường tối, kh&ocirc;ng sợ bị phản chiếu m&agrave;n h&igrave;nh th&igrave; phi&ecirc;n bản mặt k&iacute;nh sẽ tiết kiệm đ&aacute;ng kể.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000300544/file/apple-pro-display-xdr-top-features-desk-setup_718d4771b2af44eebc9a53f44b13e032_grande.jpeg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>M&agrave;n h&igrave;nh nhiều lớp của Apple c&oacute; độ phản chiếu chỉ 1,65%, do đ&oacute;, ngay cả m&agrave;n h&igrave;nh b&oacute;ng cũng l&agrave;m tốt c&ocirc;ng việc loại bỏ &aacute;nh s&aacute;ng ch&oacute;i. V&igrave; vậy, chỉ khi n&agrave;o bạn cần độ ch&iacute;nh x&aacute;c qu&aacute; cao hoặc l&agrave;m trong m&ocirc;i trường &aacute;nh s&aacute;ng mạnh mới cần đến m&agrave;n h&igrave;nh phủ nano.</p>\r\n<h3><span>Độ ph&acirc;n giải 6K</span></h3>\r\n<p>Một trong những t&iacute;nh năng đ&aacute;ng ch&uacute; &yacute; nhất của Pro Display XDR l&agrave; độ ph&acirc;n giải 6K. Với độ ph&acirc;n giải gốc 6016 x 3384, đ&acirc;y l&agrave; m&agrave;n h&igrave;nh 6K thực sự.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000300544/file/apple-pro-display-xdr-top-features-final-cut-pro-4k_dfc2d43e8b204135b8f65f021382e855_grande.jpg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Điều đ&oacute; c&oacute; nghĩa l&agrave; bạn c&oacute; thể dễ d&agrave;ng xem h&igrave;nh ảnh 4K 100% đầy đủ hay chỉnh sửa c&aacute;c video 4K trong Final Cut Pro X một c&aacute;ch thoải m&aacute;i nhất. Kh&ocirc;ng giống như m&agrave;n h&igrave;nh iMac 5K, Pro Display XDR c&oacute; nhiều kh&ocirc;ng gian trống hơn để chừa chỗ cho c&aacute;c thanh c&ocirc;ng cụ trong c&aacute;c tr&igrave;nh dựng phim trong khi vẫn hiển thị video 4K đầy đủ.</p>\r\n<h3><span>Độ tương phản cao</span></h3>\r\n<p>XDR l&agrave; viết tắt của Extreme Dynamic Range, l&agrave; sự kết hợp của c&aacute;c c&ocirc;ng nghệ, cụ thể l&agrave; độ s&aacute;ng, tỷ lệ tương phản v&agrave; m&agrave;u sắc, gi&uacute;p m&agrave;n h&igrave;nh n&agrave;y cạnh tranh với m&agrave;n h&igrave;nh đắt hơn nhiều. Để bắt đầu, XDR Pro Display c&oacute; độ s&aacute;ng to&agrave;n m&agrave;n h&igrave;nh 1000 nits duy tr&igrave; cho nội dung dải động cao, với sự hỗ trợ cho độ s&aacute;ng tối đa 1600 nits khi cần thiết.</p>\r\n<p>V&agrave; đối với nội dung độ n&eacute;t ti&ecirc;u chuẩn, m&agrave;n h&igrave;nh hỗ trợ độ s&aacute;ng l&ecirc;n tới 500 nits, c&ugrave;ng mức đ&aacute;nh gi&aacute; được t&igrave;m thấy tr&ecirc;n c&aacute;c mẫu iMac 27 inch. Khi xem nội dung HDR th&ocirc;ng qua ứng dụng TV hoặc ở nơi kh&aacute;c, bạn chắc chắn c&oacute; thể nhận ra sự kh&aacute;c biệt về độ s&aacute;ng giữa m&agrave;n h&igrave;nh n&agrave;y v&agrave; m&agrave;n h&igrave;nh nhỏ hơn, chẳng hạn như m&agrave;n h&igrave;nh LG UltraFine.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000300544/file/apple-pro-display-xdr-top-features-blooming_f70c89607faa442dba2c90a9b642e473_grande.jpeg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Mục lớn tiếp theo trong danh s&aacute;ch l&agrave; tỷ lệ tương phản, với m&agrave;n h&igrave;nh trung t&acirc;m của Apple c&oacute; khả năng tương phản 1.000.000:1 đ&aacute;ng kinh ngạc, mang lại cho n&oacute; một c&aacute;i nh&igrave;n gần giống với m&agrave;n h&igrave;nh OLED hơn. V&iacute; dụ, m&agrave;n h&igrave;nh LCD cao cấp của Apple được t&igrave;m thấy trong iPhone 11 c&oacute; tỷ lệ tương phản 1400: 1, trong khi m&agrave;n h&igrave;nh OLED được t&igrave;m thấy trong iPhone XS năm ngo&aacute;i c&oacute; tỷ lệ tương phản 1.000.000:1.</p>\r\n<p>Cuối c&ugrave;ng, Pro Display XDR c&oacute; bảng m&agrave;u 10 bit thực sự c&oacute; khả năng hiển thị 1,073 tỷ m&agrave;u, nghĩa l&agrave; n&oacute; c&oacute; độ s&acirc;u bit hơn để đi c&ugrave;ng với dải m&agrave;u rộng hơn c&oacute; thể c&oacute; trong kh&ocirc;ng gian m&agrave;u rộng P3.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000300544/file/apple-pro-display-xdr-top-features-blue-leds_966f31f11d1d455c99b63f86d3dde3ab_grande.jpeg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Kết hợp lại, tất cả c&aacute;c lĩnh vực n&agrave;y gi&uacute;p chỉ định m&agrave;n h&igrave;nh n&agrave;y l&agrave; năng động cao, hoặc theo thuật ngữ tiếp thị của Apple, Extreme Dynamic Range c&oacute; khả năng.</p>\r\n<h3><span>G&oacute;c nh&igrave;n</span></h3>\r\n<p>Apple n&oacute;i rằng Pro Display XDR c&oacute; c&aacute;c g&oacute;c nh&igrave;n si&ecirc;u rộng với m&agrave;u sắc v&agrave; độ tương phản trung thực cao ở độ nghi&ecirc;n 89 độ, tức khi nh&igrave;n nghi&ecirc;ng gần như vu&ocirc;ng g&oacute;c với m&agrave;n h&igrave;nh th&igrave; độ s&aacute;ng v&agrave; m&agrave;u sắc đều kh&ocirc;ng bị biến đổi.</p>\r\n<h3><span>Chế độ tham chiếu</span></h3>\r\n<p>Apple bao gồm kh&aacute; nhiều chế độ tham chiếu kh&aacute;c nhau trong c&aacute;c t&ugrave;y chọn hiển thị cho XDR Pro Display. C&aacute;c chế độ tham chiếu n&agrave;y l&agrave; c&aacute;c cấu h&igrave;nh được hiệu chuẩn trước cho c&aacute;c quy tr&igrave;nh c&ocirc;ng việc v&agrave; m&ocirc;i trường sản xuất kh&aacute;c nhau.</p>\r\n<p>Người d&ugrave;ng c&oacute; thể chuyển đổi giữa c&aacute;c chế độ tham chiếu ngay khi đang di chuyển trong c&agrave;i đặt hiển thị hoặc th&ocirc;ng qua một ph&iacute;m tắt tiện dụng trong thanh menu.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000300544/file/apple-pro-display-xdr-top-features-screensaver_bf57f485aeea4028accc210c91f01c9b_grande.jpeg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>C&aacute;c chế độ n&agrave;y cho ph&eacute;p bạn chuyển đổi, v&iacute; dụ, giữa chế độ Pro Display XDR với độ s&aacute;ng tối đa 1600 nits hoặc chế độ Apple Display P3 ti&ecirc;u chuẩn, cung cấp cho bạn độ s&aacute;ng ph&ugrave; hợp với iMac ở mức 500 nits.</p>\r\n<p>Trong bản cập nhật macOS Catalina trong tương lai, Apple sẽ cho ph&eacute;p người d&ugrave;ng tạo c&aacute;c chế độ tham chiếu của ri&ecirc;ng họ, đ&acirc;y l&agrave; điều m&agrave; những người s&aacute;ng tạo nội dung chuy&ecirc;n nghiệp kh&ocirc;ng nghi ngờ g&igrave; nữa.</p>\r\n<h3><span>Hoạt động với nhiều m&aacute;y Mac v&agrave; iPad Pro</span></h3>\r\n<p>Cuối c&ugrave;ng, XDR Hiển thị Pro kh&ocirc;ng chỉ d&agrave;nh cho người d&ugrave;ng c&oacute; Mac Pro, nhưng n&oacute; hoạt động với nhiều loại m&aacute;y Mac ở độ ph&acirc;n giải đầy đủ. Một số, như MacBook Pro 16 inch, hoạt động ngay lập tức.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000300544/file/apple-pro-display-xdr-top-features-16-inch-macbook-pro_ec0455595b534be388696b0f21befae3_grande.jpeg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Pro Display XDR hỗ trợ độ ph&acirc;n giải 6016 x 3384 với 10 bpc tr&ecirc;n c&aacute;c mẫu m&aacute;y Mac n&agrave;y:</p>\r\n<p>- Mac Pro được giới thiệu v&agrave;o năm 2019</p>\r\n<p>- MacBook Pro 16 inch được giới thiệu v&agrave;o năm 2019</p>\r\n<p>- MacBook Pro 15 inch được giới thiệu v&agrave;o năm 2018 trở l&ecirc;n</p>\r\n<p>- iMac được giới thiệu v&agrave;o năm 2019</p>\r\n<p>M&aacute;y t&iacute;nh Mac c&oacute; cổng Thunderbolt 3 được kết nối với Blackmagic eGPU hoặc Blackmagic eGPU Pro</p>\r\n<p>Nếu m&aacute;y Mac cụ thể của bạn kh&ocirc;ng hỗ trợ đầy đủ XDR Hiển thị Pro, bạn lu&ocirc;n c&oacute; thể kết nối n&oacute; với Blackmagic eGPU hoặc eGPU Pro để điều khiển m&agrave;n h&igrave;nh 6K ở độ ph&acirc;n giải đầy đủ. Y&ecirc;u cầu duy nhất l&agrave; m&aacute;y Mac của bạn phải c&oacute; cổng Thunderbolt 3.</p>\r\n</div>\r\n</div>\r\n</div>', 0, '149999000', '', 'dc21a2c230.jpg'),
(22, 'Apple New For Mysql Server', 'MH1111', '95', '19', '76', 17, 14, '<p>Apple New For Mysql Server</p>', '<p>Apple New For Mysql Server</p>', 0, '60000', '50000', '3cf061e944.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `link_facebook` varchar(255) NOT NULL,
  `link_youtobe` varchar(255) NOT NULL,
  `link_twitter` varchar(255) NOT NULL,
  `link_instagram` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `title`, `description`, `body`, `phone`, `email`, `address`, `link_facebook`, `link_youtobe`, `link_twitter`, `link_instagram`, `logo`) VALUES
(1, 'rdfase', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(12, 'banner-1', '74b1bd507b.jpg', 1),
(15, 'banner-5', 'f51eca1180.jpg', 1),
(16, 'banner-3', '9c71570c68.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2019-07-16 18:31:22'),
(2, 21, '10', '2019-07-16 18:32:03'),
(3, 21, '3', '2019-07-16 18:42:59'),
(4, 20, '5', '2019-07-16 18:51:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(3, 3, 6, 'MÃ¡y tÃ­nh Dell A503', '10000000', 'dbb417a309.jpg'),
(4, 3, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', '32942e9470.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`newId`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `newId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
