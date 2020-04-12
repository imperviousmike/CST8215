-- Filename: Selects.sql
-- Description: script to run select statements for the Inventory database
-- CST 8215
-- Author: M Daly daly0100
-- Year: 2019
-- Last Modified: 6 Oct 2019

-- statement to list countries that do not have any Customers.
SELECT country_t.cntry_code, country_t.cntry_name
FROM COUNTRY_T where country_t.cntry_code NOT IN(SELECT cust_country from customer_t);

-- statement to list countries from which no products are bought.
SELECT COUNTRY_T.cntry_name FROM COUNTRY_T WHERE COUNTRY_T.cntry_code NOT IN(
SELECT PRODUCT_T.cntry_origin FROM product_t,invoice_line_t WHERE invoice_line_t.prod_code = product_t.prod_code)


-- eof: Selects.sql