USE postgres;
DROP DATABASE IF EXISTS mytest;
CREATE DATABASE mytest;
USE mytest;

-- ==========================================

CREATE TABLE users(
  id SERIAL PRIMARY KEY UNIQUE NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL
);

CREATE TABLE cars(
  id SERIAL PRIMARY KEY UNIQUE NOT NULL,
  model VARCHAR(255) NOT NULL,
  year INT NOT NULL,

  user_id INT,
  FOREIGN KEY(user_id) REFERENCES users(id)
);

INSERT INTO users(name, email) VALUES
  ('Jacquelyn', 'Heaven.Bosco@yahoo.com'),
  ('Augusta', 'Arch.Aufderhar73@yahoo.com'),
  ('Thurman', 'Filiberto84@yahoo.com');

INSERT INTO cars(model, year, user_id) VALUES
  ('Gol', 2000, (SELECT id FROM users WHERE name = 'Jacquelyn')),
  ('Pálio', 2001, (SELECT id FROM users WHERE name = 'Augusta')),
  ('Golf', 2002, NULL);

/* Left join */
SELECT * FROM cars
  LEFT JOIN users
  ON users.id = cars.user_id;

/* Right join */
SELECT * FROM cars
  RIGHT JOIN users
  ON users.id = cars.user_id;

/* Inner join */
SELECT * FROM cars
  INNER JOIN users
  ON users.id = cars.user_id;

/* Full outer join */
SELECT * FROM cars
  FULL OUTER JOIN users
  ON users.id = cars.user_id;

/* Natural join */
SELECT * FROM cars
  NATURAL JOIN users;

-- ==========================================

USE postgres;
DROP DATABASE mytest;
