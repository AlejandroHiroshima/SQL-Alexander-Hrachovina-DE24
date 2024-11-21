SELECT 42 AS meaning_of_life; -- Notera att ingen tabell har skapats här än, och detta genererar ändå en kolumn med en rad 

SELECT 42; -- TESTA DENNA OCKSÅ

VALUES (1), (2), (3); -- SKAPAR EN KOLUMN SOM HETER COL0. 1,2 OCH 3 BLIR VARSIN RAD

SELECT
	*
FROM
	(
VALUES (1,
'Johan'),
(2,
'Johanna')) AS t(id,
	name); -- kolumner blir id och name med värdena på raderna. t'et spelar ingen roll typ, det hamnar ingenstans. Ingen tabell har fortfarande inte skapats

CREATE TABLE IF NOT EXISTS people_records AS (
    SELECT
        *
    FROM
        (VALUES 
            (1, 'Johan'),
            (2, 'Johanna'),
            (3, 'Mustafa') -- Mustafa kom inte med för vi glömde han i början, man måste göra en INSERT om man vill få med han
        ) AS p(id, name)
);

SELECT * FROM people_records;



