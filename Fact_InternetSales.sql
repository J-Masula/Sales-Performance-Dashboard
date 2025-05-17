--Cleansed FactInternetSales
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  --[PromotionKey], 
  --[CurrencyKey], 
  --[SalesTerritoryKey], 
  [SalesOrderNumber], 
  --[SalesOrderLineNumber], 
  --[RevisionNumber], 
  --[OrderQuantity], 
  --[UnitPrice], 
  --[ExtendedAmount], 
  --[UnitPriceDiscountPct], 
  --[DiscountAmount], 
  --[ProductStandardCost], 
  --[TotalProductCost], 
  [SalesAmount]
  --[TaxAmt], 
  --[Freight], 
  --[CarrierTrackingNumber], 
  --[CustomerPONumber], 
  --[OrderDate], 
  --[DueDate], 
  --[ShipDate] 
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(
    GETDATE()) -2 
	--get first 4 digit of key. Like Give me all rows from the last 2 years or newer (2023 and onward).
ORDER BY 
  OrderDateKey ASC
--Or I could create a separate column to get the Year from orderdateKey
--SELECT Order_Key, LEFT (Order_Key, 4) as Year FROM Internet. It will extract the year first 4 digits

  

