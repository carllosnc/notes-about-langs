-- http://www.postgresqltutorial.com/postgresql-alias/

-- A PostgreSQL alias assigns a table or a column a temporary name in a query.
-- The aliases only exist during the execution of the query.

use dvdrental;

SELECT
 film_id AS ID,
 title AS "Título",
 description AS "Descrição"
FROM
  film
LIMIT 10;
