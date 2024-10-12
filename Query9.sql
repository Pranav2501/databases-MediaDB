SELECT 
    p.PlaylistId, 
    p.Name AS PlaylistName, 
    g.Name AS GenreName, 
    COUNT(t.TrackId) AS GenreTrackCount,
    (COUNT(t.TrackId) * 100.0) / SUM(COUNT(t.TrackId)) OVER (PARTITION BY p.PlaylistId) AS GenrePercentage
FROM playlists p
JOIN playlist_track pt ON p.PlaylistId = pt.PlaylistId
JOIN tracks t ON pt.TrackId = t.TrackId
JOIN genres g ON t.GenreId = g.GenreId
GROUP BY p.PlaylistId, p.Name, g.Name
ORDER BY p.PlaylistId, GenrePercentage DESC;