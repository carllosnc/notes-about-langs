USE postgres;
DROP DATABASE IF EXISTS mytest;
CREATE DATABASE mytest;
USE mytest;

-- ==========================================

CREATE TABLE users(
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL
);

CREATE TABLE cars(
  id SERIAL PRIMARY KEY NOT NULL,
  model VARCHAR(255) NOT NULL,
  age SMALLINT NOT NULL,

  user_id INT UNIQUE,
  FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE SET NULL
);

INSERT INTO users(name, email) VALUES
  ('Anderson', 'Unique.Oberbrunner65@gmail.com'),
  ('Cassandre', 'Nelle_Waters@gmail.com'),
  ('Roscoe', 'Aniya_Friesen@hotmail.com'),
  ('Tomas', 'Ashtyn.Kris@hotmail.com');

INSERT INTO cars(model, age, user_id) VALUES
  ('GOL', 1990, (SELECT id FROM users WHERE name = 'Anderson')),
  ('GOLF', 1991, (SELECT id FROM users WHERE name = 'Cassandre')),
  ('Palio', 1992, (SELECT id FROM users WHERE name = 'Roscoe')),
  ('Chevete', 1993, (SELECT id FROM users WHERE name = 'Tomas'));

SELECT * FROM cars;

DELETE FROM users WHERE name = 'Anderson';

SELECT * FROM users;
SELECT * FROM cars;

-- ==========================================

USE postgres;
DROP DATABASE mytest;
