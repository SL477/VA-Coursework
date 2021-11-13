USE [ChicagoBikeData]
GO

/****** Object:  Table [dbo].[gender]    Script Date: 13/11/2021 17:44:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gender](
	[gender_id] [smallint] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](6) NOT NULL
) ON [PRIMARY]
GO


