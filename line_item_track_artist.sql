SELECT il.InvoiceLineId, il.InvoiceId, t.Name AS TrackName, a.Name AS ArtistName
FROM InvoiceLine AS il
JOIN Track AS t ON il.TrackId = t.TrackId
JOIN Album AS al ON t.AlbumId = al.AlbumId
JOIN Artist AS a ON al.ArtistId = a.ArtistId;
