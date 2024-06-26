USE [master]
GO
/****** Object:  Database [BusTicketApp]    Script Date: 26.01.2024 00:33:05 ******/
CREATE DATABASE [BusTicketApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BusTicketApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BusTicketApp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BusTicketApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BusTicketApp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BusTicketApp] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BusTicketApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BusTicketApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BusTicketApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BusTicketApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BusTicketApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BusTicketApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [BusTicketApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BusTicketApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BusTicketApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BusTicketApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BusTicketApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BusTicketApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BusTicketApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BusTicketApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BusTicketApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BusTicketApp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BusTicketApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BusTicketApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BusTicketApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BusTicketApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BusTicketApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BusTicketApp] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BusTicketApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BusTicketApp] SET RECOVERY FULL 
GO
ALTER DATABASE [BusTicketApp] SET  MULTI_USER 
GO
ALTER DATABASE [BusTicketApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BusTicketApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BusTicketApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BusTicketApp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BusTicketApp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BusTicketApp] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BusTicketApp', N'ON'
GO
ALTER DATABASE [BusTicketApp] SET QUERY_STORE = ON
GO
ALTER DATABASE [BusTicketApp] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BusTicketApp]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 26.01.2024 00:33:05 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 26.01.2024 00:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 26.01.2024 00:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 26.01.2024 00:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 26.01.2024 00:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 26.01.2024 00:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 26.01.2024 00:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 26.01.2024 00:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buses]    Script Date: 26.01.2024 00:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buses](
	[BusId] [int] IDENTITY(1,1) NOT NULL,
	[BusNumber] [nvarchar](max) NOT NULL,
	[Capacity] [int] NOT NULL,
 CONSTRAINT [PK_Buses] PRIMARY KEY CLUSTERED 
(
	[BusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rotas]    Script Date: 26.01.2024 00:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rotas](
	[RotaId] [int] IDENTITY(1,1) NOT NULL,
	[DepartureCity] [nvarchar](max) NOT NULL,
	[ArrivalCity] [nvarchar](max) NOT NULL,
	[Distance] [int] NOT NULL,
 CONSTRAINT [PK_Rotas] PRIMARY KEY CLUSTERED 
(
	[RotaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 26.01.2024 00:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[TicketId] [int] IDENTITY(1,1) NOT NULL,
	[TripId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[SeatNumber] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[IsEmpty] [bit] NOT NULL,
	[PurchaseTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[TicketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trips]    Script Date: 26.01.2024 00:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trips](
	[TripId] [int] IDENTITY(1,1) NOT NULL,
	[BusId] [int] NOT NULL,
	[RotaId] [int] NOT NULL,
	[DepartureTime] [datetime2](7) NOT NULL,
	[ArrivalTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Trips] PRIMARY KEY CLUSTERED 
(
	[TripId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240125170826_db', N'6.0.26')
GO
INSERT [dbo].[AspNetUsers] ([Id], [IsAdmin], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3d4becdf-0b24-4e3a-8307-39e0911a727a', 0, N'yasir@gmail.com', N'YASIR@GMAIL.COM', N'yasir@gmail.com', N'YASIR@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENp8pwC3ZeSaezixEw2zZbsyefNjRi3ZNKQqTbDKKeFWsA+1F/QIixXhitcCN+2wvQ==', N'UJJJKZMFCIRCOBBSAZF5PYEZCY3QR37V', N'3219e6ea-0b52-402a-b1da-0a3735fbae88', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [IsAdmin], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'66be51d7-5ffa-444d-bf53-0c7541f420fd', 0, N'senesozdel@gmail.com', N'SENESOZDEL@GMAIL.COM', N'senesozdel@gmail.com', N'SENESOZDEL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGDeX8h7PCck3pHdTzvbl/jRxYN8Q+thWWDzSx8wXa2p7Nq19H8slz/X9xTFhT+hgw==', N'T6WOG26DZIVYTVDSCZ4BDUKE3OIJOC23', N'a313d396-60a0-4758-b4b5-853264d25c86', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Buses] ON 

INSERT [dbo].[Buses] ([BusId], [BusNumber], [Capacity]) VALUES (1, N'BUS001', 30)
INSERT [dbo].[Buses] ([BusId], [BusNumber], [Capacity]) VALUES (2, N'BUS002', 40)
INSERT [dbo].[Buses] ([BusId], [BusNumber], [Capacity]) VALUES (3, N'BUS003', 35)
INSERT [dbo].[Buses] ([BusId], [BusNumber], [Capacity]) VALUES (4, N'BUS004', 50)
INSERT [dbo].[Buses] ([BusId], [BusNumber], [Capacity]) VALUES (5, N'BUS005', 45)
INSERT [dbo].[Buses] ([BusId], [BusNumber], [Capacity]) VALUES (6, N'BUS006', 55)
INSERT [dbo].[Buses] ([BusId], [BusNumber], [Capacity]) VALUES (7, N'BUS007', 25)
INSERT [dbo].[Buses] ([BusId], [BusNumber], [Capacity]) VALUES (8, N'BUS008', 60)
INSERT [dbo].[Buses] ([BusId], [BusNumber], [Capacity]) VALUES (9, N'BUS009', 30)
INSERT [dbo].[Buses] ([BusId], [BusNumber], [Capacity]) VALUES (10, N'BUS010', 40)
SET IDENTITY_INSERT [dbo].[Buses] OFF
GO
SET IDENTITY_INSERT [dbo].[Rotas] ON 

INSERT [dbo].[Rotas] ([RotaId], [DepartureCity], [ArrivalCity], [Distance]) VALUES (1, N'İzmir', N'Aydın', 150)
INSERT [dbo].[Rotas] ([RotaId], [DepartureCity], [ArrivalCity], [Distance]) VALUES (2, N'Aydın', N'İzmir', 150)
INSERT [dbo].[Rotas] ([RotaId], [DepartureCity], [ArrivalCity], [Distance]) VALUES (3, N'İzmir', N'Kuşadası', 70)
INSERT [dbo].[Rotas] ([RotaId], [DepartureCity], [ArrivalCity], [Distance]) VALUES (4, N'Kuşadası', N'İzmir', 70)
INSERT [dbo].[Rotas] ([RotaId], [DepartureCity], [ArrivalCity], [Distance]) VALUES (5, N'İzmir', N'Çeşme', 80)
INSERT [dbo].[Rotas] ([RotaId], [DepartureCity], [ArrivalCity], [Distance]) VALUES (6, N'Çeşme', N'İzmir', 80)
INSERT [dbo].[Rotas] ([RotaId], [DepartureCity], [ArrivalCity], [Distance]) VALUES (7, N'Aydın', N'Denizli', 200)
INSERT [dbo].[Rotas] ([RotaId], [DepartureCity], [ArrivalCity], [Distance]) VALUES (8, N'Denizli', N'Aydın', 200)
INSERT [dbo].[Rotas] ([RotaId], [DepartureCity], [ArrivalCity], [Distance]) VALUES (9, N'Muğla', N'Bodrum', 130)
INSERT [dbo].[Rotas] ([RotaId], [DepartureCity], [ArrivalCity], [Distance]) VALUES (10, N'Bodrum', N'Muğla', 130)
SET IDENTITY_INSERT [dbo].[Rotas] OFF
GO
SET IDENTITY_INSERT [dbo].[Tickets] ON 

INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (13, 11, NULL, 1, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (14, 11, NULL, 2, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (15, 11, NULL, 3, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (16, 11, NULL, 4, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (17, 11, NULL, 5, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (18, 11, NULL, 6, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (19, 11, NULL, 7, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (20, 11, NULL, 8, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (21, 11, NULL, 9, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (22, 11, NULL, 10, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (23, 11, NULL, 11, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (24, 11, NULL, 12, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (25, 11, NULL, 13, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (26, 11, NULL, 14, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (27, 11, NULL, 15, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (28, 11, NULL, 16, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (29, 11, NULL, 17, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (30, 11, NULL, 18, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (31, 11, NULL, 19, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (32, 11, NULL, 20, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (33, 11, NULL, 21, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (34, 11, NULL, 22, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (35, 11, NULL, 23, CAST(100.00 AS Decimal(18, 2)), 1, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (36, 11, NULL, 24, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (37, 11, NULL, 25, CAST(100.00 AS Decimal(18, 2)), 1, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (38, 11, NULL, 26, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (39, 11, NULL, 27, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (40, 11, NULL, 28, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (41, 11, NULL, 29, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (42, 11, NULL, 30, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (43, 12, NULL, 21, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (44, 12, NULL, 22, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (45, 12, NULL, 23, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (46, 12, NULL, 24, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (47, 12, NULL, 25, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (48, 12, NULL, 26, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (49, 12, NULL, 27, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (50, 12, NULL, 28, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (51, 12, NULL, 29, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (52, 12, NULL, 30, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (53, 12, NULL, 11, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (54, 12, NULL, 12, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (55, 12, NULL, 13, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (56, 12, NULL, 14, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (57, 12, NULL, 15, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (58, 12, NULL, 16, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (59, 12, NULL, 17, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (60, 12, NULL, 18, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (61, 12, NULL, 19, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (62, 12, NULL, 20, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (63, 12, NULL, 1, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (64, 12, NULL, 2, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (65, 12, NULL, 3, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (66, 12, NULL, 4, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (67, 12, NULL, 5, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (68, 12, NULL, 6, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (69, 12, NULL, 7, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (70, 12, NULL, 8, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (71, 12, NULL, 9, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (72, 12, NULL, 10, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (73, 12, NULL, 31, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (74, 12, NULL, 32, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (75, 12, NULL, 33, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (76, 12, NULL, 34, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (77, 12, NULL, 35, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (78, 12, NULL, 36, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (79, 12, NULL, 37, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (80, 12, NULL, 38, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (81, 12, NULL, 39, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (82, 12, NULL, 40, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (83, 13, NULL, 31, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (84, 13, NULL, 32, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (85, 13, NULL, 33, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (86, 13, NULL, 34, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (87, 13, NULL, 35, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (88, 13, NULL, 1, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (89, 13, NULL, 2, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (90, 13, NULL, 3, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (91, 13, NULL, 4, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (92, 13, NULL, 5, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (93, 13, NULL, 6, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (94, 13, NULL, 7, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (95, 13, NULL, 8, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (96, 13, NULL, 9, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (97, 13, NULL, 10, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (118, 13, NULL, 11, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (119, 13, NULL, 12, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (120, 13, NULL, 13, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (121, 13, NULL, 14, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (122, 13, NULL, 15, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (123, 13, NULL, 16, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (124, 13, NULL, 17, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (125, 13, NULL, 18, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (126, 13, NULL, 19, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (127, 13, NULL, 20, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (128, 13, NULL, 21, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (129, 13, NULL, 22, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (130, 13, NULL, 23, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (131, 13, NULL, 24, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (132, 13, NULL, 25, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (133, 13, NULL, 26, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (134, 13, NULL, 27, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (135, 13, NULL, 28, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (136, 13, NULL, 29, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (137, 13, NULL, 30, CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (139, 27, NULL, 1, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (140, 27, NULL, 21, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (141, 27, NULL, 22, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (142, 27, NULL, 23, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (143, 27, NULL, 24, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (144, 27, NULL, 25, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (145, 27, NULL, 26, CAST(100.00 AS Decimal(18, 2)), 1, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (146, 27, NULL, 27, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (147, 27, NULL, 28, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (148, 27, NULL, 29, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (149, 27, NULL, 30, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (150, 27, NULL, 31, CAST(100.00 AS Decimal(18, 2)), 1, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (151, 27, NULL, 32, CAST(100.00 AS Decimal(18, 2)), 1, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (152, 27, NULL, 33, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (153, 27, NULL, 34, CAST(100.00 AS Decimal(18, 2)), 1, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (154, 27, NULL, 35, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (155, 27, NULL, 36, CAST(100.00 AS Decimal(18, 2)), 1, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (156, 27, NULL, 37, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (157, 27, NULL, 38, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (158, 27, NULL, 39, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (159, 27, NULL, 40, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (160, 27, NULL, 11, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (161, 27, NULL, 12, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (162, 27, NULL, 13, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (163, 27, NULL, 14, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (164, 27, NULL, 15, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (165, 27, NULL, 16, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (166, 27, NULL, 17, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (167, 27, NULL, 18, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (168, 27, NULL, 19, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (169, 27, NULL, 20, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (170, 27, NULL, 2, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (171, 27, NULL, 3, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (172, 27, NULL, 4, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (173, 27, NULL, 5, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (174, 27, NULL, 6, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (175, 27, NULL, 7, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (176, 27, NULL, 8, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (177, 27, NULL, 9, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tickets] ([TicketId], [TripId], [UserId], [SeatNumber], [Price], [IsEmpty], [PurchaseTime]) VALUES (178, 27, NULL, 10, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Tickets] OFF
GO
SET IDENTITY_INSERT [dbo].[Trips] ON 

INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (11, 1, 1, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2), CAST(N'2024-01-01T12:30:00.0000000' AS DateTime2))
INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (12, 2, 2, CAST(N'2024-01-02T14:00:00.0000000' AS DateTime2), CAST(N'2024-01-02T17:30:00.0000000' AS DateTime2))
INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (13, 3, 3, CAST(N'2024-01-03T08:30:00.0000000' AS DateTime2), CAST(N'2024-01-03T11:45:00.0000000' AS DateTime2))
INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (14, 4, 4, CAST(N'2024-01-04T12:15:00.0000000' AS DateTime2), CAST(N'2024-01-04T15:00:00.0000000' AS DateTime2))
INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (15, 5, 5, CAST(N'2024-01-05T09:45:00.0000000' AS DateTime2), CAST(N'2024-01-05T12:15:00.0000000' AS DateTime2))
INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (16, 6, 6, CAST(N'2024-01-06T16:30:00.0000000' AS DateTime2), CAST(N'2024-01-06T18:45:00.0000000' AS DateTime2))
INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (17, 2, 7, CAST(N'2024-01-07T11:00:00.0000000' AS DateTime2), CAST(N'2024-01-07T13:30:00.0000000' AS DateTime2))
INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (18, 8, 8, CAST(N'2024-01-08T09:15:00.0000000' AS DateTime2), CAST(N'2024-01-08T12:00:00.0000000' AS DateTime2))
INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (19, 9, 9, CAST(N'2024-01-09T14:45:00.0000000' AS DateTime2), CAST(N'2024-01-09T17:00:00.0000000' AS DateTime2))
INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (20, 10, 10, CAST(N'2024-01-10T07:30:00.0000000' AS DateTime2), CAST(N'2024-01-10T09:00:00.0000000' AS DateTime2))
INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (21, 1, 10, CAST(N'2024-01-11T10:00:00.0000000' AS DateTime2), CAST(N'2024-01-01T12:30:00.0000000' AS DateTime2))
INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (22, 2, 9, CAST(N'2024-01-12T14:00:00.0000000' AS DateTime2), CAST(N'2024-01-02T17:30:00.0000000' AS DateTime2))
INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (23, 3, 8, CAST(N'2024-01-13T08:30:00.0000000' AS DateTime2), CAST(N'2024-01-03T11:45:00.0000000' AS DateTime2))
INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (24, 4, 7, CAST(N'2024-01-14T12:15:00.0000000' AS DateTime2), CAST(N'2024-01-04T15:00:00.0000000' AS DateTime2))
INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (25, 5, 6, CAST(N'2024-01-15T09:45:00.0000000' AS DateTime2), CAST(N'2024-01-05T12:15:00.0000000' AS DateTime2))
INSERT [dbo].[Trips] ([TripId], [BusId], [RotaId], [DepartureTime], [ArrivalTime]) VALUES (27, 10, 1, CAST(N'2024-01-01T10:00:00.0000000' AS DateTime2), CAST(N'2024-01-01T12:30:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Trips] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 26.01.2024 00:33:05 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 26.01.2024 00:33:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 26.01.2024 00:33:05 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 26.01.2024 00:33:05 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 26.01.2024 00:33:05 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 26.01.2024 00:33:05 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 26.01.2024 00:33:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tickets_TripId]    Script Date: 26.01.2024 00:33:05 ******/
CREATE NONCLUSTERED INDEX [IX_Tickets_TripId] ON [dbo].[Tickets]
(
	[TripId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Tickets_UserId]    Script Date: 26.01.2024 00:33:05 ******/
CREATE NONCLUSTERED INDEX [IX_Tickets_UserId] ON [dbo].[Tickets]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trips_BusId]    Script Date: 26.01.2024 00:33:05 ******/
CREATE NONCLUSTERED INDEX [IX_Trips_BusId] ON [dbo].[Trips]
(
	[BusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trips_RotaId]    Script Date: 26.01.2024 00:33:05 ******/
CREATE NONCLUSTERED INDEX [IX_Trips_RotaId] ON [dbo].[Trips]
(
	[RotaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Trips_TripId] FOREIGN KEY([TripId])
REFERENCES [dbo].[Trips] ([TripId])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Trips_TripId]
GO
ALTER TABLE [dbo].[Trips]  WITH CHECK ADD  CONSTRAINT [FK_Trips_Buses_BusId] FOREIGN KEY([BusId])
REFERENCES [dbo].[Buses] ([BusId])
GO
ALTER TABLE [dbo].[Trips] CHECK CONSTRAINT [FK_Trips_Buses_BusId]
GO
ALTER TABLE [dbo].[Trips]  WITH CHECK ADD  CONSTRAINT [FK_Trips_Rotas_RotaId] FOREIGN KEY([RotaId])
REFERENCES [dbo].[Rotas] ([RotaId])
GO
ALTER TABLE [dbo].[Trips] CHECK CONSTRAINT [FK_Trips_Rotas_RotaId]
GO
USE [master]
GO
ALTER DATABASE [BusTicketApp] SET  READ_WRITE 
GO
