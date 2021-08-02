-- http://www.postgresqltutorial.com/postgresql-like/

-- Percent ( %)  for matching any sequence of characters.
-- Underscore ( _)  for matching any single character.

use dvdrental;

SELECT
  first_name,
  last_name
FROM
  customer
WHERE
  first_name LIKE 'jen%';

