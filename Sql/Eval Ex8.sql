SELECT month(orderdate)AS Mois_97,SUM(unitprice*quantity)as Montant_Ventes
FROM `order details`
JOIN orders ON orders.OrderID=`order details`.orderid
WHERE orderdate LIKE '1997%'
GROUP BY MONTH(orderdate);
