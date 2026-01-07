select * from babies_names;
select * from regions;


-- Join names table with regions table on state
select 
B.Name,
R.region,
B.Births
from babies_names B
JOIN Regions R
ON B.State = R.state;

-- Sum births by region and name
SELECT 
    r.Region,
    n.Name,
    SUM(n.Births) AS total_births
FROM babies_names n
JOIN regions r
ON n.State = r.State
GROUP BY r.Region, n.Name
ORDER BY r.Region, total_births DESC
LIMIT 50;

-- Compare popular names across different regions
SELECT 
    r.Region,
    b.Name,
    SUM(n.Births) AS total_births
FROM babies_names b
JOIN regions r
ON b.State = r.State
GROUP BY r.Region, n.Name
ORDER BY r.Region, total_births DESC;

