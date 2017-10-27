-- How many Invoices were there in 2009 and 2011?

SELECT count(*) as 'count'
FROM Invoice i 
where i.InvoiceDate GLOB "2009*" or i.InvoiceDate GLOB "2011*";