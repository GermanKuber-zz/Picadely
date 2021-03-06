USE [master]
GO
/****** Object:  Database [Picadely]    Script Date: 22/11/2019 19:39:17 ******/
CREATE DATABASE [Picadely]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Picadely', FILENAME = N'C:\Users\germa\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\Picadely.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Picadely_log', FILENAME = N'C:\Users\germa\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\Picadely.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Picadely] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Picadely].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Picadely] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [Picadely] SET ANSI_NULLS ON 
GO
ALTER DATABASE [Picadely] SET ANSI_PADDING ON 
GO
ALTER DATABASE [Picadely] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [Picadely] SET ARITHABORT ON 
GO
ALTER DATABASE [Picadely] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Picadely] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Picadely] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Picadely] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Picadely] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [Picadely] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [Picadely] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Picadely] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [Picadely] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Picadely] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Picadely] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Picadely] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Picadely] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Picadely] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Picadely] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Picadely] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Picadely] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Picadely] SET RECOVERY FULL 
GO
ALTER DATABASE [Picadely] SET  MULTI_USER 
GO
ALTER DATABASE [Picadely] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Picadely] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Picadely] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Picadely] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Picadely] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Picadely] SET QUERY_STORE = OFF
GO
USE [Picadely]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Picadely]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 22/11/2019 19:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_Id] [int] NOT NULL,
	[Picada_Id] [int] NOT NULL,
	[Digito] [nvarchar](max) NOT NULL,
	[Fecha] [date] NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 22/11/2019 19:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [nvarchar](50) NULL,
	[Fecha] [date] NULL,
	[Email] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](50) NULL,
	[Digito] [nvarchar](max) NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Picadas]    Script Date: 22/11/2019 19:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picadas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Comensales] [int] NULL,
 CONSTRAINT [PK_Picadas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 22/11/2019 19:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Direccion] [nvarchar](50) NULL,
	[Tipo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Verificable]    Script Date: 22/11/2019 19:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Verificable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Verificable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Picadas] ON 
GO
INSERT [dbo].[Picadas] ([Id], [Nombre], [Comensales]) VALUES (1, N'Picada Grande', 10)
GO
INSERT [dbo].[Picadas] ([Id], [Nombre], [Comensales]) VALUES (2, N'Picada Chica', 2)
GO
INSERT [dbo].[Picadas] ([Id], [Nombre], [Comensales]) VALUES (3, N'Picada Mediana', 6)
GO
INSERT [dbo].[Picadas] ([Id], [Nombre], [Comensales]) VALUES (4, N'Quesos', 3)
GO
INSERT [dbo].[Picadas] ([Id], [Nombre], [Comensales]) VALUES (5, N'Quesos Grandes', 12)
GO
SET IDENTITY_INSERT [dbo].[Picadas] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [Email], [Password], [Direccion], [Tipo]) VALUES (1, N'Juan', N'Martinez', N'admin@admin.com', N'827CCB0EEA8A706C4C34A16891F84E7B', NULL, N'Admin')
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [Email], [Password], [Direccion], [Tipo]) VALUES (2, N'Pepe', N'Gonzales', N'cliente@cliente.com', N'827CCB0EEA8A706C4C34A16891F84E7B', N'Riobamba 3120', N'Cliente')
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [Email], [Password], [Direccion], [Tipo]) VALUES (3, N'Roberto', N'Gomez', N'roberto@gomez.com', N'827CCB0EEA8A706C4C34A16891F84E7B', N'Rivadavia 2310', N'Cliente')
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [Email], [Password], [Direccion], [Tipo]) VALUES (4, N'Web', N'Master', N'web@web.com', N'827CCB0EEA8A706C4C34A16891F84E7B', NULL, N'WebMaster')
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Verificable] ON 
GO
INSERT [dbo].[Verificable] ([Id], [Codigo]) VALUES (1, N'22025263FDDFBFCC7B251857B1E1E0C0')
GO
SET IDENTITY_INSERT [dbo].[Verificable] OFF
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Compra] FOREIGN KEY([Usuario_Id])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compra_Compra]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Picadas] FOREIGN KEY([Picada_Id])
REFERENCES [dbo].[Picadas] ([Id])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compra_Picadas]
GO
USE [master]
GO
ALTER DATABASE [Picadely] SET  READ_WRITE 
GO
