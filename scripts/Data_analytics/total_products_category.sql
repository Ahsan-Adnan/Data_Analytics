--Find total products by category
SELECT
Category,
COUNT(product_key) AS total_products
FROM gold.dim_products
GROUP BY Category
ORDER BY total_products DESC
