﻿/*   
	Creates the Database
	NOTICE: Please set up `<YOUR_PATH>`
*/

USE [master]
GO

CREATE DATABASE [DeviceDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DeviceDb', FILENAME = N'C:\<YOUR_PATH>\DeviceDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DeviceDb_log', FILENAME = N'C:\<YOUR_PATH>\DeviceDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [DeviceDb] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DeviceDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [DeviceDb] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [DeviceDb] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [DeviceDb] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [DeviceDb] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [DeviceDb] SET ARITHABORT OFF 
GO

ALTER DATABASE [DeviceDb] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [DeviceDb] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [DeviceDb] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [DeviceDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [DeviceDb] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [DeviceDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [DeviceDb] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [DeviceDb] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [DeviceDb] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [DeviceDb] SET  ENABLE_BROKER 
GO

ALTER DATABASE [DeviceDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [DeviceDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [DeviceDb] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [DeviceDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [DeviceDb] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [DeviceDb] SET READ_COMMITTED_SNAPSHOT ON 
GO

ALTER DATABASE [DeviceDb] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [DeviceDb] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [DeviceDb] SET  MULTI_USER 
GO

ALTER DATABASE [DeviceDb] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [DeviceDb] SET DB_CHAINING OFF 
GO

ALTER DATABASE [DeviceDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [DeviceDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [DeviceDb] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [DeviceDb] SET QUERY_STORE = OFF
GO

USE [DeviceDb]
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [DeviceDb] SET  READ_WRITE 
GO


