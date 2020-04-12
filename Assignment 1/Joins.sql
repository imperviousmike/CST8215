-- Filename: Joins.sql
-- Description: script to run joins for Inventory database
-- CST 8215
-- Author: M Daly daly0100
-- Year: 2019
-- Last Modified: 6 Oct 2019


-- join showing countries that have customers
SELECT customer_t.cust_id, country_t.cntry_name
FROM country_t
right JOIN customer_t
ON country_t.cntry_code = customer_t.cust_country;


-- product bought and invoice number
SELECT invoice_line_t.invoice_number,Product_t.prod_description
from invoice_line_t
LEFT JOIN product_t
on product_t.prod_code = invoice_line_t.prod_code;

-- eof: Joins.sql