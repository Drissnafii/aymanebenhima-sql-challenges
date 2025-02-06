 SELECT MAX(OrderDate) FROM Orders;

--  SELECT YEAR(MAX(OrderDate)) - 1 FROM Orders;

SELECT
     DATE_ADD(MAX(OrderDate) ,INTERVAL -12 MONTH) -- year -1
FROM Orders;

SELECT 
    ShipCountry,
    ROUND(AVG(Freight), 4) AS AverageFreight
    -- MAX(OrderDate) 
FROM Orders
WHERE `OrderDate` >= DATE_SUB((SELECT MAX(OrderDate) FROM orders), INTERVAL 1 YEAR)
GROUP BY ShipCountry
ORDER BY AverageFreight DESC
LIMIT 3;

