SELECT p.product_id, COALESCE(ROUND(SUM(p.price*u.units)/SUM(u.units),2),0) as average_price
FROM Prices p LEFT JOIN UnitsSold u ON u.purchase_date >= p.start_date AND u.purchase_date <= p.end_date AND p.product_id = u.product_id
GROUP BY p.product_id