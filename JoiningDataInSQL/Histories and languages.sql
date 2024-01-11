/* Histories and languages
Well done getting to know all about CROSS JOIN! As you have learned, CROSS JOIN can be incredibly helpful when asking questions that 
involve looking at all possible combinations or pairings between two sets of data.

Imagine you are a researcher interested in the languages spoken in two countries: Pakistan and India. You are interested in asking:

1. What are the languages presently spoken in the two countries?
2. Given the shared history between the two countries, what languages could potentially have been spoken in either country over 
the course of their history?

In this exercise, we will explore how INNER JOIN and CROSS JOIN can help us answer these two questions, respectively.  

Instructions

1- Complete the code to perform an INNER JOIN of countries AS c with languages AS l using the code field to obtain the languages 
currently spoken in the two countries.  */


-- 1 --------------------------------
SELECT c.name AS country, l.name AS language
-- Inner join countries as c with languages as l on code
FROM countries AS c 
INNER JOIN languages AS l
ON c.code = l.code
WHERE c.code IN ('PAK','IND')
	AND l.code in ('PAK','IND');


