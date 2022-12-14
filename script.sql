USE [master]
GO
/****** Object:  Database [İcerikEditoru]    Script Date: 2.06.2021 20:36:15 ******/
CREATE DATABASE [İcerikEditoru]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'İcerikEditoru', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\İcerikEditoru.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'İcerikEditoru_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\İcerikEditoru_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [İcerikEditoru].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [İcerikEditoru] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [İcerikEditoru] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [İcerikEditoru] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [İcerikEditoru] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [İcerikEditoru] SET ARITHABORT OFF 
GO
ALTER DATABASE [İcerikEditoru] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [İcerikEditoru] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [İcerikEditoru] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [İcerikEditoru] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [İcerikEditoru] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [İcerikEditoru] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [İcerikEditoru] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [İcerikEditoru] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [İcerikEditoru] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [İcerikEditoru] SET  DISABLE_BROKER 
GO
ALTER DATABASE [İcerikEditoru] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [İcerikEditoru] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [İcerikEditoru] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [İcerikEditoru] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [İcerikEditoru] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [İcerikEditoru] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [İcerikEditoru] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [İcerikEditoru] SET RECOVERY FULL 
GO
ALTER DATABASE [İcerikEditoru] SET  MULTI_USER 
GO
ALTER DATABASE [İcerikEditoru] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [İcerikEditoru] SET DB_CHAINING OFF 
GO
ALTER DATABASE [İcerikEditoru] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [İcerikEditoru] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [İcerikEditoru] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'İcerikEditoru', N'ON'
GO
USE [İcerikEditoru]
GO
/****** Object:  Table [dbo].[İcerikler]    Script Date: 2.06.2021 20:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[İcerikler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[K_id] [int] NULL,
	[konu] [text] NOT NULL,
	[anahtarKelime] [text] NOT NULL,
	[baslikh1] [text] NOT NULL,
	[girisBolumu] [text] NOT NULL,
	[baslikh2] [text] NOT NULL,
	[icerikh2] [text] NOT NULL,
	[baslikh3] [text] NOT NULL,
	[icerikh3] [text] NOT NULL,
	[sonuc] [text] NOT NULL,
 CONSTRAINT [PK_İcerikler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 2.06.2021 20:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici_Ad] [nvarchar](50) NOT NULL,
	[Ad_Soyad] [nvarchar](60) NOT NULL,
	[Email] [nvarchar](60) NOT NULL,
	[sifre] [nvarchar](60) NOT NULL,
	[telefon] [nvarchar](11) NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[İcerikler] ON 

INSERT [dbo].[İcerikler] ([id], [K_id], [konu], [anahtarKelime], [baslikh1], [girisBolumu], [baslikh2], [icerikh2], [baslikh3], [icerikh3], [sonuc]) VALUES (1, 2, N'deneme', N'deneme', N'deneme', N'deneme', N'deneme', N'deneme', N'deneme', N'deneme', N'deneme')
INSERT [dbo].[İcerikler] ([id], [K_id], [konu], [anahtarKelime], [baslikh1], [girisBolumu], [baslikh2], [icerikh2], [baslikh3], [icerikh3], [sonuc]) VALUES (2, 2, N'Bu içeriğin konusu nedir ? Örn:Fotoğrafçılık', N'Kelime 1, Kelime 2 , Kelime 3', N'Fotoğrafçılık Hakkında Bilmeniz Gereken 30 Şey', N'En az 100 kelimeden oluşan bir giriş yazısı oluşturun', N'Örn: Fotoğrafçılık neden önemli?', N'fdfd', N'Örn: Sokak Fotoğrafçılığı', N'fdfd', N'Sonuç')
INSERT [dbo].[İcerikler] ([id], [K_id], [konu], [anahtarKelime], [baslikh1], [girisBolumu], [baslikh2], [icerikh2], [baslikh3], [icerikh3], [sonuc]) VALUES (3, 3, N'Bu içeriğin konusu nedir ? Örn:Fotoğrafçılık', N'Kelime 1, Kelime 2 , Kelime 3', N'Fotoğrafçılık Hakkında Bilmeniz Gereken 30 Şey', N'En az 100 kelimeden oluşan bir giriş yazısı oluşturun', N'Örn: Fotoğrafçılık neden önemli?', N'dsfdsfs', N'Örn: Sokak Fotoğrafçılığı', N'dsfdsf', N'Sonuç')
SET IDENTITY_INSERT [dbo].[İcerikler] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([id], [Kullanici_Ad], [Ad_Soyad], [Email], [sifre], [telefon]) VALUES (2, N'melihyldz', N'Melih gazi Yıldız', N'melihyldz8@gmail.com', N'41f1e2e6fe348987c5a203648ff508c2', N'05346867583')
INSERT [dbo].[Kullanici] ([id], [Kullanici_Ad], [Ad_Soyad], [Email], [sifre], [telefon]) VALUES (3, N'adnan', N'adnan Kürşat', N'adnan@gmail.com', N'827ccb0eea8a706c4c34a16891f84e7b', NULL)
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
GO
USE [master]
GO
ALTER DATABASE [İcerikEditoru] SET  READ_WRITE 
GO
