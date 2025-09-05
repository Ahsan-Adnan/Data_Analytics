--Find the Total Sales
SELECT SUM(sales_amount) AS total_sales FROM gold.fact_sales
--Find how many items are sold
SELECT SUM(quantity) AS total_quantity FROM gold.fact_sales
--Find the average selling price
SELECT AVG(Price) AS avg_price FROM gold.fact_sales
--Find the Total number of Orders
SELECT COUNT(order_number) AS total_orders FROM gold.fact_sales
SELECT COUNT(DISTINCT order_number) AS total_orders FROM gold.fact_sales
--Find the Total number of products
SELECT COUNT(product_name) AS total_products FROM gold.dim_products
SELECT COUNT(DISTINCT product_name) AS total_products FROM gold.dim_products
--Find thetotal number of customers
SELECT COUNT (customer_key) AS total_customers FROM gold.dim_customers
--Find the total number of customers that has placed an order
SELECT COUNT(DISTINCT customer_key) AS total_customers FROM gold.fact_sales
