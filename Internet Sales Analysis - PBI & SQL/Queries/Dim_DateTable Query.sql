-- cleansed DIM-Date table -- 
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  --[DayNumberOfWeek], 
  [EnglishDayNameOfWeek] AS Day 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  -- ,[DayNumberOfMonth]
  -- ,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] AS "Week No.", 
  [EnglishMonthName] AS Month, 
  LEFT([EnglishMonthName], 3) AS "Month Name"
  -- ,[SpanishMonthName]
  -- ,[FrenchMonthName]
  , 
  [MonthNumberOfYear] AS "Month No.", 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year
  -- ,[CalendarSemester]
  --,
  -- [FiscalQuarter], 
  -- [FiscalYear] -- ,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
