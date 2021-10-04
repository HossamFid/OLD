-- DIM_Product Table 
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey], 
  p.[ProductSubcategoryKey]
  -- ,[WeightUnitMeasureCode]
  --  ,[SizeUnitMeasureCode]
  , 
  p.[EnglishProductName] AS "Product Name", 
  pc.[EnglishProductCategoryName] AS "Product Category", 
  ps.EnglishProductSubcategoryName AS "Sub Category" 
  -- ,[SpanishProductName]
  -- ,[FrenchProductName]
  -- ,[StandardCost]
  -- ,[FinishedGoodsFlag]
  -- ,[Color]
  --  ,[SafetyStockLevel]
  --  ,[ReorderPoint]
  --  ,[ListPrice]
  , 
  p.[Size] AS "Product Size" 
  -- ,[SizeRange]
  --  ,[Weight]
  --  ,[DaysToManufacture]
  , 
  p.[ProductLine] AS "Product Line" 
  -- ,[DealerPrice]
  -- ,[Class]
  -- ,[Style]
  , 
  p.[ModelName] 
  --,[LargePhoto]
  , 
  p.[EnglishDescription] AS "Product Description" 
  --  ,[FrenchDescription]
  -- ,[ChineseDescription]
  -- ,[ArabicDescription]
  -- ,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  -- ,[EndDate]
  , 
  ISNULL(p.[Status], 'Outdated') AS "Product Status" 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS p 
  left join DimProductSubcategory AS ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  left join [dbo].[DimProductCategory] AS pc on ps.ProductCategoryKey = pc.ProductCategoryKey
order by ProductKey ASC