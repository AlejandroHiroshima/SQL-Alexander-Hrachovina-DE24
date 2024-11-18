DESC;

SELECT
	*
FROM
	main.data_jobs dj;

SELECT
	work_year
FROM
	main.data_jobs dj;

SELECT
	COUNT(*)
FROM
	main.data_jobs;

SELECT
	*
FROM
	main.data_jobs dj
WHERE
	salary_in_usd < 50000;

SELECT
	COUNT(*) AS number_rows_lower_than_50k
FROM
	main.data_jobs dj
WHERE
	salary_in_usd < 50000;

SELECT
	DISTINCT experience_level
FROM
	main.data_jobs dj;
	
SELECT * FROM main.data_jobs WHERE experience_level = 'EN';

SELECT MEDIAN(salary_in_usd) FROM main.data_jobs WHERE experience_level = 'EN';

SELECT MEDIAN(salary_in_usd) FROM main.data_jobs WHERE experience_level = 'MI';

