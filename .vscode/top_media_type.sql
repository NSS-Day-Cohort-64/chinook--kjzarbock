SELECT mt.Name AS MediaTypeName, COUNT(il.InvoiceLineId) AS PurchaseCount
FROM MediaType mt
JOIN Track t ON mt.MediaTypeId = t.MediaTypeId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY mt.MediaTypeId
ORDER BY PurchaseCount DESC
LIMIT 1;
