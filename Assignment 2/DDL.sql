DROP TABLE IF EXISTS Expense;
DROP TABLE IF EXISTS Invoice;
DROP TABLE IF EXISTS Property;
DROP TABLE IF EXISTS Owner;
DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS Property_types;
DROP TABLE IF EXISTS City;
DROP TABLE IF EXISTS Province;
DROP TABLE IF EXISTS Country;
DROP TABLE IF EXISTS Year;

CREATE TABLE Country(
	country_id integer NOT NULL,
	Country_name varchar(20),
	CONSTRAINT pk_country PRIMARY KEY (country_id)

);

CREATE TABLE Province(
	province_id integer NOT NULL,
	country_id integer,
	province_name varchar(20),
	CONSTRAINT pk_province PRIMARY KEY (province_id),
	CONSTRAINT fk_country FOREIGN KEY (country_id) REFERENCES Country (country_id)

);

CREATE TABLE City(
	city_id integer NOT NULL,
	City_Name varchar(20),
	province_id integer,
	CONSTRAINT pk_city PRIMARY KEY (city_id),
	CONSTRAINT fk_province FOREIGN KEY (province_id) REFERENCES Province (province_id)

);

CREATE TABLE Client(
	client_id integer NOT NULL,
	client_name varchar(30),
	client_email varchar(30),
	CONSTRAINT pk_client PRIMARY KEY (client_id)

);

CREATE TABLE Owner(
	owner_id integer NOT NULL,
	owner_name varchar(30),
	owner_email varchar(30),
	CONSTRAINT pk_owner PRIMARY KEY (owner_id)

);

CREATE TABLE Property_types(
	property_type_id integer NOT NULL,
	property_type varchar(20),
	CONSTRAINT pk_property_type PRIMARY KEY (property_type_id)

);

CREATE TABLE Year(
	year integer NOT NULL,
	CONSTRAINT Year_pk PRIMARY KEY (year)

);

CREATE TABLE Property(
	property_id integer NOT NULL,
	city_id integer,
	owner_id integer,
	property_type integer,
	street_name varchar(30),
	postal_code char(6),
	number_bed integer,
	number_bath integer,
	rental_rate money,
	CONSTRAINT pk_property PRIMARY KEY (property_id),
	CONSTRAINT fk_city FOREIGN KEY (city_id) REFERENCES City (city_id),
	CONSTRAINT fk_owner FOREIGN KEY (owner_id) REFERENCES Owner (owner_id),
	CONSTRAINT fk_property_type FOREIGN KEY (property_type) REFERENCES Property_types (property_type_id)
	

);

CREATE TABLE Expense(
	expense_id integer NOT NULL,
	property_id integer,
	Year integer,
	property_tax money,
	electrical money,
	heating money,
	advertising money,
	cleaning money,
	total_expense money,
	CONSTRAINT pk_expense PRIMARY KEY (expense_id),
	CONSTRAINT fk_property FOREIGN KEY (property_id) REFERENCES Property (property_id),
	CONSTRAINT fk_year FOREIGN KEY (Year) REFERENCES Year (year)

);

CREATE TABLE Invoice(
	invoice_id integer NOT NULL,
	property_id integer,
	client_id integer,
	number_day integer,
	rental_start date,
	rental_charge money,
	tax_owing money,
	rental_amount_owing money,
	invoice_date date,
	CONSTRAINT pk_invoice PRIMARY KEY (invoice_id),
	CONSTRAINT fk_property FOREIGN KEY (property_id) REFERENCES Property (property_id),
	CONSTRAINT fk_client FOREIGN KEY (client_id) REFERENCES Client (client_id)

);

