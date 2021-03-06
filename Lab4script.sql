USE [master]
GO
/****** Object:  Database [TicketMasterBD]    Script Date: 09/29/2018 11:33:59 ******/
CREATE DATABASE [TicketMasterBD] ON  PRIMARY 
( NAME = N'TicketMasterBD', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\TicketMasterBD.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TicketMasterBD_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\TicketMasterBD_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TicketMasterBD] SET COMPATIBILITY_LEVEL = 100
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
ALTER DATABASE [TicketMasterBD] SET AUTO_CLOSE ON
GO
ALTER DATABASE [TicketMasterBD] SET AUTO_CREATE_STATISTICS ON
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
ALTER DATABASE [TicketMasterBD] SET  ENABLE_BROKER
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
ALTER DATABASE [TicketMasterBD] SET  READ_WRITE
GO
ALTER DATABASE [TicketMasterBD] SET RECOVERY SIMPLE
GO
ALTER DATABASE [TicketMasterBD] SET  MULTI_USER
GO
ALTER DATABASE [TicketMasterBD] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TicketMasterBD] SET DB_CHAINING OFF
GO
USE [TicketMasterBD]
GO
/****** Object:  Table [dbo].[Asientos]    Script Date: 09/29/2018 11:34:01 ******/
DROP TABLE [dbo].[Asientos]
GO
/****** Object:  Table [dbo].[Asistencia]    Script Date: 09/29/2018 11:34:01 ******/
DROP TABLE [dbo].[Asistencia]
GO
/****** Object:  Table [dbo].[Auditorios]    Script Date: 09/29/2018 11:34:01 ******/
DROP TABLE [dbo].[Auditorios]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 09/29/2018 11:34:01 ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Concierto]    Script Date: 09/29/2018 11:34:01 ******/
DROP TABLE [dbo].[Concierto]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 09/29/2018 11:34:01 ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[TipoBoletos]    Script Date: 09/29/2018 11:34:01 ******/
DROP TABLE [dbo].[TipoBoletos]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 09/29/2018 11:34:01 ******/
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 09/29/2018 11:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[id_Venta] [int] NULL,
	[id_Boleto] [int] NULL,
	[id_Concierto] [int] NULL,
	[FechaCompra] [smalldatetime] NULL,
	[Precio_Individual] [money] NULL,
	[Cantidad] [int] NULL,
	[PrecioTotal] [int] NULL,
	[id_Empleado] [int] NULL,
	[id_Cliente] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Venta] ([id_Venta], [id_Boleto], [id_Concierto], [FechaCompra], [Precio_Individual], [Cantidad], [PrecioTotal], [id_Empleado], [id_Cliente]) VALUES (1, 20, 2, CAST(0x07CB0000 AS SmallDateTime), 500.0000, 1, 500, 1, 1)
