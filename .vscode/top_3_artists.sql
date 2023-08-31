SELECT a.Name AS ArtistName, SUM(il.UnitPrice * il.Quantity) AS TotalSales
FROM Artist a
JOIN Album al ON a.ArtistId = al.ArtistId
JOIN Track t ON al.AlbumId = t.AlbumId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
GROUP BY a.ArtistId
ORDER BY TotalSales DESC
LIMIT 3;
