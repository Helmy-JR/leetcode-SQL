# Write your MySQL query statement below

SELECT name AS Customers
FROM Customers
WHERE id NOT IN (select customerId FROM Orders);

-----------------------------------------------------
# Write your MySQL query statement below
    
SELECT name AS Customers
FROM Customers c
LEFT JOIN Orders o
    ON c.id = o.customerId
WHERE o.id IS NULL;
