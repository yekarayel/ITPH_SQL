/* SELECT DISTINCT
Often query results will include many duplicate values. You can use the DISTINCT keyword to select the unique values from a field.

This might be useful if, for example, you're interested in knowing which languages are represented in the films table. See if you can
find out what countries are represented in this table with the following exercises.

Instructions 
1-Return the unique countries represented in the films table using DISTINCT.

2-Return the number of unique countries represented in the films table, aliased as count_distinct_countries. */

-- Return the unique countries from the films table
SELECT DISTINCT country
FROM films;

-- Count the distinct countries from the films table
SELECT COUNT(DISTINCT country) AS count_distinct_countries
FROM films;
