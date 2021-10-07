USE [master]
GO
/****** Object:  Database [VegetablesShop]    Script Date: 10/8/2021 2:40:49 AM ******/
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
/****** Object:  Table [dbo].[tblCategories]    Script Date: 10/8/2021 2:40:50 AM ******/
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
/****** Object:  Table [dbo].[tblOrderDetails]    Script Date: 10/8/2021 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetails](
	[detailID] [varchar](50) NOT NULL,
	[orderID] [varchar](50) NOT NULL,
	[productID] [varchar](20) NOT NULL,
	[detailPrice] [decimal](16, 2) NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_tblOrderDetails] PRIMARY KEY CLUSTERED 
(
	[detailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrders]    Script Date: 10/8/2021 2:40:50 AM ******/
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
/****** Object:  Table [dbo].[tblProductAvailable]    Script Date: 10/8/2021 2:40:50 AM ******/
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
/****** Object:  Table [dbo].[tblProducts]    Script Date: 10/8/2021 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProducts](
	[productID] [varchar](20) NOT NULL,
	[productName] [nvarchar](120) NOT NULL,
	[productImage] [ntext] NOT NULL,
	[productPrice] [decimal](16, 2) NOT NULL,
	[quantity] [int] NOT NULL,
	[description] [ntext] NOT NULL,
	[availableID] [int] NOT NULL,
	[categoryID] [int] NOT NULL,
	[createDate] [datetime] NOT NULL,
	[productStatus] [bit] NOT NULL,
 CONSTRAINT [PK_tblProducts] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoles]    Script Date: 10/8/2021 2:40:50 AM ******/
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
/****** Object:  Table [dbo].[tblShippingInfo]    Script Date: 10/8/2021 2:40:50 AM ******/
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
/****** Object:  Table [dbo].[tblShippingStatus]    Script Date: 10/8/2021 2:40:50 AM ******/
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
/****** Object:  Table [dbo].[tblUsers]    Script Date: 10/8/2021 2:40:50 AM ******/
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
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'169cd437-7fc3-4abf-9ab0-a1a42d8c60be', N'673297dc-23d3-458f-98d1-2ed1e7fd114e', N'12462851', CAST(25000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'1a9bd686-10ab-4ee4-a5e7-72b9b7a70dac', N'09346239-1815-4060-a7ca-07a1edcebf64', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'21fd2e82-23ea-415b-87a5-72d48a118ac6', N'5007a6b4-57a8-4430-8393-adf066f2c328', N'16414911', CAST(13500.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'2c864f31-321f-49b3-9393-5fa5bd0a049c', N'75634846-7890-41f2-84ce-a61361f72ab4', N'12515190', CAST(159000.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'3055ec56-e612-41e9-9e1a-48370040d2ac', N'8706f17d-4c29-4b59-804a-21666a99ed42', N'12462851', CAST(25000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'37298949-cc4f-4454-8051-e04d26ac36a0', N'47278c67-93a0-4263-ab8e-0a7fe68f5167', N'12511251', CAST(170000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'3b6a484b-95d8-408e-a1dd-7ff042e5e1ba', N'a8bdf967-048b-4cd3-a721-88550d90bd51', N'12511251', CAST(170000.00 AS Decimal(16, 2)), 4)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'41cba21e-c735-4db8-a68b-24b72596378a', N'9185e0ee-5075-4bdd-af92-e4be81f6c834', N'12515190', CAST(159000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'43352c5e-f812-4861-8acc-1b0cfea27972', N'84f41282-5a87-46ce-b8ac-cf10367ab892', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 4)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'4b942d1c-617e-49b5-9039-b8882b137a94', N'f4479adf-c04b-41ba-880f-2a23a83a0282', N'16414911', CAST(13500.00 AS Decimal(16, 2)), 11)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'560a0177-fd85-4b12-81d9-5326bfd2953d', N'7254029c-351b-4d68-8694-33592af9d401', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 10)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'6156671b-bdf7-4506-9d4e-e65b4d9ed623', N'413703a0-8a14-42b3-be54-47a12687d5c9', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'76550f01-4368-421b-8d50-4d13a5e174af', N'7e7a8bc7-0e58-4342-9cc4-883cd3494d75', N'12516161', CAST(27000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'7a85c3b4-3225-45c3-8167-091a7d2ecb40', N'f4479adf-c04b-41ba-880f-2a23a83a0282', N'65811511', CAST(27500.00 AS Decimal(16, 2)), 12)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'8040a545-3cef-4291-8cd7-beea57c05a08', N'277e925a-ec9f-4189-a436-9f31216135d0', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'8270f541-9070-4155-a7c2-393ae3640746', N'16243021-4853-405e-947d-09ce68347cc4', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 7)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'90f4cba3-c50d-4c63-a0c5-6a9e39587a81', N'cbf126a7-b532-4c77-bb77-779591c10a6b', N'24524655', CAST(45000.00 AS Decimal(16, 2)), 10)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'914332ff-941b-48c9-a9e2-52832c34b256', N'1c02b25a-864d-4566-8cef-8b31194e45d0', N'12582581', CAST(70000.00 AS Decimal(16, 2)), 20)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'969753e3-b46c-40ae-8ee6-7112d7dfc293', N'cbf126a7-b532-4c77-bb77-779591c10a6b', N'12582581', CAST(70000.00 AS Decimal(16, 2)), 10)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'9d593102-3040-435f-8792-543132f333e1', N'23daa83e-e3d5-4d78-b5f1-8bc434ad6715', N'12625822', CAST(56000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'a7d25336-84b7-4d6d-9a8f-d0d75e47e5b7', N'ba5cd1fa-1b90-48cc-9d5d-f7272edc9458', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'af53a0ca-2bbb-4a6b-9bc2-7ca21bd861a3', N'00a7f4e3-c3be-44d4-afaf-8c03a57d5344', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 10)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'afc69073-f256-4327-a60e-9ed936687742', N'c9eda6ac-1540-4a62-8ca2-b6e739511c08', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'bd9be55d-6f71-434a-a4ce-db7c9ed8b617', N'097145b1-ce3e-482e-a386-81b24e8136e0', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'bf343cf9-7cd0-4b58-9780-e6f89123bf12', N'00a7f4e3-c3be-44d4-afaf-8c03a57d5344', N'12582581', CAST(70000.00 AS Decimal(16, 2)), 50)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'c1251058-463f-4ffd-81e2-89926162163b', N'939539a4-85c5-4011-9b9d-8b7bea665204', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'c4de34ab-621e-42a2-86dd-27bbc0660d5c', N'cbf126a7-b532-4c77-bb77-779591c10a6b', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'caae8a8c-7ba2-40ff-95a2-decceaf37450', N'431b9b14-6c58-4163-a7f3-3816105be3e8', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'cf9f1bed-a8b1-4802-bc64-fd513765ee03', N'1c02b25a-864d-4566-8cef-8b31194e45d0', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 10)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'd01f3f2a-1bb8-4b24-948c-de638c7c3348', N'0ed6a21b-684d-4c1a-9dfb-a2ce63d9c2f2', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 10)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'd1f3b07c-f1de-48ac-b82e-2ff21eb42d4d', N'a8bdf967-048b-4cd3-a721-88550d90bd51', N'12515161', CAST(155000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'df3fa4f6-e3b9-4e36-a0a6-406d413e827d', N'7e7a8bc7-0e58-4342-9cc4-883cd3494d75', N'16414911', CAST(13500.00 AS Decimal(16, 2)), 6)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'e024885c-3c02-499d-9d82-476014ccee4b', N'9185e0ee-5075-4bdd-af92-e4be81f6c834', N'12625822', CAST(56000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'e2234c5e-f9b8-4a3f-8655-e101a848bb9a', N'4a674240-08af-4984-beba-da233704415c', N'18218951', CAST(227000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'e3c34d35-a087-4f3a-addd-50290327efd2', N'7e7a8bc7-0e58-4342-9cc4-883cd3494d75', N'12515190', CAST(159000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'eae267fa-9d77-470c-839f-67107d638bee', N'9185e0ee-5075-4bdd-af92-e4be81f6c834', N'15815119', CAST(139000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'ed9f9184-bc81-4e8c-9305-ff29c08b1919', N'19b51625-7584-40d3-bc9f-d59464e0483c', N'12462851', CAST(25000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'f05a341b-c0b6-4a4f-b048-760cd2bbd264', N'22d769f4-289c-4540-aa5d-61464b63c9a4', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 5)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'f1023d72-56f5-4734-9c7a-b57f8b583a04', N'23daa83e-e3d5-4d78-b5f1-8bc434ad6715', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'f4ac0b56-2f8a-4eb0-bdbe-0db38519e3bb', N'9185e0ee-5075-4bdd-af92-e4be81f6c834', N'18218951', CAST(227000.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'fc3155eb-dc7f-4f92-b4ff-7ffa1abe4f79', N'4a674240-08af-4984-beba-da233704415c', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 10)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'ff60683b-2108-492c-b803-9c16c9d584a7', N'e4b65b78-1bbc-4245-b30c-5515b77a169a', N'12515619', CAST(499000.00 AS Decimal(16, 2)), 20)
INSERT [dbo].[tblOrderDetails] ([detailID], [orderID], [productID], [detailPrice], [quantity]) VALUES (N'ff912818-ac69-4e17-848a-f6c1f6bd8788', N'1dbf67bd-96d2-4b62-9da6-3c3e9b1e2932', N'12582581', CAST(70000.00 AS Decimal(16, 2)), 10)
GO
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'00a7f4e3-c3be-44d4-afaf-8c03a57d5344', N'anhlh', CAST(8490000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:16:00.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'09346239-1815-4060-a7ca-07a1edcebf64', N'voducminh140201@gmail.com', CAST(499000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T23:07:24.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'097145b1-ce3e-482e-a386-81b24e8136e0', N'voducminh140201@gmail.com', CAST(499000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T14:56:04.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'0ed6a21b-684d-4c1a-9dfb-a2ce63d9c2f2', N'ngoclh', CAST(4990000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:32:51.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'16243021-4853-405e-947d-09ce68347cc4', N'voducminh140201@gmail.com', CAST(3493000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:04:00.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'19b51625-7584-40d3-bc9f-d59464e0483c', N'voducminh140201@gmail.com', CAST(25000.00 AS Decimal(16, 2)), CAST(N'2021-10-06T18:26:33.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'1c02b25a-864d-4566-8cef-8b31194e45d0', N'anhlh', CAST(6390000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:14:07.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'1dbf67bd-96d2-4b62-9da6-3c3e9b1e2932', N'anhlh', CAST(700000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:23:06.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'22d769f4-289c-4540-aa5d-61464b63c9a4', N'voducminh140201@gmail.com', CAST(2495000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T14:44:13.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'23daa83e-e3d5-4d78-b5f1-8bc434ad6715', N'voducminh140201@gmail.com', CAST(1054000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T23:06:06.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'277e925a-ec9f-4189-a436-9f31216135d0', N'minhvd', CAST(499000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:19:31.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'2a9966df-87d0-4056-8c2a-444885e5504f', N'minhvd', CAST(998000.00 AS Decimal(16, 2)), CAST(N'2021-10-06T03:42:29.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'2b7bf546-2232-4ea7-9622-1a94e4b5f7e5', N'minhvd', CAST(70000.00 AS Decimal(16, 2)), CAST(N'2021-10-06T03:44:22.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'413703a0-8a14-42b3-be54-47a12687d5c9', N'voducminh140201@gmail.com', CAST(499000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T15:02:32.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'431b9b14-6c58-4163-a7f3-3816105be3e8', N'voducminh140201@gmail.com', CAST(2495000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T15:15:58.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'47278c67-93a0-4263-ab8e-0a7fe68f5167', N'voducminh140201@gmail.com', CAST(170000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T00:24:33.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'4a674240-08af-4984-beba-da233704415c', N'voducminh140201@gmail.com', CAST(6125000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:09:18.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'5007a6b4-57a8-4430-8393-adf066f2c328', N'voducminh140201@gmail.com', CAST(13500.00 AS Decimal(16, 2)), CAST(N'2021-10-07T23:08:40.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'673297dc-23d3-458f-98d1-2ed1e7fd114e', N'minhvd', CAST(25000.00 AS Decimal(16, 2)), CAST(N'2021-10-06T17:16:40.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'7254029c-351b-4d68-8694-33592af9d401', N'ngoclh', CAST(4990000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:31:11.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'75634846-7890-41f2-84ce-a61361f72ab4', N'voducminh140201@gmail.com', CAST(318000.00 AS Decimal(16, 2)), CAST(N'2021-10-06T18:34:52.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'7e7a8bc7-0e58-4342-9cc4-883cd3494d75', N'minhvd', CAST(1011000.00 AS Decimal(16, 2)), CAST(N'2021-10-06T04:32:52.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'84f41282-5a87-46ce-b8ac-cf10367ab892', N'anhlh', CAST(1996000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:20:57.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'8706f17d-4c29-4b59-804a-21666a99ed42', N'minhvd', CAST(25000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:17:12.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'891bd4e2-3222-4b4a-845b-847088d78717', N'minhvd', CAST(13500.00 AS Decimal(16, 2)), CAST(N'2021-10-06T03:47:33.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'9185e0ee-5075-4bdd-af92-e4be81f6c834', N'minhvd', CAST(581000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:37:27.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'939539a4-85c5-4011-9b9d-8b7bea665204', N'voducminh140201@gmail.com', CAST(998000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T12:56:36.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'a8bdf967-048b-4cd3-a721-88550d90bd51', N'voducminh140201@gmail.com', CAST(1455000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T00:26:25.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'b09c6d5f-bf41-4c9a-b6f5-71631df36af7', N'minhvd', CAST(25000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:17:48.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'ba5cd1fa-1b90-48cc-9d5d-f7272edc9458', N'voducminh140201@gmail.com', CAST(499000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T15:04:05.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'c9eda6ac-1540-4a62-8ca2-b6e739511c08', N'voducminh140201@gmail.com', CAST(2495000.00 AS Decimal(16, 2)), CAST(N'2021-10-07T14:43:37.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'cbf126a7-b532-4c77-bb77-779591c10a6b', N'anhlh', CAST(3645000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:11:35.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'e4b65b78-1bbc-4245-b30c-5515b77a169a', N'voducminh140201@gmail.com', CAST(9980000.00 AS Decimal(16, 2)), CAST(N'2021-10-08T02:27:12.000' AS DateTime))
INSERT [dbo].[tblOrders] ([orderID], [userID], [totalPrice], [createDate]) VALUES (N'f4479adf-c04b-41ba-880f-2a23a83a0282', N'minhvd', CAST(478500.00 AS Decimal(16, 2)), CAST(N'2021-10-06T12:59:51.000' AS DateTime))
GO
INSERT [dbo].[tblProductAvailable] ([availableID], [availableName]) VALUES (1, N'Available')
INSERT [dbo].[tblProductAvailable] ([availableID], [availableName]) VALUES (2, N'Not Available')
INSERT [dbo].[tblProductAvailable] ([availableID], [availableName]) VALUES (3, N'Coming Soon')
INSERT [dbo].[tblProductAvailable] ([availableID], [availableName]) VALUES (4, N'SALE')
GO
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'12415121', N'Rau Kinh Giới Hữu Cơ - 50g

', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/rau-gia-vi/rau-kinh-gioi-huu-co-320x320.jpg', CAST(13000.00 AS Decimal(16, 2)), 9, N'Rau kinh giới hữu cơ rất giàu vitamin và khoáng chất, không chỉ là gia vị mà còn có tác dụng chữa trị rất nhiều bệnh. Đặc biệt nó có khả năng điều trị nhiều loại bệnh, kháng khuẩn và chống oxy hóa, kinh giới giúp chữa trúng phong, cấm khẩu, chữa dị ứng , cảm lạnh…
', 3, 4, CAST(N'2020-07-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'12462851', N'Rau Hẹ Hữu Cơ - 100g
', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/rau-gia-vi/he-huu-co-320x320.jpg', CAST(25000.00 AS Decimal(16, 2)), 8, N'Rau hẹ có tác dụng chữa được ngứa ghẻ, chín mé, nhiễm trùng da bằng cách đắp lá giã nhỏ lên vết thương; kháng viêm diệt khuẩn,… Ngoài ra còn có tác dụng chữa bệnh: Hỗ trợ điều trị đái tháo đường,nhuận tràng, trị táo bón,chữa ho trẻ em do cảm lạnh,giúp bổ mắt,tiểu đường,..', 1, 4, CAST(N'2021-02-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'12511251', N'Bánh Quy Ngũ Cốc Hạt Socola Hữu Cơ Bisson - 200g
', N'https://organicfood.vn/image/cache/catalog/banh-quy-ngu-coc-hat-socola-huu-co-Bisson-320x320.jpg', CAST(170000.00 AS Decimal(16, 2)), 10, N'Bánh quy chocolate Pháp Martin Bio Bánh thơm ngon, giòn, hương vị béo ngậy vị sô cô la đen hấp dẫn người dùng. Có thể dùng trực tiếp, chấm sữa tươi hoặc sử dụng khi uống trà. Phù hợp cho gia đình, đi dã ngoại, đi học, đi làm..... Thương hiệu bánh quy nổi tiếng của Pháp, quê hương của các loại bánh ngọt phổ biến.', 1, 6, CAST(N'2021-04-04T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'12515161', N'Bơ Sáp 034 Hữu Cơ - 1kg', N'https://organicfood.vn/image/cache/catalog/bo-sap-034-huu-co-1kg-2-320x320.jpg', CAST(155000.00 AS Decimal(16, 2)), 10, N'Bơ sáp giống 034 được trồng theo phương pháp hữu cơ, không phân bón hoá học, kích thích tăng trưởng và chất độc hại. Cơm vàng ươm, béo, dẻo, hàm lượng dinh dưỡng cao Trái bơ có chứa hơn 14 loại vitamin và khoáng chất bao gồm canxi, sắt, đồng, magiê, phốtpho, kali, natri, kẽm mangan và selen. Là một trong rất ít loại trái không có cholesterol, mà lại có chứa chất béo đơn không bảo hòa, đây là loại chất béo tốt cho cơ thể giúp làm giãm hàm lượng cholesterol. Trái bơ có chứa hàm lượng protein cao nhất so với các loại quả khác, cao gần như tương đương với sữa. Giá trị làm đẹp trong bơ có giàu vitamin A, E, D cùng với các khoáng chất kali, phốtpho, lưu huỳnh và clo làm mịn da, chống lão hóa,  thúc đẩy việc sản xuất chất collagen.
', 4, 5, CAST(N'2020-03-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'12515190', N'Bánh Quy Hương Chanh Và Hạt Lanh Hữu Cơ Bisson - 190g', N'https://organicfood.vn/image/cache/catalog/Banh-quy-huong-chanh-va-hat-lanh-huu-co-Bisson-320x320.jpg', CAST(159000.00 AS Decimal(16, 2)), 17, N'Bánh quy giòn được bổ sung thêm hạt lanh, cùng hương chanh dịu mát sẽ cho bạn một bữa ăn năng lượng.  Hạt lanh chứa rất nhiều: - omega-3: giúp chống viêm và bảo vệ sức khỏe tim mạch - lignan: chống oxy hóa và ngăn ngừa bệnh ung thư - chất xơ: hỗ trợ tiêu hóa Bánh quy sẽ ngon hơn khi bạn kết hợp với sữa tạo thành một bữa sáng/bữa xế ngon lành.  Bánh được chứng nhận hữu cơ EU, chứng nhận vegan - phù hợp với người ăn chay.

', 1, 6, CAST(N'2020-12-04T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'12515619', N'Giỏ Quà Tri Ân 20/11
', N'https://organicfood.vn/image/cache/catalog/combo-gi%E1%BB%8F-tr%C3%A1i-c%C3%A2y-nha-giao-viet-nam-320x320.jpg', CAST(499000.00 AS Decimal(16, 2)), 10, N'Mừng ngày lễ nhà giáo Việt Nam 20/11, Organicfood ra mắt giỏ quà "Tri Ân" dành cho những ai muốn gửi sự quý mến và biết ơn đến những người khai sáng.  Giỏ quà với ý nghĩa trao gửi lòng biết ơn bằng những thức quà sức khỏe với mong muốn thầy cô luôn khỏe mạnh để tiếp tục truyền đạt tri thức cho những thế hệ học trò tiếp theo.  Giỏ quà bao gồm: 1Kg Cam sành hữu cơ 1Kg Kiwi xanh hữu cơ 1Kg Táo hữu cơ Juliet 1 trái Dưa lưới hữu cơ Nhật 1 trái Bưởi da xanh hữu cơ  Trái cây hữu cơ tại Organicfood đạt các chuẩn hữu cơ  Châu Âu EU, Không dung lượng thuốc trừ sâu, Không biến đổi gen (GMO)
', 1, 5, CAST(N'2017-06-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'12516161', N'Ngò Rí Hữu Cơ - 100g
', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/rau-gia-vi/ngo-ri-huu-co-320x320.jpg', CAST(27000.00 AS Decimal(16, 2)), 0, N'Cây ngò rí (mùi tàu) là một loại gia vị quen thuộc trong bữa cơm. Đông y còn sử dụng ngò rí làm vị thuốc trị 10 chứng bệnh hay gặp như tiêu chảy, loét miệng, thiêu máu... Không chỉ là loại gia vị giúp món ăn trở nên thơm ngon hơn, ngò rí (hay còn gọi là ngò ta hoặc rau mùi) còn mang lại nhiều lợi ích cho sức khỏe. Thường xuyên ăn ngò rí giảm thiểu lượng cholesterol xấu
', 2, 4, CAST(N'2018-07-08T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'12518161', N'Cherry New Zealand 500g Size 30', N'https://organicfood.vn/image/cache/catalog/Trai-cay-huu-co/Trai-cay-NK/cherry-new-zealand-320x320.jpg', CAST(445000.00 AS Decimal(16, 2)), 0, N'Cherry là nguồn vitamin A tuyệt vời, là loại trái cây giàu chất sắt, chất xơ cao, không cholesterol và Natri, tốt cho hệ miễn dịch, tiêu hóa và làm đẹp da. Cherry chống oxy hóa rất tốt cho tim mạch, giúp bảo vệ cơ thể chống lại bệnh ung thư và nó hoạt động như một loại thuốc giảm đau và giảm viêm cho các bệnh nhân gút và khớp. Cherry chứa melatonin – một chất giúp điều hòa giấc ngủ nên nó có thể giúp ngủ ngon. Cherry cũng là một món ăn nhẹ tốt cho sức khỏe mà trẻ em yêu thích. Cherry được ví là “Kim cương của hoa quả”, chính là một thực phẩm quý khách cần bổ sung vào thực đơn của mình.
', 3, 5, CAST(N'2021-01-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'12582581', N'Bắp Nếp Hữu Cơ - 1kg', N'https://organicfood.vn/image/cache/catalog/Trai-cay-huu-co/trai-cay-Viet-Nam/bap-nep-320x320.jpg', CAST(70000.00 AS Decimal(16, 2)), 31, N'Bắp nếp là một loại ngũ cốc dễ ăn, dễ trồng được mệnh danh là Ngọc Mễ (Hạt ngọc quý) đối với người Việt xưa. Khi mà xã hội ngày càng phát triển, nhiều loại hạt và ngũ cốc được khoa học chứng minh về mức độ dinh dưỡng cùng khả năng phòng chống bệnh tật, bắp nếp cũng là một trong những loại trái cây như thế. Tuy nhiên, đa phần người Việt ngày nay đều chưa hiểu hết được giá trị loại ngũ cốc này, chỉ xem đó như một chất tinh bột cần kiêng khem mà không biết bắp nếp là một loại ngũ cốc có rất nhiều công dụng như: - Hỗ trợ đường tiêu hóa - Giàu vitamin và khoáng chất - Ngăn ngừa thiếu máu - Kiểm soát đường huyết …. Bên cạnh những món ăn quen thuộc như xôi bắp, bắp nếp xào tôm khô, bắp hầm…, sữa bắp nếp cũng là món được nhiều chị em ưa chuộng nhờ vào hương vị ngọt bùi tự nhiên và phương pháp chế biến và bảo quản tương đối đơn giản.

', 1, 5, CAST(N'2019-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'12586185', N'Bơ Booth Hữu Cơ 1kg
', N'https://organicfood.vn/image/cache/catalog/bo-booth-320x320.jpg', CAST(98000.00 AS Decimal(16, 2)), 0, N'Trong vài năm gần đây người tiêu dùng Việt dần quen với một giống Bơ cực ngon được trồng tại Đắk Lăk. Không chỉ cho chất lượng ổn định: ít sượng, ít thối mà còn mang lại hương vị nhiều phần khác biệt. Người ta đánh giá Bơ Booth có cơm khô và dẻo hơn đáng kể so với bơ Sáp thường, đồng thời khi ăn cảm nhận rõ vị ngọt ngậy nổi bật, chỉ bóc ăn không đã ngon rồi chứ chưa cần thêm đường, thêm sữa. Đặc biệt mùa Bơ Booth từ tháng 9-11, tức là muộn hơn 2 tháng so với Bơ Sáp, khiến nó đã ngon nay lại thêm phần quý hiếm.  Tác dụng của việc ăn bơ: Quả bơ chứa khoảng 25 loại vitamin và khoáng chất tự nhiên tốt cho sức khỏe: Ở những người huyết áp không ổn định Bơ giúp ổn định huyết áp, những người có nguy cơ béo phì Bo giúp  kiểm soát cân nặng, với tất cả mọi người thường xuyên ăn bơ thì Bơ giúp ngăn ngừa ung thư, Với các chị em phụ nữ, các mẹ thì việc ăn Bơ thường  xuyên giúp duy trì làn da khỏe mạnh.... và còn rất nhiều tác dụng tuyệt vời mà việc ăn bở đem lại nữa.', 3, 5, CAST(N'2020-04-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'12625822', N'Mộc Nhĩ Khô Hữu Cơ - Gói 70g', N'https://organicfood.vn/image/cache/catalog/moc-nhi-kho-organic-goi-70g-320x320.jpg', CAST(56000.00 AS Decimal(16, 2)), 24, N'Mộc nhĩ là một loại thực vật thuộc nhà nấm chúng thường mọc trên thân cây đã chết hoặc ở trên những cây có tán lá rộng. Đây là loài ký sinh trùng ưa khí hậu ẩm ướt, mưa nhiều nên phát triển mạnh ở các nước Châu Á, Thái Bình Dương. Mọc Nhĩ là một cái trên không còn xa lạ trong ẩm thực Việt, chúng được sử dụng làm nguyên liệu trong rất nhiều món ăn ngon. Tạo nét độc đáo và hương vị riêng cho ẩm thực văn hóa Việt Nam.
', 1, 3, CAST(N'2017-05-29T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'12645128', N'Nấm Kim Châm Hàn Quốc - 500g', N'https://organicfood.vn/image/cache/catalog/nam-kim-cham-han-quoc-enoki--320x320.jpg', CAST(27000.00 AS Decimal(16, 2)), 42, N'Nấm kim châm là một loài nấm màu trắng được sử dụng trong ẩm thực các nước châu Á như Hàn Quốc, Nhật Bản, Triều Tiên. Loại nấm này theo truyền thống được sử dụng nấu món lẩu, nhưng cũng có thể được sử dụng cho món salad và các món ăn khác. 100 gram nấm kim châm cung cấp: 36 kcal, 3mg Natri, 359mg Kali, 8mg Carbohydrate, 2,7g Chất xơ, 0,2g Đường, 2,7g Protein, 1,2mg Sắt, 0,1mg Vitamin B6, 16mg magie. Nấm kim châm chứa nhiều lysine rất cần cho quá trình sinh trưởng, cải thiện chiều cao và trí tuệ trẻ em. Bạn có thể chế biến nấm kim châm thành nhiều món ăn ngon như: nhúng lẩu, cuộn thịt bò, nấu cháo,...

', 1, 3, CAST(N'2020-10-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'12686525', N'Rau Rocket Arugula Hữu Cơ - Hộp 100g
', N'https://organicfood.vn/image/cache/catalog/rau-rocket-arugula-huu-co-320x320.jpg', CAST(57700.00 AS Decimal(16, 2)), 17, N'Rau rocket hay còn gọi là cải lông,  là một nguyên liệu tuyệt vời cho món salad trộn. Vị cay cay cùng độ hăng tự nhiên giúp các món ăn từ loại rau này trở nên đặc biệt hơn bao giờ hết.  Ngoài hương vị thơm ngon, rocket còn lại một loại rau giàu chất dinh dưỡng, có tác dụng: - Ngừa ung thư - Hỗ trợ giảm cân - Bảo vệ não - Lọc máu, ngừa tổn thương gan - Giảm viêm - Hỗ trợ xương chắc khỏe
.', 1, 3, CAST(N'2021-02-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'15815119', N'Bơ Hạt Điều Có Hạt Đạt Butter - 150g

', N'https://organicfood.vn/image/cache/catalog/bo-hat-dieu-co-hat-150g-dat-butter-320x320.jpg', CAST(139000.00 AS Decimal(16, 2)), 15, N'Bơ điều tự nhiên có hạt (150g) | Cashew Butter Made Crunchy (150g) - Thông tin sản phẩm: Bơ điều dạng hạt hướng hữu cơ được sản xuất bởi Đạt Butter bằng nguyên liệu tự nhiên, đảm bảo an toàn cho sức khỏe người tiêu dùng. Bơ điều dạng hạt được xay không nhuyễn hoàn toàn mà còn ở dạng hạt nhỏ, không đồng đều nhau. Nguyên liệu sử dụng để xay là 99% hạt điều nguyên chất cùng với 1% muối và không có bất cứ chất hóa học, chất bảo quản nào trong sản phẩm. Bơ điều dạng hạt có màu vàng tươi và có những hạt nhỏ, có thể dùng ăn liền hoặc chế biến các món ăn. - Lợi ích của sản phẩm: ◾ Cung cấp năng lượng ◾ Ngăn ngừa thiếu máu ◾ Cung cấp chất béo cần thiết, tốt cho tim mạch ◾ Nguồn chất chống oxy hóa tuyệt vời - Cách bảo quản: Sau khi mở nắp thì thời gian lưu trữ sản phẩm là 6 tháng kể từ ngày sản xuất, nếu: Đảm bảo bơ hạt điều được múc, khuấy bằng dụng cụ sạch và sau khi sử dụng khách hàng vui lòng đóng chặt nắp lại và lưu trữ sản phẩm ở nơi khô ráo, thoáng mát, tránh ánh nắng mặt trời (nếu không có tủ lạnh).
', 1, 6, CAST(N'2021-04-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'15816196', N'Bơ Sáp Giống Cổ 1Kg

', N'https://organicfood.vn/image/cache/catalog/Trai-cay-huu-co/trai-cay-Viet-Nam/bo-huu-co-320x320.jpg', CAST(160000.00 AS Decimal(16, 2)), 0, N'Bơ DakLak tại Organic được chọn lựa kỹ càng từ chính nông trại của Organic, đảm bảo sạch, không hóa chất, không thuốc tăng trưởng, các chất làm biến đổi gen. Có nhiều size theo cân nặng, đáp ứng đủ các nhu cầu của khách hàng,… Bơ trái to, thịt bơ béo ngậy, ruột vàng hấp dẫn,…', 3, 5, CAST(N'2021-01-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'16414911', N'Húng Quế Hữu Cơ - 50g', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/rau-gia-vi/hung-que-huu-co-320x320.jpg', CAST(13500.00 AS Decimal(16, 2)), 178, N'Cây húng quế là một loại thảo dược thuộc họ bạc hà có vị cay, tính nóng được dùng làm gia vị cho các món ăn và cũng mang lại nhiều lợi ích về sức khỏe. Một số người còn dùng nước cây húng quế để súc miệng.', 1, 4, CAST(N'2019-03-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'18218951', N'Bơ Hạt Vừng Bóc Vỏ Hữu Cơ Mayvers - 385g', N'https://organicfood.vn/image/cache/catalog/bo-hat-vung-boc-vo-huu-co-mayvers-385g-320x320.png', CAST(227000.00 AS Decimal(16, 2)), 13, N'– Giàu dinh dưỡng thực vật : protein, vitamin và chất khoáng cần thiết cho cơ thể (sắt, kẽm, manga, canxi), chất chống oxi hoá (vitamin E) hỗ trợ giảm cholesterol xấu và bệnh tim mạch vành. Chứa rất ít muối và chất béo bão hoà, chỉ số đường huyết (Glycemic Index) thấp, là nguồn cung cấp canxi, chất xơ và chất béo không bão hoà tốt cho cơ thể, đặc biệt là não bộ. – Sản phẩm không chứa gluten, cholesterol và thành phần nguồn gốc sữa động vật. – Phù hợp với chế độ ăn chay.

', 1, 6, CAST(N'2019-09-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'18581517', N'Bánh Waffles Hạt Phỉ Hữu Cơ Biona - 175g', N'https://organicfood.vn/image/cache/catalog/banh-waffles-hat-phi-huu-co-biona-320x320.jpg', CAST(179000.00 AS Decimal(16, 2)), 278, N'Hương vị cổ điển cộng với một chút biến tấu. bánh waffle hạt phỉ hữu cơ Biona là món ăn nhẹ hoàn hảo cho những ai muốn thưởng thức vị ngọt đậm đà. Những chiếc bánh được phủ đầy lớp nhân hạt phỉ mịn màng và ngon miệng, tạo nên một món ăn nhẹ hữu cơ chắc chắn sẽ làm thỏa mãn những cơn thèm ăn của bạn.
', 1, 6, CAST(N'2021-01-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'23424221', N'Xà Lách Romaine - 250g', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/rau-huu-co/xa-lach-romaine-320x320.jpg', CAST(49000.00 AS Decimal(16, 2)), 23, N'Xà lách Romaine là loại rau giòn và dai có hàm lượng chất xơ cao, nhiều chất khoáng, photpho, magie và Kali, ít calories, vitamin C, vitamin K. Một phần xà lách romaine nhỏ chỉ có khoảng 8 calories và 1-2 gram carbonhydrate. Chính vì vậy, đây là loại rau thích hợp cho những người ăn kiêng.', 1, 1, CAST(N'2021-04-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'24524655', N'Xà Lách Lô Lô Đỏ - 250g', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/rau-huu-co/xa-lach-lolo-do-320x320.jpg', CAST(45000.00 AS Decimal(16, 2)), 57, N'• Xà lách có thể được ăn sống hoặc nấu chín, xà lách tươi sống, có nhiều chất dinh dưỡng và có nhiều tác dụng hơn xà lách nấu chín. • Bạn có thể dùng lá xà lách sống trong các món salad, sandwiches, dùng để cuốn, và trong nhiều món ăn khác. Cách tốt nhất là chiết xuất nước xà lách để lấy được hết các chất dinh dưỡng của nó. Nó tạo thức uống rất ngon khi xay với cà rốt, cà chua, cần tây, rau thì là và atiso • Xà lách Lô lô tím khi ăn chung với Mayonnaise sẽ giúp tăng khả năng hấp thụ các chất dinh dưỡng và cơ thể.
', 1, 1, CAST(N'2020-07-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'25342425', N'Xà Lách Búp Mỹ Hữu Cơ - 250g', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/rau-huu-co/xa-lach-bup-my-320x320.jpg', CAST(45000.00 AS Decimal(16, 2)), 12, N'Xà lách búp Mỹ là loại xà lách cuộn chặt thành búp lớn, nặng, lá to, giòn và ngọt, nhìn tương tự búp bắp cải. Cứ 100 gam xà lách sẽ cung cấp khoảng 2,2 gam carbohydrate, 1,2 gam chất xơ, 90 gam nước, 166 microgram vitamin A, 73 microgram folate (vitamin B9).', 4, 1, CAST(N'2019-12-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'25475252', N'Bông Atiso Tươi -300g', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/cu-qua-huu-co/bong-atiso-tuoi-huu-co-320x320.jpg', CAST(153000.00 AS Decimal(16, 2)), 14, N'• Thông mật, lợi tiểu, giảm Urê máu, hạ sốt, nhuận trường, đó chính là công dụng của bông Atisô. Cụm hoa của bông Atisô được dùng trong chế độ ăn kiêng của người bệnh đái tháo nhạt vì nó chỉ chứa lượng nhỏ tinh bột, phần Carbon Hydrat gồm phần lớn là Inlin. • Lá Atisô có vị đắng, có tác dụng lợi tiểu và được dùng trong điều trị bệnh phù và thấp khớp. Lá tươi hoặc khô sắc  hoặc nấu thành cao chữa bệnh về Gan (gan viêm mạn, da vàng), thận viêm cấp và mạn, sưng khớp xương. Thuốc có tác dụng nhuận trường và lọc máu nhẹ đối với trẻ em. Thân và rễ Ác ti sô thái mỏng, phơi khô, công dụng giống lá. Actisô được dùng trị bệnh  ở Châu Âu từ lâu như vị thuốc làm mát gan, nhuận trường, thông tiểu.
', 1, 2, CAST(N'2020-12-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'26427425', N'Cần Tây Hữu Cơ - 300g
', N'https://organicfood.vn/image/cache/catalog/can-tay-huu-co-organicfood-320x320.jpg', CAST(75500.00 AS Decimal(16, 2)), 36, N' Cần tây tại Organicfood.vn được chứng nhận hữu cơ bởi Tổ chức Các phong trào Nông nghiệp Hữu cơ Quốc tế (IFOAM). Cần Tây là loại cây thảo sống 1-2 năm có thân mọc đứng, cao khoảng 1m, có rãnh dọc. Lá ở gốc có cuống, xẻ ba thuỳ hình tam giác, các lá giữa và lá ở ngọn không có cuống, cũng chia ba thuỳ, xẻ 3 hoặc không chia thuỳ. Hoa màu trắng hay xanh lục, xếp thành tán.

', 1, 1, CAST(N'2021-08-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'26472552', N'Bí Nhật Hữu Cơ - 350g

', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/cu-qua-huu-co/bi-nhat-huu-co-320x320.jpg', CAST(45000.00 AS Decimal(16, 2)), 172, N'• Bí đỏ là nguồn cung cấp dồi dào vitamin A, đóng vai trò quan trọng cho thị giác, tăng trưởng xương và sự sinh sản, điều hòa hệ miễn dịch và bảo vệ cho da.   • Bí đỏ được coi là món ăn bổ não, trị suy nhược thần kinh, trẻ em chậm phát triển về trí óc, và có tính nhuận trường. • Ngoài tỷ lệ chất xơ và sắt khá cao, bí đỏ còn mang lại vitamin C, acid folic, magiê, kali và nhiều nguyên tố vi lượng khác. Đây cũng là thực phẩm cần cho những ai sợ mập vì dù có hàm lượng protein cao nhưng lại  không chứa chất béo.', 1, 2, CAST(N'2021-07-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'27452743', N'Mồng Tơi Hữu Cơ - 300g', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/rau-huu-co/rau-mong-toi-huu-co-320x320.jpg', CAST(38000.00 AS Decimal(16, 2)), 63, N'Mồng tơi mát và mùa nè nóng nực nó được xem như thứ rau vua. Trong Đông y, mồng tơi có tính hàn, vị chua, không độc, đi vào 5 kinh tâm, tì, can, đại trường, tá tràng, giúp lợi tiểu, tán nhiệt, giải độc, làm đẹp da, trị rôm sảy, mụn nhọt.

Chất nhầy pectin có trong mồng tơi có tác dụng nhuận tràng, trừ thấp nhiệt, giảm béo, chống béo phì, do đó loại rau này đặc biệt thích hợp cho những người có mỡ máu, đường huyết cao, muốn giảm cân.', 1, 1, CAST(N'2021-09-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'27562562', N'Nấm Ngô Tươi Hữu Cơ - Gói 300g', N'https://organicfood.vn/image/cache/catalog/nam-ngo-tuoi-organic-goi-300g-320x320.jpg', CAST(95000.00 AS Decimal(16, 2)), 124, N'Nấm Ngô có mùi thơm, chứa nhiều protein chỉ đứng sau thịt, cá. Rất giàu khoáng chất, các amino acid tan trong nước và các vitamin quan trọng nên rất tốt cho sức khỏe, đặc biệt là người bệnh ăn nấm này sẽ mau hồi phục sức khỏe.  Ngăn ngừa một số bệnh như: giảm Cholesterol trong máu, tiểu đường, béo phì, tim mạch, kháng ung thư.... Ngoài ra, nó còn là một loại nấm giàu dinh dưỡng, 1 cây nấm có trọng lượng từ 2 – 8gam. Đặc biệt nấm có tác dụng bổ thận, tráng dương nên rất tốt dùng cho nam giới, nhất là nam giới bị nhược dương.

', 1, 3, CAST(N'2021-06-04T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'32522162', N'Chanh Giấy Hữu Cơ-200g

', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/cu-qua-huu-co/chanh-giay-huu-co-320x320.jpg', CAST(24000.00 AS Decimal(16, 2)), 13, N'Đặc điểm: - Bông trắng nở theo chùm, mùi thơm. Cây cho trái sau thời gian 12-15 tháng trồng. Cây trưởng thành cao từ 1m, lớn nhất là 3m. Tán trong vòng 2m. Cây không kén đất, dễ trồng. - Trái nước nhiều, vị chua, vỏ mỏng. Khi cây trưởng thành đủ sức sẽ
 có nhiều trái.', 1, 4, CAST(N'2021-01-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'44235257', N'Bông Cải Xanh Hữu Cơ - 250g', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/cu-qua-huu-co/bong-cai-xanh-huu-co-320x320.jpg', CAST(49000.00 AS Decimal(16, 2)), 18, N'• Có rất nhiều món ăn được chế biến từ bông cải xanh chẳng hạn như pasta với bông cải xanh, súp bông cải xanh, bông cải xanh xào tôm... • Ta có bông cải xanh trộn dầu hàu, một món ăn giàu đạm và rất ngon hay gà xào bông cải xanh món ăn âm dương kết hợp hài hòa .... • Ngoài ra bông cải xanh được dùng để làm các món salad, xào thịt, xào hải sản, giúp món ăn hạ bớt lượng nhiệt từ dầu mỡ, thịt, đảm bảo hài hòa, cân bằng cho bữa ăn...
', 4, 2, CAST(N'2020-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'52685285', N'Rau Cải Mầm Hữu Cơ - 250g', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/rau-huu-co/cai-mam-huu-co-320x320.jpg', CAST(46500.00 AS Decimal(16, 2)), 47, N'Hàm lượng chất dinh dưỡng có trong rau cải mầm cao gấp khoảng 5 lần rau thông thường, chứa nhiều Vitamin A, B, C, E, chất xơ, khoáng chất và Amino acid, giúp tăng cường kháng thể, hỗ trợ phòng chống và điều trị bệnh ung thư, cao huyết áp, tim mạch, mỡ máu cao…, thích hợp với người tiêu hóa kém và người ăn kiêng. Bạn chỉ cần dùng một lượng nhỏ rau mầm mỗi ngày (50-70g) cũng đủ để cung cấp đầy đủ chất dinh dưỡng cho cơ thể. Rau cải mầm chứa các chất chống ôxy hoá, làm chậm quá trình lão hóa, giúp phụ nữ tăng cường sắc đẹp và sức khỏe một cách tự nhiên.

', 1, 3, CAST(N'2021-05-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'54726525', N'Cải Ngọt Hữu Cơ - 250g', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/rau-huu-co/cai-ngot-huu-co-320x320.jpg', CAST(39000.00 AS Decimal(16, 2)), 13, N'Cải ngọt có nguồn gốc từ Ấn Độ, Trung Quốc. Cây thảo, cao tới 50 - 100 cm, thân tròn, không lông, lá có phiến xoan ngược tròn dài, đầu tròn hay tù, gốc từ từ hẹp, mép nguyên không nhăn, mập, trắng trắng, gân bên 5 - 6 đôi, cuống dài, tròn. Chùm hoa như ngù ở ngọn, cuống hoa dài 3 – 5 cm, ha vàng tươi, quả cải dài 4 – 11 cm, có mỏ, hạt tròn. Cải ngọt được trồng quanh năm, thời gian sinh trưởng Ở Việt Nam, cải ngọt thường được chế biến thành các món ăn như cải ngọt xào thịt, canh cải ngọt nấu tôm, rau cải ngọt luộc chấm xì dầu, cải ngọt xào thịt bò, cải ngọt xào chân gà..., làm lẩu cá, lẩu thịt.
', 1, 1, CAST(N'2015-08-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'62542572', N'Dưa Leo Baby Hữu Cơ-300g

', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/cu-qua-huu-co/dua-leo-baby-huu-co-320x320.jpg', CAST(25000.00 AS Decimal(16, 2)), 24, N'Dưa chuột (hay dưa leo) là một loại rau ăn quả quen thuộc đối với người Việt Nam. Dưa chuột rất mát, vị giòn, ngon ngọt, thơm hấp dẫn. Dưa chuột có tác dụng thanh nhiệt, giải khát, mát da thịt, lợi tiểu, chữa phù thũng, sưng trướng, kiết lỵ do nhiệt, đau bụng do ruột bị kích thích, chống lại các bệnh ung thư và dưỡng da. Dưa chuột có hàm lượng canxi cao nên có tác dụng tốt đối với trẻ em chậm lớn. Ngoài ra, dưa chuột còn có tác dụng hỗ trợ tiêu hóa, giảm cân và giúp thận khỏe mạnh. Món ngon với dưa chuột: dưa chuột trộn chua cay, dưa chuột chấm muối ớt, dưa chuột trộn phổ tai, dưa chuột xào chả cá, tôm sú xào dưa chuột hạt điều, dưa chuột xào thịt băm, dưa chuột trộn sò điệp, salad dưa chuột…
', 1, 2, CAST(N'2019-08-08T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'63426265', N'Măng Tây Xanh Hữu Cơ Loại 1 - 250g
', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/nam-rau-mam/mang-tay-huu-co-320x320.jpg', CAST(68000.00 AS Decimal(16, 2)), 0, N'Măng tây được trồng để thu lấy chồi, phần chồi này có hàm lượng dinh dưỡng cao. Trong 100g măng tây xanh (tươi) chứa 2,2% đạm, 3,9% cacbohydrate, 2,1% xơ, 0,6% tro, 0,1% béo và các khoáng chất (canxi, sắt, magiê, mangan, phốt pho, kali, kẽm… chiếm 35%). Ngoài ra, nó còn chứa rất nhiều loại vitamin cần thiết như vitamin C, E, K, thiamine (vitamin B1), riboflavin (vitamin B2), niacin (vitamin B3), axit pantothenic (vitamin B5), pyridoxine (vitamin B6), folate (vitamin B9), … Hơn nữa, đọt măng tây lại có vị ngọt đặc trưng, có thể dùng để chế biến thành nhiều món ăn ngon như salad măng tây, măng tây xào.....', 2, 3, CAST(N'2021-09-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'65811511', N'Sả Cây Hữu Cơ - 200g', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/rau-gia-vi/sa-huu-co-320x320.jpg', CAST(45000.00 AS Decimal(16, 2)), 415, N'Ăn sả cũng có tác dụng giải độc cơ thể bằng cách tăng cường số lượng và tần xuất đi tiểu (thông tiểu tiện). Điều này giúp cho gan, đường tiêu hóa, tuyến tụy, thận và bàng quang được sạch sẽ và khỏe mạnh bằng cách hỗ trợ cơ thể để loại bỏ các chất độc hại không mong muốn và acid uric.  Đặc biệt sả giải độc rượu rất nhanh, bạn có thể dùng 1 bó sả giã nát, thên nước lọc, gạn lấy 1 chén. Người say rượu nặng uống vào sẽ nhanh chóng tỉnh và đỡ mệt, đỡ nhức đầu.', 1, 4, CAST(N'2015-07-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'68436425', N'Cà Chua Bee Socola Hữu Cơ- 300g

', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/cu-qua-huu-co/ca-chua-bee-chocolate-huu-co-320x320.jpg', CAST(38000.00 AS Decimal(16, 2)), 47, N'• Cà chua bi sô cô la có công dụng làm đẹp như: chống lão hóa, làm da mịn màng tươi sáng, bảo vệ bề mặt da .... • Cũng giống như các loại cà chua khác công dụng chữa bệnh của cà chua rất nhiều, phòng chống ung thư, chữa viêm gan mãn tính, hỗ trợ cho người bị viêm thận, chữa bệnh tim mach, chữa bí đại tiện, thiếu máu, chữa mún nhọt, bõng lửa, chữa sốt cao kèm theo khát nước hay chữa tăng huyết áp, chảy máu chân răng...

', 1, 2, CAST(N'2021-10-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'76425262', N'Khoai Lang Nhật Hữu Cơ - 500g
', N'https://organicfood.vn/image/cache/catalog/Rau-cu-qua-huu-co/cu-qua-huu-co/khoai-lang-huu-co-320x320.jpg', CAST(39000.00 AS Decimal(16, 2)), 27, N'Đặc điểm của khoai lang Nhật là thân to mập, ít phân cành và có màu tím. Khả năng sinh trưởng phát triển mạnh, thời gian sinh trưởng 105 - 120 ngày. Năng suất 9 - 15 tấn/hécta. Dạng củ thuôn dài, vỏ củ nhẵn màu tím, ruột màu vàng đậm. Hàm lượng chất khô 27 - 33%. Phù hợp ăn tươi, chế biến, xuất khẩu.

Link nguồn : https://organicfood.vn/khoai-lang-nhat.html', 1, 2, CAST(N'2018-05-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tblProducts] ([productID], [productName], [productImage], [productPrice], [quantity], [description], [availableID], [categoryID], [createDate], [productStatus]) VALUES (N'90175911', N'Bơ Hạt Điều Có Hạt Đạt Butter - 240g
', N'https://organicfood.vn/image/cache/catalog/bo-hat-dieu-co-hat-240g-dat-butter-320x320.jpg', CAST(190000.00 AS Decimal(16, 2)), 0, N'Bơ hạt điều tự nhiên có hạt (240g) | Cashew butter made crunchy (240g) - Thông tin sản phẩm: Bơ điều dạng hạt hướng hữu cơ được sản xuất bởi Đạt Butter bằng nguyên liệu tự nhiên, đảm bảo an toàn cho sức khỏe người tiêu dùng. Bơ điều dạng hạt được xay không nhuyễn hoàn toàn mà còn ở dạng hạt nhỏ, không đồng đều nhau. Nguyên liệu sử dụng để xay là 99% hạt điều nguyên chất cùng với 1% muối và không có bất cứ chất hóa học, chất bảo quản nào trong sản phẩm. Bơ điều dạng hạt có màu vàng tươi và có những hạt nhỏ, có thể dùng ăn liền hoặc chế biến các món ăn. - Lợi ích của sản phẩm: ◾ Cung cấp năng lượng ◾ Ngăn ngừa thiếu máu ◾ Cung cấp chất béo cần thiết, tốt cho tim mạch ◾ Nguồn chất chống oxy hóa tuyệt vời - Cách bảo quản: Sau khi mở nắp thì thời gian lưu trữ sản phẩm là 6 tháng kể từ ngày sản xuất, nếu: Đảm bảo bơ hạt điều được múc, khuấy bằng dụng cụ sạch và sau khi sử dụng khách hàng vui lòng đóng chặt nắp lại và lưu trữ sản phẩm ở nơi khô ráo, thoáng mát, tránh ánh nắng mặt trời (nếu không có tủ lạnh). - Lưu ý: Chất lượng bơ hạt điều được bảo quản trong tủ lạnh và nhiệt độ thường là như nhau. - Cách chế biến: Bơ hạt điều ăn kèm bánh mì, làm bánh. Ngoài ra, bơ hạt điều hướng hữu cơ còn có thể dùng trong nhiều món ăn khác nhau tùy theo khẩu vị từng người. - Hạn sử dụng: 6 tháng kể từ ngày sản xuất. - Xuất xứ: Việt Nam
', 2, 6, CAST(N'2019-04-05T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (1, N'AD')
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (2, N'User')
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (3, N'GG')
GO
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Anh LH', N'HCM', N'HCM', N'HCM', N'0911111111', N'', N'00a7f4e3-c3be-44d4-afaf-8c03a57d5344', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'09346239-1815-4060-a7ca-07a1edcebf64', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'097145b1-ce3e-482e-a386-81b24e8136e0', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Le Hoang Ngoc', N'182 Binh Quoi', N'Binh Thanh', N'Ho Chi Minh', N'0931130201', N'', N'0ed6a21b-684d-4c1a-9dfb-a2ce63d9c2f2', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Test', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'16243021-4853-405e-947d-09ce68347cc4', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'19b51625-7584-40d3-bc9f-d59464e0483c', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Anh LH', N'HCM', N'HCM', N'HCM', N'0911111111', N'', N'1c02b25a-864d-4566-8cef-8b31194e45d0', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Anh LH', N'HCM', N'HCM', N'HCM', N'0911111111', N'', N'1dbf67bd-96d2-4b62-9da6-3c3e9b1e2932', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'22d769f4-289c-4540-aa5d-61464b63c9a4', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'23daa83e-e3d5-4d78-b5f1-8bc434ad6715', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'277e925a-ec9f-4189-a436-9f31216135d0', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'413703a0-8a14-42b3-be54-47a12687d5c9', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'hellloooooooooo', N'431b9b14-6c58-4163-a7f3-3816105be3e8', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'47278c67-93a0-4263-ab8e-0a7fe68f5167', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Anh LH', N'HCM', N'HCM', N'HCM', N'0911111111', N'', N'4a674240-08af-4984-beba-da233704415c', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'5007a6b4-57a8-4430-8393-adf066f2c328', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'673297dc-23d3-458f-98d1-2ed1e7fd114e', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Le Hoang Ngoc', N'182 Binh Quoi', N'Binh Thanh', N'Ho Chi Minh', N'0931130201', N'', N'7254029c-351b-4d68-8694-33592af9d401', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'75634846-7890-41f2-84ce-a61361f72ab4', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'Hello', N'7e7a8bc7-0e58-4342-9cc4-883cd3494d75', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Anh LH', N'HCM', N'HCM', N'HCM', N'0911111111', N'', N'84f41282-5a87-46ce-b8ac-cf10367ab892', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'8706f17d-4c29-4b59-804a-21666a99ed42', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'9185e0ee-5075-4bdd-af92-e4be81f6c834', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'939539a4-85c5-4011-9b9d-8b7bea665204', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'a8bdf967-048b-4cd3-a721-88550d90bd51', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'b09c6d5f-bf41-4c9a-b6f5-71631df36af7', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh Email', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'ba5cd1fa-1b90-48cc-9d5d-f7272edc9458', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'', N'c9eda6ac-1540-4a62-8ca2-b6e739511c08', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Anh LH', N'HCM', N'HCM', N'HCM', N'0911111111', N'', N'cbf126a7-b532-4c77-bb77-779591c10a6b', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Le Hoang Ngoc', N'182 Binh Quoi', N'Binh Thanh', N'Ho Chi Minh', N'0931130201', N'', N'e4b65b78-1bbc-4245-b30c-5515b77a169a', 1)
INSERT [dbo].[tblShippingInfo] ([fullName], [address], [city], [state], [phone], [note], [orderID], [statusID]) VALUES (N'Vo Duc Minh', N'53 Vo Van Hat', N'HCM', N'Ho Chi Minh', N'0852484847', N'Test 6/10', N'f4479adf-c04b-41ba-880f-2a23a83a0282', 1)
GO
INSERT [dbo].[tblShippingStatus] ([statusID], [statusName]) VALUES (1, N'Pending')
INSERT [dbo].[tblShippingStatus] ([statusID], [statusName]) VALUES (2, N'Shipping')
INSERT [dbo].[tblShippingStatus] ([statusID], [statusName]) VALUES (3, N'Finish')
GO
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'admin', N'Main Admin', N'Hồ Chí Minh', N'0852484848', N'1', CAST(N'2021-09-28T20:39:00.000' AS DateTime), N'admin@voducminh.com', 1, 1)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'admin2', N'Admin 2', N'Cà Mau', N'0925005859', N'1', CAST(N'2021-09-28T00:00:00.000' AS DateTime), N'admin2@voducminh.com', 1, 1)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'anhlh', N'Le Hong Anh', N'HCM', N'0911111111', N'1', CAST(N'2021-10-08T00:00:00.000' AS DateTime), N'honganhle0a@gmail.com', 1, 2)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'huanbx', N'Bùi Xuân Huấn', N'Hà Nội', N'0977777777', N'1', CAST(N'2021-09-28T00:00:00.000' AS DateTime), N'huanbn@fpt.edu.vn', 1, 2)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'huypd', N'Pham Duc Huy', N'Lâm Đồng', N'0911113113', N'1', CAST(N'2021-10-05T00:00:00.000' AS DateTime), N'huypd@gmail.com', 1, 2)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'minhvd', N'Vo Duc Minh', N'Buôn Ma Thuột', N'0852484847', N'1', CAST(N'2021-09-28T20:38:00.000' AS DateTime), N'voducminh140201@gmail.com', 1, 2)
INSERT [dbo].[tblUsers] ([userID], [userName], [userAddress], [userPhone], [password], [createDate], [email], [userStatus], [roleID]) VALUES (N'ngoclh', N'Le Hoang Ngoc', N'BMT', N'0931130201', N'1', CAST(N'2021-10-08T00:00:00.000' AS DateTime), N'hoangngoc14201@gmail.com', 1, 2)
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
