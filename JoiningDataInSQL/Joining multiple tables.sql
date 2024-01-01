/* Joining multiple tables
You've seen that the ability to combine multiple joins using a single query is a powerful feature of SQL.

Suppose you are interested in the relationship between fertility and unemployment rates. Your task in this exercise is to join 
tables to return the country name, year, fertility rate, and unemployment rate in a single result from the countries, populations 
and economies tables.

Instructions
1- Perform an inner join of countries AS c (left) with populations AS p (right), on code.
Select name, year and fertility_rate.
2- Chain another inner join to your query with the economies table AS e, using code.
Select name, and using table aliases, select year and unemployment_rate from economies.
*/

-- 1 ------------------------------
-- Select relevant fields
SELECT name, year, fertility_rate
FROM countries AS c
-- Inner join countries and populations, aliased, on code
INNER JOIN populations AS p
ON c.code = p.country_code;
