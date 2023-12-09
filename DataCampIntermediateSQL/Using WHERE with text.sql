/* Using WHERE with text
WHERE can also filter string values.

Imagine you are part of an organization that gives cinematography awards, and you have several international categories. Before you 
confirm an award for every language listed in your dataset, it may be worth seeing if there are enough films of a specific language 
to make it a fair competition. If there is only one movie or a significant skew, it may be worth considering a different way of giving 
international awards.

Let's try this out!

Instructions

Select and count the language field using the alias count_spanish.
Apply a filter to select only Spanish from the language field. */

-- Count the Spanish-language films
SELECT COUNT(language) AS count_spanish
FROM films
WHERE language = 'Spanish' ;
