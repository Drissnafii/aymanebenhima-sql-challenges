
SELECT * FROM sql_practices.customers;


SELECT Country, city, COUNT(customers.CustomerID) Total
FROM sql_practices.customers
GROUP BY Country, city
ORDER BY Total DESC;