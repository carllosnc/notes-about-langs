USE postgres;
DROP DATABASE IF EXISTS mytest;
CREATE DATABASE mytest;
USE mytest;

-- ==========================================

DROP TABLE IF EXISTS products;
DROP TYPE IF EXISTS PRODUCT;

CREATE TYPE PRODUCT AS (
  product_name VARCHAR(255),
  description TEXT,
  price NUMERIC
);

CREATE TABLE IF NOT EXISTS products(
  id SERIAL UNIQUE NOT NULL PRIMARY KEY,
  item PRODUCT NOT NULL
);

INSERT INTO products(item) VALUES
  (('Sleek Steel Towels', 'At perferendis aut reiciendis praesentium.', 988.00)),
  (('Generic Cotton Fish', 'Totam sit ab architecto incidunt est unde.', 710.00)),
  (('Small Fresh Chair', 'Mollitia laudantium eos atque magnam dolorum.', 351.00));

SELECT * FROM products;
SELECT (item).product_name FROM products;
SELECT (item).description FROM products;
SELECT (item).price FROM products;

-- ==========================================

USE postgres;
DROP DATABASE mytest;
