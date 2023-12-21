/* Answering business questions
In the real world, every SQL query starts with a business question. Then it is up to you to decide how to write the query that answers 
the question. Let's try this out.

Which release_year had the most language diversity?

Take your time to translate this question into code. We'll get you started then it's up to you to test your queries in the console.

"Most language diversity" can be interpreted as COUNT(DISTINCT ___). Now over to you. */

-- Which release_year had the most language diversity?

SELECT 
    release_year, COUNT(DISTINCT language) AS most_language_div
FROM films
GROUP BY release_year
ORDER BY most_language_div DESC;
