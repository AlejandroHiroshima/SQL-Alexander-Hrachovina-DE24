SELECT * FROM staging.sql_glossary;

SELECT
	'SQL word' AS type,
	trim(sql_word),
	sql_word[:2],
	sql_word[2:5],
	sql_word[-1]
FROM
	staging.sql_glossary;

SELECT
	UPPER(SUBSTR('hej', 1, 1)) || 'ej' || ' ' || UPPER('de24');
	
SELECT
	UPPER(TRIM(sql_word)) AS Trimmed_SQL_word,
	sql_word
FROM
	staging.sql_glossary;
	
SELECT
	REPLACE(TRIM(description), ' +', ' ')
FROM
	staging.sql_glossary;
	