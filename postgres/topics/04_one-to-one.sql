USE postgres;
DROP DATABASE IF EXISTS mytest;
CREATE DATABASE mytest;
USE mytest;

-- ==========================================

DROP TABLE IF EXISTS users, cars;

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL
);

CREATE TABLE cars(
  id SERIAL PRIMARY KEY,
  model VARCHAR(255) NOT NULL,
  year INT NOT NULL DEFAULT date_part('year', now()),

  -- constraint to just one car
  user_id INT UNIQUE,

  -- foreigh
  FOREIGN KEY(user_id) REFERENCES users(id)
);

INSERT INTO users (name, email) VALUES
  ('Maritza', 'Darrel89@hotmail.com'),
  ('Patsy', 'Rashawn54@gmail.com'),
  ('Madisyn', 'Kian92@yahoo.com');

INSERT INTO cars(model, year, user_id) VALUES
  ('molestias', 84932, (SELECT id FROM users WHERE name = 'Maritza')),
  ('in', 18045, (SELECT id FROM users WHERE name = 'Patsy')),
  ('nisi', 3152, (SELECT id FROM users WHERE name = 'Madisyn'));

SELECT * FROM users;
SELECT * FROM cars;

-- ==========================================

USE postgres;
DROP DATABASE mytest;
