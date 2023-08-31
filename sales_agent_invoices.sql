SELECT (e.FirstName || ' ' || e.LastName) AS SalesAgentFullName,
    i.InvoiceId
FROM Employee AS e
JOIN Customer AS c ON e.EmployeeId = c.SupportRepId
JOIN Invoice AS i ON c.CustomerId = i.CustomerId
WHERE e.Title = 'Sales Support Agent';
