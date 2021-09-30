USE [master]
GO
/****** Object:  Database [VegetablesShop]    Script Date: 10/1/2021 12:20:42 AM ******/
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
/****** Object:  Table [dbo].[tblCategories]    Script Date: 10/1/2021 12:20:42 AM ******/
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
/****** Object:  Table [dbo].[tblOrderDetails]    Script Date: 10/1/2021 12:20:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetails](
	[detailID] [varchar](20) NOT NULL,
	[orderID] [varchar](20) NOT NULL,
	[productID] [varchar](20) NOT NULL,
	[detailPrice] [decimal](16, 2) NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_tblOrderDetails] PRIMARY KEY CLUSTERED 
(
	[detailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrders]    Script Date: 10/1/2021 12:20:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrders](
	[orderID] [varchar](20) NOT NULL,
	[userID] [varchar](20) NOT NULL,
	[orderDate] [datetime] NOT NULL,
	[totalPrice] [decimal](16, 2) NOT NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblOrders] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductAvailable]    Script Date: 10/1/2021 12:20:42 AM ******/
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
/****** Object:  Table [dbo].[tblProducts]    Script Date: 10/1/2021 12:20:42 AM ******/
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
/****** Object:  Table [dbo].[tblRoles]    Script Date: 10/1/2021 12:20:42 AM ******/
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
/****** Object:  Table [dbo].[tblUsers]    Script Date: 10/1/2021 12:20:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[userID] [varchar](20) NOT NULL,
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
ALTER TABLE [dbo].[tblUsers]  WITH CHECK ADD  CONSTRAINT [FK_tblUsers_tblRoles] FOREIGN KEY([roleID])
REFERENCES [dbo].[tblRoles] ([roleID])
GO
ALTER TABLE [dbo].[tblUsers] CHECK CONSTRAINT [FK_tblUsers_tblRoles]
GO
USE [master]
GO
ALTER DATABASE [VegetablesShop] SET  READ_WRITE 
GO
