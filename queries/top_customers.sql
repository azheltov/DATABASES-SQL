SELECT c.Name, SUM(o.Amount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY TotalSpent DESC
LIMIT 5;
