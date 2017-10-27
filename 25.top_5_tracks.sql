-- Provide a query that shows the top 5 most purchased tracks over all.

select count(l.TrackId) as 'Times Purchased', l.TrackId 'Track ID', i.InvoiceDate
FROM InvoiceLine l JOIN Invoice i
WHERE i.InvoiceId = l.InvoiceId
GROUP BY l.TrackId
ORDER BY count(l.TrackId) DESC
LIMIT 5;

-- Includes Track Name
select t.Name 'Track Name', count(l.TrackId) as 'Times Purchased', l.TrackId 'Track ID', i.InvoiceDate
FROM InvoiceLine l JOIN Invoice i JOIN Track t
WHERE i.InvoiceId = l.InvoiceId
AND t.TrackId = l.TrackId
GROUP BY l.TrackId
ORDER BY count(l.TrackId) DESC
LIMIT 5;