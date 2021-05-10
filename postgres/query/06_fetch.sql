-- http://www.postgresqltutorial.com/postgresql-fetch/

-- retrieve a portion of rows returned by a query.

-- only one
SELECT
  *
FROM
  products
OFFSET 10
FETCH FIRST ROW ONLY;

-- multiple
SELECT
  *
FROM
  products
OFFSET 10
FETCH FIRST 20 ROW ONLY;
