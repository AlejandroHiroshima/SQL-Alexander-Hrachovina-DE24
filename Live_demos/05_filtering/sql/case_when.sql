SELECT * FROM main.data_jobs dj;
-- Vi ska byta namn på raderna så att (Vi ska transformera datan):
-- EN = ENTRY_LEVEL
-- MI = MID_LEVEL
-- SE = SENIOR
-- EX = EXPERT
--CASE WHEN AVSLUTAS ALLTID MED END. ALLA SE BLIR SENIOR, MEN ALLA ANDRA BLIR [NULL]
SELECT
	CASE
		WHEN experience_level = 'SE' THEN 'Senior'
	END
FROM
	main.data_jobs dj;
-- NUI BLIR ÄVEN MI ÄNDRAT, MEN RESTEN FORTF NULL
SELECT
	CASE
		WHEN experience_level = 'SE' THEN 'Senior'
		WHEN experience_level = 'MI' THEN 'Mid-level'
	END
FROM
	main.data_jobs dj;
-- NU HAR ALLA ÄNDRATS
SELECT
	CASE
		WHEN experience_level = 'SE' THEN 'Senior'
		WHEN experience_level = 'MI' THEN 'Mid-level'
		WHEN experience_level = 'EN' THEN 'Entry-level'
		WHEN experience_level = 'EX' THEN 'Expert'
	END AS experience_level, -- ÄNDRAR NAMNET PÅ KOLUMNEN
	* EXCLUDE (experience_level)-- FÅR FRAM SÅ ATT INTE BARA EXPERIENCE_LEVEL VISAS, OCH EXKLUDERAR DEN GAMLA experience_level
	FROM
	main.data_jobs dj;

SELECT
	*
FROM
	main.data_jobs dj;
-- Hur man uppdaterar ändringar i tabellen permanent
UPDATE
	main.data_jobs
SET
	experience_level = CASE
		-- CASE WHEN CAN SES LITE SOM IF/ELIF
		WHEN experience_level = 'SE' THEN 'Senior'
		WHEN experience_level = 'MI' THEN 'Mid-level'
		WHEN experience_level = 'EN' THEN 'Entry-level'
		WHEN experience_level = 'EX' THEN 'Expert'
		ELSE experience_level
		-- behåller värdet ifall existerande värde inte matchar mot ändringarna
	END
WHERE
	experience_level IN ('SE', 'MI', 'EN', 'EX');

SELECT
	DISTINCT experience_level
FROM
	main.data_jobs;




