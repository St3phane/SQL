SELECT companyname as Client,
COUNT(orders.orderid) AS Nbr_cmd
FROM customers
JOIN orders ON orders.CustomerID=customers.CustomerID
WHERE customers.Country LIKE 'france%'
GROUP BY companyname
HAVING(Nbr_cmd)>10
