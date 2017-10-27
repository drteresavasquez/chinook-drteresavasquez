-- What are the respective total sales for each of those years?

SELECT InvoiceDate, 
SUM (Total) 
FROM Invoice i
where i.InvoiceDate GLOB "2009*" or i.InvoiceDate GLOB "2011*"
GROUP BY i.InvoiceDate GLOB "2011*";
