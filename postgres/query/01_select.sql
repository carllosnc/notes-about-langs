-- http://www.postgresqltutorial.com/postgresql-select/

use dvdrental;

SELECT * FROM actor;

SELECT first_name, last_name FROM actor;

SELECT first_name || ' -> ' || last_name AS full_name, email FROM customer;
