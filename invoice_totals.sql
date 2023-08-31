SELECT i.Total AS InvoiceTotal,
    (c.FirstName || ' ' || c.LastName) AS CustomerName,
    c.Country AS CustomerCountry,
    (e.FirstName || ' ' || e.LastName) AS SalesAgentFullName
FROM Invoice AS i
JOIN Customer AS c ON i.CustomerId = c.CustomerId
JOIN Employee AS e ON c.SupportRepId = e.EmployeeId
WHERE e.Title = 'Sales Support Agent';
