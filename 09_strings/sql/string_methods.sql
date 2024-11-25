SELECT * FROM staging.sql_glossary sg ;

-- Array like slicing
SELECT
	sql_word,
	sql_word[:2], -- Slicing, som i Python nästan
	sql_word[2:5]
FROM
	staging.sql_glossary sg ;
	
--getitem []
SELECT
	sql_word,
	sql_word[0], -- ger inget
	sql_word[1], -- ger första bokstaven. index/getitem med strings börjar alltid på 1, men om det är integers så börjar de på 0
	sql_word [-1]
FROM
	staging.sql_glossary sg ;
	
--Concatination
SELECT 'fun' || ' joke';

SELECT
	'SQL command: ' || sql_word
FROM
	staging.sql_glossary sg ;
	
-- Remove spaces
SELECT
	TRIM(sql_word) AS trimmed_word,
	trimmed_word[1],
	trimmed_word[-1] -- Tar bort spaces till höer och vänster
FROM
	staging.sql_glossary sg
	
SELECT
	UPPER(TRIM(sql_word)) AS trimmed_word,
	trimmed_word[1],
	trimmed_word[-1] 
FROM
	staging.sql_glossary sg
	
SELECT
	REPLACE(TRIM(description), -- REPLACE I DETTA FALL TAR BORT ALLA MELLANSLAG
	' ',
	'')
FROM
	staging.sql_glossary sg ;
	
SELECT
	REPLACE(TRIM(description))
FROM
	staging.sql_glossary sg ;

