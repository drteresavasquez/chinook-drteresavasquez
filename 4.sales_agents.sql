-- Provide a query showing only the Employees who are Sales Agents.

-- This is the actual title in the table
select * from Employee where Title = "Sales Support Agent";

-- This returns none because no employees have this title
select * from Employee where Title = "Sales Agent";

