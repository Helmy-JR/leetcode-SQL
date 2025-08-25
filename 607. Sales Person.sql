# Write your MySQL query statement below
SELECT name FROM SalesPerson 
WHERE sales_id NOT IN (
    SELECT sales_id FROM Orders
    JOIN Company on Company.com_id = Orders.com_id
    WHERE Company.name = "RED"
)
