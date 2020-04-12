-- Filename: Inventory-DML.sql
-- Description: script to populate Inventory Database
-- CST 8215
-- Author: S Terai
-- Modified: M Daly Daly0100
-- Year: 2018
-- Last Modified: 6 Oct 2019
-- 24 Nov 2018

DELETE FROM Invoice_Line_T;
DELETE FROM Product_T;
DELETE FROM Invoice_T;
DELETE FROM Customer_T;
DELETE FROM CITY_T;
DELETE FROM COUNTRY_T;

 
-- Add Country Data
INSERT INTO COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
	VALUES( 'RUS', 'Russian Federation', 144192450 );
INSERT INTO COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
	VALUES( 'MEX', 'Mexico', 119530753 );
INSERT INTO COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
	VALUES( 'DZA', 'Algeria', 40400000 );
INSERT INTO COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
	VALUES( 'CHN', 'China', 1376049000 );
INSERT INTO COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
	VALUES( 'CHL', 'Chile', 18006407 );
INSERT INTO COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
	VALUES( 'CAN', 'Canada', 36155487 );
INSERT INTO COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
	VALUES( 'NLD', 'Netherlands', 15864000 );
INSERT INTO COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
	VALUES( 'BRA', 'Brazil', 170115000 );
INSERT INTO COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
	VALUES( 'GBR', 'United Kingdom', 59623400 );
INSERT INTO COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
	VALUES( 'ITA', 'Italy', 57680000 );
INSERT INTO COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
	VALUES( 'KOR', 'South Korea', 46844000 );
INSERT INTO COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
	VALUES( 'LTU', 'Lithuania', 3698500 );
INSERT INTO COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
	VALUES( 'SAU', 'Saudi Arabia', 21607000 );
INSERT INTO COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
	VALUES( 'DNK', 'Denmark', 5330000 );
INSERT INTO COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
	VALUES( 'USA', 'United States', 278357000 );

-- Add City Data	
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (1, 'Moscow', 'RUS');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (2, 'St Petersburg', 'RUS');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (3, 'Ciudad de México', 'MEX');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (4, 'Guadalajara', 'MEX');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (5, 'Constantine', 'DZA');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (6, 'Alger', 'DZA');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (7, 'Shanghai', 'CHN');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (8, 'Chongqing', 'CHN');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (9, 'Montréal', 'CAN');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (10, 'Calgary', 'CAN');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (11, 'Santiago de Chile', 'CHL');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (12, 'Puente Alto', 'CHL');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (13, 'Amsterdam', 'NLD');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (14, 'Rotterdam', 'NLD');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (15, 'São Paulo', 'BRA');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (16, 'Rio de Janeiro', 'BRA');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (17, 'London', 'GBR');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (18, 'Birmingham', 'GBR');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (19, 'Roma', 'ITA');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (20, 'Milano', 'ITA');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (21, 'Seoul', 'KOR');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (22, 'Pusan', 'KOR');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (23, 'Vilnius', 'LTU');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (24, 'Kaunas', 'LTU');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (25, 'Riyadh', 'SAU');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (26, 'Jedda', 'SAU');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (27, 'Frederiksberg', 'DNK');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (28, 'København', 'DNK');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (29, 'New York', 'USA');
INSERT INTO CITY_T ( City_ID, City_Name, Cntry_Code )
	VALUES (30, 'Los Angeles', 'USA');
	

