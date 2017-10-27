-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT e.FirstName, e.LastName, e.Title, i.InvoiceId
FROM Customer c LEFT JOIN Invoice i ON c.customerId = i.customerId
LEFT JOIN Employee e ON c.SupportRepId = e.EmployeeId;
