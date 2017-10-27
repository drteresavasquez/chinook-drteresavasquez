-- Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT  count(l.InvoiceId) as "Invoice Count", i.*
FROM Invoice i JOIN InvoiceLine l
Where i.InvoiceId = l.InvoiceId
GROUP BY i.InvoiceId;