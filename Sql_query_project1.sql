CREATE TABLE retail_sale(
		transactions_id INT PRIMARY KEY,
		sale_date DATE,
		sale_time TIME,
		customer_id INT,
		gender VARCHAR(15),
		age INT,
		category VARCHAR(15),
		quantity INT,
		price_per_unit FLOAT,
		cogs FLOAT,
		total_sale FLOAT
		
);

SELECT *
FROM retail_sale;

SELECT COUNT(*)
FROM retail_sale;

SELECT *
FROM retail_sale
WHERE transactions_id IS NULL;

SELECT *
FROM retail_sale
WHERE sale_date IS NULL;

-- Data Cleaning

SELECT *
FROM retail_sale
WHERE sale_time IS NULL;

SELECT *
FROM retail_sale
WHERE 
	transactions_id IS NULL
	OR
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	customer_id IS NULL
	OR
	age IS NULL
	OR
	category IS NULL
	OR
	quantity IS NULL
	OR
	price_per_unit IS NULL
	OR
	cogs IS NULL
	OR
	total_sale IS NULL;

DELETE FROM retail_sale
WHERE 
	transactions_id IS NULL
	OR
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	customer_id IS NULL
	OR
	age IS NULL
	OR
	category IS NULL
	OR
	quantity IS NULL
	OR
	price_per_unit IS NULL
	OR
	cogs IS NULL
	OR
	total_sale IS NULL;



-- Data Exploration 
-- How many sales we have?


SELECT COUNT(*) as total_sale
FROM retail_sale;


-- question 1 How many customer we have?

SELECT COUNT(DISTINCT customer_id) as total_customer
FROM retail_sale;

-- question 2 Finde the unique category.

SELECT DISTINCT category
FROM retail_sale;


--  Data Analysis & Business Key Problem & Answer

-- question 3 write a sql query to retrieve all columns for sales made on 2022-11-05

SELECT *
FROM retail_sale
where sale_date = '2022-11-05';

-- Question 4 write a  to retrieve where category is 'clothing' and the quantity sold is more than 4 in month of nov 2022.

SELECT 
	*
FROM retail_sale
WHERE category = 'Clothing'
	AND 
	TO_CHAR(sale_date, 'yyyy-mm')= '2022-11'
	AND
	quantity >= 4;

-- 5 write a SQL query to calculate the total sales (total_sale) for each category.

SELECT category, 
	SUM(total_sale) as net_sale,
	COUNT(*) as total_order
	FROM retail_sale
GROUP BY 1;

-- 6 write a SQL query to find the average age of customers who purchsed item from the 'Beauty' category.

SELECT 
	AVG(age) as avg_age
FROM retail_sale
WHERE 
	category = 'Beauty';

-- 7 write a SQL query to find all transactions where the total_sale is greater than 100.

SELECT 
	*
FROM retail_sale
where 
	total_sale>100;

-- 8 write a SQL query to find the total number of transactions(transactions_id) made by each gender in each category

SELECT 
	category,
	gender,
	COUNT(*) as total_trans
FROM 
	retail_sale
GROUP BY 
	category, 
	gender
ORDER BY 1;

-- 9 write a SQL query to calculate the average sale for each for each month.Find out best selling month in each year.
SELECT 
	year,
	month,
	avg_sale
FROM
(
	SELECT 
		EXTRACT(year FROM sale_date)as year,
		EXTRACT(month FROM sale_date)as month,
		AVG(total_sale) as avg_sale,
		RANK() OVER(PARTITION BY EXTRACT(year FROM sale_date) ORDER BY AVG(total_sale)) as rnk
	FROM retail_sale
GROUP BY 1, 2) AS t1
WHERE rnk = 1;


--ORDER BY 1, 3 DESC;

-- 10 write a SQL query to find the top 5 customers based on the highest total sales.

SELECT 
	customer_id,
	sum(total_sale) as total_sale
FROM retail_sale
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

-- 11 0 write a SQL query to find the number of customers who purchased items from each category.

SELECT 
	category, 
	COUNT(DISTINCT customer_id) as cnt_unique_customer
FROM retail_sale 
GROUP BY category;



-- 12 10 write a SQL query to create each shift number of orders(example morning<=12, afternoon between 12 & 17, evening >17)

WITH hourly_sale 
AS
(SELECT *,
	CASE 
		WHEN EXTRACT (HOUR FROM sale_time) < 12  THEN 'Morning'
		WHEN EXTRACT (HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
		ELSE 'Evening'
	END as shift
FROM retail_sale
)
SELECT
	shift,
	COUNT(*) as total_orders
FROM hourly_sale
GROUP BY shift;


-- End of project.
	


	

SELECT *
FROM retail_sale;

