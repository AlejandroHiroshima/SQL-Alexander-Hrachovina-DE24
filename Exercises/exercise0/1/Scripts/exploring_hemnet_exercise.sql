-- 1.a ) ingested data

-- 1.b)
SELECT * FROM main.hemnet_data;

-- TESTING PERCENTAGE DIFFERENCE
SELECT 6950000 * 0.07;

-- 486500

SELECT 6950000-6950000*0.07;

-- 1.C) 
SELECT COUNT(*) AS total_rows FROM main.hemnet_data hd ;

-- 1.D)

DESC;

DESC TABLE hemnet_data;

-- 1.E )

SELECT
	final_price,
	address,
	commune
FROM
	main.hemnet_data
ORDER BY
	final_price DESC
	LIMIT 5;

--1.F)

SELECT
	final_price,
	address,
	commune,
	area,
	rooms
FROM
	main.hemnet_data
ORDER BY
	final_price
	LIMIT 5;

-- EXPLORE ROOMS

SELECT
	rooms,
	area,
	final_price
FROM
	main.hemnet_data
WHERE
	rooms <= 3;

-- 1.G) 

SELECT
	MIN (final_price),
	MEDIAN(final_price),
	AVG (final_price),
	MAX(final_price)
FROM
	main.hemnet_data;

-- 1.J)

SELECT (COUNT(*)/500)*100 AS percentage_of_homes_over_10000000SEK FROM main.hemnet_data WHERE final_price > 10000000;
-- ELLER
SELECT
	( COUNT(*) * 100.0 / ( SELECT COUNT(*) FROM main.hemnet_data) )AS percentage_over_10
FROM
	main.hemnet_data
WHERE
	final_price > 10000000 ;
