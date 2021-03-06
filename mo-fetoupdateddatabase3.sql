USE [master]
GO
/****** Object:  Database [aspnet-SanyeeIdentity6]    Script Date: 03/06/2019 06:54:20 ص ******/
CREATE DATABASE [aspnet-SanyeeIdentity6]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aspnet-SanyeeIdentity6', FILENAME = N'D:\aspnet-SanyeeIdentity6.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aspnet-SanyeeIdentity6_log', FILENAME = N'D:\aspnet-SanyeeIdentity6_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aspnet-SanyeeIdentity6].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET ARITHABORT OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET  DISABLE_BROKER 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET  MULTI_USER 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'aspnet-SanyeeIdentity6', N'ON'
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET QUERY_STORE = OFF
GO
USE [aspnet-SanyeeIdentity6]
GO
/****** Object:  Table [dbo].[Requests]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [nvarchar](128) NOT NULL,
	[ScedualId] [int] NOT NULL,
	[RequestDateTime] [datetime] NOT NULL,
	[Done] [bit] NOT NULL,
	[AddressId] [int] NULL,
 CONSTRAINT [PK_Requests] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[AddressId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdressDetails]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdressDetails](
	[AdressId] [int] IDENTITY(1,1) NOT NULL,
	[AreaId] [int] NULL,
	[Text] [nvarchar](100) NULL,
	[Mapid] [int] NULL,
 CONSTRAINT [PK_AdressDetails] PRIMARY KEY CLUSTERED 
(
	[AdressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[AreaId] [int] IDENTITY(1,1) NOT NULL,
	[CityId] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[AreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Citys]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citys](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Citys] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scheduals]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scheduals](
	[ScedualId] [int] IDENTITY(1,1) NOT NULL,
	[WorkerId] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Rate] [int] NULL,
	[PaidRate] [nchar](10) NULL,
	[Price] [decimal](9, 2) NULL,
 CONSTRAINT [PK_Scheduals] PRIMARY KEY CLUSTERED 
(
	[ScedualId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[PriceForMonth] [decimal](9, 2) NULL,
 CONSTRAINT [PK_Types] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Workers]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workers](
	[WorkerId] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NULL,
	[SBIN] [nvarchar](50) NULL,
	[Onwork] [bit] NULL,
	[Available] [bit] NULL,
	[TotalRate] [int] NULL,
	[PhotoBin] [varbinary](max) NULL,
	[TypeId] [int] NULL,
 CONSTRAINT [PK_Workers] PRIMARY KEY CLUSTERED 
(
	[WorkerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SBIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[RequstsInfo]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
 create view [dbo].[RequstsInfo] 
 as
 select t.Name as typename,  u.Name  as workrrname,c.Name as cityid ,ar.Name as AreaName,year(r.RequestDateTime) as [year] ,MONTH(r.RequestDateTime) as [month] , count(r.RequestId) as [NumofReqursts] 
 from Requests as r join Scheduals  as s on s.ScedualId=r.ScedualId
  join Workers as w on w.WorkerId=s.WorkerId join AspNetUsers as u on w.UserID=u.Id 
 join Types as t on t.TypeId=w.TypeId join AdressDetails as ad on ad.AdressId=r.AddressId join Areas as ar on ad.AreaId=ar.AreaId
 join Citys as c on c.CityId=ar.CityId
 group by t.Name , u.Name,c.Name ,ar.Name, YEAR(r.RequestDateTime),MONTH(r.RequestDateTime) 

GO
/****** Object:  View [dbo].[PricesInfo]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[PricesInfo] 
as
select t.TypeId, t.Name as typename, year(s.StartDate) as [year], MONTH(s.StartDate) as [month], sum(s.price) as Prices  
from Scheduals as s join Workers as w on s.WorkerId=w.WorkerId
join [Types] as t on w.TypeId=t.TypeId

  group by t.TypeId ,t.Name  , year(s.StartDate), MONTH(s.StartDate) -- having year(s.StartDate)=2002 and t.Name=''
 
GO
/****** Object:  View [dbo].[NumOfWorekerPerCityArea]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create view [dbo].[NumOfWorekerPerCityArea]
 as
 select c.Name As CityName, a.Name  as AreaName, t.Name As TypeName, COUNT(w.WorkerId)  as NumOFWorkrs  from Workers as w join Types as t on w.TypeId=t.TypeId 
 join AspNetUsers as u on u.Id=w.UserID join AdressDetails as ad on u.AddressId=ad.AdressId
 join Areas as a on ad.AreaId=a.AreaId join Citys as c on a.CityId=c.CityId group by  c.Name, a.Name, t.Name
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Complaint]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complaint](
	[ComplaintId] [int] IDENTITY(1,1) NOT NULL,
	[Workerid] [nvarchar](150) NOT NULL,
	[datetime] [datetime] NOT NULL,
	[Userid] [nvarchar](150) NOT NULL,
	[MessageHead] [nvarchar](150) NULL,
	[Text] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_Complaint] PRIMARY KEY CLUSTERED 
(
	[ComplaintId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[FeebBackId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[Text] [nvarchar](max) NULL,
	[TitLe] [nvarchar](150) NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[FeebBackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maps]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maps](
	[MapId] [int] IDENTITY(1,1) NOT NULL,
	[Longitude] [decimal](18, 10) NOT NULL,
	[Latitude] [decimal](18, 10) NOT NULL,
 CONSTRAINT [PK_Maps] PRIMARY KEY CLUSTERED 
(
	[MapId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 03/06/2019 06:54:21 ص ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 03/06/2019 06:54:21 ص ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 03/06/2019 06:54:21 ص ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 03/06/2019 06:54:21 ص ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 03/06/2019 06:54:21 ص ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 03/06/2019 06:54:21 ص ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [AddressId]
GO
ALTER TABLE [dbo].[AdressDetails]  WITH CHECK ADD  CONSTRAINT [FK_AdressDetails_Areas] FOREIGN KEY([AreaId])
REFERENCES [dbo].[Areas] ([AreaId])
GO
ALTER TABLE [dbo].[AdressDetails] CHECK CONSTRAINT [FK_AdressDetails_Areas]
GO
ALTER TABLE [dbo].[AdressDetails]  WITH CHECK ADD  CONSTRAINT [FK_AdressDetails_Maps] FOREIGN KEY([Mapid])
REFERENCES [dbo].[Maps] ([MapId])
GO
ALTER TABLE [dbo].[AdressDetails] CHECK CONSTRAINT [FK_AdressDetails_Maps]
GO
ALTER TABLE [dbo].[Areas]  WITH CHECK ADD  CONSTRAINT [FK_Areas_Citys] FOREIGN KEY([CityId])
REFERENCES [dbo].[Citys] ([CityId])
GO
ALTER TABLE [dbo].[Areas] CHECK CONSTRAINT [FK_Areas_Citys]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_AdressDetails] FOREIGN KEY([AddressId])
REFERENCES [dbo].[AdressDetails] ([AdressId])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_AdressDetails]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Scheduals] FOREIGN KEY([ScedualId])
REFERENCES [dbo].[Scheduals] ([ScedualId])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Scheduals]
GO
ALTER TABLE [dbo].[Scheduals]  WITH CHECK ADD  CONSTRAINT [FK_Scheduals_Workers] FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Workers] ([WorkerId])
GO
ALTER TABLE [dbo].[Scheduals] CHECK CONSTRAINT [FK_Scheduals_Workers]
GO
ALTER TABLE [dbo].[Workers]  WITH CHECK ADD  CONSTRAINT [FK_Workers_Types] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Types] ([TypeId])
GO
ALTER TABLE [dbo].[Workers] CHECK CONSTRAINT [FK_Workers_Types]
GO
/****** Object:  StoredProcedure [dbo].[RequstsInMonthOfYear]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
   CREATE proc [dbo].[RequstsInMonthOfYear]
  @year int 
  as
 select  year,month,sum(NumofReqursts) as numofrequsts from RequstsInfo 
where YEAR=@year
 group by year,month
GO
/****** Object:  StoredProcedure [dbo].[TypeRequstsInMonthOfYear]    Script Date: 03/06/2019 06:54:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE proc [dbo].[TypeRequstsInMonthOfYear]
  @year int 
  as
 select  typename  ,year,month,sum(NumofReqursts) as numofrequsts from RequstsInfo 
where YEAR=2019
 group by typename ,year,month
GO
USE [master]
GO
ALTER DATABASE [aspnet-SanyeeIdentity6] SET  READ_WRITE 
GO
