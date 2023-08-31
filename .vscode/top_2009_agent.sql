SELECT e.FirstName || ' ' || e.LastName AS EmployeeFullName, SUM(i.Total) AS TotalSales2009
FROM Employee AS e
JOIN Customer AS c ON e.EmployeeId = c.SupportRepId
JOIN Invoice AS i ON c.CustomerId = i.CustomerId
WHERE e.Title = 'Sales Support Agent' AND strftime('%Y', i.InvoiceDate) = '2009'
GROUP BY e.EmployeeId
ORDER BY TotalSales2009 DESC
LIMIT 1;
