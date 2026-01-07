# US-Baby-Names-SQL-Analysis
This project analyzes baby names from U.S. Social Security records. The dataset includes baby name, gender, year of birth, state, and number of births. SQL (MySQL) was used to explore name popularity, gender usage, and regional differences

--- creating a database called babies_names
```
create database;
```
*-- viewing the database*
```
Show databases;
```
*-- using  the database called babies_names*
```
use babies_names;
```
*--- showng the tables in the database*
```
show tables;
```

*-- View the names table babies_name table*
```
select * from babies_names;
select * from regions;
```

*-- Check the range of years in the dataset*
```
select max(year) as "Start Year",
	min(year) as " End year" 
    from babies_names;
```
    
*-- Sum the number of babies for each name across all years*
```
select name as "Names",
 sum(Births) as "Number of Babies"
        from babies_names
        group by name
        order by sum(Births) desc;
```
        
--* Check most popular names per year*
```
select
 name as "Names",
year as Year,
sum(Births) as "Total Birth"
from babies_names
group by year,name
order by  "Total Birth" DESC
LIMIT 20;
```

-- View the names table and focus on Name, Year, and Births
select * from babies_names;
select * from regions;
-- Get total number of babies for each name per year

select
 year, 
count(Births) as "total number of birht"
from babies_names
group by year;

-- Order the results by year to see changes over time

select
 year, 
 count(Births) as "total number of birht"
from babies_names
group by year
order by year desc;

-- Identify names that increased a lot in total births
SELECT
    Name,
    SUM(Births) AS total_births
FROM babies_names
GROUP BY Name
ORDER BY total_births DESC
LIMIT 20;

-- Identify names that decreased a lot in total births
select 
name,
sum(Births) as "Total Births" 
from babies_names
group by name
order by "Total Births" ASC
limit 20;
