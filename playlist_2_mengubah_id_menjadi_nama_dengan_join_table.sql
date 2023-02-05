-- V1
SELECT 
	a.OrderID,	
    c.CustomerName,
    d.FirstName as EmployeeName,
    a.OrderDate,
    b.ShipperName
FROM Orders as a
JOIN Shippers as b on a.ShipperID = b.ShipperID
JOIN Customers as c on a.CustomerID = c.CustomerID
JOIN Employees as d on a.EmployeeID = d.EmployeeID
    

-- V2 
-- untuk Employye karena ada firts_name dan last_name anda bisa menggunakan concat untuk menggabungkannya.
SELECT 
	a.OrderID,	
    c.CustomerName,
    CONCAT(d.FirstName,d.Last_name) as EmployeeName,
    a.OrderDate,
    b.ShipperName
FROM Orders as a
JOIN Shippers as b on a.ShipperID = b.ShipperID
JOIN Customers as c on a.CustomerID = c.CustomerID
JOIN Employees as d on a.EmployeeID = d.EmployeeID
-- (Ada masalah pada SQL Editor W3School ketika menambahkan fungsi concat, sehingga ketika anda menjalankan query ini, SQL editor akan menampilkan kesalahan.
