
CREATE TABLE IF NOT EXISTS main.clean_food AS(
SELECT
	id AS Food,
	SUBSTRING(week_id, 1, 4) AS Year,
	week_id[6:] AS Week,
	value AS Number_of_searches
FROM
	main.food f) ;

DESC;

