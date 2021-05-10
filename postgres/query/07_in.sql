-- http://www.postgresqltutorial.com/postgresql-in/

-- IN operator
SELECT
  *
FROM
  products
WHERE
  category_id
IN
  (1,2);

-- NOT IN operator
SELECT
  *
FROM
  products
WHERE
  category_id
NOT IN
  (3, 4, 5);
