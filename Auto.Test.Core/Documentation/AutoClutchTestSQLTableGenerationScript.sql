USE [master]
GO
/****** Object:  Database [AutoClutchTest]    Script Date: 10/20/2015 10:12:28 AM ******/
CREATE DATABASE [AutoClutchTest] ON  PRIMARY 
( NAME = N'AutoClutchTest', FILENAME = N'E:\SQLDATA\AutoClutchTest.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AutoClutchTest_log', FILENAME = N'E:\SQLDATA\AutoClutchTest_log.ldf' , SIZE = 5120KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AutoClutchTest] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AutoClutchTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AutoClutchTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AutoClutchTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AutoClutchTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AutoClutchTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AutoClutchTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [AutoClutchTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AutoClutchTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AutoClutchTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AutoClutchTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AutoClutchTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AutoClutchTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AutoClutchTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AutoClutchTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AutoClutchTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AutoClutchTest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AutoClutchTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AutoClutchTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AutoClutchTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AutoClutchTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AutoClutchTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AutoClutchTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AutoClutchTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AutoClutchTest] SET RECOVERY FULL 
GO
ALTER DATABASE [AutoClutchTest] SET  MULTI_USER 
GO
ALTER DATABASE [AutoClutchTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AutoClutchTest] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AutoClutchTest', N'ON'
GO
USE [AutoClutchTest]
GO
/****** Object:  Table [dbo].[facility]    Script Date: 10/20/2015 10:12:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facility](
	[facilityId] [int] IDENTITY(1,1) NOT NULL,
	[locationId] [int] NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_facility] PRIMARY KEY CLUSTERED 
(
	[facilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[location]    Script Date: 10/20/2015 10:12:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[location](
	[locationId] [int] IDENTITY(1,1) NOT NULL,
	[contactUserId] [int] NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_location] PRIMARY KEY CLUSTERED 
(
	[locationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 10/20/2015 10:12:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[facility]  WITH CHECK ADD  CONSTRAINT [FK_facility_location] FOREIGN KEY([locationId])
REFERENCES [dbo].[location] ([locationId])
GO
ALTER TABLE [dbo].[facility] CHECK CONSTRAINT [FK_facility_location]
GO
ALTER TABLE [dbo].[location]  WITH CHECK ADD  CONSTRAINT [FK_location_user] FOREIGN KEY([contactUserId])
REFERENCES [dbo].[user] ([userId])
GO
ALTER TABLE [dbo].[location] CHECK CONSTRAINT [FK_location_user]
GO
USE [master]
GO
ALTER DATABASE [AutoClutchTest] SET  READ_WRITE 
GO
