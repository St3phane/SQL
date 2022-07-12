SELECT SUM(`order details`.unitprice*`order details`.quantity)as Montant_Ventes_1997
FROM `order details`
JOIN orders ON orders.OrderID=`order details`.orderid
WHERE orderdate LIKE '1997%'
