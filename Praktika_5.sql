USE [Korabl]
GO
/****** Object:  Table [dbo].[Adres]    Script Date: 22.05.2021 9:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Strana] [nchar](10) NOT NULL,
	[Gorod] [nchar](10) NOT NULL,
	[Ylica] [nchar](10) NOT NULL,
	[NomerKv] [nchar](10) NULL,
	[NomerDoma] [nchar](10) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Adres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bazy]    Script Date: 22.05.2021 9:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bazy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TipBazirovania] [nvarchar](50) NOT NULL,
	[MestopolozenieId] [int] NOT NULL,
	[KorabliId] [int] NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Bazy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chasti]    Script Date: 22.05.2021 9:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chasti](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TipyChasti] [nvarchar](50) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Chasti] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kadety]    Script Date: 22.05.2021 9:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kadety](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Imya] [nvarchar](50) NOT NULL,
	[Familia] [nvarchar](50) NOT NULL,
	[Otchestvo] [nvarchar](50) NULL,
	[DataRozdenia] [date] NOT NULL,
	[AdresId] [int] NOT NULL,
	[StrukturaPodrazdeleniaId] [int] NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Kadety] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Korabli]    Script Date: 22.05.2021 9:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Korabli](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TipKorablya] [nvarchar](50) NOT NULL,
	[LichyiSostavId] [int] NOT NULL,
	[StrukturaPodrazdeleniaId] [int] NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Korabli] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichnyiSostav]    Script Date: 22.05.2021 9:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichnyiSostav](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Imya] [nvarchar](50) NULL,
	[familia] [nvarchar](50) NOT NULL,
	[otchestvo] [nvarchar](50) NULL,
	[RoleId] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Parol] [nvarchar](50) NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_LichnyiSostav] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mestopolozenie]    Script Date: 22.05.2021 9:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mestopolozenie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Strana] [nvarchar](50) NOT NULL,
	[Gorod] [nvarchar](50) NOT NULL,
	[More] [nvarchar](50) NULL,
	[Ocean] [nvarchar](50) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Mestopolozenie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 22.05.2021 9:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StruktyraPodrazdelenia]    Script Date: 22.05.2021 9:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StruktyraPodrazdelenia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rota] [nvarchar](20) NOT NULL,
	[ChastiId] [int] NOT NULL,
	[BazyId] [int] NOT NULL,
	[LichyiSostavId] [int] NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_StruktyraPodrazdelenia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ychenia]    Script Date: 22.05.2021 9:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ychenia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TipYchenia] [nvarchar](50) NOT NULL,
	[StruktyraPodrazdeleniaId] [int] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Ychenia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adres] ON 

INSERT [dbo].[Adres] ([Id], [Strana], [Gorod], [Ylica], [NomerKv], [NomerDoma], [IsDelete]) VALUES (1, N'Россия    ', N'Москва    ', N'Арбат  5  ', N'12        ', N'          ', NULL)
INSERT [dbo].[Adres] ([Id], [Strana], [Gorod], [Ylica], [NomerKv], [NomerDoma], [IsDelete]) VALUES (2, N'Россия    ', N'Москва    ', N'Арбат  6  ', N'32        ', N'          ', NULL)
INSERT [dbo].[Adres] ([Id], [Strana], [Gorod], [Ylica], [NomerKv], [NomerDoma], [IsDelete]) VALUES (4, N'Казахстан ', N'Алматы    ', N'Ынтымак 4 ', N'2         ', N'          ', NULL)
INSERT [dbo].[Adres] ([Id], [Strana], [Gorod], [Ylica], [NomerKv], [NomerDoma], [IsDelete]) VALUES (5, N'Казахстан ', N'Алматы    ', N'Ынтымак 23', N'          ', N'9         ', NULL)
SET IDENTITY_INSERT [dbo].[Adres] OFF
GO
SET IDENTITY_INSERT [dbo].[Bazy] ON 

INSERT [dbo].[Bazy] ([Id], [TipBazirovania], [MestopolozenieId], [KorabliId], [IsDelete]) VALUES (5, N'постоянные', 1, 6, NULL)
INSERT [dbo].[Bazy] ([Id], [TipBazirovania], [MestopolozenieId], [KorabliId], [IsDelete]) VALUES (6, N'временные', 2, 7, NULL)
SET IDENTITY_INSERT [dbo].[Bazy] OFF
GO
SET IDENTITY_INSERT [dbo].[Chasti] ON 

INSERT [dbo].[Chasti] ([Id], [TipyChasti], [IsDelete]) VALUES (1, N'Надводные силы', NULL)
INSERT [dbo].[Chasti] ([Id], [TipyChasti], [IsDelete]) VALUES (2, N'Подводные силы', NULL)
INSERT [dbo].[Chasti] ([Id], [TipyChasti], [IsDelete]) VALUES (3, N'Морская авиация', NULL)
INSERT [dbo].[Chasti] ([Id], [TipyChasti], [IsDelete]) VALUES (4, N'Береговые войска', NULL)
SET IDENTITY_INSERT [dbo].[Chasti] OFF
GO
SET IDENTITY_INSERT [dbo].[Kadety] ON 

INSERT [dbo].[Kadety] ([Id], [Imya], [Familia], [Otchestvo], [DataRozdenia], [AdresId], [StrukturaPodrazdeleniaId], [IsDelete]) VALUES (6, N'Иван', N'Иванов', N'Иванович', CAST(N'1999-04-13' AS Date), 1, 1, 1)
INSERT [dbo].[Kadety] ([Id], [Imya], [Familia], [Otchestvo], [DataRozdenia], [AdresId], [StrukturaPodrazdeleniaId], [IsDelete]) VALUES (7, N'Денис', N'Суворов', N'', CAST(N'1999-04-14' AS Date), 2, 2, 1)
INSERT [dbo].[Kadety] ([Id], [Imya], [Familia], [Otchestvo], [DataRozdenia], [AdresId], [StrukturaPodrazdeleniaId], [IsDelete]) VALUES (9, N'Виктор', N'Абрамов', N'', CAST(N'1999-04-16' AS Date), 4, 4, 1)
INSERT [dbo].[Kadety] ([Id], [Imya], [Familia], [Otchestvo], [DataRozdenia], [AdresId], [StrukturaPodrazdeleniaId], [IsDelete]) VALUES (10, N'Антон', N'Боцман', N'', CAST(N'1999-04-17' AS Date), 5, 7, 1)
INSERT [dbo].[Kadety] ([Id], [Imya], [Familia], [Otchestvo], [DataRozdenia], [AdresId], [StrukturaPodrazdeleniaId], [IsDelete]) VALUES (11, N'Иван', N'Иванов', N'Иванович', CAST(N'1999-04-13' AS Date), 1, 1, NULL)
INSERT [dbo].[Kadety] ([Id], [Imya], [Familia], [Otchestvo], [DataRozdenia], [AdresId], [StrukturaPodrazdeleniaId], [IsDelete]) VALUES (12, N'Денис', N'Суворов', N'', CAST(N'1999-04-14' AS Date), 2, 2, NULL)
INSERT [dbo].[Kadety] ([Id], [Imya], [Familia], [Otchestvo], [DataRozdenia], [AdresId], [StrukturaPodrazdeleniaId], [IsDelete]) VALUES (13, N'Пётр', N'Первый', N'', CAST(N'1999-04-15' AS Date), 4, 3, NULL)
INSERT [dbo].[Kadety] ([Id], [Imya], [Familia], [Otchestvo], [DataRozdenia], [AdresId], [StrukturaPodrazdeleniaId], [IsDelete]) VALUES (14, N'Виктор', N'Абрамов', N'', CAST(N'1999-04-16' AS Date), 4, 4, NULL)
INSERT [dbo].[Kadety] ([Id], [Imya], [Familia], [Otchestvo], [DataRozdenia], [AdresId], [StrukturaPodrazdeleniaId], [IsDelete]) VALUES (15, N'Антон', N'Боцман', N'', CAST(N'1999-04-17' AS Date), 5, 7, NULL)
SET IDENTITY_INSERT [dbo].[Kadety] OFF
GO
SET IDENTITY_INSERT [dbo].[Korabli] ON 

INSERT [dbo].[Korabli] ([Id], [TipKorablya], [LichyiSostavId], [StrukturaPodrazdeleniaId], [IsDelete]) VALUES (6, N'Авианесущие ', 1, 1, NULL)
INSERT [dbo].[Korabli] ([Id], [TipKorablya], [LichyiSostavId], [StrukturaPodrazdeleniaId], [IsDelete]) VALUES (7, N'Большие противолодочные', 2, 2, NULL)
INSERT [dbo].[Korabli] ([Id], [TipKorablya], [LichyiSostavId], [StrukturaPodrazdeleniaId], [IsDelete]) VALUES (8, N'Сторожевые ', 3, 3, NULL)
INSERT [dbo].[Korabli] ([Id], [TipKorablya], [LichyiSostavId], [StrukturaPodrazdeleniaId], [IsDelete]) VALUES (9, N'Суда связи', 4, 4, NULL)
INSERT [dbo].[Korabli] ([Id], [TipKorablya], [LichyiSostavId], [StrukturaPodrazdeleniaId], [IsDelete]) VALUES (10, N'Малые ракетные', 5, 7, NULL)
SET IDENTITY_INSERT [dbo].[Korabli] OFF
GO
SET IDENTITY_INSERT [dbo].[LichnyiSostav] ON 

INSERT [dbo].[LichnyiSostav] ([Id], [Imya], [familia], [otchestvo], [RoleId], [Login], [Parol], [IsDelete]) VALUES (1, N'Владимир', N'Шевчук', N'', 1, N'111', N'111', NULL)
INSERT [dbo].[LichnyiSostav] ([Id], [Imya], [familia], [otchestvo], [RoleId], [Login], [Parol], [IsDelete]) VALUES (2, N'Александр ', N'Невский', N'', 2, N'123', N'123', NULL)
INSERT [dbo].[LichnyiSostav] ([Id], [Imya], [familia], [otchestvo], [RoleId], [Login], [Parol], [IsDelete]) VALUES (3, N'Денис', N'Иванов', N'', 3, N'122', N'122', NULL)
INSERT [dbo].[LichnyiSostav] ([Id], [Imya], [familia], [otchestvo], [RoleId], [Login], [Parol], [IsDelete]) VALUES (4, N'Кирил', N'Смирнов', N'', 4, N'112', N'112', NULL)
INSERT [dbo].[LichnyiSostav] ([Id], [Imya], [familia], [otchestvo], [RoleId], [Login], [Parol], [IsDelete]) VALUES (5, N'Марина', N'Кузнецов', N'', 5, N'121', N'121', NULL)
INSERT [dbo].[LichnyiSostav] ([Id], [Imya], [familia], [otchestvo], [RoleId], [Login], [Parol], [IsDelete]) VALUES (6, N'Оля', N'Попов', N'', 6, N'123', N'321', NULL)
SET IDENTITY_INSERT [dbo].[LichnyiSostav] OFF
GO
SET IDENTITY_INSERT [dbo].[Mestopolozenie] ON 

INSERT [dbo].[Mestopolozenie] ([Id], [Strana], [Gorod], [More], [Ocean], [IsDelete]) VALUES (1, N'Россия', N'Мурманск', N'Баренцева', N'', NULL)
INSERT [dbo].[Mestopolozenie] ([Id], [Strana], [Gorod], [More], [Ocean], [IsDelete]) VALUES (2, N'США', N'НорФолк', N'', N'Атлантический', NULL)
INSERT [dbo].[Mestopolozenie] ([Id], [Strana], [Gorod], [More], [Ocean], [IsDelete]) VALUES (3, N'Франция', N'Брест', N'Средиземное', N'Атлантический', NULL)
SET IDENTITY_INSERT [dbo].[Mestopolozenie] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Role], [IsDelete]) VALUES (1, N'Вице-адмирал', NULL)
INSERT [dbo].[Role] ([Id], [Role], [IsDelete]) VALUES (2, N'Капитан', NULL)
INSERT [dbo].[Role] ([Id], [Role], [IsDelete]) VALUES (3, N'Ст. Лейтенант', NULL)
INSERT [dbo].[Role] ([Id], [Role], [IsDelete]) VALUES (4, N'Мл. Лейтенант', NULL)
INSERT [dbo].[Role] ([Id], [Role], [IsDelete]) VALUES (5, N'старшина', NULL)
INSERT [dbo].[Role] ([Id], [Role], [IsDelete]) VALUES (6, N'Матрос', NULL)
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[StruktyraPodrazdelenia] ON 

INSERT [dbo].[StruktyraPodrazdelenia] ([Id], [Rota], [ChastiId], [BazyId], [LichyiSostavId], [IsDelete]) VALUES (1, N'1', 1, 5, 1, NULL)
INSERT [dbo].[StruktyraPodrazdelenia] ([Id], [Rota], [ChastiId], [BazyId], [LichyiSostavId], [IsDelete]) VALUES (2, N'2', 2, 5, 2, NULL)
INSERT [dbo].[StruktyraPodrazdelenia] ([Id], [Rota], [ChastiId], [BazyId], [LichyiSostavId], [IsDelete]) VALUES (3, N'3', 3, 6, 3, NULL)
INSERT [dbo].[StruktyraPodrazdelenia] ([Id], [Rota], [ChastiId], [BazyId], [LichyiSostavId], [IsDelete]) VALUES (4, N'4', 4, 6, 4, NULL)
INSERT [dbo].[StruktyraPodrazdelenia] ([Id], [Rota], [ChastiId], [BazyId], [LichyiSostavId], [IsDelete]) VALUES (7, N'5', 4, 6, 5, NULL)
SET IDENTITY_INSERT [dbo].[StruktyraPodrazdelenia] OFF
GO
SET IDENTITY_INSERT [dbo].[Ychenia] ON 

INSERT [dbo].[Ychenia] ([Id], [TipYchenia], [StruktyraPodrazdeleniaId], [IsDelete]) VALUES (13, N'стратегические', 1, 0)
INSERT [dbo].[Ychenia] ([Id], [TipYchenia], [StruktyraPodrazdeleniaId], [IsDelete]) VALUES (14, N'оперативные', 2, 0)
INSERT [dbo].[Ychenia] ([Id], [TipYchenia], [StruktyraPodrazdeleniaId], [IsDelete]) VALUES (15, N'тактические', 3, 0)
SET IDENTITY_INSERT [dbo].[Ychenia] OFF
GO
ALTER TABLE [dbo].[Bazy]  WITH CHECK ADD  CONSTRAINT [FK_Bazy_Korabli] FOREIGN KEY([KorabliId])
REFERENCES [dbo].[Korabli] ([Id])
GO
ALTER TABLE [dbo].[Bazy] CHECK CONSTRAINT [FK_Bazy_Korabli]
GO
ALTER TABLE [dbo].[Bazy]  WITH CHECK ADD  CONSTRAINT [FK_Bazy_Mestopolozenie] FOREIGN KEY([MestopolozenieId])
REFERENCES [dbo].[Mestopolozenie] ([Id])
GO
ALTER TABLE [dbo].[Bazy] CHECK CONSTRAINT [FK_Bazy_Mestopolozenie]
GO
ALTER TABLE [dbo].[Kadety]  WITH CHECK ADD  CONSTRAINT [FK_Kadety_Adres] FOREIGN KEY([AdresId])
REFERENCES [dbo].[Adres] ([Id])
GO
ALTER TABLE [dbo].[Kadety] CHECK CONSTRAINT [FK_Kadety_Adres]
GO
ALTER TABLE [dbo].[Kadety]  WITH CHECK ADD  CONSTRAINT [FK_Kadety_StruktyraPodrazdelenia] FOREIGN KEY([StrukturaPodrazdeleniaId])
REFERENCES [dbo].[StruktyraPodrazdelenia] ([Id])
GO
ALTER TABLE [dbo].[Kadety] CHECK CONSTRAINT [FK_Kadety_StruktyraPodrazdelenia]
GO
ALTER TABLE [dbo].[Korabli]  WITH CHECK ADD  CONSTRAINT [FK_Korabli_StruktyraPodrazdelenia] FOREIGN KEY([StrukturaPodrazdeleniaId])
REFERENCES [dbo].[StruktyraPodrazdelenia] ([Id])
GO
ALTER TABLE [dbo].[Korabli] CHECK CONSTRAINT [FK_Korabli_StruktyraPodrazdelenia]
GO
ALTER TABLE [dbo].[LichnyiSostav]  WITH CHECK ADD  CONSTRAINT [FK_LichnyiSostav_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[LichnyiSostav] CHECK CONSTRAINT [FK_LichnyiSostav_Role]
GO
ALTER TABLE [dbo].[StruktyraPodrazdelenia]  WITH CHECK ADD  CONSTRAINT [FK_StruktyraPodrazdelenia_Bazy] FOREIGN KEY([BazyId])
REFERENCES [dbo].[Bazy] ([Id])
GO
ALTER TABLE [dbo].[StruktyraPodrazdelenia] CHECK CONSTRAINT [FK_StruktyraPodrazdelenia_Bazy]
GO
ALTER TABLE [dbo].[StruktyraPodrazdelenia]  WITH CHECK ADD  CONSTRAINT [FK_StruktyraPodrazdelenia_Chasti] FOREIGN KEY([ChastiId])
REFERENCES [dbo].[Chasti] ([Id])
GO
ALTER TABLE [dbo].[StruktyraPodrazdelenia] CHECK CONSTRAINT [FK_StruktyraPodrazdelenia_Chasti]
GO
ALTER TABLE [dbo].[StruktyraPodrazdelenia]  WITH CHECK ADD  CONSTRAINT [FK_StruktyraPodrazdelenia_LichnyiSostav] FOREIGN KEY([LichyiSostavId])
REFERENCES [dbo].[LichnyiSostav] ([Id])
GO
ALTER TABLE [dbo].[StruktyraPodrazdelenia] CHECK CONSTRAINT [FK_StruktyraPodrazdelenia_LichnyiSostav]
GO
ALTER TABLE [dbo].[Ychenia]  WITH CHECK ADD  CONSTRAINT [FK_Ychenia_StruktyraPodrazdelenia1] FOREIGN KEY([StruktyraPodrazdeleniaId])
REFERENCES [dbo].[StruktyraPodrazdelenia] ([Id])
GO
ALTER TABLE [dbo].[Ychenia] CHECK CONSTRAINT [FK_Ychenia_StruktyraPodrazdelenia1]
GO
