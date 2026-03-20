# task-1:
SELECT * FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
LIMIT 10;

SELECT COUNT(*) AS total_long_trips
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE duration_minutes > 180;

SELECT start_station_name, COUNT(*) AS total_trips
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
GROUP BY start_station_name
ORDER BY total_trips DESC
LIMIT 5;
