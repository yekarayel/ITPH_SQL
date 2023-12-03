/* Debugging errors
Debugging is an essential skill for all coders, and it comes from making many mistakes and learning from them.

In this exercise, you'll be given some buggy code that you'll need to fix.

Instructions 
1-Debug and fix the SQL query provided.
2-Find the two errors in this code; the same error has been repeated twice.
3-Find the two bugs in this final query. */

-- Debug this code
SELECT certification
FROM films
LIMIT 5;

-- Debug this code
SELECT film_id, imdb_score, num_votes
FROM reviews;

-- Debug this code
SELECT COUNT(birthdate) AS count_birthdays
FROM people;
