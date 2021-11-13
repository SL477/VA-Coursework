USE [ChicagoBikeData]
GO

/****** Object:  Table [dbo].[userType]    Script Date: 13/11/2021 18:12:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[userType](
	[userType_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO


