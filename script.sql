USE [DIPLOM6]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22.06.2023 12:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 22.06.2023 12:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizations]    Script Date: 22.06.2023 12:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[LegalAddress] [nvarchar](max) NOT NULL,
	[INN] [nvarchar](max) NOT NULL,
	[KPP] [nvarchar](max) NOT NULL,
	[Owner] [nvarchar](max) NOT NULL,
	[MailingAddress] [nvarchar](max) NOT NULL,
	[NumberPhone] [nvarchar](max) NOT NULL,
	[BankAccountNumber] [nvarchar](max) NOT NULL,
	[OGRN] [nvarchar](max) NOT NULL,
	[OKATO] [nvarchar](max) NOT NULL,
	[OKPO] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Organizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PictureProducts]    Script Date: 22.06.2023 12:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PictureProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Picture] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PictureProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 22.06.2023 12:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[PictureProductId] [int] NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[Guarantee] [nvarchar](max) NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[CategorieId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 22.06.2023 12:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[DateOfСreation] [datetime2](7) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 22.06.2023 12:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleProducts]    Script Date: 22.06.2023 12:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Article] [nvarchar](max) NOT NULL,
	[DateOfSale] [datetime2](7) NOT NULL,
	[Income] [decimal](18, 2) NOT NULL,
	[Profit] [decimal](18, 2) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ЕmployeesId] [int] NOT NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_SaleProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleServices]    Script Date: 22.06.2023 12:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleServices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Article] [nvarchar](max) NOT NULL,
	[DateOfSale] [datetime2](7) NOT NULL,
	[Income] [decimal](18, 2) NOT NULL,
	[Profit] [decimal](18, 2) NOT NULL,
	[ServiceId] [int] NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[ЕmployeesiD] [int] NOT NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_SaleServices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 22.06.2023 12:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CostPerHour] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 22.06.2023 12:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[MiddleName] [nvarchar](max) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Еmployees]    Script Date: 22.06.2023 12:51:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Еmployees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[MiddleName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Еmployees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230602204105_start', N'6.0.5')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Title]) VALUES (1, N'Бухгалтерия')
INSERT [dbo].[Categories] ([Id], [Title]) VALUES (2, N'Зарплата и управление персоналом')
INSERT [dbo].[Categories] ([Id], [Title]) VALUES (3, N'Торговля')
INSERT [dbo].[Categories] ([Id], [Title]) VALUES (4, N'Отраслевые решения')
INSERT [dbo].[Categories] ([Id], [Title]) VALUES (5, N'Лицензии')
INSERT [dbo].[Categories] ([Id], [Title]) VALUES (6, N'Управление компанией')
INSERT [dbo].[Categories] ([Id], [Title]) VALUES (7, N'Некоммерческие организации')
INSERT [dbo].[Categories] ([Id], [Title]) VALUES (8, N'Наши разработки, доработки, интеграции')
INSERT [dbo].[Categories] ([Id], [Title]) VALUES (10, N'Bnvcbn')
INSERT [dbo].[Categories] ([Id], [Title]) VALUES (11, N'Gsagas')
INSERT [dbo].[Categories] ([Id], [Title]) VALUES (13, N'Sdfgf')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Organizations] ON 

