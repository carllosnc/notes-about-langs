-- http://www.postgresqltutorial.com/postgresql-limit/

use dvdrental;

-- Using PostgreSQL LIMIT to constrain the number of returned rows example

SELECT
  film_id,
  title,
  release_year
FROM
  film
ORDER BY
  film_id
LIMIT 5;

--Using OFFSET

SELECT
  film_id,
  title,
  release_year
FROM
  film
ORDER BY
  film_id
LIMIT 4 OFFSET 3;
