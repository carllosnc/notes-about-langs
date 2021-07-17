USE postgres;
DROP DATABASE IF EXISTS mytest;
CREATE DATABASE mytest;
USE mytest;

-- ==========================================

CREATE TYPE COLORS AS ENUM ('red', 'green', 'blue');

CREATE TABLE car(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  color COLORS NOT NULL,
  year SMALLINT NOT NULL,

  -- unique constraint
  UNIQUE(name, color)
);

INSERT INTO car(name, color, year) VALUES
  ('Gol', 'red', 2000),
  ('Golf', 'green', 2001),
  ('Golf', 'red', 2003),
  ('Palio', 'blue', 2005);
  -- ('Golf', 'red', 2004), // error

SELECT * FROM car;

-- ==========================================

USE postgres;
DROP DATABASE mytest;
