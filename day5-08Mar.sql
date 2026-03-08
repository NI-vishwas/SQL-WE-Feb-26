-- Get all products whose price is greater than 15
SELECT ProductID, ProductName, Price FROM Northwind.Products WHERE Price > 15;

-- Get all products which belong to categoryID 1 and Price greater than 15
SELECT ProductID, ProductName, Price, CategoryID  FROM Northwind.Products WHERE CategoryID = 1 AND Price > 15;

-- Get all the products which belong to categoryID 1 or CategoryID 3
SELECT ProductID, ProductName, Price, CategoryID  FROM Northwind.Products WHERE CategoryID = 1 OR CategoryID = 3;

-- Get All products which does not belong to category ID 3
SELECT ProductID, ProductName, Price, CategoryID  FROM Northwind.Products WHERE CategoryID != 3;
SELECT ProductID, ProductName, Price, CategoryID  FROM Northwind.Products WHERE CategoryID <> 3;

-- Get Products from CategoryID 1,3,6
SELECT ProductID, ProductName, Price, CategoryID  FROM Northwind.Products WHERE CategoryID IN (1,3,6);

SELECT * FROM Orders;
-- Get all the orders which were placed duing the month of july 1996
SELECT OrderID, OrderDate FROM Northwind.Orders WHERE OrderDate > '1996-07-01' AND OrderDate < '1996-07-31';
SELECT OrderID, OrderDate FROM Northwind.Orders WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';
SELECT OrderID, OrderDate FROM Northwind.Orders WHERE YEAR(OrderDate) = '1996'AND MONTH(OrderDate) = '07';

-- get all the orders in the month of june and july 96 in sorted order
SELECT OrderID, OrderDate 
FROM Northwind.Orders 
WHERE OrderDate 
BETWEEN '1996-06-01' AND '1996-07-31'
ORDER BY OrderDate ASC;

-- Get To 5 expensive products in your inventory
SELECT ProductName, Price
FROM Northwind.Products 
ORDER BY Price DESC;

SELECT ProductName, Price
FROM Northwind.Products 
ORDER BY Price DESC
LIMIT 5;

-- get the second most expensive product
SELECT ProductName, Price
FROM Northwind.Products 
ORDER BY Price DESC
LIMIT 1
OFFSET 1;

-- group by clause
SELECT * FROM Products;
SELECT * FROM OrderDetails;

-- Get number of products in each order
SELECT OrderID, COUNT(ProductID) AS 'Number of Items'
FROM Northwind.OrderDetails
GROUP BY OrderID
ORDER BY COUNT(ProductID) DESC;

-- SUM, AVG, MIN, MAX
