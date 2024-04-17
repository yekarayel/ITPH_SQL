/* Subquery inside FROM

Subqueries inside FROM can help select columns from multiple tables in a single query.

Say you are interested in determining the number of languages spoken for each country. You want to present this information 
alongside each country's local_name, which is a field only present in the countries table and not in the languages table. 
You'll use a subquery inside FROM to bring information from these two tables together!

Instructions 

1 -  * Begin with a query that groups by each country code from languages, and counts the languages spoken in each country as lang_num.
     * In your SELECT statement, return code and lang_num (in that order). 

2 -  * Select local_name from countries, with the aliased lang_num from your subquery (which has been nested and aliased for you as sub).
     * Use WHERE to match the code field from countries and sub.    */


-- 1 -----------------------------
-- Select code, and language count as lang_num
SELECT code, COUNT(name) AS lang_num
FROM languages 
GROUP BY code;


-- 2 -----------------------------
-- Select local_name and lang_num from appropriate tables
SELECT countries.local_name,sub.lang_num
FROM countries,
  (SELECT code, COUNT(*) AS lang_num
  FROM languages
  GROUP BY code) AS sub
-- Where codes match
WHERE countries.code = sub.code
ORDER BY lang_num DESC;


--
