-- Provide a query that shows the most purchased track of 2013.

select l.TrackId 'Track ID', count(l.TrackId) as 'Times Purchased', i.InvoiceDate
FROM InvoiceLine l JOIN Invoice i
WHERE i.InvoiceDate GLOB "2013*"
AND i.InvoiceId = l.InvoiceId
GROUP BY l.TrackId
ORDER BY count(l.TrackId) desc;