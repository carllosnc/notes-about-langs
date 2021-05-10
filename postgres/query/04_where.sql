-- http://www.postgresqltutorial.com/postgresql-where/

-- Using WHERE clause with the equal (=) operator example
SELECT
  *
FROM
  products
WHERE
  product_id = 10;

-- Using WHERE clause with the AND operator example
SELECT
  *
FROM
  products
WHERE
  supplier_id = 7
  AND
  units_in_stock = 29;

-- Using WHERE clause with the OR operator example
SELECT
  *
FROM
  products
WHERE
  product_name = 'Chai'
  OR
  product_name = 'Chang';

-- Using WHERE clause with the IN operator example
SELECT
  *
FROM
  products
WHERE
  product_name IN ('Chai', 'Chang', 'Ikura', 'Tofu', 'Konbu');

-- Using WHERE clause with the LIKE operator example
SELECT
  *
FROM
  products
WHERE
  product_name LIKE 'Ch%';

-- Using WHERE clause with the BETWEEN operator example
SELECT
  *
FROM
  products
WHERE
  unit_price BETWEEN 10.0 AND 50.0
ORDER BY
  unit_price ASC;

-- Using WHERE clause with the not equal operator (<>)(!=) example
SELECT
  category_id
FROM
  products
WHERE
  category_id <> 2
ORDER BY
  category_id ASC;
