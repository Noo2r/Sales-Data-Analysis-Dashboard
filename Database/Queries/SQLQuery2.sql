CREATE VIEW [dbo].[vw_DIM_Product]
AS
SELECT
    P.[ProductID],
    P.[Name] AS [ProductName],
    P.[ProductNumber],
    P.[Color],
    P.[ReorderPoint],
    P.[StandardCost],
    P.[ListPrice],
    P.[Weight],
    P.[ProductLine],
    P.[Class],
    P.[Style],
    P.[ProductSubcategoryID],
    PSC.[ProductCategoryID],
    PSC.[Name] AS [SubcategoryName],
    PC.[Name] AS [CategoryName]
FROM
    [Production].[Product] AS P WITH (NOLOCK)
LEFT JOIN
    [Production].[ProductSubcategory] AS PSC WITH (NOLOCK) ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
LEFT JOIN
    [Production].[ProductCategory] AS PC WITH (NOLOCK) ON PSC.ProductCategoryID = PC.ProductCategoryID;
GO

SELECT *
FROM [dbo].[vw_DIM_Product];