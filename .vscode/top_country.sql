SELECT c.Country, SUM(i.Total) AS TotalSales
FROM Customer AS c
JOIN Invoice AS i ON c.CustomerId = i.CustomerId
GROUP BY c.Country
ORDER BY TotalSales DESC
LIMIT 1;
