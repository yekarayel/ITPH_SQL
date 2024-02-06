/* Subquery inside SELECT
As explored in the video, there are often multiple ways to produce the same result in SQL. You saw that subqueries can provide an 
alternative to joins to obtain the same result.

In this exercise, you'll go further in exploring how some queries can be written using either a join or a subquery.

In Step 1, you'll begin with a LEFT JOIN combined with a GROUP BY to select the nine countries with the most cities appearing in 
the cities table, along with the counts of these cities. In Step 2, you'll write a query that returns the same result as the join, 
but leveraging a nested query instead.

Instructions 

1-  * Write a LEFT JOIN with countries on the left and the cities on the right, joining on country code.
    * In the SELECT statement of your join, include country names as country, and count the cities in each country, aliased as cities_num.
    * Sort by cities_num (descending), and country (ascending), limiting to the first nine records. 

2-  * Complete the subquery to return a result equivalent to your LEFT JOIN, counting all cities in the cities table as cities_num.
    * Use the WHERE clause to enable the correct country codes to be matched in the cities and countries columns.  */


-- 1 ------------------------------------------
-- Find top nine countries with the most cities
SELECT DISTINCT countries.name AS country, 
    (SELECT COUNT(*)
    FROM cities
    WHERE countries.code = cities.country_code) AS cities_num
FROM countries
LEFT JOIN cities
ON countries.code = cities.country_code
-- Order by count of cities as cities_num
ORDER BY cities_num DESC, country ASC
LIMIT 9;


-- 2 ------------------------------------------
SELECT countries.name AS country,
-- Subquery that provides the count of cities   
  (SELECT COUNT(*)
   FROM cities
   WHERE cities.country_code = countries.code) AS cities_num
FROM countries
ORDER BY cities_num DESC, country
LIMIT 9;

--
