SELECT i.InvoiceId, COUNT(il.InvoiceLineId) AS TotalLineItems
FROM Invoice AS i
JOIN InvoiceLine AS il ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId;
