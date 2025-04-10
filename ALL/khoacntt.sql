USE [khoacntt]
GO
/****** Object:  Table [dbo].[AccUser]    Script Date: 02/04/2025 19:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Macv] [int] NULL,
	[MaTag] [int] NULL,
	[GT] [nvarchar](10) NULL,
	[SDT] [nchar](10) NULL,
	[Name] [nvarchar](20) NULL,
	[Pass] [nchar](20) NULL,
	[Anh] [nvarchar](max) NULL,
 CONSTRAINT [PK_AccUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiDang]    Script Date: 02/04/2025 19:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiDang](
	[Mabai] [int] IDENTITY(1,1) NOT NULL,
	[Matg] [int] NULL,
	[Macd] [int] NULL,
	[Tieude] [nvarchar](max) NULL,
	[Mota] [nvarchar](max) NULL,
	[Ngaycapnhat] [nvarchar](50) NULL,
	[Mand] [int] NULL,
	[Anh] [nvarchar](max) NULL,
 CONSTRAINT [PK_BaiDang] PRIMARY KEY CLUSTERED 
(
	[Mabai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chudeviet]    Script Date: 02/04/2025 19:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chudeviet](
	[Macd] [int] IDENTITY(1,1) NOT NULL,
	[Tencd] [nvarchar](50) NULL,
 CONSTRAINT [PK_chudeviet] PRIMARY KEY CLUSTERED 
(
	[Macd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CMT]    Script Date: 02/04/2025 19:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CMT](
	[Macmt] [int] IDENTITY(1,1) NOT NULL,
	[CMT] [varchar](max) NOT NULL,
	[ID] [int] NULL,
	[Mabai] [int] NULL,
	[Ngaycmt] [nvarchar](50) NULL,
 CONSTRAINT [PK_CMT] PRIMARY KEY CLUSTERED 
(
	[Macmt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CV]    Script Date: 02/04/2025 19:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CV](
	[Macv] [int] IDENTITY(1,1) NOT NULL,
	[CV] [nvarchar](max) NULL,
 CONSTRAINT [PK_CV] PRIMARY KEY CLUSTERED 
(
	[Macv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ND]    Script Date: 02/04/2025 19:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ND](
	[Mand] [int] IDENTITY(1,1) NOT NULL,
	[Nd] [nvarchar](max) NULL,
 CONSTRAINT [PK_ND] PRIMARY KEY CLUSTERED 
(
	[Mand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tacgia]    Script Date: 02/04/2025 19:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tacgia](
	[Matg] [int] IDENTITY(1,1) NOT NULL,
	[Tentg] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tacgia] PRIMARY KEY CLUSTERED 
(
	[Matg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAG]    Script Date: 02/04/2025 19:43:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAG](
	[MaTag] [int] IDENTITY(1,1) NOT NULL,
	[Tag] [nvarchar](max) NULL,
 CONSTRAINT [PK_TAG] PRIMARY KEY CLUSTERED 
(
	[MaTag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AccUser] ON 

INSERT [dbo].[AccUser] ([ID], [Macv], [MaTag], [GT], [SDT], [Name], [Pass], [Anh]) VALUES (1, 1, 1, N'Nam', N'0385496282', N'Admin', N'12345               ', N'logovui.jpg')
INSERT [dbo].[AccUser] ([ID], [Macv], [MaTag], [GT], [SDT], [Name], [Pass], [Anh]) VALUES (2, 1, 2, N'Nam', N'0345222345', N'Nguyễn Quốc Khánh', N'123                 ', N'logovui.jpg')
INSERT [dbo].[AccUser] ([ID], [Macv], [MaTag], [GT], [SDT], [Name], [Pass], [Anh]) VALUES (3, 2, 2, N'Nữ', N'0385496282', N'Nguyễn Thị Ngọc Ánh', N'123                 ', N'coanh.jpg')
INSERT [dbo].[AccUser] ([ID], [Macv], [MaTag], [GT], [SDT], [Name], [Pass], [Anh]) VALUES (4, 2, 1, N'Nữ', N'0385496282', N'Đỗ Thị Hồng', N'123                 ', N'cohong.jpg')
INSERT [dbo].[AccUser] ([ID], [Macv], [MaTag], [GT], [SDT], [Name], [Pass], [Anh]) VALUES (5, 2, 2, N'Nam', N'0385496282', N'Thầy Điệp', N'123                 ', N'logovui.jpg')
INSERT [dbo].[AccUser] ([ID], [Macv], [MaTag], [GT], [SDT], [Name], [Pass], [Anh]) VALUES (8, 3, 2, N'Nữ', N'0385496282', N'Nguyễn Phương Loan', N'123                 ', N'Loan.jpg')
INSERT [dbo].[AccUser] ([ID], [Macv], [MaTag], [GT], [SDT], [Name], [Pass], [Anh]) VALUES (9, 3, 1, N'Nữ', N'0385496282', N'Nguyễn Thị Hồng Ngọc', N'12345               ', N'HNGOC.jpg')
INSERT [dbo].[AccUser] ([ID], [Macv], [MaTag], [GT], [SDT], [Name], [Pass], [Anh]) VALUES (10, 3, 2, N'Nữ', N'0385496282', N'Nguyễn Thị Ngọc Mai', N'123                 ', N'Mai1.jpg')
INSERT [dbo].[AccUser] ([ID], [Macv], [MaTag], [GT], [SDT], [Name], [Pass], [Anh]) VALUES (11, 3, 2, N'Nữ', N'0385496282', N'Nguyễn Phương Linh', N'123                 ', N'linh.jpg')
INSERT [dbo].[AccUser] ([ID], [Macv], [MaTag], [GT], [SDT], [Name], [Pass], [Anh]) VALUES (12, 3, 1, N'Nam', N'0385496282', N'Nguyễn Khánh Bình', N'123                 ', N'Binh.jpg')
INSERT [dbo].[AccUser] ([ID], [Macv], [MaTag], [GT], [SDT], [Name], [Pass], [Anh]) VALUES (13, 3, 2, N'Nam', N'0345222345', N'Nguyễn Hồng Phú', N'123                 ', N'phu.jpg')
INSERT [dbo].[AccUser] ([ID], [Macv], [MaTag], [GT], [SDT], [Name], [Pass], [Anh]) VALUES (14, 3, 2, N'Nữ', N'0345222345', N'Phùng Thị Kim Anh', N'123                 ', N'Kanh.jpg')
SET IDENTITY_INSERT [dbo].[AccUser] OFF
GO
SET IDENTITY_INSERT [dbo].[BaiDang] ON 

INSERT [dbo].[BaiDang] ([Mabai], [Matg], [Macd], [Tieude], [Mota], [Ngaycapnhat], [Mand], [Anh]) VALUES (2, 3, 3, N'Hội nghị đối thoại với sinh viên khoa Kinh tế và khoa Kỹ thuật Phân tích', N'Với mục đích hỗ trợ các bạn sinh viên khoa Kinh tế và khoa Kỹ thuật Phân tích trong quá trình học tập tại trường Đại học Công nghiệp Việt Trì, chiều ngày 10/12, Hội nghị đối thoại với sinh viên năm 2024 đã chính thức diễn ra.', N'11/12/2024', 3, N'hoinghi2.jpg')
INSERT [dbo].[BaiDang] ([Mabai], [Matg], [Macd], [Tieude], [Mota], [Ngaycapnhat], [Mand], [Anh]) VALUES (3, 4, 4, N'Khai mạc giải thể thao Chào mừng kỷ niệm 42 năm ngày thành lập nhà giáo Việt Nam (20/11/1982 - 20/11/2024)', N'Trong không khí vui tươi, sôi nổi chào mừng 42 năm ngày Nhà giáo Việt Nam (20/11/1982 - 20/11/2024), được sự nhất trí của Đảng ủy, Ban Giám hiệu, Công đoàn Trường Đại học Công nghiệp Việt Trì tổ chức Giải thể thao bóng chuyền hơi nam, nữ dành cho toàn thể đoàn viên công đoàn trong toàn trường.', N'20/11/2024', 4, N'thethaonhagiaovn.jpg')
INSERT [dbo].[BaiDang] ([Mabai], [Matg], [Macd], [Tieude], [Mota], [Ngaycapnhat], [Mand], [Anh]) VALUES (4, 1, 3, N'Hội nghị viên chức, người lao động năm 2025', N'Nhằm tổng kết hoạt động năm 2024 và đề ra phương hướng, nhiệm vụ cho năm 2025, chiều ngày 13/12, trường Đại học Công nghiệp Việt Trì đã tổ chức Hội nghị viên chức, người lao động. Đây là dịp để toàn thể viên chức, người lao động trong trường cùng nhau nhìn lại những kết quả đạt được, nêu rõ những khó khăn, thách thức, đồng thời đưa ra các giải pháp để tiếp tục phát triển Nhà trường trong tương lai.', N'25/12/2024', 6, N'hoithaocongchuc.jpg')
INSERT [dbo].[BaiDang] ([Mabai], [Matg], [Macd], [Tieude], [Mota], [Ngaycapnhat], [Mand], [Anh]) VALUES (5, 3, 3, N'Lãnh đạo Nhà trường gặp và làm việc với Công ty Cổ phần B- Hope, Nhật Bản', N'Ngày 15/04/2024, Trường Đại học Công nghiệp Việt Trì có buổi tiếp đón và làm việc với Công ty Cổ phần B-Hope, Nhật Bản để trao đổi, hợp tác đào tạo và việc làm với Nhà trường.', N'25/12/2024', 7, N'khoavsnhat1.jpg')
INSERT [dbo].[BaiDang] ([Mabai], [Matg], [Macd], [Tieude], [Mota], [Ngaycapnhat], [Mand], [Anh]) VALUES (6, 2, 1, N'Đoàn Trường Đại học Công nghiệp Việt Trì phối hợp tổ chức ra quân chiến dịch tình nguyện hè và triển khai chiến dịch kỳ nghỉ hồng năm 2023', N'Ngày 18/6/2023, tại xã Cao Xá, huyện Lâm Thao, Đoàn Khối các cơ quan tỉnh phối hợp với Huyện đoàn Lâm Thao và Đoàn trường Đại học Công nghiệp Việt Trì tổ chức ra quân “Chiến dịch tình nguyện hè và triển khai chiến dịch kỳ nghỉ hồng năm 2023”, trong khối cán bộ, công chức năm 2023 - Trao tặng mô hình cấp tỉnh “Làng quê đáng sống”.', N'25/12/2024', 8, N'tinhnguyen.jpg')
INSERT [dbo].[BaiDang] ([Mabai], [Matg], [Macd], [Tieude], [Mota], [Ngaycapnhat], [Mand], [Anh]) VALUES (7, 3, 1, N'Thạc sĩ Bùi Thị Thu Thủy đã bảo vệ thành công đề tài nghiên cứu khoa học cấp Trường', N'Sáng ngày 18/12, ThS. Bùi Thị Thu Thủy chủ nhiệm đề tài và nhóm nghiên cứu đã bảo vệ thành công đề tài nghiên cứu khoa học cấp Trường: “Nghiên cứu biện pháp  nâng cao hứng thú trong giờ học giáo dục thể chất cho sinh viên trường Đại học Công nghiệp Việt Trì”.', N'25/12/2024', 9, N'nckhbuitu.jpg')
INSERT [dbo].[BaiDang] ([Mabai], [Matg], [Macd], [Tieude], [Mota], [Ngaycapnhat], [Mand], [Anh]) VALUES (8, 3, 2, N'Hội nghị đối thoại với sinh viên khoa Kinh tế và khoa Kỹ thuật Phân tích', N'eeeeeeeeeesfsf', N'25/12/2024', 2, N'Binh.jpg')
SET IDENTITY_INSERT [dbo].[BaiDang] OFF
GO
SET IDENTITY_INSERT [dbo].[chudeviet] ON 

INSERT [dbo].[chudeviet] ([Macd], [Tencd]) VALUES (1, N'Nghiên cứ khoa học')
INSERT [dbo].[chudeviet] ([Macd], [Tencd]) VALUES (2, N'Báo SInh Viên')
INSERT [dbo].[chudeviet] ([Macd], [Tencd]) VALUES (3, N'Hội Thảo')
INSERT [dbo].[chudeviet] ([Macd], [Tencd]) VALUES (4, N'Hội Thao')
INSERT [dbo].[chudeviet] ([Macd], [Tencd]) VALUES (5, N'Hoạt Động Tình Nguyện')
SET IDENTITY_INSERT [dbo].[chudeviet] OFF
GO
SET IDENTITY_INSERT [dbo].[CV] ON 

INSERT [dbo].[CV] ([Macv], [CV]) VALUES (1, N'Trưởng Khoa')
INSERT [dbo].[CV] ([Macv], [CV]) VALUES (2, N'Giảng Viên')
INSERT [dbo].[CV] ([Macv], [CV]) VALUES (3, N'Sinh viên')
SET IDENTITY_INSERT [dbo].[CV] OFF
GO
SET IDENTITY_INSERT [dbo].[ND] ON 

INSERT [dbo].[ND] ([Mand], [Nd]) VALUES (2, N'akakakakkakakak')
INSERT [dbo].[ND] ([Mand], [Nd]) VALUES (3, N'
Hội nghị đối thoại sinh viên có sự tham dự của PGS.TS. Trần Thị Hằng – Phó Hiệu trưởng Nhà trường; TS.Vũ Quốc Hiến – Phó Hiệu trưởng Nhà trường; TS. Vũ Thị Phương Lan – Trưởng khoa Kinh tế; TS. Quản Cẩm Thúy – Trưởng khoa Kỹ thuật Phân tích; Lãnh đạo các đơn vị Phòng ban, Trung tâm, Đoàn Thanh niên, Hội sinh viên; cán bộ giảng viên và sinh viên hai khoa.

Đây là hoạt động thường niên mang ý nghĩa to lớn, tạo cầu nối gắn kết giữa Nhà trường, khoa và sinh viên. Đồng thời, đây cũng là cơ hội để sinh viên trực tiếp bày tỏ tâm tư nguyện vọng với lãnh đạo Nhà trường và thầy cô trong quá trình học tập, rèn luyện. 



TS. Vũ Quốc Hiến – Phó Hiệu trưởng Nhà trường phát biểu tại Hội nghị

Đại diện Ban Giám hiệu, TS. Vũ Quốc Hiến – Phó Hiệu trưởng, mong muốn lắng nghe những ý kiến đóng góp thẳng thắn và thiện chí của sinh viên về mọi mặt. Nhà trường luôn luôn vì người học, vì sinh viên, tạo điều kiện tối đa trong điều kiện cho phép để sinh viên được học tập và phát triển bản thân. Những ý kiến, đề xuất từ sinh viên khoa Kỹ thuật Phân tích và khoa Kinh tế sẽ góp phần giúp Nhà trường và lãnh đạo khoa thực hiện các điều chỉnh kịp thời, phù hợp, nâng cao hiệu quả trong công tác quản lý.



Sinh viên Trần Thị Mỹ Hạnh lớp PT1Đ21 

Tại hội nghị các em sinh viên đã mạnh dạn nêu lên ý kiến, tâm tư, nguyện vọng của mình trong quá trình học tập tại trường. Và các em cũng đã được lãnh đạo Nhà trường và Ban lãnh hai khoa đã có những lời giải đáp chi tiết, tận tình về các vấn đề được sinh viên quan tâm nhiều nhất là: các quy định về học song bằng, khởi nghiệp của sinh viên, nghiên cứu khoa học, hoạt động thể thao.

Hội nghị đối thoại sinh viên với lãnh đạo Nhà trường và lãnh đạo khoa Kinh tế, khoa Kỹ thuật Phân tích đã diễn ra với không khí sôi nổi, cởi mở và thành công tốt đẹp.')
INSERT [dbo].[ND] ([Mand], [Nd]) VALUES (4, N'Trong không khí vui tươi, sôi nổi chào mừng 42 năm ngày Nhà giáo Việt Nam (20/11/1982 - 20/11/2024), được sự nhất trí của Đảng ủy, Ban Giám hiệu, Công đoàn Trường Đại học Công nghiệp Việt Trì tổ chức Giải thể thao bóng chuyền hơi nam, nữ dành cho toàn thể đoàn viên công đoàn trong toàn trường.



Lãnh đạo Nhà trường tặng hoa các đội tham gia thi đấu

Tham dự lễ khai mạc có sự hiện diện của TS. Lê Thanh Tâm - Bí thư Đảng uỷ, Chủ tịch Hội đồng trường; TS. Vũ Đức Bình – Phó Bí thư Đảng ủy, Hiệu trưởng Nhà trường; PGS.TS Trần Thị Hằng – UV Ban thường vụ Đảng ủy, Phó Hiệu trưởng Nhà trường; TS. Vũ Quốc Hiến - Đảng ủy viên, Phó Hiệu trưởng Nhà trường; ThS. Trương Minh Chính – Đảng ủy viên, Phó Chủ tịch Công đoàn trường, Trưởng phòng Tổ chức Hành chính; ThS. Lê Xuân Đông - Đảng ủy viên, Bí thư đoàn trường; Lãnh đạo các Khoa, Phòng, Trung tâm; các đoàn viên công đoàn trong toàn trường; Các đội bóng chuyền hơi nam, nữ và đông đảo các khán giả cổ động viên.



ThS. Trương Minh Chính – Phó Chủ tịch Công đoàn trường phát biểu khai mạc

Phát biểu khai mạc giải, ThS. Trương Minh Chính – Phó Chủ tịch Công đoàn trường nhấn mạnh: Giải thi đấu thể thao là sân chơi lành mạnh, bổ ích, thiết thực hưởng ứng Cuộc vận động “Toàn dân rèn luyện thân thể theo gương Bác Hồ vĩ đại” và phong trào “Khoẻ để xây dựng và bảo vệ Tổ quốc”, góp phần nâng cao thể chất, trau dồi sức khoẻ, tạo không khí thi đua hứng khởi chào mừng ngày Nhà giáo Việt Nam 20/11. Đồng thời, đây cũng là dịp để tăng cường giao lưu, học hỏi, đoàn kết, gắn bó giữa các đơn vị và cán bộ, giảng viên, người lao động trong toàn trường.

Giải thể thao kéo dài đến hết ngày 19/11/2024 và hứa hẹn mang đến những trận đấu sôi động, kịch tính, hấp dẫn với tinh thần thể thao cao thượng, trung thực và đoàn kết.

Một số hình ảnh giải thể thao bóng chuyền hơi:

')
INSERT [dbo].[ND] ([Mand], [Nd]) VALUES (5, N'<h1>Hội nghị tập huấn c&ocirc;ng t&aacute;c c&ocirc;ng đo&agrave;n năm 2024</h1>

<p>03 th&aacute;ng 12, 2024&nbsp;Ban bi&ecirc;n tập nh&agrave; trường</p>

<p><img alt="" src="https://vui.edu.vn/media/files/%C4%90H%C4%90B%20%C4%90O%C3%80N%20TN%2024-27/T%E1%BA%ADp%20hu%E1%BA%A5n%20c%C3%B4ng%20t%C3%A1c%20c%C3%B4ng%20%C4%91o%C3%A0n%202024/339e0a08dc7c66223f6d.jpg" /></p>

<p><em>S&aacute;ng ng&agrave;y 30/11, c&ocirc;ng đo&agrave;n trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave; tổ chức Hội nghị tập huấn c&ocirc;ng t&aacute;c c&ocirc;ng đo&agrave;n năm 2024.</em></p>

<p>Tham dự v&agrave; Tập huấn cho c&aacute;c c&aacute;n bộ c&ocirc;ng đo&agrave;n trường c&oacute; PGS. TS. Ho&agrave;ng Thanh Xu&acirc;n - Viện trưởng Viện Đ&agrave;o tạo, bồi dưỡng, trường Đại học C&ocirc;ng đo&agrave;n.</p>

<p>Về ph&iacute;a trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave; c&oacute; TS. Nguyễn Thị Ngọc Quỳnh &ndash; Đảng ủy vi&ecirc;n, Chủ tịch C&ocirc;ng đo&agrave;n trường, Trưởng Ph&ograve;ng Quản l&yacute; Đ&agrave;o tạo; ThS. Trương Minh Ch&iacute;nh &ndash; Đảng ủy vi&ecirc;n, Ph&oacute; Chủ tịch C&ocirc;ng đo&agrave;n trường, Trưởng ph&ograve;ng Tổ chức- H&agrave;nh ch&iacute;nh; Ban thường vụ c&ocirc;ng đo&agrave;n, c&aacute;c đồng ch&iacute; trong BCH c&ocirc;ng đo&agrave;n, c&aacute;c tổ trưởng, tổ ph&oacute;, c&aacute;c đồng ch&iacute; trong quy hoạch chức vụ c&aacute;n bộ c&ocirc;ng đo&agrave;n nhiệm kỳ 2023-2028 v&agrave; nhiệm kỳ 2028-2033.</p>

<p><img alt="" src="https://vui.edu.vn/media/files/%C4%90H%C4%90B%20%C4%90O%C3%80N%20TN%2024-27/T%E1%BA%ADp%20hu%E1%BA%A5n%20c%C3%B4ng%20t%C3%A1c%20c%C3%B4ng%20%C4%91o%C3%A0n%202024/67d46220b4540e0a5745.jpg" /></p>

<p>Tại hội nghị, PGS.TS Ho&agrave;ng Thanh Xu&acirc;n - Viện trưởng Viện đ&agrave;o tạo, bồi dưỡng, Trường Đại học C&ocirc;ng đo&agrave;n trực tiếp truyền đạt nội dung Tập huấn về Nghiệp vụ c&ocirc;ng t&aacute;c tổ chức v&agrave; hoạt động c&ocirc;ng đo&agrave;n năm 2024.</p>

<p><img alt="" src="https://vui.edu.vn/media/files/%C4%90H%C4%90B%20%C4%90O%C3%80N%20TN%2024-27/T%E1%BA%ADp%20hu%E1%BA%A5n%20c%C3%B4ng%20t%C3%A1c%20c%C3%B4ng%20%C4%91o%C3%A0n%202024/2da806ddd1a96bf732b8.jpg" /></p>

<p>Th&ocirc;ng qua lớp tập huấn, c&aacute;c c&aacute;n bộ c&ocirc;ng đo&agrave;n trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave; đ&atilde; được trang bị những kiến thức cơ bản về c&ocirc;ng t&aacute;c kiểm tra, gi&aacute;m s&aacute;t v&agrave; x&acirc;y dựng c&ocirc;ng đo&agrave;n vững mạnh trong bối cảnh mới, để vận dụng v&agrave;o thực tế c&ocirc;ng t&aacute;c, ph&ugrave; hợp với đặc th&ugrave; từng đơn vị. Từng bước n&acirc;ng cao chất lượng đội ngũ c&aacute;n bộ c&ocirc;ng đo&agrave;n, g&oacute;p phần x&acirc;y dựng tổ chức c&ocirc;ng đo&agrave;n ng&agrave;y c&agrave;ng vững mạnh theo tinh thần của Nghị quyết số 02- NQ/TW của Bộ Ch&iacute;nh trị./</p>
')
INSERT [dbo].[ND] ([Mand], [Nd]) VALUES (6, N'<h1>Hội nghị vi&ecirc;n chức, người lao động năm 2025</h1>

<p>13 th&aacute;ng 12, 2024&nbsp;Ban bi&ecirc;n tập nh&agrave; trường</p>

<p>Nhằm tổng kết hoạt động năm 2024 v&agrave; đề ra phương hướng, nhiệm vụ cho năm 2025, chiều ng&agrave;y 13/12, trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave; đ&atilde; tổ chức Hội nghị vi&ecirc;n chức, người lao động. Đ&acirc;y l&agrave; dịp để to&agrave;n thể vi&ecirc;n chức, người lao động trong trường c&ugrave;ng nhau nh&igrave;n lại những kết quả đạt được, n&ecirc;u r&otilde; những kh&oacute; khăn, th&aacute;ch thức, đồng thời đưa ra c&aacute;c giải ph&aacute;p để tiếp tục ph&aacute;t triển Nh&agrave; trường trong tương lai.</p>

<p>Tham dự Hội nghị c&oacute; TS. L&ecirc; Thanh T&acirc;m &ndash; B&iacute; thư Đảng ủy, Chủ tịch Hội đồng trường; TS. Vũ Đức B&igrave;nh &ndash;&nbsp;Ph&oacute; B&iacute; thư Đảng uỷ, Hiệu trưởng Nh&agrave; trường; PGS.TS Trần Thị Hằng &ndash;Ủy vi&ecirc;n BTV Đảng ủy Ph&oacute; Hiệu trưởng Nh&agrave; trường; TS.Vũ Quốc Hiến &ndash; Đảng ủy vi&ecirc;n, Ph&oacute; Hiệu trưởng Nh&agrave; trường; đồng ch&iacute; Trương Minh Ch&iacute;nh &ndash; Đảng ủy vi&ecirc;n, Ph&oacute; Chủ tịch C&ocirc;ng đo&agrave;n trường; đồng ch&iacute; L&ecirc; Xu&acirc;n Đ&ocirc;ng &ndash; Đảng ủy vi&ecirc;n, B&iacute; thư Đo&agrave;n thanh ni&ecirc;n; c&ugrave;ng c&aacute;c đồng ch&iacute; Đảng uỷ vi&ecirc;n; th&agrave;nh vi&ecirc;n vi&ecirc;n Hội đồng trường l&agrave; vi&ecirc;n chức, c&aacute;c th&agrave;nh vi&ecirc;n Ban Chấp h&agrave;nh C&ocirc;ng đo&agrave;n trường; Ban Thanh tra nh&acirc;n d&acirc;n; Thường vụ Đo&agrave;n Thanh ni&ecirc;n trường l&agrave; vi&ecirc;n chức; L&atilde;nh đạo c&aacute;c Khoa, Ph&ograve;ng, Trung t&acirc;m; c&ugrave;ng to&agrave;n thể c&aacute;n bộ vi&ecirc;n chức v&agrave; người lao động Nh&agrave; trường.</p>

<p>Hội nghị diễn ra dưới sự điều h&agrave;nh của Đo&agrave;n chủ tịch gồm 02 đồng ch&iacute;: TS. Vũ Đức B&igrave;nh &ndash; Hiệu trưởng Nh&agrave; trường; ThS. Trương Minh Ch&iacute;nh &ndash; Ph&oacute; Chủ tịch C&ocirc;ng đo&agrave;n, Trưởng ph&ograve;ng Tổ chức H&agrave;nh ch&iacute;nh.</p>

<p><img alt="" src="https://vui.edu.vn/media/files/%C4%90%E1%BB%91i%20tho%E1%BA%A1i%20sinh%20vi%C3%AAn%20khoa%20KT%20v%C3%A0%20KTPT%202024/H%E1%BB%99i%20ngh%E1%BB%8B%20vi%C3%AAn%20ch%E1%BB%A9c%202025/f1318aa54614fc4aa505.jpg" /></p>

<p>Tại Hội nghị, c&aacute;c đại biểu đ&atilde; nghe TS. Vũ Đức B&igrave;nh - Hiệu trưởng Nh&agrave; trường b&aacute;o c&aacute;o t&oacute;m tắt kết&nbsp;quả thực hiện nhiệm vụ&nbsp;năm 2024&nbsp;tr&ecirc;n tất cả c&aacute;c mặt c&ocirc;ng t&aacute;c như: c&ocirc;ng t&aacute;c ch&iacute;nh trị tư tưởng; c&ocirc;ng t&aacute;c tổ chức c&aacute;n bộ; c&ocirc;ng t&aacute;c đ&agrave;o tạo; c&ocirc;ng t&aacute;c sinh vi&ecirc;n; c&ocirc;ng t&aacute;c nghi&ecirc;n cứu khoa học; c&ocirc;ng t&aacute;c hợp t&aacute;c quốc tế; c&ocirc;ng t&aacute;c t&agrave;i ch&iacute;nh; c&ocirc;ng t&aacute;c cơ sở vật chất; c&ocirc;ng t&aacute;c tuyển sinh v&agrave; truyền th&ocirc;ng&hellip;</p>

<p>Tr&ecirc;n cơ sở đ&oacute;, Hội nghị đ&atilde; đề ra&nbsp;Phương hướng, nhiệm vụ năm 2025&nbsp;với c&aacute;c nhiệm vụ trọng t&acirc;m như:&nbsp;1) Tiếp tục đổi mới, cập nhật c&aacute;c chương tr&igrave;nh đ&agrave;o tạo đ&aacute;p ứng theo chuẩn quốc gia, ph&ugrave; hợp với xu thế ph&aacute;t triển của x&atilde; hội; mở mới c&aacute;c ng&agrave;nh đ&agrave;o tạo theo nhu cầu x&atilde; hội; 2)&nbsp;Đẩy mạnh chuyển đổi số; 3)&nbsp;Vận h&agrave;nh, khai th&aacute;c c&oacute; hiệu quả cơ sở vật chất, trang thiết bị; 4)&nbsp;Tiếp tục tri&ecirc;̉n khai thực hiện: nhi&ecirc;̣m vụ khoa học v&agrave; c&ocirc;ng nghệ, hợp t&aacute;c quốc tế; &hellip;</p>

<p><img alt="" src="https://vui.edu.vn/media/files/%C4%90%E1%BB%91i%20tho%E1%BA%A1i%20sinh%20vi%C3%AAn%20khoa%20KT%20v%C3%A0%20KTPT%202024/H%E1%BB%99i%20ngh%E1%BB%8B%20vi%C3%AAn%20ch%E1%BB%A9c%202025/e20f717bbbca019458db.jpg" /></p>

<p>Cũng tại Hội nghị, c&aacute;c đại biểu đ&atilde; được nghe TS.Vũ Quốc Hiến &ndash; Thư k&yacute; Hội đồng trường đ&atilde; b&aacute;o c&aacute;o kết quả gi&aacute;m s&aacute;t v&agrave; kết quả hoạt động của Hội đồng trường năm 2024.</p>

<p><img alt="" src="https://vui.edu.vn/media/files/%C4%90%E1%BB%91i%20tho%E1%BA%A1i%20sinh%20vi%C3%AAn%20khoa%20KT%20v%C3%A0%20KTPT%202024/H%E1%BB%99i%20ngh%E1%BB%8B%20vi%C3%AAn%20ch%E1%BB%A9c%202025/08368b3c408dfad3a39c.jpg" /></p>

<p>TS. Đặng Ngọc Định &ndash; Trưởng Ban Thanh tra nh&acirc;n d&acirc;n th&ocirc;ng qua B&aacute;o c&aacute;o kết quả thực hiện nhiệm vụ của ban thanh tra nh&acirc;n d&acirc;n nhiệm trong năm 2024.&nbsp;Ban Thanh tra Nh&acirc;n d&acirc;n c&oacute; chức năng, nhiệm vụ thực hiện hiệu quả c&ocirc;ng t&aacute;c gi&aacute;m s&aacute;t việc thực hiện c&aacute;c ch&iacute;nh s&aacute;ch, ph&aacute;p luật, việc giải quyết khiếu nại, tố c&aacute;o, việc thực hiện quy chế d&acirc;n chủ trong nh&agrave; trường.</p>

<p>Th.S Trương Minh Ch&iacute;nh &ndash; Trưởng ph&ograve;ng tổ chức &ndash; h&agrave;nh ch&iacute;nh tr&igrave;nh b&agrave;y b&aacute;o c&aacute;o tổng hợp &yacute; kiến đ&oacute;ng g&oacute;p từ hội nghị vi&ecirc;n chức c&aacute;c đơn vị về&nbsp;b&aacute;o c&aacute;o tổng kết năm 2024 v&agrave; phương hướng nhiệm vụ cơ bản năm 2025;</p>

<p>Hội nghị thảo luận về mục ti&ecirc;u hoạt động v&agrave; giải ph&aacute;p thực hiện nhiệm vụ năm 2025, giải đ&aacute;p thắc mắc, kiến nghị của vi&ecirc;n chức v&agrave; người lao động.&nbsp;Sau khi nghe c&aacute;c b&aacute;o c&aacute;o, vi&ecirc;n chức v&agrave; người lao động to&agrave;n trường tham dự Hội nghị b&agrave;y tỏ sự thống nhất v&agrave; nhất tr&iacute; cao với b&aacute;o c&aacute;o tổng kết v&agrave; phương hướng nhiệm vụ năm 2025.</p>

<p>TS. Vũ Đức B&igrave;nh &ndash; Hiệu trưởng Nh&agrave; trường đ&atilde; kết luận v&agrave; tổng hợp &yacute; kiến đ&oacute;ng g&oacute;p của c&aacute;c đơn vị về dự thảo nội dung của Quy chế chi ti&ecirc;u nội bộ năm 2025.</p>

<p>Hội nghị c&aacute;n bộ, vi&ecirc;n chức năm 2025 đ&atilde; tổ chức lấy phiếu t&iacute;n nhiệm đối với c&aacute;c đồng ch&iacute; Trưởng, ph&oacute; c&aacute;c đơn vị thuộc Trường.</p>

<p>Trong khu&ocirc;n khổ chương tr&igrave;nh Hội nghị, c&aacute;c đại biểu đ&atilde; tiến h&agrave;nh bỏ phiếu bầu Ban Thanh tra Nh&acirc;n d&acirc;n nhiệm kỳ mới 2024 - 2025.</p>

<p>Sau gần 4 giờ l&agrave;m việc khẩn trương, nghi&ecirc;m t&uacute;c, Hội nghị đ&atilde; kết th&uacute;c trong kh&ocirc;ng kh&iacute; phấn khởi với tinh thần quyết t&acirc;m cao từ to&agrave;n thể đại biểu tham dự, t&aacute;n th&agrave;nh v&agrave; thống nhất th&ocirc;ng qua c&aacute;c nội dung dự thảo Nghị quyết Hội nghị Đại biểu vi&ecirc;n chức, người lao động năm 2025.</p>

<p><img alt="" src="https://vui.edu.vn/media/files/%C4%90%E1%BB%91i%20tho%E1%BA%A1i%20sinh%20vi%C3%AAn%20khoa%20KT%20v%C3%A0%20KTPT%202024/H%E1%BB%99i%20ngh%E1%BB%8B%20vi%C3%AAn%20ch%E1%BB%A9c%202025/9d421667ddd667883ec7.jpg" /></p>

<p>Đồng ch&iacute; Trương Minh Ch&iacute;nh &ndash; Ph&oacute; Chủ tịch C&ocirc;ng đo&agrave;n ph&aacute;t động phong tr&agrave;o thi đua trong to&agrave;n trường.</p>

<p>Ph&aacute;t biểu kết luận Hội nghị,&nbsp;TS.Vũ Đức B&igrave;nh - Ph&oacute;&nbsp;B&iacute; thư Đảng uỷ, Hiệu trưởng nh&agrave; trường đ&atilde; nhấn mạnh một số c&ocirc;ng t&aacute;c cần triển khai trong thời gian tới, quyết t&acirc;m thực hiện thắng lợi c&aacute;c nhiệm vụ năm 2025.</p>

<p><img alt="" src="https://vui.edu.vn/media/files/%C4%90%E1%BB%91i%20tho%E1%BA%A1i%20sinh%20vi%C3%AAn%20khoa%20KT%20v%C3%A0%20KTPT%202024/H%E1%BB%99i%20ngh%E1%BB%8B%20vi%C3%AAn%20ch%E1%BB%A9c%202025/1d1390725cc3e69dbfd2.jpg" /></p>

<p>Sau một buổi l&agrave;m việc nghi&ecirc;m t&uacute;c, hiệu quả với tinh thần d&acirc;n chủ v&agrave; thẳng thắn, Hội nghị c&aacute;n bộ, vi&ecirc;n chức năm 2025 đ&atilde; diễn ra th&agrave;nh c&ocirc;ng tốt đẹp với sự nhất tr&iacute; cao của to&agrave;n thể đại biểu tham dự. Hội nghị k&ecirc;u gọi to&agrave;n thể vi&ecirc;n chức, người lao động, người học trong Trường tiếp tục ph&aacute;t huy truyền thống đo&agrave;n kết, năng động, s&aacute;ng tạo, thi đua dạy tốt, học tốt; nghi&ecirc;m t&uacute;c thực hiện nhiệm vụ được giao.</p>
<script src="chrome-extension://lopnbnfpjmgpbppclhclehhgafnifija/aiscripts/script-main.js"></script>
')
INSERT [dbo].[ND] ([Mand], [Nd]) VALUES (7, N'<h1>L&atilde;nh đạo Nh&agrave; trường gặp v&agrave; l&agrave;m việc với C&ocirc;ng ty Cổ phần B- Hope, Nhật Bản</h1>

<p>15 th&aacute;ng 04, 2024&nbsp;Ban bi&ecirc;n tập nh&agrave; trường</p>

<p>Ng&agrave;y 15/04/2024, Trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave; c&oacute; buổi tiếp đ&oacute;n v&agrave; l&agrave;m việc với C&ocirc;ng ty Cổ phần B-Hope, Nhật Bản để trao đổi, hợp t&aacute;c đ&agrave;o tạo v&agrave; việc l&agrave;m với Nh&agrave; trường.</p>

<p><img alt="" src="https://vui.edu.vn/media/images/IMG_1648.JPG" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tham dự buổi l&agrave;m việc về ph&iacute;a C&ocirc;ng ty Cổ phần B-Hope c&oacute; &ocirc;ng Hirokazu Yonehara &ndash; Ph&oacute; Gi&aacute;m đốc C&ocirc;ng ty;</p>

<p>&Ocirc;ng B&ugrave;i Vĩnh Qu&acirc;n &ndash; Gi&aacute;m đốc C&ocirc;ng ty Cổ phần TMDV Shourai, đối t&aacute;c của C&ocirc;ng ty Cổ phần B- Hope tại Việt Nam; B&agrave; Nguyễn Thị Anh Đ&agrave;o - Ph&oacute; Gi&aacute;m đốc C&ocirc;ng ty Cổ phần TMDV Shourai.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Về ph&iacute;a trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave;, c&oacute; PGS.TS. Trần Thị Hằng - Ph&oacute; Hiệu trưởng Nh&agrave; trường; L&atilde;nh đạo Ph&ograve;ng Quản l&yacute; Đ&agrave;o tạo; L&atilde;nh đạo Ph&ograve;ng C&ocirc;ng t&aacute;c sinh vi&ecirc;n v&agrave; Tuyển sinh; L&atilde;nh đạo khoa Điện, khoa Cơ kh&iacute;, &Ocirc; t&ocirc; v&agrave; khoa Kinh tế.</p>

<p><img alt="" src="https://vui.edu.vn/media/images/IMG_1605.JPG" /></p>

<p>Mở đầu buổi l&agrave;m việc, PGS.TS. Trần Thị Hằng &ndash; Ph&oacute; Hiệu trưởng trường Đại học C&ocirc;ng nghiệp Tr&igrave; đ&atilde; giới thiệu với đo&agrave;n l&agrave;m việc của C&ocirc;ng ty Cổ phần B- Hope về quy m&ocirc; v&agrave; c&aacute;c ng&agrave;nh đ&agrave;o tạo, thế mạnh đ&agrave;o tạo của Nh&agrave; trường.&nbsp;Nh&agrave; trường mong muốn trong thời gian tới hai b&ecirc;n sẽ trao đổi v&agrave; hợp t&aacute;c&nbsp;để c&ugrave;ng ph&aacute;t triển.</p>

<p><img alt="" src="https://vui.edu.vn/media/images/IMG_1618.JPG" /></p>

<p>&Ocirc;ng Hirokazu Yonehara &ndash; Ph&oacute; Gi&aacute;m đốc C&ocirc;ng ty Cổ phần B-Hope giới thiệu kh&aacute;i qu&aacute;t về c&ocirc;ng ty, lĩnh vực hoạt động của c&ocirc;ng ty v&agrave; mong muốn hợp t&aacute;c với Nh&agrave; trường trong việc trao đổi nguồn nh&acirc;n lực trong thời gian tới.</p>

<p><img alt="" src="https://vui.edu.vn/media/images/IMG_1643.JPG" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Buổi l&agrave;m việc giữa Trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave; v&agrave;&nbsp;C&ocirc;ng ty Cổ phần B- Hope&nbsp;đ&atilde; kết th&uacute;c trong kh&ocirc;ng kh&iacute; vui vẻ. Hy vọng trong&nbsp;thời gian tới quan hệ giữa hai trường ng&agrave;y c&agrave;ng ph&aacute;t triển v&agrave; mở ra những cơ hội hợp t&aacute;c mới.</p>
<script src="chrome-extension://lopnbnfpjmgpbppclhclehhgafnifija/aiscripts/script-main.js"></script>
')
INSERT [dbo].[ND] ([Mand], [Nd]) VALUES (8, N'<h1>Đo&agrave;n Trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave; phối hợp tổ chức ra qu&acirc;n chiến dịch t&igrave;nh nguyện h&egrave; v&agrave; triển khai chiến dịch kỳ nghỉ hồng năm 2023</h1>

<p>20 th&aacute;ng 06, 2023&nbsp;Ban bi&ecirc;n tập nh&agrave; trường</p>

<p>Ng&agrave;y 18/6/2023, tại x&atilde; Cao X&aacute;, huyện L&acirc;m Thao, Đo&agrave;n Khối c&aacute;c cơ quan tỉnh phối hợp với Huyện đo&agrave;n L&acirc;m Thao v&agrave; Đo&agrave;n trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave; tổ chức ra qu&acirc;n &ldquo;Chiến dịch t&igrave;nh nguyện h&egrave; v&agrave; triển khai chiến dịch kỳ nghỉ hồng năm 2023&rdquo;, trong khối c&aacute;n bộ, c&ocirc;ng chức năm 2023 - Trao tặng m&ocirc; h&igrave;nh cấp tỉnh &ldquo;L&agrave;ng qu&ecirc; đ&aacute;ng sống&rdquo;.</p>

<p><img alt="" src="https://vui.edu.vn/media/images/1072aad2f92e2870713f.jpg" />Đến dự v&agrave; chỉ đạo chương tr&igrave;nh ra qu&acirc;n c&oacute; đồng ch&iacute; Nguyễn Văn Kỳ - Ph&oacute; B&iacute; thư Tỉnh đo&agrave;n; đồng ch&iacute; Lưu Ngọc Tr&acirc;m - Ph&oacute; B&iacute; thư Đảng uỷ Khối c&aacute;c cơ quan tỉnh; đồng ch&iacute; Nguyễn Lan Phương - Ủy vi&ecirc;n BTV Đảng ủy khối, Trưởng Ban Tuy&ecirc;n gi&aacute;o Đảng ủy khối; đồng ch&iacute; Nguyễn T&ugrave;ng Linh - Ủy vi&ecirc;n BTV Tỉnh đo&agrave;n, Trưởng Ban Tuy&ecirc;n gi&aacute;o Tỉnh đo&agrave;n; c&aacute;c đồng ch&iacute; trong Ban Thường vụ Huyện uỷ L&acirc;m Thao: Đồng ch&iacute; Nguyễn Thị Dưỡng - Ph&oacute; Chủ tịch HĐND huyện, đồng ch&iacute; Ng&ocirc; Đức S&aacute;u - Ph&oacute; Chủ tịch UBND huyện, đồng ch&iacute; Khổng Mạnh H&ugrave;ng - Chủ tịch Ủy ban MTTQ huyện, đồng ch&iacute; Đ&agrave;o Thị B&iacute;ch Ngọc - Trưởng Ban D&acirc;n vận Huyện ủy. Đại biểu x&atilde; Cao X&aacute; c&oacute; đồng ch&iacute; Nguyễn Tiến Tuy&ecirc;n - B&iacute; thư Đảng ủy, đồng ch&iacute; Nguyễn Thị Lưu - PBT TT ĐU, Chủ tịch HĐND x&atilde;, l&atilde;nh đạo UBND x&atilde;, c&aacute;c đồng ch&iacute; trong Ban Thường vụ Đảng ủy, Ủy ban MTTQ, Trưởng c&aacute;c tổ chức ch&iacute;nh trị - x&atilde; hội x&atilde; Cao X&aacute;.</p>

<p><img alt="" src="https://vui.edu.vn/media/images/371bd0af8353520d0b42.jpg" />Về ph&iacute;a Đo&agrave;n trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave; c&oacute; đồng ch&iacute; L&ecirc; Xu&acirc;n Đ&ocirc;ng- B&iacute; thư Đo&agrave;n trường; đồng ch&iacute; Nguyễn Văn Thịnh- Chủ tịch Hội sinh vi&ecirc;n v&agrave; uỷ vi&ecirc;n BCH Đo&agrave;n trường tham gia chương tr&igrave;nh.</p>

<p><img alt="" src="https://vui.edu.vn/media/images/f2a8bf06ecfa3da464eb.jpg" /></p>

<p>Lễ ra qu&acirc;n c&ograve;n được đ&oacute;n tiếp sự tham gia, động vi&ecirc;n của l&atilde;nh đạo c&aacute;c cơ quan: LĐ-TB&amp;XH, Gi&aacute;o dục v&agrave; Đ&agrave;o tạo, Văn h&oacute;a - Th&ocirc;ng tin; Chi đo&agrave;n Đ&agrave;i Ph&aacute;t thanh - Truyền h&igrave;nh Ph&uacute; Thọ; đại diện c&aacute;c doanh nghiệp, nh&agrave; t&agrave;i trợ: C&ocirc;ng ty CP Tenno Group, C&ocirc;ng ty TNHH Minh T&acirc;m&hellip;Chương tr&igrave;nh ra qu&acirc;n được tổ chức với nhiều hoạt động thiết thực như: D&acirc;ng hương, kh&aacute;nh th&agrave;nh c&ocirc;ng tr&igrave;nh &ldquo;Tuổi trẻ Đất Tổ chuyển đổi số trong quảng b&aacute; di t&iacute;ch lịch sử, văn ho&aacute;, địa chỉ đỏ&rdquo; tại Đ&igrave;nh l&agrave;ng Cao X&aacute;; trao tặng c&ocirc;ng tr&igrave;nh đường điện &ldquo;Thắp s&aacute;ng đường qu&ecirc;&rdquo;; tổ chức trồng c&acirc;y xanh, hưởng ứng chương tr&igrave;nh &ldquo;V&igrave; một Việt Nam xanh&rdquo;; kh&aacute;nh th&agrave;nh, thăm quan điểm check-in thanh ni&ecirc;n - m&ocirc; h&igrave;nh bức tranh bức hoạ &ldquo;L&agrave;ng qu&ecirc; đ&aacute;ng sống&rdquo;; trao tặng điểm sinh hoạt, vui chơi, thể thao cho thanh thiếu nhi; ra qu&acirc;n t&igrave;nh nguyện hỗ trợ người d&acirc;n trong c&ocirc;ng t&aacute;c chuyển đổi số cộng đồng, sử dụng t&agrave;i khoản định danh điện tử, c&agrave;i đặt ứng dụng VNeID; hưởng ứng chạy bộ g&acirc;y quỹ tham gia x&acirc;y dựng Nh&agrave; văn ho&aacute; cộng đồng; thăm quan m&ocirc; h&igrave;nh ph&ograve;ng chống tai nạn đuối nước.</p>

<p><img alt="" src="https://vui.edu.vn/media/images/cc32abb6f84a2914705b.jpg" /></p>

<p>Đặc biệt, Thường trực Tỉnh đo&agrave;n - đại diện cho 03 đơn vị Đo&agrave;n cấp huyện đ&atilde; trao tặng cho Nh&acirc;n d&acirc;n khu 9 - x&atilde; Cao X&aacute; biểu trưng m&ocirc; h&igrave;nh &ldquo;L&agrave;ng qu&ecirc; đ&aacute;ng sống&rdquo; - m&ocirc; h&igrave;nh cấp tỉnh v&agrave; đồng thời cũng l&agrave; m&ocirc; h&igrave;nh đầu ti&ecirc;n trong to&agrave;n tỉnh, trị gi&aacute; 120 triệu đồng.</p>

<p><img alt="" src="https://vui.edu.vn/media/images/0f01778f2473f52dac62.jpg" /></p>

<p>Ph&aacute;t biểu ra qu&acirc;n, đồng ch&iacute; Cao Xu&acirc;n Huy - HUV, B&iacute; thư Huyện đo&agrave;n đề nghị c&aacute;c cấp bộ Đo&agrave;n, lực lượng ĐVTN cần ch&uacute; trọng đến t&iacute;nh thực tiễn của c&aacute;c hoạt động, tập trung v&agrave;o 03 nh&oacute;m nhiệm vụ ch&iacute;nh:</p>

<p>1. Tăng cường c&aacute;c hoạt động tham gia x&acirc;y dựng n&ocirc;ng th&ocirc;n mới n&acirc;ng cao, kiểu mẫu, đ&ocirc; thị văn minh thiết thực, &yacute; nghĩa, ph&ugrave; hợp với nguyện vọng của Nh&acirc;n d&acirc;n</p>

<p>2. Tiếp tục triển khai c&oacute; hiệu quả Đề &aacute;n 06, phối hợp chặt chẽ với lực lượng C&ocirc;ng an hỗ trợ, hướng dẫn Nh&acirc;n d&acirc;n k&iacute;ch hoạt VNeID mức 1, 2</p>

<p>3. Tăng cường phối hợp với c&aacute;c ng&agrave;nh, cơ quan, đơn vị thực hiện chức năng chăm s&oacute;c, gi&aacute;o dục, bảo vệ thanh thiếu ni&ecirc;n, nhi đồng. Tạo s&acirc;n chơi an to&agrave;n, gắn với tăng cường c&aacute;c biện ph&aacute;p ph&ograve;ng chống tai nạn thương t&iacute;ch, đuối nước, mất ATGT ở trẻ em. Để m&ugrave;a h&egrave; thực sự l&agrave; khoảng thời gian &yacute; nghĩa của c&aacute;c em.</p>
<script src="chrome-extension://lopnbnfpjmgpbppclhclehhgafnifija/aiscripts/script-main.js"></script>
')
INSERT [dbo].[ND] ([Mand], [Nd]) VALUES (9, N'<p><em><img alt="" src="https://vui.edu.vn/media/files/Nghi%C3%AAn%20c%E1%BB%A9u%20khoa%20h%E1%BB%8Dc%20%C4%91%E1%BB%81%20t%C3%A0i%20c%E1%BA%A5p%20tr%C6%B0%E1%BB%9Dng%202024/2fe0be13d0636d3d3472.jpg" /></em></p>

<p>Đề t&agrave;i đ&atilde; tập trung t&ocirc;̉ng quan c&aacute;c vấn đề nghi&ecirc;n cứu, phương ph&aacute;p nghi&ecirc;n cứu, đ&aacute;nh gi&aacute; thực trạng, nguy&ecirc;n nh&acirc;n ảnh, kiến nghị v&agrave; giải ph&aacute;p, ảnh hưởng tới hứng th&uacute; trong giờ học gi&aacute;o dục thể chất của sinh vi&ecirc;n trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave;.</p>

<p>Kết quả nghi&ecirc;n cứu của đề t&agrave;i được Hội đồng nghiệm thu đ&aacute;nh gi&aacute; c&oacute; &yacute; nghĩa đổi mới phương ph&aacute;p giảng dạy để tạo hứng th&uacute; học tập cho sinh vi&ecirc;n học gi&aacute;o dục thể chất tại khoa Khoa học Cơ bản, trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave;.&nbsp;</p>

<p><img alt="" src="https://vui.edu.vn/media/files/Nghi%C3%AAn%20c%E1%BB%A9u%20khoa%20h%E1%BB%8Dc%20%C4%91%E1%BB%81%20t%C3%A0i%20c%E1%BA%A5p%20tr%C6%B0%E1%BB%9Dng%202024/ee4407446a34d76a8e25.jpg" /></p>

<p>Chủ tịch Hội đồng đề nghị nh&oacute;m nghi&ecirc;n cứu tiếp thu &yacute; kiến đ&oacute;ng g&oacute;p của c&aacute;c th&agrave;nh vi&ecirc;n trong Hội đồng để tiếp tục ho&agrave;n thiện v&agrave; sớm ứng dụng v&agrave;o thực tiễn trong thời gian tới.</p>

<p>Hội đồng nghiệm thu đ&atilde; nhất tr&iacute; th&ocirc;ng qua v&agrave; đ&aacute;nh gi&aacute; đề t&agrave;i xếp loại Đạt.</p>
<script src="chrome-extension://lopnbnfpjmgpbppclhclehhgafnifija/aiscripts/script-main.js"></script>
')
SET IDENTITY_INSERT [dbo].[ND] OFF
GO
SET IDENTITY_INSERT [dbo].[Tacgia] ON 

INSERT [dbo].[Tacgia] ([Matg], [Tentg]) VALUES (1, N'Bá Kim')
INSERT [dbo].[Tacgia] ([Matg], [Tentg]) VALUES (2, N'Nguyễn Văn Thịnh')
INSERT [dbo].[Tacgia] ([Matg], [Tentg]) VALUES (3, N'Ban biên tập nhà trường')
INSERT [dbo].[Tacgia] ([Matg], [Tentg]) VALUES (4, N'Hội Sinh Viên')
SET IDENTITY_INSERT [dbo].[Tacgia] OFF
GO
SET IDENTITY_INSERT [dbo].[TAG] ON 

INSERT [dbo].[TAG] ([MaTag], [Tag]) VALUES (1, N'Admin')
INSERT [dbo].[TAG] ([MaTag], [Tag]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[TAG] OFF
GO
ALTER TABLE [dbo].[AccUser]  WITH CHECK ADD  CONSTRAINT [FK_AccUser_CV] FOREIGN KEY([Macv])
REFERENCES [dbo].[CV] ([Macv])
GO
ALTER TABLE [dbo].[AccUser] CHECK CONSTRAINT [FK_AccUser_CV]
GO
ALTER TABLE [dbo].[AccUser]  WITH CHECK ADD  CONSTRAINT [FK_AccUser_TAG] FOREIGN KEY([MaTag])
REFERENCES [dbo].[TAG] ([MaTag])
GO
ALTER TABLE [dbo].[AccUser] CHECK CONSTRAINT [FK_AccUser_TAG]
GO
ALTER TABLE [dbo].[BaiDang]  WITH CHECK ADD  CONSTRAINT [FK_BaiDang_chudeviet] FOREIGN KEY([Macd])
REFERENCES [dbo].[chudeviet] ([Macd])
GO
ALTER TABLE [dbo].[BaiDang] CHECK CONSTRAINT [FK_BaiDang_chudeviet]
GO
ALTER TABLE [dbo].[BaiDang]  WITH CHECK ADD  CONSTRAINT [FK_BaiDang_ND] FOREIGN KEY([Mand])
REFERENCES [dbo].[ND] ([Mand])
GO
ALTER TABLE [dbo].[BaiDang] CHECK CONSTRAINT [FK_BaiDang_ND]
GO
ALTER TABLE [dbo].[BaiDang]  WITH CHECK ADD  CONSTRAINT [FK_BaiDang_Tacgia] FOREIGN KEY([Matg])
REFERENCES [dbo].[Tacgia] ([Matg])
GO
ALTER TABLE [dbo].[BaiDang] CHECK CONSTRAINT [FK_BaiDang_Tacgia]
GO
ALTER TABLE [dbo].[CMT]  WITH CHECK ADD  CONSTRAINT [FK_CMT_AccUser] FOREIGN KEY([ID])
REFERENCES [dbo].[AccUser] ([ID])
GO
ALTER TABLE [dbo].[CMT] CHECK CONSTRAINT [FK_CMT_AccUser]
GO
ALTER TABLE [dbo].[CMT]  WITH CHECK ADD  CONSTRAINT [FK_CMT_BaiDang] FOREIGN KEY([Mabai])
REFERENCES [dbo].[BaiDang] ([Mabai])
GO
ALTER TABLE [dbo].[CMT] CHECK CONSTRAINT [FK_CMT_BaiDang]
GO
