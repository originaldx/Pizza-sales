# Pizza Sales Analysis with SQL and Power Bi
# OVERVIEW
Pizza, the ultimate comfort food, has become a staple in the global culinary landscape. As pizzerias continue to thrive, it’s crucial for businesses to harness the power of data analytics to optimize their offerings and understand customer preferences. In this article, we’ll dive into the world of pizza sales, using SQL to analyze a dataset encompassing various aspects of the pizza ordering process. Imagine a pizza company wondering how well they’re doing. That’s where SQL steps in 
SQL stands for ‘structured query language’. It’s a programming language used to manage and manipulate data stored in relational database.
Steps for pizza sales Analysis.
1.	Data collection: This explaining how we sourced the pizza sales dataset for analysis, the structure and the key attributes of our dataset.
2.	Data cleaning: This involves steps taken to clean the data set and ensure its quality and reliability. The techniques used for handling missing values, standardizing formats, and cleaning inconsistent data.
3.	Business questions: For deeper analysis, where the advanced SQL functions, window functions, will be used to derive insights beyond standard queries.
4.	Insights and Recommendations: Summarize the key insights derived from the analysis. Discuss actionable recommendations based on SQL-driven insights for enhancing operations optimizing sales 
5.	Conclusion : what pizza the pizza company 


# 1.Data collection
I previewed this dataset, After doing this I proceed to opening my MS SQL and created a database for pizza sales data –“PIZZASALES_DB”.

![fig 1 ](https://github.com/originaldx/Pizza-sales/blob/main/P%201.png)

Next I proceed to import my data into the “PIZZASALES_DB” database:
         “CLICK ON PIZZASALES_DB->TASK->IMPORT FLAT FILE->BROWSE FOR MY DATA AND IMPORT”
While importing the data, I changed some data types to ensure they were compatible with my queries. I changed the data types from nvarchar(50) to varchar(50) for columns that contained text vales, such as pizza  name id, pizza category, pizza size, and customer name. I did this because nvarchar(50) uses more storage space than varchar(50) and can affect the performance and accuracy of my queries. And I also changed the data type from tinyint to int for the quantity column, because tinyint can only store values from 0 to 255 and int can store more.

![fig 2](https://github.com/originaldx/Pizza-sales/blob/main/P%202.png)

# 2.DATA CLEANING
Observing the dataset, I checked the first 5 rows to make sure its imported well and all columns have the right header  

![fig 3](https://github.com/originaldx/Pizza-sales/blob/main/P%203.png).

  # 3.Business questions  
    
## DATA ANALYSIS
  Now that I have the data ready, I can now start writing some queries like.
1. Total revenue
2. Total pizza sold
3. Total order
4. Average order value
5. onthly sales trend
6. percentage of sales by pizza categories and size
7. Top 5 and bottom 5 pizza by revenue, quantity, and orders
8. popular pizza categories
9. total sales for each pizza 
10. busiest order dates and times 
11. ingredients analysis for specific pizzas
12. Price distribution by pizza size 



Total revenue: To calculate the total revenue, I can sum the Total price column from the pizza sales table. Here is the query that I used: 
![fig 4](https://github.com/originaldx/Pizza-sales/blob/main/P%204.png).

![fig 5](https://github.com/originaldx/Pizza-sales/blob/main/P%205.png).

The result shows that the total revenue of the pizza company is $817,860. This is an important metric that tells us how much money the pizza company has made from its sales.

TOTAL PIZZA SOLD: To calculate total pizza sold, I sum up the quantity column from the pizza table. This is the query I used :

![fig 6](https://github.com/originaldx/Pizza-sales/blob/main/P%206.png).

![fig 7](https://github.com/originaldx/Pizza-sales/blob/main/P%207.png).

TOTAL ORDERS: To calculate total orders, I can simply count distinct order ID  column from the pizza table. This is the query I used: 
![fig 8](https://github.com/originaldx/Pizza-sales/blob/main/P%208.png).

![fig 9](https://github.com/originaldx/Pizza-sales/blob/main/P%209.png).

Average order values: The average order value is the total revenue divided by the number of orders. Here is the query that I used: 

![fig 10](https://github.com/originaldx/Pizza-sales/blob/main/P%2010.png).

MONTHLY TREND: to get this analysis, I can use the DATENAME function to extract the month  name from the order date column and the group them. Here are the Queries used:

![fig 11](https://github.com/originaldx/Pizza-sales/blob/main/P%2011.png).

Percentage of sales by pizza category and size: I can use the sum and group by functions to calculate the total revenue for each prize category and size, and then divide them by the total revenue of the whole table. Here are the queries I used:



















