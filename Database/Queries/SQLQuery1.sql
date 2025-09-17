CREATE VIEW [dbo].[vw_Fact_OrderDetails]
AS
SELECT
    SOD.[SalesOrderID],
    SOD.[SalesOrderDetailID],
    SOD.[OrderQty],
    SOD.[ProductID],
    SOD.[UnitPrice],
    SOD.[LineTotal],
    SOH.[OrderDate],
    SOH.[DueDate],
    SOH.[ShipDate],
    SOH.[Status] AS [StatusId],
    SOH.[OnlineOrderFlag],
    SOH.[SalesPersonID],
    SOH.[TerritoryID],
    SOH.[ShipMethodID],
    (SOD.[LineTotal]/ SOH.[SubTotal]) * SOH.[TaxAmt] [Taxamt],
    (SOD.[LineTotal]/ SOH.[SubTotal]) * SOH.[Freight] [Freight],
    (SOD.[LineTotal]/ SOH.[SubTotal]) * SOH.[TotalDue] [TotalDue]
FROM
    [Sales].[SalesOrderDetail] AS SOD WITH (NOLOCK)
LEFT JOIN
    [Sales].[SalesOrderHeader] AS SOH WITH (NOLOCK) ON SOD.SalesOrderID = SOH.SalesOrderID
GO
