--Find the date of the first and last order
SELECT
MIN(order_date) AS first_order_date,
MAX(order_date) AS last_order_date,
DATEDIFF(year,MIN(order_date),MAX(order_date)) AS order_range_years
FROM gold.fact_sales
