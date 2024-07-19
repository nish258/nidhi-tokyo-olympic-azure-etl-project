-- Athletes per country
SELECT  country
,       COUNT(*) AS total_athletes
FROM    athletes
GROUP BY country
ORDER BY 2 DESC

-- Calculate total medals by each country
SELECT TeamCountry
,      SUM(Gold) AS total_gold
,      SUM(Silver) AS total_silver
,      SUM(Bronze) AS total_bronze
FROM    medals
GROUP BY TeamCountry
ORDER BY 2 DESC;

-- Calculate Average number of entries by gender
SELECT  Discipline
,       AVG(Female) AS avg_female
,       AVG(Male) AS avg_male
FROM    entriesgender
GROUP BY Discipline;
