-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 06, 2023 lúc 11:07 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sukien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$uvllOpgVO0nPfXj6l0n1WO8J4OVPLAAsLljmZddHqML2uw2BiU7rC', 'mahacdavid@gmail.com', 1, '2023-05-17 17:51:00', '2023-04-18 16:55:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(8, 'Tin Tức', 'TNTech vinh dự đón nhận giải thưởng Sao Khuê cho Giải pháp khách sạn thông minh', '2023-04-19 08:35:12', NULL, 1),
(9, 'Hoạt Động', 'Giải bóng đá TNG Champion League 2023 chính thức khởi tranh', '2023-04-19 08:55:39', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(19, '16', 'Cao Thế Dũng', 'caothedung.work@gmail.com', 'Hay quá', '2023-05-06 06:03:09', 1),
(20, '15', '0', 'caothedung.work@gmail.com', 'Cao thế dũng đã bình luận', '2023-05-06 06:06:29', 0),
(25, '16', '0', 'caothedung.work@gmail.com', 'hay nha', '2023-05-06 06:32:11', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnv`
--

CREATE TABLE `tblnv` (
  `id` int(11) NOT NULL,
  `NvUserName` varchar(255) NOT NULL,
  `NvPassword` varchar(255) NOT NULL,
  `NvEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `SendEmail` tinyint(4) NOT NULL,
  `NvName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblnv`
--

INSERT INTO `tblnv` (`id`, `NvUserName`, `NvPassword`, `NvEmailId`, `Is_Active`, `SendEmail`, `NvName`) VALUES
(2, 'nv', '$2y$12$uvllOpgVO0nPfXj6l0n1WO8J4OVPLAAsLljmZddHqML2uw2BiU7rC', 'caothedung.work@gmail.com', 1, 0, 'Cao Thế Dũng'),
(3, 'nv', '$2y$12$uvllOpgVO0nPfXj6l0n1WO8J4OVPLAAsLljmZddHqML2uw2BiU7rC', 'dunggthee@gmail.com', 1, 0, '0'),
(7, 'dunggthee', '$2y$12$FpeImPxA/ky.pnhQRO9Y5u3i/UFxsYckJmQKtdil6rVls5EsEN.SK', 'caothedung.work@gmail.com', 1, 1, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PageTitle` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'Về Chúng Tôi', '<p style=\"margin-bottom: 1rem; font-size: 16px; color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: justify; background-color: rgb(251, 251, 251);\"><span style=\"font-weight: bolder;\">​Công ty Cổ phần TNTech</span>&nbsp;là đơn vị trực thuộc TNS Holdings, được ra đời từ nhu&nbsp;cầu cao về việc ứng dụng các giải pháp công nghệ thông tin tiên tiến vào hoạt động sản xuất kinh doanh của các doanh nghiệp thuộc lĩnh vực: Tài chính - Ngân hàng, Bất động sản và Dịch vụ - Khách sạn.<br></p><p style=\"margin-bottom: 1rem; font-size: 16px; color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: justify; background-color: rgb(251, 251, 251);\">Không chỉ là đối tác chiến lược của các hãng phần mềm lớn trên thế giới như Microsoft, Archibus, Oracle, SAP ,...&nbsp;​để tư vấn, triển khai ứng dụng cho các doanh nghiệp trong nước, TNTech đã và đang thực hiện các bước đi đột phá, phát triển các giải pháp trên nền tảng công nghệ 4.0​​​ như công nghệ AI, VR, Big Data, giúp&nbsp;​​​các doanh nghiệp tối ưu hóa hoạt động, tăng lợi nhuận, tiết kiệm thời gian và chi phí hoạt động.<br></p><p style=\"margin-bottom: 1rem; font-size: 16px; color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; text-align: justify; background-color: rgb(251, 251, 251);\">Mục tiêu phát triển của TNTech trong giai đoạn tới là trở thành TOP 3 Công ty tích hợp Giải pháp thông minh trong ngành Bất động sản, Dịch vụ - Khách sạn và TOP 10 trong ngành Tài chính - Ngân hàng vào năm 2025.​​​</p>', '2018-06-30 18:01:03', '2023-04-19 08:34:02'),
(2, 'contactus', 'Contact Details', '<p><b><font face=\"Times New Roman\">CÔNG TY CỔ PHẦN TNTECH</font></b></p><p><font face=\"Times New Roman\"><b>Địa chỉ:</b> Tầng 21, TNR Tower, 54A Nguyễn Chí Thanh, Đống Đa, Hà Nội</font></p><p><font face=\"Times New Roman\"><b>Điện thoại:</b> (024) 7303 3556</font></p><p><font face=\"Times New Roman\"><b style=\"\">Email:</b> sales@tnteco.vn</font></p>', '2018-06-30 18:01:36', '2023-04-19 08:32:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PostImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(13, 'TNTech vinh dự đón nhận giải thưởng Sao Khuê cho Giải pháp khách sạn thông minh', 8, 10, '<p><span style=\"color: rgb(68, 68, 68); font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">Sau gần 3 tháng nộp hồ sơ và trải qua các vòng Thẩm định, thuyết trình, bình chọn và chấm điểm, T.SHS&nbsp;– giải pháp khách sạn thông minh&nbsp;của TNTech&nbsp;đã nhận được giải thưởng Sao Khuê 2021 dành cho nhóm Giải pháp phần mềm&nbsp;mới.</span></p><div bis_skin_checked=\"1\" style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; color: rgb(68, 68, 68);\"><span style=\"font-family: arial;\"><span style=\"font-size: 14px; font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important;\">Giải thưởng Sao Khuê được VINASA tổ chức lần đầu tiên năm 2003 với mục đích tôn vinh, biểu dương các doanh nghiệp, cơ quan, tập thể và cá nhân có thành tích xuất sắc đóng góp cho sự phát triển của ngành công nghiệp phần mềm và công nghệ thông tin (CNTT) Việt Nam.&nbsp;</span></span></div><div bis_skin_checked=\"1\" style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; color: rgb(68, 68, 68);\"><span style=\"font-family: arial;\"><span style=\"font-size: 14px; font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important;\">Từ năm 2005, để tăng cường hỗ trợ, định hướng cho ngành, phạm vi đối tượng giải thưởng được mở rộng tới các sản phẩm và dịch vụ của ngành công nghiệp phần mềm Việt Nam.&nbsp;</span></span></div><div bis_skin_checked=\"1\" style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; color: rgb(68, 68, 68);\"><span style=\"font-family: arial;\"><span style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important;\"><span style=\"font-size: 14px;\">T</span></span><span style=\"font-size: 14px; font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important;\">ừ đó đến nay, nhằm cập nhật các xu thế công nghệ công nghệ mới nhất, định hướng thị trường ứng dụng CNTT Việt Nam, Giải thưởng Sao Khuê đã liên tục được cập nhật, cải tiến qua các thời kỳ nhưng vẫn luôn giữ gìn giá trị cốt lõi – đó là tinh thần “Sao Khuê – ngời sáng trí tuệ Việt Nam”, và trở thành một kênh truyền thông, quảng bá, định hướng thị trường hiệu quả, một nhân tố không thể thiếu thúc đẩy sự phát triển của ngành CNTT Việt Nam.</span></span></div><div bis_skin_checked=\"1\" style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; color: rgb(68, 68, 68);\"><p style=\"margin-bottom: 1.3em; font-size: 14px; margin-top: 2vw !important; color: rgb(79, 79, 79) !important;\"><span style=\"font-family: arial; color: rgb(68, 68, 68);\">Trong bối cảnh trên của đất nước và ngành CNTT, trong năm thứ 18 Giải thưởng được tổ chức, Giải thưởng Sao Khuê 2021 tự đặt cho mình sứ mệnh quan trọng đó là “Thúc đẩy nền tảng giải pháp số – Tiên phong phát triển các hệ sinh thái số” với 6 nhóm đối tượng bình chọn và công nhận Giải thưởng Sao Khuê 2021:</span></p><ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; font-size: 14px;\"><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: arial;\">Nhóm 1: Các sản phẩm, giải pháp số (bình xét theo 21 lĩnh vực ứng dụng chuyên ngành)</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: arial;\">Nhóm 2: Các nền tảng chuyển đổi số cho mọi lĩnh vực</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: arial;\">Nhóm 3: Các giải pháp công nghệ mới cho mọi lĩnh vực, có ứng dụng các công nghệ AI, IoT, Big Data, Cloud, BlockChain, RPA, VR, AR, XR, in 3D…</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: arial;\">Nhóm 4: Các sản phẩm, giải pháp khởi nghiệp số (không phân biệt lĩnh vực ứng dụng, được thương mại hóa chưa quá 3 năm.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: arial;\">Nhóm 5: Các sản phẩm, giải pháp công nghệ mới: không phân biệt lĩnh vực ứng dụng, đã chính thức phát hành ra thị trường nhưng chưa quá 12 tháng tính đến ngày đăng ký tham gia, đã có doanh thu và hoặc đã có người sử dụng.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: arial;\">Nhóm 6: Các dịch vụ CNTT, chia theo 09 lĩnh vực dịch vụ chuyên ngành</span></li></ul><div bis_skin_checked=\"1\"><p style=\"margin-bottom: 1rem; margin-top: 2vw !important; color: rgb(79, 79, 79) !important;\"><span style=\"font-family: arial; color: rgb(68, 68, 68); font-size: 14px;\">Giải pháp Khách sạn thông minh của TNTech được xác định là giải pháp nổi bật&nbsp;với các chức năng hỗ trợ tăng trải nghiệm người dùng&nbsp;như t​ích hợp hệ thống phân tích hành vi khách hàng, đưa gợi ý phù hợp nhất khi book, tự&nbsp;động nhận diện khách<span style=\"font-weight: bolder; font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important;\">&nbsp;</span>khi đến khách sạn, self-checkin/ self- check out,&nbsp;tự chọn phòng/tầng theo ý thích; không tiếp xúc trực tiếp với lễ tân, cho phép ở cửa phòng và các khu vực công cộng bằng mobileapp, không cần dùng thẻ từ, đồng thời ứng dụng IoT giúp điều khiển các thiết bị trong phòng theo chế độ đặt sẵn bằng mobile app,&nbsp;thực hiện tái tạo không gian, ánh sáng, nhiệt độ quen thuộc cho các lần lưu trú sau...</span></p><p style=\"margin-bottom: 1rem; margin-top: 2vw !important; color: rgb(79, 79, 79) !important;\"><span style=\"font-family: arial; color: rgb(68, 68, 68); font-size: 14px;\">Giải pháp Khách sạng thông minh đã được ứng dụng&nbsp; tại&nbsp;SOJO Hotels, chuỗi khách sạn tiên phong trong việc tạo ra trải nghiệm mới cho người dùng.</span></p><font style=\"font-family: arial;\"><span style=\"font-size: 14px; font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important;\"><br></span></font></div><p style=\"margin-bottom: 1.3em; font-size: 14px; margin-top: 2vw !important; color: rgb(79, 79, 79) !important;\"><span style=\"font-family: arial; color: rgb(68, 68, 68);\"><span style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important;\">Để đạt được giải thưởng này, giải pháp Khách sạn thông minh phải đáp ứng đủ các tiêu chí về tính độc đáo (</span><em style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important; font-size: 16px !important;\">Công nghệ sáng tạo; định hình phù hợp xu hướng),&nbsp;</em><span style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important;\">tính hiệu quả</span><em style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important; font-size: 16px !important;\">&nbsp;(Tối ưu quy trình quản lý; Tăng năng suất; Tiết kiệm chi phí),&nbsp;</em><span style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important;\">phù hợp với tiềm năng thị trường, có khả năng đáp ứng nhu cầu người dùng, đảm bảo tính bảo mật, ứng dụng các công nghệ tiên tiến,…</span></span></p><p style=\"margin-bottom: 1.3em; font-size: 14px; margin-top: 2vw !important; color: rgb(79, 79, 79) !important;\"><span style=\"font-family: arial; color: rgb(68, 68, 68);\">Giải thưởng Sao Khuê 2021 chính là bằng chứng rõ nét đảm bảo chất lượng của sản phẩm do TNTech nghiên cứu và sản xuất. Đây là niềm vinh hạnh lớn, và cũng là động lực để TNTech&nbsp;tiếp tục có những thành tựu nghiên cứu mới trong tương lai, đáp ứng nhu cầu ngày càng khó tính của người dùng.</span></p><span style=\"font-family: arial;\"><br style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"></span></div><p><br></p>', '2023-04-19 08:47:16', NULL, 1, 'TNTech-vinh-dự-đón-nhận-giải-thưởng-Sao-Khuê-cho-Giải-pháp-khách-sạn-thông-minh', 'e6e1b1795945069437655fefadf889a5.jpg'),
(14, 'TNTech khởi động dự án quản lý nguồn lực ERP tại TNR Holdings Vietnam', 8, 11, '<p><span style=\"color: rgb(79, 79, 79); font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">Dự án sẽ được TNTech thực hiện trong 9 tháng, từ tháng 3 đến tháng 12/2021, chia làm hai giai đoạn và chính thức vận hành sau 6 tháng triển khai. Dự án giúp nâng cao năng lực quản lý và vận hành các dự án, mở rộng quy mô hoạt động, đưa các dự án bất động sản trải rộng khắp mọi miền tổ quốc.&nbsp;</span></p><p style=\"margin-bottom: 1rem; font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; margin-top: 2vw !important; color: rgb(79, 79, 79) !important;\">Việc hợp tác với TNTech (đơn vị triển khai) và SAP là một phần trong quá trình chuyển đổi số lâu dài của TNG Holdings Vietnam. ERP có đầy đủ nghiệp vụ phục vụ cho nhu cầu về nhân sự, tài chính, nhà kho, cung ứng hay bất kỳ bộ phận nào mà doanh nghiệp có. Không chỉ đơn thuần là hệ thống độc lập của một đơn vị, ERP có thể kết nối dữ liệu của nhiều đơn vị thành viên trong Tập đoàn, có vai trò tổng hợp đầy đủ và cung cấp thông tin, từ đó nâng cao năng suất lao động, tiết kiệm thời gian, chi phí, gia tăng doanh thu và lợi nhuận.​<br></p><div><br></div><p><br></p>', '2023-04-19 08:51:31', NULL, 1, 'TNTech-khởi-động-dự-án-quản-lý-nguồn-lực-ERP-tại-TNR-Holdings-Vietnam', 'e4cc77bd345df2ccf9d16e84375502d6.jpg'),
(15, 'Giải bóng đá TNG Champion League 2023 chính thức khởi tranh', 9, 12, '<p><span style=\"color: rgb(79, 79, 79); font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">​</span><br style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; color: rgb(79, 79, 79); font-size: 16px;\"><span style=\"font-family: inherit; color: rgb(5, 5, 5); font-size: 15px; white-space: pre-wrap;\">Sáng thứ 7 vừa qua, ngày 8.4, tại sân bóng Thái Sơn 1 (số 2 Hoàng Minh Giám, Cầu Giấy) đã diễn ra lễ khai mạc Giải bóng đá TNG Champion League, đồng thời kick off cho chuỗi các hoạt động hướng tới ngày hội truyền thống TNGMei 2023.</span></p><p><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\"> Lễ khai mạc đã diễn ra trong không khí sôi động và đầy quyết tâm của 5 đội bóng cùng dàn cổ động viên nhiệt huyết</span></p><p><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\"> Ngay sau đó, 2 trận bóng mở đầu mùa giải giữa Inte và Repo, Effi và Unta đã mang đến những màn trình diễn vô cùng đẹp mắt.</span></p><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: inherit; font-size: 16px !important;\">&nbsp;Kết thúc trận đấu, Effi hiện tại đang có lợi thế khi thắng 2-1 trước Unta, Inte và Repo có tỉ số hòa 0-0.<br style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important;\"></div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: inherit; font-size: 16px !important;\"><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: inherit; color: rgb(5, 5, 5); white-space: pre-wrap;\">TNTech xin được gửi lời cảm ơn tất cả các cổ động viên nhiệt thành đã có mặt để tiếp lửa cho các cầu thủ UntaHouse (Liên quân giữa TNTech, TNTalent, TNG Asset, Nguồn vốn, VPTĐ). Hãy cùng đón chờ những trận bóng hấp dẫn được diễn ra vào sáng thứ 7 hàng tuần sắp tới nhé!<br style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important;\"></div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: inherit; color: rgb(5, 5, 5); white-space: pre-wrap;\"><br style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important;\"></div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: inherit; color: rgb(5, 5, 5); white-space: pre-wrap;\"><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px;\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\" style=\"font-family: inherit; width: 16px; display: inline-flex; margin: 0px 1px; height: 16px; vertical-align: middle;\"><img width=\"16\" alt=\"?\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" height=\"16\" style=\"-webkit-tap-highlight-color: transparent; max-width: 100%; margin: 5px; font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important;\"></span> Theo dõi TNTech để cập nhật thông tin về công nghệ.</div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px;\">--------------</div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px;\">CÔNG TY CỔ PHẦN TNTECH</div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Địa chỉ: Tầng 21, TNR Tower, 54A Nguyễn Chí Thanh, Hà Nội</div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Website: <span style=\"font-family: inherit;\"><a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1fey0fg\" href=\"https://tnteco.vn/?fbclid=IwAR1v88FI_o7_ktZ2zs8wOoSP2D9BT0UYlofxNildldtjxROj1FdqJCxla9g\" rel=\"nofollow noopener\" role=\"link\" target=\"_blank\" bis_skin_checked=\"1\" style=\"color: rgb(0, 123, 255); font-family: inherit; cursor: pointer; margin: 0px; text-align: inherit; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; list-style: none; display: inline;\">https://tnteco.vn/</a></span></div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Điện thoại: (024) 7307 5566</div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Email: sales@tnteco.vn</div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px;\"><span style=\"font-family: inherit;\"><a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" href=\"https://www.facebook.com/hashtag/tntech?__eep__=6&amp;__cft__%5b0%5d=AZWeia5td6C22vEXThTlEqnzXqfj-XKUdGyqdm8PC7yAXIXTiP4NKX14KnUQNtAdVOXTNhO3I8lEX1E1KtyLeu7IMb1HQvxc1unNv0l_GXOBeS2W99814_FETUxYBxAkQenLzUgoBbgsT7N0YiQvfvdQtauUxjVMCJTnTWmr9G-J0x9ioCA5wKwFFaaMk3bJlOs&amp;__tn__=%2aNK-R\" role=\"link\" bis_skin_checked=\"1\" style=\"color: rgb(0, 123, 255); font-family: inherit; cursor: pointer; margin: 0px; text-align: inherit; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; list-style: none; display: inline;\">#TNTech</a></span> <span style=\"font-family: inherit;\"><a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" href=\"https://www.facebook.com/hashtag/giaiphapcongnghe?__eep__=6&amp;__cft__%5b0%5d=AZWeia5td6C22vEXThTlEqnzXqfj-XKUdGyqdm8PC7yAXIXTiP4NKX14KnUQNtAdVOXTNhO3I8lEX1E1KtyLeu7IMb1HQvxc1unNv0l_GXOBeS2W99814_FETUxYBxAkQenLzUgoBbgsT7N0YiQvfvdQtauUxjVMCJTnTWmr9G-J0x9ioCA5wKwFFaaMk3bJlOs&amp;__tn__=%2aNK-R\" role=\"link\" bis_skin_checked=\"1\" style=\"color: rgb(0, 123, 255); font-family: inherit; cursor: pointer; margin: 0px; text-align: inherit; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; list-style: none; display: inline;\">#GiaiPhapCongNghe</a></span> <span style=\"font-family: inherit;\"><a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" href=\"https://www.facebook.com/hashtag/sohoa?__eep__=6&amp;__cft__%5b0%5d=AZWeia5td6C22vEXThTlEqnzXqfj-XKUdGyqdm8PC7yAXIXTiP4NKX14KnUQNtAdVOXTNhO3I8lEX1E1KtyLeu7IMb1HQvxc1unNv0l_GXOBeS2W99814_FETUxYBxAkQenLzUgoBbgsT7N0YiQvfvdQtauUxjVMCJTnTWmr9G-J0x9ioCA5wKwFFaaMk3bJlOs&amp;__tn__=%2aNK-R\" role=\"link\" bis_skin_checked=\"1\" style=\"color: rgb(0, 123, 255); font-family: inherit; cursor: pointer; margin: 0px; text-align: inherit; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; list-style: none; display: inline;\">#SoHoa</a></span></div></div></div><p><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\"><br></span><span style=\"font-family: inherit; color: rgb(5, 5, 5); font-size: 15px; white-space: pre-wrap;\"><br></span><br></p>', '2023-04-19 08:53:15', '2023-04-19 08:56:11', 1, 'Giải-bóng-đá-TNG-Champion-League-2023-chính-thức-khởi-tranh', 'f82dcbcf2361bad8d0ed1f57bb3e08bc.jpg'),
(16, 'TNTech tuyển dụng gấp các vị trí CNTT trong tháng 3/2023', 8, 10, '<div class=\"m-n-content\" bis_skin_checked=\"1\" style=\"font-family: roboto-regular; font-size: 16px; color: rgb(33, 37, 41);\"><div class=\"ExternalClassB0BD3544312E454EB8132A2BE65B67BC\" bis_skin_checked=\"1\" style=\"font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important;\"><p style=\"margin-bottom: 1rem; margin-top: 2vw !important; color: rgb(79, 79, 79) !important;\"><span style=\"font-weight: bolder;\">1. Business Analyst (Mảng Tài chính, Sales, Bất động sản)&nbsp;</span></p><ul style=\"margin-bottom: 1rem;\"><li>Tìm hiểu yêu cầu của người sử dụng, phân tích yêu cầu và xây dựng tài liệu mô tả yêu cầu người sử dụng. Phân tích và đưa ra mô hình, giải pháp dựa trên yêu cầu đã thu thập được.</li><li>Viết các tài liệu đặc tả yêu cầu nghiệp vụ phần mềm (SRS, URD, BRD,…), tài liệu đặc tả trường hợp sử dụng (use case, use story), tài liệu kịch bản kiểm thử (testcase)</li><li>Thiết kế giao diện mẫu (prototype, wirefame)<br></li><li>Ứng tuyển ngay:&nbsp;https://bit.ly/3JdFeK​​c​<br></li></ul><p style=\"margin-bottom: 1rem; margin-top: 2vw !important; color: rgb(79, 79, 79) !important;\"><span style=\"font-weight: bolder;\">2. Senior ReactJS​</span></p><ul style=\"margin-bottom: 1rem;\"><li>Tham gia triển khai các dự án của phòng Tài chính ngân hàng theo sự phân công của lãnh đạo phòng, đảm tiến độ, chất lượng các công việc được giao, phối hợp với các thành viên trong team xác định yêu cầu, giải pháp cho dự án.</li><li>Đào tạo và hướng dẫn các team-meber nắm bắt công nghệ mới.</li><li>Ứng tuyển ngay:&nbsp;https://bit.ly/3JgkJMP​<br></li></ul><p style=\"margin-bottom: 1rem; margin-top: 2vw !important; color: rgb(79, 79, 79) !important;\"><span style=\"font-weight: bolder;\">3. Senior Java Dev</span></p><ul style=\"margin-bottom: 1rem;\"><li>Tham gia phát triển sản phẩm trên nền tảng Java web / Mobile App về mảng tài chính, ngân hàng</li><li>Tham gia vào quá trình: phân tích yêu cầu, thiết kế chức năng, lập trình, sửa lỗi, triển khai và hỗ trợ vận hành.<br></li><li>Ứng tuyển ngay:&nbsp;https://bit.ly/3YpYs3o​<br></li></ul><p style=\"margin-bottom: 1rem; margin-top: 2vw !important; color: rgb(79, 79, 79) !important;\"><span style=\"font-weight: bolder;\">TẠI SAO NÊN ỨNG TUYỂN VÀO TNTECH?</span></p><ul style=\"margin-bottom: 1rem;\"><li>Mức thưởng: tối đa đến 5 tháng lương/năm (đánh giá theo KPI cá nhân và công ty cuối năm)</li><li>Nghỉ hưởng nguyên lương vào ngày sinh nhật (làm việc đủ 12 tháng trở lên)</li><li>Bảo hiểm: BHXH bắt buộc và BH khám chữa bệnh nội ngoại trú Bảo Minh</li><li>Chế độ tăng lương: 1 lần/ năm (theo quy định cụ thể)</li><li>Nghỉ mát, teambuilding tối thiểu 1 lần/ năm</li><li>Các hoạt động đào tạo nâng cao chuyên nghiệp</li><li>Thời gian làm việc: Thứ 2-6, nghỉ thứ 7 và chủ nhật | Lựa chọn giờ bắt đầu làm việc linh hoạt (8h/8h30/9h) ​​<br><br></li></ul></div></div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px; color: rgb(5, 5, 5); white-space: pre-wrap;\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\" style=\"font-family: inherit; width: 16px; display: inline-flex; margin: 0px 1px; height: 16px; vertical-align: middle;\"><img width=\"16\" alt=\"?\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" height=\"16\" style=\"-webkit-tap-highlight-color: transparent; max-width: 100%; margin: 5px; font-family: &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; !important;\"></span> Theo dõi TNTech để cập nhật thông tin về công nghệ.</div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px; color: rgb(5, 5, 5); white-space: pre-wrap;\">--------------</div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px; color: rgb(5, 5, 5); white-space: pre-wrap;\">CÔNG TY CỔ PHẦN TNTECH</div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px; color: rgb(5, 5, 5); white-space: pre-wrap;\">Địa chỉ: Tầng 21, TNR Tower, 54A Nguyễn Chí Thanh, Hà Nội</div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px; color: rgb(5, 5, 5); white-space: pre-wrap;\">Website: <span style=\"font-family: inherit;\"><a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1fey0fg\" href=\"https://tnteco.vn/?fbclid=IwAR1TV5HULYKFKbqWa-Y3k5nYnk2ViRqX5ygcDrUuzipU2x3CRvxrrCP2_Dw\" rel=\"nofollow noopener\" role=\"link\" target=\"_blank\" bis_skin_checked=\"1\" style=\"color: rgb(0, 123, 255); font-family: inherit; cursor: pointer; margin: 0px; text-align: inherit; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; list-style: none; display: inline;\">https://tnteco.vn/</a></span></div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px; color: rgb(5, 5, 5); white-space: pre-wrap;\">Điện thoại: (024) 7307 5566</div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px; color: rgb(5, 5, 5); white-space: pre-wrap;\">Email: contact@tnteco.vn</div><div dir=\"auto\" bis_skin_checked=\"1\" style=\"font-family: &quot;segoe ui historic&quot;, &quot;segoe ui&quot;, helvetica, arial, sans-serif; font-size: 15px; color: rgb(5, 5, 5); white-space: pre-wrap;\"><span style=\"font-family: inherit;\"><a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" href=\"https://www.facebook.com/hashtag/tntech?__eep__=6&amp;__cft__%5b0%5d=AZU7OZdpjSTXvO4MokMba_zRD7hwySH18PeRjOLea3TQ5fhHKYJPVZ37vFRoHfPAVdA4Bf-JTRc0_O_eQ5kY0Lu8GWhP0qwBppbLEiI-gNs6NDWvGZFJFduFIhZfWBP_qsBa6SHWWAhyqUemDMTBwl4mPuCnFKsZbnfC7aI5a_1u5STXWmUGFo2oCex4QBWY4Ew&amp;__tn__=%2aNK-R\" role=\"link\" bis_skin_checked=\"1\" style=\"color: rgb(0, 123, 255); font-family: inherit; cursor: pointer; margin: 0px; text-align: inherit; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; list-style: none; display: inline;\">#TNTech</a></span> <span style=\"font-family: inherit;\"><a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" href=\"https://www.facebook.com/hashtag/giaiphapcongnghe?__eep__=6&amp;__cft__%5b0%5d=AZU7OZdpjSTXvO4MokMba_zRD7hwySH18PeRjOLea3TQ5fhHKYJPVZ37vFRoHfPAVdA4Bf-JTRc0_O_eQ5kY0Lu8GWhP0qwBppbLEiI-gNs6NDWvGZFJFduFIhZfWBP_qsBa6SHWWAhyqUemDMTBwl4mPuCnFKsZbnfC7aI5a_1u5STXWmUGFo2oCex4QBWY4Ew&amp;__tn__=%2aNK-R\" role=\"link\" bis_skin_checked=\"1\" style=\"color: rgb(0, 123, 255); font-family: inherit; cursor: pointer; margin: 0px; text-align: inherit; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; list-style: none; display: inline;\">#GiaiPhapCongNghe</a></span> <span style=\"font-family: inherit;\"><a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj xo1l8bm\" href=\"https://www.facebook.com/hashtag/sohoa?__eep__=6&amp;__cft__%5b0%5d=AZU7OZdpjSTXvO4MokMba_zRD7hwySH18PeRjOLea3TQ5fhHKYJPVZ37vFRoHfPAVdA4Bf-JTRc0_O_eQ5kY0Lu8GWhP0qwBppbLEiI-gNs6NDWvGZFJFduFIhZfWBP_qsBa6SHWWAhyqUemDMTBwl4mPuCnFKsZbnfC7aI5a_1u5STXWmUGFo2oCex4QBWY4Ew&amp;__tn__=%2aNK-R\" role=\"link\" bis_skin_checked=\"1\" style=\"color: rgb(0, 123, 255); font-family: inherit; cursor: pointer; margin: 0px; text-align: inherit; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; list-style: none; display: inline;\">#SoHoa</a></span></div>', '2023-04-19 08:57:52', NULL, 1, 'TNTech-tuyển-dụng-gấp-các-vị-trí-CNTT-trong-tháng-3/2023', '9c8124abf86b28462613368cc31ba813.png'),
(17, 'Test', 8, 10, '<p>Test</p>', '2023-05-05 14:46:25', '2023-05-05 14:47:34', 0, 'Test', 'c38cf3e02481d7dac2ee30863a6452d9.png'),
(18, 'TNTech vinh dự đón nhận giải thưởng Sao Khuê cho Giải pháp khách sạn thông minh', 8, 10, '<p>test</p>', '2023-05-05 14:54:44', '2023-05-06 09:04:38', 0, 'TNTech-vinh-dự-đón-nhận-giải-thưởng-Sao-Khuê-cho-Giải-pháp-khách-sạn-thông-minh', 'c38cf3e02481d7dac2ee30863a6452d9.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `SubCatDescription` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Bollywood ', 'Bollywood masala', '2018-06-22 15:45:38', '0000-00-00 00:00:00', 0),
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2018-06-30 09:00:43', '0000-00-00 00:00:00', 0),
(5, 3, 'Football', 'Football', '2018-06-30 09:00:58', '0000-00-00 00:00:00', 1),
(6, 5, 'Television', 'TeleVision', '2018-06-30 18:59:22', '0000-00-00 00:00:00', 1),
(7, 6, 'National', 'National', '2018-06-30 19:04:29', '0000-00-00 00:00:00', 0),
(8, 6, 'International', 'International', '2018-06-30 19:04:43', '0000-00-00 00:00:00', 0),
(9, 7, 'India', 'India', '2018-06-30 19:08:42', '0000-00-00 00:00:00', 1),
(10, 8, 'TIN DOANH NGHIỆP', 'TNTech vinh dự đón nhận giải thưởng Sao Khuê cho Giải pháp khách sạn thông minh', '2023-04-19 08:35:48', NULL, 1),
(11, 8, 'TIN DOANH NGHIỆP', 'TNTech khởi động dự án quản lý nguồn lực ERP tại TNR Holdings Vietnam', '2023-04-19 08:50:31', NULL, 1),
(12, 9, 'TIN HOẠT ĐỘNG', 'Giải bóng đá TNG Champion League 2023 chính thức khởi tranh', '2023-04-19 08:52:25', NULL, 1),
(13, 8, 'TIN DOANH NGHIỆP', 'TNTech tuyển dụng gấp các vị trí CNTT trong tháng 3/2023', '2023-04-19 08:57:17', NULL, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblnv`
--
ALTER TABLE `tblnv`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tblnv`
--
ALTER TABLE `tblnv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
