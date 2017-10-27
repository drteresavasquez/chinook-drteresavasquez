-- Provide a query showing a unique/distinct list of billing countries from the Invoice table.

select BillingCountry
from Invoice
group by BillingCountry;