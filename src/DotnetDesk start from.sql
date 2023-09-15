/*
 Navicat Premium Data Transfer

 Source Server         : Ticketing Test
 Source Server Type    : SQL Server
 Source Server Version : 13001601
 Source Host           : 192.168.162.5:1433
 Source Catalog        : Demo_Ticketing2
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 13001601
 File Encoding         : 65001

 Date: 15/09/2023 12:19:35
*/


-- ----------------------------
-- Table structure for __EFMigrationsHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[__EFMigrationsHistory]
GO

CREATE TABLE [dbo].[__EFMigrationsHistory] (
  [MigrationId] nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProductVersion] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[__EFMigrationsHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of __EFMigrationsHistory
-- ----------------------------
INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180429033416_initialdb', N'2.0.2-rtm-10011')
GO

INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230915072055_Initial', N'2.0.2-rtm-10011')
GO


-- ----------------------------
-- Table structure for AspNetRoleClaims
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetRoleClaims]
GO

CREATE TABLE [dbo].[AspNetRoleClaims] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ClaimType] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ClaimValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RoleId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AspNetRoleClaims] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetRoleClaims
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] ON
GO

SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] OFF
GO


-- ----------------------------
-- Table structure for AspNetRoles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetRoles]
GO

CREATE TABLE [dbo].[AspNetRoles] (
  [Id] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ConcurrencyStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Name] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NormalizedName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AspNetRoles] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetRoles
-- ----------------------------

-- ----------------------------
-- Table structure for AspNetUserClaims
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserClaims]
GO

CREATE TABLE [dbo].[AspNetUserClaims] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ClaimType] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ClaimValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AspNetUserClaims] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserClaims
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON
GO

SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO


-- ----------------------------
-- Table structure for AspNetUserLogins
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserLogins]
GO

CREATE TABLE [dbo].[AspNetUserLogins] (
  [LoginProvider] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProviderKey] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProviderDisplayName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AspNetUserLogins] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserLogins
-- ----------------------------

-- ----------------------------
-- Table structure for AspNetUserRoles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserRoles]
GO

CREATE TABLE [dbo].[AspNetUserRoles] (
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [RoleId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AspNetUserRoles] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserRoles
-- ----------------------------

-- ----------------------------
-- Table structure for AspNetUsers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUsers]
GO

CREATE TABLE [dbo].[AspNetUsers] (
  [Id] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [AccessFailedCount] int  NOT NULL,
  [ConcurrencyStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Email] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EmailConfirmed] bit  NOT NULL,
  [FullName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsCustomer] bit  NOT NULL,
  [IsSuperAdmin] bit  NOT NULL,
  [IsSupportAgent] bit  NOT NULL,
  [IsSupportEngineer] bit  NOT NULL,
  [LockoutEnabled] bit  NOT NULL,
  [LockoutEnd] datetimeoffset(7)  NULL,
  [NormalizedEmail] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NormalizedUserName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PasswordHash] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhoneNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhoneNumberConfirmed] bit  NOT NULL,
  [ProfilePictureUrl] nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SecurityStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TwoFactorEnabled] bit  NOT NULL,
  [UserName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [WallpaperPictureUrl] nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AspNetUsers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUsers
-- ----------------------------
INSERT INTO [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FullName], [IsCustomer], [IsSuperAdmin], [IsSupportAgent], [IsSupportEngineer], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [ProfilePictureUrl], [SecurityStamp], [TwoFactorEnabled], [UserName], [WallpaperPictureUrl]) VALUES (N'2dd3149b-1c90-4cfd-b408-268bea5d7c65', N'0', N'c662ca36-6c92-4cf5-bfb3-8281b7460792', N'agent1@inmobiles.net', N'1', N'agent 1', N'0', N'0', N'1', N'0', N'1', NULL, N'AGENT1@INMOBILES.NET', N'AGENT1@INMOBILES.NET', N'AQAAAAEAACcQAAAAECqRwXJV3NbANbNiEIiZgFcMR6WSMOGBlmDnLZmiWYKU62SY87C85+Ng1mn3ypIlqA==', NULL, N'0', N'/images/empty-profile.png', N'b723c696-6fd8-43ff-a462-9fad673b181e', N'0', N'agent1@inmobiles.net', N'/images/wallpaper1.jpg')
GO

