# task-1:
SELECT * FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
LIMIT 10;

SELECT COUNT(*) AS total_long_trips
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE duration_minutes > 180;
