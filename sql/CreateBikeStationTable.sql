USE [ChicagoBikeData]
GO

/****** Object:  Table [dbo].[bikeStation]    Script Date: 14/11/2021 14:38:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[bikeStation](
	[station_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](36) NOT NULL
) ON [PRIMARY]
GO


