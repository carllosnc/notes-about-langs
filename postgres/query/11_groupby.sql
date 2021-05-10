-- http://www.postgresqltutorial.com/postgresql-group-by/

-- Example 0
SELECT
  unit_price,
  COUNT(unit_price) AS quantity,
  SUM(unit_price) AS total
FROM
  products
GROUP BY
  unit_price
ORDER BY
  quantity ASC;

-- Example 1
SELECT
  category_id,
  COUNT(category_id) AS quantity
FROM
  products
GROUP BY
  category_id
ORDER BY
  category_id ASC;
