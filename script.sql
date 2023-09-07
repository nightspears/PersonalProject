USE [master]
GO
/****** Object:  Database [PRJ_project]    Script Date: 3/23/2023 9:50:47 AM ******/
CREATE DATABASE [PRJ_project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ_project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\PRJ_project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ_project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\PRJ_project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ_project] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ_project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ_project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ_project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ_project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ_project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ_project] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ_project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ_project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ_project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ_project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ_project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ_project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ_project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ_project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ_project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ_project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ_project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ_project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ_project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ_project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ_project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ_project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ_project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ_project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ_project] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ_project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ_project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ_project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ_project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ_project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ_project] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ_project] SET QUERY_STORE = OFF
GO
USE [PRJ_project]
GO
/****** Object:  Table [dbo].[Acc]    Script Date: 3/23/2023 9:50:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acc](
	[UserName] [nchar](10) NOT NULL,
	[Password] [nchar](10) NOT NULL,
	[Doe] [date] NOT NULL,
	[role] [nchar](10) NULL,
 CONSTRAINT [PK_Acc] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 3/23/2023 9:50:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[UserName] [nchar](10) NOT NULL,
	[world_id] [nchar](10) NULL,
	[mod_id] [nchar](10) NULL,
	[content] [nvarchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mod]    Script Date: 3/23/2023 9:50:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mod](
	[mod_id] [nchar](10) NOT NULL,
	[type_id] [nchar](10) NOT NULL,
	[mod_detail] [nvarchar](250) NOT NULL,
	[imagine] [nvarchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[Mod_name] [varchar](255) NULL,
 CONSTRAINT [PK_Mod] PRIMARY KEY CLUSTERED 
(
	[mod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modpack]    Script Date: 3/23/2023 9:50:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modpack](
	[modpack_id] [nchar](10) NOT NULL,
	[imagine] [nvarchar](50) NOT NULL,
	[modpack_detail] [nvarchar](250) NOT NULL,
	[date] [date] NOT NULL,
	[Modpack_name] [varchar](255) NULL,
 CONSTRAINT [PK_Modpack] PRIMARY KEY CLUSTERED 
(
	[modpack_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resource]    Script Date: 3/23/2023 9:50:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resource](
	[Resource_id] [nchar](10) NOT NULL,
	[imagine] [nvarchar](50) NOT NULL,
	[Resource_detail] [nvarchar](250) NOT NULL,
	[date] [date] NOT NULL,
	[Resource_name] [varchar](255) NULL,
 CONSTRAINT [PK_Resource] PRIMARY KEY CLUSTERED 
(
	[Resource_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 3/23/2023 9:50:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[type_id] [nchar](10) NOT NULL,
	[type_name] [nchar](50) NOT NULL,
	[type_detail] [nvarchar](250) NOT NULL,
	[imagine] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[version]    Script Date: 3/23/2023 9:50:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[version](
	[version_name] [nchar](10) NOT NULL,
	[mod_id] [nchar](10) NOT NULL,
	[Resource_id] [nchar](10) NOT NULL,
	[modpack_id] [nchar](10) NOT NULL,
 CONSTRAINT [PK_version] PRIMARY KEY CLUSTERED 
(
	[version_name] ASC,
	[mod_id] ASC,
	[Resource_id] ASC,
	[modpack_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[world]    Script Date: 3/23/2023 9:50:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[world](
	[world_id] [nchar](10) NOT NULL,
	[imagine] [nvarchar](50) NULL,
	[world_details] [nvarchar](250) NULL,
	[date] [date] NOT NULL,
	[world_name] [varchar](255) NULL,
 CONSTRAINT [PK_world] PRIMARY KEY CLUSTERED 
(
	[world_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Acc] ([UserName], [Password], [Doe], [role]) VALUES (N'12        ', N'21        ', CAST(N'2023-03-22' AS Date), N'User      ')
GO
INSERT [dbo].[Acc] ([UserName], [Password], [Doe], [role]) VALUES (N'123       ', N'1235      ', CAST(N'2023-03-22' AS Date), N'User      ')
GO
INSERT [dbo].[Acc] ([UserName], [Password], [Doe], [role]) VALUES (N'1234      ', N'123       ', CAST(N'2023-03-22' AS Date), N'User      ')
GO
INSERT [dbo].[Acc] ([UserName], [Password], [Doe], [role]) VALUES (N'12345     ', N'123456    ', CAST(N'2023-03-23' AS Date), N'User      ')
GO
INSERT [dbo].[Acc] ([UserName], [Password], [Doe], [role]) VALUES (N'Admin     ', N'123       ', CAST(N'2023-03-02' AS Date), N'Admin     ')
GO
INSERT [dbo].[Acc] ([UserName], [Password], [Doe], [role]) VALUES (N'An        ', N'19022003  ', CAST(N'2023-02-11' AS Date), N'User      ')
GO
INSERT [dbo].[Acc] ([UserName], [Password], [Doe], [role]) VALUES (N'An2       ', N'1222      ', CAST(N'2023-03-22' AS Date), N'User      ')
GO
INSERT [dbo].[Acc] ([UserName], [Password], [Doe], [role]) VALUES (N'An3       ', N'123       ', CAST(N'2023-03-23' AS Date), N'User      ')
GO
INSERT [dbo].[Acc] ([UserName], [Password], [Doe], [role]) VALUES (N'hero      ', N'12        ', CAST(N'2023-03-22' AS Date), N'User      ')
GO
INSERT [dbo].[Acc] ([UserName], [Password], [Doe], [role]) VALUES (N'qq        ', N'123       ', CAST(N'2023-03-22' AS Date), N'User      ')
GO
INSERT [dbo].[Acc] ([UserName], [Password], [Doe], [role]) VALUES (N'qqqq      ', N'1234      ', CAST(N'2023-03-23' AS Date), N'User      ')
GO
INSERT [dbo].[Acc] ([UserName], [Password], [Doe], [role]) VALUES (N'qqqqq     ', N'1234567   ', CAST(N'2023-03-23' AS Date), N'User      ')
GO
INSERT [dbo].[Comment] ([UserName], [world_id], [mod_id], [content]) VALUES (N'An        ', N'1         ', N'1         ', N'Amazing home page and website')
GO
INSERT [dbo].[Comment] ([UserName], [world_id], [mod_id], [content]) VALUES (N'qq        ', NULL, N'1         ', N'can be that bad to try\')
GO
INSERT [dbo].[Comment] ([UserName], [world_id], [mod_id], [content]) VALUES (N'qqqqq     ', NULL, N'0         ', N'null')
GO
INSERT [dbo].[Comment] ([UserName], [world_id], [mod_id], [content]) VALUES (N'qq        ', NULL, N'20        ', N'null')
GO
INSERT [dbo].[Comment] ([UserName], [world_id], [mod_id], [content]) VALUES (N'qq        ', NULL, N'0         ', N'12345247524572457')
GO
INSERT [dbo].[Comment] ([UserName], [world_id], [mod_id], [content]) VALUES (N'qq        ', NULL, N'0         ', N'12345247524572457')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'0         ', N'0         ', N'Mob Grinding Utils is a mod designed to encourage players to create new ways for farming mobs for drops and experience. Contained in the mod is a fully modular system for players to explore and use to get the most out of their mob farms.', N'img/modimg/mod1.png', CAST(N'2023-03-28' AS Date), N'Mob Grinding Utils')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'1         ', N'0         ', N'This is an addon mod for Refined Storage.
This mod will have all features that belong in an addon mod and not in the core Refined Storage mod.
Currently, Refined Storage Addons only adds the "Wireless Crafting Grid"', N'img/modimg/mod2.png', CAST(N'2023-07-30' AS Date), N'Refined Storage Addons')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'10        ', N'3         ', N'Tiny mod that tries to eliminate those kind of situations when "I wanted to hit the mob, not the grass". Now you can hit mobs behind the grass!', N'img/modimg/mod12.png', CAST(N'2022-04-03' AS Date), N'SwingThroughGrass
')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'11        ', N'3         ', N'Elytra Slot is a mod that uses Curios API/Trinkets API to add an elytra slot to the player inventory and allows the elytra to be placed into this slot. While the elytra are in this slot, it will grant the  flight', N'img/modimg/mod13.png', CAST(N'2019-03-19' AS Date), N'Elytra Slot')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'12        ', N'4         ', N'Inspirations is a mod for Minecraft adding various smaller features to the game. This mod contains features such as interactive bookshelves, climbable ropes, carpets fitting stairs, and new types of Redstone inputs', N'img/modimg/mod14.png', CAST(N'2022-11-07' AS Date), N'Inspirations')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'13        ', N'4         ', N'
Place your Factory Manager in the world, and connect it to your inventories using Inventory Cables', N'img/modimg/mod15.png', CAST(N'2023-01-13' AS Date), N'Super Factory Manager')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'14        ', N'4         ', N'Alternate Current is an efficient and non-locational redstone dust implementation. Its main focus lies in reducing the lag caused by redstone dust, by optimizing the power calculations and reducing the number of shape and block updates emitted', N'img/modimg/mod16.png', CAST(N'2023-02-21' AS Date), N'Alternate Current')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'15        ', N'5         ', N'Standalone mod providing the HUD features previously included in AppleCore (note: AppleSkin does not require AppleCore)', N'img/modimg/mod17.png', CAST(N'2022-12-13' AS Date), N'AppleSkin')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'16        ', N'5         ', N'Using a simple cooking system and a few familiar ingredients, you''ll be able to prepare a wide variety of hearty meals: from sandwiches to salads and stews, from beautiful desserts to mouth-watering feasts', N'img/modimg/mod18.png', CAST(N'2022-07-12' AS Date), N'Farmer''s Delight
')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'17        ', N'5         ', N'Buzzier Bees expands upon the 1.15 "Buzzy Bees" update adding in new building blocks, items, flowers, and much more!', N'img/modimg/mod19.png', CAST(N'2022-08-02' AS Date), N'Buzzier Bees')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'18        ', N'3         ', N'Flying around in the end with your elytra and suddenly your elytra breaks? Playing SkyBlock and falling while building
Craft a Totem of Void Undying put it in your offhand and you will be teleported back to the surface when you fall into the void.', N'img/modimg/mod6.png', CAST(N'2023-01-18' AS Date), N'
Void Totem')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'19        ', N'2         ', N'Adds a search bar to the Key-Bindings menu within a single Compact Machine block create connections to the outside faces of your Compact Machine blocks.', N'img/modimg/mod20.png', CAST(N'2023-03-21' AS Date), N'Controlling')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'2         ', N'0         ', N'These are the main component of this mod and they allow you to build complicated machine contraptions and hide them within a single Compact Machine block create connections to the outside faces of your Compact Machine blocks.', N'img/modimg/mod3.png', CAST(N'2022-06-30' AS Date), N'Compact Machines')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'20        ', N'0         ', N'11111111111111111111111111111111111111111111111111111111111', N'img/modimg/mod21.png', CAST(N'2023-03-21' AS Date), N'1111111')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'3         ', N'1         ', N'Imagine stepping through a portal into a twilight realm. Breathtaking vistas and amazing discoveries await you around every corner. But beware! Not all denizens of the forest respond to your intrusion lightly.', N'img/modimg/mod4.png', CAST(N'2023-03-03' AS Date), N'The Twilight Forest')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'4         ', N'1         ', N'This mod adds waystone blocks that the player can return to.Warp Scroll,rechargeable Warp Stone. Waystones can be made globally available for all players and a configurable inventory button can be set up to allow warping without items.', N'img/modimg/mod5.png', CAST(N'2022-01-30' AS Date), N'Waystones')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'5         ', N'1         ', N'Apotheosis is a content mod that allows you to become stronger than ever before, while trying to stay true to vanilla mechanics at heart. Every feature is carefully put together to feel cohesive and complete.', N'img/modimg/mod7.png', CAST(N'2022-03-09' AS Date), N'Apotheosis')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'6         ', N'2         ', N'Ars Nouveau is a magic mod inspired by Ars Magicka that allows players to craft their own spells, create magical artifacts, perform rituals, and much more. ', N'img/modimg/mod8.png', CAST(N'2022-08-13' AS Date), N'Ars Nouveau
')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'7         ', N'2         ', N'Enchantment Descriptions is a light weight client-side mod that adds descriptions of enchantments to the tool tip of enchanted books. This mod supports all vanilla enchantments in over 13 languages! Most modded enchantments are also supported.', N'img/modimg/mod9.png', CAST(N'2023-03-03' AS Date), N'Enchantment Descriptions')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'8         ', N'2         ', N'Ice and Fire is a mod created by both Raptorfarian and Alexthe666, which hopes to add dragons in a proper way. Currently, Dragons have two types: Ice and Fire.
', N'img/modimg/mod10.png', CAST(N'2023-01-22' AS Date), N'Ice and Fire: Dragons')
GO
INSERT [dbo].[Mod] ([mod_id], [type_id], [mod_detail], [imagine], [date], [Mod_name]) VALUES (N'9         ', N'3         ', N'With a Construction Wand, you can place multiple blocks (up to 1024) at once, extending your build on the side you''re facing. If that''s not enough: you can upgrade your wand with additional cores', N'img/modimg/mod11.png', CAST(N'2023-02-16' AS Date), N'Construction Wand')
GO
INSERT [dbo].[Modpack] ([modpack_id], [imagine], [modpack_detail], [date], [Modpack_name]) VALUES (N'1         ', N'img/Modpack/modpack1.png', N'All the Mods started as a private pack for just a few friends of mine that turned into something others wanted to play! It has all the basics that most other packs include but with a nice mix of some of the newer or lesser-known mods as well. ', CAST(N'2023-02-28' AS Date), N'All the 8 mods')
GO
INSERT [dbo].[Modpack] ([modpack_id], [imagine], [modpack_detail], [date], [Modpack_name]) VALUES (N'2         ', N'img/Modpack/modpack2.png', N'Make minecraft look more real', CAST(N'2023-03-15' AS Date), N'RLcraft')
GO
INSERT [dbo].[Modpack] ([modpack_id], [imagine], [modpack_detail], [date], [Modpack_name]) VALUES (N'3         ', N'img/Modpack/modpack3.png', N'Make minecraft better', CAST(N'2023-03-14' AS Date), N'BetterMinecarft')
GO
INSERT [dbo].[Resource] ([Resource_id], [imagine], [Resource_detail], [date], [Resource_name]) VALUES (N'1         ', N'img/Resource/resource1.png', N'X-ray pack for all those who need it. Ores and mineral blocks are shamelessly highlighted as shown in the pictures.
Be sure to pick up Opti fine for the extra night vision effect. So that you can see the hidden ores, also turn off smooth lighting.', CAST(N'2022-07-28' AS Date), N'Xray Ultimate
 ')
GO
INSERT [dbo].[Resource] ([Resource_id], [imagine], [Resource_detail], [date], [Resource_name]) VALUES (N'2         ', N'img/Resource/resource2.png', N'This pack aims to resolve that issue by giving every enchanted book a different texture base on their type and their level while keeping an art style that still fits into the base game.', CAST(N'2023-02-18' AS Date), N'xali''s Enchanted Books')
GO
INSERT [dbo].[Resource] ([Resource_id], [imagine], [Resource_detail], [date], [Resource_name]) VALUES (N'3         ', N'img/Resource/resource3.png', N'For mobs not supported by this system, I have created sprites instead. I''ve tried to keep these sprites as close to the artistic style of each mod as I can while making sure they fit in with other icons on the minimap', CAST(N'2022-06-03' AS Date), N'
Xaero''s Minimap')
GO
INSERT [dbo].[Type] ([type_id], [type_name], [type_detail], [imagine]) VALUES (N'0         ', N'Technology                                        ', N'using machine and logical suft', N'img/typesimg/icon2.png')
GO
INSERT [dbo].[Type] ([type_id], [type_name], [type_detail], [imagine]) VALUES (N'1         ', N'Adventure                                         ', N'exploing and finding new things', N'img/typesimg/icon1.png')
GO
INSERT [dbo].[Type] ([type_id], [type_name], [type_detail], [imagine]) VALUES (N'2         ', N'Magick                                            ', N'mithical weapon and spiritual energy', N'img/typesimg/icon3.png')
GO
INSERT [dbo].[Type] ([type_id], [type_name], [type_detail], [imagine]) VALUES (N'3         ', N'Amor                                              ', N'pretty self-explainatory', N'img/typesimg/icon4.png')
GO
INSERT [dbo].[Type] ([type_id], [type_name], [type_detail], [imagine]) VALUES (N'4         ', N'Redstone                                          ', N'using your brain in game is never funnier', N'img/typesimg/icon5.png')
GO
INSERT [dbo].[Type] ([type_id], [type_name], [type_detail], [imagine]) VALUES (N'5         ', N'Food                                              ', N'cooking and eating sutf with your friend', N'img/typesimg/icon6.png')
GO
INSERT [dbo].[version] ([version_name], [mod_id], [Resource_id], [modpack_id]) VALUES (N'1.17      ', N'2         ', N'3         ', N'3         ')
GO
INSERT [dbo].[version] ([version_name], [mod_id], [Resource_id], [modpack_id]) VALUES (N'1.18      ', N'1         ', N'1         ', N'1         ')
GO
INSERT [dbo].[version] ([version_name], [mod_id], [Resource_id], [modpack_id]) VALUES (N'1.19      ', N'8         ', N'2         ', N'2         ')
GO
INSERT [dbo].[world] ([world_id], [imagine], [world_details], [date], [world_name]) VALUES (N'1         ', N'img/world/world1.png', N'World map of Aerynth from Shadowbane imported in to Minecraft. Landmasses only with the exception of a portion of King''s Cross. Appropriate biomes for each continent. ', CAST(N'2015-07-19' AS Date), N'Aerynth')
GO
INSERT [dbo].[world] ([world_id], [imagine], [world_details], [date], [world_name]) VALUES (N'2         ', N'img/world/world2.png', N'OneBlock Reborn is an Adventure map same to IJAMinecraft''s OneBlock Map. The Block is infinite and you pass through different phases based on different biomes. The map is full of adventure.', CAST(N'2023-02-21' AS Date), N'World map of Aerynth from Shadowbane imported in to Minecraft. Landmasses only with the exception of a portion of King''s Cross. Appropriate biomes for each continent. ')
GO
INSERT [dbo].[world] ([world_id], [imagine], [world_details], [date], [world_name]) VALUES (N'3         ', N'img/world/world3.png', N'Skyblock is one of the most famous maps in Minecraft. the original has been updated and now supports all future versions of Minecraft Vanilla.', CAST(N'2023-03-15' AS Date), N'OneBlock Reborn is an Adventure map same to IJAMinecraft''s OneBlock Map. The Block is infinite and you pass through different phases based on different biomes.')
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Acc] FOREIGN KEY([UserName])
REFERENCES [dbo].[Acc] ([UserName])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Acc]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Mod] FOREIGN KEY([mod_id])
REFERENCES [dbo].[Mod] ([mod_id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Mod]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_world] FOREIGN KEY([world_id])
REFERENCES [dbo].[world] ([world_id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_world]
GO
ALTER TABLE [dbo].[Mod]  WITH CHECK ADD  CONSTRAINT [FK_Mod_Type] FOREIGN KEY([type_id])
REFERENCES [dbo].[Type] ([type_id])
GO
ALTER TABLE [dbo].[Mod] CHECK CONSTRAINT [FK_Mod_Type]
GO
ALTER TABLE [dbo].[version]  WITH CHECK ADD  CONSTRAINT [FK_version_Mod] FOREIGN KEY([mod_id])
REFERENCES [dbo].[Mod] ([mod_id])
GO
ALTER TABLE [dbo].[version] CHECK CONSTRAINT [FK_version_Mod]
GO
ALTER TABLE [dbo].[version]  WITH CHECK ADD  CONSTRAINT [FK_version_Modpack] FOREIGN KEY([modpack_id])
REFERENCES [dbo].[Modpack] ([modpack_id])
GO
ALTER TABLE [dbo].[version] CHECK CONSTRAINT [FK_version_Modpack]
GO
ALTER TABLE [dbo].[version]  WITH CHECK ADD  CONSTRAINT [FK_version_Resource] FOREIGN KEY([Resource_id])
REFERENCES [dbo].[Resource] ([Resource_id])
GO
ALTER TABLE [dbo].[version] CHECK CONSTRAINT [FK_version_Resource]
GO
USE [master]
GO
ALTER DATABASE [PRJ_project] SET  READ_WRITE 
GO
