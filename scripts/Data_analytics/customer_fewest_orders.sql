-- The 3 customers with the fewest orders placed
SELECT TOP 3
c.customer_key,
c.first_name,
c.last_name,
COUNT (DISTINCT order_number) AS total_orders
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON c.customer_key = f.customer_key
GROUP BY
c.customer_Key,
c.first_name,
c.last_name
ORDER BY total_orders 
