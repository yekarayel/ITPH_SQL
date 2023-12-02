/* Practice with COUNT()
As you've seen, COUNT(*) tells you how many records are in a table. However, if you want to count the number of non-missing values
in a particular field, you can call COUNT() on just that field.

Let's get some practice with COUNT()! You can look at the data in the tables throughout these exercises by clicking on the table 
name in the console.

Instructions 
1-Count the total number of records in the people table, aliasing the result as count_records.
2-Count the number of records with a birthdate in the people table, aliasing the result as count_birthdate.
3-Count the records for languages and countries in the films table; alias as count_languages and count_countries. */

-- Count the number of records in the people table
SELECT COUNT(*) AS count_records
FROM people;

-- Count the number of birthdates in the people table
SELECT COUNT(birthdate) AS count_birthdate
FROM people;

-- Count the records for languages and countries represented in the films table
SELECT COUNT(language) AS count_languages,
COUNT(country) AS count_countries
FROM films;
