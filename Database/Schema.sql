/*
	SFBars Install Script
	Date: 12/15/2012
*/
USE [SFBars]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SFStreet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SFStreet](
	[SFStreetId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Descrip] [nvarchar](max) NULL,
	[ImageUrl] [varchar](100) NULL,
	[Latitude] [decimal](9, 6) NULL,
	[Longitude] [decimal](9, 6) NULL,
 CONSTRAINT [PK_SFStreet] PRIMARY KEY CLUSTERED 
(
	[SFStreetId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SFBar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SFBar](
	[SFBarId] [int] IDENTITY(1,1) NOT NULL,
	[SFStreetId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Descrip] [nvarchar](max) NULL,
	[ImageUrl] [varchar](100) NULL,
	[Latitude] [decimal](9, 6) NULL,
	[Longitude] [decimal](9, 6) NULL,
	[Address] [nvarchar](100) NULL,
	[Phone] [varchar](50) NULL,
	[Hours] [varchar](50) NULL,
	[WebsiteUrl] [varchar](100) NULL,
	[FacebookUrl] [varchar](100) NULL,
	[YelpUrl] [varchar](100) NULL,
 CONSTRAINT [PK_SFBar] PRIMARY KEY CLUSTERED 
(
	[SFBarId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO

SET ANSI_PADDING OFF
GO

