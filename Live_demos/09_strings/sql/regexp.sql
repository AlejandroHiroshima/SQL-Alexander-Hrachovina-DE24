SELECT
	regexp_replace(TRIM(description), ' +',
	' ',
	'g') AS cleaned_description
FROM
	staging.sql_glossary;
	
SELECT * FROM staging.sql_glossary WHERE description LIKE 'select'; -- ger inget resultat

SELECT * FROM staging.sql_glossary WHERE description LIKE '%select%'; -- ger 2 resultat pga case sensitive

SELECT * FROM staging.sql_glossary WHERE LOWER(description) LIKE '%select%'; -- Ger 6 resultat

