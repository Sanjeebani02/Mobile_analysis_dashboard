
-- 1. Check mobile features and price list 
select Phone_name,Price from mobile_analysis;

-- 2. Find out the price of 5 most expensive phones
select Phone_name,Price from mobile_analysis
order by Price desc
limit 5;

-- 3. Find out the price of 5 most cheapest phones
select Phone_name,Price from mobile_analysis
order by Price asc
limit 5;

-- 4. List of top 5 samsung phones with price and all features
select * from mobile_analysis where Brands='Samsung'
order by Price desc
limit 5;

-- 5. Must have android phone list then top 5 high price android phones
select * from mobile_analysis where Operating_System_Type='Android'
order by Price desc
limit 5;

-- 6. Must have android phone list then top 5 lower price android phones
select * from mobile_analysis where Operating_System_Type='Android'
order by Price asc
limit 5;

-- 7. Must have IOS phone list then top 5 high price IOS phones
select * from mobile_analysis where Operating_System_Type='IOS'
order by Price desc
limit 5;

-- 8. Must have IOS phone list then top 5 lower price IOS phones
select * from mobile_analysis where Operating_System_Type='IOS'
order by Price asc
limit 5;

-- 9. Write a query which phone support 5g and also top 5 phone with 5g support
select * from mobile_analysis where 5G_Availability='Yes'
order by Price desc
limit 5;

-- 10. Total price of all mobile is to be found with brand name
select Brands, sum(Price) from mobile_analysis
group by Brands 
order by Brands;