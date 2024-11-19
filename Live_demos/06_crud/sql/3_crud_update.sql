-- UPDATE
-- SELECTA DE DU VILL ÄNDRA INNAN VI UPPDATERAR
SELECT
	word, learnt
FROM
	database.duckdb
WHERE
	id IN (1, 9 , 11);
-- UPPDATERAR VALDA TILL TRUE
UPDATE database.duckdb SET learnt = TRUE WHERE id IN (9, 1, 11);

SELECT * FROM database.duckdb;