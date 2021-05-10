-- Basket A
CREATE TABLE IF NOT EXISTS basket_a (
  id INT PRIMARY KEY,
  fruit VARCHAR(100) NOT NULL
);

-- Basket B
CREATE TABLE IF NOT EXISTS basket_b (
  id INT PRIMARY KEY,
  fruit VARCHAR(100) NOT NULL
);

-- Inserting values
INSERT INTO basket_a (id, fruit)
VALUES
  (1, 'Apple'),
  (2, 'Orange'),
  (3, 'Banana'),
  (4, 'Cucumber');

INSERT INTO basket_b (id, fruit)
VALUES
  (1, 'Orange'),
  (2, 'Apple'),
  (3, 'Watermelon'),
  (4, 'Pear');
