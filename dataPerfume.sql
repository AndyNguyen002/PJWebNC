USE [PerfumeShop]
GO
/****** Object:  Table [dbo].[DacDiem]    Script Date: 28/02/2023 10:54:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DacDiem](
	[IDDacDiem] [int] IDENTITY(1,1) NOT NULL,
	[IDSanPham] [int] NULL,
	[PhatHanh] [int] NULL,
	[DoTuoi] [int] NULL,
	[DoLuuMui] [int] NULL,
 CONSTRAINT [PK_DacDiem] PRIMARY KEY CLUSTERED 
(
	[IDDacDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 28/02/2023 10:54:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[IDGioHang] [int] NOT NULL,
	[UserID] [int] NULL,
	[IDSanPham] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[IDGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioiTinh]    Script Date: 28/02/2023 10:54:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiTinh](
	[MaGioiTinh] [int] NOT NULL,
	[GioiTinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_GioiTinh] PRIMARY KEY CLUSTERED 
(
	[MaGioiTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Huong]    Script Date: 28/02/2023 10:54:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Huong](
	[IDHuong] [int] IDENTITY(1,1) NOT NULL,
	[IDSanPham] [int] NULL,
	[ToneHuong] [nvarchar](50) NULL,
	[HuongDau] [nvarchar](50) NULL,
	[HuongGiua] [nvarchar](50) NULL,
	[HuongCuoi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Huong] PRIMARY KEY CLUSTERED 
(
	[IDHuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 28/02/2023 10:54:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[UserID] [int] NOT NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[VaiTro] [int] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 28/02/2023 10:54:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[IDSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [varchar](70) NULL,
	[MaThuongHieu] [int] NULL,
	[GiaBan] [int] NULL,
	[GioiTinh] [int] NULL,
	[Season] [int] NULL,
	[Anh] [varchar](500) NULL,
	[Hot] [int] NULL,
	[Huong] [int] NULL,
	[DacDiem] [int] NULL,
	[KhuyenDung] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Season]    Script Date: 28/02/2023 10:54:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[MaSeason] [int] NOT NULL,
	[Season] [nvarchar](50) NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[MaSeason] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 28/02/2023 10:54:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[MaThuongHieu] [int] IDENTITY(1,1) NOT NULL,
	[TenThuongHieu] [varchar](50) NULL,
	[Hot] [int] NULL,
	[LogoBrand] [varchar](500) NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[MaThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 28/02/2023 10:54:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaiTro](
	[IDVaiTro] [int] NOT NULL,
	[TenVaiTro] [varchar](50) NULL,
 CONSTRAINT [PK_VaiTro] PRIMARY KEY CLUSTERED 
(
	[IDVaiTro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DacDiem] ON 

INSERT [dbo].[DacDiem] ([IDDacDiem], [IDSanPham], [PhatHanh], [DoTuoi], [DoLuuMui]) VALUES (1, 3, 2020, 20, 9)
SET IDENTITY_INSERT [dbo].[DacDiem] OFF
GO
INSERT [dbo].[GioiTinh] ([MaGioiTinh], [GioiTinh]) VALUES (1, N'Nam')
INSERT [dbo].[GioiTinh] ([MaGioiTinh], [GioiTinh]) VALUES (2, N'Nữ')
INSERT [dbo].[GioiTinh] ([MaGioiTinh], [GioiTinh]) VALUES (3, N'Unisex')
GO
SET IDENTITY_INSERT [dbo].[Huong] ON 

INSERT [dbo].[Huong] ([IDHuong], [IDSanPham], [ToneHuong], [HuongDau], [HuongGiua], [HuongCuoi]) VALUES (1, 3, N'Hoa hồng, hoa tuilip', N'Hoa lan', N'Hoa nhài', N'Hoa bòi')
SET IDENTITY_INSERT [dbo].[Huong] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([IDSanPham], [TenSP], [MaThuongHieu], [GiaBan], [GioiTinh], [Season], [Anh], [Hot], [Huong], [DacDiem], [KhuyenDung]) VALUES (1, N'Vetiver Santal', 1, 5100000, 3, 2, N'https://xxivstore.com/wp-content/uploads/2022/09/Marie-Jeanne-Vetiver-Santal-300x300.png', 1, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([IDSanPham], [TenSP], [MaThuongHieu], [GiaBan], [GioiTinh], [Season], [Anh], [Hot], [Huong], [DacDiem], [KhuyenDung]) VALUES (2, N'Aventus', 2, 6000000, 3, 3, N'https://xxivstore.com/wp-content/uploads/2020/06/Nuoc-hoa-Creed-Aventus-300x300.png', 1, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([IDSanPham], [TenSP], [MaThuongHieu], [GiaBan], [GioiTinh], [Season], [Anh], [Hot], [Huong], [DacDiem], [KhuyenDung]) VALUES (3, N'Cape Heartache', 3, 3200000, 3, 4, N'https://xxivstore.com/wp-content/uploads/2022/08/Imaginary-Authors-Cape-Heartache-300x300.jpg', 1, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([IDSanPham], [TenSP], [MaThuongHieu], [GiaBan], [GioiTinh], [Season], [Anh], [Hot], [Huong], [DacDiem], [KhuyenDung]) VALUES (4, N'Orto Parisi Megamare', 4, 5300000, 2, 1, N'https://xxivstore.com/wp-content/uploads/2022/05/Orto-Parisi-Megamare-1-300x300.png', 1, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([IDSanPham], [TenSP], [MaThuongHieu], [GiaBan], [GioiTinh], [Season], [Anh], [Hot], [Huong], [DacDiem], [KhuyenDung]) VALUES (5, N'Y EDP', 5, 2550000, 1, 2, N'https://xxivstore.com/wp-content/uploads/2020/06/ysl-300x300.png', 1, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([IDSanPham], [TenSP], [MaThuongHieu], [GiaBan], [GioiTinh], [Season], [Anh], [Hot], [Huong], [DacDiem], [KhuyenDung]) VALUES (6, N'Angel share', 3, 48000000, 2, 4, N'https://xxivstore.com/wp-content/uploads/2022/06/Kilian-Angels-Share-300x300.png', 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
INSERT [dbo].[Season] ([MaSeason], [Season]) VALUES (1, N'Đông')
INSERT [dbo].[Season] ([MaSeason], [Season]) VALUES (2, N'Hạ')
INSERT [dbo].[Season] ([MaSeason], [Season]) VALUES (3, N'Thu')
INSERT [dbo].[Season] ([MaSeason], [Season]) VALUES (4, N'Xuân')
GO
SET IDENTITY_INSERT [dbo].[ThuongHieu] ON 

INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [Hot], [LogoBrand]) VALUES (1, N'Nasomatto', 1, N'https://xxivstore.com/wp-content/uploads/2021/07/Nasomatto.png')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [Hot], [LogoBrand]) VALUES (2, N'Zoologist', 1, N'https://xxivstore.com/wp-content/uploads/2022/08/Hang-nuoc-hoa-Zoologist.png')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [Hot], [LogoBrand]) VALUES (3, N'YvesSaintLaurent', 1, N'https://xxivstore.com/wp-content/uploads/2021/03/nuoc-hoa-ysl.png')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [Hot], [LogoBrand]) VALUES (4, N'By Kilian', 1, N'https://xxivstore.com/wp-content/uploads/2021/03/nuoc-hoa-by-kilian.png')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [Hot], [LogoBrand]) VALUES (5, N'Le Labo', 1, N'https://xxivstore.com/wp-content/uploads/2021/03/nuoc-hoa-le-labo.png')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [Hot], [LogoBrand]) VALUES (6, N'Imaginary Authors', 1, N'https://xxivstore.com/wp-content/uploads/2022/07/Hang-nuoc-hoa-Imaginary-Authors.png')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [Hot], [LogoBrand]) VALUES (7, N'Creed', 1, N'https://xxivstore.com/wp-content/uploads/2022/07/159133030_1044233219399119_4321418372070751780_n.png')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [Hot], [LogoBrand]) VALUES (8, N'Tom Ford', 1, N'https://xxivstore.com/wp-content/uploads/2021/03/nuoc-hoa-tomford.png')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [Hot], [LogoBrand]) VALUES (9, N'L''Orchestre Parfum', 1, N'https://xxivstore.com/wp-content/uploads/2022/06/LOrchestre-Parfums.png')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [Hot], [LogoBrand]) VALUES (10, N'Dior', 1, N'https://xxivstore.com/wp-content/uploads/2021/03/nuoc-hoa-dior.png')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [Hot], [LogoBrand]) VALUES (11, N'Orto Parisi', 1, N'https://xxivstore.com/wp-content/uploads/2022/04/Orto-Parisi.png')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [Hot], [LogoBrand]) VALUES (12, N'Maison Matine', 1, N'https://xxivstore.com/wp-content/uploads/2022/06/Hang-nuoc-hoa-Maison-Matine.png')
SET IDENTITY_INSERT [dbo].[ThuongHieu] OFF
GO
INSERT [dbo].[VaiTro] ([IDVaiTro], [TenVaiTro]) VALUES (1, N'Admin')
INSERT [dbo].[VaiTro] ([IDVaiTro], [TenVaiTro]) VALUES (2, N'NguoiDung')
GO
ALTER TABLE [dbo].[DacDiem]  WITH CHECK ADD  CONSTRAINT [FK_DacDiem_SanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[DacDiem] CHECK CONSTRAINT [FK_DacDiem_SanPham]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_NguoiDung] FOREIGN KEY([UserID])
REFERENCES [dbo].[NguoiDung] ([UserID])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_NguoiDung]
GO
ALTER TABLE [dbo].[Huong]  WITH CHECK ADD  CONSTRAINT [FK_Huong_SanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[Huong] CHECK CONSTRAINT [FK_Huong_SanPham]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_VaiTro] FOREIGN KEY([VaiTro])
REFERENCES [dbo].[VaiTro] ([IDVaiTro])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_VaiTro]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_GioiTinh] FOREIGN KEY([GioiTinh])
REFERENCES [dbo].[GioiTinh] ([MaGioiTinh])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_GioiTinh]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Season] FOREIGN KEY([Season])
REFERENCES [dbo].[Season] ([MaSeason])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Season]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ThuongHieu] FOREIGN KEY([MaThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([MaThuongHieu])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ThuongHieu]
GO
