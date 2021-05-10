-- http://www.postgresqltutorial.com/postgresql-union/

-- The UNION operator combines result sets of two or more SELECT statements into a single result set.
-- The following illustrates the syntax of the UNION operator that combines result sets from two queries:

SELECT
  'Category => ' || category_name AS CATEGORY_AND_REGION
FROM
  categories

UNION

SELECT
  'Region -> ' || region_description AS THE_DESCRIPTION
FROM
  region
ORDER BY CATEGORY_AND_REGION ASC;
