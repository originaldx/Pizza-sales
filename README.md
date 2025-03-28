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











