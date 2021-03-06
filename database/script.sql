USE [master]
GO
/****** Object:  Database [VegetablesShop]    Script Date: 11/25/2021 2:26:38 PM ******/
CREATE DATABASE [VegetablesShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VegetableShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQL2019EXP\MSSQL\DATA\VegetableShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VegetableShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQL2019EXP\MSSQL\DATA\VegetableShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VegetablesShop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VegetablesShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VegetablesShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VegetablesShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VegetablesShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VegetablesShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VegetablesShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [VegetablesShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VegetablesShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VegetablesShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VegetablesShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VegetablesShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VegetablesShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VegetablesShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VegetablesShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VegetablesShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VegetablesShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VegetablesShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VegetablesShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VegetablesShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VegetablesShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VegetablesShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VegetablesShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VegetablesShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VegetablesShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VegetablesShop] SET  MULTI_USER 
GO
ALTER DATABASE [VegetablesShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VegetablesShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VegetablesShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VegetablesShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VegetablesShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VegetablesShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [VegetablesShop] SET QUERY_STORE = OFF
GO
USE [VegetablesShop]
GO
/****** Object:  Table [dbo].[tblCategories]    Script Date: 11/25/2021 2:26:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategories](
	[categoryID] [int] NOT NULL,
	[categoryName] [nvarchar](100) NOT NULL,
	[categoryImage] [ntext] NULL,
 CONSTRAINT [PK_tblCategories] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetails]    Script Date: 11/25/2021 2:26:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetails](
	[detailID] [varchar](50) NOT NULL,
	[orderID] [varchar](50) NOT NULL,
	[productID] [varchar](50) NOT NULL,
	[detailPrice] [decimal](16, 2) NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_tblOrderDetails] PRIMARY KEY CLUSTERED 
(
	[detailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrders]    Script Date: 11/25/2021 2:26:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrders](
	[orderID] [varchar](50) NOT NULL,
	[userID] [varchar](50) NOT NULL,
	[totalPrice] [decimal](16, 2) NOT NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblOrders] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductAvailable]    Script Date: 11/25/2021 2:26:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductAvailable](
	[availableID] [int] NOT NULL,
	[availableName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblProductAvailable] PRIMARY KEY CLUSTERED 
(
	[availableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProducts]    Script Date: 11/25/2021 2:26:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProducts](
	[productID] [varchar](50) NOT NULL,
	[productName] [nvarchar](120) NOT NULL,
	[productImage] [ntext] NOT NULL,
	[productPrice] [decimal](16, 2) NOT NULL,
	[quantity] [int] NOT NULL,
	[description] [ntext] NOT NULL,
	[availableID] [int] NOT NULL,
	[categoryID] [int] NOT NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblProducts] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoles]    Script Date: 11/25/2021 2:26:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoles](
	[roleID] [int] NOT NULL,
	[roleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblRoles] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblShippingInfo]    Script Date: 11/25/2021 2:26:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblShippingInfo](
	[fullName] [nvarchar](120) NOT NULL,
	[address] [nvarchar](200) NOT NULL,
	[city] [nvarchar](100) NOT NULL,
	[state] [nvarchar](100) NOT NULL,
	[phone] [varchar](22) NOT NULL,
	[note] [ntext] NULL,
	[orderID] [varchar](50) NOT NULL,
	[statusID] [int] NOT NULL,
 CONSTRAINT [PK_tblShippingInfo_1] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblShippingStatus]    Script Date: 11/25/2021 2:26:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblShippingStatus](
	[statusID] [int] NOT NULL,
	[statusName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_tblShippingStatus] PRIMARY KEY CLUSTERED 
(
	[statusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 11/25/2021 2:26:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[userID] [varchar](50) NOT NULL,
	[userName] [nvarchar](120) NOT NULL,
	[userAddress] [nvarchar](200) NOT NULL,
	[userPhone] [varchar](22) NOT NULL,
	[password] [varchar](22) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[email] [varchar](50) NULL,
	[userStatus] [bit] NOT NULL,
	[roleID] [int] NOT NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblCategories] ([categoryID], [categoryName], [categoryImage]) VALUES (1, N'Rau Hữu Cơ', N'1')
INSERT [dbo].[tblCategories] ([categoryID], [categoryName], [categoryImage]) VALUES (2, N'Củ - Quả Hữu Cơ', N'1')
INSERT [dbo].[tblCategories] ([categoryID], [categoryName], [categoryImage]) VALUES (3, N'Nấm - Rau Mầm', N'1')
INSERT [dbo].[tblCategories] ([categoryID], [categoryName], [categoryImage]) VALUES (4, N'Rau Gia Vị', N'1')
INSERT [dbo].[tblCategories] ([categoryID], [categoryName], [categoryImage]) VALUES (5, N'Trái Cây', N'1')
INSERT [dbo].[tblCategories] ([categoryID], [categoryName], [categoryImage]) VALUES (6, N'Các Loại Hạt', NULL)
GO
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'0bff4227-45f6-4f3c-bca9-36235e6f8c20', N'b09c6d5f-bf41-4c9a-b6f5-71631df36af7', N'12462851', CAST(25000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'0da97662-28ed-4185-bcc2-1c781c2c1a66', N'304c94c3-df65-4cdb-a1a6-ac548b9ecff8', N'0568ed9e-b787-415c-9de2-243af6708e2c', CAST(75000.00 AS Decimal(16, 2)), 73)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'1147fcec-f24f-4ffe-ac6f-ee32ca21a021', N'76799ae3-b335-4589-a86b-a3756c1593ce', N'0568ed9e-b787-415c-9de2-243af6708e2c', CAST(75000.00 AS Decimal(16, 2)), 73)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'169cd437-7fc3-4abf-9ab0-a1a42d8c60be', N'673297dc-23d3-458f-98d1-2ed1e7fd114e', N'12462851', CAST(25000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'1a9bd686-10ab-4ee4-a5e7-72b9b7a70dac', N'09346239-1815-4060-a7ca-07a1edcebf64', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'1c886b1c-9296-4a06-b636-021bdabc92c5', N'304c94c3-df65-4cdb-a1a6-ac548b9ecff8', N'12415121', CAST(13000.00 AS Decimal(16, 2)), 8)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'1ff6c133-7a60-4e97-b461-88a5a042716a', N'd175e25b-987d-47f7-8260-57454da8e98a', N'0568ed9e-b787-415c-9de2-243af6708e2c', CAST(75000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'21fd2e82-23ea-415b-87a5-72d48a118ac6', N'5007a6b4-57a8-4430-8393-adf066f2c328', N'16414911', CAST(13500.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'251fdfe6-3a77-49a7-932f-984e5d5d8215', N'd7865b60-2f36-4cfa-be05-5c7de4a3bf5a', N'12518161', CAST(445000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'2c864f31-321f-49b3-9393-5fa5bd0a049c', N'75634846-7890-41f2-84ce-a61361f72ab4', N'12515190', CAST(159000.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'3055ec56-e612-41e9-9e1a-48370040d2ac', N'8706f17d-4c29-4b59-804a-21666a99ed42', N'12462851', CAST(25000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'34a940fa-6022-4fdc-be3b-7ed67f73daa4', N'ff24c954-598b-4aad-95d9-0563cfbd5069', N'12415121', CAST(13000.00 AS Decimal(16, 2)), 0)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'37298949-cc4f-4454-8051-e04d26ac36a0', N'47278c67-93a0-4263-ab8e-0a7fe68f5167', N'12511251', CAST(170000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'378c0fb7-6710-4526-9602-c5fdf33ded67', N'e6b5ff45-efe5-4651-841b-71b21bc50c35', N'12415121', CAST(13000.00 AS Decimal(16, 2)), 0)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'37f8fa9e-a51d-45ff-830e-9e8e55bcae4f', N'00e13e61-8a2b-43c4-8c18-994cb6f38417', N'0db07fdb-558b-4e03-94f5-616f1243024f', CAST(75700.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'3b6a484b-95d8-408e-a1dd-7ff042e5e1ba', N'a8bdf967-048b-4cd3-a721-88550d90bd51', N'12511251', CAST(170000.00 AS Decimal(16, 2)), 4)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'3d51f067-69ff-4e29-8c09-4faed558f22a', N'0e5482de-e2c0-4c11-ae77-c5f14eb02ec8', N'0568ed9e-b787-415c-9de2-243af6708e2c', CAST(75000.00 AS Decimal(16, 2)), 3)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'41cba21e-c735-4db8-a68b-24b72596378a', N'9185e0ee-5075-4bdd-af92-e4be81f6c834', N'12515190', CAST(159000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'43352c5e-f812-4861-8acc-1b0cfea27972', N'84f41282-5a87-46ce-b8ac-cf10367ab892', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 4)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'4b942d1c-617e-49b5-9039-b8882b137a94', N'f4479adf-c04b-41ba-880f-2a23a83a0282', N'16414911', CAST(13500.00 AS Decimal(16, 2)), 11)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'518e7a25-e117-45a6-925d-009810347487', N'57b3610e-c978-4e6e-b714-21e881f552b4', N'12462851', CAST(25000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'529cab51-286d-4d5b-a667-9acd4ddcc03b', N'13386ffa-7d3a-4037-88e3-cb097b69a635', N'12462851', CAST(25000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'560a0177-fd85-4b12-81d9-5326bfd2953d', N'7254029c-351b-4d68-8694-33592af9d401', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 10)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'57df0776-858b-42f8-9d1d-33b5f9b44353', N'96dc5c36-ce24-4acf-b1da-c31f40529585', N'c9851988-c765-4dc5-8c9c-94d7b9659d3a', CAST(88888.00 AS Decimal(16, 2)), 87)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'57e1ee26-4cf1-4be7-9632-2dcadfe7d5d4', N'7747aae1-cfe2-47d1-8548-fc1c09f821fe', N'c9851988-c765-4dc5-8c9c-94d7b9659d3a', CAST(88888.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'5a35e46d-5767-4ade-b2f2-f17ededa8c49', N'b392f327-df61-48a8-bdba-c0f1fb929756', N'0568ed9e-b787-415c-9de2-243af6708e2c', CAST(70000.00 AS Decimal(16, 2)), 0)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'5d22aa33-2baa-45b2-8ada-077649602f77', N'57b3610e-c978-4e6e-b714-21e881f552b4', N'12415121', CAST(13000.00 AS Decimal(16, 2)), 4)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'6156671b-bdf7-4506-9d4e-e65b4d9ed623', N'413703a0-8a14-42b3-be54-47a12687d5c9', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'63747903-9506-4c6a-8891-a71b8f272d9c', N'211bb7bf-f215-463f-bc20-784ce61e0d34', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'6a55f3fa-f28f-4036-8352-27639735e915', N'bae42f58-2082-4122-a1db-8ebe3ed6b9fd', N'0db07fdb-558b-4e03-94f5-616f1243024f', CAST(75700.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'6b778e52-264b-4b97-b2fa-d9c03dc3e444', N'239180c1-c743-4ce2-8538-1a728274735a', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'6f06b4bd-c057-465f-8da0-acb19cd12f0e', N'125495d7-787b-4a2b-8bb5-ad08f213e832', N'12625822', CAST(56000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'72d62e12-0d73-40ae-aa6f-fea126813fb5', N'742a3f19-bfdc-4d64-a7fd-1044daf80e98', N'0568ed9e-b787-415c-9de2-243af6708e2c', CAST(75000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'73789b9a-d20d-4d90-afc7-0592f8c38174', N'38b42d91-9e34-4ba9-84c3-ac11cfc12ae1', N'12462851', CAST(25000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'76550f01-4368-421b-8d50-4d13a5e174af', N'7e7a8bc7-0e58-4342-9cc4-883cd3494d75', N'12516161', CAST(27000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'76fc0352-f8f6-49eb-8ba0-52662bab221d', N'38b42d91-9e34-4ba9-84c3-ac11cfc12ae1', N'0db07fdb-558b-4e03-94f5-616f1243024f', CAST(75700.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'78970b7f-ba93-4229-b1d8-11b698becb56', N'6ddae539-a5f0-4e67-a8e1-52a656db81d3', N'12415121', CAST(13000.00 AS Decimal(16, 2)), 0)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'7a85c3b4-3225-45c3-8167-091a7d2ecb40', N'f4479adf-c04b-41ba-880f-2a23a83a0282', N'65811511', CAST(27500.00 AS Decimal(16, 2)), 12)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'7bdcbb1c-1ba5-4e11-82fb-ab1bb079b701', N'fb56451f-05dd-487c-9340-586f0290ef2f', N'12515190', CAST(159000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'7f2c3e77-42d1-4812-b84f-3b201e727559', N'4cfde3b4-1263-4da7-bcd9-a16c23cb9d0b', N'12415121', CAST(13000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'7fc55248-3fbd-49a5-a64b-2a328496a3fd', N'd8c15d0b-65dc-482e-89e2-5e777e1ab3d9', N'90175911', CAST(190000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'8040a545-3cef-4291-8cd7-beea57c05a08', N'277e925a-ec9f-4189-a436-9f31216135d0', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'8270f541-9070-4155-a7c2-393ae3640746', N'16243021-4853-405e-947d-09ce68347cc4', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 7)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'8aab8956-c493-434a-b743-d60e3ee14639', N'7db9f60f-0822-4d16-8fba-f00032f5f613', N'12415121', CAST(13000.00 AS Decimal(16, 2)), 0)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'8f36c268-0a69-43bf-a472-7921bcaa1d93', N'd76c6f9a-0e52-451f-b8c0-0367941cfc6f', N'12415121', CAST(13000.00 AS Decimal(16, 2)), 6)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'90f4cba3-c50d-4c63-a0c5-6a9e39587a81', N'cbf126a7-b532-4c77-bb77-779591c10a6b', N'24524655', CAST(45000.00 AS Decimal(16, 2)), 10)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'914332ff-941b-48c9-a9e2-52832c34b256', N'1c02b25a-864d-4566-8cef-8b31194e45d0', N'12582581', CAST(70000.00 AS Decimal(16, 2)), 20)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'91c2f321-b93c-4e10-8f95-a62f047ee607', N'1fb1901e-322d-4247-bd57-5b073de124ea', N'12515190', CAST(159000.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'94014683-e246-4de0-94e5-7d30687fc99e', N'f7e0298c-913e-44fc-a22a-ebaf2474d88a', N'12415121', CAST(13000.00 AS Decimal(16, 2)), 3)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'95bcc5f2-06cb-4bf2-9b0c-bf740a1d2b9f', N'7cdc63a7-230d-4b07-8295-d48a4638de82', N'0568ed9e-b787-415c-9de2-243af6708e2c', CAST(70000.00 AS Decimal(16, 2)), 0)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'969753e3-b46c-40ae-8ee6-7112d7dfc293', N'cbf126a7-b532-4c77-bb77-779591c10a6b', N'12582581', CAST(70000.00 AS Decimal(16, 2)), 10)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'9d593102-3040-435f-8792-543132f333e1', N'23daa83e-e3d5-4d78-b5f1-8bc434ad6715', N'12625822', CAST(56000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'a07573d1-554c-4116-923f-26ea5428f630', N'32cbe23d-406e-4a93-8f57-d0c24f43d339', N'12415121', CAST(13000.00 AS Decimal(16, 2)), 0)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'a26fcca9-bb1c-4bba-a3aa-9d3f4a764edb', N'838ef53b-ac1b-4d0a-a363-9d67b4d5a6c1', N'12462851', CAST(25000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'a6bd5fd4-9bb6-495c-8392-2c6bbf410db2', N'57b3610e-c978-4e6e-b714-21e881f552b4', N'0568ed9e-b787-415c-9de2-243af6708e2c', CAST(70000.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'a7d25336-84b7-4d6d-9a8f-d0d75e47e5b7', N'ba5cd1fa-1b90-48cc-9d5d-f7272edc9458', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'af53a0ca-2bbb-4a6b-9bc2-7ca21bd861a3', N'00a7f4e3-c3be-44d4-afaf-8c03a57d5344', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 10)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'afc69073-f256-4327-a60e-9ed936687742', N'c9eda6ac-1540-4a62-8ca2-b6e739511c08', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'b309c784-9bfb-4112-9b7d-67c4b676ad88', N'f7e0298c-913e-44fc-a22a-ebaf2474d88a', N'12462851', CAST(25000.00 AS Decimal(16, 2)), 3)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'bd9be55d-6f71-434a-a4ce-db7c9ed8b617', N'097145b1-ce3e-482e-a386-81b24e8136e0', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'bdfa22f5-ad73-4707-ac4f-47b8a03e4ba9', N'0e5482de-e2c0-4c11-ae77-c5f14eb02ec8', N'12415121', CAST(13000.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'be0cdfe4-f2fd-48b2-a3de-2321de6f1a4f', N'b6090ebb-051a-4365-9f7a-d41a077a6ffc', N'12415121', CAST(13000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'bf343cf9-7cd0-4b58-9780-e6f89123bf12', N'00a7f4e3-c3be-44d4-afaf-8c03a57d5344', N'12582581', CAST(70000.00 AS Decimal(16, 2)), 50)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'bf8395ad-2dab-48db-8c8b-c123e5e44f6f', N'5bbd948d-ac4a-4f4d-b8bd-b67f2920ac30', N'0568ed9e-b787-415c-9de2-243af6708e2c', CAST(70500.00 AS Decimal(16, 2)), 4)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'c1251058-463f-4ffd-81e2-89926162163b', N'939539a4-85c5-4011-9b9d-8b7bea665204', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'c4de34ab-621e-42a2-86dd-27bbc0660d5c', N'cbf126a7-b532-4c77-bb77-779591c10a6b', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'c84e5364-e9ea-4982-97d3-a39a40be9849', N'85961556-1678-474a-91a0-98f7bcb391ac', N'12415121', CAST(13000.00 AS Decimal(16, 2)), 0)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'ca4aa57a-d93f-4727-a925-e67feefe5b4d', N'c68594dd-a456-4eb2-b569-96cf3f1a9e9a', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 7)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'caae8a8c-7ba2-40ff-95a2-decceaf37450', N'431b9b14-6c58-4163-a7f3-3816105be3e8', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'cf9f1bed-a8b1-4802-bc64-fd513765ee03', N'1c02b25a-864d-4566-8cef-8b31194e45d0', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 10)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'd01f3f2a-1bb8-4b24-948c-de638c7c3348', N'0ed6a21b-684d-4c1a-9dfb-a2ce63d9c2f2', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 10)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'd0eb8aa9-bbde-4598-aa3a-f31acc8cc58b', N'4cfde3b4-1263-4da7-bcd9-a16c23cb9d0b', N'12462851', CAST(25000.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'd1f3b07c-f1de-48ac-b82e-2ff21eb42d4d', N'a8bdf967-048b-4cd3-a721-88550d90bd51', N'12515161', CAST(155000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'df3fa4f6-e3b9-4e36-a0a6-406d413e827d', N'7e7a8bc7-0e58-4342-9cc4-883cd3494d75', N'16414911', CAST(13500.00 AS Decimal(16, 2)), 6)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'e024885c-3c02-499d-9d82-476014ccee4b', N'9185e0ee-5075-4bdd-af92-e4be81f6c834', N'12625822', CAST(56000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'e2234c5e-f9b8-4a3f-8655-e101a848bb9a', N'4a674240-08af-4984-beba-da233704415c', N'18218951', CAST(227000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'e3c34d35-a087-4f3a-addd-50290327efd2', N'7e7a8bc7-0e58-4342-9cc4-883cd3494d75', N'12515190', CAST(159000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'e6ef671f-25f1-4ffc-af40-ee8a1cd48750', N'76d925fb-7077-40ed-a5d6-c2dd2d182600', N'12415121', CAST(13000.00 AS Decimal(16, 2)), 10)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'eae267fa-9d77-470c-839f-67107d638bee', N'9185e0ee-5075-4bdd-af92-e4be81f6c834', N'15815119', CAST(139000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'ebd13222-fed0-40d4-a14b-f6069c5edbfe', N'b3083bbb-9a41-4ae9-94d2-d82107775147', N'12415121', CAST(13000.00 AS Decimal(16, 2)), 0)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'ed9f9184-bc81-4e8c-9305-ff29c08b1919', N'19b51625-7584-40d3-bc9f-d59464e0483c', N'12462851', CAST(25000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'f05a341b-c0b6-4a4f-b048-760cd2bbd264', N'22d769f4-289c-4540-aa5d-61464b63c9a4', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'f1023d72-56f5-4734-9c7a-b57f8b583a04', N'23daa83e-e3d5-4d78-b5f1-8bc434ad6715', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'f376b490-9e2c-4fd5-b75d-6a9eee7fca78', N'304c94c3-df65-4cdb-a1a6-ac548b9ecff8', N'12515161', CAST(155000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'f4ac0b56-2f8a-4eb0-bdbe-0db38519e3bb', N'9185e0ee-5075-4bdd-af92-e4be81f6c834', N'18218951', CAST(227000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'faa9988e-7e8c-4c7a-a03a-187557654eea', N'1fb1901e-322d-4247-bd57-5b073de124ea', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'fc3155eb-dc7f-4f92-b4ff-7ffa1abe4f79', N'4a674240-08af-4984-beba-da233704415c', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 10)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'fdb3e85b-d62a-41ff-ba95-ebcbb7c3c8e8', N'3028758a-9ade-4eb9-bbc5-56f68bac6525', N'12462851', CAST(25000.00 AS Decimal(16, 2)), 8)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'ff60683b-2108-492c-b803-9c16c9d584a7', N'e4b65b78-1bbc-4245-b30c-5515b77a169a', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 20)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'ff912818-ac69-4e17-848a-f6c1f6bd8788', N'1dbf67bd-96d2-4b62-9da6-3c3e9b1e2932', N'12582581', CAST(70000.00 AS Decimal(16, 2)), 10)
GO
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'00a7f4e3-c3be-44d4-afaf-8c03a57d5344', N'anhlh', CAST(8490000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:16:00.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'00e13e61-8a2b-43c4-8c18-994cb6f38417', N'minhvd', CAST(151400.00 AS Decimal(16, 2)), CAST(N'2021-11-09T13:02:15.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'09346239-1815-4060-a7ca-07a1edcebf64', N'voducminh140201@gmail.com', CAST(499000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T23:07:24.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'097145b1-ce3e-482e-a386-81b24e8136e0', N'voducminh140201@gmail.com', CAST(499000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T14:56:04.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'0e5482de-e2c0-4c11-ae77-c5f14eb02ec8', N'minhvd', CAST(251000.00 AS Decimal(16, 2)), CAST(N'2021-10-19T14:53:35.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'0ed6a21b-684d-4c1a-9dfb-a2ce63d9c2f2', N'ngoclh', CAST(4990000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:32:51.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'125495d7-787b-4a2b-8bb5-ad08f213e832', N'voducminh140201@gmail.com', CAST(280000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T12:59:27.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'13386ffa-7d3a-4037-88e3-cb097b69a635', N'minhvd', CAST(25000.00 AS Decimal(16, 2)), CAST(N'2021-10-29T23:28:28.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'16243021-4853-405e-947d-09ce68347cc4', N'voducminh140201@gmail.com', CAST(3493000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:04:00.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'19b51625-7584-40d3-bc9f-d59464e0483c', N'voducminh140201@gmail.com', CAST(25000.00 AS Decimal(16, 2)), CAST(N'2021-10-06T18:26:33.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'1c02b25a-864d-4566-8cef-8b31194e45d0', N'anhlh', CAST(6390000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:14:07.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'1dbf67bd-96d2-4b62-9da6-3c3e9b1e2932', N'anhlh', CAST(700000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:23:06.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'1fb1901e-322d-4247-bd57-5b073de124ea', N'voducminh140201@gmail.com', CAST(817000.00 AS Decimal(16, 2)), CAST(N'2021-10-17T18:25:04.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'211bb7bf-f215-463f-bc20-784ce61e0d34', N'minhvd', CAST(499000.00 AS Decimal(16, 2)), CAST(N'2021-10-17T14:59:35.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'22d769f4-289c-4540-aa5d-61464b63c9a4', N'voducminh140201@gmail.com', CAST(2495000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T14:44:13.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'239180c1-c743-4ce2-8538-1a728274735a', N'anhlh', CAST(499000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T22:25:15.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'23daa83e-e3d5-4d78-b5f1-8bc434ad6715', N'voducminh140201@gmail.com', CAST(1054000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T23:06:06.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'277e925a-ec9f-4189-a436-9f31216135d0', N'minhvd', CAST(499000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:19:31.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'2a9966df-87d0-4056-8c2a-444885e5504f', N'minhvd', CAST(998000.00 AS Decimal(16, 2)), CAST(N'2021-10-06T03:42:29.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'2b7bf546-2232-4ea7-9622-1a94e4b5f7e5', N'minhvd', CAST(70000.00 AS Decimal(16, 2)), CAST(N'2021-10-06T03:44:22.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'3028758a-9ade-4eb9-bbc5-56f68bac6525', N'minhvd', CAST(200000.00 AS Decimal(16, 2)), CAST(N'2021-10-14T16:41:56.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'304c94c3-df65-4cdb-a1a6-ac548b9ecff8', N'minhvd', CAST(5734000.00 AS Decimal(16, 2)), CAST(N'2021-10-19T14:52:03.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'32cbe23d-406e-4a93-8f57-d0c24f43d339', N'minhvd', CAST(0.00 AS Decimal(16, 2)), CAST(N'2021-10-19T15:15:08.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'38b42d91-9e34-4ba9-84c3-ac11cfc12ae1', N'voducminh140201@gmail.com', CAST(100700.00 AS Decimal(16, 2)), CAST(N'2021-11-09T15:13:20.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'413703a0-8a14-42b3-be54-47a12687d5c9', N'voducminh140201@gmail.com', CAST(499000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T15:02:32.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'431b9b14-6c58-4163-a7f3-3816105be3e8', N'voducminh140201@gmail.com', CAST(2495000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T15:15:58.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'47278c67-93a0-4263-ab8e-0a7fe68f5167', N'voducminh140201@gmail.com', CAST(170000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T00:24:33.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'4a674240-08af-4984-beba-da233704415c', N'voducminh140201@gmail.com', CAST(6125000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:09:18.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'4cfde3b4-1263-4da7-bcd9-a16c23cb9d0b', N'minhvd', CAST(63000.00 AS Decimal(16, 2)), CAST(N'2021-10-22T16:42:53.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'5007a6b4-57a8-4430-8393-adf066f2c328', N'voducminh140201@gmail.com', CAST(13500.00 AS Decimal(16, 2)), CAST(N'2021-10-07T23:08:40.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'57b3610e-c978-4e6e-b714-21e881f552b4', N'minhvd', CAST(217000.00 AS Decimal(16, 2)), CAST(N'2021-10-22T16:39:48.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'5bbd948d-ac4a-4f4d-b8bd-b67f2920ac30', N'minhvd', CAST(282000.00 AS Decimal(16, 2)), CAST(N'2021-10-30T01:05:24.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'673297dc-23d3-458f-98d1-2ed1e7fd114e', N'minhvd', CAST(25000.00 AS Decimal(16, 2)), CAST(N'2021-10-06T17:16:40.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'6ddae539-a5f0-4e67-a8e1-52a656db81d3', N'minhvd', CAST(0.00 AS Decimal(16, 2)), CAST(N'2021-10-19T15:05:55.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'7254029c-351b-4d68-8694-33592af9d401', N'ngoclh', CAST(4990000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:31:11.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'742a3f19-bfdc-4d64-a7fd-1044daf80e98', N'minhvd', CAST(75000.00 AS Decimal(16, 2)), CAST(N'2021-10-18T23:57:55.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'75634846-7890-41f2-84ce-a61361f72ab4', N'voducminh140201@gmail.com', CAST(318000.00 AS Decimal(16, 2)), CAST(N'2021-10-06T18:34:52.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'76799ae3-b335-4589-a86b-a3756c1593ce', N'minhvd', CAST(5475000.00 AS Decimal(16, 2)), CAST(N'2021-10-18T15:55:39.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'76d925fb-7077-40ed-a5d6-c2dd2d182600', N'minhvd', CAST(130000.00 AS Decimal(16, 2)), CAST(N'2021-10-24T16:25:46.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'7747aae1-cfe2-47d1-8548-fc1c09f821fe', N'huanbx', CAST(88888.00 AS Decimal(16, 2)), CAST(N'2021-11-09T13:43:41.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'7cdc63a7-230d-4b07-8295-d48a4638de82', N'minhvd', CAST(0.00 AS Decimal(16, 2)), CAST(N'2021-10-23T00:44:10.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'7db9f60f-0822-4d16-8fba-f00032f5f613', N'minhvd', CAST(0.00 AS Decimal(16, 2)), CAST(N'2021-10-19T15:06:44.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'7e7a8bc7-0e58-4342-9cc4-883cd3494d75', N'minhvd', CAST(1011000.00 AS Decimal(16, 2)), CAST(N'2021-10-06T04:32:52.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'838ef53b-ac1b-4d0a-a363-9d67b4d5a6c1', N'minhvd', CAST(25000.00 AS Decimal(16, 2)), CAST(N'2021-10-30T19:27:04.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'84f41282-5a87-46ce-b8ac-cf10367ab892', N'anhlh', CAST(1996000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:20:57.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'85961556-1678-474a-91a0-98f7bcb391ac', N'minhvd', CAST(0.00 AS Decimal(16, 2)), CAST(N'2021-10-19T15:05:55.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'8706f17d-4c29-4b59-804a-21666a99ed42', N'minhvd', CAST(25000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:17:12.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'891bd4e2-3222-4b4a-845b-847088d78717', N'minhvd', CAST(13500.00 AS Decimal(16, 2)), CAST(N'2021-10-06T03:47:33.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'9185e0ee-5075-4bdd-af92-e4be81f6c834', N'minhvd', CAST(581000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:37:27.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'939539a4-85c5-4011-9b9d-8b7bea665204', N'voducminh140201@gmail.com', CAST(998000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T12:56:36.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'96dc5c36-ce24-4acf-b1da-c31f40529585', N'minhvd', CAST(7733256.00 AS Decimal(16, 2)), CAST(N'2021-11-09T13:45:46.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'a8bdf967-048b-4cd3-a721-88550d90bd51', N'voducminh140201@gmail.com', CAST(1455000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T00:26:25.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'b09c6d5f-bf41-4c9a-b6f5-71631df36af7', N'minhvd', CAST(25000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:17:48.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'b3083bbb-9a41-4ae9-94d2-d82107775147', N'minhvd', CAST(0.00 AS Decimal(16, 2)), CAST(N'2021-10-19T15:14:07.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'b392f327-df61-48a8-bdba-c0f1fb929756', N'minhvd', CAST(0.00 AS Decimal(16, 2)), CAST(N'2021-10-23T00:45:22.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'b6090ebb-051a-4365-9f7a-d41a077a6ffc', N'minhvd', CAST(13000.00 AS Decimal(16, 2)), CAST(N'2021-10-18T18:29:00.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'ba5cd1fa-1b90-48cc-9d5d-f7272edc9458', N'voducminh140201@gmail.com', CAST(499000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T15:04:05.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'bae42f58-2082-4122-a1db-8ebe3ed6b9fd', N'minhvd', CAST(151400.00 AS Decimal(16, 2)), CAST(N'2021-11-02T10:30:17.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'c68594dd-a456-4eb2-b569-96cf3f1a9e9a', N'ngoclh', CAST(3493000.00 AS Decimal(16, 2)), CAST(N'2021-10-20T19:15:19.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'c9eda6ac-1540-4a62-8ca2-b6e739511c08', N'voducminh140201@gmail.com', CAST(2495000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T14:43:37.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'cbf126a7-b532-4c77-bb77-779591c10a6b', N'anhlh', CAST(3645000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:11:35.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'd175e25b-987d-47f7-8260-57454da8e98a', N'anhlh', CAST(75000.00 AS Decimal(16, 2)), CAST(N'2021-10-18T16:32:57.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'd76c6f9a-0e52-451f-b8c0-0367941cfc6f', N'minhvd', CAST(78000.00 AS Decimal(16, 2)), CAST(N'2021-10-19T15:17:50.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'd7865b60-2f36-4cfa-be05-5c7de4a3bf5a', N'anhlh', CAST(445000.00 AS Decimal(16, 2)), CAST(N'2021-10-18T23:58:53.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'd8c15d0b-65dc-482e-89e2-5e777e1ab3d9', N'minhvd', CAST(190000.00 AS Decimal(16, 2)), CAST(N'2021-10-17T21:55:37.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'e4b65b78-1bbc-4245-b30c-5515b77a169a', N'voducminh140201@gmail.com', CAST(9980000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:27:12.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'e6b5ff45-efe5-4651-841b-71b21bc50c35', N'minhvd', CAST(0.00 AS Decimal(16, 2)), CAST(N'2021-10-19T15:05:03.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'f4479adf-c04b-41ba-880f-2a23a83a0282', N'minhvd', CAST(478500.00 AS Decimal(16, 2)), CAST(N'2021-10-06T12:59:51.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'f7e0298c-913e-44fc-a22a-ebaf2474d88a', N'minhvd', CAST(114000.00 AS Decimal(16, 2)), CAST(N'2021-10-29T20:41:08.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'fb56451f-05dd-487c-9340-586f0290ef2f', N'minhvd', CAST(159000.00 AS Decimal(16, 2)), CAST(N'2021-10-14T16:46:37.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'ff24c954-598b-4aad-95d9-0563cfbd5069', N'minhvd', CAST(0.00 AS Decimal(16, 2)), CAST(N'2021-10-19T15:10:00.000' AS DateTime))
GO
INSERT [dbo].[tblProductAvailable] ([availableID], [availableName]) VALUES (1, N'Available')
INSERT [dbo].[tblProductAvailable] ([availableID], [availableName]) VALUES (2, N'Not Available')
INSERT [dbo].[tblProductAvailable] ([availableID], [availableName]) VALUES (3, N'Coming Soon')
INSERT [dbo].[tblProductAvailable] ([availableID], [availableName]) VALUES (4, N'SALE')
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'0568ed9e-b787-415c-9de2-243af6708e2c', N'Bánh Đậu Xanh - 500g', N'https://i.imgur.com/b81gdOx.jpg', CAST(70500.00 AS Decimal(16, 2)), 0, N'<p>Trong h&agrave;ng chục loại b&aacute;nh đậu l&agrave; đặc sản của <strong>Hải Dương</strong>, th&igrave; thương hiệu b&aacute;nh đậu xanh <em><strong>Ấn V&agrave;ng</strong></em> l&agrave; một trong những loại b&aacute;nh được người d&ugrave;ng tin tưởng lựa chọn nhiều nhất.</p>
<p>Mang trong m&igrave;nh một n&eacute;t ri&ecirc;ng, b&aacute;nh <strong>đậu xanh kh&ocirc;ng chỉ được người d&acirc;n địa phương lựa chọn m&agrave;</strong> c&ograve;n l&agrave; một trong những đặc sản mua l&agrave;m qu&agrave; biếu đối với kh&aacute;ch du lịch mỗi khi c&oacute; dịp gh&eacute; thăm Hải Dương.</p>
<p>Mỗi loại b&aacute;nh đậu th&igrave; c&oacute; một hương vị ri&ecirc;ng, tuy nhi&ecirc;n ở thương hiệu Ấn V&agrave;ng chứa đựng bản sắc d&acirc;n tộc, c&ocirc;ng thức gia truyền được lưu lại h&agrave;ng trăm năm. Nguy&ecirc;n liệu l&agrave;m b&aacute;nh lu&ocirc;n được lựa <strong>chọn kỹ c&agrave;ng v&agrave; tinh t&uacute;y với mục đ&iacute;ch đem lại gi&aacute; trị tuyệt vời trong từng miếng b&aacute;nh.</strong></p>', 2, 1, CAST(N'2021-10-18T12:21:19.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'0db07fdb-558b-4e03-94f5-616f1243024f', N'Hạt Dẻ - 300g', N'https://i.imgur.com/aTHt5pK.jpg', CAST(75700.00 AS Decimal(16, 2)), 0, N'<p><strong>Hạt dẻ</strong> c&ograve;n gọi l&agrave; sơn hạch đ&agrave;o, l&agrave; hạt của c&acirc;y dẻ c&oacute; t&ecirc;n khoa học l&agrave; Castanea Mollissima, thuộc họ Sồi (fagaceae). Th&agrave;nh phần chủ yếu của hạt dẻ gồm c&oacute; tinh bột, protein, lipit, c&aacute;c vitamin B1, B2, C v&agrave; c&aacute;c kho&aacute;ng chất.</p>
<p>Th&ocirc;ng thường, c&aacute;c loại hạt kh&ocirc; thường c&oacute; lượng calo lớn, nhưng với hạt dẻ, thay v&igrave; chứa nhiều chất b&eacute;o với h&agrave;m lượng calo cao th&igrave; n&oacute; lại l&agrave; loại hạt kh&ocirc; chứa nhiều vitamin, kho&aacute;ng chất, tinh bột, chất xơ v&agrave; nhiều th&agrave;nh phần dinh dưỡng kh&aacute;c.</p>', 2, 1, CAST(N'2021-10-30T00:39:48.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'12415121', N'Rau Kinh Giới Hữu Cơ - 50g', N'https://i.imgur.com/1lB7rJ4.jpg', CAST(13000.00 AS Decimal(16, 2)), 0, N'<p><strong>Rau kinh giới</strong> hữu cơ rất gi&agrave;u vitamin v&agrave; kho&aacute;ng chất, kh&ocirc;ng chỉ l&agrave; gia vị m&agrave; c&ograve;n c&oacute; t&aacute;c dụng chữa trị rất nhiều bệnh.</p>
<p><strong>Đặc biệt n&oacute; c&oacute; khả năng điều trị nhiều loại bệnh,</strong> kh&aacute;ng khuẩn v&agrave; chống oxy h&oacute;a, kinh giới gi&uacute;p chữa tr&uacute;ng phong, cấm khẩu, chữa dị ứng , cảm lạnh&hellip;</p>', 2, 1, CAST(N'2020-07-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'12462851', N'Rau Hẹ Hữu Cơ - 100g', N'https://i.imgur.com/1O59nQP.jpg', CAST(25000.00 AS Decimal(16, 2)), 9, N'<p><strong>Rau hẹ</strong> c&oacute; t&aacute;c dụng chữa được ngứa ghẻ, ch&iacute;n m&eacute;, nhiễm tr&ugrave;ng da bằng c&aacute;ch đắp l&aacute; gi&atilde; nhỏ l&ecirc;n vết thương; kh&aacute;ng vi&ecirc;m diệt khuẩn ok,&hellip;</p>
<p><strong>Ngo&agrave;i ra c&ograve;n c&oacute; t&aacute;c dụng chữa bệnh:</strong> Hỗ trợ điều trị đ&aacute;i th&aacute;o đường,nhuận tr&agrave;ng, trị <strong>t&aacute;o b&oacute;n</strong>,chữa ho trẻ em do cảm lạnh,gi&uacute;p bổ mắt,tiểu đường,..</p>', 1, 3, CAST(N'2021-02-12T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'12511251', N'Bánh Quy Ngũ Cốc Hạt Socola Hữu Cơ Bisson - 200g', N'https://i.imgur.com/DIG83Az.jpg', CAST(170000.00 AS Decimal(16, 2)), 51, N'<p><strong>B&aacute;nh quy chocolate Ph&aacute;p Martin Bio</strong> B&aacute;nh thơm ngon, gi&ograve;n, hương vị b&eacute;o ngậy vị s&ocirc; c&ocirc; la đen hấp dẫn người d&ugrave;ng.</p>
<p>C&oacute; thể d&ugrave;ng trực tiếp, chấm sữa tươi hoặc sử dụng khi uống tr&agrave;. Ph&ugrave; hợp cho gia đ&igrave;nh, đi d&atilde; ngoại, đi học, đi l&agrave;m.....</p>
<p>Thương hiệu b&aacute;nh quy nổi tiếng của Ph&aacute;p, qu&ecirc; hương của c&aacute;c loại b&aacute;nh ngọt phổ biến.</p>', 1, 1, CAST(N'2021-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'12515161', N'Bơ Sáp 034 Hữu Cơ - 1kg', N'https://i.imgur.com/MAc321N.png', CAST(155000.00 AS Decimal(16, 2)), 9, N'<p>Bơ s&aacute;p giống 034 được trồng theo phương ph&aacute;p hữu cơ, kh&ocirc;ng ph&acirc;n b&oacute;n ho&aacute; học, k&iacute;ch th&iacute;ch tăng trưởng v&agrave; chất độc hại. Cơm v&agrave;ng ươm, b&eacute;o, dẻo, h&agrave;m lượng dinh dưỡng cao Tr&aacute;i bơ c&oacute; chứa hơn 14 loại vitamin v&agrave; kho&aacute;ng chất bao gồm canxi, sắt, đồng, magi&ecirc;, phốtpho, kali, natri, kẽm mangan v&agrave; selen. L&agrave; một trong rất &iacute;t loại tr&aacute;i kh&ocirc;ng c&oacute; cholesterol, m&agrave; lại c&oacute; chứa chất b&eacute;o đơn kh&ocirc;ng bảo h&ograve;a, đ&acirc;y l&agrave; loại chất b&eacute;o tốt cho cơ thể gi&uacute;p l&agrave;m gi&atilde;m h&agrave;m lượng cholesterol. Tr&aacute;i bơ c&oacute; chứa h&agrave;m lượng protein cao nhất so với c&aacute;c loại quả kh&aacute;c, cao gần như tương đương với sữa. Gi&aacute; trị l&agrave;m đẹp trong bơ c&oacute; gi&agrave;u vitamin A, E, D c&ugrave;ng với c&aacute;c kho&aacute;ng chất kali, phốtpho, lưu huỳnh v&agrave; clo l&agrave;m mịn da, chống l&atilde;o h&oacute;a, th&uacute;c đẩy việc sản xuất chất collagen.</p>', 1, 1, CAST(N'2020-03-18T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'12515190', N'Bánh Quy Hương Chanh Và Hạt Lanh Hữu Cơ Bisson - 190g', N'https://i.imgur.com/23vJ43c.jpg', CAST(159000.00 AS Decimal(16, 2)), 14, N'<p><strong>B&aacute;nh quy gi&ograve;n</strong> được bổ sung th&ecirc;m hạt lanh, c&ugrave;ng hương chanh dịu m&aacute;t sẽ cho bạn một bữa ăn năng lượng.</p>
<p>Hạt lanh chứa rất nhiều: - omega-3: gi&uacute;p chống vi&ecirc;m v&agrave; bảo vệ sức khỏe tim mạch - lignan: chống oxy h&oacute;a v&agrave; ngăn ngừa bệnh ung thư - chất xơ: hỗ trợ ti&ecirc;u h&oacute;a.</p>
<p>B&aacute;nh quy sẽ ngon hơn khi bạn kết hợp với sữa tạo th&agrave;nh một bữa s&aacute;ng/bữa xế ngon l&agrave;nh. B&aacute;nh được chứng nhận hữu cơ EU, chứng nhận vegan - ph&ugrave; hợp với người ăn chay.</p>', 1, 1, CAST(N'2020-12-04T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'12515619', N'Giỏ Quà Tri Ân 20/11', N'https://i.imgur.com/1S8Wb0U.jpg', CAST(499000.00 AS Decimal(16, 2)), 0, N'<p>Mừng ng&agrave;y lễ nh&agrave; gi&aacute;o Việt Nam 20/11, Organicfood ra mắt giỏ qu&agrave;</p>', 2, 1, CAST(N'2017-06-28T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'12516161', N'Ngò Rí Hữu Cơ - 100g', N'https://i.imgur.com/0K7ppGL.jpg', CAST(27000.00 AS Decimal(16, 2)), 8, N'<p><strong>C&acirc;y ng&ograve; r&iacute; (m&ugrave;i t&agrave;u)</strong> l&agrave; một loại gia vị quen thuộc trong bữa cơm. Đ&ocirc;ng y c&ograve;n sử dụng ng&ograve; r&iacute; l&agrave;m vị thuốc trị 10 chứng bệnh hay gặp như ti&ecirc;u chảy, lo&eacute;t miệng, thi&ecirc;u m&aacute;u... Kh&ocirc;ng chỉ l&agrave; loại gia vị gi&uacute;p m&oacute;n ăn trở n&ecirc;n thơm ngon hơn, ng&ograve; r&iacute; (hay c&ograve;n gọi l&agrave; ng&ograve; ta hoặc rau m&ugrave;i) c&ograve;n mang lại nhiều lợi &iacute;ch cho sức khỏe. Thường xuy&ecirc;n ăn ng&ograve; r&iacute; giảm thiểu lượng cholesterol xấu</p>', 1, 1, CAST(N'2018-07-08T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'12518161', N'Cherry New Zealand 500g Size 30', N'https://i.imgur.com/kwhXJgz.jpg', CAST(445000.00 AS Decimal(16, 2)), 0, N'<p>Cherry l&agrave; nguồn vitamin A tuyệt vời, l&agrave; loại tr&aacute;i c&acirc;y gi&agrave;u chất sắt, chất xơ cao, kh&ocirc;ng cholesterol v&agrave; Natri, tốt cho hệ miễn dịch, ti&ecirc;u h&oacute;a v&agrave; l&agrave;m đẹp da. Cherry chống oxy h&oacute;a rất tốt cho tim mạch, gi&uacute;p bảo vệ cơ thể chống lại bệnh ung thư v&agrave; n&oacute; hoạt động như một loại thuốc giảm đau v&agrave; giảm vi&ecirc;m cho c&aacute;c bệnh nh&acirc;n g&uacute;t v&agrave; khớp. Cherry chứa melatonin &ndash; một chất gi&uacute;p điều h&ograve;a giấc ngủ n&ecirc;n n&oacute; c&oacute; thể gi&uacute;p ngủ ngon. Cherry cũng l&agrave; một m&oacute;n ăn nhẹ tốt cho sức khỏe m&agrave; trẻ em y&ecirc;u th&iacute;ch. Cherry được v&iacute; l&agrave; &ldquo;Kim cương của hoa quả&rdquo;, ch&iacute;nh l&agrave; một thực phẩm qu&yacute; kh&aacute;ch cần bổ sung v&agrave;o thực đơn của m&igrave;nh.</p>', 2, 1, CAST(N'2021-01-19T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'12582581', N'Bắp Nếp Hữu Cơ - 1kg', N'https://i.imgur.com/AJyvXoi.jpg', CAST(70000.00 AS Decimal(16, 2)), 31, N'<p>Bắp nếp l&agrave; một loại ngũ cốc dễ ăn, dễ trồng được mệnh danh l&agrave; Ngọc Mễ (Hạt ngọc qu&yacute;) đối với người Việt xưa. Khi m&agrave; x&atilde; hội ng&agrave;y c&agrave;ng ph&aacute;t triển, nhiều loại hạt v&agrave; ngũ cốc được khoa học chứng minh về mức độ dinh dưỡng c&ugrave;ng khả năng ph&ograve;ng chống bệnh tật, bắp nếp cũng l&agrave; một trong những loại tr&aacute;i c&acirc;y như thế. Tuy nhi&ecirc;n, đa phần người Việt ng&agrave;y nay đều chưa hiểu hết được gi&aacute; trị loại ngũ cốc n&agrave;y, chỉ xem đ&oacute; như một chất tinh bột cần ki&ecirc;ng khem m&agrave; kh&ocirc;ng biết bắp nếp l&agrave; một loại ngũ cốc c&oacute; rất nhiều c&ocirc;ng dụng như: - Hỗ trợ đường ti&ecirc;u h&oacute;a - Gi&agrave;u vitamin v&agrave; kho&aacute;ng chất - Ngăn ngừa thiếu m&aacute;u - Kiểm so&aacute;t đường huyết &hellip;. B&ecirc;n cạnh những m&oacute;n ăn quen thuộc như x&ocirc;i bắp, bắp nếp x&agrave;o t&ocirc;m kh&ocirc;, bắp hầm&hellip;, sữa bắp nếp cũng l&agrave; m&oacute;n được nhiều chị em ưa chuộng nhờ v&agrave;o hương vị ngọt b&ugrave;i tự nhi&ecirc;n v&agrave; phương ph&aacute;p chế biến v&agrave; bảo quản tương đối đơn giản.</p>', 1, 1, CAST(N'2019-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'12586185', N'Bơ Booth Hữu Cơ 1kg', N'https://i.imgur.com/JaNEUgb.jpg', CAST(98000.00 AS Decimal(16, 2)), 0, N'<p>Trong v&agrave;i năm gần đ&acirc;y người ti&ecirc;u d&ugrave;ng Việt dần quen với một giống Bơ cực ngon được trồng tại Đắk Lăk. Kh&ocirc;ng chỉ cho chất lượng ổn định: &iacute;t sượng, &iacute;t thối m&agrave; c&ograve;n mang lại hương vị nhiều phần kh&aacute;c biệt. Người ta đ&aacute;nh gi&aacute; Bơ Booth c&oacute; cơm kh&ocirc; v&agrave; dẻo hơn đ&aacute;ng kể so với bơ S&aacute;p thường, đồng thời khi ăn cảm nhận r&otilde; vị ngọt ngậy nổi bật, chỉ b&oacute;c ăn kh&ocirc;ng đ&atilde; ngon rồi chứ chưa cần th&ecirc;m đường, th&ecirc;m sữa. Đặc biệt m&ugrave;a Bơ Booth từ th&aacute;ng 9-11, tức l&agrave; muộn hơn 2 th&aacute;ng so với Bơ S&aacute;p, khiến n&oacute; đ&atilde; ngon nay lại th&ecirc;m phần qu&yacute; hiếm. T&aacute;c dụng của việc ăn bơ: Quả bơ chứa khoảng 25 loại vitamin v&agrave; kho&aacute;ng chất tự nhi&ecirc;n tốt cho sức khỏe: Ở những người huyết &aacute;p kh&ocirc;ng ổn định Bơ gi&uacute;p ổn định huyết &aacute;p, những người c&oacute; nguy cơ b&eacute;o ph&igrave; Bo gi&uacute;p kiểm so&aacute;t c&acirc;n nặng, với tất cả mọi người thường xuy&ecirc;n ăn bơ th&igrave; Bơ gi&uacute;p ngăn ngừa ung thư, Với c&aacute;c chị em phụ nữ, c&aacute;c mẹ th&igrave; việc ăn Bơ thường xuy&ecirc;n gi&uacute;p duy tr&igrave; l&agrave;n da khỏe mạnh.... v&agrave; c&ograve;n rất nhiều t&aacute;c dụng tuyệt vời m&agrave; việc ăn bở đem lại nữa.</p>', 2, 1, CAST(N'2020-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'12625822', N'Mộc Nhĩ Khô Hữu Cơ - Gói 70g', N'https://i.imgur.com/ZfJlHdu.png', CAST(56000.00 AS Decimal(16, 2)), 19, N'<p>Mộc nhĩ l&agrave; một loại thực vật thuộc nh&agrave; nấm ch&uacute;ng thường mọc tr&ecirc;n th&acirc;n c&acirc;y đ&atilde; chết hoặc ở tr&ecirc;n những c&acirc;y c&oacute; t&aacute;n l&aacute; rộng. Đ&acirc;y l&agrave; lo&agrave;i k&yacute; sinh tr&ugrave;ng ưa kh&iacute; hậu ẩm ướt, mưa nhiều n&ecirc;n ph&aacute;t triển mạnh ở c&aacute;c nước Ch&acirc;u &Aacute;, Th&aacute;i B&igrave;nh Dương. Mọc Nhĩ l&agrave; một c&aacute;i tr&ecirc;n kh&ocirc;ng c&ograve;n xa lạ trong ẩm thực Việt, ch&uacute;ng được sử dụng l&agrave;m nguy&ecirc;n liệu trong rất nhiều m&oacute;n ăn ngon. Tạo n&eacute;t độc đ&aacute;o v&agrave; hương vị ri&ecirc;ng cho ẩm thực văn h&oacute;a Việt Nam.</p>', 1, 1, CAST(N'2017-05-29T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'12645128', N'Nấm Kim Châm Hàn Quốc - 500g', N'https://i.imgur.com/nGiuMxh.jpg', CAST(27000.00 AS Decimal(16, 2)), 42, N'<p>Nấm kim ch&acirc;m l&agrave; một lo&agrave;i nấm m&agrave;u trắng được sử dụng trong ẩm thực c&aacute;c nước ch&acirc;u &Aacute; như H&agrave;n Quốc, Nhật Bản, Triều Ti&ecirc;n. Loại nấm n&agrave;y theo truyền thống được sử dụng nấu m&oacute;n lẩu, nhưng cũng c&oacute; thể được sử dụng cho m&oacute;n salad v&agrave; c&aacute;c m&oacute;n ăn kh&aacute;c. 100 gram nấm kim ch&acirc;m cung cấp: 36 kcal, 3mg Natri, 359mg Kali, 8mg Carbohydrate, 2,7g Chất xơ, 0,2g Đường, 2,7g Protein, 1,2mg Sắt, 0,1mg Vitamin B6, 16mg magie. Nấm kim ch&acirc;m chứa nhiều lysine rất cần cho qu&aacute; tr&igrave;nh sinh trưởng, cải thiện chiều cao v&agrave; tr&iacute; tuệ trẻ em. Bạn c&oacute; thể chế biến nấm kim ch&acirc;m th&agrave;nh nhiều m&oacute;n ăn ngon như: nh&uacute;ng lẩu, cuộn thịt b&ograve;, nấu ch&aacute;o,...</p>', 1, 1, CAST(N'2020-10-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'12686525', N'Rau Rocket Arugula Hữu Cơ - Hộp 100g', N'https://i.imgur.com/kuImtmF.jpg', CAST(57700.00 AS Decimal(16, 2)), 17, N'<p>Rau rocket hay c&ograve;n gọi l&agrave; cải l&ocirc;ng, l&agrave; một nguy&ecirc;n liệu tuyệt vời cho m&oacute;n salad trộn. Vị cay cay c&ugrave;ng độ hăng tự nhi&ecirc;n gi&uacute;p c&aacute;c m&oacute;n ăn từ loại rau n&agrave;y trở n&ecirc;n đặc biệt hơn bao giờ hết. Ngo&agrave;i hương vị thơm ngon, rocket c&ograve;n lại một loại rau gi&agrave;u chất dinh dưỡng, c&oacute; t&aacute;c dụng: - Ngừa ung thư - Hỗ trợ giảm c&acirc;n - Bảo vệ n&atilde;o - Lọc m&aacute;u, ngừa tổn thương gan - Giảm vi&ecirc;m - Hỗ trợ xương chắc khỏe .</p>', 1, 1, CAST(N'2021-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'15815119', N'Bơ Hạt Điều Có Hạt Đạt Butter - 150g', N'https://i.imgur.com/uXkLjJ9.png', CAST(139000.00 AS Decimal(16, 2)), 15, N'<p>Bơ điều tự nhi&ecirc;n c&oacute; hạt (150g) | Cashew Butter Made Crunchy (150g) - Th&ocirc;ng tin sản phẩm: Bơ điều dạng hạt hướng hữu cơ được sản xuất bởi Đạt Butter bằng nguy&ecirc;n liệu tự nhi&ecirc;n, đảm bảo an to&agrave;n cho sức khỏe người ti&ecirc;u d&ugrave;ng. Bơ điều dạng hạt được xay kh&ocirc;ng nhuyễn ho&agrave;n to&agrave;n m&agrave; c&ograve;n ở dạng hạt nhỏ, kh&ocirc;ng đồng đều nhau. Nguy&ecirc;n liệu sử dụng để xay l&agrave; 99% hạt điều nguy&ecirc;n chất c&ugrave;ng với 1% muối v&agrave; kh&ocirc;ng c&oacute; bất cứ chất h&oacute;a học, chất bảo quản n&agrave;o trong sản phẩm. Bơ điều dạng hạt c&oacute; m&agrave;u v&agrave;ng tươi v&agrave; c&oacute; những hạt nhỏ, c&oacute; thể d&ugrave;ng ăn liền hoặc chế biến c&aacute;c m&oacute;n ăn. - Lợi &iacute;ch của sản phẩm: ◾ Cung cấp năng lượng ◾ Ngăn ngừa thiếu m&aacute;u ◾ Cung cấp chất b&eacute;o cần thiết, tốt cho tim mạch ◾ Nguồn chất chống oxy h&oacute;a tuyệt vời - C&aacute;ch bảo quản: Sau khi mở nắp th&igrave; thời gian lưu trữ sản phẩm l&agrave; 6 th&aacute;ng kể từ ng&agrave;y sản xuất, nếu: Đảm bảo bơ hạt điều được m&uacute;c, khuấy bằng dụng cụ sạch v&agrave; sau khi sử dụng kh&aacute;ch h&agrave;ng vui l&ograve;ng đ&oacute;ng chặt nắp lại v&agrave; lưu trữ sản phẩm ở nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng mặt trời (nếu kh&ocirc;ng c&oacute; tủ lạnh).</p>', 1, 1, CAST(N'2021-04-05T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'15816196', N'Bơ Sáp Giống Cổ 1Kg', N'https://i.imgur.com/jxunI0H.jpg', CAST(160000.00 AS Decimal(16, 2)), 0, N'<p>Bơ DakLak tại Organic được chọn lựa kỹ c&agrave;ng từ ch&iacute;nh n&ocirc;ng trại của Organic, đảm bảo sạch, kh&ocirc;ng h&oacute;a chất, kh&ocirc;ng thuốc tăng trưởng, c&aacute;c chất l&agrave;m biến đổi gen. C&oacute; nhiều size theo c&acirc;n nặng, đ&aacute;p ứng đủ c&aacute;c nhu cầu của kh&aacute;ch h&agrave;ng,&hellip; Bơ tr&aacute;i to, thịt bơ b&eacute;o ngậy, ruột v&agrave;ng hấp dẫn,&hellip;</p>', 2, 1, CAST(N'2021-01-19T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'16414911', N'Húng Quế Hữu Cơ - 50g', N'https://i.imgur.com/OXSdcQ0.jpg', CAST(13500.00 AS Decimal(16, 2)), 178, N'<p>C&acirc;y h&uacute;ng quế l&agrave; một loại thảo dược thuộc họ bạc h&agrave; c&oacute; vị cay, t&iacute;nh n&oacute;ng được d&ugrave;ng l&agrave;m gia vị cho c&aacute;c m&oacute;n ăn v&agrave; cũng mang lại nhiều lợi &iacute;ch về sức khỏe. Một số người c&ograve;n d&ugrave;ng nước c&acirc;y h&uacute;ng quế để s&uacute;c miệng.</p>', 1, 1, CAST(N'2019-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'18218951', N'Bơ Hạt Vừng Bóc Vỏ Hữu Cơ Mayvers - 385g', N'https://i.imgur.com/Et9ww3z.jpg', CAST(227000.00 AS Decimal(16, 2)), 13, N'<p>&ndash; Gi&agrave;u dinh dưỡng thực vật : protein, vitamin v&agrave; chất kho&aacute;ng cần thiết cho cơ thể (sắt, kẽm, manga, canxi), chất chống oxi ho&aacute; (vitamin E) hỗ trợ giảm cholesterol xấu v&agrave; bệnh tim mạch v&agrave;nh. Chứa rất &iacute;t muối v&agrave; chất b&eacute;o b&atilde;o ho&agrave;, chỉ số đường huyết (Glycemic Index) thấp, l&agrave; nguồn cung cấp canxi, chất xơ v&agrave; chất b&eacute;o kh&ocirc;ng b&atilde;o ho&agrave; tốt cho cơ thể, đặc biệt l&agrave; n&atilde;o bộ. &ndash; Sản phẩm kh&ocirc;ng chứa gluten, cholesterol v&agrave; th&agrave;nh phần nguồn gốc sữa động vật. &ndash; Ph&ugrave; hợp với chế độ ăn chay.</p>', 1, 1, CAST(N'2019-09-02T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'18581517', N'Bánh Waffles Hạt Phỉ Hữu Cơ Biona - 175g', N'https://i.imgur.com/xtDJyuG.png', CAST(179000.00 AS Decimal(16, 2)), 278, N'<p>Hương vị cổ điển cộng với một ch&uacute;t biến tấu. b&aacute;nh waffle hạt phỉ hữu cơ Biona l&agrave; m&oacute;n ăn nhẹ ho&agrave;n hảo cho những ai muốn thưởng thức vị ngọt đậm đ&agrave;. Những chiếc b&aacute;nh được phủ đầy lớp nh&acirc;n hạt phỉ mịn m&agrave;ng v&agrave; ngon miệng, tạo n&ecirc;n một m&oacute;n ăn nhẹ hữu cơ chắc chắn sẽ l&agrave;m thỏa m&atilde;n những cơn th&egrave;m ăn của bạn.</p>', 1, 1, CAST(N'2021-01-07T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'23424221', N'Xà Lách Romaine - 250g', N'https://i.imgur.com/fhHqm6O.jpg', CAST(49000.00 AS Decimal(16, 2)), 23, N'<p>X&agrave; l&aacute;ch Romaine l&agrave; loại rau gi&ograve;n v&agrave; dai c&oacute; h&agrave;m lượng chất xơ cao, nhiều chất kho&aacute;ng, photpho, magie v&agrave; Kali, &iacute;t calories, vitamin C, vitamin K. Một phần x&agrave; l&aacute;ch romaine nhỏ chỉ c&oacute; khoảng 8 calories v&agrave; 1-2 gram carbonhydrate. Ch&iacute;nh v&igrave; vậy, đ&acirc;y l&agrave; loại rau th&iacute;ch hợp cho những người ăn ki&ecirc;ng.</p>', 1, 1, CAST(N'2021-04-24T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'24524655', N'Xà Lách Lô Lô Đỏ - 250g', N'https://i.imgur.com/fcJoMxN.jpg', CAST(45000.00 AS Decimal(16, 2)), 57, N'<p>&bull; X&agrave; l&aacute;ch c&oacute; thể được ăn sống hoặc nấu ch&iacute;n, x&agrave; l&aacute;ch tươi sống, c&oacute; nhiều chất dinh dưỡng v&agrave; c&oacute; nhiều t&aacute;c dụng hơn x&agrave; l&aacute;ch nấu ch&iacute;n. &bull; Bạn c&oacute; thể d&ugrave;ng l&aacute; x&agrave; l&aacute;ch sống trong c&aacute;c m&oacute;n salad, sandwiches, d&ugrave;ng để cuốn, v&agrave; trong nhiều m&oacute;n ăn kh&aacute;c. C&aacute;ch tốt nhất l&agrave; chiết xuất nước x&agrave; l&aacute;ch để lấy được hết c&aacute;c chất dinh dưỡng của n&oacute;. N&oacute; tạo thức uống rất ngon khi xay với c&agrave; rốt, c&agrave; chua, cần t&acirc;y, rau th&igrave; l&agrave; v&agrave; atiso &bull; X&agrave; l&aacute;ch L&ocirc; l&ocirc; t&iacute;m khi ăn chung với Mayonnaise sẽ gi&uacute;p tăng khả năng hấp thụ c&aacute;c chất dinh dưỡng v&agrave; cơ thể.</p>', 1, 1, CAST(N'2020-07-20T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'25342425', N'Xà Lách Búp Mỹ Hữu Cơ - 250g', N'https://i.imgur.com/Xo5N5eM.jpg', CAST(45000.00 AS Decimal(16, 2)), 12, N'<p>X&agrave; l&aacute;ch b&uacute;p Mỹ l&agrave; loại x&agrave; l&aacute;ch cuộn chặt th&agrave;nh b&uacute;p lớn, nặng, l&aacute; to, gi&ograve;n v&agrave; ngọt, nh&igrave;n tương tự b&uacute;p bắp cải. Cứ 100 gam x&agrave; l&aacute;ch sẽ cung cấp khoảng 2,2 gam carbohydrate, 1,2 gam chất xơ, 90 gam nước, 166 microgram vitamin A, 73 microgram folate (vitamin B9).</p>', 1, 1, CAST(N'2019-12-23T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'25475252', N'Bông Atiso Tươi -300g', N'https://i.imgur.com/XWjvHMA.jpg', CAST(153000.00 AS Decimal(16, 2)), 19, N'<p>&bull; Th&ocirc;ng mật, lợi tiểu, giảm Ur&ecirc; m&aacute;u, hạ sốt, nhuận trường, đ&oacute; ch&iacute;nh l&agrave; c&ocirc;ng dụng của b&ocirc;ng Atis&ocirc;. Cụm hoa của b&ocirc;ng Atis&ocirc; được d&ugrave;ng trong chế độ ăn ki&ecirc;ng của người bệnh đ&aacute;i th&aacute;o nhạt v&igrave; n&oacute; chỉ chứa lượng nhỏ tinh bột, phần Carbon Hydrat gồm phần lớn l&agrave; Inlin. &bull; L&aacute; Atis&ocirc; c&oacute; vị đắng, c&oacute; t&aacute;c dụng lợi tiểu v&agrave; được d&ugrave;ng trong điều trị bệnh ph&ugrave; v&agrave; thấp khớp. L&aacute; tươi hoặc kh&ocirc; sắc hoặc nấu th&agrave;nh cao chữa bệnh về Gan (gan vi&ecirc;m mạn, da v&agrave;ng), thận vi&ecirc;m cấp v&agrave; mạn, sưng khớp xương. Thuốc c&oacute; t&aacute;c dụng nhuận trường v&agrave; lọc m&aacute;u nhẹ đối với trẻ em. Th&acirc;n v&agrave; rễ &Aacute;c ti s&ocirc; th&aacute;i mỏng, phơi kh&ocirc;, c&ocirc;ng dụng giống l&aacute;. Actis&ocirc; được d&ugrave;ng trị bệnh ở Ch&acirc;u &Acirc;u từ l&acirc;u như vị thuốc l&agrave;m m&aacute;t gan, nhuận trường, th&ocirc;ng tiểu.</p>', 1, 1, CAST(N'2020-12-20T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'26427425', N'Cần Tây Hữu Cơ - 300g', N'https://i.imgur.com/vO0zNYM.jpg', CAST(75500.00 AS Decimal(16, 2)), 36, N'<p>Cần t&acirc;y tại Organicfood.vn được chứng nhận hữu cơ bởi Tổ chức C&aacute;c phong tr&agrave;o N&ocirc;ng nghiệp Hữu cơ Quốc tế (IFOAM). Cần T&acirc;y l&agrave; loại c&acirc;y thảo sống 1-2 năm c&oacute; th&acirc;n mọc đứng, cao khoảng 1m, c&oacute; r&atilde;nh dọc. L&aacute; ở gốc c&oacute; cuống, xẻ ba thuỳ h&igrave;nh tam gi&aacute;c, c&aacute;c l&aacute; giữa v&agrave; l&aacute; ở ngọn kh&ocirc;ng c&oacute; cuống, cũng chia ba thuỳ, xẻ 3 hoặc kh&ocirc;ng chia thuỳ. Hoa m&agrave;u trắng hay xanh lục, xếp th&agrave;nh t&aacute;n.</p>', 1, 1, CAST(N'2021-08-20T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'26472552', N'Bí Nhật Hữu Cơ - 350g', N'https://i.imgur.com/Wn8x18o.jpg', CAST(45000.00 AS Decimal(16, 2)), 172, N'<p>&bull; B&iacute; đỏ l&agrave; nguồn cung cấp dồi d&agrave;o vitamin A, đ&oacute;ng vai tr&ograve; quan trọng cho thị gi&aacute;c, tăng trưởng xương v&agrave; sự sinh sản, điều h&ograve;a hệ miễn dịch v&agrave; bảo vệ cho da. &bull; B&iacute; đỏ được coi l&agrave; m&oacute;n ăn bổ n&atilde;o, trị suy nhược thần kinh, trẻ em chậm ph&aacute;t triển về tr&iacute; &oacute;c, v&agrave; c&oacute; t&iacute;nh nhuận trường. &bull; Ngo&agrave;i tỷ lệ chất xơ v&agrave; sắt kh&aacute; cao, b&iacute; đỏ c&ograve;n mang lại vitamin C, acid folic, magi&ecirc;, kali v&agrave; nhiều nguy&ecirc;n tố vi lượng kh&aacute;c. Đ&acirc;y cũng l&agrave; thực phẩm cần cho những ai sợ mập v&igrave; d&ugrave; c&oacute; h&agrave;m lượng protein cao nhưng lại kh&ocirc;ng chứa chất b&eacute;o.</p>', 1, 1, CAST(N'2021-07-07T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'27452743', N'Mồng Tơi Hữu Cơ - 300g', N'https://i.imgur.com/jZu9cRW.jpg', CAST(38000.00 AS Decimal(16, 2)), 63, N'<p>Mồng tơi m&aacute;t v&agrave; m&ugrave;a n&egrave; n&oacute;ng nực n&oacute; được xem như thứ rau vua. Trong Đ&ocirc;ng y, mồng tơi c&oacute; t&iacute;nh h&agrave;n, vị chua, kh&ocirc;ng độc, đi v&agrave;o 5 kinh t&acirc;m, t&igrave;, can, đại trường, t&aacute; tr&agrave;ng, gi&uacute;p lợi tiểu, t&aacute;n nhiệt, giải độc, l&agrave;m đẹp da, trị r&ocirc;m sảy, mụn nhọt. Chất nhầy pectin c&oacute; trong mồng tơi c&oacute; t&aacute;c dụng nhuận tr&agrave;ng, trừ thấp nhiệt, giảm b&eacute;o, chống b&eacute;o ph&igrave;, do đ&oacute; loại rau n&agrave;y đặc biệt th&iacute;ch hợp cho những người c&oacute; mỡ m&aacute;u, đường huyết cao, muốn giảm c&acirc;n.</p>', 1, 1, CAST(N'2021-09-18T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'27562562', N'Nấm Ngô Tươi Hữu Cơ - Gói 300g', N'https://i.imgur.com/hWUD2RH.jpg', CAST(95000.00 AS Decimal(16, 2)), 124, N'<p>Nấm Ng&ocirc; c&oacute; m&ugrave;i thơm, chứa nhiều protein chỉ đứng sau thịt, c&aacute;. Rất gi&agrave;u kho&aacute;ng chất, c&aacute;c amino acid tan trong nước v&agrave; c&aacute;c vitamin quan trọng n&ecirc;n rất tốt cho sức khỏe, đặc biệt l&agrave; người bệnh ăn nấm n&agrave;y sẽ mau hồi phục sức khỏe. Ngăn ngừa một số bệnh như: giảm Cholesterol trong m&aacute;u, tiểu đường, b&eacute;o ph&igrave;, tim mạch, kh&aacute;ng ung thư.... Ngo&agrave;i ra, n&oacute; c&ograve;n l&agrave; một loại nấm gi&agrave;u dinh dưỡng, 1 c&acirc;y nấm c&oacute; trọng lượng từ 2 &ndash; 8gam. Đặc biệt nấm c&oacute; t&aacute;c dụng bổ thận, tr&aacute;ng dương n&ecirc;n rất tốt d&ugrave;ng cho nam giới, nhất l&agrave; nam giới bị nhược dương.</p>', 1, 1, CAST(N'2021-06-04T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'32522162', N'Chanh Giấy Hữu Cơ-200g', N'https://i.imgur.com/fyHqY6F.jpg', CAST(24000.00 AS Decimal(16, 2)), 13, N'<p>Đặc điểm: - B&ocirc;ng trắng nở theo ch&ugrave;m, m&ugrave;i thơm. C&acirc;y cho tr&aacute;i sau thời gian 12-15 th&aacute;ng trồng. C&acirc;y trưởng th&agrave;nh cao từ 1m, lớn nhất l&agrave; 3m. T&aacute;n trong v&ograve;ng 2m. C&acirc;y kh&ocirc;ng k&eacute;n đất, dễ trồng. - Tr&aacute;i nước nhiều, vị chua, vỏ mỏng. Khi c&acirc;y trưởng th&agrave;nh đủ sức sẽ c&oacute; nhiều tr&aacute;i.</p>', 1, 1, CAST(N'2021-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'44235257', N'Bông Cải Xanh Hữu Cơ - 250g', N'https://i.imgur.com/0uOhASU.jpg', CAST(49000.00 AS Decimal(16, 2)), 18, N'<p>&bull; C&oacute; rất nhiều m&oacute;n ăn được chế biến từ b&ocirc;ng cải xanh chẳng hạn như pasta với b&ocirc;ng cải xanh, s&uacute;p b&ocirc;ng cải xanh, b&ocirc;ng cải xanh x&agrave;o t&ocirc;m... &bull; Ta c&oacute; b&ocirc;ng cải xanh trộn dầu h&agrave;u, một m&oacute;n ăn gi&agrave;u đạm v&agrave; rất ngon hay g&agrave; x&agrave;o b&ocirc;ng cải xanh m&oacute;n ăn &acirc;m dương kết hợp h&agrave;i h&ograve;a .... &bull; Ngo&agrave;i ra b&ocirc;ng cải xanh được d&ugrave;ng để l&agrave;m c&aacute;c m&oacute;n salad, x&agrave;o thịt, x&agrave;o hải sản, gi&uacute;p m&oacute;n ăn hạ bớt lượng nhiệt từ dầu mỡ, thịt, đảm bảo h&agrave;i h&ograve;a, c&acirc;n bằng cho bữa ăn...</p>', 1, 1, CAST(N'2020-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'54726525', N'Cải Ngọt Hữu Cơ - 250g', N'https://i.imgur.com/RINDqQZ.jpg', CAST(39000.00 AS Decimal(16, 2)), 13, N'<p>Cải ngọt c&oacute; nguồn gốc từ Ấn Độ, Trung Quốc. C&acirc;y thảo, cao tới 50 - 100 cm, th&acirc;n tr&ograve;n, kh&ocirc;ng l&ocirc;ng, l&aacute; c&oacute; phiến xoan ngược tr&ograve;n d&agrave;i, đầu tr&ograve;n hay t&ugrave;, gốc từ từ hẹp, m&eacute;p nguy&ecirc;n kh&ocirc;ng nhăn, mập, trắng trắng, g&acirc;n b&ecirc;n 5 - 6 đ&ocirc;i, cuống d&agrave;i, tr&ograve;n. Ch&ugrave;m hoa như ng&ugrave; ở ngọn, cuống hoa d&agrave;i 3 &ndash; 5 cm, ha v&agrave;ng tươi, quả cải d&agrave;i 4 &ndash; 11 cm, c&oacute; mỏ, hạt tr&ograve;n. Cải ngọt được trồng quanh năm, thời gian sinh trưởng Ở Việt Nam, cải ngọt thường được chế biến th&agrave;nh c&aacute;c m&oacute;n ăn như cải ngọt x&agrave;o thịt, canh cải ngọt nấu t&ocirc;m, rau cải ngọt luộc chấm x&igrave; dầu, cải ngọt x&agrave;o thịt b&ograve;, cải ngọt x&agrave;o ch&acirc;n g&agrave;..., l&agrave;m lẩu c&aacute;, lẩu thịt.</p>', 1, 1, CAST(N'2015-08-07T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'62542572', N'Dưa Leo Baby Hữu Cơ-300g', N'https://i.imgur.com/f3FMxik.jpg', CAST(25000.00 AS Decimal(16, 2)), 24, N'<p>Dưa chuột (hay dưa leo) l&agrave; một loại rau ăn quả quen thuộc đối với người Việt Nam. Dưa chuột rất m&aacute;t, vị gi&ograve;n, ngon ngọt, thơm hấp dẫn. Dưa chuột c&oacute; t&aacute;c dụng thanh nhiệt, giải kh&aacute;t, m&aacute;t da thịt, lợi tiểu, chữa ph&ugrave; thũng, sưng trướng, kiết lỵ do nhiệt, đau bụng do ruột bị k&iacute;ch th&iacute;ch, chống lại c&aacute;c bệnh ung thư v&agrave; dưỡng da. Dưa chuột c&oacute; h&agrave;m lượng canxi cao n&ecirc;n c&oacute; t&aacute;c dụng tốt đối với trẻ em chậm lớn. Ngo&agrave;i ra, dưa chuột c&ograve;n c&oacute; t&aacute;c dụng hỗ trợ ti&ecirc;u h&oacute;a, giảm c&acirc;n v&agrave; gi&uacute;p thận khỏe mạnh. M&oacute;n ngon với dưa chuột: dưa chuột trộn chua cay, dưa chuột chấm muối ớt, dưa chuột trộn phổ tai, dưa chuột x&agrave;o chả c&aacute;, t&ocirc;m s&uacute; x&agrave;o dưa chuột hạt điều, dưa chuột x&agrave;o thịt băm, dưa chuột trộn s&ograve; điệp, salad dưa chuột&hellip;</p>', 1, 1, CAST(N'2019-08-08T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'63426265', N'Măng Tây Xanh Hữu Cơ Loại 1 - 250g', N'https://i.imgur.com/cyKU6eA.jpg', CAST(68000.00 AS Decimal(16, 2)), 0, N'<p>Măng t&acirc;y được trồng để thu lấy chồi, phần chồi n&agrave;y c&oacute; h&agrave;m lượng dinh dưỡng cao. Trong 100g măng t&acirc;y xanh (tươi) chứa 2,2% đạm, 3,9% cacbohydrate, 2,1% xơ, 0,6% tro, 0,1% b&eacute;o v&agrave; c&aacute;c kho&aacute;ng chất (canxi, sắt, magi&ecirc;, mangan, phốt pho, kali, kẽm&hellip; chiếm 35%). Ngo&agrave;i ra, n&oacute; c&ograve;n chứa rất nhiều loại vitamin cần thiết như vitamin C, E, K, thiamine (vitamin B1), riboflavin (vitamin B2), niacin (vitamin B3), axit pantothenic (vitamin B5), pyridoxine (vitamin B6), folate (vitamin B9), &hellip; Hơn nữa, đọt măng t&acirc;y lại c&oacute; vị ngọt đặc trưng, c&oacute; thể d&ugrave;ng để chế biến th&agrave;nh nhiều m&oacute;n ăn ngon như salad măng t&acirc;y, măng t&acirc;y x&agrave;o.....</p>', 2, 1, CAST(N'2021-09-28T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'65811511', N'Sả Cây Hữu Cơ - 200g', N'https://i.imgur.com/DRpDuqG.jpg', CAST(45000.00 AS Decimal(16, 2)), 415, N'<p>Ăn sả cũng c&oacute; t&aacute;c dụng giải độc cơ thể bằng c&aacute;ch tăng cường số lượng v&agrave; tần xuất đi tiểu (th&ocirc;ng tiểu tiện). Điều n&agrave;y gi&uacute;p cho gan, đường ti&ecirc;u h&oacute;a, tuyến tụy, thận v&agrave; b&agrave;ng quang được sạch sẽ v&agrave; khỏe mạnh bằng c&aacute;ch hỗ trợ cơ thể để loại bỏ c&aacute;c chất độc hại kh&ocirc;ng mong muốn v&agrave; acid uric. Đặc biệt sả giải độc rượu rất nhanh, bạn c&oacute; thể d&ugrave;ng 1 b&oacute; sả gi&atilde; n&aacute;t, th&ecirc;n nước lọc, gạn lấy 1 ch&eacute;n. Người say rượu nặng uống v&agrave;o sẽ nhanh ch&oacute;ng tỉnh v&agrave; đỡ mệt, đỡ nhức đầu.</p>', 1, 1, CAST(N'2015-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'68436425', N'Cà Chua Bee Socola Hữu Cơ- 300g', N'https://i.imgur.com/WXdcPY1.jpg', CAST(38000.00 AS Decimal(16, 2)), 47, N'<p>&bull; C&agrave; chua bi s&ocirc; c&ocirc; la c&oacute; c&ocirc;ng dụng l&agrave;m đẹp như: chống l&atilde;o h&oacute;a, l&agrave;m da mịn m&agrave;ng tươi s&aacute;ng, bảo vệ bề mặt da .... &bull; Cũng giống như c&aacute;c loại c&agrave; chua kh&aacute;c c&ocirc;ng dụng chữa bệnh của c&agrave; chua rất nhiều, ph&ograve;ng chống ung thư, chữa vi&ecirc;m gan m&atilde;n t&iacute;nh, hỗ trợ cho người bị vi&ecirc;m thận, chữa bệnh tim mach, chữa b&iacute; đại tiện, thiếu m&aacute;u, chữa m&uacute;n nhọt, b&otilde;ng lửa, chữa sốt cao k&egrave;m theo kh&aacute;t nước hay chữa tăng huyết &aacute;p, chảy m&aacute;u ch&acirc;n răng...</p>', 1, 1, CAST(N'2021-10-28T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'7f1a34b4-7357-4116-ac97-dd5659113a57', N'Hạt Dưa - 500g', N'https://i.imgur.com/wkhp3fm.jpg', CAST(103000.00 AS Decimal(16, 2)), 18, N'<p><strong>Hạt dưa ok</strong> m&agrave; ch&uacute;ng ta ăn được l&agrave;m từ hạt của quả dưa hấu. Sau khi t&aacute;ch khỏi quả dưa hấu th&igrave; hạt được nướng ở nhiệt độ cao, rồi c&oacute; thể thưởng thức.</p>
<p>Tuy nhi&ecirc;n, để nhận được tối đa c&aacute;c vitamin v&agrave; kho&aacute;ng chất c&oacute; trong hạt dưa, ch&uacute;ng ta n&ecirc;n đun s&ocirc;i hạt dưa với nước rồi uống, điều n&agrave;y rất tốt cho sức khỏe.</p>', 1, 6, CAST(N'2021-10-30T00:53:15.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'90175911', N'Bơ Hạt Điều Có Hạt Đạt Butter - 240g', N'https://i.imgur.com/tCgh1Jh.png', CAST(190000.00 AS Decimal(16, 2)), 0, N'<p>Bơ hạt điều tự nhi&ecirc;n c&oacute; hạt (240g) |</p>
<p>Cashew butter made crunchy (240g) - Th&ocirc;ng tin sản phẩm: Bơ điều dạng hạt hướng hữu cơ được sản xuất bởi Đạt Butter bằng nguy&ecirc;n liệu tự nhi&ecirc;n, đảm bảo an to&agrave;n cho sức khỏe người ti&ecirc;u d&ugrave;ng.</p>
<p>Bơ điều dạng hạt được xay kh&ocirc;ng nhuyễn ho&agrave;n to&agrave;n m&agrave; c&ograve;n ở dạng hạt nhỏ, kh&ocirc;ng đồng đều nhau. Nguy&ecirc;n liệu sử dụng để xay l&agrave; 99% hạt điều nguy&ecirc;n chất c&ugrave;ng với 1% muối v&agrave; kh&ocirc;ng c&oacute; bất cứ chất h&oacute;a học, chất bảo quản n&agrave;o trong sản phẩm.</p>
<p>Bơ điều dạng hạt c&oacute; m&agrave;u v&agrave;ng tươi v&agrave; c&oacute; những hạt nhỏ, c&oacute; thể d&ugrave;ng ăn liền hoặc chế biến c&aacute;c m&oacute;n ăn.</p>
<p>- Lợi &iacute;ch của sản phẩm:</p>
<p>◾ Cung cấp năng lượng</p>
<p>◾ Ngăn ngừa thiếu m&aacute;u</p>
<p>◾ Cung cấp chất b&eacute;o cần thiết, tốt cho tim mạch</p>
<p>◾ Nguồn chất chống oxy h&oacute;a tuyệt vời -</p>
<p>C&aacute;ch bảo quản: Sau khi mở nắp th&igrave; thời gian lưu trữ sản phẩm l&agrave; 6 th&aacute;ng kể từ ng&agrave;y sản xuất, nếu: Đảm bảo bơ hạt điều được m&uacute;c, khuấy bằng dụng cụ sạch v&agrave; sau khi sử dụng kh&aacute;ch h&agrave;ng vui l&ograve;ng đ&oacute;ng chặt nắp lại v&agrave; lưu trữ sản phẩm ở nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng mặt trời (nếu kh&ocirc;ng c&oacute; tủ lạnh).</p>
<p>- Lưu &yacute;: Chất lượng bơ hạt điều được bảo quản trong tủ lạnh v&agrave; nhiệt độ thường l&agrave; như nhau.</p>
<p>- C&aacute;ch chế biến: Bơ hạt điều ăn k&egrave;m b&aacute;nh m&igrave;, l&agrave;m b&aacute;nh. Ngo&agrave;i ra, bơ hạt điều hướng hữu cơ c&ograve;n c&oacute; thể d&ugrave;ng trong nhiều m&oacute;n ăn kh&aacute;c nhau t&ugrave;y theo khẩu vị từng người.</p>
<p>- Hạn sử dụng: 6 th&aacute;ng kể từ ng&agrave;y sản xuất. - Xuất xứ: Việt Nam</p>', 2, 1, CAST(N'2019-04-05T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'91959ac9-e768-47bb-b457-ea8441141c17', N'Bánh Chuối - 500g', N'https://i.imgur.com/S27PMHU.jpg', CAST(55000.00 AS Decimal(16, 2)), 14, N'<p><strong>B&aacute;nh chuối</strong> l&agrave; một loại b&aacute;nh được chế biến bằng c&aacute;ch sử dụng chuối l&agrave;m th&agrave;nh phần ch&iacute;nh, c&ugrave;ng với những nguy&ecirc;n liệu l&agrave;m b&aacute;nh th&ocirc;ng thường.</p>
<p>M&oacute;n ăn c&oacute; thể được chế biến dưới nhiều h&igrave;nh dạng kh&aacute;c nhau, chẳng hạn như b&aacute;nh nhiều lớp, như b&aacute;nh muffin v&agrave; b&aacute;nh cupcake</p>', 2, 1, CAST(N'2021-10-24T16:41:02.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'c0e0ddf1-7bd2-4b4d-b11e-233bab74493c', N'Rau Cải Mầm - 150g', N'https://i.imgur.com/OOep6MG.png', CAST(11800.00 AS Decimal(16, 2)), 12, N'<p><strong>Rau mầm</strong>&nbsp;l&agrave; c&acirc;y rau non đang trong qu&aacute; tr&igrave;nh l&ecirc;n mầm, c&oacute; k&iacute;ch thước nhỏ (khoảng từ 5 - 10cm).</p>
<p><strong>Đ&acirc;y l&agrave; loại rau được gieo trồng v&agrave; thu hoạch trong một khoảng thời gian ngắn (10 - 100 ng&agrave;y tuỳ từng loại).</strong></p>
<p>Rau mầm kh&aacute; dễ sống v&agrave; kh&ocirc;ng cần qu&aacute; nhiều kh&ocirc;ng gian, vậy n&ecirc;n ch&uacute;ng dần phổ biến v&agrave; được nhiều người ưa chuộng.</p>
<p>Ưu điểm của loại rau n&agrave;y l&agrave; dễ trồng v&agrave; chứa rất nhiều c&aacute;c chất dinh dưỡng cần thiết cho sức khoẻ của con người như: chất đạm, vitamin, chất kho&aacute;ng hữu cơ, phytochemical v&agrave; axit amin. V&igrave; c&oacute; đặc điểm mỏng, mọng nước n&ecirc;n rau mầm c&oacute; thể được sử dụng to&agrave;n bộ từ phần l&aacute; cho đến phần rễ.</p>', 1, 3, CAST(N'2021-10-18T10:59:34.000' AS DateTime))
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate]) VALUES (N'c9851988-c765-4dc5-8c9c-94d7b9659d3a', N'Test', N'https://i.imgur.com/Eip3dYW.png', CAST(88888.00 AS Decimal(16, 2)), 0, N'<p>abc123</p>', 2, 1, CAST(N'2021-11-09T13:40:03.000' AS DateTime))
GO
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (1, N'AD')
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (2, N'User')
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (3, N'GG')
GO
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Anh LH', N'HCM', N'HCM', N'HCM', N'0911111111', N'', N'00a7f4e3-c3be-44d4-afaf-8c03a57d5344', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'00e13e61-8a2b-43c4-8c18-994cb6f38417', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'09346239-1815-4060-a7ca-07a1edcebf64', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'097145b1-ce3e-482e-a386-81b24e8136e0', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'0e5482de-e2c0-4c11-ae77-c5f14eb02ec8', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Le Hoang Ngoc', N'182 Binh Quoi', N'Binh Thanh', N'Ho Chi Minh', N'0931130201', N'', N'0ed6a21b-684d-4c1a-9dfb-a2ce63d9c2f2', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'125495d7-787b-4a2b-8bb5-ad08f213e832', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'13386ffa-7d3a-4037-88e3-cb097b69a635', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Test', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'16243021-4853-405e-947d-09ce68347cc4', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'19b51625-7584-40d3-bc9f-d59464e0483c', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Anh LH', N'HCM', N'HCM', N'HCM', N'0911111111', N'', N'1c02b25a-864d-4566-8cef-8b31194e45d0', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Anh LH', N'HCM', N'HCM', N'HCM', N'0911111111', N'', N'1dbf67bd-96d2-4b62-9da6-3c3e9b1e2932', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'1fb1901e-322d-4247-bd57-5b073de124ea', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'211bb7bf-f215-463f-bc20-784ce61e0d34', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'22d769f4-289c-4540-aa5d-61464b63c9a4', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Anh LH', N'Anh LH', N'HCm', N'HCM', N'0911111111', N'', N'239180c1-c743-4ce2-8538-1a728274735a', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'23daa83e-e3d5-4d78-b5f1-8bc434ad6715', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'277e925a-ec9f-4189-a436-9f31216135d0', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'3028758a-9ade-4eb9-bbc5-56f68bac6525', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'304c94c3-df65-4cdb-a1a6-ac548b9ecff8', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'32cbe23d-406e-4a93-8f57-d0c24f43d339', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'38b42d91-9e34-4ba9-84c3-ac11cfc12ae1', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'413703a0-8a14-42b3-be54-47a12687d5c9', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'hellloooooooooo', N'431b9b14-6c58-4163-a7f3-3816105be3e8', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'47278c67-93a0-4263-ab8e-0a7fe68f5167', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Anh LH', N'HCM', N'HCM', N'HCM', N'0911111111', N'', N'4a674240-08af-4984-beba-da233704415c', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'4cfde3b4-1263-4da7-bcd9-a16c23cb9d0b', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'5007a6b4-57a8-4430-8393-adf066f2c328', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'57b3610e-c978-4e6e-b714-21e881f552b4', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'5bbd948d-ac4a-4f4d-b8bd-b67f2920ac30', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'673297dc-23d3-458f-98d1-2ed1e7fd114e', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'6ddae539-a5f0-4e67-a8e1-52a656db81d3', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Le Hoang Ngoc', N'182 Binh Quoi', N'Binh Thanh', N'Ho Chi Minh', N'0931130201', N'', N'7254029c-351b-4d68-8694-33592af9d401', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'742a3f19-bfdc-4d64-a7fd-1044daf80e98', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'75634846-7890-41f2-84ce-a61361f72ab4', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'76799ae3-b335-4589-a86b-a3756c1593ce', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'76d925fb-7077-40ed-a5d6-c2dd2d182600', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'7747aae1-cfe2-47d1-8548-fc1c09f821fe', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'7cdc63a7-230d-4b07-8295-d48a4638de82', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'7db9f60f-0822-4d16-8fba-f00032f5f613', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'Hello', N'7e7a8bc7-0e58-4342-9cc4-883cd3494d75', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'838ef53b-ac1b-4d0a-a363-9d67b4d5a6c1', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Anh LH', N'HCM', N'HCM', N'HCM', N'0911111111', N'', N'84f41282-5a87-46ce-b8ac-cf10367ab892', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'85961556-1678-474a-91a0-98f7bcb391ac', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'8706f17d-4c29-4b59-804a-21666a99ed42', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'9185e0ee-5075-4bdd-af92-e4be81f6c834', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'939539a4-85c5-4011-9b9d-8b7bea665204', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'96dc5c36-ce24-4acf-b1da-c31f40529585', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'a8bdf967-048b-4cd3-a721-88550d90bd51', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'b09c6d5f-bf41-4c9a-b6f5-71631df36af7', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'b3083bbb-9a41-4ae9-94d2-d82107775147', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'b392f327-df61-48a8-bdba-c0f1fb929756', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'b6090ebb-051a-4365-9f7a-d41a077a6ffc', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'ba5cd1fa-1b90-48cc-9d5d-f7272edc9458', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'bae42f58-2082-4122-a1db-8ebe3ed6b9fd', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Le Hoang Ngoc', N'182 Binh Quoi', N'Binh Thanh', N'Ho Chi Minh', N'0931130201', N'', N'c68594dd-a456-4eb2-b569-96cf3f1a9e9a', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'c9eda6ac-1540-4a62-8ca2-b6e739511c08', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Anh LH', N'HCM', N'HCM', N'HCM', N'0911111111', N'', N'cbf126a7-b532-4c77-bb77-779591c10a6b', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Anh LH', N'Anh LH', N'HCm', N'HCM', N'0911111111', N'', N'd175e25b-987d-47f7-8260-57454da8e98a', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'd76c6f9a-0e52-451f-b8c0-0367941cfc6f', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Anh LH', N'Anh LH', N'HCm', N'HCM', N'0911111111', N'', N'd7865b60-2f36-4cfa-be05-5c7de4a3bf5a', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'd8c15d0b-65dc-482e-89e2-5e777e1ab3d9', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Le Hoang Ngoc', N'182 Binh Quoi', N'Binh Thanh', N'Ho Chi Minh', N'0931130201', N'', N'e4b65b78-1bbc-4245-b30c-5515b77a169a', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'e6b5ff45-efe5-4651-841b-71b21bc50c35', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'Test 6/10', N'f4479adf-c04b-41ba-880f-2a23a83a0282', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'f7e0298c-913e-44fc-a22a-ebaf2474d88a', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'fb56451f-05dd-487c-9340-586f0290ef2f', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'ff24c954-598b-4aad-95d9-0563cfbd5069', 1)
GO
INSERT [dbo].[tblShippingStatus] ([statusID], [statusName]) VALUES (1, N'Pending')
INSERT [dbo].[tblShippingStatus] ([statusID], [statusName]) VALUES (2, N'Shipping')
INSERT [dbo].[tblShippingStatus] ([statusID], [statusName]) VALUES (3, N'Finish')
GO
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'1', N'1 Test', N'Test ', N'0911111112', N'12345678', CAST(N'2021-10-29T17:39:07.000' AS DateTime), N'voducminh1402011@gmail.com', 1, 2)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'admin', N'Admin', N'Hồ Chí Minh', N'0852484848', N'1', CAST(N'2021-09-28T20:39:00.000' AS DateTime), N'admin@voducminh.com', 1, 1)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'admin2', N'Admin 22', N'Cà Mau', N'0925005859', N'1', CAST(N'2021-09-28T00:00:00.000' AS DateTime), N'admin2@voducminh.com', 1, 1)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'anhlh', N'Le Hong Anh', N'HCM', N'0911111111', N'1', CAST(N'2021-10-08T00:00:00.000' AS DateTime), N'honganhle0a@gmail.com', 1, 2)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'huanbx', N'Huan Rose', N'Hà Nội', N'0977778888', N'1', CAST(N'2021-09-28T00:00:00.000' AS DateTime), N'huanbx@fpt.edu.vn', 1, 2)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'huypd', N'Pham Duc Huy', N'Lâm Đồng', N'0911113113', N'1', CAST(N'2021-10-05T00:00:00.000' AS DateTime), N'huypd@gmail.com', 1, 2)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'minhvd', N'Vo Duc Minh', N'Buôn Ma Thuột', N'0852484847', N'1', CAST(N'2021-09-28T20:38:00.000' AS DateTime), N'voducminh140201@gmail.com', 1, 2)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'minhvd1', N'minhvd1', N'*', N'*', N'123456789', CAST(N'2021-10-20T16:04:17.000' AS DateTime), N'voducminh140201@gmail.com', 1, 2)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'minhvd2', N'minhvd2', N'*', N'*', N'12345678', CAST(N'2021-10-20T16:05:31.000' AS DateTime), N'voducminh140201@gmail.com', 0, 2)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'minhvd3', N'Vo Duc Minh', N'Hồ Chí Minh', N'0852484849', N'12345678', CAST(N'2021-10-20T16:06:57.000' AS DateTime), N'voducminh140201@gmail.com', 1, 2)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'ngoclh', N'Le Hoang Ngoc', N'BMT', N'0931130201', N'1', CAST(N'2021-10-08T00:00:00.000' AS DateTime), N'hoangngoc14201@gmail.com', 1, 2)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'ngoclh1', N'ngoclh1', N'*', N'*', N'Minh1402', CAST(N'2021-10-20T16:10:34.000' AS DateTime), N'hoangngoc14201@gmail.com', 0, 2)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'voducminh140201@gmail.com', N'voducminh140201@gmail.com', N'GG', N'GG', N'GG', CAST(N'2021-10-06T18:26:33.000' AS DateTime), N'voducminh140201@gmail.com', 1, 3)
GO
ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderDetails_tblOrders] FOREIGN KEY([orderID])
REFERENCES [dbo].[tblOrders] ([orderID])
GO
ALTER TABLE [dbo].[tblOrderDetails] CHECK CONSTRAINT [FK_tblOrderDetails_tblOrders]
GO
ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderDetails_tblProducts] FOREIGN KEY([productID])
REFERENCES [dbo].[tblProducts] ([productID])
GO
ALTER TABLE [dbo].[tblOrderDetails] CHECK CONSTRAINT [FK_tblOrderDetails_tblProducts]
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD  CONSTRAINT [FK_tblOrders_tblUsers] FOREIGN KEY([userID])
REFERENCES [dbo].[tblUsers] ([userID])
GO
ALTER TABLE [dbo].[tblOrders] CHECK CONSTRAINT [FK_tblOrders_tblUsers]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [FK_tblProducts_tblCategories] FOREIGN KEY([categoryID])
REFERENCES [dbo].[tblCategories] ([categoryID])
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [FK_tblProducts_tblCategories]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [FK_tblProducts_tblProductAvailable] FOREIGN KEY([availableID])
REFERENCES [dbo].[tblProductAvailable] ([availableID])
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [FK_tblProducts_tblProductAvailable]
GO
ALTER TABLE [dbo].[tblShippingInfo]  WITH CHECK ADD  CONSTRAINT [FK_tblShippingInfo_tblOrders1] FOREIGN KEY([orderID])
REFERENCES [dbo].[tblOrders] ([orderID])
GO
ALTER TABLE [dbo].[tblShippingInfo] CHECK CONSTRAINT [FK_tblShippingInfo_tblOrders1]
GO
ALTER TABLE [dbo].[tblShippingInfo]  WITH CHECK ADD  CONSTRAINT [FK_tblShippingInfo_tblShippingStatus] FOREIGN KEY([statusID])
REFERENCES [dbo].[tblShippingStatus] ([statusID])
GO
ALTER TABLE [dbo].[tblShippingInfo] CHECK CONSTRAINT [FK_tblShippingInfo_tblShippingStatus]
GO
ALTER TABLE [dbo].[tblUsers]  WITH CHECK ADD  CONSTRAINT [FK_tblUsers_tblRoles] FOREIGN KEY([roleID])
REFERENCES [dbo].[tblRoles] ([roleID])
GO
ALTER TABLE [dbo].[tblUsers] CHECK CONSTRAINT [FK_tblUsers_tblRoles]
GO
USE [master]
GO
ALTER DATABASE [VegetablesShop] SET  READ_WRITE 
GO
