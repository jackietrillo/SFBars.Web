/*
	SFBars Install Script
	Date: 01/17/2015
*/

USE [SFBars]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

-- Drop BarTypeBar
IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BarTypeBar_Bar]') AND parent_object_id = OBJECT_ID(N'[dbo].[BarTypeBar]'))
BEGIN
	ALTER TABLE BarTypeBar DROP CONSTRAINT FK_BarTypeBar_Bar
END

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BarTypeBar_BarType]') AND parent_object_id = OBJECT_ID(N'[dbo].[BarTypeBar]'))
BEGIN
	ALTER TABLE BarTypeBar DROP CONSTRAINT FK_BarTypeBar_BarType
END 

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BarTypeBar]') AND type in (N'U'))
BEGIN
	DROP TABLE BarTypeBar
END 

-- Drop Bar 
IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bar_District]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bar]'))
BEGIN
	ALTER TABLE [dbo].[Bar] DROP CONSTRAINT [FK_Bar_District] 
END 

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bar_Street]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bar]'))
BEGIN
	ALTER TABLE [dbo].[Bar]  DROP CONSTRAINT [FK_Bar_Street] 
END

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bar]') AND type in (N'U'))
BEGIN
	DROP TABLE Bar
END

-- Drop Street
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Street]') AND type in (N'U'))
BEGIN
	DROP TABLE Street
END

-- Drop District
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[District]') AND type in (N'U'))
BEGIN
	DROP TABLE District
END 

-- Drop BarType
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BarType]') AND type in (N'U'))
BEGIN
	DROP TABLE [BarType]
END 

CREATE TABLE [dbo].[District](
	[DistrictId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[Street](
	[StreetId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Descrip] [nvarchar](max) NULL,
	[ImageUrl] [varchar](500) NULL,
	[Latitude] [decimal](9, 6) NULL,
	[Longitude] [decimal](9, 6) NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[StreetId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[BarType](
	[BarTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_BarType] PRIMARY KEY CLUSTERED 
(
	[BarTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Bar](
	[BarId] [int] IDENTITY(1,1) NOT NULL,
	[StreetId] [int] NULL,
	[DistrictId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Descrip] [nvarchar](max) NULL,
	[ImageUrl] [varchar](500) NULL,
	[Latitude] [decimal](9, 6) NULL,
	[Longitude] [decimal](9, 6) NULL,
	[Address] [nvarchar](100) NULL,
	[Phone] [varchar](50) NULL,
	[Hours] [varchar](50) NULL,
	[WebsiteUrl] [varchar](max) NULL,
	[CalendarUrl] [varchar](max) NULL,
	[FacebookUrl] [varchar](max) NULL,
	[YelpUrl] [varchar](max) NULL,
 CONSTRAINT [PK_Bar] PRIMARY KEY CLUSTERED 
(
	[BarId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Bar]  WITH CHECK ADD  CONSTRAINT [FK_Bar_District] FOREIGN KEY([DistrictId])REFERENCES [dbo].[District] ([DistrictId])
ALTER TABLE [dbo].[Bar]  WITH CHECK ADD  CONSTRAINT [FK_Bar_Street] FOREIGN KEY([StreetId]) REFERENCES [dbo].[Street] ([StreetId])

CREATE TABLE [dbo].[BarTypeBar](
	[BarTypeBarId] [int] IDENTITY(1,1) NOT NULL,
	[BarId] [int] NOT NULL,
	[BarTypeId] [int] NOT NULL,
 CONSTRAINT [PK_BarTypeBar] PRIMARY KEY CLUSTERED 
(
	[BarTypeBarId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


ALTER TABLE [dbo].[BarTypeBar]  WITH CHECK ADD  CONSTRAINT [FK_BarTypeBar_Bar] FOREIGN KEY([BarId])REFERENCES [dbo].[Bar] ([BarId])
ALTER TABLE [dbo].[BarTypeBar]  WITH CHECK ADD  CONSTRAINT [FK_BarTypeBar_BarType] FOREIGN KEY([BarTypeId]) REFERENCES [dbo].[BarType] ([BarTypeId])

SET ANSI_PADDING OFF
GO


/*
TODO Create TopList Table 
Columns (TopListId, BarId, Rank) 
One (TopList) to many (Bars) relationship 
One Top List has many Bars so BarId is a FK in TopList table, Rank is a number (1..50)

TODO Create Party Table 
Columns (PartyId, Name) 
One (Bar) to many (Parties) relationship
A bar can have many parties so PartyId is a FK in Bars table
NO FK in Party Table
FK PartyId is in Bar Table

*/


