USE quanlybanhang;

SELECT orders.order_id, order_date ,SUM(price * quantity) AS "Total Price"
FROM orders INNER JOIN orderdetails
ON orders.order_id = orderdetails.order_id
INNER JOIN products
ON orderdetails.product_id = products.product_id
GROUP BY orders.order_id;

SELECT c.customer_name, p.product_name, o.order_date
FROM customers c INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN orderdetails od
ON o.order_id = od.order_id
INNER JOIN products p
ON od.product_id = p.product_id;

SELECT c.customer_name
FROM customers c LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;