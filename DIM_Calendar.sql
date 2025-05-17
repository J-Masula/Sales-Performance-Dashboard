--Cleansed DIM_Date Table
SELECT 
  [DateKey], 
  [FullDateAlternateKey] As Date, 
  --[DayNumberOfWeek], 
  [EnglishDayNameOfWeek] As Day, 
  --[SpanishDayNameOfWeek], 
  --[FrenchDayNameOfWeek], 
  --[DayNumberOfMonth], 
  --[DayNumberOfYear], 
  --[WeekNumberOfYear], 
  [EnglishMonthName] As Month, 
  LEFT([EnglishMonthName], 3) As MonthShort, 
  --left take first 3 letter of month
  --[SpanishMonthName], 
  --[FrenchMonthName], 
  [MonthNumberOfYear] As MonthNo, 
  [CalendarQuarter] As Quarter, 
  [CalendarYear] As Year
  --[CalendarSemester], 
  --[FiscalQuarter], 
  --[FiscalYear], 
  --[FiscalSemester] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE CalendarYear >= 2023
