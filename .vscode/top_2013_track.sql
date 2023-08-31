WITH MostPurchased AS (
  SELECT il.TrackId, COUNT(*) as Count
  FROM InvoiceLine il
  INNER JOIN Invoice i ON il.InvoiceId = i.InvoiceId
  WHERE strftime('%Y', i.InvoiceDate) = '2013'
  GROUP BY il.TrackId
  ORDER BY Count DESC
  LIMIT 1
)

SELECT t.Name, m.Count
FROM MostPurchased m
JOIN Track t ON t.TrackId = m.TrackId;
