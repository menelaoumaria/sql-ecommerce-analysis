-- Which months perform the best in terms of total revenue? --
Select DATE_TRUNC('month', o.order_date) as month, SUM(p.price * o.quantity) as total_revenue 
FROM orders_1 as o
JOIN customers_1 as c 
ON c.customer_id = o.customer_id
JOIN products_1 as p 
ON p.product_id = o.product_id
GROUP BY month
ORDER BY total_revenue DESC;

-- Which products made the most revenue? --
Select p.product_name, SUM(p.price * o.quantity) as product_revenue 
FROM orders_1 as o
JOIN products_1 as p 
ON p.product_id = o.product_id
GROUP BY product_name
ORDER BY product_revenue DESC;


-- What percentage of the total revenue does each category bring? --
SELECT p.category, SUM(p.price * o.quantity) AS category_revenue,
SUM(p.price * o.quantity) * 100.0 
/ SUM(SUM(p.price * o.quantity)) OVER () AS revenue_percentage
FROM orders_1 o
JOIN products_1 p 
ON p.product_id = o.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;

--Percentace of total revenue for the top 10 customers --
SELECT c.customer_id, SUM(p.price * o.quantity) AS revenue,
SUM(p.price * o.quantity) * 100.0 
/ SUM(SUM(p.price * o.quantity)) OVER () AS revenue_percentage
FROM orders_1 o
JOIN customers_1 c 
ON c.customer_id = o.customer_id
JOIN products_1 p 
ON p.product_id = o.product_id
GROUP BY c.customer_id
ORDER BY revenue DESC
LIMIT 10;


--Average order per customer --
SELECT AVG(order_count) AS avg_orders_per_customer
FROM (
SELECT customer_id,COUNT(order_id) AS order_count
FROM orders_1
GROUP BY customer_id
) orders_2;

-- Revenue per loyalty and non-loyalty customers --
SELECT c.loyalty_member, SUM(p.price * o.quantity) AS revenue
FROM orders_1 o
JOIN customers_1 c 
ON c.customer_id = o.customer_id
JOIN products_1 p 
ON p.product_id = o.product_id
GROUP BY c.loyalty_member;
