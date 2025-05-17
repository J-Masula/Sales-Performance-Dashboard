--Cleansed Dim_Customer
SELECT 
  [CustomerKey], 
  --[GeographyKey], 
  --[CustomerAlternateKey], 
  --[Title], 
  c. FirstName As [First Name], 
  --[MiddleName], 
  c.LastName As [Last Name],
  c.FirstName + ' ' +c.LastName As [Full Name], --we concat the name
  --[NameStyle], 
  --[BirthDate], 
  --[MaritalStatus], 
  --[Suffix], 
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END as Gender,
  --[EmailAddress], 
  --[YearlyIncome], 
  --[TotalChildren], 
  --[NumberChildrenAtHome], 
  --[EnglishEducation], 
  --[SpanishEducation], 
  --[FrenchEducation], 
  --[EnglishOccupation], 
  --[SpanishOccupation], 
  --[FrenchOccupation], 
  --[HouseOwnerFlag], 
  --[NumberCarsOwned], 
  --[AddressLine1], 
  --[AddressLine2],
  --[Phone], 
  [DateFirstPurchase], 
  --[CommuteDistance]
  g.City As [Customer City] --from dim_geography we joined here
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] c
  LEFT JOIN dbo.DimGeography g ON g.GeographyKey = c.GeographyKey
  ORDER BY CustomerKey
  --The LEFT JOIN ensures that even if a customer doesn’t have a matching geography, 
  --they’ll still show up in the results, with NULL in the city column.
  --that's why the CITY was from Dim_Geography
  --It's like Hey SQL, give me every customer, and if you can find a matching city from the geography table using their GeographyKey,
  --great if not, just leave it blank (i.e., NULL)."