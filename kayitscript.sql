USE [MVC_StokTakip]
GO
/****** Object:  Table [dbo].[Birimler]    Script Date: 18.06.2021 20:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Birimler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Birim] [varchar](250) NOT NULL,
	[Aciklama] [varchar](500) NOT NULL,
 CONSTRAINT [PK_Birimler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 18.06.2021 20:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kategori] [varchar](250) NOT NULL,
	[Aciklama] [varchar](500) NOT NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 18.06.2021 20:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](50) NOT NULL,
	[Sifre] [varchar](50) NOT NULL,
	[AdiSoyadi] [varchar](150) NOT NULL,
	[Telefon] [varchar](20) NOT NULL,
	[Adres] [varchar](500) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Tarih] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kullaniciRolleri]    Script Date: 18.06.2021 20:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullaniciRolleri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NOT NULL,
	[RolID] [int] NOT NULL,
 CONSTRAINT [PK_kullaniciRolleri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Markalar]    Script Date: 18.06.2021 20:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Markalar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriID] [int] NOT NULL,
	[Marka] [varchar](250) NOT NULL,
	[Aciklama] [varchar](500) NOT NULL,
 CONSTRAINT [PK_Markalar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 18.06.2021 20:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdiSoyadi] [varchar](500) NOT NULL,
	[Telefon] [varchar](50) NULL,
	[Adres] [varchar](500) NULL,
	[Email] [varchar](150) NULL,
	[Resim] [varchar](500) NULL,
	[KayitTarihi] [date] NULL,
	[Puani] [decimal](28, 2) NULL,
	[Aciklama] [varchar](500) NULL,
 CONSTRAINT [PK_Musteriler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roller]    Script Date: 18.06.2021 20:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roller](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Rol] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Roller] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satislar]    Script Date: 18.06.2021 20:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satislar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NOT NULL,
	[UrunID] [int] NOT NULL,
	[SepetID] [int] NOT NULL,
	[BarkodNo] [varchar](50) NOT NULL,
	[BirimFiyati] [decimal](28, 2) NOT NULL,
	[Miktari] [decimal](28, 2) NOT NULL,
	[ToplamFiyati] [decimal](18, 2) NOT NULL,
	[KDV] [int] NOT NULL,
	[BirimID] [int] NOT NULL,
	[Tarih] [date] NOT NULL,
	[Saat] [datetime] NOT NULL,
 CONSTRAINT [PK_Satislar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sepet]    Script Date: 18.06.2021 20:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sepet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NOT NULL,
	[UrunID] [int] NOT NULL,
	[BirimFiyati] [decimal](28, 2) NOT NULL,
	[Miktari] [decimal](28, 2) NOT NULL,
	[ToplamFiyati] [decimal](28, 2) NOT NULL,
	[Tarih] [date] NOT NULL,
	[Saat] [datetime] NOT NULL,
 CONSTRAINT [PK_Sepet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLiletisim]    Script Date: 18.06.2021 20:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLiletisim](
	[iletisimID] [int] IDENTITY(1,1) NOT NULL,
	[AdiSoyadi] [varchar](150) NULL,
	[EmailAdres] [varchar](150) NULL,
	[Baslik] [varchar](150) NULL,
	[icerik] [text] NULL,
	[Tarih] [date] NULL,
 CONSTRAINT [PK_TBLiletisim] PRIMARY KEY CLUSTERED 
(
	[iletisimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 18.06.2021 20:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriID] [int] NOT NULL,
	[MarkaID] [int] NOT NULL,
	[UrunAdi] [varchar](150) NOT NULL,
	[BarkodNo] [varchar](50) NOT NULL,
	[AlisFiyati] [decimal](28, 2) NOT NULL,
	[SatisFiyati] [decimal](28, 2) NOT NULL,
	[Miktari] [decimal](28, 2) NOT NULL,
	[BirimID] [int] NOT NULL,
	[KDV] [int] NOT NULL,
	[Tarih] [date] NOT NULL,
	[Aciklama] [varchar](850) NOT NULL,
 CONSTRAINT [PK_Urunler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Birimler] ON 

INSERT [dbo].[Birimler] ([ID], [Birim], [Aciklama]) VALUES (1, N'Adet', N'Sayılabilen ürünler için kullanılan birimdir.')
INSERT [dbo].[Birimler] ([ID], [Birim], [Aciklama]) VALUES (2, N'Paket', N'İçerisinde birden fazla ürün bulunduran birim çeşididir.')
INSERT [dbo].[Birimler] ([ID], [Birim], [Aciklama]) VALUES (4, N'Metre', N'Uzunluk ölçü birimi')
INSERT [dbo].[Birimler] ([ID], [Birim], [Aciklama]) VALUES (5, N'Kilogram', N'Ağırlık ölçü birimi')
SET IDENTITY_INSERT [dbo].[Birimler] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategoriler] ON 

INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Aciklama]) VALUES (1, N'Gıda', N'Gıda kategorisi ile ilgili ürünler için tanımlandı.')
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Aciklama]) VALUES (2, N'İçecekler', N'İçecekler Kategorisi')
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Aciklama]) VALUES (3, N'Tahıllar', N'Tahıllar Kategorisi')
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Aciklama]) VALUES (4, N'Baklagiller', N'Baklagiller Kategorisi')
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Aciklama]) VALUES (5, N'Züccaciye', N'Züccaciye Ürünleri')
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Aciklama]) VALUES (7, N'Oyuncaklar', N'Oyuncaklar')
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Aciklama]) VALUES (34, N'Modal', N'Modal')
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Aciklama]) VALUES (39, N'yeni', N'yeni')
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 

INSERT [dbo].[Kullanicilar] ([Id], [KullaniciAdi], [Sifre], [AdiSoyadi], [Telefon], [Adres], [Email], [Tarih]) VALUES (1, N'Admin', N'123', N'Ömer Akay', N'4565656', N'Ankara', N'testmurad@yandex.com', CAST(N'2020-01-20' AS Date))
INSERT [dbo].[Kullanicilar] ([Id], [KullaniciAdi], [Sifre], [AdiSoyadi], [Telefon], [Adres], [Email], [Tarih]) VALUES (2, N'Murat', N'73e93320', N'Murat Akay', N'5645665', N'Eskişehir', N'muratakay472020@gmail.com', CAST(N'2020-02-02' AS Date))
INSERT [dbo].[Kullanicilar] ([Id], [KullaniciAdi], [Sifre], [AdiSoyadi], [Telefon], [Adres], [Email], [Tarih]) VALUES (3, N'Kemal', N'789', N'Kemal Yıldırım', N'7546654', N'İstanbul', N'yildirimkemal@gmail.com', CAST(N'2020-03-02' AS Date))
INSERT [dbo].[Kullanicilar] ([Id], [KullaniciAdi], [Sifre], [AdiSoyadi], [Telefon], [Adres], [Email], [Tarih]) VALUES (5, N'User-2', N'user2', N'User User', N'7854212145', N'Daha sonra eklenecek', N'akaymurat@gmail.com', CAST(N'2020-05-11' AS Date))
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
GO
SET IDENTITY_INSERT [dbo].[kullaniciRolleri] ON 

INSERT [dbo].[kullaniciRolleri] ([ID], [KullaniciID], [RolID]) VALUES (1, 1, 1)
INSERT [dbo].[kullaniciRolleri] ([ID], [KullaniciID], [RolID]) VALUES (2, 2, 2)
INSERT [dbo].[kullaniciRolleri] ([ID], [KullaniciID], [RolID]) VALUES (3, 3, 3)
INSERT [dbo].[kullaniciRolleri] ([ID], [KullaniciID], [RolID]) VALUES (4, 5, 2)
SET IDENTITY_INSERT [dbo].[kullaniciRolleri] OFF
GO
SET IDENTITY_INSERT [dbo].[Markalar] ON 

INSERT [dbo].[Markalar] ([ID], [KategoriID], [Marka], [Aciklama]) VALUES (1, 1, N'Eti', N'Gıda-Eti Marka Grubu')
INSERT [dbo].[Markalar] ([ID], [KategoriID], [Marka], [Aciklama]) VALUES (2, 2, N'Pepsi', N'İçecekler-Pepsi Marka Grubu')
INSERT [dbo].[Markalar] ([ID], [KategoriID], [Marka], [Aciklama]) VALUES (4, 3, N'Yağmur', N'Tahıllar-Yağmur Marka Grubu')
INSERT [dbo].[Markalar] ([ID], [KategoriID], [Marka], [Aciklama]) VALUES (20, 2, N'Erikli', N'İçecekler-Erikli Marka Grubu')
INSERT [dbo].[Markalar] ([ID], [KategoriID], [Marka], [Aciklama]) VALUES (21, 3, N'Tahıllar-1', N'Tahıllar Tahıllar-1 Marka Grubu')
INSERT [dbo].[Markalar] ([ID], [KategoriID], [Marka], [Aciklama]) VALUES (22, 7, N'Lego', N'Oyuncaklar Lego')
INSERT [dbo].[Markalar] ([ID], [KategoriID], [Marka], [Aciklama]) VALUES (23, 7, N'oyuncak-2', N'yapılmadı')
INSERT [dbo].[Markalar] ([ID], [KategoriID], [Marka], [Aciklama]) VALUES (24, 4, N'Yıldız', N'Baklagiller Yıldız')
INSERT [dbo].[Markalar] ([ID], [KategoriID], [Marka], [Aciklama]) VALUES (25, 4, N'Baklagiller-2', N'Baklagiller-2')
INSERT [dbo].[Markalar] ([ID], [KategoriID], [Marka], [Aciklama]) VALUES (26, 1, N'Ülker', N'Gıda Ülker Marka Grubu')
INSERT [dbo].[Markalar] ([ID], [KategoriID], [Marka], [Aciklama]) VALUES (30, 5, N'Korkmaz', N'Yapılmadı')
SET IDENTITY_INSERT [dbo].[Markalar] OFF
GO
SET IDENTITY_INSERT [dbo].[Musteriler] ON 

INSERT [dbo].[Musteriler] ([ID], [AdiSoyadi], [Telefon], [Adres], [Email], [Resim], [KayitTarihi], [Puani], [Aciklama]) VALUES (1, N'Murat Akay', N'45456998', N'Adres-1', N'email1', N'resim', CAST(N'2010-01-01' AS Date), CAST(150.00 AS Decimal(28, 2)), N'Yapılmadı')
INSERT [dbo].[Musteriler] ([ID], [AdiSoyadi], [Telefon], [Adres], [Email], [Resim], [KayitTarihi], [Puani], [Aciklama]) VALUES (2, N'Kemal Yıldırım', N'9894565', N'Adres-2', N'email2', N'resim-2', CAST(N'2020-02-01' AS Date), CAST(100.00 AS Decimal(28, 2)), N'Yapılmad')
SET IDENTITY_INSERT [dbo].[Musteriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Roller] ON 

INSERT [dbo].[Roller] ([ID], [Rol]) VALUES (1, N'A')
INSERT [dbo].[Roller] ([ID], [Rol]) VALUES (2, N'U')
INSERT [dbo].[Roller] ([ID], [Rol]) VALUES (3, N'U2')
SET IDENTITY_INSERT [dbo].[Roller] OFF
GO
SET IDENTITY_INSERT [dbo].[Satislar] ON 

INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (1, 1, 1, 74, N'100', CAST(7.50 AS Decimal(28, 2)), CAST(2.00 AS Decimal(28, 2)), CAST(15.00 AS Decimal(18, 2)), 18, 1, CAST(N'2020-07-29' AS Date), CAST(N'2020-07-29T23:26:53.343' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (2, 1, 17, 75, N'300', CAST(9.50 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(9.50 AS Decimal(18, 2)), 18, 2, CAST(N'2020-07-29' AS Date), CAST(N'2020-07-29T23:27:07.513' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (3, 1, 1, 76, N'100', CAST(7.50 AS Decimal(28, 2)), CAST(2.00 AS Decimal(28, 2)), CAST(15.00 AS Decimal(18, 2)), 18, 1, CAST(N'2020-07-29' AS Date), CAST(N'2020-07-29T23:37:43.500' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (4, 1, 17, 77, N'300', CAST(9.50 AS Decimal(28, 2)), CAST(3.00 AS Decimal(28, 2)), CAST(28.50 AS Decimal(18, 2)), 18, 2, CAST(N'2020-07-29' AS Date), CAST(N'2020-07-29T23:38:16.147' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (5, 2, 1, 9, N'100', CAST(7.50 AS Decimal(28, 2)), CAST(2.00 AS Decimal(28, 2)), CAST(15.00 AS Decimal(18, 2)), 18, 1, CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T10:25:34.753' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (6, 2, 17, 116, N'300', CAST(9.50 AS Decimal(28, 2)), CAST(3.00 AS Decimal(28, 2)), CAST(28.50 AS Decimal(18, 2)), 18, 2, CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T10:25:55.913' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (7, 1, 1, 112, N'100', CAST(7.50 AS Decimal(28, 2)), CAST(3.00 AS Decimal(28, 2)), CAST(22.50 AS Decimal(18, 2)), 18, 1, CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T23:19:20.677' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (8, 1, 18, 115, N'400', CAST(7.25 AS Decimal(28, 2)), CAST(2.00 AS Decimal(28, 2)), CAST(14.50 AS Decimal(18, 2)), 1, 1, CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T23:19:39.840' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (9, 1, 19, 117, N'500', CAST(1.25 AS Decimal(28, 2)), CAST(4.00 AS Decimal(28, 2)), CAST(5.00 AS Decimal(18, 2)), 8, 1, CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T23:19:49.877' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (10, 1, 1, 159, N'100', CAST(7.50 AS Decimal(28, 2)), CAST(2.00 AS Decimal(28, 2)), CAST(15.00 AS Decimal(18, 2)), 18, 1, CAST(N'2020-09-10' AS Date), CAST(N'2020-09-10T22:29:06.387' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (11, 1, 9, 161, N'200', CAST(12.35 AS Decimal(28, 2)), CAST(3.00 AS Decimal(28, 2)), CAST(37.05 AS Decimal(18, 2)), 5, 1, CAST(N'2020-09-10' AS Date), CAST(N'2020-09-10T22:29:06.393' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (12, 1, 9, 182, N'200', CAST(12.35 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(12.35 AS Decimal(18, 2)), 5, 1, CAST(N'2020-09-11' AS Date), CAST(N'2020-09-11T19:53:28.510' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (13, 1, 17, 183, N'300', CAST(9.50 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(9.50 AS Decimal(18, 2)), 18, 2, CAST(N'2020-09-11' AS Date), CAST(N'2020-09-11T19:53:28.550' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (14, 1, 1, 181, N'100', CAST(7.50 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(7.50 AS Decimal(18, 2)), 18, 1, CAST(N'2020-09-11' AS Date), CAST(N'2020-09-11T22:31:35.577' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (15, 1, 9, 185, N'200', CAST(12.35 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(12.35 AS Decimal(18, 2)), 5, 1, CAST(N'2020-09-12' AS Date), CAST(N'2020-09-12T00:22:47.910' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (16, 1, 17, 186, N'300', CAST(9.50 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(9.50 AS Decimal(18, 2)), 18, 2, CAST(N'2020-09-12' AS Date), CAST(N'2020-09-12T00:24:13.440' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (17, 1, 18, 184, N'400', CAST(7.25 AS Decimal(28, 2)), CAST(2.00 AS Decimal(28, 2)), CAST(14.50 AS Decimal(18, 2)), 1, 1, CAST(N'2020-09-12' AS Date), CAST(N'2020-09-12T00:28:44.637' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (18, 1, 21, 188, N'700', CAST(29897.75 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(29897.75 AS Decimal(18, 2)), 8, 5, CAST(N'2020-09-12' AS Date), CAST(N'2020-09-12T00:28:44.720' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (19, 1, 19, 187, N'500', CAST(1.25 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(1.25 AS Decimal(18, 2)), 8, 1, CAST(N'2020-09-12' AS Date), CAST(N'2020-09-12T00:32:02.667' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (20, 1, 1, 189, N'100', CAST(7.50 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(7.50 AS Decimal(18, 2)), 18, 1, CAST(N'2020-09-12' AS Date), CAST(N'2020-09-12T11:36:12.517' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (21, 1, 18, 192, N'400', CAST(7.25 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(7.25 AS Decimal(18, 2)), 1, 1, CAST(N'2020-09-12' AS Date), CAST(N'2020-09-12T11:36:12.573' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (22, 1, 9, 190, N'200', CAST(12.35 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(12.35 AS Decimal(18, 2)), 5, 1, CAST(N'2020-09-12' AS Date), CAST(N'2020-09-12T11:38:17.580' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (23, 1, 19, 193, N'500', CAST(1.25 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(1.25 AS Decimal(18, 2)), 8, 1, CAST(N'2020-09-12' AS Date), CAST(N'2020-09-12T11:38:36.250' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (24, 1, 9, 198, N'200', CAST(12.35 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(12.35 AS Decimal(18, 2)), 5, 1, CAST(N'2021-06-18' AS Date), CAST(N'2021-06-18T13:49:12.477' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (25, 1, 20, 201, N'600', CAST(30.00 AS Decimal(28, 2)), CAST(2.00 AS Decimal(28, 2)), CAST(60.00 AS Decimal(18, 2)), 8, 2, CAST(N'2021-06-18' AS Date), CAST(N'2021-06-18T13:50:18.227' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (26, 1, 25, 202, N'900', CAST(37.75 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(37.75 AS Decimal(18, 2)), 8, 2, CAST(N'2021-06-18' AS Date), CAST(N'2021-06-18T13:50:18.227' AS DateTime))
INSERT [dbo].[Satislar] ([ID], [KullaniciID], [UrunID], [SepetID], [BarkodNo], [BirimFiyati], [Miktari], [ToplamFiyati], [KDV], [BirimID], [Tarih], [Saat]) VALUES (27, 1, 1, 203, N'100', CAST(7.50 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(7.50 AS Decimal(18, 2)), 18, 1, CAST(N'2021-06-18' AS Date), CAST(N'2021-06-18T13:50:18.230' AS DateTime))
SET IDENTITY_INSERT [dbo].[Satislar] OFF
GO
SET IDENTITY_INSERT [dbo].[Sepet] ON 

INSERT [dbo].[Sepet] ([ID], [KullaniciID], [UrunID], [BirimFiyati], [Miktari], [ToplamFiyati], [Tarih], [Saat]) VALUES (6, 5, 1, CAST(7.50 AS Decimal(28, 2)), CAST(2.00 AS Decimal(28, 2)), CAST(15.00 AS Decimal(28, 2)), CAST(N'2020-06-25' AS Date), CAST(N'2020-06-25T13:52:21.773' AS DateTime))
INSERT [dbo].[Sepet] ([ID], [KullaniciID], [UrunID], [BirimFiyati], [Miktari], [ToplamFiyati], [Tarih], [Saat]) VALUES (7, 5, 18, CAST(7.25 AS Decimal(28, 2)), CAST(3.00 AS Decimal(28, 2)), CAST(21.75 AS Decimal(28, 2)), CAST(N'2020-06-25' AS Date), CAST(N'2020-06-25T13:52:31.573' AS DateTime))
INSERT [dbo].[Sepet] ([ID], [KullaniciID], [UrunID], [BirimFiyati], [Miktari], [ToplamFiyati], [Tarih], [Saat]) VALUES (204, 1, 18, CAST(7.25 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(7.25 AS Decimal(28, 2)), CAST(N'2021-06-18' AS Date), CAST(N'2021-06-18T16:39:26.240' AS DateTime))
INSERT [dbo].[Sepet] ([ID], [KullaniciID], [UrunID], [BirimFiyati], [Miktari], [ToplamFiyati], [Tarih], [Saat]) VALUES (205, 1, 24, CAST(3.75 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(3.75 AS Decimal(28, 2)), CAST(N'2021-06-18' AS Date), CAST(N'2021-06-18T16:39:29.840' AS DateTime))
INSERT [dbo].[Sepet] ([ID], [KullaniciID], [UrunID], [BirimFiyati], [Miktari], [ToplamFiyati], [Tarih], [Saat]) VALUES (206, 1, 25, CAST(37.75 AS Decimal(28, 2)), CAST(1.00 AS Decimal(28, 2)), CAST(37.75 AS Decimal(28, 2)), CAST(N'2021-06-18' AS Date), CAST(N'2021-06-18T16:39:32.547' AS DateTime))
SET IDENTITY_INSERT [dbo].[Sepet] OFF
GO
SET IDENTITY_INSERT [dbo].[Urunler] ON 

INSERT [dbo].[Urunler] ([ID], [KategoriID], [MarkaID], [UrunAdi], [BarkodNo], [AlisFiyati], [SatisFiyati], [Miktari], [BirimID], [KDV], [Tarih], [Aciklama]) VALUES (1, 2, 2, N'Pepsi 2.5 lt', N'100', CAST(6.50 AS Decimal(28, 2)), CAST(7.50 AS Decimal(28, 2)), CAST(49.00 AS Decimal(28, 2)), 1, 18, CAST(N'2020-04-19' AS Date), N'yapılmadı')
INSERT [dbo].[Urunler] ([ID], [KategoriID], [MarkaID], [UrunAdi], [BarkodNo], [AlisFiyati], [SatisFiyati], [Miktari], [BirimID], [KDV], [Tarih], [Aciklama]) VALUES (9, 7, 22, N'Lego Yap Boz Seti', N'200', CAST(11.25 AS Decimal(28, 2)), CAST(12.35 AS Decimal(28, 2)), CAST(18.00 AS Decimal(28, 2)), 1, 5, CAST(N'2020-05-05' AS Date), N'yapılmadı')
INSERT [dbo].[Urunler] ([ID], [KategoriID], [MarkaID], [UrunAdi], [BarkodNo], [AlisFiyati], [SatisFiyati], [Miktari], [BirimID], [KDV], [Tarih], [Aciklama]) VALUES (17, 4, 24, N'Yıldız 1 kg Nohut', N'300', CAST(8.35 AS Decimal(28, 2)), CAST(9.50 AS Decimal(28, 2)), CAST(42.00 AS Decimal(28, 2)), 2, 18, CAST(N'2020-04-29' AS Date), N'yapılmadı')
INSERT [dbo].[Urunler] ([ID], [KategoriID], [MarkaID], [UrunAdi], [BarkodNo], [AlisFiyati], [SatisFiyati], [Miktari], [BirimID], [KDV], [Tarih], [Aciklama]) VALUES (18, 1, 26, N'Rulokat 170 gr', N'400', CAST(6.50 AS Decimal(28, 2)), CAST(7.25 AS Decimal(28, 2)), CAST(25.00 AS Decimal(28, 2)), 1, 1, CAST(N'2020-05-18' AS Date), N'Yapılmadı')
INSERT [dbo].[Urunler] ([ID], [KategoriID], [MarkaID], [UrunAdi], [BarkodNo], [AlisFiyati], [SatisFiyati], [Miktari], [BirimID], [KDV], [Tarih], [Aciklama]) VALUES (19, 1, 1, N'Eti Burçak Yulaflı 125 gr', N'500', CAST(1.00 AS Decimal(28, 2)), CAST(1.25 AS Decimal(28, 2)), CAST(19.00 AS Decimal(28, 2)), 1, 8, CAST(N'2020-05-21' AS Date), N'Yapılmadı')
INSERT [dbo].[Urunler] ([ID], [KategoriID], [MarkaID], [UrunAdi], [BarkodNo], [AlisFiyati], [SatisFiyati], [Miktari], [BirimID], [KDV], [Tarih], [Aciklama]) VALUES (20, 2, 20, N'5lt Erikli Su', N'600', CAST(25.65 AS Decimal(28, 2)), CAST(30.00 AS Decimal(28, 2)), CAST(3.00 AS Decimal(28, 2)), 2, 8, CAST(N'2020-07-08' AS Date), N'Pakette toplam 4 tane 5 lt lik Erikli su bulunmaktadır.')
INSERT [dbo].[Urunler] ([ID], [KategoriID], [MarkaID], [UrunAdi], [BarkodNo], [AlisFiyati], [SatisFiyati], [Miktari], [BirimID], [KDV], [Tarih], [Aciklama]) VALUES (21, 3, 4, N'DenemeÜrün', N'700', CAST(25889.35 AS Decimal(28, 2)), CAST(297.75 AS Decimal(28, 2)), CAST(74.85 AS Decimal(28, 2)), 5, 8, CAST(N'2020-07-08' AS Date), N'Ürün toplam 75,85 kg olarak alındı.')
INSERT [dbo].[Urunler] ([ID], [KategoriID], [MarkaID], [UrunAdi], [BarkodNo], [AlisFiyati], [SatisFiyati], [Miktari], [BirimID], [KDV], [Tarih], [Aciklama]) VALUES (24, 2, 2, N'1.5 lt Pepsi', N'800', CAST(3.25 AS Decimal(28, 2)), CAST(3.75 AS Decimal(28, 2)), CAST(65.00 AS Decimal(28, 2)), 1, 18, CAST(N'2020-08-05' AS Date), N'İçecekler-Pepsi Grubu 1.5 lt')
INSERT [dbo].[Urunler] ([ID], [KategoriID], [MarkaID], [UrunAdi], [BarkodNo], [AlisFiyati], [SatisFiyati], [Miktari], [BirimID], [KDV], [Tarih], [Aciklama]) VALUES (25, 1, 1, N'Negro Kakaolu Kremalı Bisküvi 110 gr 18'' li', N'900', CAST(35.25 AS Decimal(28, 2)), CAST(37.75 AS Decimal(28, 2)), CAST(54.00 AS Decimal(28, 2)), 2, 8, CAST(N'2020-08-05' AS Date), N'Gıda Eti Negro Negro Kakaolu Kremalı Bisküvi 110 gr 18'' li Paket halinde satılıyor.')
INSERT [dbo].[Urunler] ([ID], [KategoriID], [MarkaID], [UrunAdi], [BarkodNo], [AlisFiyati], [SatisFiyati], [Miktari], [BirimID], [KDV], [Tarih], [Aciklama]) VALUES (26, 2, 2, N'Pepsi Cola Kutu 330 ml', N'1000', CAST(1.85 AS Decimal(28, 2)), CAST(2.50 AS Decimal(28, 2)), CAST(30.00 AS Decimal(28, 2)), 1, 8, CAST(N'2020-08-05' AS Date), N'Pepsi 330 ml kutu olarak satılmaktadır.')
SET IDENTITY_INSERT [dbo].[Urunler] OFF
GO
ALTER TABLE [dbo].[kullaniciRolleri]  WITH CHECK ADD  CONSTRAINT [FK_kullaniciRolleri_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([Id])
GO
ALTER TABLE [dbo].[kullaniciRolleri] CHECK CONSTRAINT [FK_kullaniciRolleri_Kullanicilar]
GO
ALTER TABLE [dbo].[kullaniciRolleri]  WITH CHECK ADD  CONSTRAINT [FK_kullaniciRolleri_Roller] FOREIGN KEY([RolID])
REFERENCES [dbo].[Roller] ([ID])
GO
ALTER TABLE [dbo].[kullaniciRolleri] CHECK CONSTRAINT [FK_kullaniciRolleri_Roller]
GO
ALTER TABLE [dbo].[Markalar]  WITH CHECK ADD  CONSTRAINT [FK_Markalar_Kategoriler] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategoriler] ([ID])
GO
ALTER TABLE [dbo].[Markalar] CHECK CONSTRAINT [FK_Markalar_Kategoriler]
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Satislar_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([Id])
GO
ALTER TABLE [dbo].[Satislar] CHECK CONSTRAINT [FK_Satislar_Kullanicilar]
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Satislar_Urunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([ID])
GO
ALTER TABLE [dbo].[Satislar] CHECK CONSTRAINT [FK_Satislar_Urunler]
GO
ALTER TABLE [dbo].[Sepet]  WITH CHECK ADD  CONSTRAINT [FK_Sepet_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([Id])
GO
ALTER TABLE [dbo].[Sepet] CHECK CONSTRAINT [FK_Sepet_Kullanicilar]
GO
ALTER TABLE [dbo].[Sepet]  WITH CHECK ADD  CONSTRAINT [FK_Sepet_Urunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([ID])
GO
ALTER TABLE [dbo].[Sepet] CHECK CONSTRAINT [FK_Sepet_Urunler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Birimler] FOREIGN KEY([BirimID])
REFERENCES [dbo].[Birimler] ([ID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Birimler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Kategoriler] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategoriler] ([ID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Kategoriler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Markalar] FOREIGN KEY([MarkaID])
REFERENCES [dbo].[Markalar] ([ID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Markalar]
GO
