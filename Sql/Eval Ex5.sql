SELECT companyname as Client, SUM(`order details`.unitprice*`order details`.quantity)as CA,country as Pays
FROM `order details`
JOIN orders ON orders.OrderID=`order details`.orderid
JOIN customers ON customers.CustomerID=orders.CustomerID
GROUP BY orders.customerid
HAVING (CA)>30000
ORDER BY CA desc
