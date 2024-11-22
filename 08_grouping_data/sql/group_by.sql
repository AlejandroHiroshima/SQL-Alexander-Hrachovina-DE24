SELECT * FROM main.cleaned_food;

SELECT
	food,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY -- SLÅR IHOP ALLA LIKADANA TILL EN RAD
	food
ORDER BY
total_searches DESC -- SORTERAR PÅ FALLANDE PÅ totaL_searches
LIMIT 10
	;
	
SELECT
	year,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY -- SLÅR IHOP ALLA LIKADANA TILL EN RAD
	year
ORDER BY
total_searches DESC -- SORTERAR PÅ FALLANDE PÅ totaL_searches
LIMIT 10
	;
	
SELECT DISTINCT year FROM main.cleaned_food;

SELECT
	year,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	year
HAVING
	total_searches > 300000 -- HAVING ANVÄNDS MED GROUP BY, ÄR SOM ETT FILTER/AGGREGERING. TYP SOM WHERE
ORDER BY
	total_searches DESC;


