SELECT
  customer_id,
  rental_id,
  return_date
FROM
  rental
WHERE
  customer_id IN (1, 2)
ORDER BY
  return_date DESC;

-- Filtrando por fecha
SELECT
  customer_id
FROM
  rental
WHERE
  CAST (return_date AS DATE) = '2005-05-27'
ORDER BY
  customer_id;

-- Usando en una subconsulta
SELECT
  customer_id,
  first_name,
  last_name
FROM
  customer
WHERE
  customer_id IN (
    SELECT
      customer_id
    FROM
      rental
    WHERE
      CAST (return_date AS DATE) = '2005-05-27'
  )
ORDER BY
  customer_id;
