SELECT t.Name AS TrackName, COUNT(il.TrackId) AS PurchaseCount
FROM InvoiceLine AS il
JOIN Track AS t ON il.TrackId = t.TrackId
GROUP BY il.TrackId
ORDER BY PurchaseCount DESC
LIMIT 5;
