-- Which country's customers spent the most?

select BillingCountry, SUM(Total)
FROM Invoice
GROUP BY BillingCountry
ORDER BY SUM(Total) DESC
LIMIT 1;