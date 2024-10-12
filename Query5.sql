SELECT DISTINCT artists.Name AS ArtistName
FROM artists
INNER JOIN albums ON artists.ArtistId = albums.ArtistId
WHERE albums.Title LIKE '%symphony%';