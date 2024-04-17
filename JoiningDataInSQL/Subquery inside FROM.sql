/* Subquery inside FROM

Subqueries inside FROM can help select columns from multiple tables in a single query.

Say you are interested in determining the number of languages spoken for each country. You want to present this information 
alongside each country's local_name, which is a field only present in the countries table and not in the languages table. 
You'll use a subquery inside FROM to bring information from these two tables together!

Instructions 
1 -  * Begin with a query that groups by each country code from languages, and counts the languages spoken in each country as lang_num.
     * In your SELECT statement, return code and lang_num (in that order). */

