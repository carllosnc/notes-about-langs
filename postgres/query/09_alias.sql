-- http://www.postgresqltutorial.com/postgresql-alias/

-- A PostgreSQL alias assigns a table or a column a temporary name in a query.
-- The aliases only exist during the execution of the query.
SELECT
  product_name AS NOME_PRODUTO
FROM
  products;

-- Concat columns
SELECT
  product_id || ' => ' || product_name AS ID_AND_NAME
FROM
  products;

-- Table alias
SELECT
  product_name
FROM
  products AS PRODUTOS;
