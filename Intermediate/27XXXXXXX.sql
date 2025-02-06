SELECT orders.`OrderDate`, orders.`ShipCountry` oc
FROM orders
WHERE ShipCountry = 'France'
ORDER BY `OrderDate`;

SELECT 
    orders.`CustomerID`,
    orders.`ShipCountry`,
    orders.`OrderDate`
WHERE 
    OrderDate = '2015-12-31'
    AND `ShipCountry` = 'France'
FROM orders
LIMIT 100;