-- Provide a query that shows the most purchased Media Type.

SELECT m.Name 'Media Type', SUM(l.Quantity) as 'Total Units Sold'
FROM InvoiceLine l JOIN Track t JOIN MediaType m
WHERE m.MediaTypeId = t.MediaTypeId
AND t.TrackId = l.TrackId
Group By m.Name
ORDER BY SUM(l.Quantity) DESC
LIMIT 1;