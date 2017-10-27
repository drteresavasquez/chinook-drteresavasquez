-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT t.Name 'Track', a.Title "Album", m.Name "MediaType", g.Name "Genre"
FROM Track t JOIN Album a JOIN MediaType m JOIN Genre g
WHERE t.AlbumId = a.AlbumId 
AND t.MediaTypeId = m.MediaTypeId 
AND t.GenreId = g.GenreId;