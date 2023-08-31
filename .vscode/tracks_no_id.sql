SELECT t.Name AS TrackName, al.Title AS AlbumName, mt.Name AS MediaType, g.Name AS Genre
FROM Track AS t
JOIN Album AS al ON t.AlbumId = al.AlbumId
JOIN MediaType AS mt ON t.MediaTypeId = mt.MediaTypeId
JOIN Genre AS g ON t.GenreId = g.GenreId;
