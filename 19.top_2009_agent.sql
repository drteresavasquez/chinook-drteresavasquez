-- Which sales agent made the most in sales in 2009?

SELECT e.EmployeeId, e.FirstName 'First Name', e.LastName 'Last Name', e.Title 'Title',
TOTAL (i.total) 
FROM Employee e JOIN Customer c JOIN Invoice i
WHERE e.Title = "Sales Support Agent"
AND i.InvoiceDate GLOB "2009*"
AND c.SupportRepId = e.EmployeeId
AND c.CustomerId = i.CustomerId
GROUP BY c.SupportRepId
ORDER BY TOTAL (i.total) DESC
Limit 1;