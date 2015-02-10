/*
	SFBars Install Script
	Author: Jackie Trillo
	Created Date: 01/17/2015	
*/

USE [SFBars]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

-- Drop BarTypeBar constraints
IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BarTypeBar_Bar]') AND parent_object_id = OBJECT_ID(N'[dbo].[BarTypeBar]'))
BEGIN
	ALTER TABLE BarTypeBar DROP CONSTRAINT FK_BarTypeBar_Bar
END

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BarTypeBar_BarType]') AND parent_object_id = OBJECT_ID(N'[dbo].[BarTypeBar]'))
BEGIN
	ALTER TABLE BarTypeBar DROP CONSTRAINT FK_BarTypeBar_BarType
END 

-- Drop BarTypeBar
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BarTypeBar]') AND type in (N'U'))
BEGIN
	DROP TABLE BarTypeBar
END 

-- Drop TopList constraints
IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TopList_Bar]') AND parent_object_id = OBJECT_ID(N'[dbo].[TopList]'))
BEGIN
	ALTER TABLE TopList DROP CONSTRAINT FK_TopList_Bar
END

-- Drop TopList
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TopList]') AND type in (N'U'))
BEGIN
	DROP TABLE [TopList]
END 

-- Drop Event constraints
IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Event_Bar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Event]'))
BEGIN
	ALTER TABLE [dbo].[Event] DROP CONSTRAINT [FK_Event_Bar] 
END

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Event_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Event]'))
BEGIN
	ALTER TABLE [dbo].[Event] DROP CONSTRAINT [FK_Event_User] 
END

IF EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Event_StatusFlag]') AND parent_object_id = OBJECT_ID(N'[dbo].[Event]'))
BEGIN
	ALTER TABLE [dbo].[Event]  DROP CONSTRAINT [DF_Event_StatusFlag] 
END

IF EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Event_CreateDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Event]'))
BEGIN
	ALTER TABLE [dbo].[Event]  DROP CONSTRAINT [DF_Event_CreateDate] 
END

IF EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Event_LastUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Event]'))
BEGIN
	ALTER TABLE [dbo].[Event]  DROP CONSTRAINT [DF_Event_LastUserId] 
END

-- Drop Event
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Event]') AND type in (N'U'))
BEGIN
	DROP TABLE [Event]
END 

-- Drop Party constraints
IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Party_Bar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Party]'))
BEGIN
	ALTER TABLE [dbo].[Party]  DROP CONSTRAINT [FK_Party_Bar] 
END

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Party_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Party]'))
BEGIN
	ALTER TABLE [dbo].[Party]  DROP CONSTRAINT [FK_Party_User] 
END

IF EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Party_StatusFlag]') AND parent_object_id = OBJECT_ID(N'[dbo].[Party]'))
BEGIN
	ALTER TABLE [dbo].[Party]  DROP CONSTRAINT [DF_Party_StatusFlag] 
END

IF EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Party_CreateDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Party]'))
BEGIN
	ALTER TABLE [dbo].[Party]  DROP CONSTRAINT [DF_Party_CreateDate] 
END

IF EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Party_LastUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Party]'))
BEGIN
	ALTER TABLE [dbo].[Party]  DROP CONSTRAINT [DF_Party_LastUserId] 
END

-- Drop Party
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Party]') AND type in (N'U'))
BEGIN
	DROP TABLE [Party]
END 


-- Drop Bar FK constraints 
IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bar_District]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bar]'))
BEGIN
	ALTER TABLE [dbo].[Bar] DROP CONSTRAINT [FK_Bar_District] 
END 

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bar_Street]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bar]'))
BEGIN
	ALTER TABLE [dbo].[Bar]  DROP CONSTRAINT [FK_Bar_Street] 
END

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bar_Music]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bar]'))
BEGIN
	ALTER TABLE [dbo].[Bar]  DROP CONSTRAINT [FK_Bar_Music] 
END

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bar_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bar]'))
BEGIN
	ALTER TABLE [dbo].[Bar] DROP CONSTRAINT [FK_Bar_User] 
END 

IF EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Bar_StatusFlag]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bar]'))
BEGIN
	ALTER TABLE [dbo].[Bar]  DROP CONSTRAINT [DF_Bar_StatusFlag] 
END

IF EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Bar_CreateDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bar]'))
BEGIN
	ALTER TABLE [dbo].[Bar]  DROP CONSTRAINT [DF_Bar_CreateDate] 
END

IF EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Bar_LastUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bar]'))
BEGIN
	ALTER TABLE [dbo].[Bar]  DROP CONSTRAINT [DF_Bar_LastUserId] 
END

-- Drop Bar 
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

