create schema advancedpowerbi;
use advancedpowerbi;
select * from mobile;

-- check mobile features and price list--
select phone_name, price from mobile;

-- price of 5 most expensive phones--
select * from mobile
order by price desc
limit 5;

-- price of 5 most cheapest phones--
select * from mobile
order by price asc
limit 5;

-- 5 samsung phones with price and all features--
select * from mobile where brands = "samsung"
order by price desc
limit 5;

-- Must have android phone list then top 5 high price android phones--
select * from mobile where Operating_System_Type = "Android"
order by price desc
limit 5;

-- Must have android phone list then top 5 lower price android phones--
select * from mobile where Operating_System_Type = "Android"
order by price asc
limit 5;

-- Must have IOS phone list then top 5 high price IOS phones--
select * from mobile where Operating_System_Type = "iOS"
order by price desc
limit 5;

-- Must have IOS phone list then top 5 lower price IOS phones--
select * from mobile where Operating_System_Type = "iOS"
order by price asc
limit 5;

-- Support 5G and also top 5 phones with 5G support--
select * from mobile where 5G_Availability = "Yes"
order by price desc
limit 5;

-- Total price of all mobile with brand name--
select brands, sum(price) from mobile group by brands;