INSERT [dbo].[Organizations] ([Id], [Title], [LegalAddress], [INN], [KPP], [Owner], [MailingAddress], [NumberPhone], [BankAccountNumber], [OGRN], [OKATO], [OKPO]) VALUES (1, N'ООО "Альфа-Омега"', N'обл. Ростовская, г. Волгодонск, ул. Береговая, д. 19', N'25695362587', N'256412369', N'Сизова Эмилия Глебовна', N'Ростовская область, Городской округ город Волгодонск, Город Волгодонск, Улица Береговая, Дом 19, 347369', N'89996968580', N'50977526600000007717', N'1547852300082', N'60412000000', N'000325006')
INSERT [dbo].[Organizations] ([Id], [Title], [LegalAddress], [INN], [KPP], [Owner], [MailingAddress], [NumberPhone], [BankAccountNumber], [OGRN], [OKATO], [OKPO]) VALUES (2, N'ООО "Топ-Компания"', N' обл. Ростовская, г. Волгодонск, ул. Апрельская, д. 12', N'5003650098', N'245006005', N'Алексеев Александр Даниилович', N'Ростовская область, Городской округ город Волгодонск, Город Волгодонск, Улица Апрельская, Дом 12, 347386', N'89281145517', N'40844339900000006708', N'5000650036025', N'60412000000', N'900050640')
INSERT [dbo].[Organizations] ([Id], [Title], [LegalAddress], [INN], [KPP], [Owner], [MailingAddress], [NumberPhone], [BankAccountNumber], [OGRN], [OKATO], [OKPO]) VALUES (3, N'ООО "КапиталИнвест"', N' обл. Ростовская, г. Волгодонск, ул. М.Горького, д.5', N'4002596325', N'400006523', N'Григорьева Амина Денисовна', N'Ростовская область, Городской округ город Волгодонск, Город Волгодонск, Улица М.Горького, Дом 107, 347386', N'89885695862', N'40844339900000006708', N'5000650036025', N'60412000000', N'900050640')
INSERT [dbo].[Organizations] ([Id], [Title], [LegalAddress], [INN], [KPP], [Owner], [MailingAddress], [NumberPhone], [BankAccountNumber], [OGRN], [OKATO], [OKPO]) VALUES (4, N'ООО "РазвитиеДела"', N'обл. Ростовская, г. Волгодонск, ул. Платова, д. 3а', N'2033654789', N'112553669', N'Соколов Михаил Михайлович', N'Ростовская область, Городской округ город Волгодонск, Город Волгодонск, Улица Платова, Дом 3а, 347382', N'89965845236', N'40995362500004785', N'5000650036025', N'60412000000', N'000325006')
INSERT [dbo].[Organizations] ([Id], [Title], [LegalAddress], [INN], [KPP], [Owner], [MailingAddress], [NumberPhone], [BankAccountNumber], [OGRN], [OKATO], [OKPO]) VALUES (5, N'ООО "Вектор-Сервер"', N'обл. Ростовская, г. Волгодонск, ш. Октябрьское, д. 23л', N'58800365840', N'45503695', N'Клюева Варвара Глебовна', N'Ростовская область, Городской округ город Волгодонск, Город Волгодонск, Шоссе Октябрьское, Дом 23л, 347380', N'89287456859', N'40995000036254785', N'5000650036025', N'60412000000', N'000325006')
SET IDENTITY_INSERT [dbo].[Organizations] OFF
GO
SET IDENTITY_INSERT [dbo].[PictureProducts] ON 

INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (1, N'NonPicture.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (2, N'product_1.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (3, N'product_2.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (4, N'product_3.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (5, N'product_4.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (6, N'product_5.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (7, N'product_6.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (8, N'product_7.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (9, N'product_8.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (10, N'product_9.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (11, N'product_10.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (12, N'product_11.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (13, N'product_12.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (14, N'product_13.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (15, N'product_14.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (16, N'product_15.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (17, N'product_16.png')
INSERT [dbo].[PictureProducts] ([Id], [Picture]) VALUES (18, N'product_80.png')
SET IDENTITY_INSERT [dbo].[PictureProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (1, N'Версия ПРОФ', N'Включает учет торговых операций, кассовых и банковских операций, заработной платы, персонифицированный и кадровый учет, что позволяет автоматизировать самые трудоемкие и сложные расчеты. Также программа обеспечивает подготовку регламентированной отчетности, подходит для любой системы налогообложения.', 2, CAST(2142455.00 AS Decimal(18, 2)), N'1', CAST(5.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (2, N'КОРП', N'Разработана как юридических лиц, так и для индивидуальных предпринимателей. Поддерживает многопользовательский режим, подойдет для организаций со сложной архитектурой внутренних подразделений, в которых предусмотрен учет по нескольким организациям или территориально распределенным базам данных.', 2, CAST(33600.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (3, N'Базовая версия', N'Имеет удобный и понятный интерфейс, настройки не требуют знаний и основ программирования. Многие трудоемкие процессы можно автоматизировать, это позволяет экономить время и избегать ошибок. Программа облегчает работу бухгалтера, обладает всем необходимым функционалом для ведения бухучета компании, при этом стоимость решения невысокая.', 2, CAST(17000.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (4, N'Комплект на 5 пользователей', N'При покупке 1С:Бухгалтерия 8. Комплект на 5 пользователей Вы экономите по сравнению с покупкой отдельно 1С Бухгалтерия 8 ПРОФ и лицензий на 5 рабочих мест.', 2, CAST(20000.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (5, N'КОРП', N'Некоммерческой организации дозволено вести предпринимательскую деятельность. Такого рода деятельность облагается налогами, в связи с этим в программе она учитывается отдельно, в соответствие с требованиями НК РФ.', 4, CAST(43200.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (6, N'ПРОФ', N'Программа включает в себя платформу «1С:Предприятие 8.3» и конфигурацию «Бухгалтерия некоммерческой организации». Она разработана в соответствии с Приказом Минфина РФ “Об утверждении плана счетов бухгалтерского учета финансово-хозяйственной деятельности организаций и инструкции по его применению” от 31.10.2000 № 94н.', 5, CAST(42560.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (7, N'СНТ. Базовая версия', N'Решение “1С:Бухгалтерия СНТ” предназначено для автоматизации бухгалтерского и налогового учета, включая подготовку обязательной (регламентированной) отчетности в садоводческих/огороднических некоммерческих товариществах, дачных кооперативах, коттеджных поселках и гаражно-строительных (гаражных) кооперативах (ГСК), ведущих учет в качестве некоммерческой организации.', 6, CAST(15500.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (8, N'Упрощенка 8', N'Программный продукт «1С Упрощенка 8» – это однопользовательская, специализированная поставка конфигурации «1С:Бухгалтерия 8. Базовая версия» для простого и комфортного ведения бухгалтерского и налогового учета по УСН, а также для подготовки регламентированной отчетности.', 7, CAST(5400.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (9, N'КОРП', N'С программы 1С:Зарплата и управление персоналом 8 КОРП проще организовать выполнение всех поставленных задач точно и в срок по процессам работы с персоналом: автоматизирование расчетов зарплаты работникам, процессы менеджмента сотрудниками и учет HR состава.', 8, CAST(100900.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (10, N'ПРОФ', N'Данное типовое решение разработано, в первую очередь, для кадровых служб и предприятий ведущих бухгалтерию, учет регламента и расчет с сотрудниками.', 8, CAST(22600.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (11, N'Базовая версия', N'Данная программа – это готовое решение с широким функционалом. Её не нужно адаптировать к особенностям конкретного предприятия, а также можно самому осуществлять настройки различных методик без знания языков программирования.', 8, CAST(8100.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (12, N'Розница', N'(отсутвует)', 9, CAST(3600.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (13, N'Управление торговлей', N'Решение позволяет формировать различные виды аналитических отчетов, проводить комплексный анализ эффективности торговой деятельности и планировать торговые операции предприятия, а также управлять продажами, заказами, поставками, товарооборотом и складскими запасами.', 10, CAST(22600.00 AS Decimal(18, 2)), N'1', CAST(50.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (14, N'Базовая версия', N'Прикладное решение 1С:Управление торговлей 8. Базовая версия поддерживает возможность формирования различных отчетов: по объему и динамике продаж, по финансовому состоянию организации, по анализу чистой прибыли, которые в дальнейшем можно использовать для проведения общего анализа торговой деятельности организации.', 10, CAST(7200.00 AS Decimal(18, 2)), N'1', CAST(70.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (15, N'КАМИН:Кадры бюджетного учреждения', N'Программный продукт “1С-КАМИН:Кадры бюджетного учреждения. Версия 5.5” это выделенный интерфейс “рабочее место кадровика” в программе “1С-КАМИН:Зарплата для бюджетных учреждений. Версия 5.5”.', 6, CAST(8000.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (16, N'Салон красоты', N'Осуществляет автоматизацию учета и управления как сетей так и одиночные салонов красоты, маникюрных и массажных салонов, студий загаров и парикмахерских.', 13, CAST(25000.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (17, N'Автосервис', N'Является отраслевым решением для автоматизации управления работой небольших автосервисов, автомоек, станций технического обслуживания автомобилей.', 11, CAST(28000.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (18, N'Библиотека', N'Программа для автоматизации деятельности библиотек любого типа и назначения.', 12, CAST(30000.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (19, N'ПРОФ. Клиентская лицензия на рабочие места', N'Дополнительные клиентские лицензии предполагают организацию работы нужного количества пользователей и подразделяются на разное количество рабочих мест: 1, 5, 10, 20, 50, 100, 300 или 500.', 14, CAST(6300.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (20, N'Расширенная Корпоративная Лицензия', N'«1С:Предприятие 8. Расширенная Корпоративная Лицензия» (далее 1С:РКЛ) оформляется на определенный срок, в течение которого можно использовать версии и релизы платформы «1С:Предприятие 8 КОРП», выпущенные до окончания действия 1С:РКЛ.', 6, CAST(300000.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (21, N'ПРОФ. Лицензия на сервер', N'Подходит для использования клиент-серверного варианта работы на предприятиях среднего и крупного бизнеса. Для компаний, которым требуется действительно большое количество рабочих мест мы рекомендуем версию лицензии на сервер уровня КОРП. Они имеют более широкие возможности управления, включая управление нагрузкой на серверное оборудование.', 6, CAST(50400.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (22, N'Комплексная автоматизация', N'Данная программа – это готовое решение с широким функционалом. Её не нужно адаптировать к особенностям конкретного предприятия, а также можно самому осуществлять настройки различных методик без знания языков программирования.', 15, CAST(61700.00 AS Decimal(18, 2)), N'1', CAST(90.00 AS Decimal(18, 2)), 6)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (23, N'Управление нашей фирмой', N'Готовое комплексное решение для предприятий малого бизнеса. В программе реализованы все необходимые операции для нефискального учета, анализа, планирования и контроля. ', 16, CAST(17400.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 6)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (24, N'Автоматическое исключение строк из документа «Формирование записей книги покупок» для 1С:Бухгалтерии', N'Автоматическое исключение строк из документа «Формирование записей книги покупок» по тем отгрузкам, на основании которых нет проведенной реализации огруженных товаров. Нужно при долгих отгрузках товаров пока не перешло право собственности.', 17, CAST(16800.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 8)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (25, N'Отчет «Инвентаризационная ведомость с фото»', N'Удобный отчет для 1С:Бухгалтерии Инвентаризационная ведомость с фотографиями основных средств, и малоценных инструментов Для чего нужен: Для кладовщиков чтобы визуально удобнее было проводить инвентаризацию и понимать как выглядит тот или иной ценный объект. Есть ограничения по качеству изображений.', 17, CAST(9600.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 8)
INSERT [dbo].[Products] ([Id], [Title], [Description], [PictureProductId], [Cost], [Guarantee], [Discount], [CategorieId]) VALUES (26, N'Путевые листы для 1С: Бухгалтерия сельскохозяйственного предприятия', N'Доработка через изменение конфигурации: Путевые листы для 1С: Бухгалтерия сельскохозяйственного предприятия, добавлена печатная форма Трактора, гос номер прицепа, виды топлива, водительские удостоверения, изменение логики подсчета топлива, остатка в баке.', 17, CAST(7800.00 AS Decimal(18, 2)), N'1', CAST(0.00 AS Decimal(18, 2)), 8)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Reports] ON 

INSERT [dbo].[Reports] ([Id], [Title], [DateOfСreation], [UserId]) VALUES (1, N'Продажа 1', CAST(N'2023-03-23T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Reports] ([Id], [Title], [DateOfСreation], [UserId]) VALUES (2, N'Продажа 2', CAST(N'2023-03-24T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Reports] ([Id], [Title], [DateOfСreation], [UserId]) VALUES (3, N'Продажа 6', CAST(N'2023-03-25T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Reports] ([Id], [Title], [DateOfСreation], [UserId]) VALUES (9, N'Продажа 5', CAST(N'2023-06-22T11:32:13.4786711' AS DateTime2), 6)
SET IDENTITY_INSERT [dbo].[Reports] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Title]) VALUES (1, N'Глав. бухгалтер')
INSERT [dbo].[Roles] ([Id], [Title]) VALUES (2, N'Бухгалтер')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[SaleProducts] ON 

INSERT [dbo].[SaleProducts] ([Id], [Article], [DateOfSale], [Income], [Profit], [OrganizationId], [ProductId], [ЕmployeesId], [UserId]) VALUES (1, N'00002', CAST(N'2023-03-23T00:00:00.0000000' AS DateTime2), CAST(5400.00 AS Decimal(18, 2)), CAST(2700.00 AS Decimal(18, 2)), 1, 3, 1, 2)
INSERT [dbo].[SaleProducts] ([Id], [Article], [DateOfSale], [Income], [Profit], [OrganizationId], [ProductId], [ЕmployeesId], [UserId]) VALUES (2, N'00003', CAST(N'2023-03-24T00:00:00.0000000' AS DateTime2), CAST(20000.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), 2, 4, 2, 2)
INSERT [dbo].[SaleProducts] ([Id], [Article], [DateOfSale], [Income], [Profit], [OrganizationId], [ProductId], [ЕmployeesId], [UserId]) VALUES (3, N'00004', CAST(N'2023-03-25T00:00:00.0000000' AS DateTime2), CAST(20000.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), 3, 4, 1, 2)
INSERT [dbo].[SaleProducts] ([Id], [Article], [DateOfSale], [Income], [Profit], [OrganizationId], [ProductId], [ЕmployeesId], [UserId]) VALUES (6, N'00008', CAST(N'2023-06-22T11:52:00.2498560' AS DateTime2), CAST(5400.00 AS Decimal(18, 2)), CAST(2700.00 AS Decimal(18, 2)), 4, 8, 6, NULL)
INSERT [dbo].[SaleProducts] ([Id], [Article], [DateOfSale], [Income], [Profit], [OrganizationId], [ProductId], [ЕmployeesId], [UserId]) VALUES (7, N'00008', CAST(N'2023-06-22T11:52:00.2498560' AS DateTime2), CAST(7200.00 AS Decimal(18, 2)), CAST(3600.00 AS Decimal(18, 2)), 4, 14, 6, NULL)
SET IDENTITY_INSERT [dbo].[SaleProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[SaleServices] ON 

INSERT [dbo].[SaleServices] ([Id], [Article], [DateOfSale], [Income], [Profit], [ServiceId], [OrganizationId], [ЕmployeesiD], [UserId]) VALUES (1, N'10001', CAST(N'2023-05-01T00:00:00.0000000' AS DateTime2), CAST(1600.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), 1, 1, 2, 2)
INSERT [dbo].[SaleServices] ([Id], [Article], [DateOfSale], [Income], [Profit], [ServiceId], [OrganizationId], [ЕmployeesiD], [UserId]) VALUES (2, N'10002', CAST(N'2023-05-11T00:00:00.0000000' AS DateTime2), CAST(1232141.00 AS Decimal(18, 2)), CAST(616070.50 AS Decimal(18, 2)), 3, 2, 2, 2)
INSERT [dbo].[SaleServices] ([Id], [Article], [DateOfSale], [Income], [Profit], [ServiceId], [OrganizationId], [ЕmployeesiD], [UserId]) VALUES (3, N'10001', CAST(N'2023-05-15T00:00:00.0000000' AS DateTime2), CAST(1600.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), 1, 3, 2, 2)
INSERT [dbo].[SaleServices] ([Id], [Article], [DateOfSale], [Income], [Profit], [ServiceId], [OrganizationId], [ЕmployeesiD], [UserId]) VALUES (4, N'10001', CAST(N'2023-05-01T00:00:00.0000000' AS DateTime2), CAST(500.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 2, 4, 2, 2)
INSERT [dbo].[SaleServices] ([Id], [Article], [DateOfSale], [Income], [Profit], [ServiceId], [OrganizationId], [ЕmployeesiD], [UserId]) VALUES (5, N'80056', CAST(N'2023-06-22T11:52:00.2499144' AS DateTime2), CAST(1600.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), 1, 4, 4, NULL)
INSERT [dbo].[SaleServices] ([Id], [Article], [DateOfSale], [Income], [Profit], [ServiceId], [OrganizationId], [ЕmployeesiD], [UserId]) VALUES (6, N'80056', CAST(N'2023-06-22T11:52:00.2499144' AS DateTime2), CAST(1600.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), 5, 4, 4, NULL)
SET IDENTITY_INSERT [dbo].[SaleServices] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [Title], [Description], [CostPerHour]) VALUES (1, N'Обслуживание 1С', N'Заботливое отношение, вежливое общение, помощь и поддержка - основа нашего сотрудничества по поддержке Ваших программных продуктов 1С. Решаем различные учетные задачи, своевременно обновляем, пишем дополнительные обработки и отчеты. Настраиваем интеграции с сайтами, Битрикс24, с маркетплейсами,  с телеграммом.', CAST(1600.00 AS Decimal(18, 2)))
INSERT [dbo].[Services] ([Id], [Title], [Description], [CostPerHour]) VALUES (2, N'Запуск 1С', N'Запуск 1С – это серия мероприятий, направленных на то, чтобы 1С в компании заработала.', CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[Services] ([Id], [Title], [Description], [CostPerHour]) VALUES (3, N'Доработка 1С', N'Доработки программ 1С, интеграции с другими программами, разработки подсистем, прав доступа или решений с нуля.', CAST(1232141.00 AS Decimal(18, 2)))
INSERT [dbo].[Services] ([Id], [Title], [Description], [CostPerHour]) VALUES (4, N'Реальная автоматизация 1С', N'Владеем методикой для сокращения издержек и увеличения прибыли с помощью автоматизации. Цель нашей работы — рост эффективности для бизнеса любого размера.', CAST(143430.00 AS Decimal(18, 2)))
INSERT [dbo].[Services] ([Id], [Title], [Description], [CostPerHour]) VALUES (5, N'Техподдержка 1С', N'Поддержка 1С – профессиональное решение вопросов по использованию 1С без ограничения по количеству обращений. За фиксированную абонентскую плату.', CAST(1600.00 AS Decimal(18, 2)))
INSERT [dbo].[Services] ([Id], [Title], [Description], [CostPerHour]) VALUES (6, N'Gfgf', N'Hff', CAST(2444.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Login], [Password], [FirstName], [LastName], [MiddleName], [RoleId]) VALUES (1, N'User1', N'User1', N'Серебрякова', N'Олеся', N'Петровна', 1)
INSERT [dbo].[Users] ([Id], [Login], [Password], [FirstName], [LastName], [MiddleName], [RoleId]) VALUES (2, N'User2', N'User2', N'Касьянова', N'Анна', N'Дмитриевна', 2)
INSERT [dbo].[Users] ([Id], [Login], [Password], [FirstName], [LastName], [MiddleName], [RoleId]) VALUES (3, N'User3', N'User3', N'Леонова', N'Елизавета', N'Алексеевна', 2)
INSERT [dbo].[Users] ([Id], [Login], [Password], [FirstName], [LastName], [MiddleName], [RoleId]) VALUES (4, N'User4', N'User4', N'Попова', N'Мария', N'Матвеевна', 2)
INSERT [dbo].[Users] ([Id], [Login], [Password], [FirstName], [LastName], [MiddleName], [RoleId]) VALUES (6, N'MAri', N'MAri', N'Мария', N'Осипова', N'Данииловна', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Еmployees] ON 

INSERT [dbo].[Еmployees] ([Id], [FirstName], [LastName], [MiddleName]) VALUES (1, N'Серебрякова', N'Олеся', N'Петровна')
INSERT [dbo].[Еmployees] ([Id], [FirstName], [LastName], [MiddleName]) VALUES (2, N'Касьянова', N'Анна', N'Дмитриевна')
INSERT [dbo].[Еmployees] ([Id], [FirstName], [LastName], [MiddleName]) VALUES (3, N'Леонова', N'Елизавета', N'Алексеевна')
INSERT [dbo].[Еmployees] ([Id], [FirstName], [LastName], [MiddleName]) VALUES (4, N'Попова', N'Мария', N'Матвеевна')
INSERT [dbo].[Еmployees] ([Id], [FirstName], [LastName], [MiddleName]) VALUES (6, N'Мария', N'Осипова', N'Данииловна')
INSERT [dbo].[Еmployees] ([Id], [FirstName], [LastName], [MiddleName]) VALUES (7, N'Анжелика', N'Горшунова', N'Олеговна')
INSERT [dbo].[Еmployees] ([Id], [FirstName], [LastName], [MiddleName]) VALUES (8, N'Иван', N'Тоницой', N'Владимирович')
SET IDENTITY_INSERT [dbo].[Еmployees] OFF
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategorieId] FOREIGN KEY([CategorieId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategorieId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_PictureProducts_PictureProductId] FOREIGN KEY([PictureProductId])
REFERENCES [dbo].[PictureProducts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_PictureProducts_PictureProductId]
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_Reports_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_Reports_Users_UserId]
GO
ALTER TABLE [dbo].[SaleProducts]  WITH CHECK ADD  CONSTRAINT [FK_SaleProducts_Organizations_OrganizationId] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SaleProducts] CHECK CONSTRAINT [FK_SaleProducts_Organizations_OrganizationId]
GO
ALTER TABLE [dbo].[SaleProducts]  WITH CHECK ADD  CONSTRAINT [FK_SaleProducts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SaleProducts] CHECK CONSTRAINT [FK_SaleProducts_Products_ProductId]
GO
ALTER TABLE [dbo].[SaleProducts]  WITH CHECK ADD  CONSTRAINT [FK_SaleProducts_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[SaleProducts] CHECK CONSTRAINT [FK_SaleProducts_Users_UserId]
GO
ALTER TABLE [dbo].[SaleProducts]  WITH CHECK ADD  CONSTRAINT [FK_SaleProducts_Еmployees_ЕmployeesId] FOREIGN KEY([ЕmployeesId])
REFERENCES [dbo].[Еmployees] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SaleProducts] CHECK CONSTRAINT [FK_SaleProducts_Еmployees_ЕmployeesId]
GO
ALTER TABLE [dbo].[SaleServices]  WITH CHECK ADD  CONSTRAINT [FK_SaleServices_Organizations_OrganizationId] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SaleServices] CHECK CONSTRAINT [FK_SaleServices_Organizations_OrganizationId]
GO
ALTER TABLE [dbo].[SaleServices]  WITH CHECK ADD  CONSTRAINT [FK_SaleServices_Services_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SaleServices] CHECK CONSTRAINT [FK_SaleServices_Services_ServiceId]
GO
ALTER TABLE [dbo].[SaleServices]  WITH CHECK ADD  CONSTRAINT [FK_SaleServices_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[SaleServices] CHECK CONSTRAINT [FK_SaleServices_Users_UserId]
GO
ALTER TABLE [dbo].[SaleServices]  WITH CHECK ADD  CONSTRAINT [FK_SaleServices_Еmployees_ЕmployeesiD] FOREIGN KEY([ЕmployeesiD])
REFERENCES [dbo].[Еmployees] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SaleServices] CHECK CONSTRAINT [FK_SaleServices_Еmployees_ЕmployeesiD]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles_RoleId]
GO
