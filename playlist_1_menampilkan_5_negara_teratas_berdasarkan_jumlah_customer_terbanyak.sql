SELECT
    Country, 
    COUNT(CustomerID) 
FROM Customers 
GROUP BY Country 
ORDER BY COUNT(CustomerID) DESC 
LIMIT 5;