SELECT 
    CategoryName,
    COUNT(`ProductID`) AS TotalProducts
FROM products  p 
JOIN categories c
ON p.`CategoryID` = c.`CategoryID`
GROUP BY CategoryName 
ORDER BY TotalProducts DESC;

SELECT *
FROM categories
WHERE CategoryName = 'Condiments';