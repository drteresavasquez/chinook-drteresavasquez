-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT  t.Name 'Track Name', z.Name 'Artist Name',  i.*
FROM InvoiceLine i JOIN Track t JOIN Album a JOIN Artist z
WHERE i.TrackId = t.TrackID
AND t.AlbumId = a.AlbumId
AND a.ArtistId = z.ArtistId;