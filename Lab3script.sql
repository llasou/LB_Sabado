USE [TicketMasterBD]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Tipos de Boleto]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Empleado]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Conciertos]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Cliente]
GO
ALTER TABLE [dbo].[Tipos de Boleto] DROP CONSTRAINT [FK_Tipos de Boleto_Auditorios]
GO
ALTER TABLE [dbo].[Tipos de Boleto] DROP CONSTRAINT [FK_Tipos de Boleto_Asientos]
GO
ALTER TABLE [dbo].[Conciertos] DROP CONSTRAINT [FK_Conciertos_Auditorios]
GO
ALTER TABLE [dbo].[Asistencia] DROP CONSTRAINT [FK_Asistencia_Asientos]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 29/09/2018 12:05:38 a. m. ******/
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[Tipos de Boleto]    Script Date: 29/09/2018 12:05:38 a. m. ******/
DROP TABLE [dbo].[Tipos de Boleto]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 29/09/2018 12:05:38 a. m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Conciertos]    Script Date: 29/09/2018 12:05:38 a. m. ******/
DROP TABLE [dbo].[Conciertos]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 29/09/2018 12:05:38 a. m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Auditorios]    Script Date: 29/09/2018 12:05:38 a. m. ******/
DROP TABLE [dbo].[Auditorios]
GO
/****** Object:  Table [dbo].[Asistencia]    Script Date: 29/09/2018 12:05:38 a. m. ******/
DROP TABLE [dbo].[Asistencia]
GO
/****** Object:  Table [dbo].[Asientos]    Script Date: 29/09/2018 12:05:38 a. m. ******/
DROP TABLE [dbo].[Asientos]
GO
USE [master]
GO
/****** Object:  Database [TicketMasterBD]    Script Date: 29/09/2018 12:05:38 a. m. ******/
DROP DATABASE [TicketMasterBD]
GO
/****** Object:  Database [TicketMasterBD]    Script Date: 29/09/2018 12:05:38 a. m. ******/
CREATE DATABASE [TicketMasterBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TicketMasterBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TicketMasterBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TicketMasterBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TicketMasterBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TicketMasterBD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TicketMasterBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TicketMasterBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TicketMasterBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TicketMasterBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TicketMasterBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TicketMasterBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [TicketMasterBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TicketMasterBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TicketMasterBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TicketMasterBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TicketMasterBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TicketMasterBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TicketMasterBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TicketMasterBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TicketMasterBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TicketMasterBD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TicketMasterBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TicketMasterBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TicketMasterBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TicketMasterBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TicketMasterBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TicketMasterBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TicketMasterBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TicketMasterBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TicketMasterBD] SET  MULTI_USER 
GO
ALTER DATABASE [TicketMasterBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TicketMasterBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TicketMasterBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TicketMasterBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TicketMasterBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TicketMasterBD] SET QUERY_STORE = OFF
GO
USE [TicketMasterBD]
GO
/****** Object:  Table [dbo].[Asientos]    Script Date: 29/09/2018 12:05:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asientos](
	[Numero_Asiento] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Asientos] PRIMARY KEY CLUSTERED 
(
	[Numero_Asiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asistencia]    Script Date: 29/09/2018 12:05:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asistencia](
	[Id_Asistencia] [int] NOT NULL,
	[Asistio] [varchar](2) NOT NULL,
	[Numero_Asiento] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Asistencia] PRIMARY KEY CLUSTERED 
(
	[Id_Asistencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auditorios]    Script Date: 29/09/2018 12:05:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auditorios](
	[Id_Auditorio] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Asientos] [int] NULL,
 CONSTRAINT [PK_Auditorios] PRIMARY KEY CLUSTERED 
(
	[Id_Auditorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 29/09/2018 12:05:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_Cliente] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Direccion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conciertos]    Script Date: 29/09/2018 12:05:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conciertos](
	[Id_Concierto] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Fecha] [date] NULL,
	[Id_Auditorio] [int] NULL,
 CONSTRAINT [PK_Conciertos] PRIMARY KEY CLUSTERED 
(
	[Id_Concierto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 29/09/2018 12:05:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Id_Empleado] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[Id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos de Boleto]    Script Date: 29/09/2018 12:05:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos de Boleto](
	[Id_Boleto] [int] NOT NULL,
	[TipoBoleto] [varchar](50) NOT NULL,
	[Id_Auditorio] [int] NOT NULL,
	[Numero_Asiento] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Tipos de Boleto] PRIMARY KEY CLUSTERED 
(
	[Id_Boleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 29/09/2018 12:05:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Id_Venta] [int] NOT NULL,
	[Id_Boleto] [int] NOT NULL,
	[Id_Concierto] [int] NOT NULL,
	[FechaCompra] [date] NOT NULL,
	[Precio_Individual] [money] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioTotal]  AS ([Precio_Individual]*[Cantidad]),
	[Id_Empleado] [int] NOT NULL,
	[Id_Cliente] [int] NOT NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[Id_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Asistencia]  WITH CHECK ADD  CONSTRAINT [FK_Asistencia_Asientos] FOREIGN KEY([Numero_Asiento])
REFERENCES [dbo].[Asientos] ([Numero_Asiento])
GO
ALTER TABLE [dbo].[Asistencia] CHECK CONSTRAINT [FK_Asistencia_Asientos]
GO
ALTER TABLE [dbo].[Conciertos]  WITH CHECK ADD  CONSTRAINT [FK_Conciertos_Auditorios] FOREIGN KEY([Id_Auditorio])
REFERENCES [dbo].[Auditorios] ([Id_Auditorio])
GO
ALTER TABLE [dbo].[Conciertos] CHECK CONSTRAINT [FK_Conciertos_Auditorios]
GO
ALTER TABLE [dbo].[Tipos de Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Tipos de Boleto_Asientos] FOREIGN KEY([Numero_Asiento])
REFERENCES [dbo].[Asientos] ([Numero_Asiento])
GO
ALTER TABLE [dbo].[Tipos de Boleto] CHECK CONSTRAINT [FK_Tipos de Boleto_Asientos]
GO
ALTER TABLE [dbo].[Tipos de Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Tipos de Boleto_Auditorios] FOREIGN KEY([Id_Auditorio])
REFERENCES [dbo].[Auditorios] ([Id_Auditorio])
GO
ALTER TABLE [dbo].[Tipos de Boleto] CHECK CONSTRAINT [FK_Tipos de Boleto_Auditorios]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Cliente] FOREIGN KEY([Id_Cliente])
REFERENCES [dbo].[Cliente] ([Id_Cliente])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Cliente]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Conciertos] FOREIGN KEY([Id_Concierto])
REFERENCES [dbo].[Conciertos] ([Id_Concierto])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Conciertos]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Empleado] FOREIGN KEY([Id_Empleado])
REFERENCES [dbo].[Empleado] ([Id_Empleado])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Empleado]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Tipos de Boleto] FOREIGN KEY([Id_Boleto])
REFERENCES [dbo].[Tipos de Boleto] ([Id_Boleto])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Tipos de Boleto]
GO
USE [master]
GO
ALTER DATABASE [TicketMasterBD] SET  READ_WRITE 
GO
