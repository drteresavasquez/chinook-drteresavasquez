-- Which sales agent made the most in sales over all?

SELECT e.EmployeeId, e.FirstName 'First Name', e.LastName 'Last Name', e.Title 'Title',
TOTAL (i.total) 
FROM Employee e JOIN Customer c JOIN Invoice i
WHERE e.Title = "Sales Support Agent"
AND c.SupportRepId = e.EmployeeId
AND c.CustomerId = i.CustomerId
GROUP BY c.SupportRepId
LIMIT 1;