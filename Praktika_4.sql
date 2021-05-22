USE [BookMagazim]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 22.05.2021 9:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ylica] [nvarchar](50) NULL,
	[NumberKv] [int] NOT NULL,
	[Town] [nvarchar](50) NULL,
	[NumberDom] [int] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Avtory]    Script Date: 22.05.2021 9:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Avtory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Avtory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chitately]    Script Date: 22.05.2021 9:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitately](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[PassportS] [nvarchar](50) NOT NULL,
	[PassportN] [nvarchar](50) NOT NULL,
	[NumberPhone] [nvarchar](50) NULL,
	[AddressId] [int] NOT NULL,
	[ReitingId] [int] NULL,
 CONSTRAINT [PK_Chitately] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Izdatelstva]    Script Date: 22.05.2021 9:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Izdatelstva](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Izdatelstvo] [nvarchar](50) NOT NULL,
	[Town] [nvarchar](50) NOT NULL,
	[Indexx] [nvarchar](50) NOT NULL,
	[eMail] [nvarchar](50) NOT NULL,
	[site] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Izdatelstva] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Knigi]    Script Date: 22.05.2021 9:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Knigi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nazvanie] [nvarchar](50) NOT NULL,
	[GodVypuska] [int] NOT NULL,
	[KolichestvoKnig] [int] NOT NULL,
	[PriseId] [int] NOT NULL,
	[IzdatelstvaId] [int] NOT NULL,
	[AvtorId] [int] NOT NULL,
 CONSTRAINT [PK_Knigi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Price]    Script Date: 22.05.2021 9:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PriceKnigi] [money] NOT NULL,
 CONSTRAINT [PK_Price] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reiting]    Script Date: 22.05.2021 9:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reiting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReitingChitatelya] [nvarchar](5) NULL,
 CONSTRAINT [PK_Reiting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vydacha]    Script Date: 22.05.2021 9:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vydacha](
	[Id] [int] NOT NULL,
	[DataVydachi] [date] NOT NULL,
	[DataVozvrata] [date] NOT NULL,
	[chitatelyId] [int] NOT NULL,
	[KnigiId] [int] NOT NULL,
 CONSTRAINT [PK_Vydacha] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([Id], [Ylica], [NumberKv], [Town], [NumberDom]) VALUES (1, N'Новая 1', 1, N'', NULL)
INSERT [dbo].[Address] ([Id], [Ylica], [NumberKv], [Town], [NumberDom]) VALUES (2, N' Путина 5', 6, N'', NULL)
INSERT [dbo].[Address] ([Id], [Ylica], [NumberKv], [Town], [NumberDom]) VALUES (3, N'Киевская 1', 1, N'', NULL)
INSERT [dbo].[Address] ([Id], [Ylica], [NumberKv], [Town], [NumberDom]) VALUES (4, N'Авиаторов 5', 4, N'', NULL)
INSERT [dbo].[Address] ([Id], [Ylica], [NumberKv], [Town], [NumberDom]) VALUES (5, N'Смоленская 15', 4, N'', NULL)
INSERT [dbo].[Address] ([Id], [Ylica], [NumberKv], [Town], [NumberDom]) VALUES (6, N'Ленина 8', 1, N'', NULL)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Avtory] ON 

INSERT [dbo].[Avtory] ([Id], [FirstName], [LastName]) VALUES (1, N'Михаил', N'Булгаков ')
INSERT [dbo].[Avtory] ([Id], [FirstName], [LastName]) VALUES (2, N' Эрика', N'Джаеймс ')
INSERT [dbo].[Avtory] ([Id], [FirstName], [LastName]) VALUES (3, N'Джоджо ', N'Мойес ')
INSERT [dbo].[Avtory] ([Id], [FirstName], [LastName]) VALUES (4, N'Дэвид ', N'Грегори')
INSERT [dbo].[Avtory] ([Id], [FirstName], [LastName]) VALUES (5, N'Макс ', N'Фрай ')
INSERT [dbo].[Avtory] ([Id], [FirstName], [LastName]) VALUES (6, N'Гиллиан ', N'Флинн ')
SET IDENTITY_INSERT [dbo].[Avtory] OFF
GO
SET IDENTITY_INSERT [dbo].[Chitately] ON 

