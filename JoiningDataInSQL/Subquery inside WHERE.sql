/* Subquery inside WHERE
The video pointed out that subqueries inside WHERE can either be from the same table or a different table. In this exercise, you will 
nest a subquery from the populations table inside another query from the same table, populations. Your goal is to figure out which 
countries had high average life expectancies in 2015.

You can use SQL to do calculations for you. Suppose you only want records from 2015 with life_expectancy above 1.15 * avg_life_expectancy.
You could use the following SQL query.

SELECT *
FROM populations
WHERE life_expectancy > 1.15 * avg_life_expectancy
  AND year = 2015;

In the first step, you'll write a query to calculate a value for avg_life_expectancy. In the second step, you will nest this calculation 
into another query.

Instructions 

1-  * Begin by calculating the average life expectancy from the populations table.
    * Filter your answer to use records from 2015 only.  */


-- 1 -----------------------------------------
-- Select average life_expectancy from the populations table
SELECT AVG(life_expectancy)
FROM populations
-- Filter for the year 2015
WHERE year = 2015;


-- 2 -----------------------------------------
