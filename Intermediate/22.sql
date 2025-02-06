SELECT 
    ProductID,
    ProductName,
    UnitsInStock,
    ReorderLevel

FROM products
WHERE `UnitsInStock` < `ReorderLevel`; 