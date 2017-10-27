-- Which country's customers spent the most?

select BillingCountry, Total
FROM Invoice
GROUP BY BillingCountry
ORDER BY Total DESC
LIMIT 1;