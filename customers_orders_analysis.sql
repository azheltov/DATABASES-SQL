-- Customers table
CREATE TABLE Customers (
    customer_id INT,
    name VARCHAR(100)
);

-- Orders table
CREATE TABLE Orders (
    order_id INT,
    customer_id INT,
    amount DECIMAL(10, 2)
);

-- Sample data
INSERT INTO Customers VALUES (1, 'Alice'), (2, 'Bob'), (3, 'Charlie');
INSERT INTO Orders VALUES 
(101, 1, 250),
(102, 2, 300),
(103, 1, 150),
(104, 3, 200);

-- Query: total order amount per customer
SELECT c.name, SUM(o.amount) AS total_spent
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;
