/* Diagnosing problems using anti join
Nice work on semi joins! The anti join is a related and powerful joining tool. It can be particularly useful for identifying whether 
an incorrect number of records appears in a join.

Say you are interested in identifying currencies of Oceanian countries. You have written the following INNER JOIN, which returns 15 records.
Now, you want to ensure that all Oceanian countries from the countries table are included in this result. You'll do this in the first step.

SELECT c1.code, name, basic_unit AS currency
FROM countries AS c1
INNER JOIN currencies AS c2
ON c1.code = c2.code
WHERE c1.continent = 'Oceania';

If there are any Oceanian countries excluded in this INNER JOIN, you want to return the names of these countries. You'll write an anti join
to this in the second step!  

Instructions 

1- * Begin by writing a query to return the code and name (in order, not aliased) for all countries in the continent of Oceania from 
the countries table.
   * Observe the number of records returned and compare this with the provided INNER JOIN, which returns 15 records.

2- Now, build on your query to complete your anti join, by adding an additional filter to return every country code that is not 
included in the currencies table.  */


-- 1 ---------------------------------------
-- Select code and name of countries from Oceania
SELECT code, name 
FROM countries
WHERE continent = 'Oceania' ;


-- 2 ---------------------------------------
SELECT code, name
FROM countries
WHERE continent = 'Oceania'
-- Filter for countries not included in the bracketed subquery
  AND code NOT IN 
    (SELECT code
    FROM currencies);
