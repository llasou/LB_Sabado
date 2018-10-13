USE [LabBD]
GO
/****** Object:  Table [dbo].[Puesto Empleados]    Script Date: 07/09/2018 11:57:04 p. m. ******/
DROP TABLE [dbo].[Puesto Empleados]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 07/09/2018 11:57:04 p. m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[PersonajeVideojuego]    Script Date: 07/09/2018 11:57:04 p. m. ******/
DROP TABLE [dbo].[PersonajeVideojuego]
GO
/****** Object:  Table [dbo].[Horario Empleados]    Script Date: 07/09/2018 11:57:04 p. m. ******/
DROP TABLE [dbo].[Horario Empleados]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 07/09/2018 11:57:04 p. m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 07/09/2018 11:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Num_Empleado] [int] NOT NULL,
	[Nombre] [varchar](15) NULL,
	[Apellidos] [varchar](30) NULL,
	[Telefono] [bit] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[Num_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario Empleados]    Script Date: 07/09/2018 11:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario Empleados](
	[Num_Empleado] [int] NOT NULL,
	[Hora_Entrada] [datetime] NOT NULL,
	[Hora_Salida] [datetime] NOT NULL,
 CONSTRAINT [PK_Horario Empleados] PRIMARY KEY CLUSTERED 
(
	[Num_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonajeVideojuego]    Script Date: 07/09/2018 11:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonajeVideojuego](
	[Nomnbre_Personaje] [varchar](25) NOT NULL,
	[Vida] [int] NOT NULL,
	[Daño] [int] NOT NULL,
	[Skins] [int] NULL,
	[Fecha_Creacion] [datetime] NOT NULL,
 CONSTRAINT [PK_PersonajeVideojuego] PRIMARY KEY CLUSTERED 
(
	[Nomnbre_Personaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 07/09/2018 11:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Nombre_Producto] [varchar](25) NOT NULL,
	[Costo] [float] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Nombre_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto Empleados]    Script Date: 07/09/2018 11:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto Empleados](
	[Num_Empleado] [int] NOT NULL,
	[Sueldo] [money] NULL,
	[Puesto] [text] NULL,
	[Rango] [bit] NULL,
 CONSTRAINT [PK_Puesto Empleados] PRIMARY KEY CLUSTERED 
(
	[Num_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
