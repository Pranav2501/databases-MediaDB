SELECT albums.Title AS AlbumName, artists.Name AS ArtistName
FROM albums
INNER JOIN artists ON albums.ArtistId = artists.ArtistId
WHERE albums.Title IS NOT NULL AND artists.Name IS NOT NULL;