DELETE FROM Country;
DELETE FROM Province;
DELETE FROM City;
DELETE FROM Client;
DELETE FROM Owner;
DELETE FROM Property_types;
DELETE FROM Year;
DELETE FROM Property;
DELETE FROM Expense;
DELETE FROM Invoice;


INSERT INTO Country( country_id, Country_name) 
	VALUES( 1, 'Canada');
	
INSERT INTO Province( province_id, country_id, province_name) 
	VALUES( 1, 1, 'Ontario');
	
INSERT INTO City( city_id, City_Name, province_id) 
	VALUES( 1, 'Ottawa', 1);
	
INSERT INTO Client( client_id, client_name, client_email) 
	VALUES( 1, 'Cheryl Potter', 'cp@gmail.com');

INSERT INTO Owner( owner_id, owner_name, owner_email) 
	VALUES( 1, 'Bill Monnor', 'bm@gmail.com');
	
INSERT INTO Owner( owner_id, owner_name, owner_email) 
	VALUES( 2, 'Peter Smith', 'ps@gmail.com');

INSERT INTO Owner( owner_id, owner_name, owner_email) 
	VALUES( 3, 'Wendy Miller', 'wm@gmail.com');
	
INSERT INTO Owner( owner_id, owner_name, owner_email) 
	VALUES( 3, 'Wendy Miller', 'wm@gmail.com');
	
INSERT INTO Property_types( property_type_id, property_type) 
	VALUES( 1, 'House');

INSERT INTO Property_types( property_type_id, property_type) 
	VALUES( 2, 'Apartment');

INSERT INTO Year( year) 
	VALUES(2017);

INSERT INTO Year( year) 
	VALUES(2018);

INSERT INTO Year( year) 
	VALUES(2019);
	
INSERT INTO Property( property_id, city_id, owner_id, property_type, street_name, postal_code, number_bed, number_bath, rental_rate) 
	VALUES(1,1,1,1,'16 Holland Ave','K2K1X1',3,2,600);

INSERT INTO Property( property_id, city_id, owner_id, property_type, street_name, postal_code, number_bed, number_bath, rental_rate) 
	VALUES(2,1,2,2,'20 Preston Street, Apt 100','K2K1X1',1,1,300);
	
INSERT INTO Property( property_id, city_id, owner_id, property_type, street_name, postal_code, number_bed, number_bath, rental_rate) 
	VALUES(3,1,1,2,'344 Riverside Drive, Apt 215','K2K1X1',1,1,375);
	
INSERT INTO Property( property_id, city_id, owner_id, property_type, street_name, postal_code, number_bed, number_bath, rental_rate) 
	VALUES(4,1,3,1,'21 Baseline Road','K2K1X1',2,1,690);
	
INSERT INTO Expense( expense_id, property_id, Year, property_tax, electrical, heating, advertising, cleaning, total_expense) 
	VALUES(1,1,2017,3000.00,600.00,600.00,100.00,250.00,4550.00);

INSERT INTO Expense( expense_id, property_id, Year, property_tax, electrical, heating, advertising, cleaning, total_expense) 
	VALUES(2,1,2018,3050.00,660.00,660.00,125.00,250.00,4745.00);
	
INSERT INTO Expense( expense_id, property_id, Year, property_tax, electrical, heating, advertising, cleaning, total_expense) 
	VALUES(3,1,2019,3100.00,816.00,840.00,180.00,250.00,5186.00);

INSERT INTO Expense( expense_id, property_id, Year, property_tax, electrical, heating, advertising, cleaning, total_expense) 
	VALUES(4,2,2017,1800.00,240.00,204.00,100.00,100.00,2440.00);
	
INSERT INTO Expense( expense_id, property_id, Year, property_tax, electrical, heating, advertising, cleaning, total_expense) 
	VALUES(5,2,2018,1850.00,264.00,228.00,125.00,100.00,2567.00);
	
INSERT INTO Expense( expense_id, property_id, Year, property_tax, electrical, heating, advertising, cleaning, total_expense) 
	VALUES(6,2,2019,1900.00,324.00,240.00,180.00,100.00,2744.00);
	
INSERT INTO Expense( expense_id, property_id, Year, property_tax, electrical, heating, advertising, cleaning, total_expense) 
	VALUES(7,3,2017,1650.00,240.00,204.00,100.00,100.00,2294.00);

INSERT INTO Expense( expense_id, property_id, Year, property_tax, electrical, heating, advertising, cleaning, total_expense) 
	VALUES(8,3,2018,1680.00,264.00,228.00,125.00,100.00,2397.00);

INSERT INTO Expense( expense_id, property_id, Year, property_tax, electrical, heating, advertising, cleaning, total_expense) 
	VALUES(9,3,2019,1710.00,324.00,240.00,180.00,100.00,2554.00);

INSERT INTO Expense( expense_id, property_id, Year, property_tax, electrical, heating, advertising, cleaning, total_expense) 
	VALUES(10,4,2017,2700.00,600.00,600.00,100.00,250.00,4250.00);

INSERT INTO Expense( expense_id, property_id, Year, property_tax, electrical, heating, advertising, cleaning, total_expense) 
	VALUES(11,4,2018,2800.00,660.00,660.00,125.00,250.00,4495.00);

INSERT INTO Expense( expense_id, property_id, Year, property_tax, electrical, heating, advertising, cleaning, total_expense) 
	VALUES(12,4,2019,2900.00,816.00,840.00,180.00,250.00,4986.00);
	
INSERT INTO Invoice( invoice_id, property_id, client_id, number_day, rental_start, rental_charge, tax_owing, rental_amount_owing, invoice_date) 
	VALUES(100,1,1,2,'2019-01-01',1200.00,96.00,1296.00,'2019-01-19');
	
INSERT INTO Invoice( invoice_id, property_id, client_id, number_day, rental_start, rental_charge, tax_owing, rental_amount_owing, invoice_date) 
	VALUES(101,2,1,4,'2017-03-22',1200.00,96.00,1296.00,'2017-03-28');
	
INSERT INTO Invoice( invoice_id, property_id, client_id, number_day, rental_start, rental_charge, tax_owing, rental_amount_owing, invoice_date) 
	VALUES(102,3,1,2,'2018-05-01',750.00,60.00,810.00,'2018-05-10');
	
INSERT INTO Invoice( invoice_id, property_id, client_id, number_day, rental_start, rental_charge, tax_owing, rental_amount_owing, invoice_date) 
	VALUES(103,4,1,5,'2019-07-01',3450.00,276.00,3726.00,'2019-07-20');



	
	



	
	
