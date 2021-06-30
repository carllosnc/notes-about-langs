USE postgres;
DROP DATABASE IF EXISTS mytest;
CREATE DATABASE mytest;
USE mytest;

-- ==========================================

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL
);

CREATE TABLE departament(
  id SERIAL PRIMARY KEY,
  company VARCHAR(255) NOT NULL,
  phone VARCHAR(255) NOT NULL,
  address TEXT NOT NULL
);

CREATE TABLE departament_users(
  user_id INT NOT NULL,
  departament_id INT NOT NULL,

  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(departament_id) REFERENCES departament(id)
);

INSERT INTO users(name, email) VALUES
  ('Ellie', 'Tod41@gmail.com'),
  ('Vita', 'Dwight.Schuppe@gmail.com'),
  ('Derick', 'Kory77@hotmail.com');

INSERT INTO departament(company, phone, address) VALUES
  ('Inc', '866-371-0852', '73469 Jayme Summit'),
  ('LLC', '1-655-728-2196 x6011', '3705 Lou Meadow'),
  ('Group', '(707) 521-1786 x000', '88128 Powlowski Locks');

INSERT INTO departament_users(user_id, departament_id) VALUES
  /* 1 */
  ((SELECT id FROM users WHERE name = 'Ellie'), (SELECT id FROM departament WHERE company = 'Inc')),
  ((SELECT id FROM users WHERE name = 'Vita'), (SELECT id FROM departament WHERE company = 'Inc')),
  ((SELECT id FROM users WHERE name = 'Derick'), (SELECT id FROM departament WHERE company = 'Inc')),
  /* 2 */
  ((SELECT id FROM users WHERE name = 'Ellie'), (SELECT id FROM departament WHERE company = 'LLC')),
  ((SELECT id FROM users WHERE name = 'Vita'), (SELECT id FROM departament WHERE company = 'LLC')),
  ((SELECT id FROM users WHERE name = 'Derick'), (SELECT id FROM departament WHERE company = 'LLC')),
  /* 3 */
  ((SELECT id FROM users WHERE name = 'Ellie'), (SELECT id FROM departament WHERE company = 'Group')),
  ((SELECT id FROM users WHERE name = 'Vita'), (SELECT id FROM departament WHERE company = 'Group')),
  ((SELECT id FROM users WHERE name = 'Derick'), (SELECT id FROM departament WHERE company = 'Group'));

SELECT * FROM users;
SELECT * FROM departament;
SELECT * FROM departament_users;

-- ==========================================

USE postgres;
DROP DATABASE mytest;
