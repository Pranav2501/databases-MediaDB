SELECT State, COUNT(DISTINCT CustomerId) AS UniqueCustomerCount
FROM customers
WHERE State IS NOT NULL
GROUP BY State
ORDER BY State ASC;