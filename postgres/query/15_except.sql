-- http://www.postgresqltutorial.com/postgresql-tutorial/postgresql-except/

-- To combine the queries using the EXCEPT operator, you must obey the following rules:
-- (1) The number of columns and their orders must be the same in the two queries.
-- (2) The data types of the respective columns must be compatible.

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
EXCEPT
SELECT
  fruit
FROM
  basket_b;