INSERT [dbo].[Venta] ([id_Venta], [id_Boleto], [id_Concierto], [FechaCompra], [Precio_Individual], [Cantidad], [PrecioTotal], [id_Empleado], [id_Cliente]) VALUES (2, 20, 3, CAST(0x07D20000 AS SmallDateTime), 500.0000, 1, 500, 3, 3)
INSERT [dbo].[Venta] ([id_Venta], [id_Boleto], [id_Concierto], [FechaCompra], [Precio_Individual], [Cantidad], [PrecioTotal], [id_Empleado], [id_Cliente]) VALUES (3, 40, 4, CAST(0x07CA0000 AS SmallDateTime), 600.0000, 1, 500, 4, 4)
INSERT [dbo].[Venta] ([id_Venta], [id_Boleto], [id_Concierto], [FechaCompra], [Precio_Individual], [Cantidad], [PrecioTotal], [id_Empleado], [id_Cliente]) VALUES (4, 40, 5, CAST(0x07C00000 AS SmallDateTime), 700.0000, 1, 500, 5, 5)
INSERT [dbo].[Venta] ([id_Venta], [id_Boleto], [id_Concierto], [FechaCompra], [Precio_Individual], [Cantidad], [PrecioTotal], [id_Empleado], [id_Cliente]) VALUES (5, 40, 6, CAST(0x07C30000 AS SmallDateTime), 800.0000, 1, 500, 6, 6)
INSERT [dbo].[Venta] ([id_Venta], [id_Boleto], [id_Concierto], [FechaCompra], [Precio_Individual], [Cantidad], [PrecioTotal], [id_Empleado], [id_Cliente]) VALUES (6, 60, 8, CAST(0x07CE0000 AS SmallDateTime), 300.0000, 1, 500, 6, 6)
INSERT [dbo].[Venta] ([id_Venta], [id_Boleto], [id_Concierto], [FechaCompra], [Precio_Individual], [Cantidad], [PrecioTotal], [id_Empleado], [id_Cliente]) VALUES (7, 60, 9, CAST(0x07C20000 AS SmallDateTime), 600.0000, 1, 500, 7, 7)
/****** Object:  Table [dbo].[TipoBoletos]    Script Date: 09/29/2018 11:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoBoletos](
	[id_Boleto] [int] NOT NULL,
	[TipoBoleto] [varchar](50) NULL,
	[id_Auditorio] [int] NULL,
	[Numero_Asiento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Boleto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TipoBoletos] ([id_Boleto], [TipoBoleto], [id_Auditorio], [Numero_Asiento]) VALUES (20, N'General', 20, 100)
INSERT [dbo].[TipoBoletos] ([id_Boleto], [TipoBoleto], [id_Auditorio], [Numero_Asiento]) VALUES (21, N'General', 20, 151)
INSERT [dbo].[TipoBoletos] ([id_Boleto], [TipoBoleto], [id_Auditorio], [Numero_Asiento]) VALUES (22, N'VIP', 60, 38)
INSERT [dbo].[TipoBoletos] ([id_Boleto], [TipoBoleto], [id_Auditorio], [Numero_Asiento]) VALUES (40, N'Platea', 40, 150)
INSERT [dbo].[TipoBoletos] ([id_Boleto], [TipoBoleto], [id_Auditorio], [Numero_Asiento]) VALUES (60, N'Cancha', 20, 48)
INSERT [dbo].[TipoBoletos] ([id_Boleto], [TipoBoleto], [id_Auditorio], [Numero_Asiento]) VALUES (61, N'Cancha', 60, 179)
INSERT [dbo].[TipoBoletos] ([id_Boleto], [TipoBoleto], [id_Auditorio], [Numero_Asiento]) VALUES (80, N'Preferente', 60, 178)
INSERT [dbo].[TipoBoletos] ([id_Boleto], [TipoBoleto], [id_Auditorio], [Numero_Asiento]) VALUES (81, N'Preferente', 40, 150)
INSERT [dbo].[TipoBoletos] ([id_Boleto], [TipoBoleto], [id_Auditorio], [Numero_Asiento]) VALUES (82, N'Preferente', 40, 151)
INSERT [dbo].[TipoBoletos] ([id_Boleto], [TipoBoleto], [id_Auditorio], [Numero_Asiento]) VALUES (100, N'Balcon', 40, 20)
/****** Object:  Table [dbo].[Empleado]    Script Date: 09/29/2018 11:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_Empleado] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Empleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Telefono]) VALUES (1, N'Pablito', 822144644)
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Telefono]) VALUES (2, N'Samantha', 827889963)
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Telefono]) VALUES (3, N'Jacinto', 824455478)
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Telefono]) VALUES (4, N'pancho', 811384756)
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Telefono]) VALUES (5, N'Sofia', 817567185)
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [Telefono]) VALUES (6, N'Alberto', 817348917)
/****** Object:  Table [dbo].[Concierto]    Script Date: 09/29/2018 11:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Concierto](
	[id_Concierto] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Fecha] [smalldatetime] NULL,
	[id_Auditorio] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Concierto] ([id_Concierto], [Nombre], [Fecha], [id_Auditorio]) VALUES (2, N'Hombres G', CAST(0x07C90000 AS SmallDateTime), 20)
INSERT [dbo].[Concierto] ([id_Concierto], [Nombre], [Fecha], [id_Auditorio]) VALUES (3, N'El Tri', CAST(0x07C60000 AS SmallDateTime), 20)
INSERT [dbo].[Concierto] ([id_Concierto], [Nombre], [Fecha], [id_Auditorio]) VALUES (4, N'La Arrolladora', CAST(0x07BD0000 AS SmallDateTime), 40)
INSERT [dbo].[Concierto] ([id_Concierto], [Nombre], [Fecha], [id_Auditorio]) VALUES (5, N'La Trakalosa', CAST(0x07CF0000 AS SmallDateTime), 40)
INSERT [dbo].[Concierto] ([id_Concierto], [Nombre], [Fecha], [id_Auditorio]) VALUES (6, N'Los caligaris', CAST(0x07CD0000 AS SmallDateTime), 40)
INSERT [dbo].[Concierto] ([id_Concierto], [Nombre], [Fecha], [id_Auditorio]) VALUES (7, N'Bad Bunni', CAST(0x07D90000 AS SmallDateTime), 40)
INSERT [dbo].[Concierto] ([id_Concierto], [Nombre], [Fecha], [id_Auditorio]) VALUES (8, N'Bob Marly', CAST(0x07D50000 AS SmallDateTime), 60)
INSERT [dbo].[Concierto] ([id_Concierto], [Nombre], [Fecha], [id_Auditorio]) VALUES (9, N'Luis Miguel', CAST(0x07C00000 AS SmallDateTime), 60)
INSERT [dbo].[Concierto] ([id_Concierto], [Nombre], [Fecha], [id_Auditorio]) VALUES (10, N'Jenny Rivera', CAST(0x1F8E0000 AS SmallDateTime), 60)
/****** Object:  Table [dbo].[Cliente]    Script Date: 09/29/2018 11:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[id_Cliente] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Direccion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (1, N'Alfonso', 811345678, N'Luis Arreola, 788, Ruiz')
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (2, N'Katya', 817149824, N'Porfirio Diaz, 908, Portillo')
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (3, N'Ramiro', 813255898, N'Arriendo, 711, Bella Vista')
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (4, N'Hanso', 818852248, N'Benito Juarez, 102, Ruiz')
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (5, N'Leslie', 819852478, N'Miguel, 609, Nueva Madero')
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (6, N'Armando', 867544228, N'Flores, 323, Sabinitos')
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (7, N'Casiano', 816877447, N'Morelos, 488, Santa Lucia')
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (8, N'Panfilo', 812885446, N'San Luis, 748, Loma')
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (9, N'Monica', 811100488, N'Santa Maria, 555, Fomerrey')
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (10, N'Melissa', 811122478, N'Emiliano, 202, Bella Vista')
/****** Object:  Table [dbo].[Auditorios]    Script Date: 09/29/2018 11:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auditorios](
	[id_Auditorio] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Asientos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Auditorio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Auditorios] ([id_Auditorio], [Nombre], [Asientos]) VALUES (1, N'Auditorio Nacional', 5000)
INSERT [dbo].[Auditorios] ([id_Auditorio], [Nombre], [Asientos]) VALUES (2, N'Palacio de Deportes', 2500)
INSERT [dbo].[Auditorios] ([id_Auditorio], [Nombre], [Asientos]) VALUES (3, N'Teatro Metropolitan', 600)
INSERT [dbo].[Auditorios] ([id_Auditorio], [Nombre], [Asientos]) VALUES (4, N'Palacio Bellas artes', 1000)
INSERT [dbo].[Auditorios] ([id_Auditorio], [Nombre], [Asientos]) VALUES (5, N'Teatro Tepeyac', 400)
INSERT [dbo].[Auditorios] ([id_Auditorio], [Nombre], [Asientos]) VALUES (6, N'Teatro Hidalgo', 550)
INSERT [dbo].[Auditorios] ([id_Auditorio], [Nombre], [Asientos]) VALUES (7, N'Auditorio Nacional', 5000)
INSERT [dbo].[Auditorios] ([id_Auditorio], [Nombre], [Asientos]) VALUES (20, N'Arena Monterrey', 3500)
INSERT [dbo].[Auditorios] ([id_Auditorio], [Nombre], [Asientos]) VALUES (40, N'Pabellon m', 4000)
INSERT [dbo].[Auditorios] ([id_Auditorio], [Nombre], [Asientos]) VALUES (60, N'Auditorio Banamex', 2500)
/****** Object:  Table [dbo].[Asistencia]    Script Date: 09/29/2018 11:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asistencia](
	[id_Asistencia] [int] NOT NULL,
	[Asistio] [varchar](2) NULL,
	[Numero_Asiento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Asistencia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Asistencia] ([id_Asistencia], [Asistio], [Numero_Asiento]) VALUES (1, N'NO', 100)
INSERT [dbo].[Asistencia] ([id_Asistencia], [Asistio], [Numero_Asiento]) VALUES (2, N'NO', 150)
INSERT [dbo].[Asistencia] ([id_Asistencia], [Asistio], [Numero_Asiento]) VALUES (3, N'NO', 48)
INSERT [dbo].[Asistencia] ([id_Asistencia], [Asistio], [Numero_Asiento]) VALUES (4, N'NO', 178)
INSERT [dbo].[Asistencia] ([id_Asistencia], [Asistio], [Numero_Asiento]) VALUES (5, N'NO', 20)
INSERT [dbo].[Asistencia] ([id_Asistencia], [Asistio], [Numero_Asiento]) VALUES (6, N'NO', 151)
INSERT [dbo].[Asistencia] ([id_Asistencia], [Asistio], [Numero_Asiento]) VALUES (7, N'NO', 38)
INSERT [dbo].[Asistencia] ([id_Asistencia], [Asistio], [Numero_Asiento]) VALUES (8, N'NO', 179)
INSERT [dbo].[Asistencia] ([id_Asistencia], [Asistio], [Numero_Asiento]) VALUES (9, N'NO', 150)
INSERT [dbo].[Asistencia] ([id_Asistencia], [Asistio], [Numero_Asiento]) VALUES (10, N'NO', 151)
/****** Object:  Table [dbo].[Asientos]    Script Date: 09/29/2018 11:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asientos](
	[Numero_Asiento] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Numero_Asiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (20)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (38)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (48)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (100)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (150)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (151)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (178)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (179)
