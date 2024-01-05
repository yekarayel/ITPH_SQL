/* Chaining FULL JOINs
As you have seen in the previous chapter on INNER JOIN, it is possible to chain joins in SQL, such as when looking 
to connect data from more than two tables.

Suppose you are doing some research on Melanesia and Micronesia, and are interested in pulling information about languages and 
currencies into the data we see for these regions in the countries table. Since languages and currencies exist in separate tables, 
this will require two consecutive full joins involving the countries, languages and currencies tables.

Instructions

* Complete the FULL JOIN with countries as c1 on the left and languages as l on the right, using code to perform this join.
* Next, chain this join with another FULL JOIN, placing currencies on the right, joining on code again.  */

SELECT 
	c1.name AS country, 
    region, 
    l.name AS language,
	basic_unit, 
    frac_unit
FROM countries as c1 
-- Full join with languages (alias as l)
FULL JOIN languages AS l
USING (code)
-- Full join with currencies (alias as c2)
FULL JOIN currencies AS c2
USING (code)
WHERE region LIKE 'M%esia';


