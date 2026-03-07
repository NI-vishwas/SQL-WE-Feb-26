-- Creating a user
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'userpass1';
-- Giving Permissions
-- SELECT - Read ONLY
-- ALL - Permissions
-- INDERT, UPDATE, DELETE, DROP
GRANT SELECT ON demo.* TO 'user1'@'localhost';

-- Apply those permissions 
FLUSH PRIVILEGES;
-- Revoking the permissions
REVOKE SELECT ON demo.* FROM 'user1'@'localhost';

-- Northwind database commands
USE Northwind;
SHOW TABLES;

-- SEEING ALL THE DATA IN A TABLE
SELECT * FROM Employees;
SELECT * FROM Customers;
-- Selected ccolumns
SELECT EmployeeID, FirstName, LastName FROM Employees;
-- Row wise filtering
-- filter based on exact values
-- Get all the customers from london
SELECT * FROM Customers 
WHERE City = 'London';
-- Get the customers whose name start from A
-- _ for any single character
-- % for any number of characters

SELECT CustomerName FROM Customers
WHERE CustomerName LIKE 'A%';
-- get all the customers who have second letter 'n' in their name
SELECT CustomerName FROM Customers
WHERE CustomerName LIKE '_n%';

SELECT CustomerName FROM Customers
WHERE CustomerName LIKE '%n%';

