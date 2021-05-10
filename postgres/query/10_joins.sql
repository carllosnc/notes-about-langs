-- http://www.postgresqltutorial.com/postgresql-joins/

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

-- Inner join
SELECT
  a.id || ' => ' || a.fruit AS fruits_A,
  b.id || ' => ' || b.fruit AS fruits_B
FROM
  basket_a AS a
INNER JOIN
  basket_b AS b
ON a.fruit = b.fruit;

-- Left join
SELECT
  a.id || ' => ' || a.fruit AS fruits_A,
  b.id || ' => ' || b.fruit AS fruits_B
FROM
  basket_a AS a
LEFT JOIN
  basket_b As b
ON a.fruit = b.fruit;

-- Rigth join
SELECT
  a.id || ' => ' || a.fruit AS fruits_A,
  b.id || ' => ' || b.fruit AS fruits_B
FROM
  basket_a AS a
RIGHT JOIN
  basket_b AS b
ON a.fruit = b.fruit;

-- Full outer join
SELECT
  a.id || ' => ' || a.fruit AS fruits_A,
  b.id || ' => ' || b.fruit AS fruits_B
FROM
  basket_a AS a
FULL JOIN
  basket_b AS b
ON a.fruit = b.fruit;

-- Cross join
SELECT
  a.id || ' => ' || a.fruit AS fruits_A,
  b.id || ' => ' || b.fruit AS fruits_B
FROM
  basket_a AS a
CROSS JOIN
  basket_b AS b;

-- Natural join
SELECT
  a.id || ' => ' || a.fruit AS fruits_A,
  b.id || ' => ' || a.fruit AS fruits_B
FROM
  basket_a AS a
NATURAL JOIN
  basket_b AS b;
