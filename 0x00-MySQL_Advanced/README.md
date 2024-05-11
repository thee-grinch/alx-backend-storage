# SQL Advanced Topics

## 1. Subqueries
A subquery is a query nested inside another query. It can be used to retrieve data from one or more tables and use that data in the outer query.

Example:
SELECT column1, column2
FROM table1
WHERE column1 IN (SELECT column1 FROM table2);

## 2. Joins
Joins are used to combine rows from two or more tables based on a related column between them. There are different types of joins, such as INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN.

Example:
SELECT column1, column2
FROM table1
INNER JOIN table2 ON table1.column = table2.column;

## 3. Indexing
Indexes are used to improve the performance of queries by allowing the database to quickly locate the rows that match a certain condition. They can be created on one or more columns of a table.

Example:
CREATE INDEX index_name ON table_name (column1, column2);

## 4. Views
Views are virtual tables that are based on the result of a query. They can be used to simplify complex queries, provide an additional layer of security, and improve performance.

Example:
CREATE VIEW view_name AS
SELECT column1, column2
FROM table1
WHERE condition;

## 5. Stored Procedures
Stored procedures are precompiled SQL statements that are stored in the database and can be executed multiple times. They can be used to encapsulate complex logic, improve performance, and enhance security.

Example:
CREATE PROCEDURE procedure_name
AS
BEGIN
    -- SQL statements here
END;

These are just a few advanced topics in SQL. Feel free to add more topics and examples as needed.