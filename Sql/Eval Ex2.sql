SELECT ProductName as Produit, UnitPrice as Prix
FROM products
JOIN suppliers ON suppliers.CompanyName LIKE 'Exotic%' = products.SupplierID;
