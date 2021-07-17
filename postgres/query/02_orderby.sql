-- http://www.postgresqltutorial.com/postgresql-order-by/

-- Acendenting 0 -> 10
SELECT first_name, last_name
FROM customer
ORDER BY first_name ASC
LIMIT 20;

-- Descendenting 10 -> 0
SELECT first_name, last_name
FROM customer
ORDER BY first_name DESC
LIMIT 20;

-- Multiple colunms
SELECT first_name, last_name
FROM customer
ORDER BY
  first_name ASC,
  last_name DESC
LIMIT 20;

-- Expression
SELECT first_name, LENGTH(first_name) len
FROM customer
ORDER BY len DESC
LIMIT 20;
