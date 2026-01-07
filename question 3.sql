-- 	Question 3
select * from regions;
select * from babies_names;
-- Group data by name and gender
select 
name, 
Gender 
from babies_names
group by name, Gender;

-- Identify names used only for boys
SELECT name
FROM babies_names
GROUP BY name
HAVING COUNT(DISTINCT gender) = 1  
   AND MAX(gender) = 'M';          

-- Identify names used only for girls
SELECT name
FROM babies_names
GROUP BY name
HAVING COUNT(DISTINCT gender) = 1  
   AND MAX(gender) = 'F';   
-- Identify names used for both boys and girls
SELECT name
FROM babies_names
GROUP BY name
HAVING COUNT(DISTINCT gender) = 2;

-- Optional: Track changes in gender usage over the years
SELECT
    year,
    gender,
    SUM(births) AS total_births
FROM babies_names
GROUP BY year, gender
ORDER BY year;
