-- http://www.postgresqltutorial.com/postgresql-where/

use dvdrental;

-- Using WHERE clause with the equal (=) operator example
SELECT first_name, last_name
FROM customer
WHERE first_name = 'Jamie';

-- Using WHERE clause with the AND operator example
SELECT first_name, last_name
FROM customer
WHERE first_name = 'Jamie' AND last_name = 'Rice';

-- Using WHERE clause with the OR operator example
SELECT first_name, last_name
FROM customer
WHERE last_name = 'Rodriguez' OR first_name = 'Adam';

-- Using WHERE clause with the IN operator example
SELECT first_name, last_name
FROM customer
WHERE first_name IN('Ann', 'Anne', 'Annie');

-- Using WHERE clause with LIKE operator example
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'Ann%';

-- Using WHERE clause with BETWEEN operator example
SELECT first_name, LENGTH(first_name) name_lenght
FROM customer
WHERE first_name LIKE 'A%' AND LENGTH(first_name) BETWEEN 3 AND 5;

-- Using the WHERE clause with the not equal operator <> example
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'Bra%' AND last_name <> 'Motley';
