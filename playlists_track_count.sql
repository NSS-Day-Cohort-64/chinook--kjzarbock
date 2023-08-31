SELECT p.Name AS PlaylistName, COUNT(t.TrackId) AS TotalTracks
FROM Playlist AS p
JOIN PlaylistTrack AS pt ON p.PlaylistId = pt.PlaylistId
JOIN Track AS t ON pt.TrackId = t.TrackId
GROUP BY p.PlaylistId, p.Name;
