/* Building on your LEFT JOIN
You'll now revisit the use of the AVG() function introduced in a previous course.

Being able to build more than one SQL function into your query will enable you to write compact, supercharged queries.

You will use AVG() in combination with a LEFT JOIN to determine the average gross domestic product (GDP) per capita by region in 2010.

Instructions
1-  * Complete the LEFT JOIN with the countries table on the left and the economies table on the right on the code field.
    * Filter the records from the year 2010.
2-
3-


*/
-- 1 ------------------------------
SELECT name, region, gdp_percapita
FROM countries AS c
LEFT JOIN economies AS e
-- Match on code fields
USING(code)
-- Filter for the year 2010
WHERE year = 2010;

