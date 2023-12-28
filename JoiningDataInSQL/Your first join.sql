/* Your first join
Throughout this course, you'll be working with the countries database, which contains information about the most populous world cities
in the world, along with country-level economic, population, and geographic data. The database also contains information on languages 
spoken in each country.

You can see the different tables in this database to get a sense of what they contain by clicking on the corresponding tabs. 
Click through them and familiarize yourself with the fields that seem to be shared across tables before you continue with the course.

In this exercise, you'll use the cities and countries tables to build your first inner join. You'll start off by selecting 
all columns in step 1, performing your join in step 2, and then refining your join to choose specific columns in step 3. 

Instructions 
1- Begin by selecting all columns from the cities table, using the SQL shortcut that selects all. 
2- *Perform an inner join with the cities table on the left and the countries table on the right; do not alias tables here or in 
the next step.
  *Identify the relevant column names to join ON by inspecting the cities and countries tabs in the console.

*/

-- 1 ----------------------------
-- Select all columns from cities
SELECT *
FROM cities

-- 2 ----------------------------
SELECT *
FROM cities
-- Inner join to countries
INNER JOIN countries
-- Match on country codes
ON cities.country_code = countries.code;

-- 3 ----------------------------
-- Select name fields (with alias) and region 
SELECT cities.name AS city, countries.name AS country, countries.region
FROM cities 
INNER JOIN countries 
ON cities.country_code = countries.code;

