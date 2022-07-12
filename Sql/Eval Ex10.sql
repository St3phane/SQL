SELECT round(avg(DATEDIFF(shippeddate,orderdate))) AS `delai moyen de livraison en jours`
FROM orders
