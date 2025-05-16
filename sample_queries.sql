-- Get total revenue by region
SELECT Region, SUM(Amount) AS TotalRevenue
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Region;
