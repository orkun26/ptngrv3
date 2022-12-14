USE [master]
GO
/****** Object:  Database [piton]    Script Date: 9.09.2022 13:31:35 ******/
CREATE DATABASE [piton]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'piton', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\piton.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'piton_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\piton_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [piton] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [piton].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [piton] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [piton] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [piton] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [piton] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [piton] SET ARITHABORT OFF 
GO
ALTER DATABASE [piton] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [piton] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [piton] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [piton] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [piton] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [piton] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [piton] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [piton] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [piton] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [piton] SET  DISABLE_BROKER 
GO
ALTER DATABASE [piton] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [piton] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [piton] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [piton] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [piton] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [piton] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [piton] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [piton] SET RECOVERY FULL 
GO
ALTER DATABASE [piton] SET  MULTI_USER 
GO
ALTER DATABASE [piton] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [piton] SET DB_CHAINING OFF 
GO
ALTER DATABASE [piton] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [piton] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [piton] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [piton] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'piton', N'ON'
GO
ALTER DATABASE [piton] SET QUERY_STORE = OFF
GO
USE [piton]
GO
/****** Object:  Table [dbo].[gorev]    Script Date: 9.09.2022 13:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gorev](
	[gno] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nchar](50) NULL,
	[Soyad] [nchar](50) NULL,
	[bastarih] [datetime] NULL,
	[bittarih] [datetime2](7) NULL,
	[durum] [nchar](10) NULL,
	[aciklama] [text] NULL,
 CONSTRAINT [PK_gorev] PRIMARY KEY CLUSTERED 
(
	[gno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[gorev] ON 

INSERT [dbo].[gorev] ([gno], [Ad], [Soyad], [bastarih], [bittarih], [durum], [aciklama]) VALUES (12, N'                                                  ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[gorev] ([gno], [Ad], [Soyad], [bastarih], [bittarih], [durum], [aciklama]) VALUES (35, N'Meriç                                             ', N'Hoşkalan                                          ', CAST(N'2022-09-05T13:59:15.000' AS DateTime), CAST(N'2022-09-09T13:59:15.0000000' AS DateTime2), N'Beklemede ', N'Stm32 Esp8266 Bağlantı Dökümanı Hazırlanacak')
INSERT [dbo].[gorev] ([gno], [Ad], [Soyad], [bastarih], [bittarih], [durum], [aciklama]) VALUES (42, N'Mehmet Akif                                       ', N'SİNAN                                             ', CAST(N'2022-09-08T13:59:15.000' AS DateTime), CAST(N'2022-09-16T13:59:15.0000000' AS DateTime2), N'Aktif     ', N'MQTT TCP server Api hazırlanması ')
INSERT [dbo].[gorev] ([gno], [Ad], [Soyad], [bastarih], [bittarih], [durum], [aciklama]) VALUES (43, N'Orkun                                             ', N'Öztürk                                            ', CAST(N'2022-09-08T13:59:15.000' AS DateTime), CAST(N'2022-09-09T13:59:15.0000000' AS DateTime2), N'Aktif     ', N'Android Studio''da Client Arayüz Hazırlanacak . ')
INSERT [dbo].[gorev] ([gno], [Ad], [Soyad], [bastarih], [bittarih], [durum], [aciklama]) VALUES (44, N'Orkun                                             ', N'Öztürk                                            ', CAST(N'2022-09-05T13:59:15.000' AS DateTime), CAST(N'2022-09-08T13:59:15.0000000' AS DateTime2), N'Bitti     ', N'Görev Takip Yazılımı Yazılacak')
INSERT [dbo].[gorev] ([gno], [Ad], [Soyad], [bastarih], [bittarih], [durum], [aciklama]) VALUES (45, N'Ortak                                             ', N'-                                                 ', CAST(N'2022-09-05T13:59:15.000' AS DateTime), CAST(N'2022-09-08T13:59:15.0000000' AS DateTime2), N'Bitti     ', N'Döküman v.1 Hazırlanıp Revize Edilecek')
INSERT [dbo].[gorev] ([gno], [Ad], [Soyad], [bastarih], [bittarih], [durum], [aciklama]) VALUES (46, N'Orkun                                             ', N'Öztürk                                            ', CAST(N'2022-09-05T13:59:15.000' AS DateTime), CAST(N'2022-09-09T13:59:15.0000000' AS DateTime2), N'Bitti     ', N'c# Masaüstü client arayüz hazırlanması                          ')
INSERT [dbo].[gorev] ([gno], [Ad], [Soyad], [bastarih], [bittarih], [durum], [aciklama]) VALUES (47, N'Meriç                                             ', N'Hoşkalan                                          ', CAST(N'2022-09-05T13:59:15.000' AS DateTime), CAST(N'2022-09-08T13:59:15.0000000' AS DateTime2), N'Bitti     ', N'STM32 - ESP8266 Bağlantısı')
INSERT [dbo].[gorev] ([gno], [Ad], [Soyad], [bastarih], [bittarih], [durum], [aciklama]) VALUES (48, N'Orkun                                             ', N'ÖZTÜRK                                            ', CAST(N'2022-09-12T13:59:15.000' AS DateTime), CAST(N'2022-09-17T13:59:15.0000000' AS DateTime2), N'Yeni      ', N'3D Model Hazırlanacak')
INSERT [dbo].[gorev] ([gno], [Ad], [Soyad], [bastarih], [bittarih], [durum], [aciklama]) VALUES (49, N'Orkun                                             ', N'Öztürk                                            ', CAST(N'2022-09-12T13:59:15.000' AS DateTime), CAST(N'2022-09-17T13:59:15.0000000' AS DateTime2), N'Yeni      ', N'3d Baskı Alınacak')
INSERT [dbo].[gorev] ([gno], [Ad], [Soyad], [bastarih], [bittarih], [durum], [aciklama]) VALUES (50, N'Mehmet Akif Sinan                                 ', N'Sinan                                             ', CAST(N'2022-09-05T13:59:15.000' AS DateTime), CAST(N'2022-09-08T13:59:15.0000000' AS DateTime2), N'İşleniyor ', N'Döküman Revize Edilecek')
INSERT [dbo].[gorev] ([gno], [Ad], [Soyad], [bastarih], [bittarih], [durum], [aciklama]) VALUES (51, N'Meriç                                             ', N'Hoşkalan                                          ', CAST(N'2022-09-05T13:59:15.000' AS DateTime), CAST(N'2022-09-08T13:59:15.0000000' AS DateTime2), N'İşleniyor ', N'Döküman Revize Edilecek')
INSERT [dbo].[gorev] ([gno], [Ad], [Soyad], [bastarih], [bittarih], [durum], [aciklama]) VALUES (52, N'Orkun                                             ', N'ÖZTÜRK                                            ', CAST(N'2022-09-12T13:59:15.000' AS DateTime), CAST(N'2022-09-17T13:59:15.0000000' AS DateTime2), N'Yeni      ', N'Client API''ye İstek Atma Çalışılacak ! ')
INSERT [dbo].[gorev] ([gno], [Ad], [Soyad], [bastarih], [bittarih], [durum], [aciklama]) VALUES (53, N'Meriç                                             ', N'Hoşkalan                                          ', CAST(N'2022-09-19T13:59:15.000' AS DateTime), CAST(N'2022-09-23T13:59:15.0000000' AS DateTime2), N'Yeni      ', N'Devre Hazırlanacak ve Step motorların Montajı Gerçekleştirilecek ')
SET IDENTITY_INSERT [dbo].[gorev] OFF
GO
USE [master]
GO
ALTER DATABASE [piton] SET  READ_WRITE 
GO
