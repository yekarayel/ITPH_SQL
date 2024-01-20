/* Semi join
Great job getting acquainted with semi joins and anti joins! You are now going to practice using semi joins.

Let's say you are interested in identifying languages spoken in the Middle East. The languages table contains information about 
languages and countries, but it does not tell you what region the countries belong to. You can build up a semi join by filtering 
the countries table by a particular region, and then using this to further filter the languages table.

You'll build up your semi join as you did in the video exercise, block by block, starting with a selection of countries from 
the countries table, and then leveraging a WHERE clause to filter the languages table by this selection.

Instructions

1- Select country code as a single field from the countries table, filtering for countries in the 'Middle East' region.  

2- * Write a second query to SELECT the name of each unique language appearing in the languages table; do not use column aliases here.
   * Order the result set by name in ascending order.*/


-- 1 -----------------------------------
-- Select country code for countries in the Middle East
SELECT code
FROM countries
WHERE region = ('Middle East');

