# US-Baby-Names-SQL-Analysis
This project analyzes baby names from U.S. Social Security records. The dataset includes baby name, gender, year of birth, state, and number of births. SQL (MySQL) was used to explore name popularity, gender usage, and regional differences


-- viewing the database
Show databases;
-- showing the database

use babies_names;
show tables;

-- View the names table to understand its columns
select * from babies_names;
select * from regions;


-- Check the range of years in the dataset
select max(year) as "Start Year",
	min(year) as " End year" 
    from babies_names;
    
-- Sum the number of babies for each name across all years
select name as "Names",
 sum(Births) as "Number of Babies"
        from babies_names
        group by name
        order by sum(Births) desc;
        
-- : Check most popular names per year
select
 name as "Names",
year as Year,
sum(Births) as "Total Birth"
from babies_names
group by year,name
order by  "Total Birth" DESC
LIMIT 20;
