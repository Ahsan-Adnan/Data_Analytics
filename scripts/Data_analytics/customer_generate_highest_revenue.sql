--Find the top 10 customers who have genreated the highest revenue
SELECT TOP 10
c.customer_key,
c.first_name,
c.last_name,
SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON c.customer_key = f.customer_key
GROUP BY
c.customer_Key,
c.first_name,
c.last_name
ORDER BY total_revenue DESC
