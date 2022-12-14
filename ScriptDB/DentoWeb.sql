USE [master]
GO
/****** Object:  Database [DentoWeb]    Script Date: 26/11/2020 21:08:47 ******/
CREATE DATABASE [DentoWeb]
GO
ALTER DATABASE [DentoWeb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DentoWeb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DentoWeb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DentoWeb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DentoWeb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DentoWeb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DentoWeb] SET ARITHABORT OFF 
GO
ALTER DATABASE [DentoWeb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DentoWeb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DentoWeb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DentoWeb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DentoWeb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DentoWeb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DentoWeb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DentoWeb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DentoWeb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DentoWeb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DentoWeb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DentoWeb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DentoWeb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DentoWeb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DentoWeb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DentoWeb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DentoWeb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DentoWeb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DentoWeb] SET  MULTI_USER 
GO
ALTER DATABASE [DentoWeb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DentoWeb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DentoWeb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DentoWeb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DentoWeb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DentoWeb] SET QUERY_STORE = OFF
GO
USE [DentoWeb]
GO
/****** Object:  Table [dbo].[Cita]    Script Date: 26/11/2020 21:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cita](
	[idCita] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[idHorario] [int] NULL,
	[estado] [varchar](10) NULL,
	[pago] [varchar](50) NULL,
	[idCliente] [int] NULL,
	[idDoctor] [int] NULL,
	[monto] [decimal](8, 4) NULL,
 CONSTRAINT [PK__Cita__814F312620148252] PRIMARY KEY CLUSTERED 
(
	[idCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 26/11/2020 21:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [nvarchar](50) NULL,
	[nombres] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,
	[dni] [nvarchar](8) NULL,
	[fechaNac] [date] NULL,
	[correo] [varchar](100) NULL,
	[telefono] [varchar](20) NULL,
	[usuario] [varchar](50) NULL,
	[passwd] [varchar](200) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 26/11/2020 21:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[idDoctor] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,
	[codigoCol] [varchar](50) NULL,
	[casaEstudio] [varchar](100) NULL,
	[titulo] [varchar](100) NULL,
	[dni] [nvarchar](8) NULL,
	[correo] [varchar](100) NULL,
	[telefono] [varchar](20) NULL,
	[usuario] [varchar](50) NULL,
	[passwd] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDoctor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Historia]    Script Date: 26/11/2020 21:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historia](
	[idHistoria] [int] IDENTITY(1,1) NOT NULL,
	[idCita] [int] NULL,
	[observacion] [varchar](500) NULL,
	[motivo] [varchar](500) NULL,
	[fecha] [date] NULL,
	[descripcion] [varchar](500) NULL,
	[examenes] [varchar](500) NULL,
	[diagnostico] [varchar](500) NULL,
	[tratamiento] [varchar](500) NULL,
 CONSTRAINT [PK_Historia] PRIMARY KEY CLUSTERED 
(
	[idHistoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 26/11/2020 21:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[idHorario] [int] IDENTITY(1,1) NOT NULL,
	[horaInicio] [varchar](10) NULL,
	[horaFin] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cita] ON 

INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (1, CAST(N'2020-11-22' AS Date), 2, N'PENDIENTE', N'false', 3, 1, CAST(50.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2, CAST(N'2020-11-14' AS Date), 2, N'CANCELADA', N'false', 2, 3, CAST(52.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (1002, CAST(N'2020-11-15' AS Date), 3, N'CANCELADA', N'false', 2, 3, CAST(69.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (1003, CAST(N'2020-11-20' AS Date), 3, N'CANCELADA', N'false', 2, 3, CAST(89.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (1004, CAST(N'2020-11-20' AS Date), 3, N'CANCELADA', N'false', 2, 4, CAST(120.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (1005, CAST(N'2020-11-20' AS Date), 4, N'CANCELADA', N'false', 2, 4, CAST(147.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (1006, CAST(N'2020-11-28' AS Date), 2, N'ATENDIDO', N'true', 2, 4, CAST(97.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (1007, CAST(N'2020-11-21' AS Date), 4, N'CANCELADA', N'false', 2, 3, CAST(126.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (1008, CAST(N'2020-11-21' AS Date), 4, N'ATENDIDO', N'true', 2, 4, CAST(138.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (1009, CAST(N'2020-11-21' AS Date), 3, N'ATENDIDO', N'false', 1004, 4, CAST(58.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (1010, CAST(N'2020-11-28' AS Date), 3, N'ATENDIDO', N'false', 1004, 3, CAST(50.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2009, CAST(N'2020-11-20' AS Date), 2, N'ATENDIDO', N'true', 2004, 4, CAST(69.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2010, CAST(N'2020-11-17' AS Date), 1, N'CANCELADA', N'false', 2004, 4, CAST(21.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2011, CAST(N'2020-11-27' AS Date), 1, N'ATENDIDO', N'false', 2004, 4, CAST(37.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2012, CAST(N'2020-11-28' AS Date), 1, N'CANCELADA', N'false', 2004, 4, CAST(145.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2013, CAST(N'2020-11-28' AS Date), 2, N'ATENDIDO', N'true', 2, 3, CAST(149.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2014, CAST(N'2020-11-30' AS Date), 3, N'ATENDIDO', N'false', 2, 3, CAST(67.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2015, CAST(N'2020-11-26' AS Date), 2, N'CANCELADA', N'false', 2, 4, CAST(54.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2016, CAST(N'2020-11-28' AS Date), 4, N'ATENDIDO', N'true', 2, 4, CAST(85.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2017, CAST(N'2020-11-29' AS Date), 4, N'PENDIENTE', N'false', 2, 4, CAST(94.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2018, CAST(N'2020-11-26' AS Date), 3, N'PENDIENTE', N'false', 2005, 4, CAST(81.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2019, CAST(N'2020-12-12' AS Date), 3, N'ATENDIDO', N'true', 2006, 4, CAST(95.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2020, CAST(N'2020-12-04' AS Date), 2, N'PENDIENTE', N'false', 2006, 3, CAST(119.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2021, CAST(N'2020-12-04' AS Date), 1, N'CANCELADA', N'false', 2017, 3, CAST(108.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2022, CAST(N'2020-12-05' AS Date), 1, N'ATENDIDO', N'true', 2017, 4, CAST(83.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2023, CAST(N'2020-12-09' AS Date), 3, N'ATENDIDO', N'true', 2018, 3, CAST(90.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2024, CAST(N'2020-12-05' AS Date), 3, N'CANCELADA', N'false', 2018, 4, CAST(51.0000 AS Decimal(8, 4)))
INSERT [dbo].[Cita] ([idCita], [fecha], [idHorario], [estado], [pago], [idCliente], [idDoctor], [monto]) VALUES (2025, CAST(N'2020-11-27' AS Date), 4, N'PENDIENTE', N'false', 2018, 4, CAST(81.0000 AS Decimal(8, 4)))
SET IDENTITY_INSERT [dbo].[Cita] OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([idCliente], [codigo], [nombres], [apellidos], [dni], [fechaNac], [correo], [telefono], [usuario], [passwd]) VALUES (1, N'C  - cesar', N'Cesar', N'Sarmiento', N'78410256', CAST(N'1992-11-08' AS Date), N'cesars@hotmail.com', N'976854214', N'cesar', N'ky0MGWs71WJ/g1qG1VjHXZBKmXsOeQslnbHr2WoMLG0=')
INSERT [dbo].[Cliente] ([idCliente], [codigo], [nombres], [apellidos], [dni], [fechaNac], [correo], [telefono], [usuario], [passwd]) VALUES (2, N'C - pedro', N'Pedro', N'Rivera', N'55524111', CAST(N'2020-11-09' AS Date), N'pedro@hotmail.com', N'968754125', N'pedro', N'7hkAUWTMmaV5ahCVq1WMQtXFxTSinoihdhESHKlutaQ=')
INSERT [dbo].[Cliente] ([idCliente], [codigo], [nombres], [apellidos], [dni], [fechaNac], [correo], [telefono], [usuario], [passwd]) VALUES (1002, N'C - cris', N'Cristina', N'Mantilla', N'45789632', CAST(N'1992-06-18' AS Date), N'cristina@hotmail.com', N'976584213', N'cris', N'ky0MGWs71WJ/g1qG1VjHXZBKmXsOeQslnbHr2WoMLG0=')
INSERT [dbo].[Cliente] ([idCliente], [codigo], [nombres], [apellidos], [dni], [fechaNac], [correo], [telefono], [usuario], [passwd]) VALUES (1004, N'C - manuel', N'Manuel', N'Briones', N'78542879', CAST(N'1992-06-18' AS Date), N'manuel@hotmail.com', N'976584179', N'manuel', N'T998vrCEtwvMTkHP0xRXPj/MbJrmVr1q2OpO+ZG7LPk=')
INSERT [dbo].[Cliente] ([idCliente], [codigo], [nombres], [apellidos], [dni], [fechaNac], [correo], [telefono], [usuario], [passwd]) VALUES (2004, N'C - angela', N'angela', N'guerrero', N'96742354', CAST(N'2008-02-13' AS Date), N'angela@hotmail.com', N'976854210', N'angela', N'lESHvXxcw8AHgV/xnvILxhv0tKtd94bg1BIdxfdpSq0=')
INSERT [dbo].[Cliente] ([idCliente], [codigo], [nombres], [apellidos], [dni], [fechaNac], [correo], [telefono], [usuario], [passwd]) VALUES (2006, N'C - josue', N'Josué', N'Rivera', N'73109041', CAST(N'1998-08-26' AS Date), N'joshu2698@hotmail.com', N'976227852', N'josue', N'oWP7Ao9tKmwQJNpAE/e6ndwsfBgKRAL6qunEFurE+FA=')
INSERT [dbo].[Cliente] ([idCliente], [codigo], [nombres], [apellidos], [dni], [fechaNac], [correo], [telefono], [usuario], [passwd]) VALUES (2007, N'C - mike', N'Mike', N'Estrada', N'43457819', CAST(N'1988-05-26' AS Date), N'mike@hotmail.com', N'976548721', N'mike', N'/asIcMUqihemwZgNSQsNSN+//nwOsTQqKiQRPkI1TI8=')
INSERT [dbo].[Cliente] ([idCliente], [codigo], [nombres], [apellidos], [dni], [fechaNac], [correo], [telefono], [usuario], [passwd]) VALUES (2014, N'C - miguel', N'Miguel', N'Aliaga', N'78542369', CAST(N'1998-05-02' AS Date), N'miguel@hotmail.com', N'976854210', N'miguel', N'0NgL4nv+xwtOXJWwyLBY0qnuObi4gQiPerrHV0tXw8U=')
INSERT [dbo].[Cliente] ([idCliente], [codigo], [nombres], [apellidos], [dni], [fechaNac], [correo], [telefono], [usuario], [passwd]) VALUES (2016, N'C - francisco', N'Francisco', N'Vasquez', N'25784163', CAST(N'1998-05-12' AS Date), N'anthony@hotmail.com', N'976521478', N'francisco', N'ug/9pRWXZq3jdImnOm2ZXtcy5kdTrH0b8kvsyHSyOtw=')
INSERT [dbo].[Cliente] ([idCliente], [codigo], [nombres], [apellidos], [dni], [fechaNac], [correo], [telefono], [usuario], [passwd]) VALUES (2017, N'C - alejandro', N'Alejandro', N'Carlo', N'45789564', CAST(N'1998-05-14' AS Date), N'alejandro@hotmail.com', N'976584123', N'alejandro', N'Zer8Y/INJV3NuIDUlhGMES3TH/c1GGJkWbcc3IZseAc=')
INSERT [dbo].[Cliente] ([idCliente], [codigo], [nombres], [apellidos], [dni], [fechaNac], [correo], [telefono], [usuario], [passwd]) VALUES (2018, N'C - fiorella', N'Fiorella', N'Guido', N'87564645', CAST(N'1998-05-12' AS Date), N'fiorella@hotmail.com', N'976598741', N'fiorella', N'XzeAeeIJZDgzLGXMm7QxNanFDfeIl9Sd5OFAqMdzKfg=')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Doctor] ON 

INSERT [dbo].[Doctor] ([idDoctor], [nombres], [apellidos], [codigoCol], [casaEstudio], [titulo], [dni], [correo], [telefono], [usuario], [passwd]) VALUES (3, N'Julio', N'Barros', N'157842', N'Zeta', N'Cirujano Dentista', N'78524179', N'juliob@hotmail.com', N'976584123', N'julio', N'+FL3OHvKZbj7MsZEaVi4Jm3gnlW6rZ2N3GWk91o6Zes=')
INSERT [dbo].[Doctor] ([idDoctor], [nombres], [apellidos], [codigoCol], [casaEstudio], [titulo], [dni], [correo], [telefono], [usuario], [passwd]) VALUES (4, N'Moises', N'Cabrera', N'257413', N'Mosho', N'Cirujano Dentista', N'48785689', N'moises@hotmail.com', N'987526471', N'moises', N'vMPxvbHQA2QipsUPbcPk9XgF5Tilt+dVJ0NRjdAX8wU=')
SET IDENTITY_INSERT [dbo].[Doctor] OFF
GO
SET IDENTITY_INSERT [dbo].[Historia] ON 

INSERT [dbo].[Historia] ([idHistoria], [idCita], [observacion], [motivo], [fecha], [descripcion], [examenes], [diagnostico], [tratamiento]) VALUES (1, 1006, N'inflamacion', N'inflamacion', CAST(N'2020-11-14' AS Date), N'inflimacion', N'inflamacion', N'inflamacion', N'pastilla')
INSERT [dbo].[Historia] ([idHistoria], [idCita], [observacion], [motivo], [fecha], [descripcion], [examenes], [diagnostico], [tratamiento]) VALUES (2, 1010, N'dolor', N'dolor', CAST(N'2020-11-14' AS Date), N'dolor', N'tres', N'dolor', N'ampolla')
INSERT [dbo].[Historia] ([idHistoria], [idCita], [observacion], [motivo], [fecha], [descripcion], [examenes], [diagnostico], [tratamiento]) VALUES (1002, 1009, N'dolor', N'dolor', CAST(N'2020-11-15' AS Date), N'dolor', N'tres', N'dolor', N'ampolla')
INSERT [dbo].[Historia] ([idHistoria], [idCita], [observacion], [motivo], [fecha], [descripcion], [examenes], [diagnostico], [tratamiento]) VALUES (1003, 1008, N'dolor', N'inflamacion', CAST(N'2020-11-15' AS Date), N'inflimacion', N'tres', N'dolor', N'pastilla')
INSERT [dbo].[Historia] ([idHistoria], [idCita], [observacion], [motivo], [fecha], [descripcion], [examenes], [diagnostico], [tratamiento]) VALUES (1004, 2013, NULL, NULL, CAST(N'2020-11-16' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[Historia] ([idHistoria], [idCita], [observacion], [motivo], [fecha], [descripcion], [examenes], [diagnostico], [tratamiento]) VALUES (1005, 2014, N'dolor', N'dolor', CAST(N'2020-11-16' AS Date), N'inflimacion', N'tres', N'dolor', N'ampolla')
INSERT [dbo].[Historia] ([idHistoria], [idCita], [observacion], [motivo], [fecha], [descripcion], [examenes], [diagnostico], [tratamiento]) VALUES (1006, 2016, N'dolor', N'inflamacion', CAST(N'2020-11-22' AS Date), N'dolor', N'tres', N'inflamacion', N'ampolla')
INSERT [dbo].[Historia] ([idHistoria], [idCita], [observacion], [motivo], [fecha], [descripcion], [examenes], [diagnostico], [tratamiento]) VALUES (1007, 2009, N'inflamacion', N'dolor', CAST(N'2020-11-22' AS Date), N'dolor', N'tres', N'dolor', N'ampolla')
INSERT [dbo].[Historia] ([idHistoria], [idCita], [observacion], [motivo], [fecha], [descripcion], [examenes], [diagnostico], [tratamiento]) VALUES (1008, 2011, N'dolor', N'inflamacion', CAST(N'2020-11-25' AS Date), N'dolor', N'inflamacion', N'dolor', N'ampolla')
INSERT [dbo].[Historia] ([idHistoria], [idCita], [observacion], [motivo], [fecha], [descripcion], [examenes], [diagnostico], [tratamiento]) VALUES (2008, 2019, N'El paciente presenta un fuerte dolor en muela 12', N'Inflamación de la parte trasera bucal', CAST(N'2020-11-26' AS Date), N'Picadura en 3 muelas', N'Necesita 4 exámenes y 3 radiografías', N'Necesita curación de las muelas antes de que infecte a las otras', N'Necesitas las siguientes pastillas')
INSERT [dbo].[Historia] ([idHistoria], [idCita], [observacion], [motivo], [fecha], [descripcion], [examenes], [diagnostico], [tratamiento]) VALUES (2009, 2022, N'dolor', N'dolor', CAST(N'2020-11-26' AS Date), N'dolor', N'dolor', N'dolor', N'ampolla')
INSERT [dbo].[Historia] ([idHistoria], [idCita], [observacion], [motivo], [fecha], [descripcion], [examenes], [diagnostico], [tratamiento]) VALUES (2010, 2023, N'dolor', N'dolor', CAST(N'2020-11-26' AS Date), N'dolor', N'dolor', N'dolor', N'ampolla')
SET IDENTITY_INSERT [dbo].[Historia] OFF
GO
SET IDENTITY_INSERT [dbo].[Horario] ON 

INSERT [dbo].[Horario] ([idHorario], [horaInicio], [horaFin]) VALUES (1, N'08:00 AM', N'10:00 AM')
INSERT [dbo].[Horario] ([idHorario], [horaInicio], [horaFin]) VALUES (2, N'10:00 AM', N'12:00 PM')
INSERT [dbo].[Horario] ([idHorario], [horaInicio], [horaFin]) VALUES (3, N'03:00 PM', N'05:00 PM')
INSERT [dbo].[Horario] ([idHorario], [horaInicio], [horaFin]) VALUES (4, N'05:00 PM', N'07:00 PM')
SET IDENTITY_INSERT [dbo].[Horario] OFF
GO
USE [master]
GO
ALTER DATABASE [DentoWeb] SET  READ_WRITE 
GO
