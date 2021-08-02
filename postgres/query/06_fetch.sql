-- http://www.postgresqltutorial.com/postgresql-fetch/

-- retrieve a portion of rows returned by a query.

use dvdrental;

-- The following query use the FETCH clause to select the first film sorted by titles in ascending order:
SELECT
  film_id,
  title
FROM
  film
ORDER BY
  title
FETCH FIRST ROW ONLY;

-- It is equivalent to the following query:
SELECT
  film_id,
  title
FROM
  film
ORDER BY
  title
FETCH FIRST 1 ROW ONLY;

-- Another example
SELECT
  film_id,
  title
FROM
  film
ORDER BY
  title
FETCH FIRST 10 ROW ONLY;
