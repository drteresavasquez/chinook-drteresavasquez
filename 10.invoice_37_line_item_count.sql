-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT count(*) as 'count'
FROM InvoiceLine i 
where i.InvoiceId = "37";