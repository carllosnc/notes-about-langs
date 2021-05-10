-- http://www.postgresqltutorial.com/postgresql-intersect/

-- TABLE 1
---------------
-- Apple
-- Orange
-- Banana
-- Cucumber

-- TABLE 2
---------------
-- Orange
-- Apple
-- Watermelon
-- Pear

SELECT
  fruit
FROM
  basket_a
INTERSECT
SELECT
  fruit
FROM
  basket_b;
