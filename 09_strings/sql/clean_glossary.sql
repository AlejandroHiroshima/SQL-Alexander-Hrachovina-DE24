CREATE SCHEMA IF NOT EXISTS refined;

CREATE TABLE IF NOT EXISTS refined.sql_glossary AS (
SELECT
	UPPER(trim(sql_word)) AS sql_word,
	description,
	example
FROM
	staging.sql_glossary
);

SELECT * FROM refined.sql_glossary;


SELECT * FROM refined.sql_glossary_version_three;

CREATE TABLE IF NOT EXISTS refined.sql_glossary_example_fixed AS ( -- FUNKAR!
SELECT
    example,
    CASE
        WHEN LOWER(example) LIKE '%select%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'select', 'SELECT')
        WHEN LOWER(example) LIKE '%from%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'from', 'FROM')
        WHEN LOWER(example) LIKE '%where%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'where', 'WHERE')
        WHEN LOWER(example) LIKE '%join%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'join', 'JOIN')
        WHEN LOWER(example) LIKE '%group by%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'group by', 'GROUP BY')
        WHEN LOWER(example) LIKE '%insert into%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'insert into', 'INSERT INTO')
        WHEN LOWER(example) LIKE '%drop table%' THEN REPLACE(REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g'), 'drop table', 'DROP TABLE')
        ELSE REGEXP_REPLACE(TRIM(LOWER(example)), ' +', ' ', 'g')
    END AS modified_example
FROM refined.sql_glossary);


SELECT * FROM refined.sql_glossary_example_fixed;

DROP TABLE IF EXISTS refined.sql_glossary_example_fixed;


SELECT
    example,
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(example, '\\bselect\\b', 'SELECT', 'gi'),
            '\\bfrom\\b', 'FROM', 'gi'),
        '\\bwhere\\b', 'WHERE', 'gi') AS modified_example
FROM refined.sql_glossary_version_three;

SELECT
	REPLACE(TRIM(LOWER(description), 'select', 'SELECT');


    
SELECT example, UPPER(TRIM(example)) AS modified_example
FROM refined.sql_glossary_version_three;