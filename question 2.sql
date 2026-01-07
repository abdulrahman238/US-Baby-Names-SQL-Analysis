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