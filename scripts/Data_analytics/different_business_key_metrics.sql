--GENERATE a reportthat shows sll key metrics of the business
SELECT 'Total Sales' AS measure_name , SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Qunatity' , SUM(quantity) FROM gold.fact_sales
UNION ALL
SELECT 'AVERAGE Price', AVG(Price) FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr.Orders', COUNT(DISTINCT order_number) FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr.Products' , COUNT(product_name) FROM gold.dim_products
UNION ALL
SELECT 'Total Nr.Customers',COUNT(customer_key) FROM gold.dim_customers
