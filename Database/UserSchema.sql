USE [SFBars]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
BEGIN
	ALTER TABLE [webpages_UsersInRoles] DROP CONSTRAINT fk_RoleId
END

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
BEGIN
	ALTER TABLE [webpages_UsersInRoles] DROP CONSTRAINT fk_UserId
END

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]') AND type in (N'U'))
BEGIN
	DROP TABLE webpages_UsersInRoles
END

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_OAuthMembership]') AND type in (N'U'))
BEGIN
	DROP TABLE webpages_OAuthMembership
END

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Roles]') AND type in (N'U'))
BEGIN
	DROP TABLE webpages_Roles
END

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_webpages_IsConfirmed]') AND type = 'D')
BEGIN
	ALTER TABLE webpages_Membership DROP CONSTRAINT DF_webpages_IsConfirmed
END 

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_webpages_PasswordFailuresSinceLastSuccess]') AND type = 'D')
BEGIN
	ALTER TABLE webpages_Membership DROP CONSTRAINT DF_webpages_PasswordFailuresSinceLastSuccess
END

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Membership]') AND type in (N'U'))
BEGIN
	DROP TABLE webpages_Membership
END

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND type in (N'U'))
BEGIN
	DROP TABLE [UserProfile]
END

CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL CONSTRAINT DF_webpages_IsConfirmed DEFAULT 0,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL  CONSTRAINT DF_webpages_PasswordFailuresSinceLastSuccess DEFAULT 0,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId]) REFERENCES [dbo].[webpages_Roles] ([RoleId])
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId]) REFERENCES [dbo].[UserProfile] ([UserId])


IF NOT EXISTS (SELECT 1 FROM UserProfile WHERE UserId = 1000)
BEGIN
	SET IDENTITY_INSERT SFBars.dbo.UserProfile ON
	INSERT INTO UserProfile (UserId, Username) VALUES (1000, 'SYSTEM')
	SET IDENTITY_INSERT SFBars.dbo.UserProfile OFF
END 

