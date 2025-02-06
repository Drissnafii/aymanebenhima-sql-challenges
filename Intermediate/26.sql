SELECT 
    ShipCountry, 
    ROUND(AVG(Freight), 4) AS AverageFreight
FROM 
    Orders
WHERE
    YEAR(OrderDate) = 2015
GROUP BY ShipCountry
ORDER BY AverageFreight DESC
LIMIT 3;