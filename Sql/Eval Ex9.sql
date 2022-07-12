SELECT MAX(orderdate) AS `Date de derniere commande`
FROM orders
JOIN customers ON customers.CustomerID=orders.CustomerID
WHERE customers.CustomerID LIKE 'dumon%'
