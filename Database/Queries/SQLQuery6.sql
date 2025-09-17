CREATE VIEW [dbo].[vw_DIM_SalesPerson]
AS
SELECT
    [BusinessEntityID] AS [SalesPersonID],
    [Title],
    [FirstName],
    [MiddleName],
    [LastName],
    [JobTitle],
    [City],
    [CountryRegionName],
    [TerritoryName],
    [TerritoryGroup]
FROM
    [Sales].[vSalesPerson]
GO
