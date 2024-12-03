DESC;

SELECT * FROM main.plants p ;

SELECT * FROM main.plant_care pc ;

-- LEFT JOIN
-- tar allt från vänstra tabellen, med eller utan match från den högra tabellen, om ingen matchning finns, så blir det null värden
SELECT
	p.plant_id,
	p.plant_name,
	p.type,
	pc.water_schedule,
	pc.sunlight
FROM
	main.plants p
LEFT JOIN main.plant_care pc ON
	p.plant_id = pc.plant_id ;

--RIGHT JOIN
SELECT
	p.plant_id,
	p.plant_name,
	p.type,
	pc.water_schedule,
	pc.sunlight
FROM
	main.plants p
RIGHT JOIN main.plant_care pc ON
	p.plant_id = pc.plant_id ;
	

-- INNER JOIN
-- Gets same values on the join condition, intersection, must exist in both.
-- INNER JOIN ger aldrig null värde
SELECT
	p.plant_id,
	p.plant_name,
	p.type,
	pc.water_schedule,
	pc.sunlight
FROM
	main.plants p
INNER JOIN main.plant_care pc ON
	p.plant_id = pc.plant_id ;
	

--FULL JOIN
--Visar alla värden från bägge tabeller(som en union ungefär) null värden där det inte finns någon matchning
SELECT
	p.plant_id,
	p.plant_name,
	p.type,
	pc.water_schedule,
	pc.sunlight
FROM
	main.plants p
FULL JOIN main.plant_care pc ON
	p.plant_id = pc.plant_id ;