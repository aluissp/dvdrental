-- Order by
SELECT
  first_name,
  last_name
FROM
  customer
ORDER BY
  first_name ASC;

-- Order by con expresiones
SELECT
  first_name,
  LENGTH(first_name) len
FROM
  customer
ORDER BY
  len DESC;

-- Clausula distinct
SELECT
  DISTINCT column1
FROM
  table_name;
