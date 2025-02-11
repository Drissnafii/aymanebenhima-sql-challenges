-- Active: 1738420746956@@127.0.0.1@3306@sql_practices
-- SELECT * FROM employees; --EmployeeID, LastName, related with orders ON EmployeeID (the Only external Link that user have) 

-- SELECT * FROM orderdetails; -- here is the OrderID => || now we need the "ProductName" 
        -- lets finde the ProductName here, 
        -- orderdetails(OrderID), (ProductID) ==> products(Productame)  
-- SELECT * FROM products; -- here is the ProductName now lets search the Quantity...
    -- lets think the product have a name and maybe a quantity ... 
    --  "because it declares that I need to Join 4 tables here" 
    -- there is no column with the name 'Quantity' => it may they would me 
    -- to make it as an alias ! now go ...

SELECT * FROM products;

SELECT 
    employees.`EmployeeID`, 
    employees.`LastName`,
    orders.`OrderID`,
    products.`ProductName`,
    products.`QuantityPerUnit` as Quantity
FROM 
    employees
JOIN 
    orders ON employees.`EmployeeID` = orders.`EmployeeID`
JOIN
    orderdetails ON orders.`OrderID` = orderdetails.`OrderID`
JOIN
    products ON products.`ProductID`  = orderdetails.`ProductID`

ORDER BY orders.OrderID, orderdetails.ProductID; 