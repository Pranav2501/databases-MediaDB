SELECT COUNT(*) AS ArtistCount
FROM (
    SELECT artists.ArtistId
    FROM artists
    INNER JOIN albums ON artists.ArtistId = albums.ArtistId
    INNER JOIN tracks ON albums.AlbumId = tracks.AlbumId
    INNER JOIN media_types ON tracks.MediaTypeId = media_types.MediaTypeId
    WHERE media_types.Name LIKE '%mpeg%'
    GROUP BY artists.ArtistId
    HAVING COUNT(tracks.TrackId) >= 10
) AS artist_with_mpeg_tracks;