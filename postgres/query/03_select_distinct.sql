-- http://www.postgresqltutorial.com/postgresql-select-distinct/

USE postgres;
DROP DATABASE IF EXISTS mytest;
CREATE DATABASE mytest;
USE mytest;

-- ==========================================

CREATE TABLE distinct_demo(
	id SERIAL PRIMARY KEY NOT NULL,
	bcolor VARCHAR(255),
	fcolor VARCHAR(255)
);

INSERT INTO distinct_demo (bcolor, fcolor) VALUES
	('red', 'red'),
	('red', 'red'),
	('red', NULL),
	(NULL, 'red'),
	('red', 'green'),
	('red', 'blue'),
	('green', 'red'),
	('green', 'blue'),
	('green', 'green'),
	('blue', 'red'),
	('blue', 'green'),
	('blue', 'blue');

SELECT id, bcolor, fcolor FROM distinct_demo;

-- distinct one column
SELECT DISTINCT bcolor 
FROM distinct_demo
ORDER BY bcolor;

-- distinct multiple column
SELECT DISTINCT bcolor, fcolor
FROM distinct_demo
ORDER BY bcolor, fcolor;

-- distinct on
SELECT DISTINCT ON (bcolor) bcolor, fcolor
FROM distinct_demo
ORDER BY bcolor, fcolor;

-- ==========================================

USE postgres;
DROP DATABASE mytest;
