--TASK:FORLOOP CONT. TO LOAD DATA FROM ADVWORKSDW TO FLATFILES AND THEN TO OLAP 

--ADV DW TO FILES:
SOURCE TYPE: RDBMS
SOURCE ADDRESS: Data Source=ADMIN-PC;Initial Catalog=AdventureWorksDW2014;Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;

DESTINATION TYPE: FILES
DESTINATION ADDRESS1: C:\\Users\\ADMIN\\Desktop\\MSBI\\SSIS\\Files\\Flatfiles\\DailySalesDetails\\Sales_20161017\\Country1_20161017.txt

SCRIPT:
Dts.Variables["User::SourceType"].Value = "RDBMS";
Dts.Variables["User::SourceAddress"].Value = "Data Source=ADMIN-PC;Initial Catalog=AdventureWorksDW2014;Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;";
Dts.Variables["User::DestinationType"].Value = "FILES";
Dts.Variables["User::DestinationAddress"].Value = "C:\\Users\\ADMIN\\Desktop\\MSBI\\SSIS\\Files\\Flatfiles\\DailySalesDetails\\Sales_20161017\\Country1_20161017.txt";

-- FILES TO OLAP:
SOURCE TYPE: FILES
SOURCE ADDRESS: C:\\Users\\ADMIN\\Desktop\\MSBI\\SSIS\\Files\\Flatfiles\\DailySalesDetails\\Sales_20161017\\Country1_20161017.txt

DESTINATION TYPE: RDBMS
DESTINATION ADDRESS: Data Source=ADMIN-PC;Initial Catalog=OLAP_Practice;Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False; 

SCRIPT:

Dts.Variables["User::SourceType"].Value = "FILES";
Dts.Variables["User::SourceAddress"].Value = "C:\\Users\\ADMIN\\Desktop\\MSBI\\SSIS\\Files\\Flatfiles\\DailySalesDetails\\Sales_20161017\\Country1_20161017.txt";
Dts.Variables["User::DestinationType"].Value = "RDBMS";
Dts.Variables["User::DestinationAddress"].Value = "Data Source=ADMIN-PC;Initial Catalog=OLAP_Practice;Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;";


