-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

-- OPTION 1
SELECT  c.LastName 'Customer First Name',  c.FirstName 'Customer Last Name',  
c.Country, e.FirstName 'Agent First Name', e.LastName 'Agent Last Name', i.Total 'Invoice Total'
FROM Customer c LEFT JOIN Invoice i ON c.customerId = i.customerId
LEFT JOIN Employee e ON c.SupportRepId = e.EmployeeId;

-- OPTION 2
SELECT  c.LastName 'Customer First Name',  c.FirstName 'Customer Last Name',  
c.Country, e.FirstName 'Agent First Name', e.LastName 'Agent Last Name', i.Total 'Invoice Total'
FROM Customer c JOIN Invoice i JOIN Employee e
WHERE c.customerId = i.customerId
AND c.SupportRepId = e.EmployeeId;