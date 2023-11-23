SELECT * FROM Sales.Customers ;

SELECT * FROM Sales.Orders ;


SELECT *
FROM Sales.Customers AS c, Sales.Orders AS o 
WHERE c.custid = o.custid ;


SELECT o.orderid, o.orderdate, o.custid, c.companyname -- Bu satırda belirttiğimiz kolonlar gösterilir yalnızca
FROM Sales.Customers AS c, Sales.Orders AS o 
WHERE c.custid = o.custid ;

--INNER JOIN
SELECT orderid, orderdate, o.custid, companyname 
FROM Sales.Customers AS c, Sales.Orders AS o 
WHERE c.custid = o.custid ;     --JOIN-condition


--Same output, different way
SELECT orderid, orderdate, o.custid, companyname 
FROM Sales.Customers AS c
    INNER JOIN Sales.Orders AS o ON c.custid = o.custid ;
-- WHERE c.custid = o.custid ;     --JOIN-condition


-- the orderdetails of all the orders?
--SELECT FROM WHERE ORDER BY (people)
--FROM WHERE SELECT, ORDER BY (by the system)

SELECT *
FROM Sales.Orders AS o  
        INNER JOIN Sales.OrderDetails AS od
            ON o.orderid = od.orderid
        INNER JOIN Sales.Shippers AS s 
            ON s.shipperid = o.shipperid ;


--all the customers with orders
SELECT orderid, orderdate, o.custid, companyname 
FROM Sales.Customers AS c
    INNER JOIN Sales.Orders AS o ON c.custid = o.custid ;



SELECT orderid, orderdate, o.custid, companyname 
FROM Sales.Customers AS c
    LEFT OUTER JOIN Sales.Orders AS o ON c.custid = o.custid ;

SELECT orderid, orderdate, c.custid, o.custid, companyname 
FROM Sales.Customers AS c
    LEFT OUTER JOIN Sales.Orders AS o ON c.custid = o.custid ;



SELECT orderid, orderdate, c.custid, o.custid, companyname 
FROM Sales.Customers AS c
    LEFT OUTER JOIN Sales.Orders AS o ON c.custid = o.custid 
WHERE o.custid IS NULL ;


SELECT orderid, orderdate, c.custid, o.custid, companyname 
FROM Sales.Customers AS c
    FULL OUTER JOIN Sales.Orders AS o ON c.custid = o.custid 
WHERE o.custid IS NULL ;


-- INNER JOIN  -  OUTER JOIN(left, right, full)
--CROOSS JOIN


-- count all the rows in the OrderDetails table
SELECT COUNT(*)
FROM Sales.OrderDetails ;

SELECT * FROM Sales.OrderDetails ;


SELECT SUM(unitprice * qty) AS [TotalAmount]
FROM Sales.OrderDetails ; 

SELECT orderid, SUM(unitprice * qty) AS [TotalAmount]
FROM Sales.OrderDetails
GROUP BY orderid ;

---------------------------------------------------------------------
/* Show how many products there are in every category
Give the name of the categories and the number of products in it. */
SELECT * FROM Production.Categories ;
SELECT * FROM Production.Products ;
-- Benim çözümüm
SELECT c.categoryname, COUNT(p.productid) AS ProductCount
FROM Production.Categories AS c
JOIN Production.Products AS p ON c.categoryid = p.categoryid
GROUP BY c.categoryname;

-- Hocanın çözümü
SELECT c.categoryid, c.categoryname, COUNT(p.productid) AS [ProductCount] 
FROM Production.Products AS p 
        INNER JOIN Production.Categories AS c 
        ON p.categoryid = c.categoryid
GROUP BY c.categoryid, c.categoryname ;
---------------------------------------------------------------------

-- To see only this about products with an unitprice > 20 ?

SELECT c.categoryid, c.categoryname, 
        COUNT(p.productid) AS [TotalNumber] 
        FROM Production.Products AS p 
        INNER JOIN Production.Categories AS c 
        ON p.categoryid = c.categoryid
WHERE p.unitprice>20
GROUP BY c.categoryid, c.categoryname 
ORDER BY TotalNumber;
---------------------------------------------------------------------

SELECT c.categoryid, c.categoryname, COUNT(p.productid) AS ProductCount 
FROM Production.Products AS p 
        INNER JOIN Production.Categories AS c 
        ON p.categoryid = c.categoryid
GROUP BY c.categoryid, c.categoryname 
HAVING COUNT(p.productid) > 10 ;
-- FROM table WHERE filters rows GROUP BY groups HAVING 
--filtered groups SELECT columns/calculations aggregated ORDER BY