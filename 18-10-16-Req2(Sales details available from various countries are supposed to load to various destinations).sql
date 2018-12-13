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

SELECT TOP 0 * INTO OLAP_DB.dbo.Country1 FROM  AdventureWorksDW2012.dbo.SalesVw
SELECT TOP 0 * INTO OLAP_DB.dbo.Country2 FROM  AdventureWorksDW2012.dbo.SalesVw
SELECT TOP 0 * INTO OLAP_DB.dbo.Country3 FROM  AdventureWorksDW2012.dbo.SalesVw
SELECT TOP 0 * INTO OLAP_DB.dbo.Country4 FROM  AdventureWorksDW2012.dbo.SalesVw
SELECT TOP 0 * INTO OLAP_DB.dbo.Country5 FROM  AdventureWorksDW2012.dbo.SalesVw
SELECT TOP 0 * INTO OLAP_DB.dbo.Country6 FROM  AdventureWorksDW2012.dbo.SalesVw

TRUNCATE TABLE OLAP_DB.dbo.country1
TRUNCATE TABLE OLAP_DB.dbo.country2
TRUNCATE TABLE OLAP_DB.dbo.country3
TRUNCATE TABLE OLAP_DB.dbo.country4
TRUNCATE TABLE OLAP_DB.dbo.country5
TRUNCATE TABLE OLAP_DB.dbo.country6


TRUNCATE TABLE OLAP_DB.dbo.Australia
TRUNCATE TABLE OLAP_DB.dbo.Canada
TRUNCATE TABLE OLAP_DB.dbo.France
TRUNCATE TABLE OLAP_DB.dbo.Germany
TRUNCATE TABLE OLAP_DB.dbo.[United Kingdom]
TRUNCATE TABLE OLAP_DB.dbo.[United States]

--TRUNCATE TABLE OLAP_DB.dbo.[United States]
SELECT COUNT(*) FROM OLAP_DB.dbo.Country1



SELECT * FROM OLAP_DB.dbo.Australia
SELECT COUNT(*) FROM OLAP_DB.dbo.Australia
SELECT COUNT(*) FROM OLAP_DB.dbo.Canada
SELECT COUNT(*) FROM OLAP_DB.dbo.France
SELECT COUNT(*) FROM OLAP_DB.dbo.Germany
SELECT COUNT(*) FROM OLAP_DB.dbo.[United Kingdom]
SELECT COUNT(*) FROM OLAP_DB.dbo.[United States]

SELECT DISTINCT EnglishCountryRegionName FROM AdventureWorksDW2012.dbo.SalesVw


SELECT DISTINCT EnglishCountryRegionName
FROM            AdventureWorksDW2012.dbo.SalesVw

SELECT TOP 0 * INTO OLAP_DB.dbo.Australia FROM  AdventureWorksDW2012.dbo.SalesVw
SELECT TOP 0 * INTO OLAP_DB.dbo.Canada FROM  AdventureWorksDW2012.dbo.SalesVw
SELECT TOP 0 * INTO OLAP_DB.dbo.France FROM  AdventureWorksDW2012.dbo.SalesVw
SELECT TOP 0 * INTO OLAP_DB.dbo.Germany FROM  AdventureWorksDW2012.dbo.SalesVw
SELECT TOP 0 * INTO OLAP_DB.dbo.[United Kingdom] FROM  AdventureWorksDW2012.dbo.SalesVw
SELECT TOP 0 * INTO OLAP_DB.dbo.[United States] FROM  AdventureWorksDW2012.dbo.SalesVw


select * from SSISTask


--







