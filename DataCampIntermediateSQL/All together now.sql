/* All together now
It's time to use much of what you've learned in one query! This is good preparation for using SQL in the real world where you'll often 
be asked to write more complex queries since some of the basic queries can be answered by playing around in spreadsheet applications.

In this exercise, you'll write a query that returns the average budget and gross earnings for films each year after 1990 if 
the average budget is greater than 60 million.

This will be a big query, but you can handle it!

Instructions 
1- release_year for each film in the films table, filter for records released after 1990, and group by release_year.
2- Modify the query to include the average budget aliased as avg_budget and average gross aliased as avg_gross for 
the results we have so far.
3- Modify the query once more so that only years with an average budget of greater than 60 million are included.
4- Finally, order the results from the highest average gross and limit to one. */

-- 1 -----------------------
-- Select the release_year for films released after 1990 grouped by year
SELECT release_year
FROM films 
GROUP BY release_year
HAVING release_year > 1990 ;

-- 2 -----------------------
-- Modify the query to also list the average budget and average gross
SELECT release_year,
    AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;

-- 3 -----------------------


-- 4 -----------------------

