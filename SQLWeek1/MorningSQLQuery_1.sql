SELECT empid, firstname, lastname 
FROM HR.Employees ;


SELECT *
FROM HR.Employees 
WHERE empid = 4 OR empid = 6 ;

-- iki satırı seçmenin kısa yolu
SELECT *
FROM HR.Employees 
WHERE empid IN (4,6)
ORDER BY birthdate ASC ;

SELECT *
FROM HR.Employees 
WHERE empid IN (4,6)
ORDER BY birthdate DESC ;


SELECT *
FROM HR.Employees 
WHERE country = 'USA' ;

SELECT *
FROM HR.Employees 
ORDER BY firstname DESC ;


-- all the ladies in the UK?
SELECT *
FROM HR.Employees 
WHERE titleofcourtesy IN ('Ms.', 'Mrs.') AND country = 'UK';


SELECT *
FROM HR.Employees 
WHERE YEAR(birthdate) = 1973 ;

SELECT empid, YEAR(birthdate), MONTH(birthdate)
FROM HR.Employees ;

-- NULL değerleri bulmak için IS NULL kullanılır, = NULL sonuç vermez
SELECT *
FROM HR.Employees 
WHERE region IS NULL;

SELECT * FROM HR.Employees 
WHERE region IS NOT NULL;

-- Baş harfi S olan çalışanları sorgulama, LIKE yalnızca text için kullanılır
SELECT * FROM HR.Employees 
WHERE firstname LIKE 'S%' ;


-- Soyismi dört karakterli olanları bulma, bunun için tırnak içinde dört tane alt tire kullanılır.
SELECT * FROM HR.Employees 
WHERE lastname LIKE '____';

-- Soyismi dört karakterli ve ikinci harfi 'u' olanları bulma.
SELECT * FROM HR.Employees 
WHERE lastname LIKE '_u__';


-- Bir kolonu isimlendirme
SELECT empid AS empidentity, YEAR(birthdate) AS BirthYear
FROM HR.Employees ;

-- Kolon isimlendirmelerine boşluk kullanmak istiyorsanız [] veya "" kullanabiliriz.
SELECT empid AS "emp identity", YEAR(birthdate) AS [Birth Year]
FROM HR.Employees ;


-- select empid > 3 and empid <8
SELECT *
FROM HR.Employees
WHERE empid > 3 and empid <8 ;

--select between 3 and 8
SELECT * FROM HR.Employees
WHERE empid BETWEEN 3 AND 8 ;



SELECT * FROM Sales.Customers ;

SELECT COUNT(*)
FROM Sales.Customers 
GROUP BY country ;


SELECT country
FROM Sales.Customers 
GROUP BY country ;

SELECT country, COUNT(*) AS NumberOfRecords
FROM Sales.Customers 
GROUP BY country ;


SELECT country, city, COUNT(*) AS NumberOfRecords
FROM Sales.Customers 
GROUP BY country, city 
ORDER BY NumberOfRecords DESC;