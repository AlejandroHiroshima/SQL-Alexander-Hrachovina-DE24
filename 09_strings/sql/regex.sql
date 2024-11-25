SELECT
	regexp_replace(TRIM(description), -- regexp är en metod 
	' +', -- OM 1 eller fler mellanslag
	' ', -- Så byt ut dom mot 1 mellanslag
	'g'), -- g står för Global, att det ska ske överallt (på alla rader)
	lower(regexp_replace(TRIM(example),  
	' +', 
	' ', 
	'g'))
FROM
	staging.sql_glossary sg;
	

SELECT
	*
FROM
	staging.sql_glossary sg
WHERE
	LOWER(description) LIKE '%select%' -- Visar de rader som innehåller 'select'. OBS även 'selects'
	
	
SELECT
	*
FROM
	staging.sql_glossary sg
WHERE
	regexp_matches(LOWER(description), 'select\b'); -- Som ovan men visar bara rader med 'select'