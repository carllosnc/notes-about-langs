USE postgres;
DROP DATABASE IF EXISTS mytest;
CREATE DATABASE mytest;
USE mytest;

-- ==========================================

DROP TABLE IF EXISTS orders;

CREATE TABLE orders(
  id SERIAL NOT NULL PRIMARY KEY,
  info json NOT NULL
);

INSERT INTO orders(info) VALUES
  ('{"customer": "Abigayle_Weissnat32", "items": {"product": "Small Granite Cheese","quantity": 58412}}'),
  ('{"customer": "Bo49", "items": {"product": "Licensed Steel Pizza","quantity": 8280}}'),
  ('{"customer": "Johnny.Hane", "items": {"product": "Incredible Frozen Chips","quantity": 30836}}');

SELECT * FROM orders;
SELECT info -> 'customer' AS customer FROM orders;

-- ==========================================

USE postgres;
DROP DATABASE mytest;
