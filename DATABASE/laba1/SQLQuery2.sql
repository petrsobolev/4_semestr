USE TEST;
GO

SELECT NAME
FROM PRODUCTS
WHERE PRODUCTS.PRICE>10 
	AND PRODUCTS.PRICE<100
GO