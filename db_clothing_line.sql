USE [master]
GO
/****** Object:  Database [db_clothing_line]    Script Date: 1/28/2020 3:07:22 PM ******/
CREATE DATABASE [db_clothing_line]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_clothing_line', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\db_clothing_line.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_clothing_line_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\db_clothing_line_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_clothing_line] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_clothing_line].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_clothing_line] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_clothing_line] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_clothing_line] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_clothing_line] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_clothing_line] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_clothing_line] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [db_clothing_line] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_clothing_line] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_clothing_line] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_clothing_line] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_clothing_line] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_clothing_line] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_clothing_line] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_clothing_line] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_clothing_line] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_clothing_line] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_clothing_line] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_clothing_line] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_clothing_line] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_clothing_line] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_clothing_line] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_clothing_line] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_clothing_line] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_clothing_line] SET  MULTI_USER 
GO
ALTER DATABASE [db_clothing_line] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_clothing_line] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_clothing_line] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_clothing_line] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [db_clothing_line] SET DELAYED_DURABILITY = DISABLED 
GO
USE [db_clothing_line]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 1/28/2020 3:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [int] NOT NULL,
	[First_Name] [varchar](255) NULL,
	[Last_Name] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[contact] [varchar](255) NULL,
	[position] [varchar](255) NULL,
	[rate] [decimal](11, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[products]    Script Date: 1/28/2020 3:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] NOT NULL,
	[name] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[Price] [decimal](18, 0) NULL,
	[Timestamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[suppliers]    Script Date: 1/28/2020 3:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[suppliers](
	[id] [int] NOT NULL,
	[name] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[contact] [decimal](18, 0) NULL,
	[Timestamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [db_clothing_line] SET  READ_WRITE 
GO
