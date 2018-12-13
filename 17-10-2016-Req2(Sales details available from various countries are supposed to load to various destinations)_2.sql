--Req1(Loadingh the Employee dimension through a flat file in B/W S and D)
--Req2(Sales details available from various countries are supposed to load to various destinations)
--Part-1
--Source 
	Country1.txt
	Country2.txt
	Country3.txt
	:
	:
	:
--Dest
	dbo.Country1
	dbo.Country2
	dbo.Country3
	:
	:
	:
--Part-2
--Source 
	India.txt
	Japan.txt
	China.txt
	:
	:
	:
--Dest
	dbo.India
	dbo.Japan
	dbo.China
	:
	:
	:


C:\Users\ADMIN\Desktop\MSBI\SSIS\Files\Flatfiles\DailySalesDetails
\Sales_20161017
\Country1_20161017.txt

---------------------
SELECT DISTINCT EnglishCountryRegionName FROM SalesVw


Australia 
Canada
France
United States

SELECT TOP 0 * INTO OLAP_Practice.dbo.Country1 FROM  AdventureWorksDW2014.dbo.SalesVw
SELECT TOP 0 * INTO OLAP_Practice.dbo.Country2 FROM  AdventureWorksDW2014.dbo.SalesVw
SELECT TOP 0 * INTO OLAP_Practice.dbo.Country3 FROM  AdventureWorksDW2014.dbo.SalesVw
SELECT TOP 0 * INTO OLAP_Practice.dbo.Country4 FROM  AdventureWorksDW2014.dbo.SalesVw
SELECT TOP 0 * INTO OLAP_Practice.dbo.Country5 FROM  AdventureWorksDW2014.dbo.SalesVw
SELECT TOP 0 * INTO OLAP_Practice.dbo.Country6 FROM  AdventureWorksDW2014.dbo.SalesVw

TRUNCATE TABLE OLAP_Practice.dbo.Country1

SELECT COUNT(*) FROM OLAP_Practice.dbo.Country1
SELECT COUNT(*) FROM OLAP_Practice.dbo.Country2
SELECT COUNT(*) FROM OLAP_Practice.dbo.Country3
SELECT COUNT(*) FROM OLAP_Practice.dbo.Country4
SELECT COUNT(*) FROM OLAP_Practice.dbo.Country5
SELECT COUNT(*) FROM OLAP_Practice.dbo.Country6








