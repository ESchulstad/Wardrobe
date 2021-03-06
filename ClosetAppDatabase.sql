USE [master]
GO
/****** Object:  Database [ClosetApp]    Script Date: 10/22/2016 7:01:41 PM ******/
CREATE DATABASE [ClosetApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ClosetApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ClosetApp.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ClosetApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ClosetApp_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ClosetApp] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClosetApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClosetApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ClosetApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ClosetApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ClosetApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ClosetApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [ClosetApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ClosetApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ClosetApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ClosetApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ClosetApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ClosetApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ClosetApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ClosetApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ClosetApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ClosetApp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ClosetApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ClosetApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ClosetApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ClosetApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ClosetApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ClosetApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ClosetApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ClosetApp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ClosetApp] SET  MULTI_USER 
GO
ALTER DATABASE [ClosetApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ClosetApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ClosetApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ClosetApp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ClosetApp] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ClosetApp]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 10/22/2016 7:01:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[SeasonID] [int] NULL,
	[OccasionID] [int] NULL,
	[Photo] [nvarchar](75) NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 10/22/2016 7:01:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[SeasonID] [int] NULL,
	[OccasionID] [int] NULL,
	[Photo] [nvarchar](75) NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occasion]    Script Date: 10/22/2016 7:01:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occasion](
	[OccasionID] [int] IDENTITY(1,1) NOT NULL,
	[OccasionName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Occasion] PRIMARY KEY CLUSTERED 
(
	[OccasionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 10/22/2016 7:01:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NULL,
	[AccessoryID] [int] NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Season]    Script Date: 10/22/2016 7:01:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Season](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[SeasonName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 10/22/2016 7:01:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[SeasonID] [int] NULL,
	[OccasionID] [int] NULL,
	[Photo] [nvarchar](75) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 10/22/2016 7:01:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[SeasonID] [int] NULL,
	[OccasionID] [int] NULL,
	[Photo] [nvarchar](75) NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (1, N'Round Sunglasses', N'Sunglasses', N'Black', 5, 6, N'sunglasses.jpg')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (2, N'Stud Earrings', N'Earrings', N'White', 5, 6, N'studearrings.jpg')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (3, N'Leaf Necklace', N'Necklace', N'Gold', 5, 6, N'leafnecklace.jpg')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (4, N'Floppy Brown Hat', N'Hat', N'Brown', 1, 1, N'brownhat.jpg')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (5, N'Black Beanie', N'Hat', N'Black', 2, 6, N'beanie.jpg')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (6, N'Flower Scarf', N'Scarf', N'Blue', 5, 6, N'scarf.jpg')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (1, N'Casual Jeans', N'Pants', N'Blue', 5, 6, N'jeans.jpg')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (2, N'Leggings', N'Comfy Pants', N'Black', 5, 6, N'leggings.jpg')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (3, N'Sequined Skirt', N'Mini Skirt', N'White', 5, 2, N'sequinedskirt.jpg')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (4, N'Pencil Skirt', N'Work Skirt', N'Maroon', 5, 4, N'pencilskirt.jpg')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Occasion] ON 

INSERT [dbo].[Occasion] ([OccasionID], [OccasionName]) VALUES (1, N'Casual Day')
INSERT [dbo].[Occasion] ([OccasionID], [OccasionName]) VALUES (2, N'Night')
INSERT [dbo].[Occasion] ([OccasionID], [OccasionName]) VALUES (3, N'Formal')
INSERT [dbo].[Occasion] ([OccasionID], [OccasionName]) VALUES (4, N'Work')
INSERT [dbo].[Occasion] ([OccasionID], [OccasionName]) VALUES (5, N'Work Out')
INSERT [dbo].[Occasion] ([OccasionID], [OccasionName]) VALUES (6, N'Other')
SET IDENTITY_INSERT [dbo].[Occasion] OFF
SET IDENTITY_INSERT [dbo].[Outfits] ON 

INSERT [dbo].[Outfits] ([OutfitID], [Name], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (1, N'Outfit For Monday', 2, 1, 3, 1)
INSERT [dbo].[Outfits] ([OutfitID], [Name], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (2, N'Relaxing At Home', 4, 2, 4, 5)
INSERT [dbo].[Outfits] ([OutfitID], [Name], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (3, N'Tuesday Work Outfit', 3, 4, 2, 3)
SET IDENTITY_INSERT [dbo].[Outfits] OFF
SET IDENTITY_INSERT [dbo].[Season] ON 

INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (1, N'Fall')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (2, N'Winter')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (3, N'Spring')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (4, N'Summer')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (5, N'Multiple')
SET IDENTITY_INSERT [dbo].[Season] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (1, N'Gold Heels', N'High Heels', N'Gold', 4, 2, N'goldheels.jpg')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (2, N'Work Heels', N'High Heels', N'Black', 5, 4, N'workheels.jpg')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (3, N'Brown Boots', N'Boots', N'Brown', 5, 1, N'boots.jpg')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (4, N'Black Sandals', N'Sandals', N'Black', 4, 1, N'sandals.jpg')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (1, N'Sequined Top', N'Cropped Tank Top', N'Black', 4, 2, N'sequinedtop.jpg')
INSERT [dbo].[Tops] ([TopID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (2, N'Graphic-T', N'T-Shirt', N'White', 5, 1, N'tshirt.jpg')
INSERT [dbo].[Tops] ([TopID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (3, N'Dressy Blouse', N'Button-up Blouse', N'Beige', 5, 4, N'buttonuptop.jpg')
INSERT [dbo].[Tops] ([TopID], [Name], [Type], [Color], [SeasonID], [OccasionID], [Photo]) VALUES (4, N'Cozy Sweater', N'Long-Sleeved Sweater', N'Cream', 5, 1, N'sweater.jpg')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Occasion]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Season]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Occasion]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Season]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Occasion]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Season]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Occasion]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Season]
GO
USE [master]
GO
ALTER DATABASE [ClosetApp] SET  READ_WRITE 
GO
