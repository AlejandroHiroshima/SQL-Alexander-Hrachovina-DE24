SELECT * FROM synthetic.sales_jan
UNION
SELECT * FROM synthetic.sales_feb;


SELECT product_name, amount FROM synthetic.sales_jan
UNION
SELECT product_name, amount FROM synthetic.sales_feb; -- En monitor syns bara, pga set operations behåller bara unika rader

SELECT product_name, amount FROM synthetic.sales_jan
UNION ALL
SELECT product_name, amount FROM synthetic.sales_feb; -- pga UNION ALL så kommer bägge monitor med denna gång

SELECT product_name, amount FROM synthetic.sales_jan
INTERSECT
SELECT product_name, amount FROM synthetic.sales_feb; -- Visar bara den rad som finns i bägge tabeller

SELECT product_name, amount FROM synthetic.sales_jan
EXCEPT
SELECT product_name, amount FROM synthetic.sales_feb; -- Visar bara det som finns i unikt i sales_jan pga EXCEPT

SELECT * FROM synthetic.sales_jan
INTERSECT
SELECT * FROM synthetic.sales_feb;