/* Aliasing with functions
Aliasing can be a lifesaver, especially as we start to do more complex SQL queries with multiple criteria. Aliases help you keep your
code clean and readable. For example, if you want to find the MAX() value of several fields without aliasing, you'll end up with the 
result with several columns called max and no idea which is which. You can fix this with aliasing.

Now, it's over to you to clean up the following queries.

Instructions 2/3
1- Select the title and duration in hours for all films and alias as duration_hours; since the current durations are in minutes, 
you'll need to divide duration by 60.0.
2- Calculate the percentage of people who are no longer alive and alias the result as percentage_dead.
3- Find how many decades (period of ten years) the films table covers by using MIN() and MAX(); alias as number_of_decades.
*/


-- 1 ----------------------------
-- Calculate the title and duration_hours from films
SELECT title, duration/60.0 AS duration_hours
FROM films;

-- 2 ----------------------------
-- Calculate the percentage of people who are no longer alive
SELECT COUNT(deathdate) * 100.0 / COUNT(*)  AS percentage_dead
FROM people;

-- 3 ----------------------------
-- Find the number of decades in the films table
SELECT (MAX(release_year)-MIN(release_year)) / 10.0 AS number_of_decades
FROM films;
