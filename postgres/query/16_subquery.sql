-- http://www.postgresqltutorial.com/postgresql-subquery/

-- Example 0
SELECT
  product_id,
  product_name,
  unit_price
FROM
  products
WHERE unit_price > (
  SELECT
    AVG(unit_price)
  FROM
    products
);

-- Example 1
SELECT
  category_id,
  category_name
FROM
  categories
WHERE
  category_id IN (
    -- subquery
    SELECT
      products.category_id
    FROM
      order_details
    INNER JOIN
      products
      ON
      order_details.product_id = products.product_id
    INNER JOIN
      orders
      ON
      order_details.order_id = orders.order_id
    WHERE
      orders.order_date
      BETWEEN '1996-08-01' AND '1996-08-30'
  );
