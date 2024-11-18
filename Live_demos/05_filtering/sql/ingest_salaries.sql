CREATE TABLE
    IF NOT EXISTS data_jobs as (
        SELECT
            *
        FROM
            read_csv_auto ('data/salaries.csv')
    );