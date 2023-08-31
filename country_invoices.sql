SELECT c.Country, COUNT(i.InvoiceId) AS TotalInvoices
FROM Invoice AS i
JOIN Customer AS c ON i.CustomerId = c.CustomerId
GROUP BY c.Country;
