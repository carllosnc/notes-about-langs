-- http://www.postgresqltutorial.com/postgresql-select-distinct/

-- Distinct
SELECT
  DISTINCT contact_title
FROM customers;

SELECT
  DISTINCT product_id
FROM order_details
ORDER BY
  product_id ASC;
