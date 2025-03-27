------View all tables 
--select * 
--from PIZZASALES_DB..pizza_sales

------TO CHECK IF THE DATA WAS IMPORTED WELL 
--SELECT TOP 5*
-- FROM PIZZASALES_DB..pizza_sales

-- SELECT PIZZA_ID,QUANTITY
-- FROM PIZZASALES_DB..pizza_sales


------Total Revenue
--Select ROUND (sum(total_price),0) as Total_Revenue
--from PIZZASALES_DB..pizza_sales

------Total pizza sold
--select sum(quantity) as Total_pizza_sold
--from PIZZASALES_DB..pizza_sales

------Total orders
--select count(distinct order_id) as Total_orders
--from PIZZASALES_DB..pizza_sales

------Average order value
--select Round (sum(total_price),0) as Total_revenue,count(distinct(order_id)) as total_orders,
--       Round (round(sum(total_price),0)/count(distinct(order_id)),0) as average_order_id
--from PIZZASALES_DB..pizza_sales

------Monthly trend
--select DATENAME(MONTH, order_date) as Month_day,
--count (distinct(order_id)) as total_order
--from PIZZASALES_DB..pizza_sales
--group by datename(MONTH,order_date)
--order by total_order desc

------Percentage of sales by pizza category
--select pizza_category,
--Round(sum(total_price)*100/ (select(sum(total_price))
--from PIZZASALES_DB..pizza_sales),0) as Pizza_sales
--from PIZZASALES_DB..pizza_sales
--group by pizza_category
--order by pizza_sales

------percentage of sales by pizza size
--Select pizza_size,
--round(sum(total_price)*100/ (select(sum(total_price))
--from PIZZASALES_DB..pizza_sales),0) as percentage
--from PIZZASALES_DB..pizza_sales
--group by pizza_size
--order by percentage

------Top 5 pizza by quantity
--select top 5 pizza_name_id,round(sum(quantity),0) as Total_quantity
--from PIZZASALES_DB..pizza_sales
--group by pizza_name_id
--order by Total_quantity desc

------Bottom 5 pizza by quantity
--select top 5 pizza_name_id,round(sum(quantity),0) as Total_quantity
--from PIZZASALES_DB..pizza_sales
--group by pizza_name_id
--order by Total_quantity 

------Top 5 pizza by order
----select top 5 pizza_name_id,count(distinct(order_id)) as Total_order
----from PIZZASALES_DB..pizza_sales
----group by pizza_name_id
----order by Total_order desc

------Bottom 5 pizza by order
--select top 5 pizza_name_id,count(distinct(order_id)) as Total_order
--from PIZZASALES_DB..pizza_sales
--group by pizza_name_id
--order by Total_order 

------Top 5 pizza by revenue
--select top 5 pizza_name_id,round(sum(total_price),0) as total_revenue
--from PIZZASALES_DB..pizza_sales
--group by pizza_name_id
--order by total_revenue desc

------Bottom 5 pizza by revenue
--select top 5 pizza_name_id,round(sum(total_price),0) as total_revenue
--from PIZZASALES_DB..pizza_sales
--group by pizza_name_id
--order by total_revenue 

------Popular pizza categories
--select pizza_category, count(*) as total_orders
--from PIZZASALES_DB..pizza_sales
--group by pizza_category
--order by total_orders


------Total sales for each pizza
--select pizza_name, round(sum(total_price),0) as total_sales
--from PIZZASALES_DB..pizza_sales
--group by pizza_name 
--ORDER BY total_sales DESC


----Busiest order dates and time
--select
--     order_date,
--	 order_time,
--	 count(order_id) as order_count
--from
--    PIZZASALES_DB..pizza_sales
--group by order_date, order_time
--order by order_count desc


------Ingredient Analysis
--select
--     pizza_name,
--	 pizza_ingredients
--from PIZZASALES_DB..pizza_sales

------Price distribution by pizza size
--select pizza_size,
--       round(min(unit_price),2) as min_price,
--	   round(max(unit_price),2) as max_price,
--	   round(avg(unit_price),2) as avg_price
--from PIZZASALES_DB..pizza_sales
--group by pizza_size