INSERT INTO [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FullName], [IsCustomer], [IsSuperAdmin], [IsSupportAgent], [IsSupportEngineer], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [ProfilePictureUrl], [SecurityStamp], [TwoFactorEnabled], [UserName], [WallpaperPictureUrl]) VALUES (N'aad271a1-b995-4a8c-bca0-de45a8980112', N'0', N'bd2f2edb-a570-43c3-a0bd-5a52ddd5e261', N'engineer1@inmobiles.net', N'1', N'engineer1', N'0', N'0', N'0', N'1', N'1', NULL, N'ENGINEER1@INMOBILES.NET', N'ENGINEER1@INMOBILES.NET', N'AQAAAAEAACcQAAAAECqRwXJV3NbANbNiEIiZgFcMR6WSMOGBlmDnLZmiWYKU62SY87C85+Ng1mn3ypIlqA==', NULL, N'0', N'/images/empty-profile.png', N'9510a64a-5697-451e-b19c-c1bc217bd5f9', N'0', N'engineer1@inmobiles.net', N'/images/wallpaper1.jpg')
GO

INSERT INTO [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FullName], [IsCustomer], [IsSuperAdmin], [IsSupportAgent], [IsSupportEngineer], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [ProfilePictureUrl], [SecurityStamp], [TwoFactorEnabled], [UserName], [WallpaperPictureUrl]) VALUES (N'b955e728-6197-4798-bbb3-c037e5453dbc', N'0', N'fa335b47-cf0c-424d-82c5-6733c1e4ea38', N'jaafar.melhem@inmobiles.net', N'1', N'jaafar', N'0', N'1', N'0', N'0', N'1', NULL, N'JAAFAR.MELHEM@INMOBILES.NET', N'JAAFAR.MELHEM@INMOBILES.NET', N'AQAAAAEAACcQAAAAECqRwXJV3NbANbNiEIiZgFcMR6WSMOGBlmDnLZmiWYKU62SY87C85+Ng1mn3ypIlqA==', NULL, N'0', N'/images/empty-profile.png', N'8db9db02-aaf2-4f2a-914a-86360cef8348', N'0', N'jaafar.melhem@inmobiles.net', N'/images/wallpaper1.jpg')
GO


-- ----------------------------
-- Table structure for AspNetUserTokens
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserTokens]
GO

CREATE TABLE [dbo].[AspNetUserTokens] (
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LoginProvider] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Name] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Value] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AspNetUserTokens] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserTokens
-- ----------------------------

-- ----------------------------
-- Table structure for Contact
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type IN ('U'))
	DROP TABLE [dbo].[Contact]
GO

