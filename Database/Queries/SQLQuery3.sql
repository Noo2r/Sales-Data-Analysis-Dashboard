USE [AdventureWorks2019]
GO

/****** Object:  View [dbo].[vw_DIM_ShipMethod]    Script Date: 8/18/2025 7:47:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_DIM_ShipMethod]
AS
SELECT
    [ShipMethodID],
    [Name] AS [ShipMethod]
FROM
    [Purchasing].[ShipMethod] WITH (NOLOCK)
GO
