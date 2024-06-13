SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](100) NULL,
	[Gender] [nvarchar](100) NULL,
	[ConfirmationToken] [nvarchar](300) NULL,
	[Status] [nvarchar](100) NULL,
	[AvatatUrl] [nvarchar](300) NULL,
	[RoleId] [int] NULL,
    [CreatedBy] [nvarchar](255) NULL,
    [CreatedDate] [date] NULL,
    [ModifiedBy] [nvarchar](255) NULL,
    [ModifiedDate] [date] NULL,
    [DeletedBy] [nvarchar](255) NULL,
    [DeletedDate] [date] NULL,
    [IsDeleted] [bit] NOT NULL DEFAULT '0'
 CONSTRAINT [User_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User1Id] [int] NULL,
	[User2Id] [int] NULL,
	[Status] [nvarchar](100) NULL,
    [CreatedBy] [nvarchar](255) NULL,
    [CreatedDate] [date] NULL,
    [ModifiedBy] [nvarchar](255) NULL,
    [ModifiedDate] [date] NULL,
    [DeletedBy] [nvarchar](255) NULL,
    [DeletedDate] [date] NULL,
    [IsDeleted] [bit] NOT NULL DEFAULT '0'
 CONSTRAINT [Contact_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContactId] [int] NULL,
	[ContentMessage] [nvarchar](500) NULL,
	[ImageUrl] [nvarchar](500) NULL,
	[Date] [date] NULL,
	[Status] [nvarchar](100) NULL,
    [CreatedBy] [nvarchar](255) NULL,
    [CreatedDate] [date] NULL,
    [ModifiedBy] [nvarchar](255) NULL,
    [ModifiedDate] [date] NULL,
    [DeletedBy] [nvarchar](255) NULL,
    [DeletedDate] [date] NULL,
    [IsDeleted] [bit] NOT NULL DEFAULT '0'
 CONSTRAINT [Message_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContactId] [int] NULL,
	[ContentMessage] [nvarchar](500) NULL,
	[ImageUrl] [nvarchar](500) NULL,
	[Date] [date] NULL,
	[Status] [nvarchar](100) NULL,
    [CreatedBy] [nvarchar](255) NULL,
    [CreatedDate] [date] NULL,
    [ModifiedBy] [nvarchar](255) NULL,
    [ModifiedDate] [date] NULL,
    [DeletedBy] [nvarchar](255) NULL,
    [DeletedDate] [date] NULL,
    [IsDeleted] [bit] NOT NULL DEFAULT '0'
 CONSTRAINT [MessageHistory_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[CategoryId] [int] NULL,
	[Title] [nvarchar](500) NULL,
	[ContentBlog] [nvarchar](500) NULL,
	[ImageUrl] [nvarchar](500) NULL,
	[Status] [nvarchar](100) NULL,
    [CreatedBy] [nvarchar](255) NULL,
    [CreatedDate] [date] NULL,
    [ModifiedBy] [nvarchar](255) NULL,
    [ModifiedDate] [date] NULL,
    [DeletedBy] [nvarchar](255) NULL,
    [DeletedDate] [date] NULL,
    [IsDeleted] [bit] NOT NULL DEFAULT '0'
 CONSTRAINT [Blog_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CateogryName] [nvarchar](500) NULL,
    [CreatedBy] [nvarchar](255) NULL,
    [CreatedDate] [date] NULL,
    [ModifiedBy] [nvarchar](255) NULL,
    [ModifiedDate] [date] NULL,
    [DeletedBy] [nvarchar](255) NULL,
    [DeletedDate] [date] NULL,
    [IsDeleted] [bit] NOT NULL DEFAULT '0'
 CONSTRAINT [Category_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Payment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[BlogId] [int] NULL,
	[Amount] [float] NULL,
	[PaymentMethod] [nvarchar](500) NULL,
	[Currency] [nvarchar](500) NULL,
	[Status] [nvarchar](100) NULL,
    [CreatedBy] [nvarchar](255) NULL,
    [CreatedDate] [date] NULL,
    [ModifiedBy] [nvarchar](255) NULL,
    [ModifiedDate] [date] NULL,
    [DeletedBy] [nvarchar](255) NULL,
    [DeletedDate] [date] NULL,
    [IsDeleted] [bit] NOT NULL DEFAULT '0'
 CONSTRAINT [Payment_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReplyCommentId] [int] NULL,
	[UserId] [int] NULL,
	[BlogId] [int] NULL,
	[ContentComment] [nvarchar](500) NULL,
	[Rate] [int] NULL,
	[Date] [date] NULL,
	[Status] [nvarchar](100) NULL,
    [CreatedBy] [nvarchar](255) NULL,
    [CreatedDate] [date] NULL,
    [ModifiedBy] [nvarchar](255) NULL,
    [ModifiedDate] [date] NULL,
    [DeletedBy] [nvarchar](255) NULL,
    [DeletedDate] [date] NULL,
    [IsDeleted] [bit] NOT NULL DEFAULT '0'
 CONSTRAINT [Comment_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
    [CreatedBy] [nvarchar](255) NULL,
    [CreatedDate] [date] NULL,
    [ModifiedBy] [nvarchar](255) NULL,
    [ModifiedDate] [date] NULL,
    [DeletedBy] [nvarchar](255) NULL,
    [DeletedDate] [date] NULL,
    [IsDeleted] [bit] NOT NULL DEFAULT '0'
 CONSTRAINT [Role_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [User_Role_RoleId_fk] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [User_Role_RoleId_fk]
GO


ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [Contact_User_User1Id_fk] FOREIGN KEY([User1Id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [Contact_User_User1Id_fk]
GO


ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [Contact_User_User2Id_fk] FOREIGN KEY([User2Id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [Contact_User_User2Id_fk]
GO



ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [Message_Contact_ContactId_fk] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contact] ([Id])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [Message_Contact_ContactId_fk]
GO


ALTER TABLE [dbo].[MessageHistory]  WITH CHECK ADD  CONSTRAINT [MessageHistory_Contact_ContactId_fk] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contact] ([Id])
GO
ALTER TABLE [dbo].[MessageHistory] CHECK CONSTRAINT [MessageHistory_Contact_ContactId_fk]
GO


ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [Blog_User_UserId_fk] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [Blog_User_UserId_fk]
GO


ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [Blog_Category_CategoryId_fk] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [Blog_Category_CategoryId_fk]
GO



ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [Comment_Blog_BlogId_fk] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blog] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [Comment_Blog_BlogId_fk]
GO



ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [Comment_Comment_ReplyCommentId_fk] FOREIGN KEY([ReplyCommentId])
REFERENCES [dbo].[Comment] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [Comment_Comment_ReplyCommentId_fk]
GO



ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [Payment_Blog_BlogId_fk] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blog] ([Id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [Payment_Blog_BlogId_fk]
GO



ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [Payment_User_UserId_fk] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [Payment_User_UserId_fk]
GO

