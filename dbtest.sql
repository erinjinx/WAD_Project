/****** Object:  ForeignKey [FK_PACKAGE_PARTICIPANT]    Script Date: 11/25/2017 13:48:16 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PACKAGE_PARTICIPANT]') AND parent_object_id = OBJECT_ID(N'[dbo].[PACKAGE]'))
ALTER TABLE [dbo].[PACKAGE] DROP CONSTRAINT [FK_PACKAGE_PARTICIPANT]
GO
/****** Object:  ForeignKey [FK_PARTICIPANT_PACKAGE]    Script Date: 11/25/2017 13:48:16 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PARTICIPANT_PACKAGE]') AND parent_object_id = OBJECT_ID(N'[dbo].[PARTICIPANT]'))
ALTER TABLE [dbo].[PARTICIPANT] DROP CONSTRAINT [FK_PARTICIPANT_PACKAGE]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 11/25/2017 13:48:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ADMIN]') AND type in (N'U'))
DROP TABLE [dbo].[ADMIN]
GO
/****** Object:  Table [dbo].[PACKAGE]    Script Date: 11/25/2017 13:48:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PACKAGE]') AND type in (N'U'))
DROP TABLE [dbo].[PACKAGE]
GO
/****** Object:  Table [dbo].[PARTICIPANT]    Script Date: 11/25/2017 13:48:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PARTICIPANT]') AND type in (N'U'))
DROP TABLE [dbo].[PARTICIPANT]
GO
/****** Object:  Default [DF_PACKAGE_pack_price]    Script Date: 11/25/2017 13:48:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PACKAGE_pack_price]') AND parent_object_id = OBJECT_ID(N'[dbo].[PACKAGE]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PACKAGE_pack_price]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PACKAGE] DROP CONSTRAINT [DF_PACKAGE_pack_price]
END


End
GO
/****** Object:  Default [DF_PACKAGE_pack_shirt]    Script Date: 11/25/2017 13:48:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PACKAGE_pack_shirt]') AND parent_object_id = OBJECT_ID(N'[dbo].[PACKAGE]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PACKAGE_pack_shirt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PACKAGE] DROP CONSTRAINT [DF_PACKAGE_pack_shirt]
END


End
GO
/****** Object:  Default [DF_PACKAGE_pack_medal]    Script Date: 11/25/2017 13:48:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PACKAGE_pack_medal]') AND parent_object_id = OBJECT_ID(N'[dbo].[PACKAGE]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PACKAGE_pack_medal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PACKAGE] DROP CONSTRAINT [DF_PACKAGE_pack_medal]
END


End
GO
/****** Object:  Default [DF_PACKAGE_pack_cap]    Script Date: 11/25/2017 13:48:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PACKAGE_pack_cap]') AND parent_object_id = OBJECT_ID(N'[dbo].[PACKAGE]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PACKAGE_pack_cap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PACKAGE] DROP CONSTRAINT [DF_PACKAGE_pack_cap]
END


End
GO
/****** Object:  Default [DF_PACKAGE_pack_bag]    Script Date: 11/25/2017 13:48:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PACKAGE_pack_bag]') AND parent_object_id = OBJECT_ID(N'[dbo].[PACKAGE]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PACKAGE_pack_bag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PACKAGE] DROP CONSTRAINT [DF_PACKAGE_pack_bag]
END


End
GO
/****** Object:  Default [DF_PARTICIPANT_part_paid]    Script Date: 11/25/2017 13:48:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PARTICIPANT_part_paid]') AND parent_object_id = OBJECT_ID(N'[dbo].[PARTICIPANT]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PARTICIPANT_part_paid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PARTICIPANT] DROP CONSTRAINT [DF_PARTICIPANT_part_paid]
END


End
GO
/****** Object:  Table [dbo].[PARTICIPANT]    Script Date: 11/25/2017 13:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PARTICIPANT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PARTICIPANT](
	[part_ID] [int] IDENTITY(1,1) NOT NULL,
	[part_icno] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[part_name] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[part_email] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[part_phoneno] [nchar](10) COLLATE Latin1_General_CI_AI NULL,
	[part_paid] [bit] NOT NULL,
	[pack_ID] [int] NOT NULL,
 CONSTRAINT [PK_PARTICIPANT] PRIMARY KEY CLUSTERED 
(
	[part_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[PACKAGE]    Script Date: 11/25/2017 13:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PACKAGE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PACKAGE](
	[pack_ID] [int] IDENTITY(1,1) NOT NULL,
	[pack_price] [int] NOT NULL,
	[pack_shirt] [bit] NOT NULL,
	[shirt_size] [nchar](10) COLLATE Latin1_General_CI_AI NULL,
	[pack_food] [nchar](10) COLLATE Latin1_General_CI_AI NULL,
	[pack_discount] [int] NULL,
	[pack_medal] [bit] NOT NULL,
	[pack_category] [nchar](10) COLLATE Latin1_General_CI_AI NOT NULL,
	[pack_reciept] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
	[pack_cap] [bit] NOT NULL,
	[pack_bag] [bit] NOT NULL,
	[part_ID] [int] NOT NULL,
 CONSTRAINT [PK_PACKAGE] PRIMARY KEY CLUSTERED 
(
	[pack_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 11/25/2017 13:48:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ADMIN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ADMIN](
	[username] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[password] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[name] [nvarchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
ALTER TABLE [dbo].[ADMIN] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[ADMIN] ([username], [password], [name]) VALUES (N'admin', N'1234', N'Zuriani')
INSERT [dbo].[ADMIN] ([username], [password], [name]) VALUES (N'admin1', N'1234', N'Fuyu')
INSERT [dbo].[ADMIN] ([username], [password], [name]) VALUES (N'admin2', N'1234', N'Acap')
INSERT [dbo].[ADMIN] ([username], [password], [name]) VALUES (N'admin3', N'1234', N'Erin')
INSERT [dbo].[ADMIN] ([username], [password], [name]) VALUES (N'admin4', N'1234', N'Anis')
/****** Object:  Default [DF_PACKAGE_pack_price]    Script Date: 11/25/2017 13:48:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PACKAGE_pack_price]') AND parent_object_id = OBJECT_ID(N'[dbo].[PACKAGE]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PACKAGE_pack_price]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PACKAGE] ADD  CONSTRAINT [DF_PACKAGE_pack_price]  DEFAULT ((0)) FOR [pack_price]
END


End
GO
/****** Object:  Default [DF_PACKAGE_pack_shirt]    Script Date: 11/25/2017 13:48:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PACKAGE_pack_shirt]') AND parent_object_id = OBJECT_ID(N'[dbo].[PACKAGE]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PACKAGE_pack_shirt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PACKAGE] ADD  CONSTRAINT [DF_PACKAGE_pack_shirt]  DEFAULT ((0)) FOR [pack_shirt]
END


End
GO
/****** Object:  Default [DF_PACKAGE_pack_medal]    Script Date: 11/25/2017 13:48:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PACKAGE_pack_medal]') AND parent_object_id = OBJECT_ID(N'[dbo].[PACKAGE]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PACKAGE_pack_medal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PACKAGE] ADD  CONSTRAINT [DF_PACKAGE_pack_medal]  DEFAULT ((0)) FOR [pack_medal]
END


End
GO
/****** Object:  Default [DF_PACKAGE_pack_cap]    Script Date: 11/25/2017 13:48:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PACKAGE_pack_cap]') AND parent_object_id = OBJECT_ID(N'[dbo].[PACKAGE]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PACKAGE_pack_cap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PACKAGE] ADD  CONSTRAINT [DF_PACKAGE_pack_cap]  DEFAULT ((0)) FOR [pack_cap]
END


End
GO
/****** Object:  Default [DF_PACKAGE_pack_bag]    Script Date: 11/25/2017 13:48:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PACKAGE_pack_bag]') AND parent_object_id = OBJECT_ID(N'[dbo].[PACKAGE]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PACKAGE_pack_bag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PACKAGE] ADD  CONSTRAINT [DF_PACKAGE_pack_bag]  DEFAULT ((0)) FOR [pack_bag]
END


End
GO
/****** Object:  Default [DF_PARTICIPANT_part_paid]    Script Date: 11/25/2017 13:48:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_PARTICIPANT_part_paid]') AND parent_object_id = OBJECT_ID(N'[dbo].[PARTICIPANT]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_PARTICIPANT_part_paid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PARTICIPANT] ADD  CONSTRAINT [DF_PARTICIPANT_part_paid]  DEFAULT ((0)) FOR [part_paid]
END


End
GO
/****** Object:  ForeignKey [FK_PACKAGE_PARTICIPANT]    Script Date: 11/25/2017 13:48:16 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PACKAGE_PARTICIPANT]') AND parent_object_id = OBJECT_ID(N'[dbo].[PACKAGE]'))
ALTER TABLE [dbo].[PACKAGE]  WITH CHECK ADD  CONSTRAINT [FK_PACKAGE_PARTICIPANT] FOREIGN KEY([part_ID])
REFERENCES [dbo].[PARTICIPANT] ([part_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PACKAGE_PARTICIPANT]') AND parent_object_id = OBJECT_ID(N'[dbo].[PACKAGE]'))
ALTER TABLE [dbo].[PACKAGE] CHECK CONSTRAINT [FK_PACKAGE_PARTICIPANT]
GO
/****** Object:  ForeignKey [FK_PARTICIPANT_PACKAGE]    Script Date: 11/25/2017 13:48:16 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PARTICIPANT_PACKAGE]') AND parent_object_id = OBJECT_ID(N'[dbo].[PARTICIPANT]'))
ALTER TABLE [dbo].[PARTICIPANT]  WITH CHECK ADD  CONSTRAINT [FK_PARTICIPANT_PACKAGE] FOREIGN KEY([pack_ID])
REFERENCES [dbo].[PACKAGE] ([pack_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PARTICIPANT_PACKAGE]') AND parent_object_id = OBJECT_ID(N'[dbo].[PARTICIPANT]'))
ALTER TABLE [dbo].[PARTICIPANT] CHECK CONSTRAINT [FK_PARTICIPANT_PACKAGE]
GO
