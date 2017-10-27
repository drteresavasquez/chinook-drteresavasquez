-- Provide a query that shows total sales made by each sales agent.

SELECT e.EmployeeId, e.FirstName 'First Name', e.LastName 'Last Name', e.Title 'Title',
TOTAL (i.total) 
FROM Employee e JOIN Customer c JOIN Invoice i
WHERE e.Title = "Sales Support Agent"
AND c.SupportRepId = e.EmployeeId
AND c.CustomerId = i.CustomerId
GROUP BY c.SupportRepId;

-- Without the customerId connection

SELECT e.FirstName, e.LastName, SUM(i.Total) as "Total Sales"
FROM Employee e, Customer c, Invoice i
WHERE c.SupportRepid = e.EmployeeId
GROUP BY e.EmployeeID