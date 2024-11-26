CREATE SCHEMA IF NOT EXISTS refined;

SELECT * FROM staging.sql_glossary ;

CREATE TABLE IF NOT EXISTS refined.sql_glossary AS (
SELECT
	UPPER(TRIM(sql_word)) AS sql_word,
	regexp_replace(TRIM(description),
	' +',
	' ', 
	'g'), 
	lower(regexp_replace(TRIM(example),  
	' +', 
	' ', 
	'g'))
FROM
	staging.sql_glossary) ;
	
SELECT * FROM refined.sql_glossary;