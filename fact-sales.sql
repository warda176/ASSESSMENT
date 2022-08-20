SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  --  ,[PromotionKey]
  --  ,[CurrencyKey]
  --  ,[SalesTerritoryKey]
  [SalesOrderNumber], 
  --  [SalesOrderLineNumber], 
  --  ,[RevisionNumber]
   [OrderQuantity]
   
  --  ,[ExtendedAmount]
  --  ,[UnitPriceDiscountPct]
  --  ,[DiscountAmount] 
  --  ,[ProductStandardCost]
  --  ,[TotalProductCost] 
  [SalesAmount] --  ,[TaxAmt]
  --  ,[Freight]
  --  ,[CarrierTrackingNumber] 
  --  ,[CustomerPONumber] 
   ,[OrderDate] 
    ,[ShipDate] 
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales]


WHERE LEFT(Orderdatekey,4) >= 2019 AND LEFT(Orderdatekey,4) <= 2021
ORDER BY
  OrderDateKey ASC