INSERT [dbo].[Chitately] ([Id], [FirstName], [LastName], [PassportS], [PassportN], [NumberPhone], [AddressId], [ReitingId]) VALUES (7, N'Иван', N'Иванов', N'1011', N'111112 ', N'89520543632  ', 1, 1)
INSERT [dbo].[Chitately] ([Id], [FirstName], [LastName], [PassportS], [PassportN], [NumberPhone], [AddressId], [ReitingId]) VALUES (8, N'Сергей ', N'Петров ', N'1371 ', N'641254 ', N'89654440231   ', 2, 2)
INSERT [dbo].[Chitately] ([Id], [FirstName], [LastName], [PassportS], [PassportN], [NumberPhone], [AddressId], [ReitingId]) VALUES (9, N'Светлана ', N'Кривчик ', N'1621 ', N'544847 ', N'8521441451   ', 3, 3)
INSERT [dbo].[Chitately] ([Id], [FirstName], [LastName], [PassportS], [PassportN], [NumberPhone], [AddressId], [ReitingId]) VALUES (10, N'Анна ', N'Петрова ', N'1021 ', N'222222 ', N'89111645215   ', 4, 4)
INSERT [dbo].[Chitately] ([Id], [FirstName], [LastName], [PassportS], [PassportN], [NumberPhone], [AddressId], [ReitingId]) VALUES (11, N'Андрей ', N'Жильцов ', N'1215 ', N'421032 ', N'89478263154   ', 5, 5)
INSERT [dbo].[Chitately] ([Id], [FirstName], [LastName], [PassportS], [PassportN], [NumberPhone], [AddressId], [ReitingId]) VALUES (12, N'Катерина ', N'Степанова ', N'1210 ', N'326142', N'89011154577  ', 6, 6)
SET IDENTITY_INSERT [dbo].[Chitately] OFF
GO
SET IDENTITY_INSERT [dbo].[Izdatelstva] ON 

INSERT [dbo].[Izdatelstva] ([Id], [Izdatelstvo], [Town], [Indexx], [eMail], [site]) VALUES (1, N'Эксмо ', N'Москва ', N'6565656 ', N'eksmo@mail.ru ', N'eksmo.ru')
INSERT [dbo].[Izdatelstva] ([Id], [Izdatelstvo], [Town], [Indexx], [eMail], [site]) VALUES (2, N'Россия ', N'СанктПетербург ', N'9848454 ', N'Russia@ya.ru', N'Russia.com')
INSERT [dbo].[Izdatelstva] ([Id], [Izdatelstvo], [Town], [Indexx], [eMail], [site]) VALUES (3, N'Буква ', N'Смоленск ', N'9878545 ', N'bukva@mail.ru', N'Bukva.com')
INSERT [dbo].[Izdatelstva] ([Id], [Izdatelstvo], [Town], [Indexx], [eMail], [site]) VALUES (4, N'Издат ', N'Псков ', N'9145588 ', N'Izdat@mail.ru', N'Izdat.net')
SET IDENTITY_INSERT [dbo].[Izdatelstva] OFF
GO
SET IDENTITY_INSERT [dbo].[Knigi] ON 

INSERT [dbo].[Knigi] ([Id], [Nazvanie], [GodVypuska], [KolichestvoKnig], [PriseId], [IzdatelstvaId], [AvtorId]) VALUES (1, N'Мастер и Маргарита Булгаков', 2011, 150, 1, 1, 1)
INSERT [dbo].[Knigi] ([Id], [Nazvanie], [GodVypuska], [KolichestvoKnig], [PriseId], [IzdatelstvaId], [AvtorId]) VALUES (12, N' 50 оттенков серого', 2012, 200, 2, 2, 2)
INSERT [dbo].[Knigi] ([Id], [Nazvanie], [GodVypuska], [KolichestvoKnig], [PriseId], [IzdatelstvaId], [AvtorId]) VALUES (18, N'До встречи с тобой', 2013, 252, 3, 3, 3)
INSERT [dbo].[Knigi] ([Id], [Nazvanie], [GodVypuska], [KolichestvoKnig], [PriseId], [IzdatelstvaId], [AvtorId]) VALUES (19, N'Шантарам ', 2013, 236, 4, 4, 4)
SET IDENTITY_INSERT [dbo].[Knigi] OFF
GO
SET IDENTITY_INSERT [dbo].[Price] ON 

