-- product || nbr_n order
SELECT * FROM products;

SELECT * FROM orders;

SELECT 
    products.ProductName,
    COUNT(orderdetails.`ProductID`) AS nbr_products
FROM 
    products 
    JOIN orderdetails ON products.`ProductID` = orderdetails.`ProductID`
    JOIN orders ON orders.`OrderID` = orderdetails.`OrderID`
    GROUP BY products.`ProductName`;


-- second exercice

SELECT 
    orderdetails.`OrderID`,
    orderdetails.`UnitPrice` total --we should quntiti * unit ....
 FROM orderdetails 
 GROUP BY orderdetails.`OrderID`;