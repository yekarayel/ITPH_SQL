/* Choosing your join
Now that you're fully equipped to use joins, try a challenge problem to test your knowledge!

You will determine the names of the five countries and their respective regions with the lowest life expectancy for the year 2010. 
Use your knowledge about joins, filtering, sorting and limiting to create this list! 

Instructions

* Complete the join of countries AS c with populations as p.
* Filter on the year 2010.
* Sort your results by life expectancy in ascending order.
* Limit the result to five countries.  */

-- Nice work! Did you notice that more than one type of join can be used to return the five records in our result? 
-- All four types of joins we have learned will return the same result.


-- INNER JOIN -------------------------------
SELECT 
	c.name AS country,
    region,
    life_expectancy AS life_exp
FROM countries AS c
-- Join to populations (alias as p) using an appropriate join
INNER JOIN populations AS p 
ON c.code = p.country_code
-- Filter for only results in the year 2010
WHERE year IN (2010)
-- Sort by life_exp
ORDER BY life_exp ASC
-- Limit to five records
LIMIT 5;


-- LEFT JOIN -------------------------------
SELECT 
	c.name AS country,
    region,
    life_expectancy AS life_exp
FROM countries AS c
-- Join to populations (alias as p) using an appropriate join
LEFT JOIN populations AS p 
ON c.code = p.country_code
-- Filter for only results in the year 2010
WHERE year IN (2010)
-- Sort by life_exp
ORDER BY life_exp ASC
-- Limit to five records
LIMIT 5;


-- RIGHT JOIN -------------------------------
SELECT 
	c.name AS country,
    region,
    life_expectancy AS life_exp
FROM countries AS c
-- Join to populations (alias as p) using an appropriate join
RIGHT JOIN populations AS p 
ON c.code = p.country_code
-- Filter for only results in the year 2010
WHERE year IN (2010)
-- Sort by life_exp
ORDER BY life_exp ASC
-- Limit to five records
LIMIT 5;


-- FULL JOIN -------------------------------
SELECT 
	c.name AS country,
    region,
    life_expectancy AS life_exp
FROM countries AS c
-- Join to populations (alias as p) using an appropriate join
FULL JOIN populations AS p 
ON c.code = p.country_code
-- Filter for only results in the year 2010
WHERE year IN (2010)
-- Sort by life_exp
ORDER BY life_exp ASC
-- Limit to five records
LIMIT 5;

