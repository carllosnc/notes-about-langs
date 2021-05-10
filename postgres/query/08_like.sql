-- http://www.postgresqltutorial.com/postgresql-like/

-- Percent ( %)  for matching any sequence of characters.
-- Underscore ( _)  for matching any single character.

-- Example 0
SELECT
  product_name
FROM
  products
WHERE
  product_name
  LIKE '_h%';

-- Example 1
SELECT
  product_name
FROM
  products
WHERE
  product_name
  LIKE 'Ch%';

-- Example 2
SELECT
  product_name
FROM
  products
WHERE
  product_name
  LIKE '%li%';

-- Example 3
SELECT
  product_name
FROM
  products
WHERE
  product_name
  LIKE '%fu%';

-- Not like
SELECT
  product_name
FROM
  products
WHERE
  product_name NOT LIKE '%Ch%' AND
  product_name NOT LIKE 'M%' AND
  product_name NOT LIKE '%cl%' AND
  product_name NOT LIKE '%Al%';

-- PostgreSQL provides the ILIKE operator that acts like the LIKE operator. In addition,
-- the ILIKE operator matches value case-insensitively. See the following example:
SELECT
  product_name
FROM
  products
WHERE
  product_name
  ILIKE 'ch%';

SELECT
  product_name
FROM
  products
WHERE
  product_name
  NOT ILIKE 'ch%';
