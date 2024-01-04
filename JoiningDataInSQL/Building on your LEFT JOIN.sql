/* Building on your LEFT JOIN
You'll now revisit the use of the AVG() function introduced in a previous course.

Being able to build more than one SQL function into your query will enable you to write compact, supercharged queries.

You will use AVG() in combination with a LEFT JOIN to determine the average gross domestic product (GDP) per capita by region in 2010.

Instructions
1-  * Complete the LEFT JOIN with the countries table on the left and the economies table on the right on the code field.
    * Filter the records from the year 2010.
2-  * To calculate per capita GDP per region, begin by grouping by region.
    * After your GROUP BY, choose region in your SELECT statement, followed by average GDP per capita using the AVG() function, 
with AS avg_gdp as your alias.
3-  * Order the result set by the average GDP per capita from highest to lowest.
    * Return only the first 10 records in your result.


*/
-- 1 ------------------------------
SELECT name, region, gdp_percapita
FROM countries AS c
LEFT JOIN economies AS e
-- Match on code fields
USING(code)
-- Filter for the year 2010
WHERE year = 2010;

-- 2 ------------------------------
-- Select region, and average gdp_percapita as avg_gdp
SELECT region,
    AVG(gdp_percapita) AS avg_gdp
FROM countries AS c
LEFT JOIN economies AS e
USING(code)
WHERE year = 2010
-- Group by region
GROUP BY region;

-- 3 ------------------------------
SELECT region, AVG(gdp_percapita) AS avg_gdp
FROM countries AS c
LEFT JOIN economies AS e
USING(code)
WHERE year = 2010
GROUP BY region
-- Order by descending avg_gdp
ORDER BY avg_gdp DESC
-- Return only first 10 records
LIMIT 10;

