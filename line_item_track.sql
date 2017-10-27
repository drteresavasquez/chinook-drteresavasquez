-- Provide a query that includes the purchased track name with each invoice line item.

SELECT  t.Name 'Track Name',  i.*
FROM Track t JOIN InvoiceLine i
WHERE t.TrackId = i.TrackId;