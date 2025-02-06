SELECT 
    Country,
    City, 
    COUNT(`CustomerID`) AS TotalCustomer
FROM Customers
GROUP BY `City`, `Country` 
ORDER BY TotalCustomer DESC