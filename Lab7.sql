USE [master]
GO
/****** Object:  Database [bdticketmaster]    Script Date: 10/20/2018 11:36:58 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'bdticketmaster')
BEGIN
CREATE DATABASE [bdticketmaster] ON  PRIMARY 
( NAME = N'bdticketmaster', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\bdticketmaster.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'bdticketmaster_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\bdticketmaster_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
GO
ALTER DATABASE [bdticketmaster] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bdticketmaster].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bdticketmaster] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [bdticketmaster] SET ANSI_NULLS OFF
GO
ALTER DATABASE [bdticketmaster] SET ANSI_PADDING OFF
GO
ALTER DATABASE [bdticketmaster] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [bdticketmaster] SET ARITHABORT OFF
GO
ALTER DATABASE [bdticketmaster] SET AUTO_CLOSE ON
GO
ALTER DATABASE [bdticketmaster] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [bdticketmaster] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [bdticketmaster] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [bdticketmaster] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [bdticketmaster] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [bdticketmaster] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [bdticketmaster] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [bdticketmaster] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [bdticketmaster] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [bdticketmaster] SET  ENABLE_BROKER
GO
ALTER DATABASE [bdticketmaster] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [bdticketmaster] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [bdticketmaster] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [bdticketmaster] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [bdticketmaster] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [bdticketmaster] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [bdticketmaster] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [bdticketmaster] SET  READ_WRITE
GO
ALTER DATABASE [bdticketmaster] SET RECOVERY SIMPLE
GO
ALTER DATABASE [bdticketmaster] SET  MULTI_USER
GO
ALTER DATABASE [bdticketmaster] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [bdticketmaster] SET DB_CHAINING OFF
GO
USE [bdticketmaster]
GO
/****** Object:  StoredProcedure [dbo].[SPboleto]    Script Date: 10/20/2018 11:37:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPboleto]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPboleto]
GO
/****** Object:  StoredProcedure [dbo].[SPevento]    Script Date: 10/20/2018 11:37:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPevento]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPevento]
GO
/****** Object:  StoredProcedure [dbo].[SPformapago]    Script Date: 10/20/2018 11:37:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPformapago]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPformapago]
GO
/****** Object:  StoredProcedure [dbo].[SPlugar]    Script Date: 10/20/2018 11:37:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPlugar]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPlugar]
GO
/****** Object:  StoredProcedure [dbo].[SPusuario_cliente]    Script Date: 10/20/2018 11:37:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPusuario_cliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPusuario_cliente]
GO
/****** Object:  Table [dbo].[Tarjeta_Credito_debito]    Script Date: 10/20/2018 11:37:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tarjeta_Credito_debito]') AND type in (N'U'))
DROP TABLE [dbo].[Tarjeta_Credito_debito]
GO
/****** Object:  Table [dbo].[usuario_cliente]    Script Date: 10/20/2018 11:37:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usuario_cliente]') AND type in (N'U'))
DROP TABLE [dbo].[usuario_cliente]
GO
/****** Object:  UserDefinedFunction [dbo].[usuario_clientefuncion]    Script Date: 10/20/2018 11:37:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usuario_clientefuncion]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[usuario_clientefuncion]
GO
/****** Object:  Table [dbo].[boleto]    Script Date: 10/20/2018 11:37:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[boleto]') AND type in (N'U'))
DROP TABLE [dbo].[boleto]
GO
/****** Object:  Table [dbo].[evento]    Script Date: 10/20/2018 11:37:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[evento]') AND type in (N'U'))
DROP TABLE [dbo].[evento]
GO
/****** Object:  Table [dbo].[formapago]    Script Date: 10/20/2018 11:37:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[formapago]') AND type in (N'U'))
DROP TABLE [dbo].[formapago]
GO
/****** Object:  Table [dbo].[lugar]    Script Date: 10/20/2018 11:37:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lugar]') AND type in (N'U'))
DROP TABLE [dbo].[lugar]
GO
/****** Object:  Table [dbo].[lugar]    Script Date: 10/20/2018 11:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lugar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lugar](
	[id_lugar] [int] NULL,
	[nombre_lugar] [varchar](50) NULL,
	[zona_asientos] [int] NULL,
	[capacidad_lugar] [int] NULL,
	[direccion] [nvarchar](200) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
UPDATE STATISTICS [dbo].[lugar] WITH ROWCOUNT = 1, PAGECOUNT = 1
GO
INSERT [dbo].[lugar] ([id_lugar], [nombre_lugar], [zona_asientos], [capacidad_lugar], [direccion]) VALUES (1, N'Arena Monterrey', 2, 1500, N'Guadalupe, Monterrey')
/****** Object:  Table [dbo].[formapago]    Script Date: 10/20/2018 11:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[formapago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[formapago](
	[id_ForPag] [int] NULL,
	[Tipodetarjeta] [varchar](20) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
UPDATE STATISTICS [dbo].[formapago] WITH ROWCOUNT = 1, PAGECOUNT = 1
GO
INSERT [dbo].[formapago] ([id_ForPag], [Tipodetarjeta]) VALUES (1, N'Debito')
/****** Object:  Table [dbo].[evento]    Script Date: 10/20/2018 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[evento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[evento](
	[id_nombre] [int] NOT NULL,
	[nombre_evento] [varchar](50) NULL,
	[descripcion_evento] [varchar](200) NULL,
	[id_lugar] [int] NULL,
	[fecha_evento] [date] NULL,
 CONSTRAINT [PK__evento__3A13C2667F60ED59] PRIMARY KEY CLUSTERED 
(
	[id_nombre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
if  exists (select * from sys.stats where name = N'PK__evento__3A13C2667F60ED59' and object_id = object_id(N'[dbo].[evento]'))
UPDATE STATISTICS [dbo].[evento]([PK__evento__3A13C2667F60ED59]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 1, PAGECOUNT = 1
GO
INSERT [dbo].[evento] ([id_nombre], [nombre_evento], [descripcion_evento], [id_lugar], [fecha_evento]) VALUES (1, N'1', N'Festejando sus 10 años', 1, CAST(0x41360B00 AS Date))
/****** Object:  Table [dbo].[boleto]    Script Date: 10/20/2018 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[boleto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[boleto](
	[id_boleto] [int] NULL,
	[id_evento] [int] NULL,
	[id_lugar] [int] NULL,
	[fechar_evento] [date] NULL,
	[zona_asientos] [int] NULL,
	[costo_evento] [int] NULL,
	[nombre] [varchar](20) NULL,
	[apellido_paterno] [varchar](20) NULL,
	[apellido_materno] [varchar](20) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
UPDATE STATISTICS [dbo].[boleto] WITH ROWCOUNT = 1, PAGECOUNT = 1
GO
INSERT [dbo].[boleto] ([id_boleto], [id_evento], [id_lugar], [fechar_evento], [zona_asientos], [costo_evento], [nombre], [apellido_paterno], [apellido_materno]) VALUES (1, 1, 1, CAST(0x41360B00 AS Date), 2, 300, N'Juan', N'Rocha', N'Gamez')
/****** Object:  UserDefinedFunction [dbo].[usuario_clientefuncion]    Script Date: 10/20/2018 11:37:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usuario_clientefuncion]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create function [dbo].[usuario_clientefuncion](
@usuario int
)returns int 
as
begin
	return 4 + @usuario 
	end' 
END
GO
/****** Object:  Table [dbo].[usuario_cliente]    Script Date: 10/20/2018 11:37:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usuario_cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[usuario_cliente](
	[id_usuario] [int] NULL,
	[nombre] [varchar](20) NULL,
	[apellido_paterno] [varchar](20) NULL,
	[apellido_materno] [varchar](20) NULL,
	[email] [nvarchar](100) NULL,
	[contraseña] [varchar](10) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
UPDATE STATISTICS [dbo].[usuario_cliente] WITH ROWCOUNT = 1, PAGECOUNT = 1
GO
INSERT [dbo].[usuario_cliente] ([id_usuario], [nombre], [apellido_paterno], [apellido_materno], [email], [contraseña]) VALUES (1, N'Juan', N'Rocha', N'Gamez', N'juan@gmail.com', N'Juan')
/****** Object:  Table [dbo].[Tarjeta_Credito_debito]    Script Date: 10/20/2018 11:37:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tarjeta_Credito_debito]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tarjeta_Credito_debito](
	[Tipodetarjeta] [varchar](20) NULL,
	[DigitosEnfrento] [numeric](16, 0) NULL,
	[FechaDeVencimiento_mes] [int] NULL,
	[FechaDeVencimiento_año] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
UPDATE STATISTICS [dbo].[Tarjeta_Credito_debito] WITH ROWCOUNT = 1, PAGECOUNT = 1
GO
INSERT [dbo].[Tarjeta_Credito_debito] ([Tipodetarjeta], [DigitosEnfrento], [FechaDeVencimiento_mes], [FechaDeVencimiento_año]) VALUES (N'Debito', CAST(1674896314567896 AS Numeric(16, 0)), 6, 23)
/****** Object:  StoredProcedure [dbo].[SPusuario_cliente]    Script Date: 10/20/2018 11:37:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPusuario_cliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[SPusuario_cliente]
@opc int,
@id_usuario int,
@nombre varchar,
@apellido_paterno varchar,
@apellido_materno varchar,
@email nvarchar ,
@contraseña varchar
 as
 
 if @opc = 1
 
begin 
	select * from usuario_cliente
end

if @opc=2
begin
	insert into usuario_cliente(
								nombre,
				                apellido_paterno,
					            apellido_materno,
					            email
					            	 )
					 
					values (
							@nombre,
							@apellido_paterno,
							@apellido_materno,
							@email
							)
	end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SPlugar]    Script Date: 10/20/2018 11:37:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPlugar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[SPlugar]
@opc int,
@id_lugar int,
@nombre_lugar varchar,
@zona_asientos int,
@capacidad_lugar int
 as
 
 if @opc = 1
 
begin 
	select * from lugar
end

if @opc=2
begin
	insert into lugar(
								nombre_lugar,
								zona_asientos,
								capacidad_lugar
								)
								
					         
					 
					values (
						@nombre_lugar,
							@zona_asientos,
							@capacidad_lugar
							)
	end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SPformapago]    Script Date: 10/20/2018 11:37:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPformapago]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[SPformapago]
@opc int,
@id_ForPag int,
@Tipodetarjeta varchar

 as
 
 if @opc = 1
 
begin 
	select * from formapago
end

if @opc=2
begin
	insert into formapago(
								Tipodetarjeta
								)
								
					         
					 
					values (
						@Tipodetarjeta
							)
	end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SPevento]    Script Date: 10/20/2018 11:37:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPevento]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[SPevento]
@opc int,
@id_nombre int,
@nombre_evento varchar,
@descripcion_evento varchar,
@id_lugar int
 as
 
 if @opc = 1
 
begin 
	select * from evento
end

if @opc=2
begin
	insert into evento(
								nombre_evento,
								descripcion_evento
								)
								
					         
					 
					values (
							@nombre_evento,
							@descripcion_evento
							)
	end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SPboleto]    Script Date: 10/20/2018 11:37:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPboleto]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[SPboleto]
@opc int,
@id_boleto int,
@id_evento int,
@id_lugar int,
@fechar_evento date,
@zona_asientos int,
@costo_evento int,
@nombre varchar(20),
@apellido_paterno varchar(20),
@apellido_materno varchar(20)

 as
 
 if @opc = 1
 
begin 
	select * from boleto
end

if @opc=2
begin
	insert into boleto(
	 zona_asientos ,
				        costo_evento ,
					    nombre , 
					 apellido_paterno ,
					 apellido_materno 
					 )
					 
					values (
							@zona_asientos,
							@costo_evento,
							@nombre,
							@apellido_paterno,
							@apellido_materno
							)
	end
' 
END
GO
