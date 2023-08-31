SELECT (c.FirstName || ' ' || c.LastName) AS FullName,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
FROM Customer AS c
JOIN Invoice AS i ON c.CustomerId = i.CustomerId
WHERE c.Country = 'Brazil';
