#task-1:
SELECT * FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
LIMIT 10;
#task-2:
SELECT COUNT(*) AS total_long_trips
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE duration_minutes > 180;
#task-3:
SELECT start_station_name, COUNT(*) AS total_trips
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
GROUP BY start_station_name
ORDER BY total_trips DESC
LIMIT 5;
#task-4:
SELECT subscriber_type, AVG(duration_minutes) AS average_duration
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
GROUP BY subscriber_type;
#Bonus
SELECT EXTRACT(YEAR FROM start_time) AS trip_year, COUNT(*) AS total_trips
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
GROUP BY trip_year
ORDER BY total_trips DESC
LIMIT 1;
