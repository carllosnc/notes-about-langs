-- http://www.postgresqltutorial.com/postgresql-limit/

-- PostgreSQL LIMIT is an optional clause of the SELECT statement
-- that returns a subset of rows returned by the query.
SELECT
  *
FROM
  products
LIMIT 20;

-- In case you want to skip a number of rows before returning the n rows,you use
-- OFFSET clause placed after the LIMIT clause as the following statement:
SELECT
  *
FROM
  products
LIMIT 20 OFFSET 29
