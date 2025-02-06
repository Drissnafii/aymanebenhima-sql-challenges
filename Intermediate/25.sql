SELECT 
    ShipCountry,
    ROUND(AVG(Freight), 4) AS AverageFreight
FROM Orders 
GROUP BY `ShipCountry`
ORDER BY AverageFreight DESC
LIMIT 3