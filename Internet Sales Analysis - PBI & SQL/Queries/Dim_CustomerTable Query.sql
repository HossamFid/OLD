-- cleansed DIM_Customer Table
SELECT 
  c.[CustomerKey], 
  --c.[GeographyKey], 
  --c.[CustomerAlternateKey] 
  --,[Title]
  c.[FirstName] --,[MiddleName]
  , 
  c.[LastName], 
  [FirstName] + ' ' + [LastName] AS "Full Name", 
  g.City AS "Customer City", 
  -- ,[NameStyle]
  --c.[BirthDate] 
  --,[MaritalStatus]
  -- ,[Suffix]
  --,[Gender]
  CASE Gender WHEN 'M' THEN 'Male' When 'F' then 'Female' End AS Gender
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  --,[EnglishEducation]
  -- ,[SpanishEducation]
  --,[FrenchEducation]
  --  ,[EnglishOccupation]
  -- ,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  -- ,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  -- ,[Phone]
  , 
  c.[DateFirstPurchase]
  -- ,[CommuteDistance]
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  left join [dbo].[DimGeography] AS g on c.GeographyKey = g.GeographyKey 
order by 
  CustomerKey ASC
