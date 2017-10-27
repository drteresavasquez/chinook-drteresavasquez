-- Provide a query that shows the top 3 best selling artists.

SELECT a.Name 'Artist Name', SUM(l.UnitPrice) as 'Total in Sales'
FROM Artist a JOIN Album al JOIN Track t JOIN InvoiceLine l
WHERE a.ArtistId = al.ArtistId
AND al.AlbumId = t.AlbumId
AND t.TrackId = l.TrackId
GROUP BY a.Name
ORDER BY SUM(l.UnitPrice) DESC
LIMIT 3;