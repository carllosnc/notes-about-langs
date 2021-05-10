-- http://www.postgresqltutorial.com/postgresql-order-by/

-- Ascending
SELECT
  supplier_id,
  product_name
FROM products
ORDER BY
  supplier_id ASC;

-- Descending
SELECT
  supplier_id,
  company_name
FROM suppliers
ORDER BY
  supplier_id DESC;

-- Multiple columns
SELECT
  contact_title,
  contact_name
FROM customers
ORDER BY
  contact_title ASC, -- Ascending
  contact_name DESC; -- Descending
