# Write your MySQL query statement below
SELECT p.product_name, SUM(unit) AS unit
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id
WHERE O.order_date LIKE '%2020-02-%'
GROUP BY p.product_id
HAVING SUM(unit) >= 100
