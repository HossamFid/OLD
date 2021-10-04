-- Fact_internetSales Table --
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey]
  --  ,[PromotionKey]
  -- ,[CurrencyKey]
  -- ,[SalesTerritoryKey]
  , 
  [SalesOrderNumber]
  -- ,[SalesOrderLineNumber]
  --  ,[RevisionNumber]
  -- ,[OrderQuantity]
  -- ,[UnitPrice]
  --  ,[ExtendedAmount]
  --  ,[UnitPriceDiscountPct]
  --  ,[DiscountAmount]
  --  ,[ProductStandardCost]
  -- ,[TotalProductCost]
  , 
  [SalesAmount] 
  /******,[TaxAmt]
        ,[Freight]
        ,[CarrierTrackingNumber]
        ,[CustomerPONumber]
        ,[OrderDate]
        ,[DueDate]
        ,[ShipDate]******/
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
where 
  LEFT(OrderDateKey, 4) >= YEAR(getdate()) -2  --ensure we alaways get 2 years back from extraction date  
order by 
  OrderDateKey ASC