-- Drop Music constraint
IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bar_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bar]'))
BEGIN
	ALTER TABLE [dbo].[Music] DROP CONSTRAINT [FK_Bar_User] 
END 

IF EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Music_StatusFlag]') AND parent_object_id = OBJECT_ID(N'[dbo].[Music]'))
BEGIN
	ALTER TABLE [dbo].[Music]  DROP CONSTRAINT [DF_Music_StatusFlag] 
END

IF EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Music_CreateDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Music]'))
BEGIN
	ALTER TABLE [dbo].[Music]  DROP CONSTRAINT [DF_Music_CreateDate] 
END

IF EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Music_LastUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Music]'))
BEGIN
	ALTER TABLE [dbo].[Music]  DROP CONSTRAINT [DF_Music_LastUserId] 
END

-- Drop Music
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Music]') AND type in (N'U'))
BEGIN
	DROP TABLE [Music]
END 

-- Create District Table
CREATE TABLE [dbo].[District](
	[DistrictId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,	
	[LastUpdate] [datetime] NULL,
	[LastUserId] [int] NOT NULL CONSTRAINT DF_District_LastUserId DEFAULT 1000, 
	[CreateDate] [datetime] CONSTRAINT DF_District_CreateDate DEFAULT GetDate(), 
	[StatusFlag] [int]  CONSTRAINT DF_District_StatusFlag DEFAULT 1
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

-- Add District Table Constraints
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_User] FOREIGN KEY([LastUserId]) REFERENCES [dbo].[UserProfile] ([UserId])


-- Create Street Table
CREATE TABLE [dbo].[Street](
	[StreetId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Descrip] [nvarchar](max) NULL,
	[ImageUrl] [varchar](500) NULL,
	[Latitude] [decimal](9, 6) NULL,
	[Longitude] [decimal](9, 6) NULL,
	[LastUserId] [int] NOT NULL CONSTRAINT DF_Street_LastUserId DEFAULT 1000,
	[LastUpdate] [datetime] NULL, 
	[CreateDate] [datetime] CONSTRAINT DF_Street_CreateDate DEFAULT GetDate(), 
	[StatusFlag] [int]  CONSTRAINT DF_Street_StatusFlag DEFAULT 1
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[StreetId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

-- Add Street Table Constraints
ALTER TABLE [dbo].[Street]  WITH CHECK ADD  CONSTRAINT [FK_Street_User] FOREIGN KEY([LastUserId]) REFERENCES [dbo].[UserProfile] ([UserId])

-- Create BarType Table
CREATE TABLE [dbo].[BarType](
	[BarTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,	
	[LastUpdate] [datetime] NULL, 
	[LastUserId] [int] NOT NULL CONSTRAINT DF_BarType_LastUserId DEFAULT 1000,
	[CreateDate] [datetime] CONSTRAINT DF_BarType_CreateDate DEFAULT GetDate(),	 
	[StatusFlag] [int]  CONSTRAINT DF_BarType_StatusFlag DEFAULT 1
 CONSTRAINT [PK_BarType] PRIMARY KEY CLUSTERED 
(
	[BarTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

-- Add BarType Table Constraints
ALTER TABLE [dbo].[BarType]  WITH CHECK ADD  CONSTRAINT [FK_BarType_User] FOREIGN KEY([LastUserId]) REFERENCES [dbo].[UserProfile] ([UserId])


-- Create Music Table
CREATE TABLE [dbo].[Music](
	[MusicId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[LastUpdate] [datetime] NULL, 
	[LastUserId] [int] NOT NULL CONSTRAINT DF_Music_LastUserId DEFAULT 1000,
	[CreateDate] [datetime] CONSTRAINT DF_Music_CreateDate DEFAULT GetDate(), 
	[StatusFlag] [int]  CONSTRAINT DF_Music_StatusFlag DEFAULT 1
 CONSTRAINT [PK_Music] PRIMARY KEY CLUSTERED 
(
	[MusicId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

-- Add Music Table Constraints
ALTER TABLE [dbo].[Music]  WITH CHECK ADD  CONSTRAINT [FK_Music_User] FOREIGN KEY([LastUserId]) REFERENCES [dbo].[UserProfile] ([UserId])

-- Create Bar Table
CREATE TABLE [dbo].[Bar](
	[BarId] [int] IDENTITY(1,1) NOT NULL,
	[StreetId] [int] NULL,
	[DistrictId] [int] NOT NULL,
	[MusicId] [int] NULL,
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
	[LastUpdate] [datetime] NULL, 
	[LastUserId] [int] NOT NULL CONSTRAINT DF_Bar_LastUserId DEFAULT 1000,
	[CreateDate] [datetime] CONSTRAINT DF_Bar_CreateDate DEFAULT GetDate(), 
	[StatusFlag] [int]  CONSTRAINT DF_Bar_StatusFlag DEFAULT 1
 CONSTRAINT [PK_Bar] PRIMARY KEY CLUSTERED 
(
	[BarId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

-- Add Bar Table constraints
ALTER TABLE [dbo].[Bar]  WITH CHECK ADD  CONSTRAINT [FK_Bar_District] FOREIGN KEY([DistrictId])REFERENCES [dbo].[District] ([DistrictId])
ALTER TABLE [dbo].[Bar]  WITH CHECK ADD  CONSTRAINT [FK_Bar_Street] FOREIGN KEY([StreetId]) REFERENCES [dbo].[Street] ([StreetId])
ALTER TABLE [dbo].[Bar]  WITH CHECK ADD  CONSTRAINT [FK_Bar_Music] FOREIGN KEY([MusicId]) REFERENCES [dbo].[Music] ([MusicId])
ALTER TABLE [dbo].[Bar]  WITH CHECK ADD  CONSTRAINT [FK_Bar_User] FOREIGN KEY([LastUserId]) REFERENCES [dbo].[UserProfile] ([UserId])


-- Create BarTypeBar Table
CREATE TABLE [dbo].[BarTypeBar](
	[BarTypeBarId] [int] IDENTITY(1,1) NOT NULL,
	[BarId] [int] NOT NULL,
	[BarTypeId] [int] NOT NULL,
 CONSTRAINT [PK_BarTypeBar] PRIMARY KEY CLUSTERED 
(
	[BarTypeBarId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

-- Add BarTypeBar Table constraints
ALTER TABLE [dbo].[BarTypeBar]  WITH CHECK ADD  CONSTRAINT [FK_BarTypeBar_Bar] FOREIGN KEY([BarId])REFERENCES [dbo].[Bar] ([BarId])
ALTER TABLE [dbo].[BarTypeBar]  WITH CHECK ADD  CONSTRAINT [FK_BarTypeBar_BarType] FOREIGN KEY([BarTypeId]) REFERENCES [dbo].[BarType] ([BarTypeId])


-- Create TopList
CREATE TABLE [dbo].[TopList](
	[TopListId] [int] IDENTITY(1,1) NOT NULL,
	[BarId] [int] NOT NULL,
	[Rank] [tinyint] NOT NULL
 CONSTRAINT [PK_TopList] PRIMARY KEY CLUSTERED 
(
	[TopListId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

-- Add TopList Table Contraints
ALTER TABLE [dbo].[TopList]  WITH CHECK ADD  CONSTRAINT [FK_TopList_Bar] FOREIGN KEY([BarId]) REFERENCES [dbo].[Bar] ([BarId])


-- Create Party Table
CREATE TABLE [dbo].[Party](
	[PartyId] [int] NOT NULL,
	[BarId] [int] NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](150) NULL,
	[LastUpdate] DATETIME NULL, 
	[LastUserId] [int] NOT NULL CONSTRAINT DF_Party_LastUserId DEFAULT 1000,
	[CreateDate] DATETIME CONSTRAINT DF_Party_CreateDate DEFAULT GetDate(), 
	[StatusFlag] [int]  CONSTRAINT DF_Party_StatusFlag DEFAULT 1
 CONSTRAINT [PK_Party] PRIMARY KEY CLUSTERED 
(
	[PartyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

-- Add Party Table Contraints
ALTER TABLE [dbo].[Party]  WITH CHECK ADD  CONSTRAINT [FK_Party_Bar] FOREIGN KEY([BarId]) REFERENCES [dbo].[Bar] ([BarId])
ALTER TABLE [dbo].[Party]  WITH CHECK ADD  CONSTRAINT [FK_Party_User] FOREIGN KEY([LastUserId]) REFERENCES [dbo].[UserProfile] ([UserId])


-- Create Event Table
CREATE TABLE [dbo].[Event](
	[EventId] [int] NOT NULL,
	[BarId] [int] NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](150) NULL,
	[LastUpdate] DATETIME NULL, 
	[LastUserId] [int] NOT NULL CONSTRAINT DF_Event_LastUserId DEFAULT 1000,
	[CreateDate] DATETIME CONSTRAINT DF_Event_CreateDate DEFAULT GetDate(), 	
	[StatusFlag] [int]  CONSTRAINT DF_Event_StatusFlag DEFAULT 1
) ON [PRIMARY]

-- Add Event Table Contraints
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Bar] FOREIGN KEY([BarId]) REFERENCES [dbo].[Bar] ([BarId])
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_User] FOREIGN KEY([LastUserId]) REFERENCES [dbo].[UserProfile] ([UserId])


GO