INSERT [dbo].[Price] ([Id], [PriceKnigi]) VALUES (1, 300.0000)
INSERT [dbo].[Price] ([Id], [PriceKnigi]) VALUES (2, 350.0000)
INSERT [dbo].[Price] ([Id], [PriceKnigi]) VALUES (3, 300.0000)
INSERT [dbo].[Price] ([Id], [PriceKnigi]) VALUES (4, 400.0000)
INSERT [dbo].[Price] ([Id], [PriceKnigi]) VALUES (5, 500.0000)
INSERT [dbo].[Price] ([Id], [PriceKnigi]) VALUES (6, 500.0000)
INSERT [dbo].[Price] ([Id], [PriceKnigi]) VALUES (7, 500.0000)
SET IDENTITY_INSERT [dbo].[Price] OFF
GO
SET IDENTITY_INSERT [dbo].[Reiting] ON 

INSERT [dbo].[Reiting] ([Id], [ReitingChitatelya]) VALUES (1, N'3')
INSERT [dbo].[Reiting] ([Id], [ReitingChitatelya]) VALUES (2, N'5')
INSERT [dbo].[Reiting] ([Id], [ReitingChitatelya]) VALUES (3, N'1')
INSERT [dbo].[Reiting] ([Id], [ReitingChitatelya]) VALUES (4, N'2')
INSERT [dbo].[Reiting] ([Id], [ReitingChitatelya]) VALUES (5, N'3')
INSERT [dbo].[Reiting] ([Id], [ReitingChitatelya]) VALUES (6, N'4')
SET IDENTITY_INSERT [dbo].[Reiting] OFF
GO
ALTER TABLE [dbo].[Chitately]  WITH CHECK ADD  CONSTRAINT [FK_Chitately_Address] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Chitately] CHECK CONSTRAINT [FK_Chitately_Address]
GO
ALTER TABLE [dbo].[Chitately]  WITH CHECK ADD  CONSTRAINT [FK_Chitately_Reiting] FOREIGN KEY([ReitingId])
REFERENCES [dbo].[Reiting] ([Id])
GO
ALTER TABLE [dbo].[Chitately] CHECK CONSTRAINT [FK_Chitately_Reiting]
GO
ALTER TABLE [dbo].[Knigi]  WITH CHECK ADD  CONSTRAINT [FK_Knigi_Avtory] FOREIGN KEY([AvtorId])
REFERENCES [dbo].[Avtory] ([Id])
GO
ALTER TABLE [dbo].[Knigi] CHECK CONSTRAINT [FK_Knigi_Avtory]
GO
ALTER TABLE [dbo].[Knigi]  WITH CHECK ADD  CONSTRAINT [FK_Knigi_Izdatelstva] FOREIGN KEY([IzdatelstvaId])
REFERENCES [dbo].[Izdatelstva] ([Id])
GO
ALTER TABLE [dbo].[Knigi] CHECK CONSTRAINT [FK_Knigi_Izdatelstva]
GO
ALTER TABLE [dbo].[Knigi]  WITH CHECK ADD  CONSTRAINT [FK_Knigi_Price] FOREIGN KEY([PriseId])
REFERENCES [dbo].[Price] ([Id])
GO
ALTER TABLE [dbo].[Knigi] CHECK CONSTRAINT [FK_Knigi_Price]
GO
ALTER TABLE [dbo].[Vydacha]  WITH CHECK ADD  CONSTRAINT [FK_Vydacha_Chitately] FOREIGN KEY([chitatelyId])
REFERENCES [dbo].[Chitately] ([Id])
GO
ALTER TABLE [dbo].[Vydacha] CHECK CONSTRAINT [FK_Vydacha_Chitately]
GO
ALTER TABLE [dbo].[Vydacha]  WITH CHECK ADD  CONSTRAINT [FK_Vydacha_Knigi] FOREIGN KEY([KnigiId])
REFERENCES [dbo].[Knigi] ([Id])
GO
ALTER TABLE [dbo].[Vydacha] CHECK CONSTRAINT [FK_Vydacha_Knigi]
GO
