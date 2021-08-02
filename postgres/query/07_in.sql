-- http://www.postgresqltutorial.com/postgresql-in/

use dvdrental;

-- IN operator
-- You use IN operator in the WHERE clause to check if a value matches any value in a list of values.

SELECT
  customer_id,
  rental_id,
  return_date
FROM
  rental
WHERE
  customer_id IN (1, 2)
ORDER BY
  return_date DESC;

-- NOT IN operator
-- You can combine the IN operator with the NOT operator to select rows whose values do not match the values in the list.

SELECT
  customer_id,
  rental_id,
  return_date
FROM
  rental
WHERE
  customer_id NOT IN(1, 2);
