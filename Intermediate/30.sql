SELECT
    `Customers`.`CustomerID`,
    `Orders`.`OrderID`
FROM
    orders
INNER JOIN
    customers
WHERE customers.`CustomerID` = 'PARIS';