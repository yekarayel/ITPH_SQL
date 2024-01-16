/* UNION vs. UNION ALL
Nice work learning all about UNION and UNION ALL!

Two tables, languages and currencies, are provided. Run the queries provided in the console and select the correct answer for 
the multiple-choice questions in this exercise.

Instructions

1- Question
What result will the following SQL query produce?

SELECT * 
FROM languages
UNION
SELECT * 
FROM currencies;

*** Possible answers ***

o - All records from both tables, dropping duplicate records (if any)

X - A SQL error, because languages and currencies do not have the same number of fields

o - A SQL error, because languages and currencies do not have the same number of records



2- Question
What result will the following SQL query produce?

SELECT code FROM
languages
UNION ALL
SELECT code FROM 
currencies;

*** Possible answers ***

o - An ordered list of each country code in languages and currencies, including duplicates

o - An ordered list of each unique country code in languages and currencies

X - An unordered list of each country code in languages and currencies, including duplicates

o - An unordered list of each unique country code in languages and currencies



3 -Question
What will the following SQL query produce?

SELECT code 
FROM languages
UNION
SELECT curr_id 
FROM currencies;

*** Possible answers ***

o - An empty result

o - A stacked list of every curr_id from currencies and every code from languages

X - A SQL error, because code and curr_id are not of the same data type

o - A SQL error, because code and curr_id do not have the same name


*/
