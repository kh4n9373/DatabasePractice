SELECT query_name, ROUND(SUM(rating/position)/COUNT(rating),2) as quality, 
ROUND(COUNT(CASE WHEN rating < 3 THEN 1 ELSE NULL END)/COUNT(rating)*100,2) as poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name
-- or
-- SELECT query_name, ROUND(AVG(rating/position),2) as quality, 
-- ROUND(COUNT(CASE WHEN rating < 3 THEN 1 ELSE NULL END)/COUNT(rating)*100,2) as poor_query_percentage
-- FROM Queries
-- WHERE query_name IS NOT NULL
-- GROUP BY query_name