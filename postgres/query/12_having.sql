-- http://www.postgresqltutorial.com/postgresql-having/

-- The HAVING clause sets the condition for group rows created by the GROUP BY
-- clause after the GROUP BY clause applies while the WHERE clause sets
-- the condition for individual rows before GROUP BY clause applies.
-- This is the main difference between the HAVINGand WHEREclauses.

-- example 0
SELECT
  unit_price,
  COUNT(unit_price) AS quantity,
  SUM(unit_price) AS total
FROM
  products
GROUP BY
  unit_price
HAVING
  COUNT(unit_price) > 1
ORDER BY
  total ASC;
