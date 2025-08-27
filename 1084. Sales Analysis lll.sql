SELECT Sales.product_id,Product.product_name 
FROM Sales 
JOIN Product ON Sales.product_id = Product.product_id
GROUP BY Sales.product_id, Product.product_name
HAVING MIN(Sales.sale_date) >= '2019-01-01'AND MAX(Sales.sale_date) <= '2019-03-31';
