--Cleansed Dim_Product
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] as [Product Item Code], 
  --[ProductSubcategoryKey], 
  --[WeightUnitMeasureCode], 
  --[SizeUnitMeasureCode], 
  p.[EnglishProductName],
  ps.EnglishProductSubcategoryName as [Sub Category],--this will answer to our left join
  pc.EnglishProductCategoryName as [Product Category],--this will answer to our left join
  --[SpanishProductName], 
  --[FrenchProductName], 
  --[StandardCost], 
  --[FinishedGoodsFlag], 
  p.[Color] as [Product Color], 
  --[SafetyStockLevel], 
  --[ReorderPoint], 
  --[ListPrice], 
  p.[Size] as [Product Size], 
  --[SizeRange], 
  --[Weight], 
  --[DaysToManufacture], 
  p.[ProductLine] as [Product Line], 
  --[DealerPrice], 
  --[Class], 
  --[Style], 
  p.[ModelName] as [Product Model Name], 
  --[LargePhoto], 
  p.[EnglishDescription] as [Product Description], 
  --[FrenchDescription], 
  --[ChineseDescription], 
  --[ArabicDescription], 
  --[HebrewDescription], 
  --[ThaiDescription], 
  --[GermanDescription], 
  --[JapaneseDescription], 
  --[TurkishDescription], 
  --[StartDate], 
  --[EndDate],
  ISNULL (p.Status, 'Outdated') as [Product Status] --Means lahat ng Outdated row name magiging NULL yung name
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p
  LEFT JOIN DimProductSubcategory as ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN DimProductCategory as pc ON pc.ProductCategoryKey = ps.ProductCategoryKey
  ORDER BY p.ProductKey ASC
  --AGAIN WE DID THE LEFT JOIN FOR SUB CATEGORY AND PRODUCT CATEGORY from another table
  --All rows from left are all included, but will be NULL if there's no match for subcategory or category.
