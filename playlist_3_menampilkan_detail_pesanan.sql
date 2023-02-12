
-- versi tutorial
SELECT  
    a.OrderDate,
    a.OrderID,
    b.CustomerName,
    c.ProductID,
    c.Quantity
FROM Orders as a
JOIN Customers as b ON a.CustomerID = b.CustomerID
JOIN OrderDetails as c ON a.OrderID = c.OrderID
WHERE a.CustomerID = 61


-- versi lengkap (ditambahkan relasi dengan table products)
SELECT  
    a.OrderDate,
    a.OrderID,
    b.CustomerName,
    c.ProductID,
    c.Quantity,
    d.ProductName
FROM Orders as a
JOIN Customers as b ON a.CustomerID = b.CustomerID
JOIN OrderDetails as c ON a.OrderID = c.OrderID
JOIN Products as d ON c.ProductID = d.ProductID
WHERE a.CustomerID = 61
