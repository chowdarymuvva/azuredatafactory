/****** Object:  Database [chowdary_adfs_free_sql_oct2026]    Script Date: 08/11/2026 14:29:07 ******/
CREATE DATABASE [chowdary_adfs_free_sql_oct2026]  (EDITION = 'GeneralPurpose', SERVICE_OBJECTIVE = 'GP_S_Gen5_2', MAXSIZE = 32 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS, LEDGER = OFF;
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET ARITHABORT OFF 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET READ_COMMITTED_SNAPSHOT ON 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET  MULTI_USER 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET AUTOMATIC_INDEX_COMPACTION = OFF 
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET ENCRYPTION ON
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET QUERY_STORE = ON
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO

-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO

ALTER DATABASE [chowdary_adfs_free_sql_oct2026] SET  READ_WRITE 
GO




IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [CK__Products__Stock__74AE54BC]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [CK__Products__Price__73BA3083]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT IF EXISTS [CK__Orders__Quantity__797309D9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT IF EXISTS [FK__Orders__ProductI__787EE5A0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT IF EXISTS [FK__Orders__Customer__778AC167]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products_new]') AND type in (N'U'))
ALTER TABLE [dbo].[Products_new] DROP CONSTRAINT IF EXISTS [DF__Products___Modif__06CD04F7]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT IF EXISTS [DF__Orders__OrderDat__7A672E12]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers_new]') AND type in (N'U'))
ALTER TABLE [dbo].[Customers_new] DROP CONSTRAINT IF EXISTS [DF__Customers__Modif__03F0984C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type in (N'U'))
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT IF EXISTS [DF__Customers__Creat__70DDC3D8]
GO
/****** Object:  Index [UQ__Customer__A9D10534E0FCB763]    Script Date: 08/11/2026 14:27:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type in (N'U'))
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT IF EXISTS [UQ__Customer__A9D10534E0FCB763]
GO
/****** Object:  Table [metadata].[tablelist]    Script Date: 08/11/2026 14:27:54 ******/
DROP TABLE IF EXISTS [metadata].[tablelist]
GO
/****** Object:  Table [metadata].[table_watermarks]    Script Date: 08/11/2026 14:27:54 ******/
DROP TABLE IF EXISTS [metadata].[table_watermarks]
GO
/****** Object:  Table [dbo].[Products_new]    Script Date: 08/11/2026 14:27:54 ******/
DROP TABLE IF EXISTS [dbo].[Products_new]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 08/11/2026 14:27:54 ******/
DROP TABLE IF EXISTS [dbo].[Products]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 08/11/2026 14:27:54 ******/
DROP TABLE IF EXISTS [dbo].[Orders]
GO
/****** Object:  Table [dbo].[customers_new_stg]    Script Date: 08/11/2026 14:27:54 ******/
DROP TABLE IF EXISTS [dbo].[customers_new_stg]
GO
/****** Object:  Table [dbo].[Customers_new]    Script Date: 08/11/2026 14:27:54 ******/
DROP TABLE IF EXISTS [dbo].[Customers_new]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 08/11/2026 14:27:54 ******/
DROP TABLE IF EXISTS [dbo].[Customers]
GO
/****** Object:  Schema [metadata]    Script Date: 08/11/2026 14:27:54 ******/
DROP SCHEMA IF EXISTS [metadata]
GO
/****** Object:  Schema [metadata]    Script Date: 08/11/2026 14:27:54 ******/
CREATE SCHEMA [metadata]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 08/11/2026 14:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers_new]    Script Date: 08/11/2026 14:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers_new](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](100) NOT NULL,
	[Region] [varchar](50) NOT NULL,
	[Email] [varchar](100) NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers_new_stg]    Script Date: 08/11/2026 14:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers_new_stg](
	[CustomerID] [int] NULL,
	[CustomerName] [varchar](100) NULL,
	[Region] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[filename_] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 08/11/2026 14:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 08/11/2026 14:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[Stock] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_new]    Script Date: 08/11/2026 14:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_new](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](100) NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[UnitPrice] [decimal](10, 2) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [metadata].[table_watermarks]    Script Date: 08/11/2026 14:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [metadata].[table_watermarks](
	[table_name] [varchar](100) NOT NULL,
	[watermark_value] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[table_name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [metadata].[tablelist]    Script Date: 08/11/2026 14:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [metadata].[tablelist](
	[tablename_] [varchar](100) NULL,
	[description_] [varchar](100) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [CreatedDate]) VALUES (1, N'John', N'Doe', N'john.doe@example.com', CAST(N'2026-10-10T12:54:08.607' AS DateTime))
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [CreatedDate]) VALUES (2, N'Jane', N'Smith', N'jane.smith@example.com', CAST(N'2026-10-10T12:54:08.607' AS DateTime))
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [CreatedDate]) VALUES (3, N'Ali', N'Khan', N'ali.khan@example.com', CAST(N'2026-10-10T12:54:08.607' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers_new] ON 
GO
INSERT [dbo].[Customers_new] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate]) VALUES (1, N'Ravi Sharma', N'North', N'ravi.sharma@example.com', CAST(N'2024-01-05T09:30:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Customers_new] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate]) VALUES (2, N'Priya Verma', N'South', N'priya.verma@example.com', CAST(N'2024-01-10T14:15:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Customers_new] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate]) VALUES (3, N'Amit Kumar', N'East', N'amit.kumar@example.com', CAST(N'2024-01-15T11:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Customers_new] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate]) VALUES (4, N'Sneha Patel', N'West', N'sneha.patel@example.com', CAST(N'2024-02-01T08:45:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Customers_new] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate]) VALUES (5, N'Rohan Gupta', N'North', N'rohan.gupta@example.com', CAST(N'2024-02-10T16:20:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Customers_new] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate]) VALUES (6, N'Neha Singh', N'South', N'neha.singh@example.com', CAST(N'2024-02-20T10:05:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Customers_new] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate]) VALUES (7, N'Vikram Rao', N'East', N'vikram.rao@example.com', CAST(N'2024-03-01T12:30:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Customers_new] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate]) VALUES (8, N'Anjali Nair', N'West', N'anjali.nair@example.com', CAST(N'2024-03-08T09:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Customers_new] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Customers_new] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Customers_new] OFF
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (7, N'Vikram Rao', N'East', N'vikram.rao@example.com', CAST(N'2024-03-01T12:30:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (8, N'Anjali Nair', N'West', N'anjali.nair@example.com', CAST(N'2024-03-08T09:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (7, N'Vikram Rao', N'East', N'vikram.rao@example.com', CAST(N'2024-03-01T12:30:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (8, N'Anjali Nair', N'West', N'anjali.nair@example.com', CAST(N'2024-03-08T09:00:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (7, N'Vikram Rao', N'East', N'vikram.rao@example.com', CAST(N'2024-03-01T12:30:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (8, N'Anjali Nair', N'West', N'anjali.nair@example.com', CAST(N'2024-03-08T09:00:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (7, N'Vikram Rao', N'East', N'vikram.rao@example.com', CAST(N'2024-03-01T12:30:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (8, N'Anjali Nair', N'West', N'anjali.nair@example.com', CAST(N'2024-03-08T09:00:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (7, N'Vikram Rao', N'East', N'vikram.rao@example.com', CAST(N'2024-03-01T12:30:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (8, N'Anjali Nair', N'West', N'anjali.nair@example.com', CAST(N'2024-03-08T09:00:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (7, N'Vikram Rao', N'East', N'vikram.rao@example.com', CAST(N'2024-03-01T12:30:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (8, N'Anjali Nair', N'West', N'anjali.nair@example.com', CAST(N'2024-03-08T09:00:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (7, N'Vikram Rao', N'East', N'vikram.rao@example.com', CAST(N'2024-03-01T12:30:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (8, N'Anjali Nair', N'West', N'anjali.nair@example.com', CAST(N'2024-03-08T09:00:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (7, N'Vikram Rao', N'East', N'vikram.rao@example.com', CAST(N'2024-03-01T12:30:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (8, N'Anjali Nair', N'West', N'anjali.nair@example.com', CAST(N'2024-03-08T09:00:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-21T15_55_29.1016668Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (7, N'Vikram Rao', N'East', N'vikram.rao@example.com', CAST(N'2024-03-01T12:30:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (8, N'Anjali Nair', N'West', N'anjali.nair@example.com', CAST(N'2024-03-08T09:00:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'products_new_2026-10-21T15:58:39.0582010Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (7, N'Vikram Rao', N'East', N'vikram.rao@example.com', CAST(N'2024-03-01T12:30:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (8, N'Anjali Nair', N'West', N'anjali.nair@example.com', CAST(N'2024-03-08T09:00:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (9, N'Karan Malhotra', N'North', N'karan.malhotra@example.com', CAST(N'2024-03-15T13:40:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
INSERT [dbo].[customers_new_stg] ([CustomerID], [CustomerName], [Region], [Email], [ModifiedDate], [filename_]) VALUES (10, N'Divya Iyer', N'South', N'divya.iyer@example.com', CAST(N'2024-03-20T15:10:00.0000000' AS DateTime2), N'customers_new_2026-10-25T07:41:53.8335618Z')
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [ProductID], [Quantity], [OrderDate]) VALUES (1, 1, 1, 1, CAST(N'2026-10-10T12:54:08.630' AS DateTime))
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [ProductID], [Quantity], [OrderDate]) VALUES (2, 2, 2, 2, CAST(N'2026-10-10T12:54:08.630' AS DateTime))
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [ProductID], [Quantity], [OrderDate]) VALUES (3, 3, 3, 3, CAST(N'2026-10-10T12:54:08.630' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [Stock]) VALUES (1, N'Laptop', CAST(3500.00 AS Decimal(10, 2)), 10)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [Stock]) VALUES (2, N'Smartphone', CAST(2200.00 AS Decimal(10, 2)), 25)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [Stock]) VALUES (3, N'Headphones', CAST(150.00 AS Decimal(10, 2)), 50)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Products_new] ON 
GO
INSERT [dbo].[Products_new] ([ProductID], [ProductName], [Category], [UnitPrice], [ModifiedDate]) VALUES (1, N'Wireless Mouse', N'Electronics', CAST(599.00 AS Decimal(10, 2)), CAST(N'2024-01-04T10:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Products_new] ([ProductID], [ProductName], [Category], [UnitPrice], [ModifiedDate]) VALUES (2, N'Mechanical Keyboard', N'Electronics', CAST(2499.00 AS Decimal(10, 2)), CAST(N'2024-01-09T11:30:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Products_new] ([ProductID], [ProductName], [Category], [UnitPrice], [ModifiedDate]) VALUES (3, N'USB-C Hub', N'Electronics', CAST(1299.00 AS Decimal(10, 2)), CAST(N'2024-01-14T09:15:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Products_new] ([ProductID], [ProductName], [Category], [UnitPrice], [ModifiedDate]) VALUES (4, N'Office Chair', N'Furniture', CAST(6999.00 AS Decimal(10, 2)), CAST(N'2024-01-30T14:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Products_new] ([ProductID], [ProductName], [Category], [UnitPrice], [ModifiedDate]) VALUES (5, N'Standing Desk', N'Furniture', CAST(14999.00 AS Decimal(10, 2)), CAST(N'2024-02-08T13:20:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Products_new] ([ProductID], [ProductName], [Category], [UnitPrice], [ModifiedDate]) VALUES (6, N'LED Desk Lamp', N'Furniture', CAST(899.00 AS Decimal(10, 2)), CAST(N'2024-02-18T15:45:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Products_new] ([ProductID], [ProductName], [Category], [UnitPrice], [ModifiedDate]) VALUES (7, N'Notebook Set', N'Stationery', CAST(199.00 AS Decimal(10, 2)), CAST(N'2024-02-28T08:30:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Products_new] ([ProductID], [ProductName], [Category], [UnitPrice], [ModifiedDate]) VALUES (8, N'Gel Pens (Pack of 10)', N'Stationery', CAST(149.00 AS Decimal(10, 2)), CAST(N'2024-03-07T10:10:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Products_new] ([ProductID], [ProductName], [Category], [UnitPrice], [ModifiedDate]) VALUES (9, N'Whiteboard', N'Stationery', CAST(1799.00 AS Decimal(10, 2)), CAST(N'2024-03-14T12:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Products_new] ([ProductID], [ProductName], [Category], [UnitPrice], [ModifiedDate]) VALUES (10, N'Sticky Notes Combo', N'Stationery', CAST(249.00 AS Decimal(10, 2)), CAST(N'2024-03-19T16:30:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Products_new] OFF
GO
INSERT [metadata].[table_watermarks] ([table_name], [watermark_value]) VALUES (N'customers_new', CAST(N'2026-10-25T18:19:19.4309689' AS DateTime2))
GO
INSERT [metadata].[table_watermarks] ([table_name], [watermark_value]) VALUES (N'products_new', CAST(N'2026-10-25T18:20:25.5325230' AS DateTime2))
GO
INSERT [metadata].[tablelist] ([tablename_], [description_]) VALUES (N'customers_new', NULL)
GO
INSERT [metadata].[tablelist] ([tablename_], [description_]) VALUES (N'products_new', NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__A9D10534E0FCB763]    Script Date: 08/11/2026 14:27:55 ******/
ALTER TABLE [dbo].[Customers] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customers] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Customers_new] ADD  DEFAULT (sysutcdatetime()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Products_new] ADD  DEFAULT (sysutcdatetime()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD CHECK  (([Quantity]>(0)))
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD CHECK  (([Price]>=(0)))
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD CHECK  (([Stock]>=(0)))
GO
