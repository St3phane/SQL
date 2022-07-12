SELECT orders.ShipCountry AS Pays
from orders
JOIN `order details` ON `order details`.orderid=orders.OrderID
join products ON products.ProductID=`order details`.productid
JOIN suppliers ON suppliers.SupplierID=products.SupplierID
WHERE suppliers.CompanyName LIKE 'Exotic%'
GROUP BY shipcountry
