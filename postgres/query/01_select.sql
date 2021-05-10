-- http://www.postgresqltutorial.com/postgresql-select/

-- Select all columns
SELECT
  *
FROM categories;

-- Select one column
SELECT
  category_name
FROM categories;

-- Select multiple columns
SELECT
  category_id,
  category_name
FROM categories;

-- Select with expression example
-- In this example, we used the concatenation operator ||
SELECT
  category_id  || '->' || category_name AS full_name
FROM categories;
