-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT p.Name 'Playlist Name', t.*
FROM PlaylistTrack t JOIN Playlist p
Where p.PlaylistId = t.PlaylistId
GROUP BY t.PlaylistId;