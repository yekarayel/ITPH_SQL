/* Comparing a country to itself
Self joins are very useful for comparing data from one part of a table with another part of the same table. Suppose you are interested in
finding out how much the populations for each country changed from 2010 to 2015. You can visualize this change by performing a self join.

In this exercise, you'll work to answer this question by joining the populations table with itself. Recall that, with self joins, 
tables must be aliased. Use this as an opportunity to practice your aliasing!

Since you'll be joining the populations table to itself, you can alias populations first as p1 and again as p2. This is good practice 
whenever you are aliasing tables with the same first letter.  

Instructions 
1-* Perform an inner join of populations with itself ON country_code, aliased p1 and p2 respectively.
  * Select the country_code from p1 and the size field from both p1 and p2, aliasing p1.size as size2010 and 
    p2.size as size2015 (in that order).
*/

-- 1 --------------------------------------
-- Select aliased fields from populations as p1
SELECT  p1.country_code, 
        p1.size AS size2010,
        p2.size AS size2015
-- Join populations as p1 to itself, alias as p2, on country code
FROM populations AS p1
INNER JOIN populations AS p2
ON p1.country_code = p2.country_code;


-- 2 --------------------------------------
