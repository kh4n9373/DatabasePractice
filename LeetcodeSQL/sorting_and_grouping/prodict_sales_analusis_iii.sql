-- SELECT s.product_id, MIN(s.year) as first_year, s.quantity, s.price
-- FROM Sales s LEFT JOIN Product p ON (s.product_id = p.product_id)
-- GROUP BY s.product_id

SELECT product_id, year AS first_year, quantity, price
FROM Sales
WHERE (product_id, year) IN (
    SELECT product_id, MIN(year) as year
    FROM Sales
    GROUP BY product_id
);
