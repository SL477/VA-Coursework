USE [ChicagoBikeData]
GO

/****** Object:  Table [dbo].[events]    Script Date: 14/11/2021 13:51:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[events](
	[event_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](12) NOT NULL
) ON [PRIMARY]
GO


