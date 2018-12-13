--Bulk insert SQL command
TRUNCATE TABLE [dbo].[Country1] 

GO

BULK INSERT [dbo].[Country1] 
FROM 'C:\Users\ADMIN\Desktop\MSBI\SSIS\Files\Flatfiles\Package17_BulkInsert_Ex1\Country1_20161018.txt' 
WITH
(
	 FIELDTERMINATOR='|~|'
	,ROWTERMINATOR='\n'
	,FIRSTROW=2
) 


SELECT @@ROWCOUNT

SELECT * FROM [dbo].[Country1] 