-- Add Customer data
INSERT INTO Customer_T( Cust_ID, Cust_FName, Cust_LName, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
	VALUES( 'C001', 'Bze', 'Calai', '1-731-707-7244', 'Fake Street','SantiagodeChile', 'SC','CH7SK4', 'CHL', 0 );
INSERT INTO Customer_T( Cust_ID, Cust_FName, Cust_LName, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
	VALUES( 'C002', 'Cze', 'Dalai', '2-731-707-7245', 'Faker Street','Montréal', 'QC','CA7SK4', 'CAN', 0 );
INSERT INTO Customer_T( Cust_ID, Cust_FName, Cust_LName, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
	VALUES( 'C003', 'Dze', 'Ealai', '3-731-707-7246', 'Real Street','Los Angeles', 'CA','US7SK4', 'USA', 0 );
INSERT INTO Customer_T( Cust_ID, Cust_FName, Cust_LName, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
	VALUES( 'C004', 'Eze', 'Falai', '4-731-707-7247', 'Realer Street','Shanghai', 'SH','CH7SK4', 'CHN', 0 );
INSERT INTO Customer_T( Cust_ID, Cust_FName, Cust_LName, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
	VALUES( 'C005', 'Fze', 'Galai', '5-731-707-7248', 'Fakest Street','London', 'LN','GB7SK4', 'GBR', 0 );
INSERT INTO Customer_T( Cust_ID, Cust_FName, Cust_LName, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
	VALUES( 'C006', 'Gze', 'Halai', '6-731-707-7249', 'U Street','Seoul', 'SE','KR7SK4', 'KOR', 0 );
INSERT INTO Customer_T( Cust_ID, Cust_FName, Cust_LName, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
	VALUES( 'C097', 'Aze', 'Balai', '7-731-707-7243', 'Ulitsa Aleuts','Valdivostok', 'VL','VL7SK4', 'RUS', 0 );


-- Add Invocie data
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23001', 'C001', '2011-02-15' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23002', 'C001', '2011-04-25' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23003', 'C004', '2011-06-12' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23004', 'C002', '2011-07-08' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23005', 'C005', '2011-08-24' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23006', 'C006', '2011-09-07' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23007', 'C006', '2010-12-28' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23008', 'C006', '2011-12-15' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
	VALUES( 'I88001', 'C097', '2018-01-15' );



-- Add Product data
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount )
  VALUES( 'P2011', 'Compac Presario', '2011-02-14', 20, 5, 'CHL', 499.99, 0 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount ) 
  VALUES( 'P2012', 'HP laptop', '2010-09-25', 40, 5, 'ITA',  529.99, 0 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount ) 
  VALUES( 'P2013', 'Samsung LCD', '2010-02-15', 22, 8, 'KOR',329.99, 0 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount ) 
  VALUES( 'P2014', 'Brother Network All-In-One Laser Printer', '2010-10-10', 50, 10, 'BRA', 159.99, 0 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount ) 
  VALUES( 'P2015', 'Western Digital External Hard drive', '2010-04-08', 30, 10, 'CAN', 149.99, NULL );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount ) 
  VALUES( 'P2016', 'Apple iPad 2 with Wi-Fi + 3G', '2011-02-23', 90, 200, 'USA', 849.00, 0 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount ) 
  VALUES( 'P2017', 'iPAD 2 Smart Cover', '2011-02-14', 70, 10, 'CHN', 45.00, 10 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_InDate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount )
	VALUES( 'P2119', 'Organic Chard', '2018-01-14', 240, 100, 'RUS', 15.00, 5 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_InDate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount )
	VALUES( 'P2020', 'Organic Collard Green', '2018-01-14', 140, 110, 'RUS', 11.00, 5 );




-- Add Invoice Line Data
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
 VALUES( 'I23001', 1, 'P2011', 1, 650.75 ); 
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23001', 2, 'P2014', 3, 159.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23002', 1, 'P2012', 1, 529.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23003', 1, 'P2015', 3, 140.75 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23004', 1, 'P2014', 1, 159.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23005', 1, 'P2016', 1, 798.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23006', 1, 'P2011', 1, 499.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23007', 1, 'P2012', 1, 529.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23008', 1, 'P2016', 3, 689.00 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23008', 2, 'P2017', 3, 35.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
	VALUES( 'I88001', 1, 'P2119', 3, 15.00 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
	VALUES( 'I88001', 2, 'P2020', 3, 11.00 );

-- eof: Inventory-DML.sql
