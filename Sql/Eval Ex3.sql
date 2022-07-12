SELECT companyName as Fournisseur,
COUNT(products.productID) as Nbr_produits
FROM suppliers
JOIN products ON (products.SupplierID=suppliers.SupplierID)
WHERE suppliers.Country LIKE 'france%'
GROUP BY companyname
ORDER BY Nbr_produits DESC;
