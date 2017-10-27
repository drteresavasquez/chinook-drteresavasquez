-- Provide a query that shows the total sales per country.

select BillingCountry, Total
FROM Invoice
GROUP BY BillingCountry;