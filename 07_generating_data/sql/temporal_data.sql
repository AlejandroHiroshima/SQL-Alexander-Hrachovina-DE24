-- generate_series FUNKTIONEN KAN ÄVEN SKAPA DATUM. generate_series (STARTDATUM, SLUTDATUM, STEG) LITE SOM I PYTHON MED T.EX SLICING
SELECT
	*
FROM
	generate_series(DATE '2024-11-01',
	DATE'2024-11-30',
	INTERVAL '1 day') AS t(november);
	
-- date dimension

SELECT 
	strftime(date_series, '%Y-%m-%d') AS dates, -- FORMATERAR OM HUR DATUMET PRESENTERAS SÅ ATT KLOCKSLAGEN INTE SYNS, SOM EXEMPLET OVAN
	month(date_series) AS month, -- DEN RÄCKER MED ATT SKRIVA month, week, weekday SOM DESSA RADER OCH DEN VET VAD DU MENAR
	week(date_series) AS week,
	CASE 	
		WHEN weekday(date_series) = 0 THEN 'Söndag'
		WHEN weekday(date_series) = 1 THEN 'Måndag'
		WHEN weekday(date_series) = 2 THEN 'Tisdag'
		WHEN weekday(date_series) = 3 THEN 'Onsdag'
		WHEN weekday(date_series) = 4 THEN 'Torsdag'
		WHEN weekday(date_series) = 5 THEN 'Fredag'
		WHEN weekday(date_series) = 6 THEN 'Lördag'
	END AS day_of_week
FROM
	generate_series(DATE '2024-1-01',
	DATE'2024-12-31',
	INTERVAL '1 day') AS t(date_series); -- GLÖM INTE ATT FROM ALLTID KÖRS FÖRST. OBSERVERA ATT date_series INTE ÄR EN FUNKTION, UTAN BARA ALIAS