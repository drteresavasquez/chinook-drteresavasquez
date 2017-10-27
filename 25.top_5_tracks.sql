-- Provide a query that shows the top 5 most purchased tracks over all.

select count(l.TrackId) as 'Times Purchased', l.TrackId 'Track ID', i.InvoiceDate
FROM InvoiceLine l JOIN Invoice i
WHERE i.InvoiceId = l.InvoiceId
GROUP BY l.TrackId
ORDER BY count(l.TrackId) DESC
LIMIT 5;