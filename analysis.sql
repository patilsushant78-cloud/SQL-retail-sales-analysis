# Total Sales & Profit #
SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM orders;

# Sales by Region #
SELECT region, SUM(sales) AS sales
FROM orders
GROUP BY region
ORDER BY sales DESC;

#Top 10 Products by Sales #
SELECT product_name, SUM(sales) AS revenue
FROM orders
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;

# Profit by Category #
SELECT category, SUM(profit) AS total_profit
FROM orders
GROUP BY category
ORDER BY total_profit DESC;

# Most Valuable Customers #
SELECT customer_name, SUM(sales) AS total_spent
FROM orders
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;

# Discount Impact on Profit #
SELECT discount, SUM(profit) AS total_profit
FROM orders
GROUP BY discount
ORDER BY discount;

# Sales by Segment #
SELECT segment, SUM(sales) AS revenue
FROM orders
GROUP BY segment
ORDER BY revenue DESC;

