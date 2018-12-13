--SalesVw2

CREATE VIEW SalesVw2
AS
SELECT 
LoadedDate
,DateKey
,CalendarYear
,CalendarSemester
,CalendarQuarter
,MonthNumberOfYear
,EnglishMonthName
,FullDateAlternateKey
,ProductKey
,EnglishProductName
,EnglishDescription
,GeographyKey
,
CASE 
	WHEN EnglishCountryRegionName = 'Australia' THEN 'Country1'
	WHEN EnglishCountryRegionName = 'Canada' THEN 'Country2'
	WHEN EnglishCountryRegionName = 'France' THEN 'Country3'
	WHEN EnglishCountryRegionName = 'Germany' THEN 'Country4'
	WHEN EnglishCountryRegionName = 'United Kingdom' THEN 'Country5'
	WHEN EnglishCountryRegionName = 'United States' THEN 'Country6'
	ELSE EnglishCountryRegionName
END AS EnglishCountryRegionName
,StateProvinceName
,City
,CustomerKey
,FirstName
,LastName
,MiddleName
,Gender
,EmailAddress
,SalesAmount
,TaxAmt
FROM SalesVW 





SELECT DISTINCT EnglishCountryRegionName FROM SalesVW

1.Australia 
2.Canada
3.France
4.Germany
5.United Kingdom
6.United States