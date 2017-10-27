-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT e.FirstName 'Employee First Name', e.LastName 'Employee Last Name', count(*) as 'Total Clients'
FROM Employee e JOIN Customer c
WHERE e.Title = "Sales Support Agent"
AND c.SupportRepId = e.EmployeeId
GROUP BY c.SupportRepId;