CREATE TABLE [dbo].[Contact] (
  [contactId] uniqueidentifier  NOT NULL,
  [CreateAt] datetime2(7)  NOT NULL,
  [CreateBy] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [applicationUserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [contactName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [customerId] uniqueidentifier  NOT NULL,
  [description] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [email] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [linkedin] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [phone] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [secondaryEmail] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [thumbUrl] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [website] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Contact] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Contact
-- ----------------------------
INSERT INTO [dbo].[Contact] ([contactId], [CreateAt], [CreateBy], [applicationUserId], [contactName], [customerId], [description], [email], [linkedin], [phone], [secondaryEmail], [thumbUrl], [website]) VALUES (N'D121DB63-4693-4EA1-89F7-5632BC4672AC', N'2023-09-15 11:03:07.5000000', NULL, NULL, N'contact 1', N'8B6CED54-7F0F-4919-9CB1-2E53B663682B', NULL, N'test@gmail.com', NULL, NULL, NULL, NULL, NULL)
GO


-- ----------------------------
-- Table structure for Customer
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type IN ('U'))
	DROP TABLE [dbo].[Customer]
GO

CREATE TABLE [dbo].[Customer] (
  [customerId] uniqueidentifier  NOT NULL,
  [CreateAt] datetime2(7)  NOT NULL,
  [CreateBy] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [address] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [customerName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [customerType] int  NOT NULL,
  [description] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [email] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [linkedin] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [organizationId] uniqueidentifier  NOT NULL,
  [phone] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [thumbUrl] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [website] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Customer] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Customer
-- ----------------------------
INSERT INTO [dbo].[Customer] ([customerId], [CreateAt], [CreateBy], [address], [customerName], [customerType], [description], [email], [linkedin], [organizationId], [phone], [thumbUrl], [website]) VALUES (N'8B6CED54-7F0F-4919-9CB1-2E53B663682B', N'2023-09-15 07:58:33.3951067', NULL, N'customer 1  address', N'customer 1 ', N'2', N'customer 1 ', N'test@gmail.com', N'test@linkedin.com', N'18C2B650-2276-44DA-BF52-08DBB5C120C8', N'12121212', N'/images/no-image-available.png', N'test@gmail.net')
GO


-- ----------------------------
-- Table structure for Organization
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Organization]') AND type IN ('U'))
	DROP TABLE [dbo].[Organization]
GO

CREATE TABLE [dbo].[Organization] (
  [organizationId] uniqueidentifier  NOT NULL,
  [CreateAt] datetime2(7)  NOT NULL,
  [CreateBy] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [description] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [organizationName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [organizationOwnerId] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [thumbUrl] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Organization] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Organization
-- ----------------------------
INSERT INTO [dbo].[Organization] ([organizationId], [CreateAt], [CreateBy], [description], [organizationName], [organizationOwnerId], [thumbUrl]) VALUES (N'18C2B650-2276-44DA-BF52-08DBB5C120C8', N'2023-09-15 07:55:28.6359085', NULL, N'Default Organization / Default Branch or HQ', N'Default HQ', N'b955e728-6197-4798-bbb3-c037e5453dbc', N'/images/blank-building.png')
GO

INSERT INTO [dbo].[Organization] ([organizationId], [CreateAt], [CreateBy], [description], [organizationName], [organizationOwnerId], [thumbUrl]) VALUES (N'AA45EC2F-A49E-489E-0493-08DBB5C398E6', N'2023-09-15 08:13:09.1433516', NULL, N'Default Organization / Default Branch or HQ', N'Default HQ', N'd6b7bb5a-e341-4f7d-8dc9-8ec91c244c49', N'/images/blank-building.png')
GO


-- ----------------------------
-- Table structure for Product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type IN ('U'))
	DROP TABLE [dbo].[Product]
GO

CREATE TABLE [dbo].[Product] (
  [productId] uniqueidentifier  NOT NULL,
  [CreateAt] datetime2(7)  NOT NULL,
  [CreateBy] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [description] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [organizationId] uniqueidentifier  NOT NULL,
  [productCategory] int  NOT NULL,
  [productName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [thumbUrl] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Product
-- ----------------------------
INSERT INTO [dbo].[Product] ([productId], [CreateAt], [CreateBy], [description], [organizationId], [productCategory], [productName], [thumbUrl]) VALUES (N'E8474369-360C-41DF-B9EA-B98C0F82C508', N'2023-09-15 07:58:52.6465595', NULL, N'product 1', N'18C2B650-2276-44DA-BF52-08DBB5C120C8', N'1', N'product 1', N'/images/no-image-available.png')
GO


-- ----------------------------
-- Table structure for SupportAgent
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SupportAgent]') AND type IN ('U'))
	DROP TABLE [dbo].[SupportAgent]
GO

CREATE TABLE [dbo].[SupportAgent] (
  [supportAgentId] uniqueidentifier  NOT NULL,
  [CreateAt] datetime2(7)  NOT NULL,
  [CreateBy] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Email] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [applicationUserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [organizationId] uniqueidentifier  NOT NULL,
  [supportAgentName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[SupportAgent] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SupportAgent
-- ----------------------------
INSERT INTO [dbo].[SupportAgent] ([supportAgentId], [CreateAt], [CreateBy], [Email], [applicationUserId], [organizationId], [supportAgentName]) VALUES (N'8ADE838E-D9F0-4B25-B00B-AF280F2580EF', N'2023-09-15 07:59:09.0323808', NULL, N'agent1@inmobiles.net', N'2dd3149b-1c90-4cfd-b408-268bea5d7c65', N'18C2B650-2276-44DA-BF52-08DBB5C120C8', N'agent 1')
GO


-- ----------------------------
-- Table structure for SupportEngineer
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SupportEngineer]') AND type IN ('U'))
	DROP TABLE [dbo].[SupportEngineer]
GO

CREATE TABLE [dbo].[SupportEngineer] (
  [supportEngineerId] uniqueidentifier  NOT NULL,
  [Email] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [applicationUserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [organizationId] uniqueidentifier  NOT NULL,
  [supportEngineerName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[SupportEngineer] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SupportEngineer
-- ----------------------------
INSERT INTO [dbo].[SupportEngineer] ([supportEngineerId], [Email], [applicationUserId], [organizationId], [supportEngineerName]) VALUES (N'D0DEF060-3E05-49F7-8D32-C568CE273E63', N'engineer1@inmobiles.net', N'aad271a1-b995-4a8c-bca0-de45a8980112', N'18C2B650-2276-44DA-BF52-08DBB5C120C8', N'engineer1')
GO


-- ----------------------------
-- Table structure for Ticket
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Ticket]') AND type IN ('U'))
	DROP TABLE [dbo].[Ticket]
GO

CREATE TABLE [dbo].[Ticket] (
  [ticketId] uniqueidentifier  NOT NULL,
  [CreateAt] datetime2(7)  NOT NULL,
  [CreateBy] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [contactId] uniqueidentifier  NOT NULL,
  [customerId] uniqueidentifier  NOT NULL,
  [description] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [email] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [organizationId] uniqueidentifier  NOT NULL,
  [phone] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [productId] uniqueidentifier  NOT NULL,
  [supportAgentId] uniqueidentifier  NOT NULL,
  [supportEngineerId] uniqueidentifier  NOT NULL,
  [ticketChannel] int  NOT NULL,
  [ticketName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ticketPriority] int  NOT NULL,
  [ticketStatus] int  NOT NULL,
  [ticketType] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Ticket] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Ticket
-- ----------------------------
INSERT INTO [dbo].[Ticket] ([ticketId], [CreateAt], [CreateBy], [contactId], [customerId], [description], [email], [organizationId], [phone], [productId], [supportAgentId], [supportEngineerId], [ticketChannel], [ticketName], [ticketPriority], [ticketStatus], [ticketType]) VALUES (N'E254A298-1D8F-47E0-A9AB-4AAB6DFBB002', N'2023-09-15 08:03:35.6523753', NULL, N'D121DB63-4693-4EA1-89F7-5632BC4672AC', N'8B6CED54-7F0F-4919-9CB1-2E53B663682B', N'ticket 1', N'jaafar.melhem@inmobiles.net', N'18C2B650-2276-44DA-BF52-08DBB5C120C8', N'12121212', N'E8474369-360C-41DF-B9EA-B98C0F82C508', N'8ADE838E-D9F0-4B25-B00B-AF280F2580EF', N'D0DEF060-3E05-49F7-8D32-C568CE273E63', N'6', N'ticket 1', N'2', N'2', N'1')
GO


-- ----------------------------
-- Primary Key structure for table __EFMigrationsHistory
-- ----------------------------
ALTER TABLE [dbo].[__EFMigrationsHistory] ADD CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED ([MigrationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for AspNetRoleClaims
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[AspNetRoleClaims]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table AspNetRoleClaims
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId]
ON [dbo].[AspNetRoleClaims] (
  [RoleId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetRoleClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetRoleClaims] ADD CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetRoles
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex]
ON [dbo].[AspNetRoles] (
  [NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
GO


-- ----------------------------
-- Primary Key structure for table AspNetRoles
-- ----------------------------
ALTER TABLE [dbo].[AspNetRoles] ADD CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for AspNetUserClaims
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[AspNetUserClaims]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table AspNetUserClaims
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId]
ON [dbo].[AspNetUserClaims] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserClaims] ADD CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetUserLogins
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId]
ON [dbo].[AspNetUserLogins] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserLogins
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserLogins] ADD CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetUserRoles
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId]
ON [dbo].[AspNetUserRoles] (
  [RoleId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserRoles
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED ([UserId], [RoleId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetUsers
-- ----------------------------
CREATE NONCLUSTERED INDEX [EmailIndex]
ON [dbo].[AspNetUsers] (
  [NormalizedEmail] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex]
ON [dbo].[AspNetUsers] (
  [NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUsers
-- ----------------------------
ALTER TABLE [dbo].[AspNetUsers] ADD CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserTokens
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserTokens] ADD CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED ([UserId], [LoginProvider], [Name])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Contact
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Contact_applicationUserId]
ON [dbo].[Contact] (
  [applicationUserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Contact_customerId]
ON [dbo].[Contact] (
  [customerId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Contact
-- ----------------------------
ALTER TABLE [dbo].[Contact] ADD CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED ([contactId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Customer
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Customer_organizationId]
ON [dbo].[Customer] (
  [organizationId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Customer
-- ----------------------------
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([customerId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Organization
-- ----------------------------
ALTER TABLE [dbo].[Organization] ADD CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED ([organizationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Product
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Product_organizationId]
ON [dbo].[Product] (
  [organizationId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Product
-- ----------------------------
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([productId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table SupportAgent
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_SupportAgent_applicationUserId]
ON [dbo].[SupportAgent] (
  [applicationUserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_SupportAgent_organizationId]
ON [dbo].[SupportAgent] (
  [organizationId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table SupportAgent
-- ----------------------------
ALTER TABLE [dbo].[SupportAgent] ADD CONSTRAINT [PK_SupportAgent] PRIMARY KEY CLUSTERED ([supportAgentId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table SupportEngineer
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_SupportEngineer_applicationUserId]
ON [dbo].[SupportEngineer] (
  [applicationUserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_SupportEngineer_organizationId]
ON [dbo].[SupportEngineer] (
  [organizationId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table SupportEngineer
-- ----------------------------
ALTER TABLE [dbo].[SupportEngineer] ADD CONSTRAINT [PK_SupportEngineer] PRIMARY KEY CLUSTERED ([supportEngineerId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Ticket
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Ticket_organizationId]
ON [dbo].[Ticket] (
  [organizationId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Ticket
-- ----------------------------
ALTER TABLE [dbo].[Ticket] ADD CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED ([ticketId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetRoleClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetRoleClaims] ADD CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserClaims] ADD CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserLogins
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserLogins] ADD CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserRoles
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserTokens
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserTokens] ADD CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Contact
-- ----------------------------
ALTER TABLE [dbo].[Contact] ADD CONSTRAINT [FK_Contact_AspNetUsers_applicationUserId] FOREIGN KEY ([applicationUserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Contact] ADD CONSTRAINT [FK_Contact_Customer_customerId] FOREIGN KEY ([customerId]) REFERENCES [dbo].[Customer] ([customerId]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Customer
-- ----------------------------
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [FK_Customer_Organization_organizationId] FOREIGN KEY ([organizationId]) REFERENCES [dbo].[Organization] ([organizationId]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product
-- ----------------------------
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_Product_Organization_organizationId] FOREIGN KEY ([organizationId]) REFERENCES [dbo].[Organization] ([organizationId]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table SupportAgent
-- ----------------------------
ALTER TABLE [dbo].[SupportAgent] ADD CONSTRAINT [FK_SupportAgent_AspNetUsers_applicationUserId] FOREIGN KEY ([applicationUserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[SupportAgent] ADD CONSTRAINT [FK_SupportAgent_Organization_organizationId] FOREIGN KEY ([organizationId]) REFERENCES [dbo].[Organization] ([organizationId]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table SupportEngineer
-- ----------------------------
ALTER TABLE [dbo].[SupportEngineer] ADD CONSTRAINT [FK_SupportEngineer_AspNetUsers_applicationUserId] FOREIGN KEY ([applicationUserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[SupportEngineer] ADD CONSTRAINT [FK_SupportEngineer_Organization_organizationId] FOREIGN KEY ([organizationId]) REFERENCES [dbo].[Organization] ([organizationId]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Ticket
-- ----------------------------
ALTER TABLE [dbo].[Ticket] ADD CONSTRAINT [FK_Ticket_Organization_organizationId] FOREIGN KEY ([organizationId]) REFERENCES [dbo].[Organization] ([organizationId]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

