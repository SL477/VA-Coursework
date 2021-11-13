USE [ChicagoBikeData]
GO

/****** Object:  Table [dbo].[bikeStation]    Script Date: 13/11/2021 18:05:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[bikeStation](
	[station_id] [int] NOT NULL,
	[description] [nvarchar](36) NOT NULL
) ON [PRIMARY]
GO


