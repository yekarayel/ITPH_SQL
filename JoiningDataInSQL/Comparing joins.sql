/* Comparing joins
In this exercise, you'll examine how results can differ when performing a full join compared to a left join and inner join by joining 
the countries and currencies tables. You'll be focusing on the North American region and records where the name of the country is missing.

You'll begin with a full join with countries on the left and currencies on the right. 
Recall the workings of a full join with the diagram below! */

JoiningDataInSQL/full_join2.png

/* You'll then complete a similar left join and conclude with an inner join, observing the results you see along the way.  */

/* Instructions
1-  Perform a full join with countries (left) and currencies (right).
    Filter for the North America region or NULL country names.

2-  Repeat the same query as before, turning your full join into a left join with the currencies table.
    Have a look at what has changed in the output by comparing it to the full join result.
3-  Repeat the same query again, this time performing an inner join of countries with currencies.
    Have a look at what has changed in the output by comparing it to the full join and left join results!  */

-- 1 ------------------------------
SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
FULL JOIN currencies 
USING (code)
-- Where region is North America or name is null
WHERE region = 'North America' OR name IS NULL
ORDER BY region;

-- 2 ------------------------------
SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
LEFT JOIN currencies
USING (code)
WHERE region = 'North America' 
	OR name IS NULL
ORDER BY region;

-- 3 ------------------------------
SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
INNER JOIN currencies
USING (code)
WHERE region = 'North America' 
	OR name IS NULL
ORDER BY region;
