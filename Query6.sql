SELECT DISTINCT artists.Name AS ArtistName
FROM artists
INNER JOIN albums ON artists.ArtistId = albums.ArtistId
INNER JOIN tracks ON albums.AlbumId = tracks.AlbumId
INNER JOIN media_types ON tracks.MediaTypeId = media_types.MediaTypeId
INNER JOIN playlist_track ON tracks.TrackId = playlist_track.TrackId
INNER JOIN playlists ON playlist_track.PlaylistId = playlists.PlaylistId
WHERE media_types.Name LIKE '%mpeg%'
  AND (playlists.Name = 'Brazilian Music' OR playlists.Name = 'Grunge');