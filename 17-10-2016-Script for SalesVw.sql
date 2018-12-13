--[dbo].[FactInternetSales]

--Script for SalesVw

CREATE  VIEW SalesVw
AS
SELECT 
 GETDATE() AS LoadedDate
,DD.DateKey
,DD.CalendarYear
,DD.CalendarSemester
,DD.CalendarQuarter
,DD.MonthNumberOfYear
,DD.EnglishMonthName
,DD.FullDateAlternateKey
,DP.ProductKey
,DP.EnglishProductName
,DP.EnglishDescription
,DG.GeographyKey
,DG.EnglishCountryRegionName
,DG.StateProvinceName
,DG.City
,DC.CustomerKey
,DC.FirstName
,DC.LastName
,DC.MiddleName
,DC.Gender
,DC.EmailAddress
,FIS.SalesAmount
,FIS.TaxAmt

FROM [dbo].[FactInternetSales] FIS
INNER JOIN [dbo].[DimCustomer] DC
ON DC.CustomerKey = FIS.CustomerKey
INNER JOIN [dbo].[DimGeography] DG
ON DG.GeographyKey = DC.GeographyKey
INNER JOIN [dbo].[DimProduct] DP
ON FIS.ProductKey = DP.ProductKey
INNER JOIN [dbo].[DimDate] DD
ON DD.DateKey = FIS.OrderDateKey






 

