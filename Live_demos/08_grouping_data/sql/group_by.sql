SELECT
	food,
	SUM(number_of_searches) AS number_of_searches
FROM
	main.clean_food
GROUP BY
food
ORDER BY number_of_searches	DESC
LIMIT 10;

SELECT
	year,
	SUM(number_of_searches) AS number_of_searches
FROM
	main.clean_food
GROUP BY
	year
ORDER BY
	year;
	
SELECT 
	year,
	SUM(number_of_searches) AS number_of_searches
FROM
	main.clean_food
GROUP BY
	year
HAVING
number_of_searches > 300000
ORDER BY
	number_of_searches;

SELECT
	year,
	food,
	SUM(number_of_searches) AS total_searches
FROM
	main.clean_food
GROUP BY
	food,
	year
ORDER BY
	total_searches DESC;
	
