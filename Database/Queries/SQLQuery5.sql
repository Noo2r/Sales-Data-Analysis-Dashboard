CREATE VIEW [dbo].[vw_DIM_Territory]
AS
SELECT
    [TerritoryID],
    [Name] AS [TerritoryName],
    [CountryRegionCode],
    [Group]
FROM
    [Sales].[SalesTerritory] WITH (NOLOCK)
GO
